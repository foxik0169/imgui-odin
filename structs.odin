// This file is generated automatically.
// Keep in mind when editing - will get replaced when regenerated!

package imgui_binding

ImColor :: struct {
    Value : ImVec4,
}

ImDrawChannel :: struct {
    _CmdBuffer : ImVector(ImDrawCmd),
    _IdxBuffer : ImVector(ImDrawIdx),
}

ImDrawCmd :: struct {
    ClipRect         : ImVec4,
    TextureId        : ImTextureID,
    VtxOffset        : uint,
    IdxOffset        : uint,
    ElemCount        : uint,
    UserCallback     : ImDrawCallback,
    UserCallbackData : rawptr,
}

ImDrawCmdHeader :: struct {
    ClipRect  : ImVec4,
    TextureId : ImTextureID,
    VtxOffset : uint,
}

ImDrawData :: struct {
    Valid            : bool,
    CmdListsCount    : int,
    TotalIdxCount    : int,
    TotalVtxCount    : int,
    CmdLists         : ^^ImDrawList,
    DisplayPos       : ImVec2,
    DisplaySize      : ImVec2,
    FramebufferScale : ImVec2,
    OwnerViewport    : ^ImGuiViewport,
}

ImDrawList :: struct {
    CmdBuffer       : ImVector(ImDrawCmd),
    IdxBuffer       : ImVector(ImDrawIdx),
    VtxBuffer       : ImVector(ImDrawVert),
    Flags           : ImDrawListFlags,
    _VtxCurrentIdx  : uint,
    _Data           : ^ImDrawListSharedData,
    _OwnerName      : cstring,
    _VtxWritePtr    : ^ImDrawVert,
    _IdxWritePtr    : ^ImDrawIdx,
    _ClipRectStack  : ImVector(ImVec4),
    _TextureIdStack : ImVector(ImTextureID),
    _Path           : ImVector(ImVec2),
    _CmdHeader      : ImDrawCmdHeader,
    _Splitter       : ImDrawListSplitter,
    _FringeScale    : f32,
}

ImDrawListSplitter :: struct {
    _Current  : int,
    _Count    : int,
    _Channels : ImVector(ImDrawChannel),
}

ImDrawVert :: struct {
    pos : ImVec2,
    uv  : ImVec2,
    col : u32,
}

ImFont :: struct {
    IndexAdvanceX                     : ImVector(f32),
    FallbackAdvanceX                  : f32,
    FontSize                          : f32,
    IndexLookup                       : ImVector(ImWchar),
    Glyphs                            : ImVector(ImFontGlyph),
    FallbackGlyph                     : ^ImFontGlyph,
    ContainerAtlas                    : ^ImFontAtlas,
    ConfigData                        : ^ImFontConfig,
    ConfigDataCount                   : i16,
    FallbackChar                      : ImWchar,
    EllipsisChar                      : ImWchar,
    DotChar                           : ImWchar,
    DirtyLookupTables                 : bool,
    Scale                             : f32,
    Ascent                            : f32,
    Descent                           : f32,
    MetricsTotalSurface               : int,
    Used4kPagesMap                    : [2]ImU8,
}

ImFontAtlas :: struct {
    Flags              : ImFontAtlasFlags,
    TexID              : ImTextureID,
    TexDesiredWidth    : int,
    TexGlyphPadding    : int,
    Locked             : bool,
    TexReady           : bool,
    TexPixelsUseColors : bool,
    TexPixelsAlpha8    : ^u8,
    TexPixelsRGBA32    : ^uint,
    TexWidth           : int,
    TexHeight          : int,
    TexUvScale         : ImVec2,
    TexUvWhitePixel    : ImVec2,
    Fonts              : ImVector(^ImFont),
    CustomRects        : ImVector(ImFontAtlasCustomRect),
    ConfigData         : ImVector(ImFontConfig),
    TexUvLines         : [64]ImVec4,
    FontBuilderIO      : ^ImFontBuilderIO,
    FontBuilderFlags   : uint,
    PackIdMouseCursors : int,
    PackIdLines        : int,
}

ImFontAtlasCustomRect :: struct {
    Width         : u16,
    Height        : u16,
    X             : u16,
    Y             : u16,
    GlyphID       : uint,
    GlyphAdvanceX : f32,
    GlyphOffset   : ImVec2,
    Font          : ^ImFont,
}

