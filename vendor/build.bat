pushd cimgui
pushd generator
call generator.bat
popd
mkdir build
pushd build
cmake .. -DIMGUI_FREETYPE=no -DIMGUI_STATIC=yes
cmake --build . --config=Release
popd

mkdir build_impl
pushd build_impl
cl /c /I "../imgui" /I "%GLFW_ROOT%/include" /I "%VK_SDK_PATH%/include" /DIMGUI_IMPL_VULKAN_NO_PROTOTYPES /DIMGUI_IMPL_API="extern \"C\" __declspec(dllexport) " ../imgui/backends/imgui_impl_glfw.cpp ../imgui/backends/imgui_impl_vulkan.cpp
lib /out:imgui_impl.lib imgui_impl_glfw.obj imgui_impl_vulkan.obj
popd
popd
exit
