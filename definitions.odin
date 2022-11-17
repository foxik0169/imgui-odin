// This file is generated automatically.
// Keep in mind when editing - will get replaced when regenerated!

package imgui_binding

import "vendor:glfw"
import vk "vendor:vulkan"

when ODIN_OS == .Linux {
    foreign import imgui "./vendor/cimgui/build/cimgui.a"
}

@(default_calling_convention="c")
foreign imgui {
    ImColor_HSV :: proc (pOut: ^ImColor, h: f32, s: f32, v: f32, a: f32) ---
    ImColor_ImColor_Nil :: proc () ---
    ImColor_ImColor_Float :: proc (r: f32, g: f32, b: f32, a: f32) ---
    ImColor_ImColor_Vec4 :: proc (col: ImVec4) ---
    ImColor_ImColor_Int :: proc (r: int, g: int, b: int, a: int) ---
    ImColor_ImColor_U32 :: proc (rgba: u32) ---
    ImColor_SetHSV :: proc (self: ^ImColor, h: f32, s: f32, v: f32, a: f32) ---
    ImColor_destroy :: proc (self: ^ImColor) ---
    ImDrawCmd_GetTexID :: proc (self: ^ImDrawCmd) -> ImTextureID ---
    ImDrawCmd_ImDrawCmd :: proc () ---
    ImDrawCmd_destroy :: proc (self: ^ImDrawCmd) ---
    ImDrawData_Clear :: proc (self: ^ImDrawData) ---
    ImDrawData_DeIndexAllBuffers :: proc (self: ^ImDrawData) ---
    ImDrawData_ImDrawData :: proc () ---
    ImDrawData_ScaleClipRects :: proc (self: ^ImDrawData, fb_scale: ImVec2) ---
    ImDrawData_destroy :: proc (self: ^ImDrawData) ---
    ImDrawListSplitter_Clear :: proc (self: ^ImDrawListSplitter) ---
    ImDrawListSplitter_ClearFreeMemory :: proc (self: ^ImDrawListSplitter) ---
    ImDrawListSplitter_ImDrawListSplitter :: proc () ---
    ImDrawListSplitter_Merge :: proc (self: ^ImDrawListSplitter, draw_list: ^ImDrawList) ---
    ImDrawListSplitter_SetCurrentChannel :: proc (self: ^ImDrawListSplitter, draw_list: ^ImDrawList, channel_idx: int) ---
    ImDrawListSplitter_Split :: proc (self: ^ImDrawListSplitter, draw_list: ^ImDrawList, count: int) ---
    ImDrawListSplitter_destroy :: proc (self: ^ImDrawListSplitter) ---
    ImDrawList_AddBezierCubic :: proc (self: ^ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, col: u32, thickness: f32, num_segments: int) ---
    ImDrawList_AddBezierQuadratic :: proc (self: ^ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, col: u32, thickness: f32, num_segments: int) ---
    ImDrawList_AddCallback :: proc (self: ^ImDrawList, callback: ImDrawCallback, callback_data: rawptr) ---
    ImDrawList_AddCircle :: proc (self: ^ImDrawList, center: ImVec2, radius: f32, col: u32, num_segments: int, thickness: f32) ---
    ImDrawList_AddCircleFilled :: proc (self: ^ImDrawList, center: ImVec2, radius: f32, col: u32, num_segments: int) ---
    ImDrawList_AddConvexPolyFilled :: proc (self: ^ImDrawList, points: ^ImVec2, num_points: int, col: u32) ---
    ImDrawList_AddDrawCmd :: proc (self: ^ImDrawList) ---
    ImDrawList_AddImage :: proc (self: ^ImDrawList, user_texture_id: ImTextureID, p_min: ImVec2, p_max: ImVec2, uv_min: ImVec2, uv_max: ImVec2, col: u32) ---
    ImDrawList_AddImageQuad :: proc (self: ^ImDrawList, user_texture_id: ImTextureID, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, uv1: ImVec2, uv2: ImVec2, uv3: ImVec2, uv4: ImVec2, col: u32) ---
    ImDrawList_AddImageRounded :: proc (self: ^ImDrawList, user_texture_id: ImTextureID, p_min: ImVec2, p_max: ImVec2, uv_min: ImVec2, uv_max: ImVec2, col: u32, rounding: f32, flags: ImDrawFlags) ---
    ImDrawList_AddLine :: proc (self: ^ImDrawList, p1: ImVec2, p2: ImVec2, col: u32, thickness: f32) ---
    ImDrawList_AddNgon :: proc (self: ^ImDrawList, center: ImVec2, radius: f32, col: u32, num_segments: int, thickness: f32) ---
    ImDrawList_AddNgonFilled :: proc (self: ^ImDrawList, center: ImVec2, radius: f32, col: u32, num_segments: int) ---
    ImDrawList_AddPolyline :: proc (self: ^ImDrawList, points: ^ImVec2, num_points: int, col: u32, flags: ImDrawFlags, thickness: f32) ---
    ImDrawList_AddQuad :: proc (self: ^ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, col: u32, thickness: f32) ---
    ImDrawList_AddQuadFilled :: proc (self: ^ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, p4: ImVec2, col: u32) ---
    ImDrawList_AddRect :: proc (self: ^ImDrawList, p_min: ImVec2, p_max: ImVec2, col: u32, rounding: f32, flags: ImDrawFlags, thickness: f32) ---
    ImDrawList_AddRectFilled :: proc (self: ^ImDrawList, p_min: ImVec2, p_max: ImVec2, col: u32, rounding: f32, flags: ImDrawFlags) ---
    ImDrawList_AddRectFilledMultiColor :: proc (self: ^ImDrawList, p_min: ImVec2, p_max: ImVec2, col_upr_left: u32, col_upr_right: u32, col_bot_right: u32, col_bot_left: u32) ---
    ImDrawList_AddText_Vec2 :: proc (self: ^ImDrawList, pos: ImVec2, col: u32, text_begin: cstring, text_end: cstring) ---
    ImDrawList_AddText_FontPtr :: proc (self: ^ImDrawList, font: ^ImFont, font_size: f32, pos: ImVec2, col: u32, text_begin: cstring, text_end: cstring, wrap_width: f32, cpu_fine_clip_rect: ^ImVec4) ---
    ImDrawList_AddTriangle :: proc (self: ^ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, col: u32, thickness: f32) ---
    ImDrawList_AddTriangleFilled :: proc (self: ^ImDrawList, p1: ImVec2, p2: ImVec2, p3: ImVec2, col: u32) ---
    ImDrawList_ChannelsMerge :: proc (self: ^ImDrawList) ---
    ImDrawList_ChannelsSetCurrent :: proc (self: ^ImDrawList, n: int) ---
    ImDrawList_ChannelsSplit :: proc (self: ^ImDrawList, count: int) ---
    ImDrawList_CloneOutput :: proc (self: ^ImDrawList) -> ^ImDrawList ---
    ImDrawList_GetClipRectMax :: proc (pOut: ^ImVec2, self: ^ImDrawList) ---
    ImDrawList_GetClipRectMin :: proc (pOut: ^ImVec2, self: ^ImDrawList) ---
    ImDrawList_ImDrawList :: proc (shared_data: ^ImDrawListSharedData) ---
    ImDrawList_PathArcTo :: proc (self: ^ImDrawList, center: ImVec2, radius: f32, a_min: f32, a_max: f32, num_segments: int) ---
    ImDrawList_PathArcToFast :: proc (self: ^ImDrawList, center: ImVec2, radius: f32, a_min_of_12: int, a_max_of_12: int) ---
    ImDrawList_PathBezierCubicCurveTo :: proc (self: ^ImDrawList, p2: ImVec2, p3: ImVec2, p4: ImVec2, num_segments: int) ---
    ImDrawList_PathBezierQuadraticCurveTo :: proc (self: ^ImDrawList, p2: ImVec2, p3: ImVec2, num_segments: int) ---
    ImDrawList_PathClear :: proc (self: ^ImDrawList) ---
    ImDrawList_PathFillConvex :: proc (self: ^ImDrawList, col: u32) ---
    ImDrawList_PathLineTo :: proc (self: ^ImDrawList, pos: ImVec2) ---
    ImDrawList_PathLineToMergeDuplicate :: proc (self: ^ImDrawList, pos: ImVec2) ---
    ImDrawList_PathRect :: proc (self: ^ImDrawList, rect_min: ImVec2, rect_max: ImVec2, rounding: f32, flags: ImDrawFlags) ---
    ImDrawList_PathStroke :: proc (self: ^ImDrawList, col: u32, flags: ImDrawFlags, thickness: f32) ---
    ImDrawList_PopClipRect :: proc (self: ^ImDrawList) ---
    ImDrawList_PopTextureID :: proc (self: ^ImDrawList) ---
    ImDrawList_PrimQuadUV :: proc (self: ^ImDrawList, a: ImVec2, b: ImVec2, c: ImVec2, d: ImVec2, uv_a: ImVec2, uv_b: ImVec2, uv_c: ImVec2, uv_d: ImVec2, col: u32) ---
    ImDrawList_PrimRect :: proc (self: ^ImDrawList, a: ImVec2, b: ImVec2, col: u32) ---
    ImDrawList_PrimRectUV :: proc (self: ^ImDrawList, a: ImVec2, b: ImVec2, uv_a: ImVec2, uv_b: ImVec2, col: u32) ---
    ImDrawList_PrimReserve :: proc (self: ^ImDrawList, idx_count: int, vtx_count: int) ---
    ImDrawList_PrimUnreserve :: proc (self: ^ImDrawList, idx_count: int, vtx_count: int) ---
    ImDrawList_PrimVtx :: proc (self: ^ImDrawList, pos: ImVec2, uv: ImVec2, col: u32) ---
    ImDrawList_PrimWriteIdx :: proc (self: ^ImDrawList, idx: ImDrawIdx) ---
    ImDrawList_PrimWriteVtx :: proc (self: ^ImDrawList, pos: ImVec2, uv: ImVec2, col: u32) ---
    ImDrawList_PushClipRect :: proc (self: ^ImDrawList, clip_rect_min: ImVec2, clip_rect_max: ImVec2, intersect_with_current_clip_rect: bool) ---
    ImDrawList_PushClipRectFullScreen :: proc (self: ^ImDrawList) ---
    ImDrawList_PushTextureID :: proc (self: ^ImDrawList, texture_id: ImTextureID) ---
    ImDrawList__CalcCircleAutoSegmentCount :: proc (self: ^ImDrawList, radius: f32) -> int ---
    ImDrawList__ClearFreeMemory :: proc (self: ^ImDrawList) ---
    ImDrawList__OnChangedClipRect :: proc (self: ^ImDrawList) ---
    ImDrawList__OnChangedTextureID :: proc (self: ^ImDrawList) ---
    ImDrawList__OnChangedVtxOffset :: proc (self: ^ImDrawList) ---
    ImDrawList__PathArcToFastEx :: proc (self: ^ImDrawList, center: ImVec2, radius: f32, a_min_sample: int, a_max_sample: int, a_step: int) ---
    ImDrawList__PathArcToN :: proc (self: ^ImDrawList, center: ImVec2, radius: f32, a_min: f32, a_max: f32, num_segments: int) ---
    ImDrawList__PopUnusedDrawCmd :: proc (self: ^ImDrawList) ---
    ImDrawList__ResetForNewFrame :: proc (self: ^ImDrawList) ---
    ImDrawList__TryMergeDrawCmds :: proc (self: ^ImDrawList) ---
    ImDrawList_destroy :: proc (self: ^ImDrawList) ---
    ImFontAtlasCustomRect_ImFontAtlasCustomRect :: proc () ---
    ImFontAtlasCustomRect_IsPacked :: proc (self: ^ImFontAtlasCustomRect) -> bool ---
    ImFontAtlasCustomRect_destroy :: proc (self: ^ImFontAtlasCustomRect) ---
    ImFontAtlas_AddCustomRectFontGlyph :: proc (self: ^ImFontAtlas, font: ^ImFont, id: ImWchar, width: int, height: int, advance_x: f32, offset: ImVec2) -> int ---
    ImFontAtlas_AddCustomRectRegular :: proc (self: ^ImFontAtlas, width: int, height: int) -> int ---
    ImFontAtlas_AddFont :: proc (self: ^ImFontAtlas, font_cfg: ^ImFontConfig) -> ^ImFont ---
    ImFontAtlas_AddFontDefault :: proc (self: ^ImFontAtlas, font_cfg: ^ImFontConfig) -> ^ImFont ---
    ImFontAtlas_AddFontFromFileTTF :: proc (self: ^ImFontAtlas, filename: cstring, size_pixels: f32, font_cfg: ^ImFontConfig, glyph_ranges: ^ImWchar) -> ^ImFont ---
    ImFontAtlas_AddFontFromMemoryCompressedBase85TTF :: proc (self: ^ImFontAtlas, compressed_font_data_base85: cstring, size_pixels: f32, font_cfg: ^ImFontConfig, glyph_ranges: ^ImWchar) -> ^ImFont ---
    ImFontAtlas_AddFontFromMemoryCompressedTTF :: proc (self: ^ImFontAtlas, compressed_font_data: rawptr, compressed_font_size: int, size_pixels: f32, font_cfg: ^ImFontConfig, glyph_ranges: ^ImWchar) -> ^ImFont ---
    ImFontAtlas_AddFontFromMemoryTTF :: proc (self: ^ImFontAtlas, font_data: rawptr, font_size: int, size_pixels: f32, font_cfg: ^ImFontConfig, glyph_ranges: ^ImWchar) -> ^ImFont ---
    ImFontAtlas_Build :: proc (self: ^ImFontAtlas) -> bool ---
    ImFontAtlas_CalcCustomRectUV :: proc (self: ^ImFontAtlas, rect: ^ImFontAtlasCustomRect, out_uv_min: ^ImVec2, out_uv_max: ^ImVec2) ---
    ImFontAtlas_Clear :: proc (self: ^ImFontAtlas) ---
    ImFontAtlas_ClearFonts :: proc (self: ^ImFontAtlas) ---
    ImFontAtlas_ClearInputData :: proc (self: ^ImFontAtlas) ---
    ImFontAtlas_ClearTexData :: proc (self: ^ImFontAtlas) ---
    ImFontAtlas_GetCustomRectByIndex :: proc (self: ^ImFontAtlas, index: int) -> ^ImFontAtlasCustomRect ---
    ImFontAtlas_GetGlyphRangesChineseFull :: proc (self: ^ImFontAtlas) -> ^ImWchar ---
    ImFontAtlas_GetGlyphRangesChineseSimplifiedCommon :: proc (self: ^ImFontAtlas) -> ^ImWchar ---
    ImFontAtlas_GetGlyphRangesCyrillic :: proc (self: ^ImFontAtlas) -> ^ImWchar ---
    ImFontAtlas_GetGlyphRangesDefault :: proc (self: ^ImFontAtlas) -> ^ImWchar ---
    ImFontAtlas_GetGlyphRangesGreek :: proc (self: ^ImFontAtlas) -> ^ImWchar ---
    ImFontAtlas_GetGlyphRangesJapanese :: proc (self: ^ImFontAtlas) -> ^ImWchar ---
    ImFontAtlas_GetGlyphRangesKorean :: proc (self: ^ImFontAtlas) -> ^ImWchar ---
    ImFontAtlas_GetGlyphRangesThai :: proc (self: ^ImFontAtlas) -> ^ImWchar ---
    ImFontAtlas_GetGlyphRangesVietnamese :: proc (self: ^ImFontAtlas) -> ^ImWchar ---
    ImFontAtlas_GetMouseCursorTexData :: proc (self: ^ImFontAtlas, cursor: ImGuiMouseCursor, out_offset: ^ImVec2, out_size: ^ImVec2, out_uv_border: ^[2]ImVec2, out_uv_fill: ^[2]ImVec2) -> bool ---
    ImFontAtlas_GetTexDataAsAlpha8 :: proc (self: ^ImFontAtlas, out_pixels: ^^u8, out_width: ^int, out_height: ^int, out_bytes_per_pixel: ^int) ---
    ImFontAtlas_GetTexDataAsRGBA32 :: proc (self: ^ImFontAtlas, out_pixels: ^^u8, out_width: ^int, out_height: ^int, out_bytes_per_pixel: ^int) ---
    ImFontAtlas_ImFontAtlas :: proc () ---
    ImFontAtlas_IsBuilt :: proc (self: ^ImFontAtlas) -> bool ---
    ImFontAtlas_SetTexID :: proc (self: ^ImFontAtlas, id: ImTextureID) ---
    ImFontAtlas_destroy :: proc (self: ^ImFontAtlas) ---
    ImFontConfig_ImFontConfig :: proc () ---
    ImFontConfig_destroy :: proc (self: ^ImFontConfig) ---
    ImFontGlyphRangesBuilder_AddChar :: proc (self: ^ImFontGlyphRangesBuilder, c: ImWchar) ---
    ImFontGlyphRangesBuilder_AddRanges :: proc (self: ^ImFontGlyphRangesBuilder, ranges: ^ImWchar) ---
    ImFontGlyphRangesBuilder_AddText :: proc (self: ^ImFontGlyphRangesBuilder, text: cstring, text_end: cstring) ---
    ImFontGlyphRangesBuilder_BuildRanges :: proc (self: ^ImFontGlyphRangesBuilder, out_ranges: ImVector(^ImWchar)) ---
    ImFontGlyphRangesBuilder_Clear :: proc (self: ^ImFontGlyphRangesBuilder) ---
    ImFontGlyphRangesBuilder_GetBit :: proc (self: ^ImFontGlyphRangesBuilder, n: u64) -> bool ---
    ImFontGlyphRangesBuilder_ImFontGlyphRangesBuilder :: proc () ---
    ImFontGlyphRangesBuilder_SetBit :: proc (self: ^ImFontGlyphRangesBuilder, n: u64) ---
    ImFontGlyphRangesBuilder_destroy :: proc (self: ^ImFontGlyphRangesBuilder) ---
    ImFont_AddGlyph :: proc (self: ^ImFont, src_cfg: ^ImFontConfig, c: ImWchar, x0: f32, y0: f32, x1: f32, y1: f32, u0: f32, v0: f32, u1: f32, v1: f32, advance_x: f32) ---
    ImFont_AddRemapChar :: proc (self: ^ImFont, dst: ImWchar, src: ImWchar, overwrite_dst: bool) ---
    ImFont_BuildLookupTable :: proc (self: ^ImFont) ---
    ImFont_CalcTextSizeA :: proc (pOut: ^ImVec2, self: ^ImFont, size: f32, max_width: f32, wrap_width: f32, text_begin: cstring, text_end: cstring, remaining: ^^i8) ---
    ImFont_CalcWordWrapPositionA :: proc (self: ^ImFont, scale: f32, text: cstring, text_end: cstring, wrap_width: f32) -> cstring ---
    ImFont_ClearOutputData :: proc (self: ^ImFont) ---
    ImFont_FindGlyph :: proc (self: ^ImFont, c: ImWchar) -> ^ImFontGlyph ---
    ImFont_FindGlyphNoFallback :: proc (self: ^ImFont, c: ImWchar) -> ^ImFontGlyph ---
    ImFont_GetCharAdvance :: proc (self: ^ImFont, c: ImWchar) -> f32 ---
    ImFont_GetDebugName :: proc (self: ^ImFont) -> cstring ---
    ImFont_GrowIndex :: proc (self: ^ImFont, new_size: int) ---
    ImFont_ImFont :: proc () ---
    ImFont_IsGlyphRangeUnused :: proc (self: ^ImFont, c_begin: uint, c_last: uint) -> bool ---
    ImFont_IsLoaded :: proc (self: ^ImFont) -> bool ---
    ImFont_RenderChar :: proc (self: ^ImFont, draw_list: ^ImDrawList, size: f32, pos: ImVec2, col: u32, c: ImWchar) ---
    ImFont_RenderText :: proc (self: ^ImFont, draw_list: ^ImDrawList, size: f32, pos: ImVec2, col: u32, clip_rect: ImVec4, text_begin: cstring, text_end: cstring, wrap_width: f32, cpu_fine_clip: bool) ---
    ImFont_SetGlyphVisible :: proc (self: ^ImFont, c: ImWchar, visible: bool) ---
    ImFont_destroy :: proc (self: ^ImFont) ---
    ImGuiFreeType_GetBuilderForFreeType :: proc () -> ^ImFontBuilderIO ---
    ImGuiFreeType_SetAllocatorFunctions :: proc (alloc_func: #type proc "c" (sz: u64, user_data: rawptr) -> rawptr, free_func: #type proc "c" (ptr: rawptr, user_data: rawptr), user_data: rawptr) ---
    ImGuiIO_AddFocusEvent :: proc (self: ^ImGuiIO, focused: bool) ---
    ImGuiIO_AddInputCharacter :: proc (self: ^ImGuiIO, c: uint) ---
    ImGuiIO_AddInputCharacterUTF16 :: proc (self: ^ImGuiIO, c: ImWchar16) ---
    ImGuiIO_AddInputCharactersUTF8 :: proc (self: ^ImGuiIO, str: cstring) ---
    ImGuiIO_AddKeyAnalogEvent :: proc (self: ^ImGuiIO, key: ImGuiKey, down: bool, v: f32) ---
    ImGuiIO_AddKeyEvent :: proc (self: ^ImGuiIO, key: ImGuiKey, down: bool) ---
    ImGuiIO_AddMouseButtonEvent :: proc (self: ^ImGuiIO, button: int, down: bool) ---
    ImGuiIO_AddMousePosEvent :: proc (self: ^ImGuiIO, x: f32, y: f32) ---
    ImGuiIO_AddMouseViewportEvent :: proc (self: ^ImGuiIO, id: ImGuiID) ---
    ImGuiIO_AddMouseWheelEvent :: proc (self: ^ImGuiIO, wh_x: f32, wh_y: f32) ---
    ImGuiIO_ClearInputCharacters :: proc (self: ^ImGuiIO) ---
    ImGuiIO_ClearInputKeys :: proc (self: ^ImGuiIO) ---
    ImGuiIO_ImGuiIO :: proc () ---
    ImGuiIO_SetAppAcceptingEvents :: proc (self: ^ImGuiIO, accepting_events: bool) ---
    ImGuiIO_SetKeyEventNativeData :: proc (self: ^ImGuiIO, key: ImGuiKey, native_keycode: int, native_scancode: int, native_legacy_index: int) ---
    ImGuiIO_destroy :: proc (self: ^ImGuiIO) ---
    ImGuiInputTextCallbackData_ClearSelection :: proc (self: ^ImGuiInputTextCallbackData) ---
    ImGuiInputTextCallbackData_DeleteChars :: proc (self: ^ImGuiInputTextCallbackData, pos: int, bytes_count: int) ---
    ImGuiInputTextCallbackData_HasSelection :: proc (self: ^ImGuiInputTextCallbackData) -> bool ---
    ImGuiInputTextCallbackData_ImGuiInputTextCallbackData :: proc () ---
    ImGuiInputTextCallbackData_InsertChars :: proc (self: ^ImGuiInputTextCallbackData, pos: int, text: cstring, text_end: cstring) ---
    ImGuiInputTextCallbackData_SelectAll :: proc (self: ^ImGuiInputTextCallbackData) ---
    ImGuiInputTextCallbackData_destroy :: proc (self: ^ImGuiInputTextCallbackData) ---
    ImGuiListClipper_Begin :: proc (self: ^ImGuiListClipper, items_count: int, items_height: f32) ---
    ImGuiListClipper_End :: proc (self: ^ImGuiListClipper) ---
    ImGuiListClipper_ForceDisplayRangeByIndices :: proc (self: ^ImGuiListClipper, item_min: int, item_max: int) ---
    ImGuiListClipper_ImGuiListClipper :: proc () ---
    ImGuiListClipper_Step :: proc (self: ^ImGuiListClipper) -> bool ---
    ImGuiListClipper_destroy :: proc (self: ^ImGuiListClipper) ---
    ImGuiOnceUponAFrame_ImGuiOnceUponAFrame :: proc () ---
    ImGuiOnceUponAFrame_destroy :: proc (self: ^ImGuiOnceUponAFrame) ---
    ImGuiPayload_Clear :: proc (self: ^ImGuiPayload) ---
    ImGuiPayload_ImGuiPayload :: proc () ---
    ImGuiPayload_IsDataType :: proc (self: ^ImGuiPayload, type: cstring) -> bool ---
    ImGuiPayload_IsDelivery :: proc (self: ^ImGuiPayload) -> bool ---
    ImGuiPayload_IsPreview :: proc (self: ^ImGuiPayload) -> bool ---
    ImGuiPayload_destroy :: proc (self: ^ImGuiPayload) ---
    ImGuiPlatformIO_ImGuiPlatformIO :: proc () ---
    ImGuiPlatformIO_destroy :: proc (self: ^ImGuiPlatformIO) ---
    ImGuiPlatformImeData_ImGuiPlatformImeData :: proc () ---
    ImGuiPlatformImeData_destroy :: proc (self: ^ImGuiPlatformImeData) ---
    ImGuiPlatformMonitor_ImGuiPlatformMonitor :: proc () ---
    ImGuiPlatformMonitor_destroy :: proc (self: ^ImGuiPlatformMonitor) ---
    ImGuiStoragePair_ImGuiStoragePair_Int :: proc (_key: ImGuiID, _val_i: int) ---
    ImGuiStoragePair_ImGuiStoragePair_Float :: proc (_key: ImGuiID, _val_f: f32) ---
    ImGuiStoragePair_ImGuiStoragePair_Ptr :: proc (_key: ImGuiID, _val_p: rawptr) ---
    ImGuiStoragePair_destroy :: proc (self: ^ImGuiStoragePair) ---
    ImGuiStorage_BuildSortByKey :: proc (self: ^ImGuiStorage) ---
    ImGuiStorage_Clear :: proc (self: ^ImGuiStorage) ---
    ImGuiStorage_GetBool :: proc (self: ^ImGuiStorage, key: ImGuiID, default_val: bool) -> bool ---
    ImGuiStorage_GetBoolRef :: proc (self: ^ImGuiStorage, key: ImGuiID, default_val: bool) -> ^bool ---
    ImGuiStorage_GetFloat :: proc (self: ^ImGuiStorage, key: ImGuiID, default_val: f32) -> f32 ---
    ImGuiStorage_GetFloatRef :: proc (self: ^ImGuiStorage, key: ImGuiID, default_val: f32) -> ^f32 ---
    ImGuiStorage_GetInt :: proc (self: ^ImGuiStorage, key: ImGuiID, default_val: int) -> int ---
    ImGuiStorage_GetIntRef :: proc (self: ^ImGuiStorage, key: ImGuiID, default_val: int) -> ^int ---
    ImGuiStorage_GetVoidPtr :: proc (self: ^ImGuiStorage, key: ImGuiID) -> rawptr ---
    ImGuiStorage_GetVoidPtrRef :: proc (self: ^ImGuiStorage, key: ImGuiID, default_val: rawptr) -> ^rawptr ---
    ImGuiStorage_SetAllInt :: proc (self: ^ImGuiStorage, val: int) ---
    ImGuiStorage_SetBool :: proc (self: ^ImGuiStorage, key: ImGuiID, val: bool) ---
    ImGuiStorage_SetFloat :: proc (self: ^ImGuiStorage, key: ImGuiID, val: f32) ---
    ImGuiStorage_SetInt :: proc (self: ^ImGuiStorage, key: ImGuiID, val: int) ---
    ImGuiStorage_SetVoidPtr :: proc (self: ^ImGuiStorage, key: ImGuiID, val: rawptr) ---
    ImGuiStyle_ImGuiStyle :: proc () ---
    ImGuiStyle_ScaleAllSizes :: proc (self: ^ImGuiStyle, scale_factor: f32) ---
    ImGuiStyle_destroy :: proc (self: ^ImGuiStyle) ---
    ImGuiTableColumnSortSpecs_ImGuiTableColumnSortSpecs :: proc () ---
    ImGuiTableColumnSortSpecs_destroy :: proc (self: ^ImGuiTableColumnSortSpecs) ---
    ImGuiTableSortSpecs_ImGuiTableSortSpecs :: proc () ---
    ImGuiTableSortSpecs_destroy :: proc (self: ^ImGuiTableSortSpecs) ---
    ImGuiTextBuffer_ImGuiTextBuffer :: proc () ---
    ImGuiTextBuffer_append :: proc (self: ^ImGuiTextBuffer, str: cstring, str_end: cstring) ---
    ImGuiTextBuffer_appendf :: proc (self: ^ImGuiTextBuffer, fmt: cstring, #c_vararg args: ..any) ---
    ImGuiTextBuffer_begin :: proc (self: ^ImGuiTextBuffer) -> cstring ---
    ImGuiTextBuffer_c_str :: proc (self: ^ImGuiTextBuffer) -> cstring ---
    ImGuiTextBuffer_clear :: proc (self: ^ImGuiTextBuffer) ---
    ImGuiTextBuffer_destroy :: proc (self: ^ImGuiTextBuffer) ---
    ImGuiTextBuffer_empty :: proc (self: ^ImGuiTextBuffer) -> bool ---
    ImGuiTextBuffer_end :: proc (self: ^ImGuiTextBuffer) -> cstring ---
    ImGuiTextBuffer_reserve :: proc (self: ^ImGuiTextBuffer, capacity: int) ---
    ImGuiTextBuffer_size :: proc (self: ^ImGuiTextBuffer) -> int ---
    ImGuiTextFilter_Build :: proc (self: ^ImGuiTextFilter) ---
    ImGuiTextFilter_Clear :: proc (self: ^ImGuiTextFilter) ---
    ImGuiTextFilter_Draw :: proc (self: ^ImGuiTextFilter, label: cstring, width: f32) -> bool ---
    ImGuiTextFilter_ImGuiTextFilter :: proc (default_filter: cstring) ---
    ImGuiTextFilter_IsActive :: proc (self: ^ImGuiTextFilter) -> bool ---
    ImGuiTextFilter_PassFilter :: proc (self: ^ImGuiTextFilter, text: cstring, text_end: cstring) -> bool ---
    ImGuiTextFilter_destroy :: proc (self: ^ImGuiTextFilter) ---
    ImGuiTextRange_ImGuiTextRange_Nil :: proc () ---
    ImGuiTextRange_ImGuiTextRange_Str :: proc (_b: cstring, _e: cstring) ---
    ImGuiTextRange_destroy :: proc (self: ^ImGuiTextRange) ---
    ImGuiTextRange_empty :: proc (self: ^ImGuiTextRange) -> bool ---
    ImGuiTextRange_split :: proc (self: ^ImGuiTextRange, separator: i8, out: ImVector(^ImGuiTextRange)) ---
    ImGuiViewport_GetCenter :: proc (pOut: ^ImVec2, self: ^ImGuiViewport) ---
    ImGuiViewport_GetWorkCenter :: proc (pOut: ^ImVec2, self: ^ImGuiViewport) ---
    ImGuiViewport_ImGuiViewport :: proc () ---
    ImGuiViewport_destroy :: proc (self: ^ImGuiViewport) ---
    ImGuiWindowClass_ImGuiWindowClass :: proc () ---
    ImGuiWindowClass_destroy :: proc (self: ^ImGuiWindowClass) ---
    ImVec2_ImVec2_Nil :: proc () ---
    ImVec2_ImVec2_Float :: proc (_x: f32, _y: f32) ---
    ImVec2_destroy :: proc (self: ^ImVec2) ---
    ImVec4_ImVec4_Nil :: proc () ---
    ImVec4_ImVec4_Float :: proc (_x: f32, _y: f32, _z: f32, _w: f32) ---
    ImVec4_destroy :: proc (self: ^ImVec4) ---
    igAcceptDragDropPayload :: proc (type: cstring, flags: ImGuiDragDropFlags) -> ^ImGuiPayload ---
    igAlignTextToFramePadding :: proc () ---
    igArrowButton :: proc (str_id: cstring, dir: ImGuiDir) -> bool ---
    igBegin :: proc (name: cstring, p_open: ^bool, flags: ImGuiWindowFlags) -> bool ---
    igBeginChild_Str :: proc (str_id: cstring, size: ImVec2, border: bool, flags: ImGuiWindowFlags) -> bool ---
    igBeginChild_ID :: proc (id: ImGuiID, size: ImVec2, border: bool, flags: ImGuiWindowFlags) -> bool ---
    igBeginChildFrame :: proc (id: ImGuiID, size: ImVec2, flags: ImGuiWindowFlags) -> bool ---
    igBeginCombo :: proc (label: cstring, preview_value: cstring, flags: ImGuiComboFlags) -> bool ---
    igBeginDisabled :: proc (disabled: bool) ---
    igBeginDragDropSource :: proc (flags: ImGuiDragDropFlags) -> bool ---
    igBeginDragDropTarget :: proc () -> bool ---
    igBeginGroup :: proc () ---
    igBeginListBox :: proc (label: cstring, size: ImVec2) -> bool ---
    igBeginMainMenuBar :: proc () -> bool ---
    igBeginMenu :: proc (label: cstring, enabled: bool) -> bool ---
    igBeginMenuBar :: proc () -> bool ---
    igBeginPopup :: proc (str_id: cstring, flags: ImGuiWindowFlags) -> bool ---
    igBeginPopupContextItem :: proc (str_id: cstring, popup_flags: ImGuiPopupFlags) -> bool ---
    igBeginPopupContextVoid :: proc (str_id: cstring, popup_flags: ImGuiPopupFlags) -> bool ---
    igBeginPopupContextWindow :: proc (str_id: cstring, popup_flags: ImGuiPopupFlags) -> bool ---
    igBeginPopupModal :: proc (name: cstring, p_open: ^bool, flags: ImGuiWindowFlags) -> bool ---
    igBeginTabBar :: proc (str_id: cstring, flags: ImGuiTabBarFlags) -> bool ---
    igBeginTabItem :: proc (label: cstring, p_open: ^bool, flags: ImGuiTabItemFlags) -> bool ---
    igBeginTable :: proc (str_id: cstring, column: int, flags: ImGuiTableFlags, outer_size: ImVec2, inner_width: f32) -> bool ---
    igBeginTooltip :: proc () ---
    igBullet :: proc () ---
    igBulletText :: proc (fmt: cstring, #c_vararg args: ..any) ---
    igButton :: proc (label: cstring, size: ImVec2) -> bool ---
    igCalcItemWidth :: proc () -> f32 ---
    igCalcTextSize :: proc (pOut: ^ImVec2, text: cstring, text_end: cstring, hide_text_after_double_hash: bool, wrap_width: f32) ---
    igCheckbox :: proc (label: cstring, v: ^bool) -> bool ---
    igCheckboxFlags_IntPtr :: proc (label: cstring, flags: ^int, flags_value: int) -> bool ---
    igCheckboxFlags_UintPtr :: proc (label: cstring, flags: ^uint, flags_value: uint) -> bool ---
    igCloseCurrentPopup :: proc () ---
    igCollapsingHeader_TreeNodeFlags :: proc (label: cstring, flags: ImGuiTreeNodeFlags) -> bool ---
    igCollapsingHeader_BoolPtr :: proc (label: cstring, p_visible: ^bool, flags: ImGuiTreeNodeFlags) -> bool ---
    igColorButton :: proc (desc_id: cstring, col: ImVec4, flags: ImGuiColorEditFlags, size: ImVec2) -> bool ---
    igColorConvertFloat4ToU32 :: proc (_in: ImVec4) -> u32 ---
    igColorConvertHSVtoRGB :: proc (h: f32, s: f32, v: f32, out_r: ^f32, out_g: ^f32, out_b: ^f32) ---
    igColorConvertRGBtoHSV :: proc (r: f32, g: f32, b: f32, out_h: ^f32, out_s: ^f32, out_v: ^f32) ---
    igColorConvertU32ToFloat4 :: proc (pOut: ^ImVec4, _in: u32) ---
    igColorEdit3 :: proc (label: cstring, col: ^[3]f32, flags: ImGuiColorEditFlags) -> bool ---
    igColorEdit4 :: proc (label: cstring, col: ^[4]f32, flags: ImGuiColorEditFlags) -> bool ---
    igColorPicker3 :: proc (label: cstring, col: ^[3]f32, flags: ImGuiColorEditFlags) -> bool ---
    igColorPicker4 :: proc (label: cstring, col: ^[4]f32, flags: ImGuiColorEditFlags, ref_col: ^f32) -> bool ---
    igColumns :: proc (count: int, id: cstring, border: bool) ---
    igCombo_Str_arr :: proc (label: cstring, current_item: ^int, items: [^]cstring, items_count: int, popup_max_height_in_items: int) -> bool ---
    igCombo_Str :: proc (label: cstring, current_item: ^int, items_separated_by_zeros: cstring, popup_max_height_in_items: int) -> bool ---
    igCombo_FnBoolPtr :: proc (label: cstring, current_item: ^int, items_getter: #type proc "c" (data: rawptr, idx: int, out_text: ^^i8) -> bool, data: rawptr, items_count: int, popup_max_height_in_items: int) -> bool ---
    igCreateContext :: proc (shared_font_atlas: ^ImFontAtlas) -> ^ImGuiContext ---
    igDebugCheckVersionAndDataLayout :: proc (version_str: cstring, sz_io: u64, sz_style: u64, sz_vec2: u64, sz_vec4: u64, sz_drawvert: u64, sz_drawidx: u64) -> bool ---
    igDebugTextEncoding :: proc (text: cstring) ---
    igDestroyContext :: proc (ctx: ^ImGuiContext) ---
    igDestroyPlatformWindows :: proc () ---
    igDockSpace :: proc (id: ImGuiID, size: ImVec2, flags: ImGuiDockNodeFlags, window_class: ^ImGuiWindowClass) -> ImGuiID ---
    igDockSpaceOverViewport :: proc (viewport: ^ImGuiViewport, flags: ImGuiDockNodeFlags, window_class: ^ImGuiWindowClass) -> ImGuiID ---
    igDragFloat :: proc (label: cstring, v: ^f32, v_speed: f32, v_min: f32, v_max: f32, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igDragFloat2 :: proc (label: cstring, v: ^[2]f32, v_speed: f32, v_min: f32, v_max: f32, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igDragFloat3 :: proc (label: cstring, v: ^[3]f32, v_speed: f32, v_min: f32, v_max: f32, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igDragFloat4 :: proc (label: cstring, v: ^[4]f32, v_speed: f32, v_min: f32, v_max: f32, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igDragFloatRange2 :: proc (label: cstring, v_current_min: ^f32, v_current_max: ^f32, v_speed: f32, v_min: f32, v_max: f32, format: cstring, format_max: cstring, flags: ImGuiSliderFlags) -> bool ---
    igDragInt :: proc (label: cstring, v: ^int, v_speed: f32, v_min: int, v_max: int, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igDragInt2 :: proc (label: cstring, v: ^[2]int, v_speed: f32, v_min: int, v_max: int, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igDragInt3 :: proc (label: cstring, v: ^[3]int, v_speed: f32, v_min: int, v_max: int, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igDragInt4 :: proc (label: cstring, v: ^[4]int, v_speed: f32, v_min: int, v_max: int, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igDragIntRange2 :: proc (label: cstring, v_current_min: ^int, v_current_max: ^int, v_speed: f32, v_min: int, v_max: int, format: cstring, format_max: cstring, flags: ImGuiSliderFlags) -> bool ---
    igDragScalar :: proc (label: cstring, data_type: ImGuiDataType, p_data: rawptr, v_speed: f32, p_min: rawptr, p_max: rawptr, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igDragScalarN :: proc (label: cstring, data_type: ImGuiDataType, p_data: rawptr, components: int, v_speed: f32, p_min: rawptr, p_max: rawptr, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igDummy :: proc (size: ImVec2) ---
    igEnd :: proc () ---
    igEndChild :: proc () ---
    igEndChildFrame :: proc () ---
    igEndCombo :: proc () ---
    igEndDisabled :: proc () ---
    igEndDragDropSource :: proc () ---
    igEndDragDropTarget :: proc () ---
    igEndFrame :: proc () ---
    igEndGroup :: proc () ---
    igEndListBox :: proc () ---
    igEndMainMenuBar :: proc () ---
    igEndMenu :: proc () ---
    igEndMenuBar :: proc () ---
    igEndPopup :: proc () ---
    igEndTabBar :: proc () ---
    igEndTabItem :: proc () ---
    igEndTable :: proc () ---
    igEndTooltip :: proc () ---
    igFindViewportByID :: proc (id: ImGuiID) -> ^ImGuiViewport ---
    igFindViewportByPlatformHandle :: proc (platform_handle: rawptr) -> ^ImGuiViewport ---
    igGetAllocatorFunctions :: proc (p_alloc_func: ^ImGuiMemAllocFunc, p_free_func: ^ImGuiMemFreeFunc, p_user_data: ^rawptr) ---
    igGetBackgroundDrawList_Nil :: proc () -> ^ImDrawList ---
    igGetBackgroundDrawList_ViewportPtr :: proc (viewport: ^ImGuiViewport) -> ^ImDrawList ---
    igGetClipboardText :: proc () -> cstring ---
    igGetColorU32_Col :: proc (idx: ImGuiCol, alpha_mul: f32) -> u32 ---
    igGetColorU32_Vec4 :: proc (col: ImVec4) -> u32 ---
    igGetColorU32_U32 :: proc (col: u32) -> u32 ---
    igGetColumnIndex :: proc () -> int ---
    igGetColumnOffset :: proc (column_index: int) -> f32 ---
    igGetColumnWidth :: proc (column_index: int) -> f32 ---
    igGetColumnsCount :: proc () -> int ---
    igGetContentRegionAvail :: proc (pOut: ^ImVec2) ---
    igGetContentRegionMax :: proc (pOut: ^ImVec2) ---
    igGetCurrentContext :: proc () -> ^ImGuiContext ---
    igGetCursorPos :: proc (pOut: ^ImVec2) ---
    igGetCursorPosX :: proc () -> f32 ---
    igGetCursorPosY :: proc () -> f32 ---
    igGetCursorScreenPos :: proc (pOut: ^ImVec2) ---
    igGetCursorStartPos :: proc (pOut: ^ImVec2) ---
    igGetDragDropPayload :: proc () -> ^ImGuiPayload ---
    igGetDrawData :: proc () -> ^ImDrawData ---
    igGetDrawListSharedData :: proc () -> ^ImDrawListSharedData ---
    igGetFont :: proc () -> ^ImFont ---
    igGetFontSize :: proc () -> f32 ---
    igGetFontTexUvWhitePixel :: proc (pOut: ^ImVec2) ---
    igGetForegroundDrawList_Nil :: proc () -> ^ImDrawList ---
    igGetForegroundDrawList_ViewportPtr :: proc (viewport: ^ImGuiViewport) -> ^ImDrawList ---
    igGetFrameCount :: proc () -> int ---
    igGetFrameHeight :: proc () -> f32 ---
    igGetFrameHeightWithSpacing :: proc () -> f32 ---
    igGetID_Str :: proc (str_id: cstring) -> ImGuiID ---
    igGetID_StrStr :: proc (str_id_begin: cstring, str_id_end: cstring) -> ImGuiID ---
    igGetID_Ptr :: proc (ptr_id: rawptr) -> ImGuiID ---
    igGetIO :: proc () -> ^ImGuiIO ---
    igGetItemRectMax :: proc (pOut: ^ImVec2) ---
    igGetItemRectMin :: proc (pOut: ^ImVec2) ---
    igGetItemRectSize :: proc (pOut: ^ImVec2) ---
    igGetKeyIndex :: proc (key: ImGuiKey) -> ImGuiKey ---
    igGetKeyName :: proc (key: ImGuiKey) -> cstring ---
    igGetKeyPressedAmount :: proc (key: ImGuiKey, repeat_delay: f32, rate: f32) -> int ---
    igGetMainViewport :: proc () -> ^ImGuiViewport ---
    igGetMouseClickedCount :: proc (button: ImGuiMouseButton) -> int ---
    igGetMouseCursor :: proc () -> ImGuiMouseCursor ---
    igGetMouseDragDelta :: proc (pOut: ^ImVec2, button: ImGuiMouseButton, lock_threshold: f32) ---
    igGetMousePos :: proc (pOut: ^ImVec2) ---
    igGetMousePosOnOpeningCurrentPopup :: proc (pOut: ^ImVec2) ---
    igGetPlatformIO :: proc () -> ^ImGuiPlatformIO ---
    igGetScrollMaxX :: proc () -> f32 ---
    igGetScrollMaxY :: proc () -> f32 ---
    igGetScrollX :: proc () -> f32 ---
    igGetScrollY :: proc () -> f32 ---
    igGetStateStorage :: proc () -> ^ImGuiStorage ---
    igGetStyle :: proc () -> ^ImGuiStyle ---
    igGetStyleColorName :: proc (idx: ImGuiCol) -> cstring ---
    igGetStyleColorVec4 :: proc (idx: ImGuiCol) -> ^ImVec4 ---
    igGetTextLineHeight :: proc () -> f32 ---
    igGetTextLineHeightWithSpacing :: proc () -> f32 ---
    igGetTime :: proc () -> f64 ---
    igGetTreeNodeToLabelSpacing :: proc () -> f32 ---
    igGetVersion :: proc () -> cstring ---
    igGetWindowContentRegionMax :: proc (pOut: ^ImVec2) ---
    igGetWindowContentRegionMin :: proc (pOut: ^ImVec2) ---
    igGetWindowDockID :: proc () -> ImGuiID ---
    igGetWindowDpiScale :: proc () -> f32 ---
    igGetWindowDrawList :: proc () -> ^ImDrawList ---
    igGetWindowHeight :: proc () -> f32 ---
    igGetWindowPos :: proc (pOut: ^ImVec2) ---
    igGetWindowSize :: proc (pOut: ^ImVec2) ---
    igGetWindowViewport :: proc () -> ^ImGuiViewport ---
    igGetWindowWidth :: proc () -> f32 ---
    igImage :: proc (user_texture_id: ImTextureID, size: ImVec2, uv0: ImVec2, uv1: ImVec2, tint_col: ImVec4, border_col: ImVec4) ---
    igImageButton :: proc (str_id: cstring, user_texture_id: ImTextureID, size: ImVec2, uv0: ImVec2, uv1: ImVec2, bg_col: ImVec4, tint_col: ImVec4) -> bool ---
    igIndent :: proc (indent_w: f32) ---
    igInputDouble :: proc (label: cstring, v: ^f64, step: f64, step_fast: f64, format: cstring, flags: ImGuiInputTextFlags) -> bool ---
    igInputFloat :: proc (label: cstring, v: ^f32, step: f32, step_fast: f32, format: cstring, flags: ImGuiInputTextFlags) -> bool ---
    igInputFloat2 :: proc (label: cstring, v: ^[2]f32, format: cstring, flags: ImGuiInputTextFlags) -> bool ---
    igInputFloat3 :: proc (label: cstring, v: ^[3]f32, format: cstring, flags: ImGuiInputTextFlags) -> bool ---
    igInputFloat4 :: proc (label: cstring, v: ^[4]f32, format: cstring, flags: ImGuiInputTextFlags) -> bool ---
    igInputInt :: proc (label: cstring, v: ^int, step: int, step_fast: int, flags: ImGuiInputTextFlags) -> bool ---
    igInputInt2 :: proc (label: cstring, v: ^[2]int, flags: ImGuiInputTextFlags) -> bool ---
    igInputInt3 :: proc (label: cstring, v: ^[3]int, flags: ImGuiInputTextFlags) -> bool ---
    igInputInt4 :: proc (label: cstring, v: ^[4]int, flags: ImGuiInputTextFlags) -> bool ---
    igInputScalar :: proc (label: cstring, data_type: ImGuiDataType, p_data: rawptr, p_step: rawptr, p_step_fast: rawptr, format: cstring, flags: ImGuiInputTextFlags) -> bool ---
    igInputScalarN :: proc (label: cstring, data_type: ImGuiDataType, p_data: rawptr, components: int, p_step: rawptr, p_step_fast: rawptr, format: cstring, flags: ImGuiInputTextFlags) -> bool ---
    igInputText :: proc (label: cstring, buf: ^i8, buf_size: u64, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: rawptr) -> bool ---
    igInputTextMultiline :: proc (label: cstring, buf: ^i8, buf_size: u64, size: ImVec2, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: rawptr) -> bool ---
    igInputTextWithHint :: proc (label: cstring, hint: cstring, buf: ^i8, buf_size: u64, flags: ImGuiInputTextFlags, callback: ImGuiInputTextCallback, user_data: rawptr) -> bool ---
    igInvisibleButton :: proc (str_id: cstring, size: ImVec2, flags: ImGuiButtonFlags) -> bool ---
    igIsAnyItemActive :: proc () -> bool ---
    igIsAnyItemFocused :: proc () -> bool ---
    igIsAnyItemHovered :: proc () -> bool ---
    igIsAnyMouseDown :: proc () -> bool ---
    igIsItemActivated :: proc () -> bool ---
    igIsItemActive :: proc () -> bool ---
    igIsItemClicked :: proc (mouse_button: ImGuiMouseButton) -> bool ---
    igIsItemDeactivated :: proc () -> bool ---
    igIsItemDeactivatedAfterEdit :: proc () -> bool ---
    igIsItemEdited :: proc () -> bool ---
    igIsItemFocused :: proc () -> bool ---
    igIsItemHovered :: proc (flags: ImGuiHoveredFlags) -> bool ---
    igIsItemToggledOpen :: proc () -> bool ---
    igIsItemVisible :: proc () -> bool ---
    igIsKeyDown :: proc (key: ImGuiKey) -> bool ---
    igIsKeyPressed :: proc (key: ImGuiKey, repeat: bool) -> bool ---
    igIsKeyReleased :: proc (key: ImGuiKey) -> bool ---
    igIsMouseClicked :: proc (button: ImGuiMouseButton, repeat: bool) -> bool ---
    igIsMouseDoubleClicked :: proc (button: ImGuiMouseButton) -> bool ---
    igIsMouseDown :: proc (button: ImGuiMouseButton) -> bool ---
    igIsMouseDragging :: proc (button: ImGuiMouseButton, lock_threshold: f32) -> bool ---
    igIsMouseHoveringRect :: proc (r_min: ImVec2, r_max: ImVec2, clip: bool) -> bool ---
    igIsMousePosValid :: proc (mouse_pos: ^ImVec2) -> bool ---
    igIsMouseReleased :: proc (button: ImGuiMouseButton) -> bool ---
    igIsPopupOpen :: proc (str_id: cstring, flags: ImGuiPopupFlags) -> bool ---
    igIsRectVisible_Nil :: proc (size: ImVec2) -> bool ---
    igIsRectVisible_Vec2 :: proc (rect_min: ImVec2, rect_max: ImVec2) -> bool ---
    igIsWindowAppearing :: proc () -> bool ---
    igIsWindowCollapsed :: proc () -> bool ---
    igIsWindowDocked :: proc () -> bool ---
    igIsWindowFocused :: proc (flags: ImGuiFocusedFlags) -> bool ---
    igIsWindowHovered :: proc (flags: ImGuiHoveredFlags) -> bool ---
    igLabelText :: proc (label: cstring, fmt: cstring, #c_vararg args: ..any) ---
    igListBox_Str_arr :: proc (label: cstring, current_item: ^int, items: [^]cstring, items_count: int, height_in_items: int) -> bool ---
    igListBox_FnBoolPtr :: proc (label: cstring, current_item: ^int, items_getter: #type proc "c" (data: rawptr, idx: int, out_text: ^^i8) -> bool, data: rawptr, items_count: int, height_in_items: int) -> bool ---
    igLoadIniSettingsFromDisk :: proc (ini_filename: cstring) ---
    igLoadIniSettingsFromMemory :: proc (ini_data: cstring, ini_size: u64) ---
    igLogButtons :: proc () ---
    igLogFinish :: proc () ---
    igLogText :: proc (fmt: cstring, #c_vararg args: ..any) ---
    igLogToClipboard :: proc (auto_open_depth: int) ---
    igLogToFile :: proc (auto_open_depth: int, filename: cstring) ---
    igLogToTTY :: proc (auto_open_depth: int) ---
    igMemAlloc :: proc (size: u64) -> rawptr ---
    igMemFree :: proc (ptr: rawptr) ---
    igMenuItem_Bool :: proc (label: cstring, shortcut: cstring, selected: bool, enabled: bool) -> bool ---
    igMenuItem_BoolPtr :: proc (label: cstring, shortcut: cstring, p_selected: ^bool, enabled: bool) -> bool ---
    igNewFrame :: proc () ---
    igNewLine :: proc () ---
    igNextColumn :: proc () ---
    igOpenPopup_Str :: proc (str_id: cstring, popup_flags: ImGuiPopupFlags) ---
    igOpenPopup_ID :: proc (id: ImGuiID, popup_flags: ImGuiPopupFlags) ---
    igOpenPopupOnItemClick :: proc (str_id: cstring, popup_flags: ImGuiPopupFlags) ---
    igPlotHistogram_FloatPtr :: proc (label: cstring, values: ^f32, values_count: int, values_offset: int, overlay_text: cstring, scale_min: f32, scale_max: f32, graph_size: ImVec2, stride: int) ---
    igPlotHistogram_FnFloatPtr :: proc (label: cstring, values_getter: #type proc "c" (data: rawptr, idx: int) -> f32, data: rawptr, values_count: int, values_offset: int, overlay_text: cstring, scale_min: f32, scale_max: f32, graph_size: ImVec2) ---
    igPlotLines_FloatPtr :: proc (label: cstring, values: ^f32, values_count: int, values_offset: int, overlay_text: cstring, scale_min: f32, scale_max: f32, graph_size: ImVec2, stride: int) ---
    igPlotLines_FnFloatPtr :: proc (label: cstring, values_getter: #type proc "c" (data: rawptr, idx: int) -> f32, data: rawptr, values_count: int, values_offset: int, overlay_text: cstring, scale_min: f32, scale_max: f32, graph_size: ImVec2) ---
    igPopAllowKeyboardFocus :: proc () ---
    igPopButtonRepeat :: proc () ---
    igPopClipRect :: proc () ---
    igPopFont :: proc () ---
    igPopID :: proc () ---
    igPopItemWidth :: proc () ---
    igPopStyleColor :: proc (count: int) ---
    igPopStyleVar :: proc (count: int) ---
    igPopTextWrapPos :: proc () ---
    igProgressBar :: proc (fraction: f32, size_arg: ImVec2, overlay: cstring) ---
    igPushAllowKeyboardFocus :: proc (allow_keyboard_focus: bool) ---
    igPushButtonRepeat :: proc (repeat: bool) ---
    igPushClipRect :: proc (clip_rect_min: ImVec2, clip_rect_max: ImVec2, intersect_with_current_clip_rect: bool) ---
    igPushFont :: proc (font: ^ImFont) ---
    igPushID_Str :: proc (str_id: cstring) ---
    igPushID_StrStr :: proc (str_id_begin: cstring, str_id_end: cstring) ---
    igPushID_Ptr :: proc (ptr_id: rawptr) ---
    igPushID_Int :: proc (int_id: int) ---
    igPushItemWidth :: proc (item_width: f32) ---
    igPushStyleColor_U32 :: proc (idx: ImGuiCol, col: u32) ---
    igPushStyleColor_Vec4 :: proc (idx: ImGuiCol, col: ImVec4) ---
    igPushStyleVar_Float :: proc (idx: ImGuiStyleVar, val: f32) ---
    igPushStyleVar_Vec2 :: proc (idx: ImGuiStyleVar, val: ImVec2) ---
    igPushTextWrapPos :: proc (wrap_local_pos_x: f32) ---
    igRadioButton_Bool :: proc (label: cstring, active: bool) -> bool ---
    igRadioButton_IntPtr :: proc (label: cstring, v: ^int, v_button: int) -> bool ---
    igRender :: proc () ---
    igRenderPlatformWindowsDefault :: proc (platform_render_arg: rawptr, renderer_render_arg: rawptr) ---
    igResetMouseDragDelta :: proc (button: ImGuiMouseButton) ---
    igSameLine :: proc (offset_from_start_x: f32, spacing: f32) ---
    igSaveIniSettingsToDisk :: proc (ini_filename: cstring) ---
    igSaveIniSettingsToMemory :: proc (out_ini_size: ^u64) -> cstring ---
    igSelectable_Bool :: proc (label: cstring, selected: bool, flags: ImGuiSelectableFlags, size: ImVec2) -> bool ---
    igSelectable_BoolPtr :: proc (label: cstring, p_selected: ^bool, flags: ImGuiSelectableFlags, size: ImVec2) -> bool ---
    igSeparator :: proc () ---
    igSetAllocatorFunctions :: proc (alloc_func: ImGuiMemAllocFunc, free_func: ImGuiMemFreeFunc, user_data: rawptr) ---
    igSetClipboardText :: proc (text: cstring) ---
    igSetColorEditOptions :: proc (flags: ImGuiColorEditFlags) ---
    igSetColumnOffset :: proc (column_index: int, offset_x: f32) ---
    igSetColumnWidth :: proc (column_index: int, width: f32) ---
    igSetCurrentContext :: proc (ctx: ^ImGuiContext) ---
    igSetCursorPos :: proc (local_pos: ImVec2) ---
    igSetCursorPosX :: proc (local_x: f32) ---
    igSetCursorPosY :: proc (local_y: f32) ---
    igSetCursorScreenPos :: proc (pos: ImVec2) ---
    igSetDragDropPayload :: proc (type: cstring, data: rawptr, sz: u64, cond: ImGuiCond) -> bool ---
    igSetItemAllowOverlap :: proc () ---
    igSetItemDefaultFocus :: proc () ---
    igSetKeyboardFocusHere :: proc (offset: int) ---
    igSetMouseCursor :: proc (cursor_type: ImGuiMouseCursor) ---
    igSetNextFrameWantCaptureKeyboard :: proc (want_capture_keyboard: bool) ---
    igSetNextFrameWantCaptureMouse :: proc (want_capture_mouse: bool) ---
    igSetNextItemOpen :: proc (is_open: bool, cond: ImGuiCond) ---
    igSetNextItemWidth :: proc (item_width: f32) ---
    igSetNextWindowBgAlpha :: proc (alpha: f32) ---
    igSetNextWindowClass :: proc (window_class: ^ImGuiWindowClass) ---
    igSetNextWindowCollapsed :: proc (collapsed: bool, cond: ImGuiCond) ---
    igSetNextWindowContentSize :: proc (size: ImVec2) ---
    igSetNextWindowDockID :: proc (dock_id: ImGuiID, cond: ImGuiCond) ---
    igSetNextWindowFocus :: proc () ---
    igSetNextWindowPos :: proc (pos: ImVec2, cond: ImGuiCond, pivot: ImVec2) ---
    igSetNextWindowScroll :: proc (scroll: ImVec2) ---
    igSetNextWindowSize :: proc (size: ImVec2, cond: ImGuiCond) ---
    igSetNextWindowSizeConstraints :: proc (size_min: ImVec2, size_max: ImVec2, custom_callback: ImGuiSizeCallback, custom_callback_data: rawptr) ---
    igSetNextWindowViewport :: proc (viewport_id: ImGuiID) ---
    igSetScrollFromPosX :: proc (local_x: f32, center_x_ratio: f32) ---
    igSetScrollFromPosY :: proc (local_y: f32, center_y_ratio: f32) ---
    igSetScrollHereX :: proc (center_x_ratio: f32) ---
    igSetScrollHereY :: proc (center_y_ratio: f32) ---
    igSetScrollX :: proc (scroll_x: f32) ---
    igSetScrollY :: proc (scroll_y: f32) ---
    igSetStateStorage :: proc (storage: ^ImGuiStorage) ---
    igSetTabItemClosed :: proc (tab_or_docked_window_label: cstring) ---
    igSetTooltip :: proc (fmt: cstring, #c_vararg args: ..any) ---
    igSetWindowCollapsed_Bool :: proc (collapsed: bool, cond: ImGuiCond) ---
    igSetWindowCollapsed_Str :: proc (name: cstring, collapsed: bool, cond: ImGuiCond) ---
    igSetWindowFocus_Nil :: proc () ---
    igSetWindowFocus_Str :: proc (name: cstring) ---
    igSetWindowFontScale :: proc (scale: f32) ---
    igSetWindowPos_Vec2 :: proc (pos: ImVec2, cond: ImGuiCond) ---
    igSetWindowPos_Str :: proc (name: cstring, pos: ImVec2, cond: ImGuiCond) ---
    igSetWindowSize_Vec2 :: proc (size: ImVec2, cond: ImGuiCond) ---
    igSetWindowSize_Str :: proc (name: cstring, size: ImVec2, cond: ImGuiCond) ---
    igShowAboutWindow :: proc (p_open: ^bool) ---
    igShowDebugLogWindow :: proc (p_open: ^bool) ---
    igShowDemoWindow :: proc (p_open: ^bool) ---
    igShowFontSelector :: proc (label: cstring) ---
    igShowMetricsWindow :: proc (p_open: ^bool) ---
    igShowStackToolWindow :: proc (p_open: ^bool) ---
    igShowStyleEditor :: proc (ref: ^ImGuiStyle) ---
    igShowStyleSelector :: proc (label: cstring) -> bool ---
    igShowUserGuide :: proc () ---
    igSliderAngle :: proc (label: cstring, v_rad: ^f32, v_degrees_min: f32, v_degrees_max: f32, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igSliderFloat :: proc (label: cstring, v: ^f32, v_min: f32, v_max: f32, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igSliderFloat2 :: proc (label: cstring, v: ^[2]f32, v_min: f32, v_max: f32, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igSliderFloat3 :: proc (label: cstring, v: ^[3]f32, v_min: f32, v_max: f32, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igSliderFloat4 :: proc (label: cstring, v: ^[4]f32, v_min: f32, v_max: f32, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igSliderInt :: proc (label: cstring, v: ^int, v_min: int, v_max: int, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igSliderInt2 :: proc (label: cstring, v: ^[2]int, v_min: int, v_max: int, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igSliderInt3 :: proc (label: cstring, v: ^[3]int, v_min: int, v_max: int, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igSliderInt4 :: proc (label: cstring, v: ^[4]int, v_min: int, v_max: int, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igSliderScalar :: proc (label: cstring, data_type: ImGuiDataType, p_data: rawptr, p_min: rawptr, p_max: rawptr, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igSliderScalarN :: proc (label: cstring, data_type: ImGuiDataType, p_data: rawptr, components: int, p_min: rawptr, p_max: rawptr, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igSmallButton :: proc (label: cstring) -> bool ---
    igSpacing :: proc () ---
    igStyleColorsClassic :: proc (dst: ^ImGuiStyle) ---
    igStyleColorsDark :: proc (dst: ^ImGuiStyle) ---
    igStyleColorsLight :: proc (dst: ^ImGuiStyle) ---
    igTabItemButton :: proc (label: cstring, flags: ImGuiTabItemFlags) -> bool ---
    igTableGetColumnCount :: proc () -> int ---
    igTableGetColumnFlags :: proc (column_n: int) -> ImGuiTableColumnFlags ---
    igTableGetColumnIndex :: proc () -> int ---
    igTableGetColumnName :: proc (column_n: int) -> cstring ---
    igTableGetRowIndex :: proc () -> int ---
    igTableGetSortSpecs :: proc () -> ^ImGuiTableSortSpecs ---
    igTableHeader :: proc (label: cstring) ---
    igTableHeadersRow :: proc () ---
    igTableNextColumn :: proc () -> bool ---
    igTableNextRow :: proc (row_flags: ImGuiTableRowFlags, min_row_height: f32) ---
    igTableSetBgColor :: proc (target: ImGuiTableBgTarget, color: u32, column_n: int) ---
    igTableSetColumnEnabled :: proc (column_n: int, v: bool) ---
    igTableSetColumnIndex :: proc (column_n: int) -> bool ---
    igTableSetupColumn :: proc (label: cstring, flags: ImGuiTableColumnFlags, init_width_or_weight: f32, user_id: ImGuiID) ---
    igTableSetupScrollFreeze :: proc (cols: int, rows: int) ---
    igText :: proc (fmt: cstring, #c_vararg args: ..any) ---
    igTextColored :: proc (col: ImVec4, fmt: cstring, #c_vararg args: ..any) ---
    igTextDisabled :: proc (fmt: cstring, #c_vararg args: ..any) ---
    igTextUnformatted :: proc (text: cstring, text_end: cstring) ---
    igTextWrapped :: proc (fmt: cstring, #c_vararg args: ..any) ---
    igTreeNode_Str :: proc (label: cstring) -> bool ---
    igTreeNode_StrStr :: proc (str_id: cstring, fmt: cstring, #c_vararg args: ..any) -> bool ---
    igTreeNode_Ptr :: proc (ptr_id: rawptr, fmt: cstring, #c_vararg args: ..any) -> bool ---
    igTreeNodeEx_Str :: proc (label: cstring, flags: ImGuiTreeNodeFlags) -> bool ---
    igTreeNodeEx_StrStr :: proc (str_id: cstring, flags: ImGuiTreeNodeFlags, fmt: cstring, #c_vararg args: ..any) -> bool ---
    igTreeNodeEx_Ptr :: proc (ptr_id: rawptr, flags: ImGuiTreeNodeFlags, fmt: cstring, #c_vararg args: ..any) -> bool ---
    igTreePop :: proc () ---
    igTreePush_Str :: proc (str_id: cstring) ---
    igTreePush_Ptr :: proc (ptr_id: rawptr) ---
    igUnindent :: proc (indent_w: f32) ---
    igUpdatePlatformWindows :: proc () ---
    igVSliderFloat :: proc (label: cstring, size: ImVec2, v: ^f32, v_min: f32, v_max: f32, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igVSliderInt :: proc (label: cstring, size: ImVec2, v: ^int, v_min: int, v_max: int, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igVSliderScalar :: proc (label: cstring, size: ImVec2, data_type: ImGuiDataType, p_data: rawptr, p_min: rawptr, p_max: rawptr, format: cstring, flags: ImGuiSliderFlags) -> bool ---
    igValue_Bool :: proc (prefix: cstring, b: bool) ---
    igValue_Int :: proc (prefix: cstring, v: int) ---
    igValue_Uint :: proc (prefix: cstring, v: uint) ---
    igValue_Float :: proc (prefix: cstring, v: f32, float_format: cstring) ---
    ImGui_ImplGlfw_CharCallback :: proc (window: glfw.WindowHandle, c: uint) ---
    ImGui_ImplGlfw_CursorEnterCallback :: proc (window: glfw.WindowHandle, entered: int) ---
    ImGui_ImplGlfw_CursorPosCallback :: proc (window: glfw.WindowHandle, x: f64, y: f64) ---
    ImGui_ImplGlfw_InitForOpenGL :: proc (window: glfw.WindowHandle, install_callbacks: bool) -> bool ---
    ImGui_ImplGlfw_InitForOther :: proc (window: glfw.WindowHandle, install_callbacks: bool) -> bool ---
    ImGui_ImplGlfw_InitForVulkan :: proc (window: glfw.WindowHandle, install_callbacks: bool) -> bool ---
    ImGui_ImplGlfw_InstallCallbacks :: proc (window: glfw.WindowHandle) ---
    ImGui_ImplGlfw_KeyCallback :: proc (window: glfw.WindowHandle, key: int, scancode: int, action: int, mods: int) ---
    ImGui_ImplGlfw_MonitorCallback :: proc (monitor: glfw.MonitorHandle, event: int) ---
    ImGui_ImplGlfw_MouseButtonCallback :: proc (window: glfw.WindowHandle, button: int, action: int, mods: int) ---
    ImGui_ImplGlfw_NewFrame :: proc () ---
    ImGui_ImplGlfw_RestoreCallbacks :: proc (window: glfw.WindowHandle) ---
    ImGui_ImplGlfw_ScrollCallback :: proc (window: glfw.WindowHandle, xoffset: f64, yoffset: f64) ---
    ImGui_ImplGlfw_Shutdown :: proc () ---
    ImGui_ImplGlfw_WindowFocusCallback :: proc (window: glfw.WindowHandle, focused: int) ---
    ImGui_ImplVulkanH_CreateOrResizeWindow :: proc (instance: vk.Instance, physical_device: vk.PhysicalDevice, device: vk.Device, wnd: ^ImGui_ImplVulkanH_Window, queue_family: u32, allocator: ^vk.AllocationCallbacks, w: int, h: int, min_image_count: u32) ---
    ImGui_ImplVulkanH_DestroyWindow :: proc (instance: vk.Instance, device: vk.Device, wnd: ^ImGui_ImplVulkanH_Window, allocator: ^vk.AllocationCallbacks) ---
    ImGui_ImplVulkanH_GetMinImageCountFromPresentMode :: proc (present_mode: vk.PresentModeKHR) -> int ---
    ImGui_ImplVulkanH_SelectPresentMode :: proc (physical_device: vk.PhysicalDevice, surface: vk.SurfaceKHR, request_modes: ^vk.PresentModeKHR, request_modes_count: int) -> vk.PresentModeKHR ---
    ImGui_ImplVulkanH_SelectSurfaceFormat :: proc (physical_device: vk.PhysicalDevice, surface: vk.SurfaceKHR, request_formats: ^vk.Format, request_formats_count: int, request_color_space: vk.ColorSpaceKHR) -> vk.SurfaceFormatKHR ---
    ImGui_ImplVulkanH_Window_ImGui_ImplVulkanH_Window :: proc () ---
    ImGui_ImplVulkanH_Window_destroy :: proc (self: ^ImGui_ImplVulkanH_Window) ---
    ImGui_ImplVulkan_AddTexture :: proc (sampler: vk.Sampler, image_view: vk.ImageView, image_layout: vk.ImageLayout) -> vk.DescriptorSet ---
    ImGui_ImplVulkan_CreateFontsTexture :: proc (command_buffer: vk.CommandBuffer) -> bool ---
    ImGui_ImplVulkan_DestroyFontUploadObjects :: proc () ---
    ImGui_ImplVulkan_Init :: proc (info: ^ImGui_ImplVulkan_InitInfo, render_pass: vk.RenderPass) -> bool ---
    ImGui_ImplVulkan_LoadFunctions :: proc (procedure: #type proc "c" (function_name: cstring, user_data: rawptr) -> rawptr, user_data: rawptr = nil) -> bool ---
    ImGui_ImplVulkan_NewFrame :: proc () ---
    ImGui_ImplVulkan_RemoveTexture :: proc (descriptor_set: vk.DescriptorSet) ---
    ImGui_ImplVulkan_RenderDrawData :: proc (draw_data: ^ImDrawData, command_buffer: vk.CommandBuffer, pipeline: vk.Pipeline) ---
    ImGui_ImplVulkan_SetMinImageCount :: proc (min_image_count: u32) ---
    ImGui_ImplVulkan_Shutdown :: proc () ---
}
