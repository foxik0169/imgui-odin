package imgui_generator

import "core:fmt"
import "core:strings"
import "core:os"
import "core:slice"
import "core:encoding/json"
import "core:path/filepath"

DEFINITIONS_PATH       :: "./vendor/cimgui/generator/output/definitions.json"
IMPL_DEFINITIONS_PATH  :: "./vendor/cimgui/generator/output/impl_definitions.json"
STRUCTS_AND_ENUMS_PATH :: "./vendor/cimgui/generator/output/structs_and_enums.json"

PACKAGE :: "package imgui_binding\n\n"
HEADER :: "// This file is generated automatically.\n// Keep in mind when editing - will get replaced when regenerated!\n\n"

FOREIGN_IMPORT ::
`import "vendor:glfw"
import vk "vendor:vulkan"

when ODIN_OS == .Linux {
    foreign import imgui "./vendor/cimgui/build/cimgui.a"
} else if ODIN_OS == .Windows {
    foreign import imgui { "./vendor/cimgui/build/Release/cimgui.lib", "./vendor/cimgui/build_impl/imgui_impl.lib" }
}

`

template_types := []string {
    "ImVector",
}

disallow_types := []string { /* these definitions will be skipped */
    "va_list",
}

type_map := map[string]string {
    "uint32_t"      = "u32",
    "char"          = "i8"               ,
    "float"         = "f32"              ,
    "double"        = "f64"              ,
    "int"           = "i32"              ,
    "short"         = "i16"              ,
    "ImU32"         = "u32"              ,
    "unsigned char" = "u8"               ,
    "unsigned int"  = "u32"             ,
    "unsigned short"= "u16"              ,
    "const char*"   = "cstring"          ,
    "const void*"   = "rawptr"           ,
    "void*"         = "rawptr"           ,
    "void**"        = "^rawptr"          ,
    "void"          = "---"              ,
    "size_t"        = "u64"              ,
    "size_t*"       = "^u64"             ,
    "const char* const[]" = "[^]cstring" ,
    "GLFWwindow*"   = "glfw.WindowHandle",
    "GLFWmonitor*"  = "glfw.MonitorHandle",
    "VkDevice"      = "vk.Device",
    "VkInstance"    = "vk.Instance",
    "VkAllocationCallbacks" = "vk.AllocationCallbacks",
    "VkPhysicalDevice" = "vk.PhysicalDevice",
    "VkPresentModeKHR" = "vk.PresentModeKHR",
    "VkSurfaceKHR" = "vk.SurfaceKHR",
    "VkFormat" = "vk.Format",
    "VkColorSpaceKHR" = "vk.ColorSpaceKHR",
    "VkSurfaceFormatKHR" = "vk.SurfaceFormatKHR",
    "VkSampler" = "vk.Sampler",
    "VkImageView" = "vk.ImageView",
    "VkImageLayout" = "vk.ImageLayout",
    "VkDescriptorSet" = "vk.DescriptorSet",
    "VkRenderPass" = "vk.RenderPass",
    "VkCommandBuffer" = "vk.CommandBuffer",
    "VkPipeline" = "vk.Pipeline",

    "ImGui_ImplVulkanH_Window*" = "^ImGui_ImplVulkanH_Window",   /* so that is not recognized as template */
    "ImGui_ImplVulkan_InitInfo*" = "^ImGui_ImplVulkan_InitInfo"
}

replacement_signature := map[string]string {
    /* compensates for invalid binding generated from cimgui */
    "ImGui_ImplVulkan_LoadFunctions" = "procedure: #type proc \"c\" (function_name: cstring, user_data: rawptr) -> rawptr, user_data: rawptr = nil",
}

DisallowedFirstCharacters := []u8 { '0','1','2','3','4','5','6','7','8','9' }
DisallowedArgumentNames   := []string { "in" }

resolve_name :: proc (in_name: string) -> string {
    name := in_name

    if slice.contains(DisallowedFirstCharacters, name[0]) do return fmt.tprintf("_%v", name)
    else if slice.contains(DisallowedArgumentNames, name) do return fmt.tprintf("_%v", name)

    return name
}

resolve_template_type :: proc (in_type: string) -> (string, bool) {
    type := in_type
    did_something := false

    if strings.contains(type, "_") {
        using strings
        using fmt
        did_something = true

        parts := strings.split(type, "_")

        template_type := parts[1]

        if has_suffix(template_type, "Ptr") {
            template_type = tprintf("^%v", trim_suffix(template_type, "Ptr"))
        }

        type = tprintf("%v(%v)", parts[0], resolve_type(template_type))
    }

    return type, did_something
}

resolve_type :: proc (in_type: string) -> string {
    type := in_type

    if type in type_map do type = type_map[type]
    else {
        is_proc_pointer : bool
        type, is_proc_pointer = resolve_proc_pointer(type)

        if !is_proc_pointer {
            is_template_type : bool
            type, is_template_type = resolve_template_type(type)

            if !is_template_type {
                type = resolve_const(type)
                type = resolve_fixed_size(type)
                type = resolve_pointers(type)
            }
        }
    }

    return type
}