ImFontConfig :: struct {
    FontData             : rawptr,
    FontDataSize         : int,
    FontDataOwnedByAtlas : bool,
    FontNo               : int,
    SizePixels           : f32,
    OversampleH          : int,
    OversampleV          : int,
    PixelSnapH           : bool,
    GlyphExtraSpacing    : ImVec2,
    GlyphOffset          : ImVec2,
    GlyphRanges          : ^ImWchar,
    GlyphMinAdvanceX     : f32,
    GlyphMaxAdvanceX     : f32,
    MergeMode            : bool,
    FontBuilderFlags     : uint,
    RasterizerMultiply   : f32,
    EllipsisChar         : ImWchar,
    Name                 : [40]i8,
    DstFont              : ^ImFont,
}

ImFontGlyph :: struct {
    Colored   : uint,
    Visible   : uint,
    Codepoint : uint,
    AdvanceX  : f32,
    X0        : f32,
    Y0        : f32,
    X1        : f32,
    Y1        : f32,
    U0        : f32,
    V0        : f32,
    U1        : f32,
    V1        : f32,
}

ImFontGlyphRangesBuilder :: struct {
    UsedChars : ImVector(u32),
}

ImGuiIO :: struct {
    ConfigFlags                       : ImGuiConfigFlags,
    BackendFlags                      : ImGuiBackendFlags,
    DisplaySize                       : ImVec2,
    DeltaTime                         : f32,
    IniSavingRate                     : f32,
    IniFilename                       : cstring,
    LogFilename                       : cstring,
    MouseDoubleClickTime              : f32,
    MouseDoubleClickMaxDist           : f32,
    MouseDragThreshold                : f32,
    KeyRepeatDelay                    : f32,
    KeyRepeatRate                     : f32,
    HoverDelayNormal                  : f32,
    HoverDelayShort                   : f32,
    UserData                          : rawptr,
    Fonts                             : ^ImFontAtlas,
    FontGlobalScale                   : f32,
    FontAllowUserScaling              : bool,
    FontDefault                       : ^ImFont,
    DisplayFramebufferScale           : ImVec2,
    ConfigDockingNoSplit              : bool,
    ConfigDockingWithShift            : bool,
    ConfigDockingAlwaysTabBar         : bool,
    ConfigDockingTransparentPayload   : bool,
    ConfigViewportsNoAutoMerge        : bool,
    ConfigViewportsNoTaskBarIcon      : bool,
    ConfigViewportsNoDecoration       : bool,
    ConfigViewportsNoDefaultParent    : bool,
    MouseDrawCursor                   : bool,
    ConfigMacOSXBehaviors             : bool,
    ConfigInputTrickleEventQueue      : bool,
    ConfigInputTextCursorBlink        : bool,
    ConfigInputTextEnterKeepActive    : bool,
    ConfigDragClickToInputText        : bool,
    ConfigWindowsResizeFromEdges      : bool,
    ConfigWindowsMoveFromTitleBarOnly : bool,
    ConfigMemoryCompactTimer          : f32,
    BackendPlatformName               : cstring,
    BackendRendererName               : cstring,
    BackendPlatformUserData           : rawptr,
    BackendRendererUserData           : rawptr,
    BackendLanguageUserData           : rawptr,
    GetClipboardTextFn                : #type proc "c" (user_data: rawptr) -> cstring,
    SetClipboardTextFn                : #type proc "c" (user_data: rawptr, text: cstring),
    ClipboardUserData                 : rawptr,
    SetPlatformImeDataFn              : #type proc "c" (viewport: ^ImGuiViewport, data: ^ImGuiPlatformImeData),
    _UnusedPadding                    : rawptr,
    WantCaptureMouse                  : bool,
    WantCaptureKeyboard               : bool,
    WantTextInput                     : bool,
    WantSetMousePos                   : bool,
    WantSaveIniSettings               : bool,
    NavActive                         : bool,
    NavVisible                        : bool,
    Framerate                         : f32,
    MetricsRenderVertices             : int,
    MetricsRenderIndices              : int,
    MetricsRenderWindows              : int,
    MetricsActiveWindows              : int,
    MetricsActiveAllocations          : int,
    MouseDelta                        : ImVec2,
    KeyMap                            : [652]int,
    KeysDown                          : [652]bool,
    NavInputs                         : [16]f32,
    MousePos                          : ImVec2,
    MouseDown                         : [5]bool,
    MouseWheel                        : f32,
    MouseWheelH                       : f32,
    MouseHoveredViewport              : ImGuiID,
    KeyCtrl                           : bool,
    KeyShift                          : bool,
    KeyAlt                            : bool,
    KeySuper                          : bool,
    KeyMods                           : ImGuiKeyChord,
    KeysData                          : [652]ImGuiKeyData,
    WantCaptureMouseUnlessPopupClose  : bool,
    MousePosPrev                      : ImVec2,
    MouseClickedPos                   : [5]ImVec2,
    MouseClickedTime                  : [5]f64,
    MouseClicked                      : [5]bool,
    MouseDoubleClicked                : [5]bool,
    MouseClickedCount                 : [5]ImU16,
    MouseClickedLastCount             : [5]ImU16,
    MouseReleased                     : [5]bool,
    MouseDownOwned                    : [5]bool,
    MouseDownOwnedUnlessPopupClose    : [5]bool,
    MouseDownDuration                 : [5]f32,
    MouseDownDurationPrev             : [5]f32,
    MouseDragMaxDistanceAbs           : [5]ImVec2,
    MouseDragMaxDistanceSqr           : [5]f32,
    PenPressure                       : f32,
    AppFocusLost                      : bool,
    AppAcceptingEvents                : bool,
    BackendUsingLegacyKeyArrays       : ImS8,
    BackendUsingLegacyNavInputArray   : bool,
    InputQueueSurrogate               : ImWchar16,
    InputQueueCharacters              : ImVector(ImWchar),
}

