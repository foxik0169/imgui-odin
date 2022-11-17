package imgui_binding

// This file is currently written by hand. Everything that could not be generated automatically is here.

import vk "vendor:vulkan"

ImS8          :: i8
ImS16         :: i16
ImS32         :: i32
ImS64         :: i64
ImU8          :: u8
ImU16         :: u16
ImU32         :: u32
ImU64         :: u64
ImWchar       :: u16 /* @note this is compilation dependent! */
ImWchar16     :: u16
ImWchar32     :: u32
ImTextureID   :: rawptr
ImDrawIdx     :: u16
ImGuiID       :: uint
ImGuiKeyChord :: int

ImDrawCallback    :: #type proc "c" (parent_list: ^ImDrawList, cmd: ^ImDrawCmd)
ImGuiMemAllocFunc :: #type proc "c" (sz: u64, user_data: rawptr) -> rawptr
ImGuiMemFreeFunc  :: #type proc "c" (ptr: rawptr, user_data: rawptr)
ImGuiInputTextCallback :: #type proc "c" (data: ^ImGuiInputTextCallbackData) -> int
ImGuiSizeCallback      :: #type proc "c" (data: ^ImGuiSizeCallbackData)

ImDrawListSharedData :: struct {}
ImFontBuilderIO :: struct {}
ImGuiContext :: struct {}

ImVector :: struct(T: typeid) {
    size:     i32,
    capacity: i32,
    data:     [^]T,
}

ImGui_ImplVulkan_InitInfo :: struct {
    Instance: vk.Instance,
    PhysicalDevice: vk.PhysicalDevice,
    Device: vk.Device,
    QueueFamily: u32,
    Queue: vk.Queue,
    PipelineCache: vk.PipelineCache,
    DescriptorPool: vk.DescriptorPool,
    Subpass: u32,
    MinImageCount: u32,
    ImageCount: u32,
    MSAASamples: vk.SampleCountFlags,
    Allocator: ^vk.AllocationCallbacks,
    CheckVkResultFn: #type proc "c" (err: vk.Result),
}

ImGui_ImplVulkanH_Frame :: struct {}
ImGui_ImplVulkanH_FrameSemaphores :: struct {}
ImGui_ImplVulkanH_Window :: struct {}