resolve_proc_pointer :: proc (type: string) -> (string, bool) {
    output := type
    did_something := false

    if strings.contains(type, "(*)") {
        using strings
        builder : Builder
        signature_builder : Builder

        return_type := resolve_type(type[:strings.index(type, "(")])
        without_type := strings.trim(type[strings.index(type, "(*)") + 3:], "()")

        arguments := strings.split(without_type, ",")

        for arg, index in arguments {
            elem := strings.split(arg, " ")

            type_to_resolve : string
            if len(elem) > 2 do type_to_resolve = strings.join(elem[:len(elem)-1], " ")
            else do type_to_resolve = elem[0]

            fmt.sbprintf(&signature_builder, "%v: %v", elem[len(elem)-1], resolve_type(type_to_resolve))

            if index < len(arguments)-1 do fmt.sbprint(&signature_builder, ", ")
        }

        signature := to_string(signature_builder)
        return_suffix := ""

        if return_type != "---" do return_suffix = fmt.tprintf(" -> %v", return_type)
        fmt.sbprintf(&builder, "#type proc \"c\" (%v)%v", signature, return_suffix)

        output = to_string(builder)
        did_something = true
    }

    return output, did_something
}

resolve_const :: proc (arg_type: string) -> string {
    output, _ := strings.replace_all(arg_type, "const ", "")
    return output
}

resolve_fixed_size :: proc (arg_type: string) -> string {
    output := arg_type

    if strings.contains_any(output, "[]") {
        using strings
        type_builder := builder_make(0, context.temp_allocator)

        number_begin := index(output, "[")
        number_end   := index(output, "]")

        write_string(&type_builder, "^[")
        write_string(&type_builder, output[number_begin+1:number_end])
        write_string(&type_builder, "]")

        // @todo handle indirection

        type_string := output[:number_begin]
        if type_string in type_map do type_string = type_map[type_string]

        write_string(&type_builder, type_string)

        output = to_string(type_builder)
    }

    return output
}

resolve_pointers :: proc (arg_type: string) -> string {
    output := arg_type

    if strings.contains(output, "*") {
        type_builder := strings.builder_make(0, context.temp_allocator)

        MAX_INDIRECTION_LEVEL :: "**********"

        indirection_level := strings.prefix_length(strings.reverse(output), MAX_INDIRECTION_LEVEL)
        output = strings.trim_right(output, "*")

        if output in type_map do output = type_map[output]

        for i in 0..<indirection_level {
            strings.write_string(&type_builder, "^")
        }
        strings.write_string(&type_builder, output)

        output = strings.to_string(type_builder)
    }

    return output
}

get_procedure_name :: proc (definition: json.Object) -> string {
    output := definition["ov_cimguiname"].(string)
    if output == "" do output = definition["cimguiname"].(string)

    return output
}

get_return_desc :: proc (definition: json.Object) -> string {
    return_type, ok := definition["ret"].(string)
    if !ok do return ""
    if return_type == "void" do return ""

    output := fmt.tprintf("-> %v ", resolve_type(return_type))
    return output
}

get_signature :: proc (definition: json.Object) -> string {
    args := definition["argsT"].(json.Array)
    builder : strings.Builder

    if "funcname" in definition && definition["funcname"].(string) in replacement_signature {
        return replacement_signature[definition["funcname"].(string)]
    }

    for arg,index in args {
        arg_name := arg.(json.Object)["name"].(string)
        arg_type := arg.(json.Object)["type"].(string)

        arg_type = resolve_type(arg_type)

        if arg_name == "..." {
            strings.write_string(&builder, "#c_vararg args: ..any")
            continue
        }

        arg_name = resolve_name(arg_name)

        strings.write_string(&builder, arg_name)
        strings.write_string(&builder, ": ")
        strings.write_string(&builder, arg_type)

        if index < len(args)-1 do strings.write_string(&builder, ", ")
    }

    return strings.to_string(builder)
}