ImGuiInputTextCallbackData :: struct {
    EventFlag      : ImGuiInputTextFlags,
    Flags          : ImGuiInputTextFlags,
    UserData       : rawptr,
    EventChar      : ImWchar,
    EventKey       : ImGuiKey,
    Buf            : ^i8,
    BufTextLen     : int,
    BufSize        : int,
    BufDirty       : bool,
    CursorPos      : int,
    SelectionStart : int,
    SelectionEnd   : int,
}

ImGuiKeyData :: struct {
    Down             : bool,
    DownDuration     : f32,
    DownDurationPrev : f32,
    AnalogValue      : f32,
}

ImGuiListClipper :: struct {
    DisplayStart : int,
    DisplayEnd   : int,
    ItemsCount   : int,
    ItemsHeight  : f32,
    StartPosY    : f32,
    TempData     : rawptr,
}

ImGuiOnceUponAFrame :: struct {
    RefFrame : int,
}

ImGuiPayload :: struct {
    Data           : rawptr,
    DataSize       : int,
    SourceId       : ImGuiID,
    SourceParentId : ImGuiID,
    DataFrameCount : int,
    DataType       : [33]i8,
    Preview        : bool,
    Delivery       : bool,
}

ImGuiPlatformIO :: struct {
    Platform_CreateWindow       : #type proc "c" (vp: ^ImGuiViewport),
    Platform_DestroyWindow      : #type proc "c" (vp: ^ImGuiViewport),
    Platform_ShowWindow         : #type proc "c" (vp: ^ImGuiViewport),
    Platform_SetWindowPos       : #type proc "c" (vp: ^ImGuiViewport, pos: ImVec2),
    Platform_GetWindowPos       : #type proc "c" (vp: ^ImGuiViewport) -> ImVec2,
    Platform_SetWindowSize      : #type proc "c" (vp: ^ImGuiViewport, size: ImVec2),
    Platform_GetWindowSize      : #type proc "c" (vp: ^ImGuiViewport) -> ImVec2,
    Platform_SetWindowFocus     : #type proc "c" (vp: ^ImGuiViewport),
    Platform_GetWindowFocus     : #type proc "c" (vp: ^ImGuiViewport) -> bool,
    Platform_GetWindowMinimized : #type proc "c" (vp: ^ImGuiViewport) -> bool,
    Platform_SetWindowTitle     : #type proc "c" (vp: ^ImGuiViewport, str: cstring),
    Platform_SetWindowAlpha     : #type proc "c" (vp: ^ImGuiViewport, alpha: f32),
    Platform_UpdateWindow       : #type proc "c" (vp: ^ImGuiViewport),
    Platform_RenderWindow       : #type proc "c" (vp: ^ImGuiViewport, render_arg: rawptr),
    Platform_SwapBuffers        : #type proc "c" (vp: ^ImGuiViewport, render_arg: rawptr),
    Platform_GetWindowDpiScale  : #type proc "c" (vp: ^ImGuiViewport) -> f32,
    Platform_OnChangedViewport  : #type proc "c" (vp: ^ImGuiViewport),
    Platform_CreateVkSurface    : #type proc "c" (vp: ^ImGuiViewport, vk_inst: ImU64, vk_allocators: rawptr, out_vk_surface: ^ImU64) -> int,
    Renderer_CreateWindow       : #type proc "c" (vp: ^ImGuiViewport),
    Renderer_DestroyWindow      : #type proc "c" (vp: ^ImGuiViewport),
    Renderer_SetWindowSize      : #type proc "c" (vp: ^ImGuiViewport, size: ImVec2),
    Renderer_RenderWindow       : #type proc "c" (vp: ^ImGuiViewport, render_arg: rawptr),
    Renderer_SwapBuffers        : #type proc "c" (vp: ^ImGuiViewport, render_arg: rawptr),
    Monitors                    : ImVector(ImGuiPlatformMonitor),
    Viewports                   : ImVector(^ImGuiViewport),
}

