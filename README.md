# imgui-odin

A simple binding generator cimgui -> odin.

# State

This project is abandoned and should not be used. It was using 3rd party c binding generator cimgui which now can be replaced with dear_bindings. An odin project has already been made here that uses dear_bindings so check it out: https://gitlab.com/L-4/odin-imgui

## Why?

You might ask why I implemented this when more mature project https://github.com/ThisDevDane/odin-imgui exists.
There are multiple differneces:

 1. odin-imgui uses 3rd party bindings for vulkan and glfw. This library uses ones bundled in vendor.
 2. I was not able to make the odin-imgui run on Linux (GLFW + Vulkan).
 3. I want to use the original backends included with ImGUI. odin-imgui provides their own implementations in odin.
 4. This is no wrapper, just a 1:1 cimgui binding.
 5. There are some weird choices that I either do not understand or are wrong in their bindings. For example: procedure "igListBox_Str_arr" takes cstring as an argument type for items, which should really be [^]cstring. Another good example is "igSliderFloatX" where X is more than one. These procedures use [X]f32 as a type but their whole purpose is to be able to change the value. Which is not possible in odin because [X]f32 is passed by value (if I understand this correctly, I might be wrong). This package binds them as ^[X]f32.

## Dependencies

 - CMake
 - GCC & AR - Or you could change vendor/build.sh to use your compiler, it's really just one line...

## How to use

Clone recursively as a submodule into shared collection or any other odin collection. Open folder imgui-odin/vendor
in terminal and run ./build.sh (Windows version is comming). This will run cimgui generator and compile cimgui
and implementations. If you need different implementations, you can change the build file - don't forget to match
cimgui generator (cimgui/generator/generator.sh).

Next open the imgui-odin folder in terminal and enter `odin run generator`. This will generate odin files and
the whole folder can now be used as a module.

Git contains generated bindings for configuration GLFW + Vulkan + Freetype, but this might change in time.

## Note

State of the project is very much WIP. There are some decisions that might be off-putting like generator code
**does not** clean up memory at all. This might and might not be solved in future based on the experiences with it.
Take it as "if it makes trouble, it will be fixed".