main :: proc () {
    fmt.println("ImGUI binding generator for Odin")
    fmt.println("Implemented from scratch with cross platform support in mind.")

    definitions_data, valid := os.read_entire_file(DEFINITIONS_PATH)
    if !valid {
        fmt.eprintf("could not read definitions file '%v'\n", DEFINITIONS_PATH)
        return
    }

    impl_definitions_data, impl_valid := os.read_entire_file(IMPL_DEFINITIONS_PATH)
    if !impl_valid {
        fmt.eprintf("could not read impl definitions file '%v'\n", IMPL_DEFINITIONS_PATH)
        return
    }

    fmt.println("generating definitions")

    definitions, error := json.parse(definitions_data)
    if error != .None {
        fmt.eprintf("could not parse json.\n")
        return
    }

    impl_definitions, impl_error := json.parse(impl_definitions_data)
    if impl_error != .None {
        fmt.eprintf("could not parse json.\n")
        return
    }

    builder : strings.Builder

    fmt.sbprint(&builder, HEADER)
    fmt.sbprint(&builder, PACKAGE)
    fmt.sbprintf(&builder, "%v", FOREIGN_IMPORT)
    fmt.sbprint(&builder, "@(default_calling_convention=\"c\")\n")
    fmt.sbprint(&builder, "foreign imgui {\n")
    for key,data in definitions.(json.Object) {
        entry_loop: for entry in data.(json.Array) {
            obj := entry.(json.Object)

            name        := resolve_name(get_procedure_name(obj))
            signature   := get_signature(obj)
            return_desc := get_return_desc(obj)

            if (strings.contains(name, "ImVector_")) do continue

            for type in disallow_types {
                if strings.contains(obj["args"].(string), type) do continue entry_loop
            }

            fmt.sbprintf(&builder, "    %v :: proc (%v) %v---\n", name, signature, return_desc)
        }
    }

    for key,data in impl_definitions.(json.Object) {
        entry_loop_impl: for entry in data.(json.Array) {
            obj := entry.(json.Object)

            name        := resolve_name(get_procedure_name(obj))
            signature   := get_signature(obj)
            return_desc := get_return_desc(obj)

            if (strings.contains(name, "ImVector_")) do continue
            if (name == "igCombo_Str_arr") do continue
            if (name == "igListBox_Str_arr") do continue

            for type in disallow_types {
                if strings.contains(obj["args"].(string), type) do continue entry_loop_impl
            }

            fmt.sbprintf(&builder, "    %v :: proc (%v) %v---\n", name, signature, return_desc)
        }
    }

    fmt.sbprint(&builder, "}\n")

    fmt.println("writting definitions to file")
    os.write_entire_file("definitions.odin", transmute([]u8)strings.to_string(builder))

    structs_data, structs_valid := os.read_entire_file(STRUCTS_AND_ENUMS_PATH)
    if !structs_valid {
        fmt.eprintf("could not read structs and enums file '%v'\n", STRUCTS_AND_ENUMS_PATH)
        return
    }

    fmt.println("generating structs and enums")

    structs_global, structs_error := json.parse(structs_data)
    if structs_error != .None {
        fmt.eprintf("could not parse json.\n")
        return
    }

    enum_types := structs_global.(json.Object)["enumtypes"].(json.Object)
    enums := structs_global.(json.Object)["enums"].(json.Object)

    strings.builder_reset(&builder)

    fmt.sbprint(&builder, HEADER)
    fmt.sbprint(&builder, PACKAGE)
    for key,e in enums {
        processed_key := strings.trim_right(key, "_")
        type := "i32"

        if key in enum_types {
            type = enum_types[key].(string)
        }

        fmt.sbprintf(&builder, "%v :: enum %v %v", processed_key, type, "{\n")
        for entry in e.(json.Array) {
            obj := entry.(json.Object)

            name := obj["name"].(string)
            value := obj["value"].(string)

            name, _ = strings.replace_all(name, processed_key, "")
            name = strings.trim(name, "_")

            value, _ = strings.replace_all(value, processed_key, "")
            value = strings.trim(value, "_")
            value, _ = strings.replace_all(value, " _", " ")

            prefix := ""
            if slice.contains(DisallowedFirstCharacters, name[0]) do prefix = "_"

            fmt.sbprintf(&builder, "    %v%v = %v,\n", prefix, name, value)
        }
        fmt.sbprint(&builder, "}\n\n")
    }

    fmt.println("writting enums to file")
    os.write_entire_file("enums.odin", transmute([]u8)strings.to_string(builder))

    strings.builder_reset(&builder)

    structs := structs_global.(json.Object)["structs"].(json.Object)

    fmt.sbprint(&builder, HEADER)
    fmt.sbprint(&builder, PACKAGE)
    for key,s in structs {
        fmt.sbprintf(&builder, "%v :: struct %v", key, "{\n")

        longest := 0

        for entry in s.(json.Array) {
            length := len(entry.(json.Object)["name"].(string))
            if length > longest do longest = length
        }

        for entry in s.(json.Array) {
            obj := entry.(json.Object)
            name := obj["name"].(string)
            type := obj["type"].(string)

            name = strings.left_justify(name, longest+1, " ")
            type = resolve_type(type)

            if "size" in obj {
                name = strings.left_justify(name[:strings.index(name, "[")], longest+1, " ")
                fmt.sbprintf(&builder, "    %v: [%v]%v,\n", name, u64(obj["size"].(f64)), type)
            } else {
                if strings.contains(type, "union") {
                    fmt.sbprintf(&builder, "//    %v: %v, /* unions are not supported yet in the generator */\n", name, type)
                } else {
                    fmt.sbprintf(&builder, "    %v: %v,\n", name, type)
                }
            }
        }
        fmt.sbprint(&builder, "}\n\n")
    }

    fmt.println("writting structs to file")
    os.write_entire_file("structs.odin", transmute([]u8)strings.to_string(builder))

    strings.builder_reset(&builder)

}