ImGuiPlatformImeData :: struct {
    WantVisible     : bool,
    InputPos        : ImVec2,
    InputLineHeight : f32,
}

ImGuiPlatformMonitor :: struct {
    MainPos  : ImVec2,
    MainSize : ImVec2,
    WorkPos  : ImVec2,
    WorkSize : ImVec2,
    DpiScale : f32,
}

ImGuiSizeCallbackData :: struct {
    UserData    : rawptr,
    Pos         : ImVec2,
    CurrentSize : ImVec2,
    DesiredSize : ImVec2,
}

ImGuiStorage :: struct {
    Data : ImVector(ImGuiStoragePair),
}

ImGuiStoragePair :: struct {
    key : ImGuiID,
//        : union { int val(i; float val), /* unions are not supported yet in the generator */
}

ImGuiStyle :: struct {
    Alpha                      : f32,
    DisabledAlpha              : f32,
    WindowPadding              : ImVec2,
    WindowRounding             : f32,
    WindowBorderSize           : f32,
    WindowMinSize              : ImVec2,
    WindowTitleAlign           : ImVec2,
    WindowMenuButtonPosition   : ImGuiDir,
    ChildRounding              : f32,
    ChildBorderSize            : f32,
    PopupRounding              : f32,
    PopupBorderSize            : f32,
    FramePadding               : ImVec2,
    FrameRounding              : f32,
    FrameBorderSize            : f32,
    ItemSpacing                : ImVec2,
    ItemInnerSpacing           : ImVec2,
    CellPadding                : ImVec2,
    TouchExtraPadding          : ImVec2,
    IndentSpacing              : f32,
    ColumnsMinSpacing          : f32,
    ScrollbarSize              : f32,
    ScrollbarRounding          : f32,
    GrabMinSize                : f32,
    GrabRounding               : f32,
    LogSliderDeadzone          : f32,
    TabRounding                : f32,
    TabBorderSize              : f32,
    TabMinWidthForCloseButton  : f32,
    ColorButtonPosition        : ImGuiDir,
    ButtonTextAlign            : ImVec2,
    SelectableTextAlign        : ImVec2,
    DisplayWindowPadding       : ImVec2,
    DisplaySafeAreaPadding     : ImVec2,
    MouseCursorScale           : f32,
    AntiAliasedLines           : bool,
    AntiAliasedLinesUseTex     : bool,
    AntiAliasedFill            : bool,
    CurveTessellationTol       : f32,
    CircleTessellationMaxError : f32,
    Colors                     : [55]ImVec4,
}

ImGuiTableColumnSortSpecs :: struct {
    ColumnUserID  : ImGuiID,
    ColumnIndex   : ImS16,
    SortOrder     : ImS16,
    SortDirection : ImGuiSortDirection,
}

ImGuiTableSortSpecs :: struct {
    Specs      : ^ImGuiTableColumnSortSpecs,
    SpecsCount : int,
    SpecsDirty : bool,
}

ImGuiTextBuffer :: struct {
    Buf : ImVector(i8),
}

ImGuiTextFilter :: struct {
    InputBuf      : [256]i8,
    Filters       : ImVector(ImGuiTextRange),
    CountGrep     : int,
}

ImGuiTextRange :: struct {
    b : cstring,
    e : cstring,
}

ImGuiViewport :: struct {
    ID                    : ImGuiID,
    Flags                 : ImGuiViewportFlags,
    Pos                   : ImVec2,
    Size                  : ImVec2,
    WorkPos               : ImVec2,
    WorkSize              : ImVec2,
    DpiScale              : f32,
    ParentViewportId      : ImGuiID,
    DrawData              : ^ImDrawData,
    RendererUserData      : rawptr,
    PlatformUserData      : rawptr,
    PlatformHandle        : rawptr,
    PlatformHandleRaw     : rawptr,
    PlatformRequestMove   : bool,
    PlatformRequestResize : bool,
    PlatformRequestClose  : bool,
}

ImGuiWindowClass :: struct {
    ClassId                    : ImGuiID,
    ParentViewportId           : ImGuiID,
    ViewportFlagsOverrideSet   : ImGuiViewportFlags,
    ViewportFlagsOverrideClear : ImGuiViewportFlags,
    TabItemFlagsOverrideSet    : ImGuiTabItemFlags,
    DockNodeFlagsOverrideSet   : ImGuiDockNodeFlags,
    DockingAlwaysTabBar        : bool,
    DockingAllowUnclassed      : bool,
}

ImVec2 :: struct {
    x : f32,
    y : f32,
}

ImVec4 :: struct {
    x : f32,
    y : f32,
    z : f32,
    w : f32,
}

