#!/bin/bash

pushd cimgui
pushd generator
./generator.sh
popd
mkdir -p build
pushd build
cmake .. -DIMGUI_FREETYPE=yes -DIMGUI_STATIC=yes
make
popd

mkdir -p build_impl
pushd build_impl
gcc -c -DIMGUI_IMPL_VULKAN_NO_PROTOTYPES -DIMGUI_IMPL_API="extern \"C\" " -I"../imgui" ../imgui/backends/imgui_impl_glfw.cpp ../imgui/backends/imgui_impl_vulkan.cpp
ar rcs libimgui_impl.a imgui_impl_glfw.o imgui_impl_vulkan.o
popd
popd
