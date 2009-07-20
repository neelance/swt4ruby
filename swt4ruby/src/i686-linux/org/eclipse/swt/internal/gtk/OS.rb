require "rjava"

module Org::Eclipse::Swt::Internal::Gtk
  module OSImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  class OS < OSImports.const_get :C
    include_class_members OSImports
    
    class_module.module_eval {
      
      const_set_lazy(:ATK_RELATION_LABELLED_BY) { 4 }
      const_set_lazy(:G_SIGNAL_MATCH_DATA) { 1 << 4 }
      const_set_lazy(:G_SIGNAL_MATCH_ID) { 1 << 0 }
      const_set_lazy(:GDK_2BUTTON_PRESS) { 0x5 }
      const_set_lazy(:GDK_3BUTTON_PRESS) { 0x6 }
      const_set_lazy(:GDK_ACTION_COPY) { 1 << 1 }
      const_set_lazy(:GDK_ACTION_MOVE) { 1 << 2 }
      const_set_lazy(:GDK_ACTION_LINK) { 1 << 3 }
      const_set_lazy(:GDK_Alt_L) { 0xffe9 }
      const_set_lazy(:GDK_Alt_R) { 0xffea }
      const_set_lazy(:GDK_AND) { 4 }
      const_set_lazy(:GDK_BackSpace) { 0xff08 }
      const_set_lazy(:GDK_BOTTOM_LEFT_CORNER) { 0xc }
      const_set_lazy(:GDK_BOTTOM_RIGHT_CORNER) { 0xe }
      const_set_lazy(:GDK_BOTTOM_SIDE) { 0x10 }
      const_set_lazy(:GDK_BUTTON1_MASK) { 0x100 }
      const_set_lazy(:GDK_BUTTON2_MASK) { 0x200 }
      const_set_lazy(:GDK_BUTTON3_MASK) { 0x400 }
      const_set_lazy(:GDK_BUTTON_MOTION_MASK) { 1 << 4 }
      const_set_lazy(:GDK_BUTTON1_MOTION_MASK) { 1 << 5 }
      const_set_lazy(:GDK_BUTTON2_MOTION_MASK) { 1 << 6 }
      const_set_lazy(:GDK_BUTTON3_MOTION_MASK) { 1 << 7 }
      const_set_lazy(:GDK_BUTTON_PRESS) { 0x4 }
      const_set_lazy(:GDK_BUTTON_PRESS_MASK) { 0x100 }
      const_set_lazy(:GDK_BUTTON_RELEASE) { 0x7 }
      const_set_lazy(:GDK_BUTTON_RELEASE_MASK) { 0x200 }
      const_set_lazy(:GDK_CAP_BUTT) { 0x1 }
      const_set_lazy(:GDK_CAP_PROJECTING) { 3 }
      const_set_lazy(:GDK_CAP_ROUND) { 0x2 }
      const_set_lazy(:GDK_COLORSPACE_RGB) { 0 }
      const_set_lazy(:GDK_CONFIGURE) { 13 }
      const_set_lazy(:GDK_CONTROL_MASK) { 0x4 }
      const_set_lazy(:GDK_COPY) { 0x0 }
      const_set_lazy(:GDK_CROSS) { 0x1e }
      const_set_lazy(:GDK_CROSSING_NORMAL) { 0 }
      const_set_lazy(:GDK_CROSSING_GRAB) { 1 }
      const_set_lazy(:GDK_CROSSING_UNGRAB) { 2 }
      const_set_lazy(:GDK_Break) { 0xff6b }
      const_set_lazy(:GDK_Cancel) { 0xff69 }
      const_set_lazy(:GDK_Caps_Lock) { 0xffe5 }
      const_set_lazy(:GDK_Clear) { 0xff0b }
      const_set_lazy(:GDK_Control_L) { 0xffe3 }
      const_set_lazy(:GDK_Control_R) { 0xffe4 }
      const_set_lazy(:GDK_CURRENT_TIME) { 0x0 }
      const_set_lazy(:GDK_DECOR_BORDER) { 0x2 }
      const_set_lazy(:GDK_DECOR_MAXIMIZE) { 0x40 }
      const_set_lazy(:GDK_DECOR_MENU) { 0x10 }
      const_set_lazy(:GDK_DECOR_MINIMIZE) { 0x20 }
      const_set_lazy(:GDK_DECOR_RESIZEH) { 0x4 }
      const_set_lazy(:GDK_DECOR_TITLE) { 0x8 }
      const_set_lazy(:GDK_DOUBLE_ARROW) { 0x2a }
      const_set_lazy(:GDK_Delete) { 0xffff }
      const_set_lazy(:GDK_Down) { 0xff54 }
      const_set_lazy(:GDK_ENTER_NOTIFY_MASK) { 0x1000 }
      const_set_lazy(:GDK_ENTER_NOTIFY) { 10 }
      const_set_lazy(:GDK_EVEN_ODD_RULE) { 0 }
      const_set_lazy(:GTK_EXPANDER_COLAPSED) { 0 }
      const_set_lazy(:GTK_EXPANDER_SEMI_COLLAPSED) { 1 }
      const_set_lazy(:GTK_EXPANDER_SEMI_EXPANDED) { 2 }
      const_set_lazy(:GTK_EXPANDER_EXPANDED) { 3 }
      const_set_lazy(:GDK_EXPOSE) { 2 }
      const_set_lazy(:GDK_EXPOSURE_MASK) { 0x2 }
      const_set_lazy(:GDK_End) { 0xff57 }
      const_set_lazy(:GDK_Escape) { 0xff1b }
      const_set_lazy(:GDK_F1) { 0xffbe }
      const_set_lazy(:GDK_F10) { 0xffc7 }
      const_set_lazy(:GDK_F11) { 0xffc8 }
      const_set_lazy(:GDK_F12) { 0xffc9 }
      const_set_lazy(:GDK_F13) { 0xffca }
      const_set_lazy(:GDK_F14) { 0xffcb }
      const_set_lazy(:GDK_F15) { 0xffcc }
      const_set_lazy(:GDK_F2) { 0xffbf }
      const_set_lazy(:GDK_F3) { 0xffc0 }
      const_set_lazy(:GDK_F4) { 0xffc1 }
      const_set_lazy(:GDK_F5) { 0xffc2 }
      const_set_lazy(:GDK_F6) { 0xffc3 }
      const_set_lazy(:GDK_F7) { 0xffc4 }
      const_set_lazy(:GDK_F8) { 0xffc5 }
      const_set_lazy(:GDK_F9) { 0xffc6 }
      const_set_lazy(:GDK_FLEUR) { 0x34 }
      const_set_lazy(:GDK_FOCUS_CHANGE) { 0xc }
      const_set_lazy(:GDK_FOCUS_CHANGE_MASK) { 0x4000 }
      const_set_lazy(:GDK_GC_FOREGROUND) { 0x1 }
      const_set_lazy(:GDK_GC_CLIP_MASK) { 0x80 }
      const_set_lazy(:GDK_GC_CLIP_X_ORIGIN) { 0x800 }
      const_set_lazy(:GDK_GC_CLIP_Y_ORIGIN) { 0x1000 }
      const_set_lazy(:GDK_GC_LINE_WIDTH) { 0x4000 }
      const_set_lazy(:GDK_GC_LINE_STYLE) { 0x8000 }
      const_set_lazy(:GDK_GC_CAP_STYLE) { 0x10000 }
      const_set_lazy(:GDK_GC_JOIN_STYLE) { 0x20000 }
      const_set_lazy(:GDK_GRAB_SUCCESS) { 0x0 }
      const_set_lazy(:GDK_HAND2) { 0x3c }
      const_set_lazy(:GDK_Help) { 0xff6a }
      const_set_lazy(:GDK_HINT_MIN_SIZE) { 1 << 1 }
      const_set_lazy(:GDK_Home) { 0xff50 }
      const_set_lazy(:GDK_INCLUDE_INFERIORS) { 0x1 }
      const_set_lazy(:GDK_INPUT_ONLY) { 1 }
      const_set_lazy(:GDK_INTERP_BILINEAR) { 0x2 }
      const_set_lazy(:GDK_Insert) { 0xff63 }
      const_set_lazy(:GDK_ISO_Left_Tab) { 0xfe20 }
      const_set_lazy(:GDK_JOIN_MITER) { 0x0 }
      const_set_lazy(:GDK_JOIN_ROUND) { 0x1 }
      const_set_lazy(:GDK_JOIN_BEVEL) { 0x2 }
      const_set_lazy(:GDK_KEY_PRESS) { 0x8 }
      const_set_lazy(:GDK_KEY_PRESS_MASK) { 0x400 }
      const_set_lazy(:GDK_KEY_RELEASE) { 0x9 }
      const_set_lazy(:GDK_KEY_RELEASE_MASK) { 0x800 }
      const_set_lazy(:GDK_KP_0) { 0xffb0 }
      const_set_lazy(:GDK_KP_1) { 0xffb1 }
      const_set_lazy(:GDK_KP_2) { 0xffb2 }
      const_set_lazy(:GDK_KP_3) { 0xffb3 }
      const_set_lazy(:GDK_KP_4) { 0xffb4 }
      const_set_lazy(:GDK_KP_5) { 0xffb5 }
      const_set_lazy(:GDK_KP_6) { 0xffb6 }
      const_set_lazy(:GDK_KP_7) { 0xffb7 }
      const_set_lazy(:GDK_KP_8) { 0xffb8 }
      const_set_lazy(:GDK_KP_9) { 0xffb9 }
      const_set_lazy(:GDK_KP_Add) { 0xffab }
      const_set_lazy(:GDK_KP_Decimal) { 0xffae }
      const_set_lazy(:GDK_KP_Delete) { 0xff9f }
      const_set_lazy(:GDK_KP_Divide) { 0xffaf }
      const_set_lazy(:GDK_KP_Down) { 0xff99 }
      const_set_lazy(:GDK_KP_End) { 0xff9c }
      const_set_lazy(:GDK_KP_Enter) { 0xff8d }
      const_set_lazy(:GDK_KP_Equal) { 0xffbd }
      const_set_lazy(:GDK_KP_Home) { 0xff95 }
      const_set_lazy(:GDK_KP_Insert) { 0xff9e }
      const_set_lazy(:GDK_KP_Left) { 0xff96 }
      const_set_lazy(:GDK_KP_Multiply) { 0xffaa }
      const_set_lazy(:GDK_KP_Page_Down) { 0xff9b }
      const_set_lazy(:GDK_KP_Page_Up) { 0xff9a }
      const_set_lazy(:GDK_KP_Right) { 0xff98 }
      const_set_lazy(:GDK_KP_Subtract) { 0xffad }
      const_set_lazy(:GDK_KP_Up) { 0xff97 }
      const_set_lazy(:GDK_LEAVE_NOTIFY) { 11 }
      const_set_lazy(:GDK_LEAVE_NOTIFY_MASK) { 0x2000 }
      const_set_lazy(:GDK_LEFT_PTR) { 0x44 }
      const_set_lazy(:GDK_LEFT_SIDE) { 0x46 }
      const_set_lazy(:GDK_LINE_ON_OFF_DASH) { 0x1 }
      const_set_lazy(:GDK_LINE_SOLID) { 0x0 }
      const_set_lazy(:GDK_Linefeed) { 0xff0a }
      const_set_lazy(:GDK_LSB_FIRST) { 0x0 }
      const_set_lazy(:GDK_Left) { 0xff51 }
      const_set_lazy(:GDK_Meta_L) { 0xffe7 }
      const_set_lazy(:GDK_Meta_R) { 0xffe8 }
      const_set_lazy(:GDK_MAP) { 14 }
      const_set_lazy(:GDK_MOD1_MASK) { 0x8 }
      const_set_lazy(:GDK_MOTION_NOTIFY) { 0x3 }
      const_set_lazy(:GDK_NO_EXPOSE) { 30 }
      const_set_lazy(:GDK_NONE) { 0 }
      const_set_lazy(:GDK_NOTIFY_INFERIOR) { 2 }
      const_set_lazy(:GDK_Num_Lock) { 0xff7f }
      const_set_lazy(:GDK_OVERLAP_RECTANGLE_OUT) { 0x1 }
      const_set_lazy(:GDK_PIXBUF_ALPHA_BILEVEL) { 0x0 }
      const_set_lazy(:GDK_POINTER_MOTION_HINT_MASK) { 0x8 }
      const_set_lazy(:GDK_POINTER_MOTION_MASK) { 0x4 }
      const_set_lazy(:GDK_PROPERTY_NOTIFY) { 16 }
      const_set_lazy(:GDK_Page_Down) { 0xff56 }
      const_set_lazy(:GDK_Page_Up) { 0xff55 }
      const_set_lazy(:GDK_Pause) { 0xff13 }
      const_set_lazy(:GDK_Print) { 0xff61 }
      const_set_lazy(:GDK_QUESTION_ARROW) { 0x5c }
      const_set_lazy(:GDK_RGB_DITHER_NORMAL) { 0x1 }
      const_set_lazy(:GDK_RIGHT_SIDE) { 0x60 }
      const_set_lazy(:GDK_Return) { 0xff0d }
      const_set_lazy(:GDK_Right) { 0xff53 }
      const_set_lazy(:GDK_space) { 0x20 }
      const_set_lazy(:GDK_SB_H_DOUBLE_ARROW) { 0x6c }
      const_set_lazy(:GDK_SB_UP_ARROW) { 0x72 }
      const_set_lazy(:GDK_SB_V_DOUBLE_ARROW) { 0x74 }
      const_set_lazy(:GDK_SCROLL_UP) { 0 }
      const_set_lazy(:GDK_SCROLL_DOWN) { 1 }
      const_set_lazy(:GDK_SCROLL_LEFT) { 2 }
      const_set_lazy(:GDK_SCROLL_RIGHT) { 3 }
      const_set_lazy(:GDK_SELECTION_CLEAR) { 17 }
      const_set_lazy(:GDK_SELECTION_NOTIFY) { 19 }
      const_set_lazy(:GDK_SELECTION_REQUEST) { 18 }
      const_set_lazy(:GDK_SHIFT_MASK) { 0x1 }
      const_set_lazy(:GDK_SIZING) { 0x78 }
      const_set_lazy(:GDK_STIPPLED) { 0x2 }
      const_set_lazy(:GDK_TILED) { 0x1 }
      const_set_lazy(:GDK_Shift_L) { 0xffe1 }
      const_set_lazy(:GDK_Shift_R) { 0xffe2 }
      const_set_lazy(:GDK_SCROLL) { 31 }
      const_set_lazy(:GDK_Scroll_Lock) { 0xff14 }
      const_set_lazy(:GDK_TOP_LEFT_CORNER) { 0x86 }
      const_set_lazy(:GDK_TOP_RIGHT_CORNER) { 0x88 }
      const_set_lazy(:GDK_TOP_SIDE) { 0x8a }
      const_set_lazy(:GDK_Tab) { 0xff09 }
      const_set_lazy(:GDK_Up) { 0xff52 }
      const_set_lazy(:GDK_WATCH) { 0x96 }
      const_set_lazy(:GDK_XOR) { 0x2 }
      const_set_lazy(:GDK_XTERM) { 0x98 }
      const_set_lazy(:GDK_X_CURSOR) { 0x0 }
      const_set_lazy(:GDK_VISIBILITY_FULLY_OBSCURED) { 2 }
      const_set_lazy(:GDK_VISIBILITY_NOTIFY_MASK) { 1 << 17 }
      const_set_lazy(:GDK_WINDOW_CHILD) { 2 }
      const_set_lazy(:GDK_WINDOW_STATE_ICONIFIED) { 1 << 1 }
      const_set_lazy(:GDK_WINDOW_STATE_MAXIMIZED) { 1 << 2 }
      const_set_lazy(:GDK_WINDOW_STATE_FULLSCREEN) { 1 << 4 }
      const_set_lazy(:GTK_ACCEL_VISIBLE) { 0x1 }
      const_set_lazy(:GTK_ARROW_DOWN) { 0x1 }
      const_set_lazy(:GTK_ARROW_LEFT) { 0x2 }
      const_set_lazy(:GTK_ARROW_RIGHT) { 0x3 }
      const_set_lazy(:GTK_ARROW_UP) { 0x0 }
      const_set_lazy(:GTK_CALENDAR_SHOW_HEADING) { 1 << 0 }
      const_set_lazy(:GTK_CALENDAR_SHOW_DAY_NAMES) { 1 << 1 }
      const_set_lazy(:GTK_CALENDAR_NO_MONTH_CHANGE) { 1 << 2 }
      const_set_lazy(:GTK_CALENDAR_SHOW_WEEK_NUMBERS) { 1 << 3 }
      const_set_lazy(:GTK_CALENDAR_WEEK_START_MONDAY) { 1 << 4 }
      const_set_lazy(:GTK_CAN_DEFAULT) { 0x2000 }
      const_set_lazy(:GTK_CAN_FOCUS) { 0x800 }
      const_set_lazy(:GTK_CELL_RENDERER_MODE_ACTIVATABLE) { 1 }
      const_set_lazy(:GTK_CELL_RENDERER_SELECTED) { 1 << 0 }
      const_set_lazy(:GTK_CELL_RENDERER_FOCUSED) { 1 << 4 }
      const_set_lazy(:GTK_CLIST_SHOW_TITLES) { 0x4 }
      const_set_lazy(:GTK_CORNER_TOP_LEFT) { 0x0 }
      const_set_lazy(:GTK_CORNER_TOP_RIGHT) { 0x2 }
      const_set_lazy(:GTK_DIALOG_DESTROY_WITH_PARENT) { 1 << 1 }
      const_set_lazy(:GTK_DIALOG_MODAL) { 1 << 0 }
      const_set_lazy(:GTK_DIR_TAB_FORWARD) { 0 }
      const_set_lazy(:GTK_DIR_TAB_BACKWARD) { 1 }
      const_set_lazy(:GTK_FILE_CHOOSER_ACTION_OPEN) { 0 }
      const_set_lazy(:GTK_FILE_CHOOSER_ACTION_SAVE) { 1 }
      const_set_lazy(:GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER) { 2 }
      const_set_lazy(:GTK_HAS_FOCUS) { 1 << 12 }
      const_set_lazy(:GTK_ICON_SIZE_MENU) { 1 }
      const_set_lazy(:GTK_ICON_SIZE_SMALL_TOOLBAR) { 2 }
      const_set_lazy(:GTK_ICON_SIZE_LARGE_TOOLBAR) { 3 }
      const_set_lazy(:GTK_ICON_SIZE_DIALOG) { 6 }
      const_set_lazy(:GTK_JUSTIFY_CENTER) { 0x2 }
      const_set_lazy(:GTK_JUSTIFY_LEFT) { 0x0 }
      const_set_lazy(:GTK_JUSTIFY_RIGHT) { 0x1 }
      const_set_lazy(:GTK_MAPPED) { 1 << 7 }
      const_set_lazy(:GTK_MESSAGE_INFO) { 0 }
      const_set_lazy(:GTK_MESSAGE_WARNING) { 1 }
      const_set_lazy(:GTK_MESSAGE_QUESTION) { 2 }
      const_set_lazy(:GTK_MESSAGE_ERROR) { 3 }
      const_set_lazy(:GTK_NO_WINDOW) { 1 << 5 }
      const_set_lazy(:GTK_ORIENTATION_HORIZONTAL) { 0x0 }
      const_set_lazy(:GTK_ORIENTATION_VERTICAL) { 0x1 }
      const_set_lazy(:GTK_PACK_END) { 1 }
      const_set_lazy(:GTK_PACK_START) { 0 }
      const_set_lazy(:GTK_POLICY_ALWAYS) { 0x0 }
      const_set_lazy(:GTK_POLICY_AUTOMATIC) { 0x1 }
      const_set_lazy(:GTK_POLICY_NEVER) { 0x2 }
      const_set_lazy(:GTK_POS_TOP) { 0x2 }
      const_set_lazy(:GTK_POS_BOTTOM) { 0x3 }
      const_set_lazy(:GTK_PRINT_CAPABILITY_PAGE_SET) { 1 << 0 }
      const_set_lazy(:GTK_PRINT_CAPABILITY_COPIES) { 1 << 1 }
      const_set_lazy(:GTK_PRINT_CAPABILITY_COLLATE) { 1 << 2 }
      const_set_lazy(:GTK_PRINT_CAPABILITY_REVERSE) { 1 << 3 }
      const_set_lazy(:GTK_PRINT_CAPABILITY_SCALE) { 1 << 4 }
      const_set_lazy(:GTK_PRINT_CAPABILITY_GENERATE_PDF) { 1 << 5 }
      const_set_lazy(:GTK_PRINT_CAPABILITY_GENERATE_PS) { 1 << 6 }
      const_set_lazy(:GTK_PRINT_CAPABILITY_PREVIEW) { 1 << 7 }
      const_set_lazy(:GTK_PRINT_PAGES_ALL) { 0 }
      const_set_lazy(:GTK_PRINT_PAGES_CURRENT) { 1 }
      const_set_lazy(:GTK_PRINT_PAGES_RANGES) { 2 }
      const_set_lazy(:GTK_PROGRESS_CONTINUOUS) { 0x0 }
      const_set_lazy(:GTK_PROGRESS_DISCRETE) { 0x1 }
      const_set_lazy(:GTK_PROGRESS_LEFT_TO_RIGHT) { 0x0 }
      const_set_lazy(:GTK_PROGRESS_BOTTOM_TO_TOP) { 0x2 }
      const_set_lazy(:GTK_REALIZED) { 1 << 6 }
      const_set_lazy(:GTK_RECEIVES_DEFAULT) { 1 << 20 }
      const_set_lazy(:GTK_RELIEF_NONE) { 0x2 }
      const_set_lazy(:GTK_RELIEF_NORMAL) { 0 }
      const_set_lazy(:GTK_RC_BG) { 1 << 1 }
      const_set_lazy(:GTK_RC_FG) { 1 << 0 }
      const_set_lazy(:GTK_RC_TEXT) { 1 << 2 }
      const_set_lazy(:GTK_RC_BASE) { 1 << 3 }
      const_set_lazy(:GTK_RESPONSE_APPLY) { -0xa }
      const_set_lazy(:GTK_RESPONSE_CANCEL) { -0x6 }
      const_set_lazy(:GTK_RESPONSE_OK) { -0x5 }
      const_set_lazy(:GTK_SCROLL_NONE) { 0 }
      const_set_lazy(:GTK_SCROLL_JUMP) { 1 }
      const_set_lazy(:GTK_SCROLL_STEP_BACKWARD) { 2 }
      const_set_lazy(:GTK_SCROLL_STEP_FORWARD) { 3 }
      const_set_lazy(:GTK_SCROLL_PAGE_BACKWARD) { 4 }
      const_set_lazy(:GTK_SCROLL_PAGE_FORWARD) { 5 }
      const_set_lazy(:GTK_SCROLL_STEP_UP) { 6 }
      const_set_lazy(:GTK_SCROLL_STEP_DOWN) { 7 }
      const_set_lazy(:GTK_SCROLL_PAGE_UP) { 8 }
      const_set_lazy(:GTK_SCROLL_PAGE_DOWN) { 9 }
      const_set_lazy(:GTK_SCROLL_STEP_LEFT) { 10 }
      const_set_lazy(:GTK_SCROLL_STEP_RIGHT) { 11 }
      const_set_lazy(:GTK_SCROLL_PAGE_LEFT) { 12 }
      const_set_lazy(:GTK_SCROLL_PAGE_RIGHT) { 13 }
      const_set_lazy(:GTK_SCROLL_START) { 14 }
      const_set_lazy(:GTK_SCROLL_END) { 15 }
      const_set_lazy(:GTK_SELECTION_BROWSE) { 0x2 }
      const_set_lazy(:GTK_SELECTION_MULTIPLE) { 0x3 }
      const_set_lazy(:GTK_SENSITIVE) { 0x200 }
      const_set_lazy(:GTK_SHADOW_ETCHED_IN) { 0x3 }
      const_set_lazy(:GTK_SHADOW_ETCHED_OUT) { 0x4 }
      const_set_lazy(:GTK_SHADOW_IN) { 0x1 }
      const_set_lazy(:GTK_SHADOW_NONE) { 0x0 }
      const_set_lazy(:GTK_SHADOW_OUT) { 0x2 }
      const_set_lazy(:GTK_STATE_ACTIVE) { 0x1 }
      const_set_lazy(:GTK_STATE_INSENSITIVE) { 0x4 }
      const_set_lazy(:GTK_STATE_NORMAL) { 0x0 }
      const_set_lazy(:GTK_STATE_PRELIGHT) { 0x2 }
      const_set_lazy(:GTK_STATE_SELECTED) { 0x3 }
      const_set_lazy(:GTK_TEXT_DIR_LTR) { 1 }
      const_set_lazy(:GTK_TEXT_DIR_NONE) { 0 }
      const_set_lazy(:GTK_TEXT_DIR_RTL) { 2 }
      const_set_lazy(:GTK_TEXT_WINDOW_TEXT) { 2 }
      const_set_lazy(:GTK_TOOLBAR_CHILD_BUTTON) { 0x1 }
      const_set_lazy(:GTK_TOOLBAR_CHILD_RADIOBUTTON) { 0x3 }
      const_set_lazy(:GTK_TOOLBAR_CHILD_TOGGLEBUTTON) { 0x2 }
      const_set_lazy(:GTK_TREE_VIEW_COLUMN_GROW_ONLY) { 0 }
      const_set_lazy(:GTK_TREE_VIEW_COLUMN_AUTOSIZE) { 1 }
      const_set_lazy(:GTK_TREE_VIEW_COLUMN_FIXED) { 2 }
      const_set_lazy(:GTK_TREE_VIEW_DROP_BEFORE) { 0 }
      const_set_lazy(:GTK_TREE_VIEW_DROP_AFTER) { 1 }
      const_set_lazy(:GTK_TREE_VIEW_DROP_INTO_OR_BEFORE) { 2 }
      const_set_lazy(:GTK_TREE_VIEW_DROP_INTO_OR_AFTER) { 3 }
      const_set_lazy(:GDK_UNMAP) { 15 }
      const_set_lazy(:GTK_UNIT_PIXEL) { 0 }
      const_set_lazy(:GTK_UNIT_POINTS) { 1 }
      const_set_lazy(:GTK_UNIT_INCH) { 2 }
      const_set_lazy(:GTK_UNIT_MM) { 3 }
      const_set_lazy(:GTK_VISIBILITY_FULL) { 0x2 }
      const_set_lazy(:GTK_VISIBILITY_NONE) { 0x0 }
      const_set_lazy(:GTK_VISIBLE) { 0x100 }
      const_set_lazy(:GDK_WA_X) { 1 << 2 }
      const_set_lazy(:GDK_WA_Y) { 1 << 3 }
      const_set_lazy(:GDK_WA_VISUAL) { 1 << 6 }
      const_set_lazy(:GTK_WINDOW_POPUP) { 0x1 }
      const_set_lazy(:GTK_WINDOW_TOPLEVEL) { 0x0 }
      const_set_lazy(:GDK_WINDOW_TYPE_HINT_DIALOG) { 1 }
      const_set_lazy(:GTK_WRAP_NONE) { 0 }
      const_set_lazy(:GTK_WRAP_WORD) { 2 }
      const_set_lazy(:GTK_WRAP_WORD_CHAR) { 3 }
      const_set_lazy(:G_LOG_FLAG_FATAL) { 0x2 }
      const_set_lazy(:G_LOG_FLAG_RECURSION) { 0x1 }
      const_set_lazy(:G_LOG_LEVEL_MASK) { -0x4 }
      const_set_lazy(:None) { 0 }
      const_set_lazy(:PANGO_ALIGN_LEFT) { 0 }
      const_set_lazy(:PANGO_ALIGN_CENTER) { 1 }
      const_set_lazy(:PANGO_ALIGN_RIGHT) { 2 }
      const_set_lazy(:PANGO_ATTR_FOREGROUND) { 9 }
      const_set_lazy(:PANGO_ATTR_BACKGROUND) { 10 }
      const_set_lazy(:PANGO_ATTR_UNDERLINE) { 11 }
      const_set_lazy(:PANGO_ATTR_UNDERLINE_COLOR) { 18 }
      const_set_lazy(:PANGO_DIRECTION_LTR) { 0 }
      const_set_lazy(:PANGO_DIRECTION_RTL) { 1 }
      const_set_lazy(:PANGO_SCALE) { 1024 }
      const_set_lazy(:PANGO_STRETCH_NORMAL) { 0x4 }
      const_set_lazy(:PANGO_STYLE_ITALIC) { 0x2 }
      const_set_lazy(:PANGO_STYLE_NORMAL) { 0x0 }
      const_set_lazy(:PANGO_STYLE_OBLIQUE) { 0x1 }
      const_set_lazy(:PANGO_TAB_LEFT) { 0 }
      const_set_lazy(:PANGO_UNDERLINE_NONE) { 0 }
      const_set_lazy(:PANGO_UNDERLINE_SINGLE) { 1 }
      const_set_lazy(:PANGO_UNDERLINE_DOUBLE) { 2 }
      const_set_lazy(:PANGO_UNDERLINE_LOW) { 3 }
      const_set_lazy(:PANGO_UNDERLINE_ERROR) { 4 }
      const_set_lazy(:PANGO_WEIGHT_BOLD) { 0x2bc }
      const_set_lazy(:PANGO_WEIGHT_NORMAL) { 0x190 }
      const_set_lazy(:PANGO_WRAP_WORD) { 0 }
      const_set_lazy(:PANGO_WRAP_WORD_CHAR) { 2 }
      const_set_lazy(:RTLD_LAZY) { 1 }
      const_set_lazy(:XA_CARDINAL) { 6 }
      const_set_lazy(:XA_WINDOW) { 33 }
      const_set_lazy(:Activate) { ascii("activate") }
      const_set_lazy(:Button_press_event) { ascii("button-press-event") }
      const_set_lazy(:Button_release_event) { ascii("button-release-event") }
      const_set_lazy(:Changed) { ascii("changed") }
      const_set_lazy(:Change_current_page) { ascii("change-current-page") }
      const_set_lazy(:Change_value) { ascii("change-value") }
      const_set_lazy(:Clicked) { ascii("clicked") }
      const_set_lazy(:Commit) { ascii("commit") }
      const_set_lazy(:Configure_event) { ascii("configure-event") }
      const_set_lazy(:Delete_event) { ascii("delete-event") }
      const_set_lazy(:Day_selected) { ascii("day-selected") }
      const_set_lazy(:Delete_range) { ascii("delete-range") }
      const_set_lazy(:Delete_text) { ascii("delete-text") }
      const_set_lazy(:Drag_data_delete) { ascii("drag_data_delete") }
      const_set_lazy(:Drag_data_get) { ascii("drag_data_get") }
      const_set_lazy(:Drag_data_received) { ascii("drag_data_received") }
      const_set_lazy(:Drag_drop) { ascii("drag_drop") }
      const_set_lazy(:Drag_end) { ascii("drag_end") }
      const_set_lazy(:Drag_leave) { ascii("drag_leave") }
      const_set_lazy(:Drag_motion) { ascii("drag_motion") }
      const_set_lazy(:Enter_notify_event) { ascii("enter-notify-event") }
      const_set_lazy(:Event) { ascii("event") }
      const_set_lazy(:Event_after) { ascii("event-after") }
      const_set_lazy(:Expand_collapse_cursor_row) { ascii("expand-collapse-cursor-row") }
      const_set_lazy(:Expose_event) { ascii("expose-event") }
      const_set_lazy(:Focus) { ascii("focus") }
      const_set_lazy(:Focus_in_event) { ascii("focus-in-event") }
      const_set_lazy(:Focus_out_event) { ascii("focus-out-event") }
      const_set_lazy(:Grab_focus) { ascii("grab-focus") }
      const_set_lazy(:Hide) { ascii("hide") }
      const_set_lazy(:Input) { ascii("input") }
      const_set_lazy(:Insert_text) { ascii("insert-text") }
      const_set_lazy(:Key_press_event) { ascii("key-press-event") }
      const_set_lazy(:Key_release_event) { ascii("key-release-event") }
      const_set_lazy(:Leave_notify_event) { ascii("leave-notify-event") }
      const_set_lazy(:Map) { ascii("map") }
      const_set_lazy(:Map_event) { ascii("map-event") }
      const_set_lazy(:Mnemonic_activate) { ascii("mnemonic-activate") }
      const_set_lazy(:Month_changed) { ascii("month-changed") }
      const_set_lazy(:Motion_notify_event) { ascii("motion-notify-event") }
      const_set_lazy(:Move_focus) { ascii("move-focus") }
      const_set_lazy(:Output) { ascii("output") }
      const_set_lazy(:Popup_menu) { ascii("popup-menu") }
      const_set_lazy(:Populate_popup) { ascii("populate-popup") }
      const_set_lazy(:Preedit_changed) { ascii("preedit-changed") }
      const_set_lazy(:Realize) { ascii("realize") }
      const_set_lazy(:Row_activated) { ascii("row-activated") }
      const_set_lazy(:Row_changed) { ascii("row-changed") }
      const_set_lazy(:Scroll_child) { ascii("scroll-child") }
      const_set_lazy(:Scroll_event) { ascii("scroll-event") }
      const_set_lazy(:Select) { ascii("select") }
      const_set_lazy(:Show) { ascii("show") }
      const_set_lazy(:Show_help) { ascii("show-help") }
      const_set_lazy(:Size_allocate) { ascii("size-allocate") }
      const_set_lazy(:Size_request) { ascii("size-request") }
      const_set_lazy(:Style_set) { ascii("style-set") }
      const_set_lazy(:Switch_page) { ascii("switch-page") }
      const_set_lazy(:Test_collapse_row) { ascii("test-collapse-row") }
      const_set_lazy(:Test_expand_row) { ascii("test-expand-row") }
      const_set_lazy(:Toggled) { ascii("toggled") }
      const_set_lazy(:Unmap) { ascii("unmap") }
      const_set_lazy(:Unmap_event) { ascii("unmap-event") }
      const_set_lazy(:Unrealize) { ascii("unrealize") }
      const_set_lazy(:Value_changed) { ascii("value-changed") }
      const_set_lazy(:Visibility_notify_event) { ascii("visibility-notify-event") }
      const_set_lazy(:Window_state_event) { ascii("window-state-event") }
      const_set_lazy(:Active) { ascii("active") }
      const_set_lazy(:Background_gdk) { ascii("background-gdk") }
      const_set_lazy(:Button_relief) { ascii("button-relief") }
      const_set_lazy(:Cell_background_gdk) { ascii("cell-background-gdk") }
      const_set_lazy(:Default_border) { ascii("default-border") }
      const_set_lazy(:Expander_size) { ascii("expander-size") }
      const_set_lazy(:Fixed_height_mode) { ascii("fixed-height-mode") }
      const_set_lazy(:Focus_line_width) { ascii("focus-line-width") }
      const_set_lazy(:Font_desc) { ascii("font-desc") }
      const_set_lazy(:Foreground_gdk) { ascii("foreground-gdk") }
      const_set_lazy(:Gtk_cursor_blink) { ascii("gtk-cursor-blink") }
      const_set_lazy(:Gtk_cursor_blink_time) { ascii("gtk-cursor-blink-time") }
      const_set_lazy(:Gtk_double_click_time) { ascii("gtk-double-click-time") }
      const_set_lazy(:Gtk_entry_select_on_focus) { ascii("gtk-entry-select-on-focus") }
      const_set_lazy(:Horizontal_separator) { ascii("horizontal-separator") }
      const_set_lazy(:Inconsistent) { ascii("inconsistent") }
      const_set_lazy(:Interior_focus) { ascii("interior-focus") }
      const_set_lazy(:Mode) { ascii("mode") }
      const_set_lazy(:Pixbuf) { ascii("pixbuf") }
      const_set_lazy(:Text) { ascii("text") }
      const_set_lazy(:Xalign) { ascii("xalign") }
      const_set_lazy(:Ypad) { ascii("ypad") }
      const_set_lazy(:GTK_PRINT_SETTINGS_OUTPUT_URI) { ascii("output-uri") }
      const_set_lazy(:GTK_VERSION) { _version(gtk_major_version, gtk_minor_version, gtk_micro_version) }
      const_set_lazy(:Above) { 0 }
      const_set_lazy(:Below) { 1 }
      const_set_lazy(:ButtonRelease) { 5 }
      const_set_lazy(:ClientMessage) { 33 }
      const_set_lazy(:CurrentTime) { 0 }
      const_set_lazy(:CWSibling) { 0x20 }
      const_set_lazy(:CWStackMode) { 0x40 }
      const_set_lazy(:EnterNotify) { 7 }
      const_set_lazy(:Expose) { 12 }
      const_set_lazy(:FocusChangeMask) { 1 << 21 }
      const_set_lazy(:FocusIn) { 9 }
      const_set_lazy(:FocusOut) { 10 }
      const_set_lazy(:GraphicsExpose) { 13 }
      const_set_lazy(:NoExpose) { 14 }
      const_set_lazy(:ExposureMask) { 1 << 15 }
      const_set_lazy(:NoEventMask) { 0 }
      const_set_lazy(:NotifyNormal) { 0 }
      const_set_lazy(:NotifyGrab) { 1 }
      const_set_lazy(:NotifyHint) { 1 }
      const_set_lazy(:NotifyUngrab) { 2 }
      const_set_lazy(:NotifyWhileGrabbed) { 3 }
      const_set_lazy(:NotifyAncestor) { 0 }
      const_set_lazy(:NotifyVirtual) { 1 }
      const_set_lazy(:NotifyNonlinear) { 3 }
      const_set_lazy(:NotifyNonlinearVirtual) { 4 }
      const_set_lazy(:NotifyPointer) { 5 }
      const_set_lazy(:RevertToParent) { 2 }
      const_set_lazy(:VisibilityChangeMask) { 1 << 16 }
      const_set_lazy(:VisibilityFullyObscured) { 2 }
      const_set_lazy(:VisibilityNotify) { 15 }
      const_set_lazy(:SYSTEM_TRAY_REQUEST_DOCK) { 0 }
      const_set_lazy(:PictStandardARGB32) { 0 }
      const_set_lazy(:PictStandardRGB24) { 1 }
      const_set_lazy(:PictStandardA8) { 2 }
      const_set_lazy(:PictStandardA4) { 3 }
      const_set_lazy(:PictStandardA1) { 4 }
      const_set_lazy(:PictOpSrc) { 1 }
      const_set_lazy(:PictOpOver) { 3 }
      
      const_attr_reader :IsAIX, :IsSunOS, :IsLinux, :IsHPUX, :ATK_RELATION_LABELLED_BY, :G_SIGNAL_MATCH_DATA, :G_SIGNAL_MATCH_ID, :GDK_2BUTTON_PRESS, :GDK_3BUTTON_PRESS, :GDK_ACTION_COPY, :GDK_ACTION_MOVE, :GDK_ACTION_LINK, :GDK_Alt_L, :GDK_Alt_R, :GDK_AND, :GDK_BackSpace, :GDK_BOTTOM_LEFT_CORNER, :GDK_BOTTOM_RIGHT_CORNER, :GDK_BOTTOM_SIDE, :GDK_BUTTON1_MASK, :GDK_BUTTON2_MASK, :GDK_BUTTON3_MASK, :GDK_BUTTON_MOTION_MASK, :GDK_BUTTON1_MOTION_MASK, :GDK_BUTTON2_MOTION_MASK, :GDK_BUTTON3_MOTION_MASK, :GDK_BUTTON_PRESS, :GDK_BUTTON_PRESS_MASK, :GDK_BUTTON_RELEASE, :GDK_BUTTON_RELEASE_MASK, :GDK_CAP_BUTT, :GDK_CAP_PROJECTING, :GDK_CAP_ROUND, :GDK_COLORSPACE_RGB, :GDK_CONFIGURE, :GDK_CONTROL_MASK, :GDK_COPY, :GDK_CROSS, :GDK_CROSSING_NORMAL, :GDK_CROSSING_GRAB, :GDK_CROSSING_UNGRAB, :GDK_Break, :GDK_Cancel, :GDK_Caps_Lock, :GDK_Clear, :GDK_Control_L, :GDK_Control_R, :GDK_CURRENT_TIME, :GDK_DECOR_BORDER, :GDK_DECOR_MAXIMIZE, :GDK_DECOR_MENU, :GDK_DECOR_MINIMIZE, :GDK_DECOR_RESIZEH, :GDK_DECOR_TITLE, :GDK_DOUBLE_ARROW, :GDK_Delete, :GDK_Down, :GDK_ENTER_NOTIFY_MASK, :GDK_ENTER_NOTIFY, :GDK_EVEN_ODD_RULE, :GTK_EXPANDER_COLAPSED, :GTK_EXPANDER_SEMI_COLLAPSED, :GTK_EXPANDER_SEMI_EXPANDED, :GTK_EXPANDER_EXPANDED, :GDK_EXPOSE, :GDK_EXPOSURE_MASK, :GDK_End, :GDK_Escape, :GDK_F1, :GDK_F10, :GDK_F11, :GDK_F12, :GDK_F13, :GDK_F14, :GDK_F15, :GDK_F2, :GDK_F3, :GDK_F4, :GDK_F5, :GDK_F6, :GDK_F7, :GDK_F8, :GDK_F9, :GDK_FLEUR, :GDK_FOCUS_CHANGE, :GDK_FOCUS_CHANGE_MASK, :GDK_GC_FOREGROUND, :GDK_GC_CLIP_MASK, :GDK_GC_CLIP_X_ORIGIN, :GDK_GC_CLIP_Y_ORIGIN, :GDK_GC_LINE_WIDTH, :GDK_GC_LINE_STYLE, :GDK_GC_CAP_STYLE, :GDK_GC_JOIN_STYLE, :GDK_GRAB_SUCCESS, :GDK_HAND2, :GDK_Help, :GDK_HINT_MIN_SIZE, :GDK_Home, :GDK_INCLUDE_INFERIORS, :GDK_INPUT_ONLY, :GDK_INTERP_BILINEAR, :GDK_Insert, :GDK_ISO_Left_Tab, :GDK_JOIN_MITER, :GDK_JOIN_ROUND, :GDK_JOIN_BEVEL, :GDK_KEY_PRESS, :GDK_KEY_PRESS_MASK, :GDK_KEY_RELEASE, :GDK_KEY_RELEASE_MASK, :GDK_KP_0, :GDK_KP_1, :GDK_KP_2, :GDK_KP_3, :GDK_KP_4, :GDK_KP_5, :GDK_KP_6, :GDK_KP_7, :GDK_KP_8, :GDK_KP_9, :GDK_KP_Add, :GDK_KP_Decimal, :GDK_KP_Delete, :GDK_KP_Divide, :GDK_KP_Down, :GDK_KP_End, :GDK_KP_Enter, :GDK_KP_Equal, :GDK_KP_Home, :GDK_KP_Insert, :GDK_KP_Left, :GDK_KP_Multiply, :GDK_KP_Page_Down, :GDK_KP_Page_Up, :GDK_KP_Right, :GDK_KP_Subtract, :GDK_KP_Up, :GDK_LEAVE_NOTIFY, :GDK_LEAVE_NOTIFY_MASK, :GDK_LEFT_PTR, :GDK_LEFT_SIDE, :GDK_LINE_ON_OFF_DASH, :GDK_LINE_SOLID, :GDK_Linefeed, :GDK_LSB_FIRST, :GDK_Left, :GDK_Meta_L, :GDK_Meta_R, :GDK_MAP, :GDK_MOD1_MASK, :GDK_MOTION_NOTIFY, :GDK_NO_EXPOSE, :GDK_NONE, :GDK_NOTIFY_INFERIOR, :GDK_Num_Lock, :GDK_OVERLAP_RECTANGLE_OUT, :GDK_PIXBUF_ALPHA_BILEVEL, :GDK_POINTER_MOTION_HINT_MASK, :GDK_POINTER_MOTION_MASK, :GDK_PROPERTY_NOTIFY, :GDK_Page_Down, :GDK_Page_Up, :GDK_Pause, :GDK_Print, :GDK_QUESTION_ARROW, :GDK_RGB_DITHER_NORMAL, :GDK_RIGHT_SIDE, :GDK_Return, :GDK_Right, :GDK_space, :GDK_SB_H_DOUBLE_ARROW, :GDK_SB_UP_ARROW, :GDK_SB_V_DOUBLE_ARROW, :GDK_SCROLL_UP, :GDK_SCROLL_DOWN, :GDK_SCROLL_LEFT, :GDK_SCROLL_RIGHT, :GDK_SELECTION_CLEAR, :GDK_SELECTION_NOTIFY, :GDK_SELECTION_REQUEST, :GDK_SHIFT_MASK, :GDK_SIZING, :GDK_STIPPLED, :GDK_TILED, :GDK_Shift_L, :GDK_Shift_R, :GDK_SCROLL, :GDK_Scroll_Lock, :GDK_TOP_LEFT_CORNER, :GDK_TOP_RIGHT_CORNER, :GDK_TOP_SIDE, :GDK_Tab, :GDK_Up, :GDK_WATCH, :GDK_XOR, :GDK_XTERM, :GDK_X_CURSOR, :GDK_VISIBILITY_FULLY_OBSCURED, :GDK_VISIBILITY_NOTIFY_MASK, :GDK_WINDOW_CHILD, :GDK_WINDOW_STATE_ICONIFIED, :GDK_WINDOW_STATE_MAXIMIZED, :GDK_WINDOW_STATE_FULLSCREEN, :GTK_ACCEL_VISIBLE, :GTK_ARROW_DOWN, :GTK_ARROW_LEFT, :GTK_ARROW_RIGHT, :GTK_ARROW_UP, :GTK_CALENDAR_SHOW_HEADING, :GTK_CALENDAR_SHOW_DAY_NAMES, :GTK_CALENDAR_NO_MONTH_CHANGE, :GTK_CALENDAR_SHOW_WEEK_NUMBERS, :GTK_CALENDAR_WEEK_START_MONDAY, :GTK_CAN_DEFAULT, :GTK_CAN_FOCUS, :GTK_CELL_RENDERER_MODE_ACTIVATABLE, :GTK_CELL_RENDERER_SELECTED, :GTK_CELL_RENDERER_FOCUSED, :GTK_CLIST_SHOW_TITLES, :GTK_CORNER_TOP_LEFT, :GTK_CORNER_TOP_RIGHT, :GTK_DIALOG_DESTROY_WITH_PARENT, :GTK_DIALOG_MODAL, :GTK_DIR_TAB_FORWARD, :GTK_DIR_TAB_BACKWARD, :GTK_FILE_CHOOSER_ACTION_OPEN, :GTK_FILE_CHOOSER_ACTION_SAVE, :GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER, :GTK_HAS_FOCUS, :GTK_ICON_SIZE_MENU, :GTK_ICON_SIZE_SMALL_TOOLBAR, :GTK_ICON_SIZE_LARGE_TOOLBAR, :GTK_ICON_SIZE_DIALOG, :GTK_JUSTIFY_CENTER, :GTK_JUSTIFY_LEFT, :GTK_JUSTIFY_RIGHT, :GTK_MAPPED, :GTK_MESSAGE_INFO, :GTK_MESSAGE_WARNING, :GTK_MESSAGE_QUESTION, :GTK_MESSAGE_ERROR, :GTK_NO_WINDOW, :GTK_ORIENTATION_HORIZONTAL, :GTK_ORIENTATION_VERTICAL, :GTK_PACK_END, :GTK_PACK_START, :GTK_POLICY_ALWAYS, :GTK_POLICY_AUTOMATIC, :GTK_POLICY_NEVER, :GTK_POS_TOP, :GTK_POS_BOTTOM, :GTK_PRINT_CAPABILITY_PAGE_SET, :GTK_PRINT_CAPABILITY_COPIES, :GTK_PRINT_CAPABILITY_COLLATE, :GTK_PRINT_CAPABILITY_REVERSE, :GTK_PRINT_CAPABILITY_SCALE, :GTK_PRINT_CAPABILITY_GENERATE_PDF, :GTK_PRINT_CAPABILITY_GENERATE_PS, :GTK_PRINT_CAPABILITY_PREVIEW, :GTK_PRINT_PAGES_ALL, :GTK_PRINT_PAGES_CURRENT, :GTK_PRINT_PAGES_RANGES, :GTK_PROGRESS_CONTINUOUS, :GTK_PROGRESS_DISCRETE, :GTK_PROGRESS_LEFT_TO_RIGHT, :GTK_PROGRESS_BOTTOM_TO_TOP, :GTK_REALIZED, :GTK_RECEIVES_DEFAULT, :GTK_RELIEF_NONE, :GTK_RELIEF_NORMAL, :GTK_RC_BG, :GTK_RC_FG, :GTK_RC_TEXT, :GTK_RC_BASE, :GTK_RESPONSE_APPLY, :GTK_RESPONSE_CANCEL, :GTK_RESPONSE_OK, :GTK_SCROLL_NONE, :GTK_SCROLL_JUMP, :GTK_SCROLL_STEP_BACKWARD, :GTK_SCROLL_STEP_FORWARD, :GTK_SCROLL_PAGE_BACKWARD, :GTK_SCROLL_PAGE_FORWARD, :GTK_SCROLL_STEP_UP, :GTK_SCROLL_STEP_DOWN, :GTK_SCROLL_PAGE_UP, :GTK_SCROLL_PAGE_DOWN, :GTK_SCROLL_STEP_LEFT, :GTK_SCROLL_STEP_RIGHT, :GTK_SCROLL_PAGE_LEFT, :GTK_SCROLL_PAGE_RIGHT, :GTK_SCROLL_START, :GTK_SCROLL_END, :GTK_SELECTION_BROWSE, :GTK_SELECTION_MULTIPLE, :GTK_SENSITIVE, :GTK_SHADOW_ETCHED_IN, :GTK_SHADOW_ETCHED_OUT, :GTK_SHADOW_IN, :GTK_SHADOW_NONE, :GTK_SHADOW_OUT, :GTK_STATE_ACTIVE, :GTK_STATE_INSENSITIVE, :GTK_STATE_NORMAL, :GTK_STATE_PRELIGHT, :GTK_STATE_SELECTED, :GTK_TEXT_DIR_LTR, :GTK_TEXT_DIR_NONE, :GTK_TEXT_DIR_RTL, :GTK_TEXT_WINDOW_TEXT, :GTK_TOOLBAR_CHILD_BUTTON, :GTK_TOOLBAR_CHILD_RADIOBUTTON, :GTK_TOOLBAR_CHILD_TOGGLEBUTTON, :GTK_TREE_VIEW_COLUMN_GROW_ONLY, :GTK_TREE_VIEW_COLUMN_AUTOSIZE, :GTK_TREE_VIEW_COLUMN_FIXED, :GTK_TREE_VIEW_DROP_BEFORE, :GTK_TREE_VIEW_DROP_AFTER, :GTK_TREE_VIEW_DROP_INTO_OR_BEFORE, :GTK_TREE_VIEW_DROP_INTO_OR_AFTER, :GDK_UNMAP, :GTK_UNIT_PIXEL, :GTK_UNIT_POINTS, :GTK_UNIT_INCH, :GTK_UNIT_MM, :GTK_VISIBILITY_FULL, :GTK_VISIBILITY_NONE, :GTK_VISIBLE, :GDK_WA_X, :GDK_WA_Y, :GDK_WA_VISUAL, :GTK_WINDOW_POPUP, :GTK_WINDOW_TOPLEVEL, :GDK_WINDOW_TYPE_HINT_DIALOG, :GTK_WRAP_NONE, :GTK_WRAP_WORD, :GTK_WRAP_WORD_CHAR, :G_LOG_FLAG_FATAL, :G_LOG_FLAG_RECURSION, :G_LOG_LEVEL_MASK, :None, :PANGO_ALIGN_LEFT, :PANGO_ALIGN_CENTER, :PANGO_ALIGN_RIGHT, :PANGO_ATTR_FOREGROUND, :PANGO_ATTR_BACKGROUND, :PANGO_ATTR_UNDERLINE, :PANGO_ATTR_UNDERLINE_COLOR, :PANGO_DIRECTION_LTR, :PANGO_DIRECTION_RTL, :PANGO_SCALE, :PANGO_STRETCH_NORMAL, :PANGO_STYLE_ITALIC, :PANGO_STYLE_NORMAL, :PANGO_STYLE_OBLIQUE, :PANGO_TAB_LEFT, :PANGO_UNDERLINE_NONE, :PANGO_UNDERLINE_SINGLE, :PANGO_UNDERLINE_DOUBLE, :PANGO_UNDERLINE_LOW, :PANGO_UNDERLINE_ERROR, :PANGO_WEIGHT_BOLD, :PANGO_WEIGHT_NORMAL, :PANGO_WRAP_WORD, :PANGO_WRAP_WORD_CHAR, :RTLD_LAZY, :XA_CARDINAL, :XA_WINDOW, :Activate, :Button_press_event, :Button_release_event, :Changed, :Change_current_page, :Change_value, :Clicked, :Commit, :Configure_event, :Delete_event, :Day_selected, :Delete_range, :Delete_text, :Drag_data_delete, :Drag_data_get, :Drag_data_received, :Drag_drop, :Drag_end, :Drag_leave, :Drag_motion, :Enter_notify_event, :Event, :Event_after, :Expand_collapse_cursor_row, :Expose_event, :Focus, :Focus_in_event, :Focus_out_event, :Grab_focus, :Hide, :Input, :Insert_text, :Key_press_event, :Key_release_event, :Leave_notify_event, :Map, :Map_event, :Mnemonic_activate, :Month_changed, :Motion_notify_event, :Move_focus, :Output, :Popup_menu, :Populate_popup, :Preedit_changed, :Realize, :Row_activated, :Row_changed, :Scroll_child, :Scroll_event, :Select, :Show, :Show_help, :Size_allocate, :Size_request, :Style_set, :Switch_page, :Test_collapse_row, :Test_expand_row, :Toggled, :Unmap, :Unmap_event, :Unrealize, :Value_changed, :Visibility_notify_event, :Window_state_event, :Active, :Background_gdk, :Button_relief, :Cell_background_gdk, :Default_border, :Expander_size, :Fixed_height_mode, :Focus_line_width, :Font_desc, :Foreground_gdk, :Gtk_cursor_blink, :Gtk_cursor_blink_time, :Gtk_double_click_time, :Gtk_entry_select_on_focus, :Horizontal_separator, :Inconsistent, :Interior_focus, :Mode, :Pixbuf, :Text, :Xalign, :Ypad, :GTK_PRINT_SETTINGS_OUTPUT_URI, :GTK_VERSION, :Above, :Below, :ButtonRelease, :ClientMessage, :CurrentTime, :CWSibling, :CWStackMode, :EnterNotify, :Expose, :FocusChangeMask, :FocusIn, :FocusOut, :GraphicsExpose, :NoExpose, :ExposureMask, :NoEventMask, :NotifyNormal, :NotifyGrab, :NotifyHint, :NotifyUngrab, :NotifyWhileGrabbed, :NotifyAncestor, :NotifyVirtual, :NotifyNonlinear, :NotifyNonlinearVirtual, :NotifyPointer, :RevertToParent, :VisibilityChangeMask, :VisibilityFullyObscured, :VisibilityNotify, :SYSTEM_TRAY_REQUEST_DOCK, :PictStandardARGB32, :PictStandardRGB24, :PictStandardA8, :PictStandardA4, :PictStandardA1, :PictOpSrc, :PictOpOver
      
      when_class_loaded do
        Library.load_library("swt-pi")
      end
      
      when_class_loaded do
        os_name = System.get_property("os.name")
        is_aix = false
        is_sun_os = false
        is_linux = false
        is_hpux = false
        if (os_name == "Linux")
          is_linux = true
        end
        if (os_name == "AIX")
          is_aix = true
        end
        if (os_name == "Solaris")
          is_sun_os = true
        end
        if (os_name == "SunOS")
          is_sun_os = true
        end
        if (os_name == "HP-UX")
          is_hpux = true
        end
        IsAIX = is_aix
        IsSunOS = is_sun_os
        IsLinux = is_linux
        IsHPUX = is_hpux
      end
      
      typesig { [String] }
      def ascii(name)
        length_ = name.length
        chars = CharArray.new(length_)
        name.get_chars(0, length_, chars, 0)
        buffer = Array.typed(::Java::Byte).new(length_ + 1) { 0 }
        i = 0
        while i < length_
          buffer[i] = chars[i]
          ((i += 1) - 1)
        end
        return buffer
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _version(major, minor, micro)
        return (major << 16) + (minor << 8) + micro
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GInterfaceInfo_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _ginterface_info_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GInterfaceInfo_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GPollFD_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gpoll_fd_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GPollFD_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTypeInfo_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtype_info_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTypeInfo_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTypeQuery_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtype_query_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTypeQuery_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GdkColor_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gdk_color_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GdkColor_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GdkDragContext_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gdk_drag_context_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GdkDragContext_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GdkEvent_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gdk_event_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GdkEvent_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GdkEventAny_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gdk_event_any_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GdkEventAny_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GdkEventButton_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gdk_event_button_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GdkEventButton_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GdkEventCrossing_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gdk_event_crossing_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GdkEventCrossing_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GdkEventExpose_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gdk_event_expose_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GdkEventExpose_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GdkEventFocus_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gdk_event_focus_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GdkEventFocus_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GdkEventKey_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gdk_event_key_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GdkEventKey_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GdkEventMotion_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gdk_event_motion_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GdkEventMotion_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GdkEventScroll_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gdk_event_scroll_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GdkEventScroll_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GdkEventVisibility_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gdk_event_visibility_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GdkEventVisibility_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GdkEventWindowState_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gdk_event_window_state_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GdkEventWindowState_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GdkGCValues_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gdk_gcvalues_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GdkGCValues_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GdkGeometry_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gdk_geometry_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GdkGeometry_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GdkImage_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gdk_image_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GdkImage_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GdkRectangle_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gdk_rectangle_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GdkRectangle_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GdkVisual_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gdk_visual_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GdkVisual_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GdkWindowAttr_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gdk_window_attr_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GdkWindowAttr_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GtkAdjustment_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtk_adjustment_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GtkAdjustment_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GtkAllocation_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtk_allocation_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GtkAllocation_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GtkBorder_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtk_border_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GtkBorder_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GtkColorSelectionDialog_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtk_color_selection_dialog_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GtkColorSelectionDialog_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GtkCombo_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtk_combo_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GtkCombo_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GtkFileSelection_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtk_file_selection_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GtkFileSelection_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GtkFixed_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtk_fixed_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GtkFixed_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GtkFixedClass_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtk_fixed_class_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GtkFixedClass_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GtkRequisition_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtk_requisition_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GtkRequisition_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GtkSelectionData_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtk_selection_data_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GtkSelectionData_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GtkTargetEntry_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtk_target_entry_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GtkTargetEntry_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GtkTargetPair_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtk_target_pair_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GtkTargetPair_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GtkTextIter_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtk_text_iter_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GtkTextIter_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GtkCellRendererText_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtk_cell_renderer_text_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GtkCellRendererText_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GtkCellRendererTextClass_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtk_cell_renderer_text_class_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GtkCellRendererTextClass_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GtkCellRendererPixbuf_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtk_cell_renderer_pixbuf_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GtkCellRendererPixbuf_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GtkCellRendererPixbufClass_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtk_cell_renderer_pixbuf_class_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GtkCellRendererPixbufClass_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GtkCellRendererToggle_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtk_cell_renderer_toggle_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GtkCellRendererToggle_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GtkCellRendererToggleClass_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtk_cell_renderer_toggle_class_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GtkCellRendererToggleClass_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GtkTreeIter_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _gtk_tree_iter_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GtkTreeIter_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_PangoAttribute_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _pango_attribute_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_PangoAttribute_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_PangoAttrColor_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _pango_attr_color_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_PangoAttrColor_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_PangoAttrInt_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _pango_attr_int_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_PangoAttrInt_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_PangoItem_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _pango_item_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_PangoItem_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_PangoLayoutLine_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _pango_layout_line_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_PangoLayoutLine_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_PangoLayoutRun_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _pango_layout_run_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_PangoLayoutRun_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_PangoLogAttr_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _pango_log_attr_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_PangoLogAttr_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_PangoRectangle_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _pango_rectangle_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_PangoRectangle_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_XAnyEvent_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _xany_event_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_XAnyEvent_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_XButtonEvent_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _xbutton_event_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_XButtonEvent_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_XClientMessageEvent_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _xclient_message_event_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_XClientMessageEvent_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_XEvent_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _xevent_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_XEvent_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_XCrossingEvent_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _xcrossing_event_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_XCrossingEvent_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_XExposeEvent_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _xexpose_event_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_XExposeEvent_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_XFocusChangeEvent_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _xfocus_change_event_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_XFocusChangeEvent_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_XVisibilityEvent_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _xvisibility_event_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_XVisibilityEvent_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_XWindowChanges_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _xwindow_changes_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_XWindowChanges_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_localeconv_1decimal_1point, [:pointer, :long], :int32
      typesig { [] }
      def localeconv_decimal_point
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_localeconv_1decimal_1point, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_realpath, [:pointer, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      def realpath(path, real_path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_realpath, JNI.env, self.jni_id, path.jni_id, real_path.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1HEIGHT, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _gtk_widget_height(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1HEIGHT, JNI.env, self.jni_id, widget)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1WIDTH, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _gtk_widget_width(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1WIDTH, JNI.env, self.jni_id, widget)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1WINDOW, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _gtk_widget_window(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1WINDOW, JNI.env, self.jni_id, widget)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1X, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _gtk_widget_x(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1X, JNI.env, self.jni_id, widget)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1Y, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _gtk_widget_y(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1Y, JNI.env, self.jni_id, widget)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1SCROLLED_1WINDOW_1HSCROLLBAR, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _gtk_scrolled_window_hscrollbar(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1SCROLLED_1WINDOW_1HSCROLLBAR, JNI.env, self.jni_id, widget)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1SCROLLED_1WINDOW_1VSCROLLBAR, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _gtk_scrolled_window_vscrollbar(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1SCROLLED_1WINDOW_1VSCROLLBAR, JNI.env, self.jni_id, widget)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1SCROLLED_1WINDOW_1SCROLLBAR_1SPACING, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _gtk_scrolled_window_scrollbar_spacing(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1SCROLLED_1WINDOW_1SCROLLBAR_1SPACING, JNI.env, self.jni_id, widget)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1ACCEL_1LABEL_1SET_1ACCEL_1STRING, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _gtk_accel_label_set_accel_string(acce_label, string)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1ACCEL_1LABEL_1SET_1ACCEL_1STRING, JNI.env, self.jni_id, acce_label, string)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1ACCEL_1LABEL_1GET_1ACCEL_1STRING, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _gtk_accel_label_get_accel_string(acce_label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1ACCEL_1LABEL_1GET_1ACCEL_1STRING, JNI.env, self.jni_id, acce_label)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1ENTRY_1IM_1CONTEXT, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _gtk_entry_im_context(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1ENTRY_1IM_1CONTEXT, JNI.env, self.jni_id, widget)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1TEXTVIEW_1IM_1CONTEXT, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _gtk_textview_im_context(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1TEXTVIEW_1IM_1CONTEXT, JNI.env, self.jni_id, widget)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1TOOLTIPS_1TIP_1WINDOW, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _gtk_tooltips_tip_window(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1TOOLTIPS_1TIP_1WINDOW, JNI.env, self.jni_id, widget)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1TOOLTIPS_1SET_1ACTIVE, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _gtk_tooltips_set_active(widget, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1TOOLTIPS_1SET_1ACTIVE, JNI.env, self.jni_id, widget, data)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1SET_1HEIGHT, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _gtk_widget_set_height(widget, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1SET_1HEIGHT, JNI.env, self.jni_id, widget, height)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1SET_1WIDTH, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _gtk_widget_set_width(widget, width)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1SET_1WIDTH, JNI.env, self.jni_id, widget, width)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1SET_1X, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _gtk_widget_set_x(widget, x)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1SET_1X, JNI.env, self.jni_id, widget, x)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1SET_1Y, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def _gtk_widget_set_y(widget, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1SET_1Y, JNI.env, self.jni_id, widget, y)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1REQUISITION_1WIDTH, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _gtk_widget_requisition_width(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1REQUISITION_1WIDTH, JNI.env, self.jni_id, widget)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1REQUISITION_1HEIGHT, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _gtk_widget_requisition_height(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1REQUISITION_1HEIGHT, JNI.env, self.jni_id, widget)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GDK_1EVENT_1TYPE, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _gdk_event_type(event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GDK_1EVENT_1TYPE, JNI.env, self.jni_id, event)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GDK_1EVENT_1WINDOW, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _gdk_event_window(event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GDK_1EVENT_1WINDOW, JNI.env, self.jni_id, event)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_X_1EVENT_1TYPE, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _x_event_type(xevent)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_X_1EVENT_1TYPE, JNI.env, self.jni_id, xevent)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_X_1EVENT_1WINDOW, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def _x_event_window(xevent)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_X_1EVENT_1WINDOW, JNI.env, self.jni_id, xevent)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1Call, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def ___call(proc, arg1, arg2)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1Call, JNI.env, self.jni_id, proc, arg1, arg2)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _call(proc, arg1, arg2)
        self.attr_lock.lock
        begin
          return ___call(proc, arg1, arg2)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1call, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __call(function, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1call, JNI.env, self.jni_id, function, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def call(function, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        self.attr_lock.lock
        begin
          return __call(function, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GDK_1WINDOWING_1X11, [:pointer, :long], :int8
      typesig { [] }
      def _gdk_windowing_x11
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GDK_1WINDOWING_1X11, JNI.env, self.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GDK_1PIXMAP_1XID, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def ___gdk_pixmap_xid(pixmap)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GDK_1PIXMAP_1XID, JNI.env, self.jni_id, pixmap)
      end
      
      typesig { [::Java::Int] }
      def _gdk_pixmap_xid(pixmap)
        self.attr_lock.lock
        begin
          return ___gdk_pixmap_xid(pixmap)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XCheckMaskEvent, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def ___xcheck_mask_event(display, event_mask, event_return)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XCheckMaskEvent, JNI.env, self.jni_id, display, event_mask, event_return) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _xcheck_mask_event(display, event_mask, event_return)
        self.attr_lock.lock
        begin
          return ___xcheck_mask_event(display, event_mask, event_return)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XCheckWindowEvent, [:pointer, :long, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def ___xcheck_window_event(display, window, event_mask, event_return)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XCheckWindowEvent, JNI.env, self.jni_id, display, window, event_mask, event_return) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _xcheck_window_event(display, window, event_mask, event_return)
        self.attr_lock.lock
        begin
          return ___xcheck_window_event(display, window, event_mask, event_return)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XCheckIfEvent, [:pointer, :long, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def ___xcheck_if_event(display, event_return, predicate, arg)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XCheckIfEvent, JNI.env, self.jni_id, display, event_return, predicate, arg) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _xcheck_if_event(display, event_return, predicate, arg)
        self.attr_lock.lock
        begin
          return ___xcheck_if_event(display, event_return, predicate, arg)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XDefaultScreen, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def ___xdefault_screen(display)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XDefaultScreen, JNI.env, self.jni_id, display)
      end
      
      typesig { [::Java::Int] }
      def _xdefault_screen(display)
        self.attr_lock.lock
        begin
          return ___xdefault_screen(display)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XDefaultRootWindow, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def ___xdefault_root_window(display)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XDefaultRootWindow, JNI.env, self.jni_id, display)
      end
      
      typesig { [::Java::Int] }
      def _xdefault_root_window(display)
        self.attr_lock.lock
        begin
          return ___xdefault_root_window(display)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XFlush, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def ___xflush(display)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XFlush, JNI.env, self.jni_id, display)
      end
      
      typesig { [::Java::Int] }
      def _xflush(display)
        self.attr_lock.lock
        begin
          ___xflush(display)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XFree, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def ___xfree(address)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XFree, JNI.env, self.jni_id, address)
      end
      
      typesig { [::Java::Int] }
      def _xfree(address)
        self.attr_lock.lock
        begin
          ___xfree(address)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XGetSelectionOwner, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def ___xget_selection_owner(display, selection)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XGetSelectionOwner, JNI.env, self.jni_id, display, selection)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def _xget_selection_owner(display, selection)
        self.attr_lock.lock
        begin
          return ___xget_selection_owner(display, selection)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XInternAtom, [:pointer, :long, :int32, :long, :int8], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Boolean] }
      def ___xintern_atom(display, name, if_exists)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XInternAtom, JNI.env, self.jni_id, display, name.jni_id, if_exists ? 1 : 0)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Boolean] }
      def _xintern_atom(display, name, if_exists)
        self.attr_lock.lock
        begin
          return ___xintern_atom(display, name, if_exists)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XQueryPointer, [:pointer, :long, :int32, :int32, :long, :long, :long, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def ___xquery_pointer(display, w, root_return, child_return, root_x_return, root_y_return, win_x_return, win_y_return, mask_return)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XQueryPointer, JNI.env, self.jni_id, display, w, root_return.jni_id, child_return.jni_id, root_x_return.jni_id, root_y_return.jni_id, win_x_return.jni_id, win_y_return.jni_id, mask_return.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _xquery_pointer(display, w, root_return, child_return, root_x_return, root_y_return, win_x_return, win_y_return, mask_return)
        self.attr_lock.lock
        begin
          return ___xquery_pointer(display, w, root_return, child_return, root_x_return, root_y_return, win_x_return, win_y_return, mask_return)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XQueryTree, [:pointer, :long, :int32, :int32, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def ___xquery_tree(display, w, root_return, parent_return, children_return, nchildren_return)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XQueryTree, JNI.env, self.jni_id, display, w, root_return.jni_id, parent_return.jni_id, children_return.jni_id, nchildren_return.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _xquery_tree(display, w, root_return, parent_return, children_return, nchildren_return)
        self.attr_lock.lock
        begin
          return ___xquery_tree(display, w, root_return, parent_return, children_return, nchildren_return)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XKeysymToKeycode, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def ___xkeysym_to_keycode(display, keysym)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XKeysymToKeycode, JNI.env, self.jni_id, display, keysym)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def _xkeysym_to_keycode(display, keysym)
        self.attr_lock.lock
        begin
          return ___xkeysym_to_keycode(display, keysym)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XListProperties, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def ___xlist_properties(display, window, num_prop_return)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XListProperties, JNI.env, self.jni_id, display, window, num_prop_return.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _xlist_properties(display, window, num_prop_return)
        self.attr_lock.lock
        begin
          return ___xlist_properties(display, window, num_prop_return)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XReconfigureWMWindow, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, XWindowChanges] }
      def ___xreconfigure_wmwindow(display, window, screen, value_mask, values)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XReconfigureWMWindow, JNI.env, self.jni_id, display, window, screen, value_mask, values.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, XWindowChanges] }
      def _xreconfigure_wmwindow(display, window, screen, value_mask, values)
        self.attr_lock.lock
        begin
          return ___xreconfigure_wmwindow(display, window, screen, value_mask, values)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XSendEvent, [:pointer, :long, :int32, :int32, :int8, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int] }
      def ___xsend_event(display, w, propogate, event_mask, event_send)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XSendEvent, JNI.env, self.jni_id, display, w, propogate ? 1 : 0, event_mask, event_send)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int] }
      def _xsend_event(display, w, propogate, event_mask, event_send)
        self.attr_lock.lock
        begin
          return ___xsend_event(display, w, propogate, event_mask, event_send)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XSetIOErrorHandler, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def ___xset_ioerror_handler(handler)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XSetIOErrorHandler, JNI.env, self.jni_id, handler)
      end
      
      typesig { [::Java::Int] }
      def _xset_ioerror_handler(handler)
        self.attr_lock.lock
        begin
          return ___xset_ioerror_handler(handler)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XSetErrorHandler, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def ___xset_error_handler(handler)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XSetErrorHandler, JNI.env, self.jni_id, handler)
      end
      
      typesig { [::Java::Int] }
      def _xset_error_handler(handler)
        self.attr_lock.lock
        begin
          return ___xset_error_handler(handler)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XSetInputFocus, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def ___xset_input_focus(display, window, revert, time)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XSetInputFocus, JNI.env, self.jni_id, display, window, revert, time)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _xset_input_focus(display, window, revert, time)
        self.attr_lock.lock
        begin
          return ___xset_input_focus(display, window, revert, time)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XSynchronize, [:pointer, :long, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean] }
      def ___xsynchronize(display, onoff)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XSynchronize, JNI.env, self.jni_id, display, onoff ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def _xsynchronize(display, onoff)
        self.attr_lock.lock
        begin
          return ___xsynchronize(display, onoff)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XTestFakeButtonEvent, [:pointer, :long, :int32, :int32, :int8, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int] }
      def ___xtest_fake_button_event(display, button, is_press, delay)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XTestFakeButtonEvent, JNI.env, self.jni_id, display, button, is_press ? 1 : 0, delay)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int] }
      def _xtest_fake_button_event(display, button, is_press, delay)
        self.attr_lock.lock
        begin
          ___xtest_fake_button_event(display, button, is_press, delay)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XTestFakeKeyEvent, [:pointer, :long, :int32, :int32, :int8, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int] }
      def ___xtest_fake_key_event(display, keycode, is_press, delay)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XTestFakeKeyEvent, JNI.env, self.jni_id, display, keycode, is_press ? 1 : 0, delay)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int] }
      def _xtest_fake_key_event(display, keycode, is_press, delay)
        self.attr_lock.lock
        begin
          ___xtest_fake_key_event(display, keycode, is_press, delay)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XTestFakeMotionEvent, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def ___xtest_fake_motion_event(display, screen_number, x, y, delay)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XTestFakeMotionEvent, JNI.env, self.jni_id, display, screen_number, x, y, delay)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _xtest_fake_motion_event(display, screen_number, x, y, delay)
        self.attr_lock.lock
        begin
          ___xtest_fake_motion_event(display, screen_number, x, y, delay)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XWarpPointer, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def ___xwarp_pointer(display, source_window, dest_window, source_x, source_y, source_width, source_height, dest_x, dest_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XWarpPointer, JNI.env, self.jni_id, display, source_window, dest_window, source_x, source_y, source_width, source_height, dest_x, dest_y)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _xwarp_pointer(display, source_window, dest_window, source_x, source_y, source_width, source_height, dest_x, dest_y)
        self.attr_lock.lock
        begin
          return ___xwarp_pointer(display, source_window, dest_window, source_x, source_y, source_width, source_height, dest_x, dest_y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1atom_1to_1xatom, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_x11_atom_to_xatom(atom)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1atom_1to_1xatom, JNI.env, self.jni_id, atom)
      end
      
      typesig { [::Java::Int] }
      def gdk_x11_atom_to_xatom(atom)
        self.attr_lock.lock
        begin
          return __gdk_x11_atom_to_xatom(atom)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1colormap_1get_1xcolormap, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_x11_colormap_get_xcolormap(colormap)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1colormap_1get_1xcolormap, JNI.env, self.jni_id, colormap)
      end
      
      typesig { [::Java::Int] }
      def gdk_x11_colormap_get_xcolormap(colormap)
        self.attr_lock.lock
        begin
          return __gdk_x11_colormap_get_xcolormap(colormap)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1drawable_1get_1xdisplay, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_x11_drawable_get_xdisplay(drawable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1drawable_1get_1xdisplay, JNI.env, self.jni_id, drawable)
      end
      
      typesig { [::Java::Int] }
      def gdk_x11_drawable_get_xdisplay(drawable)
        self.attr_lock.lock
        begin
          return __gdk_x11_drawable_get_xdisplay(drawable)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1drawable_1get_1xid, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_x11_drawable_get_xid(drawable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1drawable_1get_1xid, JNI.env, self.jni_id, drawable)
      end
      
      typesig { [::Java::Int] }
      def gdk_x11_drawable_get_xid(drawable)
        self.attr_lock.lock
        begin
          return __gdk_x11_drawable_get_xid(drawable)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1screen_1lookup_1visual, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __gdk_x11_screen_lookup_visual(screen, xvisualid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1screen_1lookup_1visual, JNI.env, self.jni_id, screen, xvisualid)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gdk_x11_screen_lookup_visual(screen, xvisualid)
        self.attr_lock.lock
        begin
          return __gdk_x11_screen_lookup_visual(screen, xvisualid)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1screen_1get_1window_1manager_1name, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_x11_screen_get_window_manager_name(screen)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1screen_1get_1window_1manager_1name, JNI.env, self.jni_id, screen)
      end
      
      typesig { [::Java::Int] }
      def gdk_x11_screen_get_window_manager_name(screen)
        self.attr_lock.lock
        begin
          return __gdk_x11_screen_get_window_manager_name(screen)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1visual_1get_1xvisual, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_x11_visual_get_xvisual(visual)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1visual_1get_1xvisual, JNI.env, self.jni_id, visual)
      end
      
      typesig { [::Java::Int] }
      def gdk_x11_visual_get_xvisual(visual)
        self.attr_lock.lock
        begin
          return __gdk_x11_visual_get_xvisual(visual)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixmap_1foreign_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_pixmap_foreign_new(anid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixmap_1foreign_1new, JNI.env, self.jni_id, anid)
      end
      
      typesig { [::Java::Int] }
      def gdk_pixmap_foreign_new(anid)
        self.attr_lock.lock
        begin
          return __gdk_pixmap_foreign_new(anid)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1lookup, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_window_lookup(xid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1lookup, JNI.env, self.jni_id, xid)
      end
      
      typesig { [::Java::Int] }
      def gdk_window_lookup(xid)
        self.attr_lock.lock
        begin
          return __gdk_window_lookup(xid)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1add_1filter, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_window_add_filter(window, function, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1add_1filter, JNI.env, self.jni_id, window, function, data)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_window_add_filter(window, function, data)
        self.attr_lock.lock
        begin
          __gdk_window_add_filter(window, function, data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1remove_1filter, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_window_remove_filter(window, function, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1remove_1filter, JNI.env, self.jni_id, window, function, data)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_window_remove_filter(window, function, data)
        self.attr_lock.lock
        begin
          __gdk_window_remove_filter(window, function, data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{XButtonEvent.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, XButtonEvent, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{XButtonEvent.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest, src.jni_id, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{XClientMessageEvent.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, XClientMessageEvent, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{XClientMessageEvent.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest, src.jni_id, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{XCrossingEvent.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, XCrossingEvent, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{XCrossingEvent.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest, src.jni_id, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{XExposeEvent.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, XExposeEvent, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{XExposeEvent.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest, src.jni_id, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{XFocusChangeEvent.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, XFocusChangeEvent, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{XFocusChangeEvent.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest, src.jni_id, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{XButtonEvent.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [XButtonEvent, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{XButtonEvent.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{XCrossingEvent.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [XCrossingEvent, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{XCrossingEvent.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{XExposeEvent.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [XExposeEvent, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{XExposeEvent.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{XFocusChangeEvent.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [XFocusChangeEvent, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{XFocusChangeEvent.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{XVisibilityEvent.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [XVisibilityEvent, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{XVisibilityEvent.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_XRenderPictureAttributes_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _xrender_picture_attributes_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_XRenderPictureAttributes_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XRenderQueryExtension, [:pointer, :long, :int32, :long, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def ___xrender_query_extension(display, event_basep, error_basep)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XRenderQueryExtension, JNI.env, self.jni_id, display, event_basep.jni_id, error_basep.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _xrender_query_extension(display, event_basep, error_basep)
        self.attr_lock.lock
        begin
          return ___xrender_query_extension(display, event_basep, error_basep)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XRenderQueryVersion, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def ___xrender_query_version(display, major_versionp, minor_versionp)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XRenderQueryVersion, JNI.env, self.jni_id, display, major_versionp.jni_id, minor_versionp.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def _xrender_query_version(display, major_versionp, minor_versionp)
        self.attr_lock.lock
        begin
          return ___xrender_query_version(display, major_versionp, minor_versionp)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XRenderCreatePicture, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, XRenderPictureAttributes] }
      def ___xrender_create_picture(display, drawable, format, valuemask, attributes)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XRenderCreatePicture, JNI.env, self.jni_id, display, drawable, format, valuemask, attributes.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, XRenderPictureAttributes] }
      def _xrender_create_picture(display, drawable, format, valuemask, attributes)
        self.attr_lock.lock
        begin
          return ___xrender_create_picture(display, drawable, format, valuemask, attributes)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XRenderSetPictureClipRectangles, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Short), ::Java::Int] }
      def ___xrender_set_picture_clip_rectangles(display, picture, x_origin, y_origin, rects, count)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XRenderSetPictureClipRectangles, JNI.env, self.jni_id, display, picture, x_origin, y_origin, rects.jni_id, count)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Short), ::Java::Int] }
      def _xrender_set_picture_clip_rectangles(display, picture, x_origin, y_origin, rects, count)
        self.attr_lock.lock
        begin
          ___xrender_set_picture_clip_rectangles(display, picture, x_origin, y_origin, rects, count)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XRenderSetPictureTransform, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def ___xrender_set_picture_transform(display, picture, transform)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XRenderSetPictureTransform, JNI.env, self.jni_id, display, picture, transform.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def _xrender_set_picture_transform(display, picture, transform)
        self.attr_lock.lock
        begin
          ___xrender_set_picture_transform(display, picture, transform)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XRenderFreePicture, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def ___xrender_free_picture(display, picture)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XRenderFreePicture, JNI.env, self.jni_id, display, picture)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def _xrender_free_picture(display, picture)
        self.attr_lock.lock
        begin
          ___xrender_free_picture(display, picture)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XRenderComposite, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def ___xrender_composite(display, op, src, mask, dst, src_x, src_y, mask_x, mask_y, dst_x, dst_y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XRenderComposite, JNI.env, self.jni_id, display, op, src, mask, dst, src_x, src_y, mask_x, mask_y, dst_x, dst_y, width, height)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _xrender_composite(display, op, src, mask, dst, src_x, src_y, mask_x, mask_y, dst_x, dst_y, width, height)
        self.attr_lock.lock
        begin
          ___xrender_composite(display, op, src, mask, dst, src_x, src_y, mask_x, mask_y, dst_x, dst_y, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XRenderFindStandardFormat, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def ___xrender_find_standard_format(display, format)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XRenderFindStandardFormat, JNI.env, self.jni_id, display, format)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def _xrender_find_standard_format(display, format)
        self.attr_lock.lock
        begin
          return ___xrender_find_standard_format(display, format)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XRenderFindVisualFormat, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def ___xrender_find_visual_format(display, visual)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XRenderFindVisualFormat, JNI.env, self.jni_id, display, visual)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def _xrender_find_visual_format(display, visual)
        self.attr_lock.lock
        begin
          return ___xrender_find_visual_format(display, visual)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_Call, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _call(func, arg0, arg1, arg2)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_Call, JNI.env, self.jni_id, func, arg0, arg1, arg2)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GDK_1DISPLAY, [:pointer, :long], :int32
      typesig { [] }
      def ___gdk_display
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GDK_1DISPLAY, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def _gdk_display
        self.attr_lock.lock
        begin
          return ___gdk_display
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GDK_1ROOT_1PARENT, [:pointer, :long], :int32
      typesig { [] }
      def ___gdk_root_parent
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GDK_1ROOT_1PARENT, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def _gdk_root_parent
        self.attr_lock.lock
        begin
          return ___gdk_root_parent
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GDK_1TYPE_1COLOR, [:pointer, :long], :int32
      typesig { [] }
      def ___gdk_type_color
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GDK_1TYPE_1COLOR, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def _gdk_type_color
        self.attr_lock.lock
        begin
          return ___gdk_type_color
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GDK_1TYPE_1PIXBUF, [:pointer, :long], :int32
      typesig { [] }
      def ___gdk_type_pixbuf
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GDK_1TYPE_1PIXBUF, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def _gdk_type_pixbuf
        self.attr_lock.lock
        begin
          return ___gdk_type_pixbuf
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1BUTTON, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def ___gtk_is_button(obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1BUTTON, JNI.env, self.jni_id, obj) != 0
      end
      
      typesig { [::Java::Int] }
      def _gtk_is_button(obj)
        self.attr_lock.lock
        begin
          return ___gtk_is_button(obj)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1WINDOW, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def ___gtk_is_window(obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1WINDOW, JNI.env, self.jni_id, obj) != 0
      end
      
      typesig { [::Java::Int] }
      def _gtk_is_window(obj)
        self.attr_lock.lock
        begin
          return ___gtk_is_window(obj)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1CELL_1RENDERER_1PIXBUF, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def ___gtk_is_cell_renderer_pixbuf(obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1CELL_1RENDERER_1PIXBUF, JNI.env, self.jni_id, obj) != 0
      end
      
      typesig { [::Java::Int] }
      def _gtk_is_cell_renderer_pixbuf(obj)
        self.attr_lock.lock
        begin
          return ___gtk_is_cell_renderer_pixbuf(obj)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1CELL_1RENDERER_1TEXT, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def ___gtk_is_cell_renderer_text(obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1CELL_1RENDERER_1TEXT, JNI.env, self.jni_id, obj) != 0
      end
      
      typesig { [::Java::Int] }
      def _gtk_is_cell_renderer_text(obj)
        self.attr_lock.lock
        begin
          return ___gtk_is_cell_renderer_text(obj)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1CELL_1RENDERER_1TOGGLE, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def ___gtk_is_cell_renderer_toggle(obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1CELL_1RENDERER_1TOGGLE, JNI.env, self.jni_id, obj) != 0
      end
      
      typesig { [::Java::Int] }
      def _gtk_is_cell_renderer_toggle(obj)
        self.attr_lock.lock
        begin
          return ___gtk_is_cell_renderer_toggle(obj)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1CONTAINER, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def ___gtk_is_container(obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1CONTAINER, JNI.env, self.jni_id, obj) != 0
      end
      
      typesig { [::Java::Int] }
      def _gtk_is_container(obj)
        self.attr_lock.lock
        begin
          return ___gtk_is_container(obj)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1IMAGE_1MENU_1ITEM, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def ___gtk_is_image_menu_item(obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1IMAGE_1MENU_1ITEM, JNI.env, self.jni_id, obj) != 0
      end
      
      typesig { [::Java::Int] }
      def _gtk_is_image_menu_item(obj)
        self.attr_lock.lock
        begin
          return ___gtk_is_image_menu_item(obj)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1MENU_1ITEM, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def ___gtk_is_menu_item(obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1MENU_1ITEM, JNI.env, self.jni_id, obj) != 0
      end
      
      typesig { [::Java::Int] }
      def _gtk_is_menu_item(obj)
        self.attr_lock.lock
        begin
          return ___gtk_is_menu_item(obj)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1PLUG, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def ___gtk_is_plug(obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1PLUG, JNI.env, self.jni_id, obj) != 0
      end
      
      typesig { [::Java::Int] }
      def _gtk_is_plug(obj)
        self.attr_lock.lock
        begin
          return ___gtk_is_plug(obj)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1STOCK_1CANCEL, [:pointer, :long], :int32
      typesig { [] }
      def ___gtk_stock_cancel
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1STOCK_1CANCEL, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def _gtk_stock_cancel
        self.attr_lock.lock
        begin
          return ___gtk_stock_cancel
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1STOCK_1OK, [:pointer, :long], :int32
      typesig { [] }
      def ___gtk_stock_ok
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1STOCK_1OK, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def _gtk_stock_ok
        self.attr_lock.lock
        begin
          return ___gtk_stock_ok
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1CELL_1RENDERER_1TEXT, [:pointer, :long], :int32
      typesig { [] }
      def ___gtk_type_cell_renderer_text
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1CELL_1RENDERER_1TEXT, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def _gtk_type_cell_renderer_text
        self.attr_lock.lock
        begin
          return ___gtk_type_cell_renderer_text
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1CELL_1RENDERER_1PIXBUF, [:pointer, :long], :int32
      typesig { [] }
      def ___gtk_type_cell_renderer_pixbuf
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1CELL_1RENDERER_1PIXBUF, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def _gtk_type_cell_renderer_pixbuf
        self.attr_lock.lock
        begin
          return ___gtk_type_cell_renderer_pixbuf
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1CELL_1RENDERER_1TOGGLE, [:pointer, :long], :int32
      typesig { [] }
      def ___gtk_type_cell_renderer_toggle
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1CELL_1RENDERER_1TOGGLE, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def _gtk_type_cell_renderer_toggle
        self.attr_lock.lock
        begin
          return ___gtk_type_cell_renderer_toggle
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1FIXED, [:pointer, :long], :int32
      typesig { [] }
      def ___gtk_type_fixed
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1FIXED, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def _gtk_type_fixed
        self.attr_lock.lock
        begin
          return ___gtk_type_fixed
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1MENU, [:pointer, :long], :int32
      typesig { [] }
      def ___gtk_type_menu
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1MENU, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def _gtk_type_menu
        self.attr_lock.lock
        begin
          return ___gtk_type_menu
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1WIDGET, [:pointer, :long], :int32
      typesig { [] }
      def ___gtk_type_widget
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1WIDGET, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def _gtk_type_widget
        self.attr_lock.lock
        begin
          return ___gtk_type_widget
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1FLAGS, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def ___gtk_widget_flags(wid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1FLAGS, JNI.env, self.jni_id, wid)
      end
      
      typesig { [::Java::Int] }
      def _gtk_widget_flags(wid)
        self.attr_lock.lock
        begin
          return ___gtk_widget_flags(wid)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1STATE, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def ___gtk_widget_state(wid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1STATE, JNI.env, self.jni_id, wid)
      end
      
      typesig { [::Java::Int] }
      def _gtk_widget_state(wid)
        self.attr_lock.lock
        begin
          return ___gtk_widget_state(wid)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1HAS_1DEFAULT, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def ___gtk_widget_has_default(wid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1HAS_1DEFAULT, JNI.env, self.jni_id, wid) != 0
      end
      
      typesig { [::Java::Int] }
      def _gtk_widget_has_default(wid)
        self.attr_lock.lock
        begin
          return ___gtk_widget_has_default(wid)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1HAS_1FOCUS, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def ___gtk_widget_has_focus(wid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1HAS_1FOCUS, JNI.env, self.jni_id, wid) != 0
      end
      
      typesig { [::Java::Int] }
      def _gtk_widget_has_focus(wid)
        self.attr_lock.lock
        begin
          return ___gtk_widget_has_focus(wid)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1IS_1SENSITIVE, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def ___gtk_widget_is_sensitive(wid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1IS_1SENSITIVE, JNI.env, self.jni_id, wid) != 0
      end
      
      typesig { [::Java::Int] }
      def _gtk_widget_is_sensitive(wid)
        self.attr_lock.lock
        begin
          return ___gtk_widget_is_sensitive(wid)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1MAPPED, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def ___gtk_widget_mapped(wid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1MAPPED, JNI.env, self.jni_id, wid) != 0
      end
      
      typesig { [::Java::Int] }
      def _gtk_widget_mapped(wid)
        self.attr_lock.lock
        begin
          return ___gtk_widget_mapped(wid)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1SENSITIVE, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def ___gtk_widget_sensitive(wid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1SENSITIVE, JNI.env, self.jni_id, wid) != 0
      end
      
      typesig { [::Java::Int] }
      def _gtk_widget_sensitive(wid)
        self.attr_lock.lock
        begin
          return ___gtk_widget_sensitive(wid)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1SET_1FLAGS, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def ___gtk_widget_set_flags(wid, flag)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1SET_1FLAGS, JNI.env, self.jni_id, wid, flag)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def _gtk_widget_set_flags(wid, flag)
        self.attr_lock.lock
        begin
          ___gtk_widget_set_flags(wid, flag)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1UNSET_1FLAGS, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def ___gtk_widget_unset_flags(wid, flag)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1UNSET_1FLAGS, JNI.env, self.jni_id, wid, flag)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def _gtk_widget_unset_flags(wid, flag)
        self.attr_lock.lock
        begin
          ___gtk_widget_unset_flags(wid, flag)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1VISIBLE, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def ___gtk_widget_visible(wid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1VISIBLE, JNI.env, self.jni_id, wid) != 0
      end
      
      typesig { [::Java::Int] }
      def _gtk_widget_visible(wid)
        self.attr_lock.lock
        begin
          return ___gtk_widget_visible(wid)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1G_1OBJECT_1CLASS, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def ___g_object_class(klass)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1G_1OBJECT_1CLASS, JNI.env, self.jni_id, klass)
      end
      
      typesig { [::Java::Int] }
      def _g_object_class(klass)
        self.attr_lock.lock
        begin
          return ___g_object_class(klass)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1G_1OBJECT_1GET_1CLASS, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def ___g_object_get_class(object)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1G_1OBJECT_1GET_1CLASS, JNI.env, self.jni_id, object)
      end
      
      typesig { [::Java::Int] }
      def _g_object_get_class(object)
        self.attr_lock.lock
        begin
          return ___g_object_get_class(object)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1G_1OBJECT_1TYPE_1NAME, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def ___g_object_type_name(object)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1G_1OBJECT_1TYPE_1NAME, JNI.env, self.jni_id, object)
      end
      
      typesig { [::Java::Int] }
      def _g_object_type_name(object)
        self.attr_lock.lock
        begin
          return ___g_object_type_name(object)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1G_1TYPE_1BOOLEAN, [:pointer, :long], :int32
      typesig { [] }
      def ___g_type_boolean
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1G_1TYPE_1BOOLEAN, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def _g_type_boolean
        self.attr_lock.lock
        begin
          return ___g_type_boolean
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1G_1TYPE_1INT, [:pointer, :long], :int32
      typesig { [] }
      def ___g_type_int
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1G_1TYPE_1INT, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def _g_type_int
        self.attr_lock.lock
        begin
          return ___g_type_int
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1G_1OBJECT_1TYPE, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def ___g_object_type(instance)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1G_1OBJECT_1TYPE, JNI.env, self.jni_id, instance)
      end
      
      typesig { [::Java::Int] }
      def _g_object_type(instance)
        self.attr_lock.lock
        begin
          return ___g_object_type(instance)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1G_1TYPE_1STRING, [:pointer, :long], :int32
      typesig { [] }
      def ___g_type_string
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1G_1TYPE_1STRING, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def _g_type_string
        self.attr_lock.lock
        begin
          return ___g_type_string
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1PANGO_1PIXELS, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def ___pango_pixels(dimension)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1PANGO_1PIXELS, JNI.env, self.jni_id, dimension)
      end
      
      typesig { [::Java::Int] }
      def _pango_pixels(dimension)
        self.attr_lock.lock
        begin
          return ___pango_pixels(dimension)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1PANGO_1TYPE_1FONT_1DESCRIPTION, [:pointer, :long], :int32
      typesig { [] }
      def ___pango_type_font_description
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1PANGO_1TYPE_1FONT_1DESCRIPTION, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def _pango_type_font_description
        self.attr_lock.lock
        begin
          return ___pango_type_font_description
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1dlclose, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __dlclose(handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1dlclose, JNI.env, self.jni_id, handle)
      end
      
      typesig { [::Java::Int] }
      def dlclose(handle)
        self.attr_lock.lock
        begin
          return __dlclose(handle)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1dlopen, [:pointer, :long, :long, :int32], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      def __dlopen(filename, flag)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1dlopen, JNI.env, self.jni_id, filename.jni_id, flag)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      def dlopen(filename, flag)
        self.attr_lock.lock
        begin
          return __dlopen(filename, flag)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1dlsym, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __dlsym(handle, symbol)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1dlsym, JNI.env, self.jni_id, handle, symbol.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def dlsym(handle, symbol)
        self.attr_lock.lock
        begin
          return __dlsym(handle, symbol)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1add_1emission_1hook, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __g_signal_add_emission_hook(signal_id, detail, hook_func, hook_data, data_destroy)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1add_1emission_1hook, JNI.env, self.jni_id, signal_id, detail, hook_func, hook_data, data_destroy)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def g_signal_add_emission_hook(signal_id, detail, hook_func, hook_data, data_destroy)
        self.attr_lock.lock
        begin
          return __g_signal_add_emission_hook(signal_id, detail, hook_func, hook_data, data_destroy)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1remove_1emission_1hook, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __g_signal_remove_emission_hook(signal_id, hook_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1remove_1emission_1hook, JNI.env, self.jni_id, signal_id, hook_id)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def g_signal_remove_emission_hook(signal_id, hook_id)
        self.attr_lock.lock
        begin
          __g_signal_remove_emission_hook(signal_id, hook_id)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1cclosure_1new, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __g_cclosure_new(callback_func, user_data, destroy_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1cclosure_1new, JNI.env, self.jni_id, callback_func, user_data, destroy_data)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def g_cclosure_new(callback_func, user_data, destroy_data)
        self.attr_lock.lock
        begin
          return __g_cclosure_new(callback_func, user_data, destroy_data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1closure_1ref, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __g_closure_ref(closure)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1closure_1ref, JNI.env, self.jni_id, closure)
      end
      
      typesig { [::Java::Int] }
      def g_closure_ref(closure)
        self.attr_lock.lock
        begin
          return __g_closure_ref(closure)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1closure_1unref, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __g_closure_unref(closure)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1closure_1unref, JNI.env, self.jni_id, closure)
      end
      
      typesig { [::Java::Int] }
      def g_closure_unref(closure)
        self.attr_lock.lock
        begin
          __g_closure_unref(closure)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1acquire, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __g_main_context_acquire(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1acquire, JNI.env, self.jni_id, context) != 0
      end
      
      typesig { [::Java::Int] }
      def g_main_context_acquire(context)
        self.attr_lock.lock
        begin
          return __g_main_context_acquire(context)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1check, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __g_main_context_check(context, max_priority, fds, n_fds)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1check, JNI.env, self.jni_id, context, max_priority, fds, n_fds)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def g_main_context_check(context, max_priority, fds, n_fds)
        self.attr_lock.lock
        begin
          return __g_main_context_check(context, max_priority, fds, n_fds)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1default, [:pointer, :long], :int32
      typesig { [] }
      def __g_main_context_default
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1default, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def g_main_context_default
        self.attr_lock.lock
        begin
          return __g_main_context_default
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1iteration, [:pointer, :long, :int32, :int8], :int8
      typesig { [::Java::Int, ::Java::Boolean] }
      def __g_main_context_iteration(context, may_block)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1iteration, JNI.env, self.jni_id, context, may_block ? 1 : 0) != 0
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def g_main_context_iteration(context, may_block)
        self.attr_lock.lock
        begin
          return __g_main_context_iteration(context, may_block)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1pending, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __g_main_context_pending(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1pending, JNI.env, self.jni_id, context) != 0
      end
      
      typesig { [::Java::Int] }
      def g_main_context_pending(context)
        self.attr_lock.lock
        begin
          return __g_main_context_pending(context)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1get_1poll_1func, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __g_main_context_get_poll_func(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1get_1poll_1func, JNI.env, self.jni_id, context)
      end
      
      typesig { [::Java::Int] }
      def g_main_context_get_poll_func(context)
        self.attr_lock.lock
        begin
          return __g_main_context_get_poll_func(context)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1prepare, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def __g_main_context_prepare(context, priority)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1prepare, JNI.env, self.jni_id, context, priority.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def g_main_context_prepare(context, priority)
        self.attr_lock.lock
        begin
          return __g_main_context_prepare(context, priority)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1query, [:pointer, :long, :int32, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
      def __g_main_context_query(context, max_priority, timeout_, fds, n_fds)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1query, JNI.env, self.jni_id, context, max_priority, timeout_.jni_id, fds, n_fds)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
      def g_main_context_query(context, max_priority, timeout_, fds, n_fds)
        self.attr_lock.lock
        begin
          return __g_main_context_query(context, max_priority, timeout_, fds, n_fds)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1release, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __g_main_context_release(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1release, JNI.env, self.jni_id, context)
      end
      
      typesig { [::Java::Int] }
      def g_main_context_release(context)
        self.attr_lock.lock
        begin
          __g_main_context_release(context)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_g_1main_1context_1wakeup, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def g_main_context_wakeup(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_g_1main_1context_1wakeup, JNI.env, self.jni_id, context)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1filename_1to_1utf8, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __g_filename_to_utf8(opsysstring, len, bytes_read, bytes_written, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1filename_1to_1utf8, JNI.env, self.jni_id, opsysstring, len, bytes_read.jni_id, bytes_written.jni_id, error.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def g_filename_to_utf8(opsysstring, len, bytes_read, bytes_written, error)
        self.attr_lock.lock
        begin
          return __g_filename_to_utf8(opsysstring, len, bytes_read, bytes_written, error)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1filename_1to_1uri, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def __g_filename_to_uri(filename, hostname, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1filename_1to_1uri, JNI.env, self.jni_id, filename, hostname, error.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def g_filename_to_uri(filename, hostname, error)
        self.attr_lock.lock
        begin
          return __g_filename_to_uri(filename, hostname, error)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1filename_1from_1utf8, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __g_filename_from_utf8(opsysstring, len, bytes_read, bytes_written, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1filename_1from_1utf8, JNI.env, self.jni_id, opsysstring, len, bytes_read.jni_id, bytes_written.jni_id, error.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def g_filename_from_utf8(opsysstring, len, bytes_read, bytes_written, error)
        self.attr_lock.lock
        begin
          return __g_filename_from_utf8(opsysstring, len, bytes_read, bytes_written, error)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1filename_1from_1uri, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __g_filename_from_uri(uri, hostname, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1filename_1from_1uri, JNI.env, self.jni_id, uri, hostname.jni_id, error.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def g_filename_from_uri(uri, hostname, error)
        self.attr_lock.lock
        begin
          return __g_filename_from_uri(uri, hostname, error)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __g_free(mem)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1free, JNI.env, self.jni_id, mem)
      end
      
      typesig { [::Java::Int] }
      def g_free(mem)
        self.attr_lock.lock
        begin
          __g_free(mem)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1idle_1add, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __g_idle_add(function, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1idle_1add, JNI.env, self.jni_id, function, data)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def g_idle_add(function, data)
        self.attr_lock.lock
        begin
          return __g_idle_add(function, data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1append, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __g_list_append(list, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1append, JNI.env, self.jni_id, list, data)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def g_list_append(list, data)
        self.attr_lock.lock
        begin
          return __g_list_append(list, data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1data, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __g_list_data(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1data, JNI.env, self.jni_id, list)
      end
      
      typesig { [::Java::Int] }
      def g_list_data(list)
        self.attr_lock.lock
        begin
          return __g_list_data(list)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __g_list_free(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1free, JNI.env, self.jni_id, list)
      end
      
      typesig { [::Java::Int] }
      def g_list_free(list)
        self.attr_lock.lock
        begin
          __g_list_free(list)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1free_11, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __g_list_free_1(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1free_11, JNI.env, self.jni_id, list)
      end
      
      typesig { [::Java::Int] }
      def g_list_free_1(list)
        self.attr_lock.lock
        begin
          __g_list_free_1(list)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1length, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __g_list_length(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1length, JNI.env, self.jni_id, list)
      end
      
      typesig { [::Java::Int] }
      def g_list_length(list)
        self.attr_lock.lock
        begin
          return __g_list_length(list)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1set_1next, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __g_list_set_next(list, llist)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1set_1next, JNI.env, self.jni_id, list, llist)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def g_list_set_next(list, llist)
        self.attr_lock.lock
        begin
          __g_list_set_next(list, llist)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1next, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __g_list_next(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1next, JNI.env, self.jni_id, list)
      end
      
      typesig { [::Java::Int] }
      def g_list_next(list)
        self.attr_lock.lock
        begin
          return __g_list_next(list)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1nth, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __g_list_nth(list, n)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1nth, JNI.env, self.jni_id, list, n)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def g_list_nth(list, n)
        self.attr_lock.lock
        begin
          return __g_list_nth(list, n)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1nth_1data, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __g_list_nth_data(list, n)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1nth_1data, JNI.env, self.jni_id, list, n)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def g_list_nth_data(list, n)
        self.attr_lock.lock
        begin
          return __g_list_nth_data(list, n)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1prepend, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __g_list_prepend(list, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1prepend, JNI.env, self.jni_id, list, data)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def g_list_prepend(list, data)
        self.attr_lock.lock
        begin
          return __g_list_prepend(list, data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1set_1previous, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __g_list_set_previous(list, llist)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1set_1previous, JNI.env, self.jni_id, list, llist)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def g_list_set_previous(list, llist)
        self.attr_lock.lock
        begin
          __g_list_set_previous(list, llist)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1previous, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __g_list_previous(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1previous, JNI.env, self.jni_id, list)
      end
      
      typesig { [::Java::Int] }
      def g_list_previous(list)
        self.attr_lock.lock
        begin
          return __g_list_previous(list)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1remove_1link, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __g_list_remove_link(list, link)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1remove_1link, JNI.env, self.jni_id, list, link)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def g_list_remove_link(list, link)
        self.attr_lock.lock
        begin
          return __g_list_remove_link(list, link)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1reverse, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __g_list_reverse(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1reverse, JNI.env, self.jni_id, list)
      end
      
      typesig { [::Java::Int] }
      def g_list_reverse(list)
        self.attr_lock.lock
        begin
          return __g_list_reverse(list)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1locale_1from_1utf8, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __g_locale_from_utf8(utf8string, len, bytes_read, bytes_written, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1locale_1from_1utf8, JNI.env, self.jni_id, utf8string, len, bytes_read.jni_id, bytes_written.jni_id, error.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def g_locale_from_utf8(utf8string, len, bytes_read, bytes_written, error)
        self.attr_lock.lock
        begin
          return __g_locale_from_utf8(utf8string, len, bytes_read, bytes_written, error)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1locale_1to_1utf8, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __g_locale_to_utf8(opsysstring, len, bytes_read, bytes_written, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1locale_1to_1utf8, JNI.env, self.jni_id, opsysstring, len, bytes_read.jni_id, bytes_written.jni_id, error.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def g_locale_to_utf8(opsysstring, len, bytes_read, bytes_written, error)
        self.attr_lock.lock
        begin
          return __g_locale_to_utf8(opsysstring, len, bytes_read, bytes_written, error)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1log_1default_1handler, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __g_log_default_handler(log_domain, log_levels, message, unused_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1log_1default_1handler, JNI.env, self.jni_id, log_domain, log_levels, message, unused_data)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def g_log_default_handler(log_domain, log_levels, message, unused_data)
        self.attr_lock.lock
        begin
          __g_log_default_handler(log_domain, log_levels, message, unused_data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1log_1remove_1handler, [:pointer, :long, :long, :int32], :void
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      def __g_log_remove_handler(log_domain, handler_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1log_1remove_1handler, JNI.env, self.jni_id, log_domain.jni_id, handler_id)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      def g_log_remove_handler(log_domain, handler_id)
        self.attr_lock.lock
        begin
          __g_log_remove_handler(log_domain, handler_id)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1log_1set_1handler, [:pointer, :long, :long, :int32, :int32, :int32], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      def __g_log_set_handler(log_domain, log_levels, log_func, user_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1log_1set_1handler, JNI.env, self.jni_id, log_domain.jni_id, log_levels, log_func, user_data)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      def g_log_set_handler(log_domain, log_levels, log_func, user_data)
        self.attr_lock.lock
        begin
          return __g_log_set_handler(log_domain, log_levels, log_func, user_data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1malloc, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __g_malloc(size)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1malloc, JNI.env, self.jni_id, size)
      end
      
      typesig { [::Java::Int] }
      def g_malloc(size)
        self.attr_lock.lock
        begin
          return __g_malloc(size)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1get, [:pointer, :long, :int32, :long, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int), ::Java::Int] }
      def __g_object_get(object, first_property_name, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1get, JNI.env, self.jni_id, object, first_property_name.jni_id, value.jni_id, terminator)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int), ::Java::Int] }
      def g_object_get(object, first_property_name, value, terminator)
        self.attr_lock.lock
        begin
          __g_object_get(object, first_property_name, value, terminator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1get_1qdata, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __g_object_get_qdata(object, quark)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1get_1qdata, JNI.env, self.jni_id, object, quark)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def g_object_get_qdata(object, quark)
        self.attr_lock.lock
        begin
          return __g_object_get_qdata(object, quark)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1new, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __g_object_new(type, first_property_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1new, JNI.env, self.jni_id, type, first_property_name)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def g_object_new(type, first_property_name)
        self.attr_lock.lock
        begin
          return __g_object_new(type, first_property_name)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1ref, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __g_object_ref(object)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1ref, JNI.env, self.jni_id, object)
      end
      
      typesig { [::Java::Int] }
      def g_object_ref(object)
        self.attr_lock.lock
        begin
          return __g_object_ref(object)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set__I_3BZI, [:pointer, :long, :int32, :long, :int8, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Boolean, ::Java::Int] }
      def __g_object_set(object, first_property_name, data, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set__I_3BZI, JNI.env, self.jni_id, object, first_property_name.jni_id, data ? 1 : 0, terminator)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Boolean, ::Java::Int] }
      def g_object_set(object, first_property_name, data, terminator)
        self.attr_lock.lock
        begin
          __g_object_set(object, first_property_name, data, terminator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set__I_3BL#{GdkColor.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), GdkColor, ::Java::Int] }
      def __g_object_set(object, first_property_name, data, terminator)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set__I_3BL#{GdkColor.jni_name}_2I".to_sym, JNI.env, self.jni_id, object, first_property_name.jni_id, data.jni_id, terminator)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), GdkColor, ::Java::Int] }
      def g_object_set(object, first_property_name, data, terminator)
        self.attr_lock.lock
        begin
          __g_object_set(object, first_property_name, data, terminator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set__I_3BII, [:pointer, :long, :int32, :long, :int32, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      def __g_object_set(object, first_property_name, data, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set__I_3BII, JNI.env, self.jni_id, object, first_property_name.jni_id, data, terminator)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      def g_object_set(object, first_property_name, data, terminator)
        self.attr_lock.lock
        begin
          __g_object_set(object, first_property_name, data, terminator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set__I_3BXfloatXI, [:pointer, :long, :int32, :long, :float, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Float, ::Java::Int] }
      def __g_object_set(object, first_property_name, data, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set__I_3BXfloatXI, JNI.env, self.jni_id, object, first_property_name.jni_id, data, terminator)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Float, ::Java::Int] }
      def g_object_set(object, first_property_name, data, terminator)
        self.attr_lock.lock
        begin
          __g_object_set(object, first_property_name, data, terminator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set__I_3BJI, [:pointer, :long, :int32, :long, :int64, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Long, ::Java::Int] }
      def __g_object_set(object, first_property_name, data, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set__I_3BJI, JNI.env, self.jni_id, object, first_property_name.jni_id, data, terminator)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Long, ::Java::Int] }
      def g_object_set(object, first_property_name, data, terminator)
        self.attr_lock.lock
        begin
          __g_object_set(object, first_property_name, data, terminator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set_1qdata, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __g_object_set_qdata(object, quark, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set_1qdata, JNI.env, self.jni_id, object, quark, data)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def g_object_set_qdata(object, quark, data)
        self.attr_lock.lock
        begin
          __g_object_set_qdata(object, quark, data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1unref, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __g_object_unref(object)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1unref, JNI.env, self.jni_id, object)
      end
      
      typesig { [::Java::Int] }
      def g_object_unref(object)
        self.attr_lock.lock
        begin
          __g_object_unref(object)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1quark_1from_1string, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __g_quark_from_string(string)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1quark_1from_1string, JNI.env, self.jni_id, string.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def g_quark_from_string(string)
        self.attr_lock.lock
        begin
          return __g_quark_from_string(string)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1set_1prgname, [:pointer, :long, :long], :void
      typesig { [Array.typed(::Java::Byte)] }
      def __g_set_prgname(prgname)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1set_1prgname, JNI.env, self.jni_id, prgname.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def g_set_prgname(prgname)
        self.attr_lock.lock
        begin
          __g_set_prgname(prgname)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1connect, [:pointer, :long, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      def __g_signal_connect(instance, detailed_signal, proc, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1connect, JNI.env, self.jni_id, instance, detailed_signal.jni_id, proc, data)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      def g_signal_connect(instance, detailed_signal, proc, data)
        self.attr_lock.lock
        begin
          return __g_signal_connect(instance, detailed_signal, proc, data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1connect_1closure, [:pointer, :long, :int32, :long, :int32, :int8], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Boolean] }
      def __g_signal_connect_closure(instance, detailed_signal, closure, after)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1connect_1closure, JNI.env, self.jni_id, instance, detailed_signal.jni_id, closure, after ? 1 : 0)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Boolean] }
      def g_signal_connect_closure(instance, detailed_signal, closure, after)
        self.attr_lock.lock
        begin
          return __g_signal_connect_closure(instance, detailed_signal, closure, after)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1connect_1closure_1by_1id, [:pointer, :long, :int32, :int32, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      def __g_signal_connect_closure_by_id(instance, signal_id, detail, closure, after)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1connect_1closure_1by_1id, JNI.env, self.jni_id, instance, signal_id, detail, closure, after ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      def g_signal_connect_closure_by_id(instance, signal_id, detail, closure, after)
        self.attr_lock.lock
        begin
          return __g_signal_connect_closure_by_id(instance, signal_id, detail, closure, after)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1connect_1after, [:pointer, :long, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      def __g_signal_connect_after(instance, detailed_signal, proc, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1connect_1after, JNI.env, self.jni_id, instance, detailed_signal.jni_id, proc, data)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      def g_signal_connect_after(instance, detailed_signal, proc, data)
        self.attr_lock.lock
        begin
          return __g_signal_connect_after(instance, detailed_signal, proc, data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1emit_1by_1name__I_3B, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __g_signal_emit_by_name(instance, detailed_signal)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1emit_1by_1name__I_3B, JNI.env, self.jni_id, instance, detailed_signal.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def g_signal_emit_by_name(instance, detailed_signal)
        self.attr_lock.lock
        begin
          __g_signal_emit_by_name(instance, detailed_signal)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1emit_1by_1name__I_3BI, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def __g_signal_emit_by_name(instance, detailed_signal, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1emit_1by_1name__I_3BI, JNI.env, self.jni_id, instance, detailed_signal.jni_id, data)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def g_signal_emit_by_name(instance, detailed_signal, data)
        self.attr_lock.lock
        begin
          __g_signal_emit_by_name(instance, detailed_signal, data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1emit_1by_1name__I_3BII, [:pointer, :long, :int32, :long, :int32, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      def __g_signal_emit_by_name(instance, detailed_signal, data1, data2)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1emit_1by_1name__I_3BII, JNI.env, self.jni_id, instance, detailed_signal.jni_id, data1, data2)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      def g_signal_emit_by_name(instance, detailed_signal, data1, data2)
        self.attr_lock.lock
        begin
          __g_signal_emit_by_name(instance, detailed_signal, data1, data2)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1emit_1by_1name__I_3B_3B, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      def __g_signal_emit_by_name(instance, detailed_signal, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1emit_1by_1name__I_3B_3B, JNI.env, self.jni_id, instance, detailed_signal.jni_id, data.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      def g_signal_emit_by_name(instance, detailed_signal, data)
        self.attr_lock.lock
        begin
          __g_signal_emit_by_name(instance, detailed_signal, data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1handler_1disconnect, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __g_signal_handler_disconnect(instance, handler_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1handler_1disconnect, JNI.env, self.jni_id, instance, handler_id)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def g_signal_handler_disconnect(instance, handler_id)
        self.attr_lock.lock
        begin
          __g_signal_handler_disconnect(instance, handler_id)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1handlers_1block_1matched, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __g_signal_handlers_block_matched(instance, mask, signal_id, detail, closure, func, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1handlers_1block_1matched, JNI.env, self.jni_id, instance, mask, signal_id, detail, closure, func, data)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def g_signal_handlers_block_matched(instance, mask, signal_id, detail, closure, func, data)
        self.attr_lock.lock
        begin
          return __g_signal_handlers_block_matched(instance, mask, signal_id, detail, closure, func, data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1handlers_1disconnect_1matched, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __g_signal_handlers_disconnect_matched(instance, mask, signal_id, detail, closure, func, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1handlers_1disconnect_1matched, JNI.env, self.jni_id, instance, mask, signal_id, detail, closure, func, data)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def g_signal_handlers_disconnect_matched(instance, mask, signal_id, detail, closure, func, data)
        self.attr_lock.lock
        begin
          return __g_signal_handlers_disconnect_matched(instance, mask, signal_id, detail, closure, func, data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1handlers_1unblock_1matched, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __g_signal_handlers_unblock_matched(instance, mask, signal_id, detail, closure, func, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1handlers_1unblock_1matched, JNI.env, self.jni_id, instance, mask, signal_id, detail, closure, func, data)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def g_signal_handlers_unblock_matched(instance, mask, signal_id, detail, closure, func, data)
        self.attr_lock.lock
        begin
          return __g_signal_handlers_unblock_matched(instance, mask, signal_id, detail, closure, func, data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1lookup, [:pointer, :long, :long, :int32], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      def __g_signal_lookup(name, itype)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1lookup, JNI.env, self.jni_id, name.jni_id, itype)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      def g_signal_lookup(name, itype)
        self.attr_lock.lock
        begin
          return __g_signal_lookup(name, itype)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1stop_1emission_1by_1name, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __g_signal_stop_emission_by_name(instance, detailed_signal)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1stop_1emission_1by_1name, JNI.env, self.jni_id, instance, detailed_signal.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def g_signal_stop_emission_by_name(instance, detailed_signal)
        self.attr_lock.lock
        begin
          __g_signal_stop_emission_by_name(instance, detailed_signal)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1source_1remove, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __g_source_remove(tag)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1source_1remove, JNI.env, self.jni_id, tag) != 0
      end
      
      typesig { [::Java::Int] }
      def g_source_remove(tag)
        self.attr_lock.lock
        begin
          return __g_source_remove(tag)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1slist_1data, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __g_slist_data(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1slist_1data, JNI.env, self.jni_id, list)
      end
      
      typesig { [::Java::Int] }
      def g_slist_data(list)
        self.attr_lock.lock
        begin
          return __g_slist_data(list)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1slist_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __g_slist_free(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1slist_1free, JNI.env, self.jni_id, list)
      end
      
      typesig { [::Java::Int] }
      def g_slist_free(list)
        self.attr_lock.lock
        begin
          __g_slist_free(list)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1slist_1next, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __g_slist_next(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1slist_1next, JNI.env, self.jni_id, list)
      end
      
      typesig { [::Java::Int] }
      def g_slist_next(list)
        self.attr_lock.lock
        begin
          return __g_slist_next(list)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1slist_1length, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __g_slist_length(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1slist_1length, JNI.env, self.jni_id, list)
      end
      
      typesig { [::Java::Int] }
      def g_slist_length(list)
        self.attr_lock.lock
        begin
          return __g_slist_length(list)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1strfreev, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __g_strfreev(string_array)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1strfreev, JNI.env, self.jni_id, string_array)
      end
      
      typesig { [::Java::Int] }
      def g_strfreev(string_array)
        self.attr_lock.lock
        begin
          __g_strfreev(string_array)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1strtod, [:pointer, :long, :int32, :long], :double
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def __g_strtod(str, endptr)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1strtod, JNI.env, self.jni_id, str, endptr.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def g_strtod(str, endptr)
        self.attr_lock.lock
        begin
          return __g_strtod(str, endptr)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1add_1interface_1static, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __g_type_add_interface_static(instance_type, interface_type, info)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1add_1interface_1static, JNI.env, self.jni_id, instance_type, interface_type, info)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def g_type_add_interface_static(instance_type, interface_type, info)
        self.attr_lock.lock
        begin
          __g_type_add_interface_static(instance_type, interface_type, info)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1class_1peek, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __g_type_class_peek(g_class)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1class_1peek, JNI.env, self.jni_id, g_class)
      end
      
      typesig { [::Java::Int] }
      def g_type_class_peek(g_class)
        self.attr_lock.lock
        begin
          return __g_type_class_peek(g_class)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1class_1peek_1parent, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __g_type_class_peek_parent(g_class)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1class_1peek_1parent, JNI.env, self.jni_id, g_class)
      end
      
      typesig { [::Java::Int] }
      def g_type_class_peek_parent(g_class)
        self.attr_lock.lock
        begin
          return __g_type_class_peek_parent(g_class)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1from_1name, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __g_type_from_name(name)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1from_1name, JNI.env, self.jni_id, name.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def g_type_from_name(name)
        self.attr_lock.lock
        begin
          return __g_type_from_name(name)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1interface_1peek_1parent, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __g_type_interface_peek_parent(iface)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1interface_1peek_1parent, JNI.env, self.jni_id, iface)
      end
      
      typesig { [::Java::Int] }
      def g_type_interface_peek_parent(iface)
        self.attr_lock.lock
        begin
          return __g_type_interface_peek_parent(iface)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1is_1a, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      def __g_type_is_a(type, is_a_type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1is_1a, JNI.env, self.jni_id, type, is_a_type) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def g_type_is_a(type, is_a_type)
        self.attr_lock.lock
        begin
          return __g_type_is_a(type, is_a_type)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1name, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __g_type_name(handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1name, JNI.env, self.jni_id, handle)
      end
      
      typesig { [::Java::Int] }
      def g_type_name(handle)
        self.attr_lock.lock
        begin
          return __g_type_name(handle)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1parent, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __g_type_parent(type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1parent, JNI.env, self.jni_id, type)
      end
      
      typesig { [::Java::Int] }
      def g_type_parent(type)
        self.attr_lock.lock
        begin
          return __g_type_parent(type)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1query, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __g_type_query(type, query)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1query, JNI.env, self.jni_id, type, query)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def g_type_query(type, query)
        self.attr_lock.lock
        begin
          __g_type_query(type, query)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1register_1static, [:pointer, :long, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      def __g_type_register_static(parent_type, type_name, info, flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1register_1static, JNI.env, self.jni_id, parent_type, type_name.jni_id, info, flags)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      def g_type_register_static(parent_type, type_name, info, flags)
        self.attr_lock.lock
        begin
          return __g_type_register_static(parent_type, type_name, info, flags)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1thread_1init, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __g_thread_init(vtable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1thread_1init, JNI.env, self.jni_id, vtable)
      end
      
      typesig { [::Java::Int] }
      def g_thread_init(vtable)
        self.attr_lock.lock
        begin
          __g_thread_init(vtable)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1thread_1supported, [:pointer, :long], :int8
      typesig { [] }
      def __g_thread_supported
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1thread_1supported, JNI.env, self.jni_id) != 0
      end
      
      typesig { [] }
      def g_thread_supported
        self.attr_lock.lock
        begin
          return __g_thread_supported
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1utf16_1to_1utf8, [:pointer, :long, :long, :int32, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __g_utf16_to_utf8(str, len, items_read, items_written, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1utf16_1to_1utf8, JNI.env, self.jni_id, str.jni_id, len, items_read.jni_id, items_written.jni_id, error.jni_id)
      end
      
      typesig { [Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def g_utf16_to_utf8(str, len, items_read, items_written, error)
        self.attr_lock.lock
        begin
          return __g_utf16_to_utf8(str, len, items_read, items_written, error)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1utf8_1offset_1to_1pointer, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __g_utf8_offset_to_pointer(str, offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1utf8_1offset_1to_1pointer, JNI.env, self.jni_id, str, offset)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def g_utf8_offset_to_pointer(str, offset)
        self.attr_lock.lock
        begin
          return __g_utf8_offset_to_pointer(str, offset)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1utf8_1pointer_1to_1offset, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __g_utf8_pointer_to_offset(str, pos)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1utf8_1pointer_1to_1offset, JNI.env, self.jni_id, str, pos)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def g_utf8_pointer_to_offset(str, pos)
        self.attr_lock.lock
        begin
          return __g_utf8_pointer_to_offset(str, pos)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1utf8_1strlen, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __g_utf8_strlen(str, max)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1utf8_1strlen, JNI.env, self.jni_id, str, max)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def g_utf8_strlen(str, max)
        self.attr_lock.lock
        begin
          return __g_utf8_strlen(str, max)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1utf8_1to_1utf16___3BI_3I_3I_3I, [:pointer, :long, :long, :int32, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __g_utf8_to_utf16(str, len, items_read, items_written, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1utf8_1to_1utf16___3BI_3I_3I_3I, JNI.env, self.jni_id, str.jni_id, len, items_read.jni_id, items_written.jni_id, error.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def g_utf8_to_utf16(str, len, items_read, items_written, error)
        self.attr_lock.lock
        begin
          return __g_utf8_to_utf16(str, len, items_read, items_written, error)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1utf8_1to_1utf16__II_3I_3I_3I, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __g_utf8_to_utf16(str, len, items_read, items_written, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1utf8_1to_1utf16__II_3I_3I_3I, JNI.env, self.jni_id, str, len, items_read.jni_id, items_written.jni_id, error.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def g_utf8_to_utf16(str, len, items_read, items_written, error)
        self.attr_lock.lock
        begin
          return __g_utf8_to_utf16(str, len, items_read, items_written, error)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1value_1peek_1pointer, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __g_value_peek_pointer(value)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1value_1peek_1pointer, JNI.env, self.jni_id, value)
      end
      
      typesig { [::Java::Int] }
      def g_value_peek_pointer(value)
        self.attr_lock.lock
        begin
          return __g_value_peek_pointer(value)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1atom_1intern, [:pointer, :long, :long, :int8], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Boolean] }
      def __gdk_atom_intern(atom_name, only_if_exists)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1atom_1intern, JNI.env, self.jni_id, atom_name.jni_id, only_if_exists ? 1 : 0)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Boolean] }
      def gdk_atom_intern(atom_name, only_if_exists)
        self.attr_lock.lock
        begin
          return __gdk_atom_intern(atom_name, only_if_exists)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1atom_1name, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_atom_name(atom)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1atom_1name, JNI.env, self.jni_id, atom)
      end
      
      typesig { [::Java::Int] }
      def gdk_atom_name(atom)
        self.attr_lock.lock
        begin
          return __gdk_atom_name(atom)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1beep, [:pointer, :long], :void
      typesig { [] }
      def __gdk_beep
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1beep, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_beep
        self.attr_lock.lock
        begin
          __gdk_beep
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1bitmap_1create_1from_1data, [:pointer, :long, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      def __gdk_bitmap_create_from_data(window, data, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1bitmap_1create_1from_1data, JNI.env, self.jni_id, window, data.jni_id, width, height)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      def gdk_bitmap_create_from_data(window, data, width, height)
        self.attr_lock.lock
        begin
          return __gdk_bitmap_create_from_data(window, data, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cairo_1region, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gdk_cairo_region(cairo, region)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cairo_1region, JNI.env, self.jni_id, cairo, region)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gdk_cairo_region(cairo, region)
        self.attr_lock.lock
        begin
          __gdk_cairo_region(cairo, region)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cairo_1set_1source_1color, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkColor] }
      def __gdk_cairo_set_source_color(cairo, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cairo_1set_1source_1color, JNI.env, self.jni_id, cairo, color.jni_id)
      end
      
      typesig { [::Java::Int, GdkColor] }
      def gdk_cairo_set_source_color(cairo, color)
        self.attr_lock.lock
        begin
          __gdk_cairo_set_source_color(cairo, color)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1color_1white, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, GdkColor] }
      def __gdk_color_white(colormap, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1color_1white, JNI.env, self.jni_id, colormap, color.jni_id) != 0
      end
      
      typesig { [::Java::Int, GdkColor] }
      def gdk_color_white(colormap, color)
        self.attr_lock.lock
        begin
          return __gdk_color_white(colormap, color)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1colormap_1alloc_1color, [:pointer, :long, :int32, :long, :int8, :int8], :int8
      typesig { [::Java::Int, GdkColor, ::Java::Boolean, ::Java::Boolean] }
      def __gdk_colormap_alloc_color(colormap, color, writeable, best_match)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1colormap_1alloc_1color, JNI.env, self.jni_id, colormap, color.jni_id, writeable ? 1 : 0, best_match ? 1 : 0) != 0
      end
      
      typesig { [::Java::Int, GdkColor, ::Java::Boolean, ::Java::Boolean] }
      def gdk_colormap_alloc_color(colormap, color, writeable, best_match)
        self.attr_lock.lock
        begin
          return __gdk_colormap_alloc_color(colormap, color, writeable, best_match)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1colormap_1free_1colors, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, GdkColor, ::Java::Int] }
      def __gdk_colormap_free_colors(colormap, colors, ncolors)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1colormap_1free_1colors, JNI.env, self.jni_id, colormap, colors.jni_id, ncolors)
      end
      
      typesig { [::Java::Int, GdkColor, ::Java::Int] }
      def gdk_colormap_free_colors(colormap, colors, ncolors)
        self.attr_lock.lock
        begin
          __gdk_colormap_free_colors(colormap, colors, ncolors)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1colormap_1get_1system, [:pointer, :long], :int32
      typesig { [] }
      def __gdk_colormap_get_system
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1colormap_1get_1system, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_colormap_get_system
        self.attr_lock.lock
        begin
          return __gdk_colormap_get_system
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1colormap_1query_1color, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def __gdk_colormap_query_color(colormap, pixel, result)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1colormap_1query_1color, JNI.env, self.jni_id, colormap, pixel, result.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def gdk_colormap_query_color(colormap, pixel, result)
        self.attr_lock.lock
        begin
          __gdk_colormap_query_color(colormap, pixel, result)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cursor_1destroy, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gdk_cursor_destroy(cursor)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cursor_1destroy, JNI.env, self.jni_id, cursor)
      end
      
      typesig { [::Java::Int] }
      def gdk_cursor_destroy(cursor)
        self.attr_lock.lock
        begin
          __gdk_cursor_destroy(cursor)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cursor_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_cursor_new(cursor_type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cursor_1new, JNI.env, self.jni_id, cursor_type)
      end
      
      typesig { [::Java::Int] }
      def gdk_cursor_new(cursor_type)
        self.attr_lock.lock
        begin
          return __gdk_cursor_new(cursor_type)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cursor_1new_1from_1pixmap, [:pointer, :long, :int32, :int32, :long, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, GdkColor, GdkColor, ::Java::Int, ::Java::Int] }
      def __gdk_cursor_new_from_pixmap(source, mask, fg, bg, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cursor_1new_1from_1pixmap, JNI.env, self.jni_id, source, mask, fg.jni_id, bg.jni_id, x, y)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor, GdkColor, ::Java::Int, ::Java::Int] }
      def gdk_cursor_new_from_pixmap(source, mask, fg, bg, x, y)
        self.attr_lock.lock
        begin
          return __gdk_cursor_new_from_pixmap(source, mask, fg, bg, x, y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cursor_1new_1from_1pixbuf, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_cursor_new_from_pixbuf(display, pixbuf, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cursor_1new_1from_1pixbuf, JNI.env, self.jni_id, display, pixbuf, x, y)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_cursor_new_from_pixbuf(display, pixbuf, x, y)
        self.attr_lock.lock
        begin
          return __gdk_cursor_new_from_pixbuf(display, pixbuf, x, y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1display_1get_1default, [:pointer, :long], :int32
      typesig { [] }
      def __gdk_display_get_default
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1display_1get_1default, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_display_get_default
        self.attr_lock.lock
        begin
          return __gdk_display_get_default
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1display_1supports_1cursor_1color, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gdk_display_supports_cursor_color(display)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1display_1supports_1cursor_1color, JNI.env, self.jni_id, display) != 0
      end
      
      typesig { [::Java::Int] }
      def gdk_display_supports_cursor_color(display)
        self.attr_lock.lock
        begin
          return __gdk_display_supports_cursor_color(display)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1drag_1status, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_drag_status(context, action, time)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1drag_1status, JNI.env, self.jni_id, context, action, time)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_drag_status(context, action, time)
        self.attr_lock.lock
        begin
          __gdk_drag_status(context, action, time)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1arc, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_draw_arc(drawable, gc, filled, x, y, width, height, angle1, angle2)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1arc, JNI.env, self.jni_id, drawable, gc, filled, x, y, width, height, angle1, angle2)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_draw_arc(drawable, gc, filled, x, y, width, height, angle1, angle2)
        self.attr_lock.lock
        begin
          __gdk_draw_arc(drawable, gc, filled, x, y, width, height, angle1, angle2)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1drawable, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_draw_drawable(drawable, gc, src, xsrc, ysrc, xdest, ydest, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1drawable, JNI.env, self.jni_id, drawable, gc, src, xsrc, ysrc, xdest, ydest, width, height)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_draw_drawable(drawable, gc, src, xsrc, ysrc, xdest, ydest, width, height)
        self.attr_lock.lock
        begin
          __gdk_draw_drawable(drawable, gc, src, xsrc, ysrc, xdest, ydest, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1image, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_draw_image(drawable, gc, image, xsrc, ysrc, xdest, ydest, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1image, JNI.env, self.jni_id, drawable, gc, image, xsrc, ysrc, xdest, ydest, width, height)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_draw_image(drawable, gc, image, xsrc, ysrc, xdest, ydest, width, height)
        self.attr_lock.lock
        begin
          __gdk_draw_image(drawable, gc, image, xsrc, ysrc, xdest, ydest, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1layout, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_draw_layout(drawable, gc, x, y, layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1layout, JNI.env, self.jni_id, drawable, gc, x, y, layout)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_draw_layout(drawable, gc, x, y, layout)
        self.attr_lock.lock
        begin
          __gdk_draw_layout(drawable, gc, x, y, layout)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1layout_1with_1colors, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :long, :long], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkColor, GdkColor] }
      def __gdk_draw_layout_with_colors(drawable, gc, x, y, layout, foreground, background)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1layout_1with_1colors, JNI.env, self.jni_id, drawable, gc, x, y, layout, foreground.jni_id, background.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkColor, GdkColor] }
      def gdk_draw_layout_with_colors(drawable, gc, x, y, layout, foreground, background)
        self.attr_lock.lock
        begin
          __gdk_draw_layout_with_colors(drawable, gc, x, y, layout, foreground, background)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1line, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_draw_line(drawable, gc, x1, y1, x2, y2)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1line, JNI.env, self.jni_id, drawable, gc, x1, y1, x2, y2)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_draw_line(drawable, gc, x1, y1, x2, y2)
        self.attr_lock.lock
        begin
          __gdk_draw_line(drawable, gc, x1, y1, x2, y2)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1lines, [:pointer, :long, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      def __gdk_draw_lines(drawable, gc, points, npoints)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1lines, JNI.env, self.jni_id, drawable, gc, points.jni_id, npoints)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      def gdk_draw_lines(drawable, gc, points, npoints)
        self.attr_lock.lock
        begin
          __gdk_draw_lines(drawable, gc, points, npoints)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1pixbuf, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_draw_pixbuf(drawable, gc, pixbuf, xsrc, ysrc, xdest, ydest, width, height, dither, x_dither, y_dither)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1pixbuf, JNI.env, self.jni_id, drawable, gc, pixbuf, xsrc, ysrc, xdest, ydest, width, height, dither, x_dither, y_dither)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_draw_pixbuf(drawable, gc, pixbuf, xsrc, ysrc, xdest, ydest, width, height, dither, x_dither, y_dither)
        self.attr_lock.lock
        begin
          __gdk_draw_pixbuf(drawable, gc, pixbuf, xsrc, ysrc, xdest, ydest, width, height, dither, x_dither, y_dither)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1point, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_draw_point(drawable, gc, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1point, JNI.env, self.jni_id, drawable, gc, x, y)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_draw_point(drawable, gc, x, y)
        self.attr_lock.lock
        begin
          __gdk_draw_point(drawable, gc, x, y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1polygon, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      def __gdk_draw_polygon(drawable, gc, filled, points, npoints)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1polygon, JNI.env, self.jni_id, drawable, gc, filled, points.jni_id, npoints)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      def gdk_draw_polygon(drawable, gc, filled, points, npoints)
        self.attr_lock.lock
        begin
          __gdk_draw_polygon(drawable, gc, filled, points, npoints)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1rectangle, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_draw_rectangle(drawable, gc, filled, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1rectangle, JNI.env, self.jni_id, drawable, gc, filled, x, y, width, height)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_draw_rectangle(drawable, gc, filled, x, y, width, height)
        self.attr_lock.lock
        begin
          __gdk_draw_rectangle(drawable, gc, filled, x, y, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1drawable_1get_1depth, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_drawable_get_depth(drawable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1drawable_1get_1depth, JNI.env, self.jni_id, drawable)
      end
      
      typesig { [::Java::Int] }
      def gdk_drawable_get_depth(drawable)
        self.attr_lock.lock
        begin
          return __gdk_drawable_get_depth(drawable)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1drawable_1get_1image, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_drawable_get_image(drawable, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1drawable_1get_1image, JNI.env, self.jni_id, drawable, x, y, width, height)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_drawable_get_image(drawable, x, y, width, height)
        self.attr_lock.lock
        begin
          return __gdk_drawable_get_image(drawable, x, y, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1drawable_1get_1size, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gdk_drawable_get_size(drawable, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1drawable_1get_1size, JNI.env, self.jni_id, drawable, width.jni_id, height.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gdk_drawable_get_size(drawable, width, height)
        self.attr_lock.lock
        begin
          __gdk_drawable_get_size(drawable, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1drawable_1get_1visible_1region, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_drawable_get_visible_region(drawable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1drawable_1get_1visible_1region, JNI.env, self.jni_id, drawable)
      end
      
      typesig { [::Java::Int] }
      def gdk_drawable_get_visible_region(drawable)
        self.attr_lock.lock
        begin
          return __gdk_drawable_get_visible_region(drawable)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1copy, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_event_copy(event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1copy, JNI.env, self.jni_id, event)
      end
      
      typesig { [::Java::Int] }
      def gdk_event_copy(event)
        self.attr_lock.lock
        begin
          return __gdk_event_copy(event)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gdk_event_free(event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1free, JNI.env, self.jni_id, event)
      end
      
      typesig { [::Java::Int] }
      def gdk_event_free(event)
        self.attr_lock.lock
        begin
          __gdk_event_free(event)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get, [:pointer, :long], :int32
      typesig { [] }
      def __gdk_event_get
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_event_get
        self.attr_lock.lock
        begin
          return __gdk_event_get
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get_1root_1coords, [:pointer, :long, :int32, :long, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      def __gdk_event_get_root_coords(event, px, py)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get_1root_1coords, JNI.env, self.jni_id, event, px.jni_id, py.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      def gdk_event_get_root_coords(event, px, py)
        self.attr_lock.lock
        begin
          return __gdk_event_get_root_coords(event, px, py)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get_1coords, [:pointer, :long, :int32, :long, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      def __gdk_event_get_coords(event, px, py)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get_1coords, JNI.env, self.jni_id, event, px.jni_id, py.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      def gdk_event_get_coords(event, px, py)
        self.attr_lock.lock
        begin
          return __gdk_event_get_coords(event, px, py)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get_1graphics_1expose, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_event_get_graphics_expose(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get_1graphics_1expose, JNI.env, self.jni_id, window)
      end
      
      typesig { [::Java::Int] }
      def gdk_event_get_graphics_expose(window)
        self.attr_lock.lock
        begin
          return __gdk_event_get_graphics_expose(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get_1state, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def __gdk_event_get_state(event, pmod)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get_1state, JNI.env, self.jni_id, event, pmod.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def gdk_event_get_state(event, pmod)
        self.attr_lock.lock
        begin
          return __gdk_event_get_state(event, pmod)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get_1time, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_event_get_time(event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get_1time, JNI.env, self.jni_id, event)
      end
      
      typesig { [::Java::Int] }
      def gdk_event_get_time(event)
        self.attr_lock.lock
        begin
          return __gdk_event_get_time(event)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1handler_1set, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_event_handler_set(func, data, notify)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1handler_1set, JNI.env, self.jni_id, func, data, notify)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_event_handler_set(func, data, notify)
        self.attr_lock.lock
        begin
          __gdk_event_handler_set(func, data, notify)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_event_new(type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1new, JNI.env, self.jni_id, type)
      end
      
      typesig { [::Java::Int] }
      def gdk_event_new(type)
        self.attr_lock.lock
        begin
          return __gdk_event_new(type)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1peek, [:pointer, :long], :int32
      typesig { [] }
      def __gdk_event_peek
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1peek, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_event_peek
        self.attr_lock.lock
        begin
          return __gdk_event_peek
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1put, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gdk_event_put(event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1put, JNI.env, self.jni_id, event)
      end
      
      typesig { [::Java::Int] }
      def gdk_event_put(event)
        self.attr_lock.lock
        begin
          __gdk_event_put(event)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1error_1trap_1push, [:pointer, :long], :void
      typesig { [] }
      def __gdk_error_trap_push
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1error_1trap_1push, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_error_trap_push
        self.attr_lock.lock
        begin
          __gdk_error_trap_push
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1error_1trap_1pop, [:pointer, :long], :int32
      typesig { [] }
      def __gdk_error_trap_pop
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1error_1trap_1pop, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_error_trap_pop
        self.attr_lock.lock
        begin
          return __gdk_error_trap_pop
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1flush, [:pointer, :long], :void
      typesig { [] }
      def __gdk_flush
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1flush, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_flush
        self.attr_lock.lock
        begin
          __gdk_flush
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1free_1text_1list, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gdk_free_text_list(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1free_1text_1list, JNI.env, self.jni_id, list)
      end
      
      typesig { [::Java::Int] }
      def gdk_free_text_list(list)
        self.attr_lock.lock
        begin
          __gdk_free_text_list(list)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1get_1values, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkGCValues] }
      def __gdk_gc_get_values(gc, values)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1get_1values, JNI.env, self.jni_id, gc, values.jni_id)
      end
      
      typesig { [::Java::Int, GdkGCValues] }
      def gdk_gc_get_values(gc, values)
        self.attr_lock.lock
        begin
          __gdk_gc_get_values(gc, values)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_gc_new(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1new, JNI.env, self.jni_id, window)
      end
      
      typesig { [::Java::Int] }
      def gdk_gc_new(window)
        self.attr_lock.lock
        begin
          return __gdk_gc_new(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1background, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkColor] }
      def __gdk_gc_set_background(gc, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1background, JNI.env, self.jni_id, gc, color.jni_id)
      end
      
      typesig { [::Java::Int, GdkColor] }
      def gdk_gc_set_background(gc, color)
        self.attr_lock.lock
        begin
          __gdk_gc_set_background(gc, color)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1clip_1mask, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gdk_gc_set_clip_mask(gc, mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1clip_1mask, JNI.env, self.jni_id, gc, mask)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gdk_gc_set_clip_mask(gc, mask)
        self.attr_lock.lock
        begin
          __gdk_gc_set_clip_mask(gc, mask)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1clip_1origin, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_gc_set_clip_origin(gc, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1clip_1origin, JNI.env, self.jni_id, gc, x, y)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_gc_set_clip_origin(gc, x, y)
        self.attr_lock.lock
        begin
          __gdk_gc_set_clip_origin(gc, x, y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1clip_1rectangle, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkRectangle] }
      def __gdk_gc_set_clip_rectangle(gc, rectangle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1clip_1rectangle, JNI.env, self.jni_id, gc, rectangle.jni_id)
      end
      
      typesig { [::Java::Int, GdkRectangle] }
      def gdk_gc_set_clip_rectangle(gc, rectangle)
        self.attr_lock.lock
        begin
          __gdk_gc_set_clip_rectangle(gc, rectangle)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1clip_1region, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gdk_gc_set_clip_region(gc, region)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1clip_1region, JNI.env, self.jni_id, gc, region)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gdk_gc_set_clip_region(gc, region)
        self.attr_lock.lock
        begin
          __gdk_gc_set_clip_region(gc, region)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1dashes, [:pointer, :long, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def __gdk_gc_set_dashes(gc, dash_offset, dash_list, n)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1dashes, JNI.env, self.jni_id, gc, dash_offset, dash_list.jni_id, n)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def gdk_gc_set_dashes(gc, dash_offset, dash_list, n)
        self.attr_lock.lock
        begin
          __gdk_gc_set_dashes(gc, dash_offset, dash_list, n)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1exposures, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gdk_gc_set_exposures(gc, exposures)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1exposures, JNI.env, self.jni_id, gc, exposures ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gdk_gc_set_exposures(gc, exposures)
        self.attr_lock.lock
        begin
          __gdk_gc_set_exposures(gc, exposures)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1fill, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gdk_gc_set_fill(gc, fill)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1fill, JNI.env, self.jni_id, gc, fill)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gdk_gc_set_fill(gc, fill)
        self.attr_lock.lock
        begin
          __gdk_gc_set_fill(gc, fill)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1foreground, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkColor] }
      def __gdk_gc_set_foreground(gc, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1foreground, JNI.env, self.jni_id, gc, color.jni_id)
      end
      
      typesig { [::Java::Int, GdkColor] }
      def gdk_gc_set_foreground(gc, color)
        self.attr_lock.lock
        begin
          __gdk_gc_set_foreground(gc, color)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1function, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gdk_gc_set_function(gc, function)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1function, JNI.env, self.jni_id, gc, function)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gdk_gc_set_function(gc, function)
        self.attr_lock.lock
        begin
          __gdk_gc_set_function(gc, function)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1line_1attributes, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_gc_set_line_attributes(gc, line_width, line_style, cap_style, join_style)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1line_1attributes, JNI.env, self.jni_id, gc, line_width, line_style, cap_style, join_style)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_gc_set_line_attributes(gc, line_width, line_style, cap_style, join_style)
        self.attr_lock.lock
        begin
          __gdk_gc_set_line_attributes(gc, line_width, line_style, cap_style, join_style)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1stipple, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gdk_gc_set_stipple(gc, stipple)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1stipple, JNI.env, self.jni_id, gc, stipple)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gdk_gc_set_stipple(gc, stipple)
        self.attr_lock.lock
        begin
          __gdk_gc_set_stipple(gc, stipple)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1subwindow, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gdk_gc_set_subwindow(gc, mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1subwindow, JNI.env, self.jni_id, gc, mode)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gdk_gc_set_subwindow(gc, mode)
        self.attr_lock.lock
        begin
          __gdk_gc_set_subwindow(gc, mode)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1tile, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gdk_gc_set_tile(gc, tile)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1tile, JNI.env, self.jni_id, gc, tile)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gdk_gc_set_tile(gc, tile)
        self.attr_lock.lock
        begin
          __gdk_gc_set_tile(gc, tile)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1ts_1origin, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_gc_set_ts_origin(gc, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1ts_1origin, JNI.env, self.jni_id, gc, x, y)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_gc_set_ts_origin(gc, x, y)
        self.attr_lock.lock
        begin
          __gdk_gc_set_ts_origin(gc, x, y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1values, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, GdkGCValues, ::Java::Int] }
      def __gdk_gc_set_values(gc, values, values_mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1values, JNI.env, self.jni_id, gc, values.jni_id, values_mask)
      end
      
      typesig { [::Java::Int, GdkGCValues, ::Java::Int] }
      def gdk_gc_set_values(gc, values, values_mask)
        self.attr_lock.lock
        begin
          __gdk_gc_set_values(gc, values, values_mask)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1keyboard_1ungrab, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gdk_keyboard_ungrab(time)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1keyboard_1ungrab, JNI.env, self.jni_id, time)
      end
      
      typesig { [::Java::Int] }
      def gdk_keyboard_ungrab(time)
        self.attr_lock.lock
        begin
          __gdk_keyboard_ungrab(time)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1keymap_1get_1default, [:pointer, :long], :int32
      typesig { [] }
      def __gdk_keymap_get_default
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1keymap_1get_1default, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_keymap_get_default
        self.attr_lock.lock
        begin
          return __gdk_keymap_get_default
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1keymap_1translate_1keyboard_1state, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :long, :long, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gdk_keymap_translate_keyboard_state(keymap, hardware_keycode, state, group, keyval, effective_group, level, consumed_modifiers)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1keymap_1translate_1keyboard_1state, JNI.env, self.jni_id, keymap, hardware_keycode, state, group, keyval.jni_id, effective_group.jni_id, level.jni_id, consumed_modifiers.jni_id) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gdk_keymap_translate_keyboard_state(keymap, hardware_keycode, state, group, keyval, effective_group, level, consumed_modifiers)
        self.attr_lock.lock
        begin
          return __gdk_keymap_translate_keyboard_state(keymap, hardware_keycode, state, group, keyval, effective_group, level, consumed_modifiers)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1keyval_1to_1lower, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_keyval_to_lower(keyval)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1keyval_1to_1lower, JNI.env, self.jni_id, keyval)
      end
      
      typesig { [::Java::Int] }
      def gdk_keyval_to_lower(keyval)
        self.attr_lock.lock
        begin
          return __gdk_keyval_to_lower(keyval)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1keyval_1to_1unicode, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_keyval_to_unicode(keyval)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1keyval_1to_1unicode, JNI.env, self.jni_id, keyval)
      end
      
      typesig { [::Java::Int] }
      def gdk_keyval_to_unicode(keyval)
        self.attr_lock.lock
        begin
          return __gdk_keyval_to_unicode(keyval)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pango_1context_1get, [:pointer, :long], :int32
      typesig { [] }
      def __gdk_pango_context_get
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pango_1context_1get, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_pango_context_get
        self.attr_lock.lock
        begin
          return __gdk_pango_context_get
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pango_1context_1set_1colormap, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gdk_pango_context_set_colormap(context, colormap)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pango_1context_1set_1colormap, JNI.env, self.jni_id, context, colormap)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gdk_pango_context_set_colormap(context, colormap)
        self.attr_lock.lock
        begin
          __gdk_pango_context_set_colormap(context, colormap)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pango_1layout_1get_1clip_1region, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      def __gdk_pango_layout_get_clip_region(layout, x_origin, y_origin, index_ranges, n_ranges)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pango_1layout_1get_1clip_1region, JNI.env, self.jni_id, layout, x_origin, y_origin, index_ranges.jni_id, n_ranges)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      def gdk_pango_layout_get_clip_region(layout, x_origin, y_origin, index_ranges, n_ranges)
        self.attr_lock.lock
        begin
          return __gdk_pango_layout_get_clip_region(layout, x_origin, y_origin, index_ranges, n_ranges)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1copy_1area, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_pixbuf_copy_area(src_pixbuf, src_x, src_y, width, height, dest_pixbuf, dest_x, dest_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1copy_1area, JNI.env, self.jni_id, src_pixbuf, src_x, src_y, width, height, dest_pixbuf, dest_x, dest_y)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_pixbuf_copy_area(src_pixbuf, src_x, src_y, width, height, dest_pixbuf, dest_x, dest_y)
        self.attr_lock.lock
        begin
          __gdk_pixbuf_copy_area(src_pixbuf, src_x, src_y, width, height, dest_pixbuf, dest_x, dest_y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1from_1drawable, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_pixbuf_get_from_drawable(dest, src, cmap, src_x, src_y, dest_x, dest_y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1from_1drawable, JNI.env, self.jni_id, dest, src, cmap, src_x, src_y, dest_x, dest_y, width, height)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_pixbuf_get_from_drawable(dest, src, cmap, src_x, src_y, dest_x, dest_y, width, height)
        self.attr_lock.lock
        begin
          return __gdk_pixbuf_get_from_drawable(dest, src, cmap, src_x, src_y, dest_x, dest_y, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1has_1alpha, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gdk_pixbuf_get_has_alpha(pixbuf)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1has_1alpha, JNI.env, self.jni_id, pixbuf) != 0
      end
      
      typesig { [::Java::Int] }
      def gdk_pixbuf_get_has_alpha(pixbuf)
        self.attr_lock.lock
        begin
          return __gdk_pixbuf_get_has_alpha(pixbuf)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1height, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_pixbuf_get_height(pixbuf)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1height, JNI.env, self.jni_id, pixbuf)
      end
      
      typesig { [::Java::Int] }
      def gdk_pixbuf_get_height(pixbuf)
        self.attr_lock.lock
        begin
          return __gdk_pixbuf_get_height(pixbuf)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1pixels, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_pixbuf_get_pixels(pixbuf)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1pixels, JNI.env, self.jni_id, pixbuf)
      end
      
      typesig { [::Java::Int] }
      def gdk_pixbuf_get_pixels(pixbuf)
        self.attr_lock.lock
        begin
          return __gdk_pixbuf_get_pixels(pixbuf)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1rowstride, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_pixbuf_get_rowstride(pixbuf)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1rowstride, JNI.env, self.jni_id, pixbuf)
      end
      
      typesig { [::Java::Int] }
      def gdk_pixbuf_get_rowstride(pixbuf)
        self.attr_lock.lock
        begin
          return __gdk_pixbuf_get_rowstride(pixbuf)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1width, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_pixbuf_get_width(pixbuf)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1width, JNI.env, self.jni_id, pixbuf)
      end
      
      typesig { [::Java::Int] }
      def gdk_pixbuf_get_width(pixbuf)
        self.attr_lock.lock
        begin
          return __gdk_pixbuf_get_width(pixbuf)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1loader_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gdk_pixbuf_loader_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1loader_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_pixbuf_loader_new
        self.attr_lock.lock
        begin
          return __gdk_pixbuf_loader_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1loader_1close, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def __gdk_pixbuf_loader_close(loader, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1loader_1close, JNI.env, self.jni_id, loader, error.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def gdk_pixbuf_loader_close(loader, error)
        self.attr_lock.lock
        begin
          return __gdk_pixbuf_loader_close(loader, error)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1loader_1get_1pixbuf, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_pixbuf_loader_get_pixbuf(loader)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1loader_1get_1pixbuf, JNI.env, self.jni_id, loader)
      end
      
      typesig { [::Java::Int] }
      def gdk_pixbuf_loader_get_pixbuf(loader)
        self.attr_lock.lock
        begin
          return __gdk_pixbuf_loader_get_pixbuf(loader)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1loader_1write, [:pointer, :long, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def __gdk_pixbuf_loader_write(loader, buffer, count, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1loader_1write, JNI.env, self.jni_id, loader, buffer, count, error.jni_id) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def gdk_pixbuf_loader_write(loader, buffer, count, error)
        self.attr_lock.lock
        begin
          return __gdk_pixbuf_loader_write(loader, buffer, count, error)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1new, [:pointer, :long, :int32, :int8, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_pixbuf_new(colorspace, has_alpha, bits_per_sample, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1new, JNI.env, self.jni_id, colorspace, has_alpha ? 1 : 0, bits_per_sample, width, height)
      end
      
      typesig { [::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_pixbuf_new(colorspace, has_alpha, bits_per_sample, width, height)
        self.attr_lock.lock
        begin
          return __gdk_pixbuf_new(colorspace, has_alpha, bits_per_sample, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1new_1from_1file, [:pointer, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      def __gdk_pixbuf_new_from_file(filename, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1new_1from_1file, JNI.env, self.jni_id, filename.jni_id, error.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      def gdk_pixbuf_new_from_file(filename, error)
        self.attr_lock.lock
        begin
          return __gdk_pixbuf_new_from_file(filename, error)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1render_1to_1drawable, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_pixbuf_render_to_drawable(pixbuf, drawable, gc, src_x, src_y, dest_x, dest_y, width, height, dither, x_dither, y_dither)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1render_1to_1drawable, JNI.env, self.jni_id, pixbuf, drawable, gc, src_x, src_y, dest_x, dest_y, width, height, dither, x_dither, y_dither)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_pixbuf_render_to_drawable(pixbuf, drawable, gc, src_x, src_y, dest_x, dest_y, width, height, dither, x_dither, y_dither)
        self.attr_lock.lock
        begin
          __gdk_pixbuf_render_to_drawable(pixbuf, drawable, gc, src_x, src_y, dest_x, dest_y, width, height, dither, x_dither, y_dither)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1render_1to_1drawable_1alpha, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_pixbuf_render_to_drawable_alpha(pixbuf, drawable, src_x, src_y, dest_x, dest_y, width, height, alpha_mode, alpha_threshold, dither, x_dither, y_dither)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1render_1to_1drawable_1alpha, JNI.env, self.jni_id, pixbuf, drawable, src_x, src_y, dest_x, dest_y, width, height, alpha_mode, alpha_threshold, dither, x_dither, y_dither)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_pixbuf_render_to_drawable_alpha(pixbuf, drawable, src_x, src_y, dest_x, dest_y, width, height, alpha_mode, alpha_threshold, dither, x_dither, y_dither)
        self.attr_lock.lock
        begin
          __gdk_pixbuf_render_to_drawable_alpha(pixbuf, drawable, src_x, src_y, dest_x, dest_y, width, height, alpha_mode, alpha_threshold, dither, x_dither, y_dither)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1render_1pixmap_1and_1mask, [:pointer, :long, :int32, :long, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), ::Java::Int] }
      def __gdk_pixbuf_render_pixmap_and_mask(pixbuf, pixmap_return, mask_return, alpha_threshold)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1render_1pixmap_1and_1mask, JNI.env, self.jni_id, pixbuf, pixmap_return.jni_id, mask_return.jni_id, alpha_threshold)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), ::Java::Int] }
      def gdk_pixbuf_render_pixmap_and_mask(pixbuf, pixmap_return, mask_return, alpha_threshold)
        self.attr_lock.lock
        begin
          __gdk_pixbuf_render_pixmap_and_mask(pixbuf, pixmap_return, mask_return, alpha_threshold)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1save_1to_1buffer, [:pointer, :long, :int32, :long, :long, :long, :long, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Byte), Array.typed(::Java::Int), Array.typed(::Java::Byte)] }
      def __gdk_pixbuf_save_to_buffer(pixbuf, buffer, buffer_size, type, error, terminate)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1save_1to_1buffer, JNI.env, self.jni_id, pixbuf, buffer.jni_id, buffer_size.jni_id, type.jni_id, error.jni_id, terminate.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Byte), Array.typed(::Java::Int), Array.typed(::Java::Byte)] }
      def gdk_pixbuf_save_to_buffer(pixbuf, buffer, buffer_size, type, error, terminate)
        self.attr_lock.lock
        begin
          return __gdk_pixbuf_save_to_buffer(pixbuf, buffer, buffer_size, type, error, terminate)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1scale, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :double, :double, :double, :double, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Int] }
      def __gdk_pixbuf_scale(src, dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1scale, JNI.env, self.jni_id, src, dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Int] }
      def gdk_pixbuf_scale(src, dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type)
        self.attr_lock.lock
        begin
          __gdk_pixbuf_scale(src, dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1scale_1simple, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_pixbuf_scale_simple(src, dest_width, dest_height, interp_type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1scale_1simple, JNI.env, self.jni_id, src, dest_width, dest_height, interp_type)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_pixbuf_scale_simple(src, dest_width, dest_height, interp_type)
        self.attr_lock.lock
        begin
          return __gdk_pixbuf_scale_simple(src, dest_width, dest_height, interp_type)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixmap_1new, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_pixmap_new(window, width, height, depth)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixmap_1new, JNI.env, self.jni_id, window, width, height, depth)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_pixmap_new(window, width, height, depth)
        self.attr_lock.lock
        begin
          return __gdk_pixmap_new(window, width, height, depth)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pointer_1grab, [:pointer, :long, :int32, :int8, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_pointer_grab(window, owner_events, event_mask, confine_to, cursor, time)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pointer_1grab, JNI.env, self.jni_id, window, owner_events ? 1 : 0, event_mask, confine_to, cursor, time)
      end
      
      typesig { [::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_pointer_grab(window, owner_events, event_mask, confine_to, cursor, time)
        self.attr_lock.lock
        begin
          return __gdk_pointer_grab(window, owner_events, event_mask, confine_to, cursor, time)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pointer_1is_1grabbed, [:pointer, :long], :int8
      typesig { [] }
      def __gdk_pointer_is_grabbed
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pointer_1is_1grabbed, JNI.env, self.jni_id) != 0
      end
      
      typesig { [] }
      def gdk_pointer_is_grabbed
        self.attr_lock.lock
        begin
          return __gdk_pointer_is_grabbed
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pointer_1ungrab, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gdk_pointer_ungrab(time)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pointer_1ungrab, JNI.env, self.jni_id, time)
      end
      
      typesig { [::Java::Int] }
      def gdk_pointer_ungrab(time)
        self.attr_lock.lock
        begin
          __gdk_pointer_ungrab(time)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1property_1get, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :long, :long, :long, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gdk_property_get(window, property, type, offset, length_, pdelete, actual_property_type, actual_format, actual_length, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1property_1get, JNI.env, self.jni_id, window, property, type, offset, length_, pdelete, actual_property_type.jni_id, actual_format.jni_id, actual_length.jni_id, data.jni_id) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gdk_property_get(window, property, type, offset, length_, pdelete, actual_property_type, actual_format, actual_length, data)
        self.attr_lock.lock
        begin
          return __gdk_property_get(window, property, type, offset, length_, pdelete, actual_property_type, actual_format, actual_length, data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1destroy, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gdk_region_destroy(region)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1destroy, JNI.env, self.jni_id, region)
      end
      
      typesig { [::Java::Int] }
      def gdk_region_destroy(region)
        self.attr_lock.lock
        begin
          __gdk_region_destroy(region)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1empty, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gdk_region_empty(region)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1empty, JNI.env, self.jni_id, region) != 0
      end
      
      typesig { [::Java::Int] }
      def gdk_region_empty(region)
        self.attr_lock.lock
        begin
          return __gdk_region_empty(region)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1get_1clipbox, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkRectangle] }
      def __gdk_region_get_clipbox(region, rectangle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1get_1clipbox, JNI.env, self.jni_id, region, rectangle.jni_id)
      end
      
      typesig { [::Java::Int, GdkRectangle] }
      def gdk_region_get_clipbox(region, rectangle)
        self.attr_lock.lock
        begin
          __gdk_region_get_clipbox(region, rectangle)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1get_1rectangles, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gdk_region_get_rectangles(region, rectangles, n_rectangles)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1get_1rectangles, JNI.env, self.jni_id, region, rectangles.jni_id, n_rectangles.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gdk_region_get_rectangles(region, rectangles, n_rectangles)
        self.attr_lock.lock
        begin
          __gdk_region_get_rectangles(region, rectangles, n_rectangles)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1intersect, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gdk_region_intersect(source1, source2)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1intersect, JNI.env, self.jni_id, source1, source2)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gdk_region_intersect(source1, source2)
        self.attr_lock.lock
        begin
          __gdk_region_intersect(source1, source2)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gdk_region_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_region_new
        self.attr_lock.lock
        begin
          return __gdk_region_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1offset, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_region_offset(region, dx, dy)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1offset, JNI.env, self.jni_id, region, dx, dy)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_region_offset(region, dx, dy)
        self.attr_lock.lock
        begin
          __gdk_region_offset(region, dx, dy)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1point_1in, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_region_point_in(region, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1point_1in, JNI.env, self.jni_id, region, x, y) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_region_point_in(region, x, y)
        self.attr_lock.lock
        begin
          return __gdk_region_point_in(region, x, y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1polygon, [:pointer, :long, :long, :int32, :int32], :int32
      typesig { [Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
      def __gdk_region_polygon(points, npoints, fill_rule)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1polygon, JNI.env, self.jni_id, points.jni_id, npoints, fill_rule)
      end
      
      typesig { [Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
      def gdk_region_polygon(points, npoints, fill_rule)
        self.attr_lock.lock
        begin
          return __gdk_region_polygon(points, npoints, fill_rule)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1rectangle, [:pointer, :long, :long], :int32
      typesig { [GdkRectangle] }
      def __gdk_region_rectangle(rectangle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1rectangle, JNI.env, self.jni_id, rectangle.jni_id)
      end
      
      typesig { [GdkRectangle] }
      def gdk_region_rectangle(rectangle)
        self.attr_lock.lock
        begin
          return __gdk_region_rectangle(rectangle)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1rect_1in, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, GdkRectangle] }
      def __gdk_region_rect_in(region, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1rect_1in, JNI.env, self.jni_id, region, rect.jni_id)
      end
      
      typesig { [::Java::Int, GdkRectangle] }
      def gdk_region_rect_in(region, rect)
        self.attr_lock.lock
        begin
          return __gdk_region_rect_in(region, rect)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1subtract, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gdk_region_subtract(source1, source2)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1subtract, JNI.env, self.jni_id, source1, source2)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gdk_region_subtract(source1, source2)
        self.attr_lock.lock
        begin
          __gdk_region_subtract(source1, source2)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1union, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gdk_region_union(source1, source2)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1union, JNI.env, self.jni_id, source1, source2)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gdk_region_union(source1, source2)
        self.attr_lock.lock
        begin
          __gdk_region_union(source1, source2)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1union_1with_1rect, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkRectangle] }
      def __gdk_region_union_with_rect(region, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1union_1with_1rect, JNI.env, self.jni_id, region, rect.jni_id)
      end
      
      typesig { [::Java::Int, GdkRectangle] }
      def gdk_region_union_with_rect(region, rect)
        self.attr_lock.lock
        begin
          __gdk_region_union_with_rect(region, rect)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1rgb_1init, [:pointer, :long], :void
      typesig { [] }
      def __gdk_rgb_init
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1rgb_1init, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_rgb_init
        self.attr_lock.lock
        begin
          __gdk_rgb_init
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1default, [:pointer, :long], :int32
      typesig { [] }
      def __gdk_screen_get_default
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1default, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_screen_get_default
        self.attr_lock.lock
        begin
          return __gdk_screen_get_default
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1monitor_1at_1point, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_screen_get_monitor_at_point(screen, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1monitor_1at_1point, JNI.env, self.jni_id, screen, x, y)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_screen_get_monitor_at_point(screen, x, y)
        self.attr_lock.lock
        begin
          return __gdk_screen_get_monitor_at_point(screen, x, y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1monitor_1at_1window, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __gdk_screen_get_monitor_at_window(screen, window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1monitor_1at_1window, JNI.env, self.jni_id, screen, window)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gdk_screen_get_monitor_at_window(screen, window)
        self.attr_lock.lock
        begin
          return __gdk_screen_get_monitor_at_window(screen, window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1monitor_1geometry, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkRectangle] }
      def __gdk_screen_get_monitor_geometry(screen, monitor_num, dest)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1monitor_1geometry, JNI.env, self.jni_id, screen, monitor_num, dest.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkRectangle] }
      def gdk_screen_get_monitor_geometry(screen, monitor_num, dest)
        self.attr_lock.lock
        begin
          __gdk_screen_get_monitor_geometry(screen, monitor_num, dest)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1n_1monitors, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_screen_get_n_monitors(screen)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1n_1monitors, JNI.env, self.jni_id, screen)
      end
      
      typesig { [::Java::Int] }
      def gdk_screen_get_n_monitors(screen)
        self.attr_lock.lock
        begin
          return __gdk_screen_get_n_monitors(screen)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1number, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_screen_get_number(screen)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1number, JNI.env, self.jni_id, screen)
      end
      
      typesig { [::Java::Int] }
      def gdk_screen_get_number(screen)
        self.attr_lock.lock
        begin
          return __gdk_screen_get_number(screen)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1height, [:pointer, :long], :int32
      typesig { [] }
      def __gdk_screen_height
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1height, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_screen_height
        self.attr_lock.lock
        begin
          return __gdk_screen_height
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1width, [:pointer, :long], :int32
      typesig { [] }
      def __gdk_screen_width
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1width, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_screen_width
        self.attr_lock.lock
        begin
          return __gdk_screen_width
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1width_1mm, [:pointer, :long], :int32
      typesig { [] }
      def __gdk_screen_width_mm
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1width_1mm, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_screen_width_mm
        self.attr_lock.lock
        begin
          return __gdk_screen_width_mm
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1set_1program_1class, [:pointer, :long, :long], :void
      typesig { [Array.typed(::Java::Byte)] }
      def __gdk_set_program_class(program_class)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1set_1program_1class, JNI.env, self.jni_id, program_class.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gdk_set_program_class(program_class)
        self.attr_lock.lock
        begin
          __gdk_set_program_class(program_class)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1utf8_1to_1compound_1text, [:pointer, :long, :long, :long, :long, :long, :long], :int8
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gdk_utf8_to_compound_text(str, encoding, format, ctext, length_)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1utf8_1to_1compound_1text, JNI.env, self.jni_id, str.jni_id, encoding.jni_id, format.jni_id, ctext.jni_id, length_.jni_id) != 0
      end
      
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gdk_utf8_to_compound_text(str, encoding, format, ctext, length_)
        self.attr_lock.lock
        begin
          return __gdk_utf8_to_compound_text(str, encoding, format, ctext, length_)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1utf8_1to_1string_1target, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __gdk_utf8_to_string_target(str)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1utf8_1to_1string_1target, JNI.env, self.jni_id, str.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gdk_utf8_to_string_target(str)
        self.attr_lock.lock
        begin
          return __gdk_utf8_to_string_target(str)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1text_1property_1to_1utf8_1list, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def __gdk_text_property_to_utf8_list(encoding, format, text, length_, list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1text_1property_1to_1utf8_1list, JNI.env, self.jni_id, encoding, format, text, length_, list.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def gdk_text_property_to_utf8_list(encoding, format, text, length_, list)
        self.attr_lock.lock
        begin
          return __gdk_text_property_to_utf8_list(encoding, format, text, length_, list)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltip_1trigger_1tooltip_1query, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_tooltip_trigger_tooltip_query(display)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltip_1trigger_1tooltip_1query, JNI.env, self.jni_id, display)
      end
      
      typesig { [::Java::Int] }
      def gtk_tooltip_trigger_tooltip_query(display)
        self.attr_lock.lock
        begin
          __gtk_tooltip_trigger_tooltip_query(display)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1unicode_1to_1keyval, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_unicode_to_keyval(wc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1unicode_1to_1keyval, JNI.env, self.jni_id, wc)
      end
      
      typesig { [::Java::Int] }
      def gdk_unicode_to_keyval(wc)
        self.attr_lock.lock
        begin
          return __gdk_unicode_to_keyval(wc)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1visual_1get_1system, [:pointer, :long], :int32
      typesig { [] }
      def __gdk_visual_get_system
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1visual_1get_1system, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_visual_get_system
        self.attr_lock.lock
        begin
          return __gdk_visual_get_system
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1at_1pointer, [:pointer, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gdk_window_at_pointer(win_x, win_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1at_1pointer, JNI.env, self.jni_id, win_x.jni_id, win_y.jni_id)
      end
      
      typesig { [Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gdk_window_at_pointer(win_x, win_y)
        self.attr_lock.lock
        begin
          return __gdk_window_at_pointer(win_x, win_y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1begin_1paint_1rect, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkRectangle] }
      def __gdk_window_begin_paint_rect(window, rectangle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1begin_1paint_1rect, JNI.env, self.jni_id, window, rectangle.jni_id)
      end
      
      typesig { [::Java::Int, GdkRectangle] }
      def gdk_window_begin_paint_rect(window, rectangle)
        self.attr_lock.lock
        begin
          __gdk_window_begin_paint_rect(window, rectangle)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1clear_1area, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_window_clear_area(window, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1clear_1area, JNI.env, self.jni_id, window, x, y, width, height)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_window_clear_area(window, x, y, width, height)
        self.attr_lock.lock
        begin
          __gdk_window_clear_area(window, x, y, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1destroy, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gdk_window_destroy(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1destroy, JNI.env, self.jni_id, window)
      end
      
      typesig { [::Java::Int] }
      def gdk_window_destroy(window)
        self.attr_lock.lock
        begin
          __gdk_window_destroy(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1end_1paint, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gdk_window_end_paint(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1end_1paint, JNI.env, self.jni_id, window)
      end
      
      typesig { [::Java::Int] }
      def gdk_window_end_paint(window)
        self.attr_lock.lock
        begin
          __gdk_window_end_paint(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1children, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_window_get_children(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1children, JNI.env, self.jni_id, window)
      end
      
      typesig { [::Java::Int] }
      def gdk_window_get_children(window)
        self.attr_lock.lock
        begin
          return __gdk_window_get_children(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1events, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_window_get_events(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1events, JNI.env, self.jni_id, window)
      end
      
      typesig { [::Java::Int] }
      def gdk_window_get_events(window)
        self.attr_lock.lock
        begin
          return __gdk_window_get_events(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1focus, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gdk_window_focus(window, timestamp)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1focus, JNI.env, self.jni_id, window, timestamp)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gdk_window_focus(window, timestamp)
        self.attr_lock.lock
        begin
          __gdk_window_focus(window, timestamp)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1freeze_1updates, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gdk_window_freeze_updates(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1freeze_1updates, JNI.env, self.jni_id, window)
      end
      
      typesig { [::Java::Int] }
      def gdk_window_freeze_updates(window)
        self.attr_lock.lock
        begin
          __gdk_window_freeze_updates(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1frame_1extents, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkRectangle] }
      def __gdk_window_get_frame_extents(window, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1frame_1extents, JNI.env, self.jni_id, window, rect.jni_id)
      end
      
      typesig { [::Java::Int, GdkRectangle] }
      def gdk_window_get_frame_extents(window, rect)
        self.attr_lock.lock
        begin
          __gdk_window_get_frame_extents(window, rect)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1internal_1paint_1info, [:pointer, :long, :int32, :long, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gdk_window_get_internal_paint_info(window, real_drawable, x_offset, y_offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1internal_1paint_1info, JNI.env, self.jni_id, window, real_drawable.jni_id, x_offset.jni_id, y_offset.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gdk_window_get_internal_paint_info(window, real_drawable, x_offset, y_offset)
        self.attr_lock.lock
        begin
          __gdk_window_get_internal_paint_info(window, real_drawable, x_offset, y_offset)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1origin, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gdk_window_get_origin(window, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1origin, JNI.env, self.jni_id, window, x.jni_id, y.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gdk_window_get_origin(window, x, y)
        self.attr_lock.lock
        begin
          return __gdk_window_get_origin(window, x, y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1parent, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_window_get_parent(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1parent, JNI.env, self.jni_id, window)
      end
      
      typesig { [::Java::Int] }
      def gdk_window_get_parent(window)
        self.attr_lock.lock
        begin
          return __gdk_window_get_parent(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1pointer, [:pointer, :long, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gdk_window_get_pointer(window, x, y, mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1pointer, JNI.env, self.jni_id, window, x.jni_id, y.jni_id, mask.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gdk_window_get_pointer(window, x, y, mask)
        self.attr_lock.lock
        begin
          return __gdk_window_get_pointer(window, x, y, mask)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1position, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gdk_window_get_position(window, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1position, JNI.env, self.jni_id, window, x.jni_id, y.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gdk_window_get_position(window, x, y)
        self.attr_lock.lock
        begin
          __gdk_window_get_position(window, x, y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1user_1data, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def __gdk_window_get_user_data(window, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1user_1data, JNI.env, self.jni_id, window, data.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def gdk_window_get_user_data(window, data)
        self.attr_lock.lock
        begin
          __gdk_window_get_user_data(window, data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1hide, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gdk_window_hide(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1hide, JNI.env, self.jni_id, window)
      end
      
      typesig { [::Java::Int] }
      def gdk_window_hide(window)
        self.attr_lock.lock
        begin
          __gdk_window_hide(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1invalidate_1rect, [:pointer, :long, :int32, :long, :int8], :void
      typesig { [::Java::Int, GdkRectangle, ::Java::Boolean] }
      def __gdk_window_invalidate_rect(window, rectangle, invalidate_children)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1invalidate_1rect, JNI.env, self.jni_id, window, rectangle.jni_id, invalidate_children ? 1 : 0)
      end
      
      typesig { [::Java::Int, GdkRectangle, ::Java::Boolean] }
      def gdk_window_invalidate_rect(window, rectangle, invalidate_children)
        self.attr_lock.lock
        begin
          __gdk_window_invalidate_rect(window, rectangle, invalidate_children)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1invalidate_1region, [:pointer, :long, :int32, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      def __gdk_window_invalidate_region(window, region, invalidate_children)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1invalidate_1region, JNI.env, self.jni_id, window, region, invalidate_children ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      def gdk_window_invalidate_region(window, region, invalidate_children)
        self.attr_lock.lock
        begin
          __gdk_window_invalidate_region(window, region, invalidate_children)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1is_1visible, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gdk_window_is_visible(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1is_1visible, JNI.env, self.jni_id, window) != 0
      end
      
      typesig { [::Java::Int] }
      def gdk_window_is_visible(window)
        self.attr_lock.lock
        begin
          return __gdk_window_is_visible(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1move, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_window_move(window, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1move, JNI.env, self.jni_id, window, x, y)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_window_move(window, x, y)
        self.attr_lock.lock
        begin
          __gdk_window_move(window, x, y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1new, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, GdkWindowAttr, ::Java::Int] }
      def __gdk_window_new(parent, attributes, attributes_mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1new, JNI.env, self.jni_id, parent, attributes.jni_id, attributes_mask)
      end
      
      typesig { [::Java::Int, GdkWindowAttr, ::Java::Int] }
      def gdk_window_new(parent, attributes, attributes_mask)
        self.attr_lock.lock
        begin
          return __gdk_window_new(parent, attributes, attributes_mask)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1lower, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gdk_window_lower(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1lower, JNI.env, self.jni_id, window)
      end
      
      typesig { [::Java::Int] }
      def gdk_window_lower(window)
        self.attr_lock.lock
        begin
          __gdk_window_lower(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1process_1all_1updates, [:pointer, :long], :void
      typesig { [] }
      def __gdk_window_process_all_updates
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1process_1all_1updates, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_window_process_all_updates
        self.attr_lock.lock
        begin
          __gdk_window_process_all_updates
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1process_1updates, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gdk_window_process_updates(window, update_children)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1process_1updates, JNI.env, self.jni_id, window, update_children ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gdk_window_process_updates(window, update_children)
        self.attr_lock.lock
        begin
          __gdk_window_process_updates(window, update_children)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1raise, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gdk_window_raise(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1raise, JNI.env, self.jni_id, window)
      end
      
      typesig { [::Java::Int] }
      def gdk_window_raise(window)
        self.attr_lock.lock
        begin
          __gdk_window_raise(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1resize, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_window_resize(window, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1resize, JNI.env, self.jni_id, window, width, height)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_window_resize(window, width, height)
        self.attr_lock.lock
        begin
          __gdk_window_resize(window, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1scroll, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_window_scroll(window, dx, dy)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1scroll, JNI.env, self.jni_id, window, dx, dy)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_window_scroll(window, dx, dy)
        self.attr_lock.lock
        begin
          __gdk_window_scroll(window, dx, dy)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1accept_1focus, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gdk_window_set_accept_focus(window, accept_focus)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1accept_1focus, JNI.env, self.jni_id, window, accept_focus ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gdk_window_set_accept_focus(window, accept_focus)
        self.attr_lock.lock
        begin
          __gdk_window_set_accept_focus(window, accept_focus)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1back_1pixmap, [:pointer, :long, :int32, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      def __gdk_window_set_back_pixmap(window, pixmap, parent_relative)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1back_1pixmap, JNI.env, self.jni_id, window, pixmap, parent_relative ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      def gdk_window_set_back_pixmap(window, pixmap, parent_relative)
        self.attr_lock.lock
        begin
          __gdk_window_set_back_pixmap(window, pixmap, parent_relative)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1cursor, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gdk_window_set_cursor(window, cursor)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1cursor, JNI.env, self.jni_id, window, cursor)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gdk_window_set_cursor(window, cursor)
        self.attr_lock.lock
        begin
          __gdk_window_set_cursor(window, cursor)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1debug_1updates, [:pointer, :long, :int8], :void
      typesig { [::Java::Boolean] }
      def __gdk_window_set_debug_updates(setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1debug_1updates, JNI.env, self.jni_id, setting ? 1 : 0)
      end
      
      typesig { [::Java::Boolean] }
      def gdk_window_set_debug_updates(setting)
        self.attr_lock.lock
        begin
          __gdk_window_set_debug_updates(setting)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1decorations, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gdk_window_set_decorations(window, decorations)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1decorations, JNI.env, self.jni_id, window, decorations)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gdk_window_set_decorations(window, decorations)
        self.attr_lock.lock
        begin
          __gdk_window_set_decorations(window, decorations)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1events, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gdk_window_set_events(window, event_mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1events, JNI.env, self.jni_id, window, event_mask)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gdk_window_set_events(window, event_mask)
        self.attr_lock.lock
        begin
          __gdk_window_set_events(window, event_mask)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1icon, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_window_set_icon(window, icon_window, pixmap, mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1icon, JNI.env, self.jni_id, window, icon_window, pixmap, mask)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_window_set_icon(window, icon_window, pixmap, mask)
        self.attr_lock.lock
        begin
          __gdk_window_set_icon(window, icon_window, pixmap, mask)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1icon_1list, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gdk_window_set_icon_list(window, pixbufs)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1icon_1list, JNI.env, self.jni_id, window, pixbufs)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gdk_window_set_icon_list(window, pixbufs)
        self.attr_lock.lock
        begin
          __gdk_window_set_icon_list(window, pixbufs)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1keep_1above, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gdk_window_set_keep_above(window, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1keep_1above, JNI.env, self.jni_id, window, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gdk_window_set_keep_above(window, setting)
        self.attr_lock.lock
        begin
          __gdk_window_set_keep_above(window, setting)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1override_1redirect, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gdk_window_set_override_redirect(window, override_redirect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1override_1redirect, JNI.env, self.jni_id, window, override_redirect ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gdk_window_set_override_redirect(window, override_redirect)
        self.attr_lock.lock
        begin
          __gdk_window_set_override_redirect(window, override_redirect)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1user_1data, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gdk_window_set_user_data(window, user_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1user_1data, JNI.env, self.jni_id, window, user_data)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gdk_window_set_user_data(window, user_data)
        self.attr_lock.lock
        begin
          __gdk_window_set_user_data(window, user_data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1shape_1combine_1region, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gdk_window_shape_combine_region(window, shape_region, offset_x, offset_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1shape_1combine_1region, JNI.env, self.jni_id, window, shape_region, offset_x, offset_y)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gdk_window_shape_combine_region(window, shape_region, offset_x, offset_y)
        self.attr_lock.lock
        begin
          __gdk_window_shape_combine_region(window, shape_region, offset_x, offset_y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1show, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gdk_window_show(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1show, JNI.env, self.jni_id, window)
      end
      
      typesig { [::Java::Int] }
      def gdk_window_show(window)
        self.attr_lock.lock
        begin
          __gdk_window_show(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1show_1unraised, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gdk_window_show_unraised(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1show_1unraised, JNI.env, self.jni_id, window)
      end
      
      typesig { [::Java::Int] }
      def gdk_window_show_unraised(window)
        self.attr_lock.lock
        begin
          __gdk_window_show_unraised(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1thaw_1updates, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gdk_window_thaw_updates(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1thaw_1updates, JNI.env, self.jni_id, window)
      end
      
      typesig { [::Java::Int] }
      def gdk_window_thaw_updates(window)
        self.attr_lock.lock
        begin
          __gdk_window_thaw_updates(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1accel_1group_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_accel_group_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1accel_1group_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_accel_group_new
        self.attr_lock.lock
        begin
          return __gtk_accel_group_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1accel_1groups_1activate, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_accel_groups_activate(accel_group, accel_key, accel_mods)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1accel_1groups_1activate, JNI.env, self.jni_id, accel_group, accel_key, accel_mods) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_accel_groups_activate(accel_group, accel_key, accel_mods)
        self.attr_lock.lock
        begin
          return __gtk_accel_groups_activate(accel_group, accel_key, accel_mods)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1accel_1label_1set_1accel_1widget, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_accel_label_set_accel_widget(accel_label, accel_widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1accel_1label_1set_1accel_1widget, JNI.env, self.jni_id, accel_label, accel_widget)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_accel_label_set_accel_widget(accel_label, accel_widget)
        self.attr_lock.lock
        begin
          __gtk_accel_label_set_accel_widget(accel_label, accel_widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1adjustment_1changed, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_adjustment_changed(adjustment)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1adjustment_1changed, JNI.env, self.jni_id, adjustment)
      end
      
      typesig { [::Java::Int] }
      def gtk_adjustment_changed(adjustment)
        self.attr_lock.lock
        begin
          __gtk_adjustment_changed(adjustment)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1adjustment_1new, [:pointer, :long, :double, :double, :double, :double, :double, :double], :int32
      typesig { [::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      def __gtk_adjustment_new(value, lower, upper, step_increment, page_increment, page_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1adjustment_1new, JNI.env, self.jni_id, value, lower, upper, step_increment, page_increment, page_size)
      end
      
      typesig { [::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      def gtk_adjustment_new(value, lower, upper, step_increment, page_increment, page_size)
        self.attr_lock.lock
        begin
          return __gtk_adjustment_new(value, lower, upper, step_increment, page_increment, page_size)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1adjustment_1set_1value, [:pointer, :long, :int32, :double], :void
      typesig { [::Java::Int, ::Java::Double] }
      def __gtk_adjustment_set_value(adjustment, value)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1adjustment_1set_1value, JNI.env, self.jni_id, adjustment, value)
      end
      
      typesig { [::Java::Int, ::Java::Double] }
      def gtk_adjustment_set_value(adjustment, value)
        self.attr_lock.lock
        begin
          __gtk_adjustment_set_value(adjustment, value)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1adjustment_1value_1changed, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_adjustment_value_changed(adjustment)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1adjustment_1value_1changed, JNI.env, self.jni_id, adjustment)
      end
      
      typesig { [::Java::Int] }
      def gtk_adjustment_value_changed(adjustment)
        self.attr_lock.lock
        begin
          __gtk_adjustment_value_changed(adjustment)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1arrow_1new, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_arrow_new(arrow_type, shadow_type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1arrow_1new, JNI.env, self.jni_id, arrow_type, shadow_type)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_arrow_new(arrow_type, shadow_type)
        self.attr_lock.lock
        begin
          return __gtk_arrow_new(arrow_type, shadow_type)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1arrow_1set, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_arrow_set(arrow, arrow_type, shadow_type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1arrow_1set, JNI.env, self.jni_id, arrow, arrow_type, shadow_type)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_arrow_set(arrow, arrow_type, shadow_type)
        self.attr_lock.lock
        begin
          __gtk_arrow_set(arrow, arrow_type, shadow_type)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1bin_1get_1child, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_bin_get_child(bin)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1bin_1get_1child, JNI.env, self.jni_id, bin)
      end
      
      typesig { [::Java::Int] }
      def gtk_bin_get_child(bin)
        self.attr_lock.lock
        begin
          return __gtk_bin_get_child(bin)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1box_1set_1spacing, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_box_set_spacing(box, spacing)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1box_1set_1spacing, JNI.env, self.jni_id, box, spacing)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_box_set_spacing(box, spacing)
        self.attr_lock.lock
        begin
          __gtk_box_set_spacing(box, spacing)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1box_1set_1child_1packing, [:pointer, :long, :int32, :int32, :int8, :int8, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Int, ::Java::Int] }
      def __gtk_box_set_child_packing(box, child, expand, fill, padding, pack_type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1box_1set_1child_1packing, JNI.env, self.jni_id, box, child, expand ? 1 : 0, fill ? 1 : 0, padding, pack_type)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Int, ::Java::Int] }
      def gtk_box_set_child_packing(box, child, expand, fill, padding, pack_type)
        self.attr_lock.lock
        begin
          __gtk_box_set_child_packing(box, child, expand, fill, padding, pack_type)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1button_1clicked, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_button_clicked(button)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1button_1clicked, JNI.env, self.jni_id, button)
      end
      
      typesig { [::Java::Int] }
      def gtk_button_clicked(button)
        self.attr_lock.lock
        begin
          __gtk_button_clicked(button)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1button_1get_1relief, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_button_get_relief(button)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1button_1get_1relief, JNI.env, self.jni_id, button)
      end
      
      typesig { [::Java::Int] }
      def gtk_button_get_relief(button)
        self.attr_lock.lock
        begin
          return __gtk_button_get_relief(button)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1button_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_button_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1button_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_button_new
        self.attr_lock.lock
        begin
          return __gtk_button_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1button_1set_1relief, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_button_set_relief(button, newstyle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1button_1set_1relief, JNI.env, self.jni_id, button, newstyle)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_button_set_relief(button, newstyle)
        self.attr_lock.lock
        begin
          __gtk_button_set_relief(button, newstyle)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_calendar_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_calendar_new
        self.attr_lock.lock
        begin
          return __gtk_calendar_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1select_1month, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_calendar_select_month(calendar, month, year)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1select_1month, JNI.env, self.jni_id, calendar, month, year) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_calendar_select_month(calendar, month, year)
        self.attr_lock.lock
        begin
          return __gtk_calendar_select_month(calendar, month, year)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1select_1day, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_calendar_select_day(calendar, day)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1select_1day, JNI.env, self.jni_id, calendar, day)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_calendar_select_day(calendar, day)
        self.attr_lock.lock
        begin
          __gtk_calendar_select_day(calendar, day)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1set_1display_1options, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_calendar_set_display_options(calendar, flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1set_1display_1options, JNI.env, self.jni_id, calendar, flags)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_calendar_set_display_options(calendar, flags)
        self.attr_lock.lock
        begin
          __gtk_calendar_set_display_options(calendar, flags)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1display_1options, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_calendar_display_options(calendar, flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1display_1options, JNI.env, self.jni_id, calendar, flags)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_calendar_display_options(calendar, flags)
        self.attr_lock.lock
        begin
          __gtk_calendar_display_options(calendar, flags)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1get_1date, [:pointer, :long, :int32, :long, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gtk_calendar_get_date(calendar, year, month, day)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1get_1date, JNI.env, self.jni_id, calendar, year.jni_id, month.jni_id, day.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gtk_calendar_get_date(calendar, year, month, day)
        self.attr_lock.lock
        begin
          __gtk_calendar_get_date(calendar, year, month, day)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1layout_1clear, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_cell_layout_clear(cell_layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1layout_1clear, JNI.env, self.jni_id, cell_layout)
      end
      
      typesig { [::Java::Int] }
      def gtk_cell_layout_clear(cell_layout)
        self.attr_lock.lock
        begin
          __gtk_cell_layout_clear(cell_layout)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1layout_1set_1attributes, [:pointer, :long, :int32, :int32, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      def __gtk_cell_layout_set_attributes(cell_layout, cell, attribute, column, sentinel)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1layout_1set_1attributes, JNI.env, self.jni_id, cell_layout, cell, attribute.jni_id, column, sentinel)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      def gtk_cell_layout_set_attributes(cell_layout, cell, attribute, column, sentinel)
        self.attr_lock.lock
        begin
          __gtk_cell_layout_set_attributes(cell_layout, cell, attribute, column, sentinel)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1layout_1pack_1start, [:pointer, :long, :int32, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      def __gtk_cell_layout_pack_start(cell_layout, cell, expand)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1layout_1pack_1start, JNI.env, self.jni_id, cell_layout, cell, expand ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      def gtk_cell_layout_pack_start(cell_layout, cell, expand)
        self.attr_lock.lock
        begin
          __gtk_cell_layout_pack_start(cell_layout, cell, expand)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1renderer_1get_1size, [:pointer, :long, :int32, :int32, :long, :long, :long, :long, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkRectangle, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gtk_cell_renderer_get_size(cell, widget, area, x_offset, y_offset, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1renderer_1get_1size, JNI.env, self.jni_id, cell, widget, area.jni_id, x_offset.jni_id, y_offset.jni_id, width.jni_id, height.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkRectangle, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gtk_cell_renderer_get_size(cell, widget, area, x_offset, y_offset, width, height)
        self.attr_lock.lock
        begin
          __gtk_cell_renderer_get_size(cell, widget, area, x_offset, y_offset, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1renderer_1pixbuf_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_cell_renderer_pixbuf_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1renderer_1pixbuf_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_cell_renderer_pixbuf_new
        self.attr_lock.lock
        begin
          return __gtk_cell_renderer_pixbuf_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1renderer_1text_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_cell_renderer_text_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1renderer_1text_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_cell_renderer_text_new
        self.attr_lock.lock
        begin
          return __gtk_cell_renderer_text_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1renderer_1toggle_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_cell_renderer_toggle_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1renderer_1toggle_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_cell_renderer_toggle_new
        self.attr_lock.lock
        begin
          return __gtk_cell_renderer_toggle_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1check_1button_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_check_button_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1check_1button_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_check_button_new
        self.attr_lock.lock
        begin
          return __gtk_check_button_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1check_1menu_1item_1get_1active, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_check_menu_item_get_active(check_menu_item)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1check_1menu_1item_1get_1active, JNI.env, self.jni_id, check_menu_item) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_check_menu_item_get_active(check_menu_item)
        self.attr_lock.lock
        begin
          return __gtk_check_menu_item_get_active(check_menu_item)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1check_1menu_1item_1new_1with_1label, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __gtk_check_menu_item_new_with_label(label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1check_1menu_1item_1new_1with_1label, JNI.env, self.jni_id, label.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gtk_check_menu_item_new_with_label(label)
        self.attr_lock.lock
        begin
          return __gtk_check_menu_item_new_with_label(label)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1check_1menu_1item_1set_1active, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_check_menu_item_set_active(wid, active)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1check_1menu_1item_1set_1active, JNI.env, self.jni_id, wid, active ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_check_menu_item_set_active(wid, active)
        self.attr_lock.lock
        begin
          __gtk_check_menu_item_set_active(wid, active)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1check_1version, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_check_version(required_major, required_minor, required_micro)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1check_1version, JNI.env, self.jni_id, required_major, required_minor, required_micro)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_check_version(required_major, required_minor, required_micro)
        self.attr_lock.lock
        begin
          return __gtk_check_version(required_major, required_minor, required_micro)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1clipboard_1clear, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_clipboard_clear(clipboard)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1clipboard_1clear, JNI.env, self.jni_id, clipboard)
      end
      
      typesig { [::Java::Int] }
      def gtk_clipboard_clear(clipboard)
        self.attr_lock.lock
        begin
          __gtk_clipboard_clear(clipboard)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1clipboard_1get, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_clipboard_get(selection)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1clipboard_1get, JNI.env, self.jni_id, selection)
      end
      
      typesig { [::Java::Int] }
      def gtk_clipboard_get(selection)
        self.attr_lock.lock
        begin
          return __gtk_clipboard_get(selection)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1clipboard_1set_1with_1data, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_clipboard_set_with_data(clipboard, target, n_targets, get_func, clear_func, user_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1clipboard_1set_1with_1data, JNI.env, self.jni_id, clipboard, target, n_targets, get_func, clear_func, user_data) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_clipboard_set_with_data(clipboard, target, n_targets, get_func, clear_func, user_data)
        self.attr_lock.lock
        begin
          return __gtk_clipboard_set_with_data(clipboard, target, n_targets, get_func, clear_func, user_data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1clipboard_1wait_1for_1contents, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_clipboard_wait_for_contents(clipboard, target)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1clipboard_1wait_1for_1contents, JNI.env, self.jni_id, clipboard, target)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_clipboard_wait_for_contents(clipboard, target)
        self.attr_lock.lock
        begin
          return __gtk_clipboard_wait_for_contents(clipboard, target)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1color_1selection_1dialog_1new, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __gtk_color_selection_dialog_new(title)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1color_1selection_1dialog_1new, JNI.env, self.jni_id, title.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gtk_color_selection_dialog_new(title)
        self.attr_lock.lock
        begin
          return __gtk_color_selection_dialog_new(title)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1color_1selection_1get_1current_1color, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkColor] }
      def __gtk_color_selection_get_current_color(colorsel, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1color_1selection_1get_1current_1color, JNI.env, self.jni_id, colorsel, color.jni_id)
      end
      
      typesig { [::Java::Int, GdkColor] }
      def gtk_color_selection_get_current_color(colorsel, color)
        self.attr_lock.lock
        begin
          __gtk_color_selection_get_current_color(colorsel, color)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1color_1selection_1set_1current_1color, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkColor] }
      def __gtk_color_selection_set_current_color(colorsel, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1color_1selection_1set_1current_1color, JNI.env, self.jni_id, colorsel, color.jni_id)
      end
      
      typesig { [::Java::Int, GdkColor] }
      def gtk_color_selection_set_current_color(colorsel, color)
        self.attr_lock.lock
        begin
          __gtk_color_selection_set_current_color(colorsel, color)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1color_1selection_1set_1has_1palette, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_color_selection_set_has_palette(colorsel, has_palette)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1color_1selection_1set_1has_1palette, JNI.env, self.jni_id, colorsel, has_palette ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_color_selection_set_has_palette(colorsel, has_palette)
        self.attr_lock.lock
        begin
          __gtk_color_selection_set_has_palette(colorsel, has_palette)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1disable_1activate, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_combo_disable_activate(combo)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1disable_1activate, JNI.env, self.jni_id, combo)
      end
      
      typesig { [::Java::Int] }
      def gtk_combo_disable_activate(combo)
        self.attr_lock.lock
        begin
          __gtk_combo_disable_activate(combo)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_combo_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_combo_new
        self.attr_lock.lock
        begin
          return __gtk_combo_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1set_1case_1sensitive, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_combo_set_case_sensitive(combo, val)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1set_1case_1sensitive, JNI.env, self.jni_id, combo, val ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_combo_set_case_sensitive(combo, val)
        self.attr_lock.lock
        begin
          __gtk_combo_set_case_sensitive(combo, val)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1set_1focus_1on_1click, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_combo_box_set_focus_on_click(combo, val)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1set_1focus_1on_1click, JNI.env, self.jni_id, combo, val ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_combo_box_set_focus_on_click(combo, val)
        self.attr_lock.lock
        begin
          __gtk_combo_box_set_focus_on_click(combo, val)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1set_1popdown_1strings, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_combo_set_popdown_strings(combo, strings)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1set_1popdown_1strings, JNI.env, self.jni_id, combo, strings)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_combo_set_popdown_strings(combo, strings)
        self.attr_lock.lock
        begin
          __gtk_combo_set_popdown_strings(combo, strings)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1entry_1new_1text, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_combo_box_entry_new_text
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1entry_1new_1text, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_combo_box_entry_new_text
        self.attr_lock.lock
        begin
          return __gtk_combo_box_entry_new_text
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1new_1text, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_combo_box_new_text
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1new_1text, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_combo_box_new_text
        self.attr_lock.lock
        begin
          return __gtk_combo_box_new_text
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1insert_1text, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_combo_box_insert_text(combo_box, position, text)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1insert_1text, JNI.env, self.jni_id, combo_box, position, text.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_combo_box_insert_text(combo_box, position, text)
        self.attr_lock.lock
        begin
          __gtk_combo_box_insert_text(combo_box, position, text)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1remove_1text, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_combo_box_remove_text(combo_box, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1remove_1text, JNI.env, self.jni_id, combo_box, position)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_combo_box_remove_text(combo_box, position)
        self.attr_lock.lock
        begin
          __gtk_combo_box_remove_text(combo_box, position)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1get_1active, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_combo_box_get_active(combo_box)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1get_1active, JNI.env, self.jni_id, combo_box)
      end
      
      typesig { [::Java::Int] }
      def gtk_combo_box_get_active(combo_box)
        self.attr_lock.lock
        begin
          return __gtk_combo_box_get_active(combo_box)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1get_1model, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_combo_box_get_model(combo_box)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1get_1model, JNI.env, self.jni_id, combo_box)
      end
      
      typesig { [::Java::Int] }
      def gtk_combo_box_get_model(combo_box)
        self.attr_lock.lock
        begin
          return __gtk_combo_box_get_model(combo_box)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1set_1active, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_combo_box_set_active(combo_box, index)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1set_1active, JNI.env, self.jni_id, combo_box, index)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_combo_box_set_active(combo_box, index)
        self.attr_lock.lock
        begin
          __gtk_combo_box_set_active(combo_box, index)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1popup, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_combo_box_popup(combo_box)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1popup, JNI.env, self.jni_id, combo_box)
      end
      
      typesig { [::Java::Int] }
      def gtk_combo_box_popup(combo_box)
        self.attr_lock.lock
        begin
          __gtk_combo_box_popup(combo_box)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1popdown, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_combo_box_popdown(combo_box)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1popdown, JNI.env, self.jni_id, combo_box)
      end
      
      typesig { [::Java::Int] }
      def gtk_combo_box_popdown(combo_box)
        self.attr_lock.lock
        begin
          __gtk_combo_box_popdown(combo_box)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1add, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_container_add(container, widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1add, JNI.env, self.jni_id, container, widget)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_container_add(container, widget)
        self.attr_lock.lock
        begin
          __gtk_container_add(container, widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1forall, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_container_forall(container, callback, callback_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1forall, JNI.env, self.jni_id, container, callback, callback_data)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_container_forall(container, callback, callback_data)
        self.attr_lock.lock
        begin
          __gtk_container_forall(container, callback, callback_data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1get_1border_1width, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_container_get_border_width(container)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1get_1border_1width, JNI.env, self.jni_id, container)
      end
      
      typesig { [::Java::Int] }
      def gtk_container_get_border_width(container)
        self.attr_lock.lock
        begin
          return __gtk_container_get_border_width(container)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1get_1children, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_container_get_children(container)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1get_1children, JNI.env, self.jni_id, container)
      end
      
      typesig { [::Java::Int] }
      def gtk_container_get_children(container)
        self.attr_lock.lock
        begin
          return __gtk_container_get_children(container)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1remove, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_container_remove(container, widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1remove, JNI.env, self.jni_id, container, widget)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_container_remove(container, widget)
        self.attr_lock.lock
        begin
          __gtk_container_remove(container, widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1resize_1children, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_container_resize_children(container)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1resize_1children, JNI.env, self.jni_id, container)
      end
      
      typesig { [::Java::Int] }
      def gtk_container_resize_children(container)
        self.attr_lock.lock
        begin
          __gtk_container_resize_children(container)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1set_1border_1width, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_container_set_border_width(container, border_width)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1set_1border_1width, JNI.env, self.jni_id, container, border_width)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_container_set_border_width(container, border_width)
        self.attr_lock.lock
        begin
          __gtk_container_set_border_width(container, border_width)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1dialog_1add_1button, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def __gtk_dialog_add_button(dialog, button_text, response_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1dialog_1add_1button, JNI.env, self.jni_id, dialog, button_text.jni_id, response_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def gtk_dialog_add_button(dialog, button_text, response_id)
        self.attr_lock.lock
        begin
          return __gtk_dialog_add_button(dialog, button_text, response_id)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1dialog_1run, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_dialog_run(dialog)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1dialog_1run, JNI.env, self.jni_id, dialog)
      end
      
      typesig { [::Java::Int] }
      def gtk_dialog_run(dialog)
        self.attr_lock.lock
        begin
          return __gtk_dialog_run(dialog)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1begin, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_drag_begin(widget, targets, actions, button, event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1begin, JNI.env, self.jni_id, widget, targets, actions, button, event)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_drag_begin(widget, targets, actions, button, event)
        self.attr_lock.lock
        begin
          return __gtk_drag_begin(widget, targets, actions, button, event)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1check_1threshold, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_drag_check_threshold(widget, start_x, start_y, current_x, current_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1check_1threshold, JNI.env, self.jni_id, widget, start_x, start_y, current_x, current_y) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_drag_check_threshold(widget, start_x, start_y, current_x, current_y)
        self.attr_lock.lock
        begin
          return __gtk_drag_check_threshold(widget, start_x, start_y, current_x, current_y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1dest_1find_1target, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_drag_dest_find_target(widget, context, target_list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1dest_1find_1target, JNI.env, self.jni_id, widget, context, target_list)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_drag_dest_find_target(widget, context, target_list)
        self.attr_lock.lock
        begin
          return __gtk_drag_dest_find_target(widget, context, target_list)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1dest_1set, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_drag_dest_set(widget, flags, targets, n_targets, actions)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1dest_1set, JNI.env, self.jni_id, widget, flags, targets, n_targets, actions)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_drag_dest_set(widget, flags, targets, n_targets, actions)
        self.attr_lock.lock
        begin
          __gtk_drag_dest_set(widget, flags, targets, n_targets, actions)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1dest_1unset, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_drag_dest_unset(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1dest_1unset, JNI.env, self.jni_id, widget)
      end
      
      typesig { [::Java::Int] }
      def gtk_drag_dest_unset(widget)
        self.attr_lock.lock
        begin
          __gtk_drag_dest_unset(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1finish, [:pointer, :long, :int32, :int8, :int8, :int32], :void
      typesig { [::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Int] }
      def __gtk_drag_finish(context, success, delete, time)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1finish, JNI.env, self.jni_id, context, success ? 1 : 0, delete ? 1 : 0, time)
      end
      
      typesig { [::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Int] }
      def gtk_drag_finish(context, success, delete, time)
        self.attr_lock.lock
        begin
          __gtk_drag_finish(context, success, delete, time)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1get_1data, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_drag_get_data(widget, context, target, time)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1get_1data, JNI.env, self.jni_id, widget, context, target, time)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_drag_get_data(widget, context, target, time)
        self.attr_lock.lock
        begin
          __gtk_drag_get_data(widget, context, target, time)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1set_1icon_1pixbuf, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_drag_set_icon_pixbuf(context, pixbuf, hot_x, hot_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1set_1icon_1pixbuf, JNI.env, self.jni_id, context, pixbuf, hot_x, hot_y)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_drag_set_icon_pixbuf(context, pixbuf, hot_x, hot_y)
        self.attr_lock.lock
        begin
          __gtk_drag_set_icon_pixbuf(context, pixbuf, hot_x, hot_y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drawing_1area_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_drawing_area_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drawing_1area_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_drawing_area_new
        self.attr_lock.lock
        begin
          return __gtk_drawing_area_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1copy_1clipboard, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_editable_copy_clipboard(editable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1copy_1clipboard, JNI.env, self.jni_id, editable)
      end
      
      typesig { [::Java::Int] }
      def gtk_editable_copy_clipboard(editable)
        self.attr_lock.lock
        begin
          __gtk_editable_copy_clipboard(editable)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1cut_1clipboard, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_editable_cut_clipboard(editable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1cut_1clipboard, JNI.env, self.jni_id, editable)
      end
      
      typesig { [::Java::Int] }
      def gtk_editable_cut_clipboard(editable)
        self.attr_lock.lock
        begin
          __gtk_editable_cut_clipboard(editable)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1delete_1selection, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_editable_delete_selection(editable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1delete_1selection, JNI.env, self.jni_id, editable)
      end
      
      typesig { [::Java::Int] }
      def gtk_editable_delete_selection(editable)
        self.attr_lock.lock
        begin
          __gtk_editable_delete_selection(editable)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1delete_1text, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_editable_delete_text(editable, start_pos, end_pos)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1delete_1text, JNI.env, self.jni_id, editable, start_pos, end_pos)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_editable_delete_text(editable, start_pos, end_pos)
        self.attr_lock.lock
        begin
          __gtk_editable_delete_text(editable, start_pos, end_pos)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1get_1chars, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_editable_get_chars(editable, start_pos, end_pos)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1get_1chars, JNI.env, self.jni_id, editable, start_pos, end_pos)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_editable_get_chars(editable, start_pos, end_pos)
        self.attr_lock.lock
        begin
          return __gtk_editable_get_chars(editable, start_pos, end_pos)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1get_1editable, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_editable_get_editable(editable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1get_1editable, JNI.env, self.jni_id, editable) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_editable_get_editable(editable)
        self.attr_lock.lock
        begin
          return __gtk_editable_get_editable(editable)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1get_1position, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_editable_get_position(editable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1get_1position, JNI.env, self.jni_id, editable)
      end
      
      typesig { [::Java::Int] }
      def gtk_editable_get_position(editable)
        self.attr_lock.lock
        begin
          return __gtk_editable_get_position(editable)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1get_1selection_1bounds, [:pointer, :long, :int32, :long, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gtk_editable_get_selection_bounds(editable, start, end_)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1get_1selection_1bounds, JNI.env, self.jni_id, editable, start.jni_id, end_.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gtk_editable_get_selection_bounds(editable, start, end_)
        self.attr_lock.lock
        begin
          return __gtk_editable_get_selection_bounds(editable, start, end_)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1insert_1text, [:pointer, :long, :int32, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      def __gtk_editable_insert_text(editable, new_text, new_text_length, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1insert_1text, JNI.env, self.jni_id, editable, new_text.jni_id, new_text_length, position.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      def gtk_editable_insert_text(editable, new_text, new_text_length, position)
        self.attr_lock.lock
        begin
          __gtk_editable_insert_text(editable, new_text, new_text_length, position)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1paste_1clipboard, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_editable_paste_clipboard(editable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1paste_1clipboard, JNI.env, self.jni_id, editable)
      end
      
      typesig { [::Java::Int] }
      def gtk_editable_paste_clipboard(editable)
        self.attr_lock.lock
        begin
          __gtk_editable_paste_clipboard(editable)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1select_1region, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_editable_select_region(editable, start, end_)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1select_1region, JNI.env, self.jni_id, editable, start, end_)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_editable_select_region(editable, start, end_)
        self.attr_lock.lock
        begin
          __gtk_editable_select_region(editable, start, end_)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1set_1editable, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_editable_set_editable(entry, editable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1set_1editable, JNI.env, self.jni_id, entry, editable ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_editable_set_editable(entry, editable)
        self.attr_lock.lock
        begin
          __gtk_editable_set_editable(entry, editable)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1set_1position, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_editable_set_position(editable, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1set_1position, JNI.env, self.jni_id, editable, position)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_editable_set_position(editable, position)
        self.attr_lock.lock
        begin
          __gtk_editable_set_position(editable, position)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1invisible_1char, [:pointer, :long, :int32], :unknown
      typesig { [::Java::Int] }
      def __gtk_entry_get_invisible_char(entry)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1invisible_1char, JNI.env, self.jni_id, entry)
      end
      
      typesig { [::Java::Int] }
      def gtk_entry_get_invisible_char(entry)
        self.attr_lock.lock
        begin
          return __gtk_entry_get_invisible_char(entry)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1layout, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_entry_get_layout(entry)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1layout, JNI.env, self.jni_id, entry)
      end
      
      typesig { [::Java::Int] }
      def gtk_entry_get_layout(entry)
        self.attr_lock.lock
        begin
          return __gtk_entry_get_layout(entry)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1layout_1offsets, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gtk_entry_get_layout_offsets(layout, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1layout_1offsets, JNI.env, self.jni_id, layout, x.jni_id, y.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gtk_entry_get_layout_offsets(layout, x, y)
        self.attr_lock.lock
        begin
          __gtk_entry_get_layout_offsets(layout, x, y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1text_1index_1to_1layout_1index, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_entry_text_index_to_layout_index(entry, index)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1text_1index_1to_1layout_1index, JNI.env, self.jni_id, entry, index)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_entry_text_index_to_layout_index(entry, index)
        self.attr_lock.lock
        begin
          return __gtk_entry_text_index_to_layout_index(entry, index)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1max_1length, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_entry_get_max_length(entry)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1max_1length, JNI.env, self.jni_id, entry)
      end
      
      typesig { [::Java::Int] }
      def gtk_entry_get_max_length(entry)
        self.attr_lock.lock
        begin
          return __gtk_entry_get_max_length(entry)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1text, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_entry_get_text(entry)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1text, JNI.env, self.jni_id, entry)
      end
      
      typesig { [::Java::Int] }
      def gtk_entry_get_text(entry)
        self.attr_lock.lock
        begin
          return __gtk_entry_get_text(entry)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1FcConfigAppFontAddFile, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def ___fc_config_app_font_add_file(config, file)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1FcConfigAppFontAddFile, JNI.env, self.jni_id, config, file.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def _fc_config_app_font_add_file(config, file)
        self.attr_lock.lock
        begin
          return ___fc_config_app_font_add_file(config, file)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1visibility, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_entry_get_visibility(entry)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1visibility, JNI.env, self.jni_id, entry) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_entry_get_visibility(entry)
        self.attr_lock.lock
        begin
          return __gtk_entry_get_visibility(entry)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_entry_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_entry_new
        self.attr_lock.lock
        begin
          return __gtk_entry_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1activates_1default, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_entry_set_activates_default(entry, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1activates_1default, JNI.env, self.jni_id, entry, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_entry_set_activates_default(entry, setting)
        self.attr_lock.lock
        begin
          __gtk_entry_set_activates_default(entry, setting)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1alignment, [:pointer, :long, :int32, :float], :void
      typesig { [::Java::Int, ::Java::Float] }
      def __gtk_entry_set_alignment(entry, xalign)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1alignment, JNI.env, self.jni_id, entry, xalign)
      end
      
      typesig { [::Java::Int, ::Java::Float] }
      def gtk_entry_set_alignment(entry, xalign)
        self.attr_lock.lock
        begin
          __gtk_entry_set_alignment(entry, xalign)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1has_1frame, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_entry_set_has_frame(entry, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1has_1frame, JNI.env, self.jni_id, entry, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_entry_set_has_frame(entry, setting)
        self.attr_lock.lock
        begin
          __gtk_entry_set_has_frame(entry, setting)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1invisible_1char, [:pointer, :long, :int32, :unknown], :void
      typesig { [::Java::Int, ::Java::Char] }
      def __gtk_entry_set_invisible_char(entry, ch)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1invisible_1char, JNI.env, self.jni_id, entry, ch.to_i)
      end
      
      typesig { [::Java::Int, ::Java::Char] }
      def gtk_entry_set_invisible_char(entry, ch)
        self.attr_lock.lock
        begin
          __gtk_entry_set_invisible_char(entry, ch)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1max_1length, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_entry_set_max_length(entry, max)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1max_1length, JNI.env, self.jni_id, entry, max)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_entry_set_max_length(entry, max)
        self.attr_lock.lock
        begin
          __gtk_entry_set_max_length(entry, max)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1text, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_entry_set_text(entry, text)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1text, JNI.env, self.jni_id, entry, text.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_entry_set_text(entry, text)
        self.attr_lock.lock
        begin
          __gtk_entry_set_text(entry, text)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1visibility, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_entry_set_visibility(entry, visible)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1visibility, JNI.env, self.jni_id, entry, visible ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_entry_set_visibility(entry, visible)
        self.attr_lock.lock
        begin
          __gtk_entry_set_visibility(entry, visible)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1events_1pending, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_events_pending
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1events_1pending, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_events_pending
        self.attr_lock.lock
        begin
          return __gtk_events_pending
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1get_1expanded, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_expander_get_expanded(expander)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1get_1expanded, JNI.env, self.jni_id, expander) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_expander_get_expanded(expander)
        self.attr_lock.lock
        begin
          return __gtk_expander_get_expanded(expander)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1get_1label_1widget, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_expander_get_label_widget(expander)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1get_1label_1widget, JNI.env, self.jni_id, expander)
      end
      
      typesig { [::Java::Int] }
      def gtk_expander_get_label_widget(expander)
        self.attr_lock.lock
        begin
          return __gtk_expander_get_label_widget(expander)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1new, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __gtk_expander_new(label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1new, JNI.env, self.jni_id, label.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gtk_expander_new(label)
        self.attr_lock.lock
        begin
          return __gtk_expander_new(label)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1set_1expanded, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_expander_set_expanded(expander, expanded)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1set_1expanded, JNI.env, self.jni_id, expander, expanded ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_expander_set_expanded(expander, expanded)
        self.attr_lock.lock
        begin
          __gtk_expander_set_expanded(expander, expanded)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1set_1label, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_expander_set_label(expander, label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1set_1label, JNI.env, self.jni_id, expander, label.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_expander_set_label(expander, label)
        self.attr_lock.lock
        begin
          __gtk_expander_set_label(expander, label)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1set_1label_1widget, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_expander_set_label_widget(expander, label_widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1set_1label_1widget, JNI.env, self.jni_id, expander, label_widget)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_expander_set_label_widget(expander, label_widget)
        self.attr_lock.lock
        begin
          __gtk_expander_set_label_widget(expander, label_widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1add_1filter, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_file_chooser_add_filter(chooser, filter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1add_1filter, JNI.env, self.jni_id, chooser, filter)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_file_chooser_add_filter(chooser, filter)
        self.attr_lock.lock
        begin
          __gtk_file_chooser_add_filter(chooser, filter)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1dialog_1new, [:pointer, :long, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_file_chooser_dialog_new(title, parent, action, first_button_text, first_button_id, second_button_text, second_button_id, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1dialog_1new, JNI.env, self.jni_id, title.jni_id, parent, action, first_button_text, first_button_id, second_button_text, second_button_id, terminator)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_file_chooser_dialog_new(title, parent, action, first_button_text, first_button_id, second_button_text, second_button_id, terminator)
        self.attr_lock.lock
        begin
          return __gtk_file_chooser_dialog_new(title, parent, action, first_button_text, first_button_id, second_button_text, second_button_id, terminator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1get_1current_1folder, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_file_chooser_get_current_folder(chooser)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1get_1current_1folder, JNI.env, self.jni_id, chooser)
      end
      
      typesig { [::Java::Int] }
      def gtk_file_chooser_get_current_folder(chooser)
        self.attr_lock.lock
        begin
          return __gtk_file_chooser_get_current_folder(chooser)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1get_1filename, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_file_chooser_get_filename(chooser)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1get_1filename, JNI.env, self.jni_id, chooser)
      end
      
      typesig { [::Java::Int] }
      def gtk_file_chooser_get_filename(chooser)
        self.attr_lock.lock
        begin
          return __gtk_file_chooser_get_filename(chooser)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1get_1filenames, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_file_chooser_get_filenames(chooser)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1get_1filenames, JNI.env, self.jni_id, chooser)
      end
      
      typesig { [::Java::Int] }
      def gtk_file_chooser_get_filenames(chooser)
        self.attr_lock.lock
        begin
          return __gtk_file_chooser_get_filenames(chooser)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1get_1filter, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_file_chooser_get_filter(chooser)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1get_1filter, JNI.env, self.jni_id, chooser)
      end
      
      typesig { [::Java::Int] }
      def gtk_file_chooser_get_filter(chooser)
        self.attr_lock.lock
        begin
          return __gtk_file_chooser_get_filter(chooser)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1current_1folder, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_file_chooser_set_current_folder(chooser, filename)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1current_1folder, JNI.env, self.jni_id, chooser, filename)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_file_chooser_set_current_folder(chooser, filename)
        self.attr_lock.lock
        begin
          __gtk_file_chooser_set_current_folder(chooser, filename)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1current_1name, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_file_chooser_set_current_name(chooser, name)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1current_1name, JNI.env, self.jni_id, chooser, name.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_file_chooser_set_current_name(chooser, name)
        self.attr_lock.lock
        begin
          __gtk_file_chooser_set_current_name(chooser, name)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1do_1overwrite_1confirmation, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_file_chooser_set_do_overwrite_confirmation(chooser, do_overwrite_confirmation)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1do_1overwrite_1confirmation, JNI.env, self.jni_id, chooser, do_overwrite_confirmation ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_file_chooser_set_do_overwrite_confirmation(chooser, do_overwrite_confirmation)
        self.attr_lock.lock
        begin
          __gtk_file_chooser_set_do_overwrite_confirmation(chooser, do_overwrite_confirmation)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1extra_1widget, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_file_chooser_set_extra_widget(chooser, extra_widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1extra_1widget, JNI.env, self.jni_id, chooser, extra_widget)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_file_chooser_set_extra_widget(chooser, extra_widget)
        self.attr_lock.lock
        begin
          __gtk_file_chooser_set_extra_widget(chooser, extra_widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1filename, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_file_chooser_set_filename(chooser, name)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1filename, JNI.env, self.jni_id, chooser, name)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_file_chooser_set_filename(chooser, name)
        self.attr_lock.lock
        begin
          __gtk_file_chooser_set_filename(chooser, name)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1filter, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_file_chooser_set_filter(chooser, filter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1filter, JNI.env, self.jni_id, chooser, filter)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_file_chooser_set_filter(chooser, filter)
        self.attr_lock.lock
        begin
          __gtk_file_chooser_set_filter(chooser, filter)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1select_1multiple, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_file_chooser_set_select_multiple(chooser, select_multiple)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1select_1multiple, JNI.env, self.jni_id, chooser, select_multiple ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_file_chooser_set_select_multiple(chooser, select_multiple)
        self.attr_lock.lock
        begin
          __gtk_file_chooser_set_select_multiple(chooser, select_multiple)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1filter_1add_1pattern, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_file_filter_add_pattern(filter, pattern)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1filter_1add_1pattern, JNI.env, self.jni_id, filter, pattern.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_file_filter_add_pattern(filter, pattern)
        self.attr_lock.lock
        begin
          __gtk_file_filter_add_pattern(filter, pattern)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1filter_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_file_filter_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1filter_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_file_filter_new
        self.attr_lock.lock
        begin
          return __gtk_file_filter_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1filter_1get_1name, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_file_filter_get_name(filter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1filter_1get_1name, JNI.env, self.jni_id, filter)
      end
      
      typesig { [::Java::Int] }
      def gtk_file_filter_get_name(filter)
        self.attr_lock.lock
        begin
          return __gtk_file_filter_get_name(filter)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1filter_1set_1name, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_file_filter_set_name(filter, name)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1filter_1set_1name, JNI.env, self.jni_id, filter, name.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_file_filter_set_name(filter, name)
        self.attr_lock.lock
        begin
          __gtk_file_filter_set_name(filter, name)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1get_1filename, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_file_selection_get_filename(filesel)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1get_1filename, JNI.env, self.jni_id, filesel)
      end
      
      typesig { [::Java::Int] }
      def gtk_file_selection_get_filename(filesel)
        self.attr_lock.lock
        begin
          return __gtk_file_selection_get_filename(filesel)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1get_1selections, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_file_selection_get_selections(filesel)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1get_1selections, JNI.env, self.jni_id, filesel)
      end
      
      typesig { [::Java::Int] }
      def gtk_file_selection_get_selections(filesel)
        self.attr_lock.lock
        begin
          return __gtk_file_selection_get_selections(filesel)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1hide_1fileop_1buttons, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_file_selection_hide_fileop_buttons(filesel)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1hide_1fileop_1buttons, JNI.env, self.jni_id, filesel)
      end
      
      typesig { [::Java::Int] }
      def gtk_file_selection_hide_fileop_buttons(filesel)
        self.attr_lock.lock
        begin
          __gtk_file_selection_hide_fileop_buttons(filesel)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1new, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __gtk_file_selection_new(title)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1new, JNI.env, self.jni_id, title.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gtk_file_selection_new(title)
        self.attr_lock.lock
        begin
          return __gtk_file_selection_new(title)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1set_1filename, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_file_selection_set_filename(filesel, filename)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1set_1filename, JNI.env, self.jni_id, filesel, filename)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_file_selection_set_filename(filesel, filename)
        self.attr_lock.lock
        begin
          __gtk_file_selection_set_filename(filesel, filename)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1set_1select_1multiple, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_file_selection_set_select_multiple(filesel, select_multiple)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1set_1select_1multiple, JNI.env, self.jni_id, filesel, select_multiple ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_file_selection_set_select_multiple(filesel, select_multiple)
        self.attr_lock.lock
        begin
          __gtk_file_selection_set_select_multiple(filesel, select_multiple)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1fixed_1move, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_fixed_move(fixed, widget, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1fixed_1move, JNI.env, self.jni_id, fixed, widget, x, y)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_fixed_move(fixed, widget, x, y)
        self.attr_lock.lock
        begin
          __gtk_fixed_move(fixed, widget, x, y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1fixed_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_fixed_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1fixed_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_fixed_new
        self.attr_lock.lock
        begin
          return __gtk_fixed_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1fixed_1set_1has_1window, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_fixed_set_has_window(fixed, has_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1fixed_1set_1has_1window, JNI.env, self.jni_id, fixed, has_window ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_fixed_set_has_window(fixed, has_window)
        self.attr_lock.lock
        begin
          __gtk_fixed_set_has_window(fixed, has_window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1font_1selection_1dialog_1get_1font_1name, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_font_selection_dialog_get_font_name(fsd)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1font_1selection_1dialog_1get_1font_1name, JNI.env, self.jni_id, fsd)
      end
      
      typesig { [::Java::Int] }
      def gtk_font_selection_dialog_get_font_name(fsd)
        self.attr_lock.lock
        begin
          return __gtk_font_selection_dialog_get_font_name(fsd)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1font_1selection_1dialog_1new, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __gtk_font_selection_dialog_new(title)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1font_1selection_1dialog_1new, JNI.env, self.jni_id, title.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gtk_font_selection_dialog_new(title)
        self.attr_lock.lock
        begin
          return __gtk_font_selection_dialog_new(title)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1font_1selection_1dialog_1set_1font_1name, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_font_selection_dialog_set_font_name(fsd, fontname)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1font_1selection_1dialog_1set_1font_1name, JNI.env, self.jni_id, fsd, fontname.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_font_selection_dialog_set_font_name(fsd, fontname)
        self.attr_lock.lock
        begin
          return __gtk_font_selection_dialog_set_font_name(fsd, fontname)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1frame_1new, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __gtk_frame_new(label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1frame_1new, JNI.env, self.jni_id, label.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gtk_frame_new(label)
        self.attr_lock.lock
        begin
          return __gtk_frame_new(label)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1frame_1get_1label_1widget, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_frame_get_label_widget(frame)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1frame_1get_1label_1widget, JNI.env, self.jni_id, frame)
      end
      
      typesig { [::Java::Int] }
      def gtk_frame_get_label_widget(frame)
        self.attr_lock.lock
        begin
          return __gtk_frame_get_label_widget(frame)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1frame_1set_1label, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_frame_set_label(frame, label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1frame_1set_1label, JNI.env, self.jni_id, frame, label.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_frame_set_label(frame, label)
        self.attr_lock.lock
        begin
          __gtk_frame_set_label(frame, label)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1frame_1set_1label_1widget, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_frame_set_label_widget(frame, label_widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1frame_1set_1label_1widget, JNI.env, self.jni_id, frame, label_widget)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_frame_set_label_widget(frame, label_widget)
        self.attr_lock.lock
        begin
          __gtk_frame_set_label_widget(frame, label_widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1frame_1set_1shadow_1type, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_frame_set_shadow_type(frame, type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1frame_1set_1shadow_1type, JNI.env, self.jni_id, frame, type)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_frame_set_shadow_type(frame, type)
        self.attr_lock.lock
        begin
          __gtk_frame_set_shadow_type(frame, type)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1get_1current_1event, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_get_current_event
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1get_1current_1event, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_get_current_event
        self.attr_lock.lock
        begin
          return __gtk_get_current_event
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1get_1current_1event_1state, [:pointer, :long, :long], :int8
      typesig { [Array.typed(::Java::Int)] }
      def __gtk_get_current_event_state(state)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1get_1current_1event_1state, JNI.env, self.jni_id, state.jni_id) != 0
      end
      
      typesig { [Array.typed(::Java::Int)] }
      def gtk_get_current_event_state(state)
        self.attr_lock.lock
        begin
          return __gtk_get_current_event_state(state)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1get_1current_1event_1time, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_get_current_event_time
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1get_1current_1event_1time, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_get_current_event_time
        self.attr_lock.lock
        begin
          return __gtk_get_current_event_time
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1get_1default_1language, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_get_default_language
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1get_1default_1language, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_get_default_language
        self.attr_lock.lock
        begin
          return __gtk_get_default_language
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1get_1event_1widget, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_get_event_widget(event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1get_1event_1widget, JNI.env, self.jni_id, event)
      end
      
      typesig { [::Java::Int] }
      def gtk_get_event_widget(event)
        self.attr_lock.lock
        begin
          return __gtk_get_event_widget(event)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1grab_1add, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_grab_add(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1grab_1add, JNI.env, self.jni_id, widget)
      end
      
      typesig { [::Java::Int] }
      def gtk_grab_add(widget)
        self.attr_lock.lock
        begin
          __gtk_grab_add(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1grab_1get_1current, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_grab_get_current
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1grab_1get_1current, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_grab_get_current
        self.attr_lock.lock
        begin
          return __gtk_grab_get_current
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1grab_1remove, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_grab_remove(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1grab_1remove, JNI.env, self.jni_id, widget)
      end
      
      typesig { [::Java::Int] }
      def gtk_grab_remove(widget)
        self.attr_lock.lock
        begin
          __gtk_grab_remove(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1hbox_1new, [:pointer, :long, :int8, :int32], :int32
      typesig { [::Java::Boolean, ::Java::Int] }
      def __gtk_hbox_new(homogeneous, spacing)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1hbox_1new, JNI.env, self.jni_id, homogeneous ? 1 : 0, spacing)
      end
      
      typesig { [::Java::Boolean, ::Java::Int] }
      def gtk_hbox_new(homogeneous, spacing)
        self.attr_lock.lock
        begin
          return __gtk_hbox_new(homogeneous, spacing)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1hscale_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_hscale_new(adjustment)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1hscale_1new, JNI.env, self.jni_id, adjustment)
      end
      
      typesig { [::Java::Int] }
      def gtk_hscale_new(adjustment)
        self.attr_lock.lock
        begin
          return __gtk_hscale_new(adjustment)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1hscrollbar_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_hscrollbar_new(adjustment)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1hscrollbar_1new, JNI.env, self.jni_id, adjustment)
      end
      
      typesig { [::Java::Int] }
      def gtk_hscrollbar_new(adjustment)
        self.attr_lock.lock
        begin
          return __gtk_hscrollbar_new(adjustment)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1hseparator_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_hseparator_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1hseparator_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_hseparator_new
        self.attr_lock.lock
        begin
          return __gtk_hseparator_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1icon_1factory_1lookup_1default, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __gtk_icon_factory_lookup_default(stock_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1icon_1factory_1lookup_1default, JNI.env, self.jni_id, stock_id.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gtk_icon_factory_lookup_default(stock_id)
        self.attr_lock.lock
        begin
          return __gtk_icon_factory_lookup_default(stock_id)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1icon_1source_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_icon_source_free(source)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1icon_1source_1free, JNI.env, self.jni_id, source)
      end
      
      typesig { [::Java::Int] }
      def gtk_icon_source_free(source)
        self.attr_lock.lock
        begin
          __gtk_icon_source_free(source)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1icon_1source_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_icon_source_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1icon_1source_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_icon_source_new
        self.attr_lock.lock
        begin
          return __gtk_icon_source_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1icon_1source_1set_1pixbuf, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_icon_source_set_pixbuf(source, pixbuf)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1icon_1source_1set_1pixbuf, JNI.env, self.jni_id, source, pixbuf)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_icon_source_set_pixbuf(source, pixbuf)
        self.attr_lock.lock
        begin
          __gtk_icon_source_set_pixbuf(source, pixbuf)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1icon_1set_1render_1icon, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_icon_set_render_icon(icon_set, style, direction, state, size, widget, detail)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1icon_1set_1render_1icon, JNI.env, self.jni_id, icon_set, style, direction, state, size, widget, detail)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_icon_set_render_icon(icon_set, style, direction, state, size, widget, detail)
        self.attr_lock.lock
        begin
          return __gtk_icon_set_render_icon(icon_set, style, direction, state, size, widget, detail)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1filter_1keypress, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_im_context_filter_keypress(context, event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1filter_1keypress, JNI.env, self.jni_id, context, event) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_im_context_filter_keypress(context, event)
        self.attr_lock.lock
        begin
          return __gtk_im_context_filter_keypress(context, event)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1focus_1in, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_im_context_focus_in(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1focus_1in, JNI.env, self.jni_id, context)
      end
      
      typesig { [::Java::Int] }
      def gtk_im_context_focus_in(context)
        self.attr_lock.lock
        begin
          __gtk_im_context_focus_in(context)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1focus_1out, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_im_context_focus_out(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1focus_1out, JNI.env, self.jni_id, context)
      end
      
      typesig { [::Java::Int] }
      def gtk_im_context_focus_out(context)
        self.attr_lock.lock
        begin
          __gtk_im_context_focus_out(context)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1get_1preedit_1string, [:pointer, :long, :int32, :long, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gtk_im_context_get_preedit_string(context, str, attrs, cursor_pos)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1get_1preedit_1string, JNI.env, self.jni_id, context, str.jni_id, attrs.jni_id, cursor_pos.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gtk_im_context_get_preedit_string(context, str, attrs, cursor_pos)
        self.attr_lock.lock
        begin
          __gtk_im_context_get_preedit_string(context, str, attrs, cursor_pos)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1get_1type, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_im_context_get_type
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1get_1type, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_im_context_get_type
        self.attr_lock.lock
        begin
          return __gtk_im_context_get_type
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1reset, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_im_context_reset(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1reset, JNI.env, self.jni_id, context)
      end
      
      typesig { [::Java::Int] }
      def gtk_im_context_reset(context)
        self.attr_lock.lock
        begin
          __gtk_im_context_reset(context)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1set_1client_1window, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_im_context_set_client_window(context, window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1set_1client_1window, JNI.env, self.jni_id, context, window)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_im_context_set_client_window(context, window)
        self.attr_lock.lock
        begin
          __gtk_im_context_set_client_window(context, window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1set_1cursor_1location, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkRectangle] }
      def __gtk_im_context_set_cursor_location(context, area)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1set_1cursor_1location, JNI.env, self.jni_id, context, area.jni_id)
      end
      
      typesig { [::Java::Int, GdkRectangle] }
      def gtk_im_context_set_cursor_location(context, area)
        self.attr_lock.lock
        begin
          __gtk_im_context_set_cursor_location(context, area)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1multicontext_1append_1menuitems, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_im_multicontext_append_menuitems(context, menushell)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1multicontext_1append_1menuitems, JNI.env, self.jni_id, context, menushell)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_im_multicontext_append_menuitems(context, menushell)
        self.attr_lock.lock
        begin
          __gtk_im_multicontext_append_menuitems(context, menushell)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1multicontext_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_im_multicontext_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1multicontext_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_im_multicontext_new
        self.attr_lock.lock
        begin
          return __gtk_im_multicontext_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1menu_1item_1new_1with_1label, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __gtk_image_menu_item_new_with_label(label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1menu_1item_1new_1with_1label, JNI.env, self.jni_id, label.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gtk_image_menu_item_new_with_label(label)
        self.attr_lock.lock
        begin
          return __gtk_image_menu_item_new_with_label(label)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1menu_1item_1set_1image, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_image_menu_item_set_image(menu_item, image)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1menu_1item_1set_1image, JNI.env, self.jni_id, menu_item, image)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_image_menu_item_set_image(menu_item, image)
        self.attr_lock.lock
        begin
          __gtk_image_menu_item_set_image(menu_item, image)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_image_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_image_new
        self.attr_lock.lock
        begin
          return __gtk_image_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1new_1from_1pixbuf, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_image_new_from_pixbuf(pixbuf)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1new_1from_1pixbuf, JNI.env, self.jni_id, pixbuf)
      end
      
      typesig { [::Java::Int] }
      def gtk_image_new_from_pixbuf(pixbuf)
        self.attr_lock.lock
        begin
          return __gtk_image_new_from_pixbuf(pixbuf)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1new_1from_1pixmap, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_image_new_from_pixmap(pixmap, mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1new_1from_1pixmap, JNI.env, self.jni_id, pixmap, mask)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_image_new_from_pixmap(pixmap, mask)
        self.attr_lock.lock
        begin
          return __gtk_image_new_from_pixmap(pixmap, mask)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1set_1from_1pixbuf, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_image_set_from_pixbuf(image, pixbuf)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1set_1from_1pixbuf, JNI.env, self.jni_id, image, pixbuf)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_image_set_from_pixbuf(image, pixbuf)
        self.attr_lock.lock
        begin
          __gtk_image_set_from_pixbuf(image, pixbuf)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1set_1from_1pixmap, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_image_set_from_pixmap(image, pixmap, mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1set_1from_1pixmap, JNI.env, self.jni_id, image, pixmap, mask)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_image_set_from_pixmap(image, pixmap, mask)
        self.attr_lock.lock
        begin
          __gtk_image_set_from_pixmap(image, pixmap, mask)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1init_1check, [:pointer, :long, :long, :long], :int8
      typesig { [Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gtk_init_check(argc, argv)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1init_1check, JNI.env, self.jni_id, argc.jni_id, argv.jni_id) != 0
      end
      
      typesig { [Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gtk_init_check(argc, argv)
        self.attr_lock.lock
        begin
          return __gtk_init_check(argc, argv)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1get_1layout, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_label_get_layout(label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1get_1layout, JNI.env, self.jni_id, label)
      end
      
      typesig { [::Java::Int] }
      def gtk_label_get_layout(label)
        self.attr_lock.lock
        begin
          return __gtk_label_get_layout(label)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1get_1mnemonic_1keyval, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_label_get_mnemonic_keyval(label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1get_1mnemonic_1keyval, JNI.env, self.jni_id, label)
      end
      
      typesig { [::Java::Int] }
      def gtk_label_get_mnemonic_keyval(label)
        self.attr_lock.lock
        begin
          return __gtk_label_get_mnemonic_keyval(label)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1new, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __gtk_label_new(label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1new, JNI.env, self.jni_id, label.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gtk_label_new(label)
        self.attr_lock.lock
        begin
          return __gtk_label_new(label)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1new_1with_1mnemonic, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __gtk_label_new_with_mnemonic(str)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1new_1with_1mnemonic, JNI.env, self.jni_id, str.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gtk_label_new_with_mnemonic(str)
        self.attr_lock.lock
        begin
          return __gtk_label_new_with_mnemonic(str)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1attributes, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_label_set_attributes(label, attrs)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1attributes, JNI.env, self.jni_id, label, attrs)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_label_set_attributes(label, attrs)
        self.attr_lock.lock
        begin
          __gtk_label_set_attributes(label, attrs)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1justify, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_label_set_justify(label, jtype)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1justify, JNI.env, self.jni_id, label, jtype)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_label_set_justify(label, jtype)
        self.attr_lock.lock
        begin
          __gtk_label_set_justify(label, jtype)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1line_1wrap, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_label_set_line_wrap(label, wrap)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1line_1wrap, JNI.env, self.jni_id, label, wrap ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_label_set_line_wrap(label, wrap)
        self.attr_lock.lock
        begin
          __gtk_label_set_line_wrap(label, wrap)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1line_1wrap_1mode, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_label_set_line_wrap_mode(label, wrap_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1line_1wrap_1mode, JNI.env, self.jni_id, label, wrap_mode)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_label_set_line_wrap_mode(label, wrap_mode)
        self.attr_lock.lock
        begin
          __gtk_label_set_line_wrap_mode(label, wrap_mode)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1text__II, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_label_set_text(label, str)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1text__II, JNI.env, self.jni_id, label, str)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_label_set_text(label, str)
        self.attr_lock.lock
        begin
          __gtk_label_set_text(label, str)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1text__I_3B, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_label_set_text(label, str)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1text__I_3B, JNI.env, self.jni_id, label, str.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_label_set_text(label, str)
        self.attr_lock.lock
        begin
          __gtk_label_set_text(label, str)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1text_1with_1mnemonic, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_label_set_text_with_mnemonic(label, str)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1text_1with_1mnemonic, JNI.env, self.jni_id, label, str.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_label_set_text_with_mnemonic(label, str)
        self.attr_lock.lock
        begin
          __gtk_label_set_text_with_mnemonic(label, str)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1append_1items, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_list_append_items(list, items)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1append_1items, JNI.env, self.jni_id, list, items)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_list_append_items(list, items)
        self.attr_lock.lock
        begin
          __gtk_list_append_items(list, items)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1clear_1items, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_list_clear_items(list, start, end_)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1clear_1items, JNI.env, self.jni_id, list, start, end_)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_list_clear_items(list, start, end_)
        self.attr_lock.lock
        begin
          __gtk_list_clear_items(list, start, end_)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1insert_1items, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_list_insert_items(list, items, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1insert_1items, JNI.env, self.jni_id, list, items, position)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_list_insert_items(list, items, position)
        self.attr_lock.lock
        begin
          __gtk_list_insert_items(list, items, position)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1item_1new_1with_1label, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __gtk_list_item_new_with_label(label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1item_1new_1with_1label, JNI.env, self.jni_id, label.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gtk_list_item_new_with_label(label)
        self.attr_lock.lock
        begin
          return __gtk_list_item_new_with_label(label)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1remove_1items, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_list_remove_items(list, items)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1remove_1items, JNI.env, self.jni_id, list, items)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_list_remove_items(list, items)
        self.attr_lock.lock
        begin
          __gtk_list_remove_items(list, items)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1select_1item, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_list_select_item(list, item)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1select_1item, JNI.env, self.jni_id, list, item)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_list_select_item(list, item)
        self.attr_lock.lock
        begin
          __gtk_list_select_item(list, item)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1unselect_1all, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_list_unselect_all(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1unselect_1all, JNI.env, self.jni_id, list)
      end
      
      typesig { [::Java::Int] }
      def gtk_list_unselect_all(list)
        self.attr_lock.lock
        begin
          __gtk_list_unselect_all(list)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1unselect_1item, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_list_unselect_item(list, item)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1unselect_1item, JNI.env, self.jni_id, list, item)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_list_unselect_item(list, item)
        self.attr_lock.lock
        begin
          __gtk_list_unselect_item(list, item)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1append, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_list_store_append(list_store, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1append, JNI.env, self.jni_id, list_store, iter)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_list_store_append(list_store, iter)
        self.attr_lock.lock
        begin
          __gtk_list_store_append(list_store, iter)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1clear, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_list_store_clear(store)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1clear, JNI.env, self.jni_id, store)
      end
      
      typesig { [::Java::Int] }
      def gtk_list_store_clear(store)
        self.attr_lock.lock
        begin
          __gtk_list_store_clear(store)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1insert, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_list_store_insert(list_store, iter, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1insert, JNI.env, self.jni_id, list_store, iter, position)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_list_store_insert(list_store, iter, position)
        self.attr_lock.lock
        begin
          __gtk_list_store_insert(list_store, iter, position)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1newv, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def __gtk_list_store_newv(num_columns, types)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1newv, JNI.env, self.jni_id, num_columns, types.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def gtk_list_store_newv(num_columns, types)
        self.attr_lock.lock
        begin
          return __gtk_list_store_newv(num_columns, types)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1remove, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_list_store_remove(list_store, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1remove, JNI.env, self.jni_id, list_store, iter)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_list_store_remove(list_store, iter)
        self.attr_lock.lock
        begin
          __gtk_list_store_remove(list_store, iter)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1set__III_3BI, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def __gtk_list_store_set(store, iter, column, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1set__III_3BI, JNI.env, self.jni_id, store, iter, column, value.jni_id, terminator)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def gtk_list_store_set(store, iter, column, value, terminator)
        self.attr_lock.lock
        begin
          __gtk_list_store_set(store, iter, column, value, terminator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1set__IIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_list_store_set(store, iter, column, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1set__IIIII, JNI.env, self.jni_id, store, iter, column, value, terminator)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_list_store_set(store, iter, column, value, terminator)
        self.attr_lock.lock
        begin
          __gtk_list_store_set(store, iter, column, value, terminator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1set__IIIJI, [:pointer, :long, :int32, :int32, :int32, :int64, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int] }
      def __gtk_list_store_set(store, iter, column, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1set__IIIJI, JNI.env, self.jni_id, store, iter, column, value, terminator)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int] }
      def gtk_list_store_set(store, iter, column, value, terminator)
        self.attr_lock.lock
        begin
          __gtk_list_store_set(store, iter, column, value, terminator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1set__IIIL#{GdkColor.jni_name}_2I".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkColor, ::Java::Int] }
      def __gtk_list_store_set(store, iter, column, value, terminator)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1set__IIIL#{GdkColor.jni_name}_2I".to_sym, JNI.env, self.jni_id, store, iter, column, value.jni_id, terminator)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkColor, ::Java::Int] }
      def gtk_list_store_set(store, iter, column, value, terminator)
        self.attr_lock.lock
        begin
          __gtk_list_store_set(store, iter, column, value, terminator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1set__IIIZI, [:pointer, :long, :int32, :int32, :int32, :int8, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int] }
      def __gtk_list_store_set(store, iter, column, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1set__IIIZI, JNI.env, self.jni_id, store, iter, column, value ? 1 : 0, terminator)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int] }
      def gtk_list_store_set(store, iter, column, value, terminator)
        self.attr_lock.lock
        begin
          __gtk_list_store_set(store, iter, column, value, terminator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1major_1version, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_major_version
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1major_1version, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_major_version
        self.attr_lock.lock
        begin
          return __gtk_major_version
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1minor_1version, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_minor_version
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1minor_1version, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_minor_version
        self.attr_lock.lock
        begin
          return __gtk_minor_version
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1micro_1version, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_micro_version
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1micro_1version, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_micro_version
        self.attr_lock.lock
        begin
          return __gtk_micro_version
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1main, [:pointer, :long], :void
      typesig { [] }
      def __gtk_main
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1main, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_main
        self.attr_lock.lock
        begin
          __gtk_main
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1main_1iteration, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_main_iteration
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1main_1iteration, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_main_iteration
        self.attr_lock.lock
        begin
          return __gtk_main_iteration
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1main_1do_1event, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_main_do_event(event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1main_1do_1event, JNI.env, self.jni_id, event)
      end
      
      typesig { [::Java::Int] }
      def gtk_main_do_event(event)
        self.attr_lock.lock
        begin
          __gtk_main_do_event(event)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1bar_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_menu_bar_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1bar_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_menu_bar_new
        self.attr_lock.lock
        begin
          return __gtk_menu_bar_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1item_1remove_1submenu, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_menu_item_remove_submenu(menu_item)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1item_1remove_1submenu, JNI.env, self.jni_id, menu_item)
      end
      
      typesig { [::Java::Int] }
      def gtk_menu_item_remove_submenu(menu_item)
        self.attr_lock.lock
        begin
          __gtk_menu_item_remove_submenu(menu_item)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1item_1get_1submenu, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_menu_item_get_submenu(menu_item)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1item_1get_1submenu, JNI.env, self.jni_id, menu_item)
      end
      
      typesig { [::Java::Int] }
      def gtk_menu_item_get_submenu(menu_item)
        self.attr_lock.lock
        begin
          return __gtk_menu_item_get_submenu(menu_item)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1item_1set_1submenu, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_menu_item_set_submenu(menu_item, submenu)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1item_1set_1submenu, JNI.env, self.jni_id, menu_item, submenu)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_menu_item_set_submenu(menu_item, submenu)
        self.attr_lock.lock
        begin
          __gtk_menu_item_set_submenu(menu_item, submenu)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_menu_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_menu_new
        self.attr_lock.lock
        begin
          return __gtk_menu_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1popdown, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_menu_popdown(menu)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1popdown, JNI.env, self.jni_id, menu)
      end
      
      typesig { [::Java::Int] }
      def gtk_menu_popdown(menu)
        self.attr_lock.lock
        begin
          __gtk_menu_popdown(menu)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1popup, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_menu_popup(menu, parent_menu_shell, parent_menu_item, func, data, button, activate_time)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1popup, JNI.env, self.jni_id, menu, parent_menu_shell, parent_menu_item, func, data, button, activate_time)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_menu_popup(menu, parent_menu_shell, parent_menu_item, func, data, button, activate_time)
        self.attr_lock.lock
        begin
          __gtk_menu_popup(menu, parent_menu_shell, parent_menu_item, func, data, button, activate_time)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1shell_1deactivate, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_menu_shell_deactivate(menu_shell)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1shell_1deactivate, JNI.env, self.jni_id, menu_shell)
      end
      
      typesig { [::Java::Int] }
      def gtk_menu_shell_deactivate(menu_shell)
        self.attr_lock.lock
        begin
          __gtk_menu_shell_deactivate(menu_shell)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1shell_1insert, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_menu_shell_insert(menu_shell, child, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1shell_1insert, JNI.env, self.jni_id, menu_shell, child, position)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_menu_shell_insert(menu_shell, child, position)
        self.attr_lock.lock
        begin
          __gtk_menu_shell_insert(menu_shell, child, position)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1shell_1select_1item, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_menu_shell_select_item(menu_shell, menu_item)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1shell_1select_1item, JNI.env, self.jni_id, menu_shell, menu_item)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_menu_shell_select_item(menu_shell, menu_item)
        self.attr_lock.lock
        begin
          __gtk_menu_shell_select_item(menu_shell, menu_item)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1shell_1set_1take_1focus, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_menu_shell_set_take_focus(menu_shell, take_focus)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1shell_1set_1take_1focus, JNI.env, self.jni_id, menu_shell, take_focus ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_menu_shell_set_take_focus(menu_shell, take_focus)
        self.attr_lock.lock
        begin
          __gtk_menu_shell_set_take_focus(menu_shell, take_focus)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1message_1dialog_1new, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_message_dialog_new(parent, flags, type, buttons, message_format)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1message_1dialog_1new, JNI.env, self.jni_id, parent, flags, type, buttons, message_format.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_message_dialog_new(parent, flags, type, buttons, message_format)
        self.attr_lock.lock
        begin
          return __gtk_message_dialog_new(parent, flags, type, buttons, message_format)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1misc_1set_1alignment, [:pointer, :long, :int32, :float, :float], :void
      typesig { [::Java::Int, ::Java::Float, ::Java::Float] }
      def __gtk_misc_set_alignment(misc, xalign, yalign)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1misc_1set_1alignment, JNI.env, self.jni_id, misc, xalign, yalign)
      end
      
      typesig { [::Java::Int, ::Java::Float, ::Java::Float] }
      def gtk_misc_set_alignment(misc, xalign, yalign)
        self.attr_lock.lock
        begin
          __gtk_misc_set_alignment(misc, xalign, yalign)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1get_1current_1page, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_notebook_get_current_page(notebook)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1get_1current_1page, JNI.env, self.jni_id, notebook)
      end
      
      typesig { [::Java::Int] }
      def gtk_notebook_get_current_page(notebook)
        self.attr_lock.lock
        begin
          return __gtk_notebook_get_current_page(notebook)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1get_1scrollable, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_notebook_get_scrollable(notebook)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1get_1scrollable, JNI.env, self.jni_id, notebook) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_notebook_get_scrollable(notebook)
        self.attr_lock.lock
        begin
          return __gtk_notebook_get_scrollable(notebook)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1insert_1page, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_notebook_insert_page(notebook, child, tab_label, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1insert_1page, JNI.env, self.jni_id, notebook, child, tab_label, position)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_notebook_insert_page(notebook, child, tab_label, position)
        self.attr_lock.lock
        begin
          __gtk_notebook_insert_page(notebook, child, tab_label, position)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_notebook_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_notebook_new
        self.attr_lock.lock
        begin
          return __gtk_notebook_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1next_1page, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_notebook_next_page(notebook)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1next_1page, JNI.env, self.jni_id, notebook)
      end
      
      typesig { [::Java::Int] }
      def gtk_notebook_next_page(notebook)
        self.attr_lock.lock
        begin
          __gtk_notebook_next_page(notebook)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1prev_1page, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_notebook_prev_page(notebook)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1prev_1page, JNI.env, self.jni_id, notebook)
      end
      
      typesig { [::Java::Int] }
      def gtk_notebook_prev_page(notebook)
        self.attr_lock.lock
        begin
          __gtk_notebook_prev_page(notebook)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1remove_1page, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_notebook_remove_page(notebook, page_num)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1remove_1page, JNI.env, self.jni_id, notebook, page_num)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_notebook_remove_page(notebook, page_num)
        self.attr_lock.lock
        begin
          __gtk_notebook_remove_page(notebook, page_num)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1set_1current_1page, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_notebook_set_current_page(notebook, page_num)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1set_1current_1page, JNI.env, self.jni_id, notebook, page_num)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_notebook_set_current_page(notebook, page_num)
        self.attr_lock.lock
        begin
          __gtk_notebook_set_current_page(notebook, page_num)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1set_1scrollable, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_notebook_set_scrollable(notebook, scrollable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1set_1scrollable, JNI.env, self.jni_id, notebook, scrollable ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_notebook_set_scrollable(notebook, scrollable)
        self.attr_lock.lock
        begin
          __gtk_notebook_set_scrollable(notebook, scrollable)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1set_1show_1tabs, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_notebook_set_show_tabs(notebook, show_tabs)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1set_1show_1tabs, JNI.env, self.jni_id, notebook, show_tabs ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_notebook_set_show_tabs(notebook, show_tabs)
        self.attr_lock.lock
        begin
          __gtk_notebook_set_show_tabs(notebook, show_tabs)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1set_1tab_1pos, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_notebook_set_tab_pos(notebook, pos)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1set_1tab_1pos, JNI.env, self.jni_id, notebook, pos)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_notebook_set_tab_pos(notebook, pos)
        self.attr_lock.lock
        begin
          __gtk_notebook_set_tab_pos(notebook, pos)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1object_1sink, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_object_sink(object)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1object_1sink, JNI.env, self.jni_id, object)
      end
      
      typesig { [::Java::Int] }
      def gtk_object_sink(object)
        self.attr_lock.lock
        begin
          __gtk_object_sink(object)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_page_setup_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_page_setup_new
        self.attr_lock.lock
        begin
          return __gtk_page_setup_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1orientation, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_page_setup_get_orientation(setup)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1orientation, JNI.env, self.jni_id, setup)
      end
      
      typesig { [::Java::Int] }
      def gtk_page_setup_get_orientation(setup)
        self.attr_lock.lock
        begin
          return __gtk_page_setup_get_orientation(setup)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1orientation, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_page_setup_set_orientation(setup, orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1orientation, JNI.env, self.jni_id, setup, orientation)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_page_setup_set_orientation(setup, orientation)
        self.attr_lock.lock
        begin
          __gtk_page_setup_set_orientation(setup, orientation)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1paper_1size, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_page_setup_get_paper_size(setup)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1paper_1size, JNI.env, self.jni_id, setup)
      end
      
      typesig { [::Java::Int] }
      def gtk_page_setup_get_paper_size(setup)
        self.attr_lock.lock
        begin
          return __gtk_page_setup_get_paper_size(setup)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1paper_1size, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_page_setup_set_paper_size(setup, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1paper_1size, JNI.env, self.jni_id, setup, size)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_page_setup_set_paper_size(setup, size)
        self.attr_lock.lock
        begin
          __gtk_page_setup_set_paper_size(setup, size)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1top_1margin, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_page_setup_get_top_margin(setup, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1top_1margin, JNI.env, self.jni_id, setup, unit)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_page_setup_get_top_margin(setup, unit)
        self.attr_lock.lock
        begin
          return __gtk_page_setup_get_top_margin(setup, unit)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1top_1margin, [:pointer, :long, :int32, :double, :int32], :void
      typesig { [::Java::Int, ::Java::Double, ::Java::Int] }
      def __gtk_page_setup_set_top_margin(setup, margin, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1top_1margin, JNI.env, self.jni_id, setup, margin, unit)
      end
      
      typesig { [::Java::Int, ::Java::Double, ::Java::Int] }
      def gtk_page_setup_set_top_margin(setup, margin, unit)
        self.attr_lock.lock
        begin
          __gtk_page_setup_set_top_margin(setup, margin, unit)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1bottom_1margin, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_page_setup_get_bottom_margin(setup, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1bottom_1margin, JNI.env, self.jni_id, setup, unit)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_page_setup_get_bottom_margin(setup, unit)
        self.attr_lock.lock
        begin
          return __gtk_page_setup_get_bottom_margin(setup, unit)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1bottom_1margin, [:pointer, :long, :int32, :double, :int32], :void
      typesig { [::Java::Int, ::Java::Double, ::Java::Int] }
      def __gtk_page_setup_set_bottom_margin(setup, margin, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1bottom_1margin, JNI.env, self.jni_id, setup, margin, unit)
      end
      
      typesig { [::Java::Int, ::Java::Double, ::Java::Int] }
      def gtk_page_setup_set_bottom_margin(setup, margin, unit)
        self.attr_lock.lock
        begin
          __gtk_page_setup_set_bottom_margin(setup, margin, unit)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1left_1margin, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_page_setup_get_left_margin(setup, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1left_1margin, JNI.env, self.jni_id, setup, unit)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_page_setup_get_left_margin(setup, unit)
        self.attr_lock.lock
        begin
          return __gtk_page_setup_get_left_margin(setup, unit)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1left_1margin, [:pointer, :long, :int32, :double, :int32], :void
      typesig { [::Java::Int, ::Java::Double, ::Java::Int] }
      def __gtk_page_setup_set_left_margin(setup, margin, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1left_1margin, JNI.env, self.jni_id, setup, margin, unit)
      end
      
      typesig { [::Java::Int, ::Java::Double, ::Java::Int] }
      def gtk_page_setup_set_left_margin(setup, margin, unit)
        self.attr_lock.lock
        begin
          __gtk_page_setup_set_left_margin(setup, margin, unit)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1right_1margin, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_page_setup_get_right_margin(setup, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1right_1margin, JNI.env, self.jni_id, setup, unit)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_page_setup_get_right_margin(setup, unit)
        self.attr_lock.lock
        begin
          return __gtk_page_setup_get_right_margin(setup, unit)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1right_1margin, [:pointer, :long, :int32, :double, :int32], :void
      typesig { [::Java::Int, ::Java::Double, ::Java::Int] }
      def __gtk_page_setup_set_right_margin(setup, margin, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1right_1margin, JNI.env, self.jni_id, setup, margin, unit)
      end
      
      typesig { [::Java::Int, ::Java::Double, ::Java::Int] }
      def gtk_page_setup_set_right_margin(setup, margin, unit)
        self.attr_lock.lock
        begin
          __gtk_page_setup_set_right_margin(setup, margin, unit)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1paper_1width, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_page_setup_get_paper_width(setup, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1paper_1width, JNI.env, self.jni_id, setup, unit)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_page_setup_get_paper_width(setup, unit)
        self.attr_lock.lock
        begin
          return __gtk_page_setup_get_paper_width(setup, unit)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1paper_1height, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_page_setup_get_paper_height(setup, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1paper_1height, JNI.env, self.jni_id, setup, unit)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_page_setup_get_paper_height(setup, unit)
        self.attr_lock.lock
        begin
          return __gtk_page_setup_get_paper_height(setup, unit)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1page_1width, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_page_setup_get_page_width(setup, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1page_1width, JNI.env, self.jni_id, setup, unit)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_page_setup_get_page_width(setup, unit)
        self.attr_lock.lock
        begin
          return __gtk_page_setup_get_page_width(setup, unit)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1page_1height, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_page_setup_get_page_height(setup, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1page_1height, JNI.env, self.jni_id, setup, unit)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_page_setup_get_page_height(setup, unit)
        self.attr_lock.lock
        begin
          return __gtk_page_setup_get_page_height(setup, unit)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1handle, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_paint_handle(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1handle, JNI.env, self.jni_id, style, window, state_type, shadow_type, area.jni_id, widget, detail.jni_id, x, y, width, height, orientation)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_paint_handle(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, orientation)
        self.attr_lock.lock
        begin
          __gtk_paint_handle(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, orientation)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1flat_1box, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_paint_flat_box(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1flat_1box, JNI.env, self.jni_id, style, window, state_type, shadow_type, area.jni_id, widget, detail.jni_id, x, y, width, height)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_paint_flat_box(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        self.attr_lock.lock
        begin
          __gtk_paint_flat_box(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1focus, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_paint_focus(style, window, state_type, area, widget, detail, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1focus, JNI.env, self.jni_id, style, window, state_type, area.jni_id, widget, detail.jni_id, x, y, width, height)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_paint_focus(style, window, state_type, area, widget, detail, x, y, width, height)
        self.attr_lock.lock
        begin
          __gtk_paint_focus(style, window, state_type, area, widget, detail, x, y, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1option, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_paint_option(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1option, JNI.env, self.jni_id, style, window, state_type, shadow_type, area.jni_id, widget, detail.jni_id, x, y, width, height)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_paint_option(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        self.attr_lock.lock
        begin
          __gtk_paint_option(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1slider, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_paint_slider(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1slider, JNI.env, self.jni_id, style, window, state_type, shadow_type, area.jni_id, widget, detail.jni_id, x, y, width, height, orientation)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_paint_slider(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, orientation)
        self.attr_lock.lock
        begin
          __gtk_paint_slider(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, orientation)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1tab, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_paint_tab(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1tab, JNI.env, self.jni_id, style, window, state_type, shadow_type, area.jni_id, widget, detail.jni_id, x, y, width, height)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_paint_tab(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        self.attr_lock.lock
        begin
          __gtk_paint_tab(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1arrow, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int8, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_paint_arrow(style, window, state_type, shadow_type, area, widget, detail, arrow_type, fill, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1arrow, JNI.env, self.jni_id, style, window, state_type, shadow_type, area.jni_id, widget, detail.jni_id, arrow_type, fill ? 1 : 0, x, y, width, height)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_paint_arrow(style, window, state_type, shadow_type, area, widget, detail, arrow_type, fill, x, y, width, height)
        self.attr_lock.lock
        begin
          __gtk_paint_arrow(style, window, state_type, shadow_type, area, widget, detail, arrow_type, fill, x, y, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1box, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_paint_box(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1box, JNI.env, self.jni_id, style, window, state_type, shadow_type, area.jni_id, widget, detail.jni_id, x, y, width, height)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_paint_box(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        self.attr_lock.lock
        begin
          __gtk_paint_box(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1box_1gap, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_paint_box_gap(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, gap_side, gap_x, gap_width)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1box_1gap, JNI.env, self.jni_id, style, window, state_type, shadow_type, area.jni_id, widget, detail.jni_id, x, y, width, height, gap_side, gap_x, gap_width)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_paint_box_gap(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, gap_side, gap_x, gap_width)
        self.attr_lock.lock
        begin
          __gtk_paint_box_gap(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, gap_side, gap_x, gap_width)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1check, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_paint_check(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1check, JNI.env, self.jni_id, style, window, state_type, shadow_type, area.jni_id, widget, detail.jni_id, x, y, width, height)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_paint_check(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        self.attr_lock.lock
        begin
          __gtk_paint_check(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1expander, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_paint_expander(style, window, state_type, area, widget, detail, x, y, expander_style)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1expander, JNI.env, self.jni_id, style, window, state_type, area.jni_id, widget, detail.jni_id, x, y, expander_style)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_paint_expander(style, window, state_type, area, widget, detail, x, y, expander_style)
        self.attr_lock.lock
        begin
          __gtk_paint_expander(style, window, state_type, area, widget, detail, x, y, expander_style)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1extension, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_paint_extension(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, gap_side)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1extension, JNI.env, self.jni_id, style, window, state_type, shadow_type, area.jni_id, widget, detail.jni_id, x, y, width, height, gap_side)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_paint_extension(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, gap_side)
        self.attr_lock.lock
        begin
          __gtk_paint_extension(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, gap_side)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1hline, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_paint_hline(style, window, state_type, area, widget, detail, x1, x2, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1hline, JNI.env, self.jni_id, style, window, state_type, area.jni_id, widget, detail.jni_id, x1, x2, y)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_paint_hline(style, window, state_type, area, widget, detail, x1, x2, y)
        self.attr_lock.lock
        begin
          __gtk_paint_hline(style, window, state_type, area, widget, detail, x1, x2, y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1layout, [:pointer, :long, :int32, :int32, :int32, :int8, :long, :int32, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_paint_layout(style, window, state_type, use_text, area, widget, detail, x, y, layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1layout, JNI.env, self.jni_id, style, window, state_type, use_text ? 1 : 0, area.jni_id, widget, detail.jni_id, x, y, layout)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_paint_layout(style, window, state_type, use_text, area, widget, detail, x, y, layout)
        self.attr_lock.lock
        begin
          __gtk_paint_layout(style, window, state_type, use_text, area, widget, detail, x, y, layout)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1shadow_1gap, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_paint_shadow_gap(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, gap_side, gap_x, gap_width)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1shadow_1gap, JNI.env, self.jni_id, style, window, state_type, shadow_type, area.jni_id, widget, detail.jni_id, x, y, width, height, gap_side, gap_x, gap_width)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_paint_shadow_gap(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, gap_side, gap_x, gap_width)
        self.attr_lock.lock
        begin
          __gtk_paint_shadow_gap(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, gap_side, gap_x, gap_width)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1shadow, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_paint_shadow(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1shadow, JNI.env, self.jni_id, style, window, state_type, shadow_type, area.jni_id, widget, detail.jni_id, x, y, width, height)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_paint_shadow(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        self.attr_lock.lock
        begin
          __gtk_paint_shadow(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1vline, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_paint_vline(style, window, state_type, area, widget, detail, y1, y2, x)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1vline, JNI.env, self.jni_id, style, window, state_type, area.jni_id, widget, detail.jni_id, y1, y2, x)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_paint_vline(style, window, state_type, area, widget, detail, y1, y2, x)
        self.attr_lock.lock
        begin
          __gtk_paint_vline(style, window, state_type, area, widget, detail, y1, y2, x)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_paper_size_free(size)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1free, JNI.env, self.jni_id, size)
      end
      
      typesig { [::Java::Int] }
      def gtk_paper_size_free(size)
        self.attr_lock.lock
        begin
          __gtk_paper_size_free(size)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1new, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __gtk_paper_size_new(name)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1new, JNI.env, self.jni_id, name.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gtk_paper_size_new(name)
        self.attr_lock.lock
        begin
          return __gtk_paper_size_new(name)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1new_1from_1ppd, [:pointer, :long, :long, :long, :double, :double], :int32
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Double, ::Java::Double] }
      def __gtk_paper_size_new_from_ppd(ppd_name, ppd_display_name, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1new_1from_1ppd, JNI.env, self.jni_id, ppd_name.jni_id, ppd_display_name.jni_id, width, height)
      end
      
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Double, ::Java::Double] }
      def gtk_paper_size_new_from_ppd(ppd_name, ppd_display_name, width, height)
        self.attr_lock.lock
        begin
          return __gtk_paper_size_new_from_ppd(ppd_name, ppd_display_name, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1new_1custom, [:pointer, :long, :long, :long, :double, :double, :int32], :int32
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Double, ::Java::Double, ::Java::Int] }
      def __gtk_paper_size_new_custom(name, display_name, width, height, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1new_1custom, JNI.env, self.jni_id, name.jni_id, display_name.jni_id, width, height, unit)
      end
      
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Double, ::Java::Double, ::Java::Int] }
      def gtk_paper_size_new_custom(name, display_name, width, height, unit)
        self.attr_lock.lock
        begin
          return __gtk_paper_size_new_custom(name, display_name, width, height, unit)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1get_1name, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_paper_size_get_name(size)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1get_1name, JNI.env, self.jni_id, size)
      end
      
      typesig { [::Java::Int] }
      def gtk_paper_size_get_name(size)
        self.attr_lock.lock
        begin
          return __gtk_paper_size_get_name(size)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1get_1display_1name, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_paper_size_get_display_name(size)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1get_1display_1name, JNI.env, self.jni_id, size)
      end
      
      typesig { [::Java::Int] }
      def gtk_paper_size_get_display_name(size)
        self.attr_lock.lock
        begin
          return __gtk_paper_size_get_display_name(size)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1get_1ppd_1name, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_paper_size_get_ppd_name(size)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1get_1ppd_1name, JNI.env, self.jni_id, size)
      end
      
      typesig { [::Java::Int] }
      def gtk_paper_size_get_ppd_name(size)
        self.attr_lock.lock
        begin
          return __gtk_paper_size_get_ppd_name(size)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1get_1width, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_paper_size_get_width(size, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1get_1width, JNI.env, self.jni_id, size, unit)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_paper_size_get_width(size, unit)
        self.attr_lock.lock
        begin
          return __gtk_paper_size_get_width(size, unit)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1get_1height, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_paper_size_get_height(size, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1get_1height, JNI.env, self.jni_id, size, unit)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_paper_size_get_height(size, unit)
        self.attr_lock.lock
        begin
          return __gtk_paper_size_get_height(size, unit)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1is_1custom, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_paper_size_is_custom(size)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1is_1custom, JNI.env, self.jni_id, size) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_paper_size_is_custom(size)
        self.attr_lock.lock
        begin
          return __gtk_paper_size_is_custom(size)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1plug_1get_1id, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_plug_get_id(plug)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1plug_1get_1id, JNI.env, self.jni_id, plug)
      end
      
      typesig { [::Java::Int] }
      def gtk_plug_get_id(plug)
        self.attr_lock.lock
        begin
          return __gtk_plug_get_id(plug)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1plug_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_plug_new(socket_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1plug_1new, JNI.env, self.jni_id, socket_id)
      end
      
      typesig { [::Java::Int] }
      def gtk_plug_new(socket_id)
        self.attr_lock.lock
        begin
          return __gtk_plug_new(socket_id)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1printer_1get_1backend, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_printer_get_backend(printer)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1printer_1get_1backend, JNI.env, self.jni_id, printer)
      end
      
      typesig { [::Java::Int] }
      def gtk_printer_get_backend(printer)
        self.attr_lock.lock
        begin
          return __gtk_printer_get_backend(printer)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1printer_1get_1name, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_printer_get_name(printer)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1printer_1get_1name, JNI.env, self.jni_id, printer)
      end
      
      typesig { [::Java::Int] }
      def gtk_printer_get_name(printer)
        self.attr_lock.lock
        begin
          return __gtk_printer_get_name(printer)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1printer_1is_1default, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_printer_is_default(printer)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1printer_1is_1default, JNI.env, self.jni_id, printer) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_printer_is_default(printer)
        self.attr_lock.lock
        begin
          return __gtk_printer_is_default(printer)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1enumerate_1printers, [:pointer, :long, :int32, :int32, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      def __gtk_enumerate_printers(func, data, destroy, wait)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1enumerate_1printers, JNI.env, self.jni_id, func, data, destroy, wait ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      def gtk_enumerate_printers(func, data, destroy, wait)
        self.attr_lock.lock
        begin
          __gtk_enumerate_printers(func, data, destroy, wait)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1new, [:pointer, :long, :long, :int32, :int32, :int32], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_print_job_new(title, printer, settings, page_setup)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1new, JNI.env, self.jni_id, title.jni_id, printer, settings, page_setup)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_print_job_new(title, printer, settings, page_setup)
        self.attr_lock.lock
        begin
          return __gtk_print_job_new(title, printer, settings, page_setup)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1get_1settings, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_print_job_get_settings(job)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1get_1settings, JNI.env, self.jni_id, job)
      end
      
      typesig { [::Java::Int] }
      def gtk_print_job_get_settings(job)
        self.attr_lock.lock
        begin
          return __gtk_print_job_get_settings(job)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1get_1printer, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_print_job_get_printer(job)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1get_1printer, JNI.env, self.jni_id, job)
      end
      
      typesig { [::Java::Int] }
      def gtk_print_job_get_printer(job)
        self.attr_lock.lock
        begin
          return __gtk_print_job_get_printer(job)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1get_1title, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_print_job_get_title(job)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1get_1title, JNI.env, self.jni_id, job)
      end
      
      typesig { [::Java::Int] }
      def gtk_print_job_get_title(job)
        self.attr_lock.lock
        begin
          return __gtk_print_job_get_title(job)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1get_1status, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_print_job_get_status(job)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1get_1status, JNI.env, self.jni_id, job)
      end
      
      typesig { [::Java::Int] }
      def gtk_print_job_get_status(job)
        self.attr_lock.lock
        begin
          return __gtk_print_job_get_status(job)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1set_1source_1file, [:pointer, :long, :int32, :long, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      def __gtk_print_job_set_source_file(job, filename, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1set_1source_1file, JNI.env, self.jni_id, job, filename.jni_id, error.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      def gtk_print_job_set_source_file(job, filename, error)
        self.attr_lock.lock
        begin
          return __gtk_print_job_set_source_file(job, filename, error)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1get_1surface, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def __gtk_print_job_get_surface(job, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1get_1surface, JNI.env, self.jni_id, job, error.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def gtk_print_job_get_surface(job, error)
        self.attr_lock.lock
        begin
          return __gtk_print_job_get_surface(job, error)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1send, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_print_job_send(job, callback, user_data, dnotify)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1send, JNI.env, self.jni_id, job, callback, user_data, dnotify)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_print_job_send(job, callback, user_data, dnotify)
        self.attr_lock.lock
        begin
          __gtk_print_job_send(job, callback, user_data, dnotify)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_print_settings_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_print_settings_new
        self.attr_lock.lock
        begin
          return __gtk_print_settings_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1foreach, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_print_settings_foreach(settings, func, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1foreach, JNI.env, self.jni_id, settings, func, data)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_print_settings_foreach(settings, func, data)
        self.attr_lock.lock
        begin
          __gtk_print_settings_foreach(settings, func, data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_print_settings_get(settings, key)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get, JNI.env, self.jni_id, settings, key.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_print_settings_get(settings, key)
        self.attr_lock.lock
        begin
          return __gtk_print_settings_get(settings, key)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      def __gtk_print_settings_set(settings, key, value)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set, JNI.env, self.jni_id, settings, key.jni_id, value.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      def gtk_print_settings_set(settings, key, value)
        self.attr_lock.lock
        begin
          __gtk_print_settings_set(settings, key, value)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1printer, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_print_settings_get_printer(settings)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1printer, JNI.env, self.jni_id, settings)
      end
      
      typesig { [::Java::Int] }
      def gtk_print_settings_get_printer(settings)
        self.attr_lock.lock
        begin
          return __gtk_print_settings_get_printer(settings)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1printer, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_print_settings_set_printer(settings, printer)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1printer, JNI.env, self.jni_id, settings, printer.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_print_settings_set_printer(settings, printer)
        self.attr_lock.lock
        begin
          __gtk_print_settings_set_printer(settings, printer)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1orientation, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_print_settings_get_orientation(settings)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1orientation, JNI.env, self.jni_id, settings)
      end
      
      typesig { [::Java::Int] }
      def gtk_print_settings_get_orientation(settings)
        self.attr_lock.lock
        begin
          return __gtk_print_settings_get_orientation(settings)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1orientation, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_print_settings_set_orientation(settings, orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1orientation, JNI.env, self.jni_id, settings, orientation)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_print_settings_set_orientation(settings, orientation)
        self.attr_lock.lock
        begin
          __gtk_print_settings_set_orientation(settings, orientation)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1collate, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_print_settings_get_collate(settings)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1collate, JNI.env, self.jni_id, settings) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_print_settings_get_collate(settings)
        self.attr_lock.lock
        begin
          return __gtk_print_settings_get_collate(settings)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1collate, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_print_settings_set_collate(settings, collate)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1collate, JNI.env, self.jni_id, settings, collate ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_print_settings_set_collate(settings, collate)
        self.attr_lock.lock
        begin
          __gtk_print_settings_set_collate(settings, collate)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1n_1copies, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_print_settings_get_n_copies(settings)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1n_1copies, JNI.env, self.jni_id, settings)
      end
      
      typesig { [::Java::Int] }
      def gtk_print_settings_get_n_copies(settings)
        self.attr_lock.lock
        begin
          return __gtk_print_settings_get_n_copies(settings)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1n_1copies, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_print_settings_set_n_copies(settings, num_copies)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1n_1copies, JNI.env, self.jni_id, settings, num_copies)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_print_settings_set_n_copies(settings, num_copies)
        self.attr_lock.lock
        begin
          __gtk_print_settings_set_n_copies(settings, num_copies)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1print_1pages, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_print_settings_get_print_pages(settings)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1print_1pages, JNI.env, self.jni_id, settings)
      end
      
      typesig { [::Java::Int] }
      def gtk_print_settings_get_print_pages(settings)
        self.attr_lock.lock
        begin
          return __gtk_print_settings_get_print_pages(settings)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1print_1pages, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_print_settings_set_print_pages(settings, pages)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1print_1pages, JNI.env, self.jni_id, settings, pages)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_print_settings_set_print_pages(settings, pages)
        self.attr_lock.lock
        begin
          __gtk_print_settings_set_print_pages(settings, pages)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1page_1ranges, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def __gtk_print_settings_get_page_ranges(settings, num_ranges)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1page_1ranges, JNI.env, self.jni_id, settings, num_ranges.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def gtk_print_settings_get_page_ranges(settings, num_ranges)
        self.attr_lock.lock
        begin
          return __gtk_print_settings_get_page_ranges(settings, num_ranges)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1page_1ranges, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      def __gtk_print_settings_set_page_ranges(settings, page_ranges, num_ranges)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1page_1ranges, JNI.env, self.jni_id, settings, page_ranges.jni_id, num_ranges)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      def gtk_print_settings_set_page_ranges(settings, page_ranges, num_ranges)
        self.attr_lock.lock
        begin
          __gtk_print_settings_set_page_ranges(settings, page_ranges, num_ranges)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1paper_1width, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_print_settings_get_paper_width(settings, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1paper_1width, JNI.env, self.jni_id, settings, unit)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_print_settings_get_paper_width(settings, unit)
        self.attr_lock.lock
        begin
          return __gtk_print_settings_get_paper_width(settings, unit)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1paper_1height, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_print_settings_get_paper_height(settings, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1paper_1height, JNI.env, self.jni_id, settings, unit)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_print_settings_get_paper_height(settings, unit)
        self.attr_lock.lock
        begin
          return __gtk_print_settings_get_paper_height(settings, unit)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1resolution, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_print_settings_get_resolution(settings)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1resolution, JNI.env, self.jni_id, settings)
      end
      
      typesig { [::Java::Int] }
      def gtk_print_settings_get_resolution(settings)
        self.attr_lock.lock
        begin
          return __gtk_print_settings_get_resolution(settings)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1new, [:pointer, :long, :long, :int32], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      def __gtk_print_unix_dialog_new(title, parent)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1new, JNI.env, self.jni_id, title.jni_id, parent)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      def gtk_print_unix_dialog_new(title, parent)
        self.attr_lock.lock
        begin
          return __gtk_print_unix_dialog_new(title, parent)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1set_1page_1setup, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_print_unix_dialog_set_page_setup(dialog, page_setup)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1set_1page_1setup, JNI.env, self.jni_id, dialog, page_setup)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_print_unix_dialog_set_page_setup(dialog, page_setup)
        self.attr_lock.lock
        begin
          __gtk_print_unix_dialog_set_page_setup(dialog, page_setup)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1get_1page_1setup, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_print_unix_dialog_get_page_setup(dialog)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1get_1page_1setup, JNI.env, self.jni_id, dialog)
      end
      
      typesig { [::Java::Int] }
      def gtk_print_unix_dialog_get_page_setup(dialog)
        self.attr_lock.lock
        begin
          return __gtk_print_unix_dialog_get_page_setup(dialog)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1set_1current_1page, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_print_unix_dialog_set_current_page(dialog, current_page)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1set_1current_1page, JNI.env, self.jni_id, dialog, current_page)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_print_unix_dialog_set_current_page(dialog, current_page)
        self.attr_lock.lock
        begin
          __gtk_print_unix_dialog_set_current_page(dialog, current_page)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1get_1current_1page, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_print_unix_dialog_get_current_page(dialog)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1get_1current_1page, JNI.env, self.jni_id, dialog)
      end
      
      typesig { [::Java::Int] }
      def gtk_print_unix_dialog_get_current_page(dialog)
        self.attr_lock.lock
        begin
          return __gtk_print_unix_dialog_get_current_page(dialog)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1set_1settings, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_print_unix_dialog_set_settings(dialog, settings)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1set_1settings, JNI.env, self.jni_id, dialog, settings)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_print_unix_dialog_set_settings(dialog, settings)
        self.attr_lock.lock
        begin
          __gtk_print_unix_dialog_set_settings(dialog, settings)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1get_1settings, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_print_unix_dialog_get_settings(dialog)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1get_1settings, JNI.env, self.jni_id, dialog)
      end
      
      typesig { [::Java::Int] }
      def gtk_print_unix_dialog_get_settings(dialog)
        self.attr_lock.lock
        begin
          return __gtk_print_unix_dialog_get_settings(dialog)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1get_1selected_1printer, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_print_unix_dialog_get_selected_printer(dialog)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1get_1selected_1printer, JNI.env, self.jni_id, dialog)
      end
      
      typesig { [::Java::Int] }
      def gtk_print_unix_dialog_get_selected_printer(dialog)
        self.attr_lock.lock
        begin
          return __gtk_print_unix_dialog_get_selected_printer(dialog)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1set_1manual_1capabilities, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_print_unix_dialog_set_manual_capabilities(dialog, capabilities)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1set_1manual_1capabilities, JNI.env, self.jni_id, dialog, capabilities)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_print_unix_dialog_set_manual_capabilities(dialog, capabilities)
        self.attr_lock.lock
        begin
          __gtk_print_unix_dialog_set_manual_capabilities(dialog, capabilities)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1progress_1bar_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_progress_bar_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1progress_1bar_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_progress_bar_new
        self.attr_lock.lock
        begin
          return __gtk_progress_bar_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1progress_1bar_1pulse, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_progress_bar_pulse(pbar)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1progress_1bar_1pulse, JNI.env, self.jni_id, pbar)
      end
      
      typesig { [::Java::Int] }
      def gtk_progress_bar_pulse(pbar)
        self.attr_lock.lock
        begin
          __gtk_progress_bar_pulse(pbar)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1progress_1bar_1set_1fraction, [:pointer, :long, :int32, :double], :void
      typesig { [::Java::Int, ::Java::Double] }
      def __gtk_progress_bar_set_fraction(pbar, fraction)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1progress_1bar_1set_1fraction, JNI.env, self.jni_id, pbar, fraction)
      end
      
      typesig { [::Java::Int, ::Java::Double] }
      def gtk_progress_bar_set_fraction(pbar, fraction)
        self.attr_lock.lock
        begin
          __gtk_progress_bar_set_fraction(pbar, fraction)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1progress_1bar_1set_1orientation, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_progress_bar_set_orientation(pbar, orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1progress_1bar_1set_1orientation, JNI.env, self.jni_id, pbar, orientation)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_progress_bar_set_orientation(pbar, orientation)
        self.attr_lock.lock
        begin
          __gtk_progress_bar_set_orientation(pbar, orientation)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1radio_1button_1get_1group, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_radio_button_get_group(radio_button)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1radio_1button_1get_1group, JNI.env, self.jni_id, radio_button)
      end
      
      typesig { [::Java::Int] }
      def gtk_radio_button_get_group(radio_button)
        self.attr_lock.lock
        begin
          return __gtk_radio_button_get_group(radio_button)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1radio_1button_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_radio_button_new(group)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1radio_1button_1new, JNI.env, self.jni_id, group)
      end
      
      typesig { [::Java::Int] }
      def gtk_radio_button_new(group)
        self.attr_lock.lock
        begin
          return __gtk_radio_button_new(group)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1radio_1menu_1item_1get_1group, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_radio_menu_item_get_group(radio_menu_item)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1radio_1menu_1item_1get_1group, JNI.env, self.jni_id, radio_menu_item)
      end
      
      typesig { [::Java::Int] }
      def gtk_radio_menu_item_get_group(radio_menu_item)
        self.attr_lock.lock
        begin
          return __gtk_radio_menu_item_get_group(radio_menu_item)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1radio_1menu_1item_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_radio_menu_item_new(group)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1radio_1menu_1item_1new, JNI.env, self.jni_id, group)
      end
      
      typesig { [::Java::Int] }
      def gtk_radio_menu_item_new(group)
        self.attr_lock.lock
        begin
          return __gtk_radio_menu_item_new(group)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1radio_1menu_1item_1new_1with_1label, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_radio_menu_item_new_with_label(group, label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1radio_1menu_1item_1new_1with_1label, JNI.env, self.jni_id, group, label.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_radio_menu_item_new_with_label(group, label)
        self.attr_lock.lock
        begin
          return __gtk_radio_menu_item_new_with_label(group, label)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1range_1get_1adjustment, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_range_get_adjustment(range)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1range_1get_1adjustment, JNI.env, self.jni_id, range)
      end
      
      typesig { [::Java::Int] }
      def gtk_range_get_adjustment(range)
        self.attr_lock.lock
        begin
          return __gtk_range_get_adjustment(range)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1range_1set_1increments, [:pointer, :long, :int32, :double, :double], :void
      typesig { [::Java::Int, ::Java::Double, ::Java::Double] }
      def __gtk_range_set_increments(range, step, page)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1range_1set_1increments, JNI.env, self.jni_id, range, step, page)
      end
      
      typesig { [::Java::Int, ::Java::Double, ::Java::Double] }
      def gtk_range_set_increments(range, step, page)
        self.attr_lock.lock
        begin
          __gtk_range_set_increments(range, step, page)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1range_1set_1inverted, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_range_set_inverted(range, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1range_1set_1inverted, JNI.env, self.jni_id, range, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_range_set_inverted(range, setting)
        self.attr_lock.lock
        begin
          __gtk_range_set_inverted(range, setting)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1range_1set_1range, [:pointer, :long, :int32, :double, :double], :void
      typesig { [::Java::Int, ::Java::Double, ::Java::Double] }
      def __gtk_range_set_range(range, min, max)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1range_1set_1range, JNI.env, self.jni_id, range, min, max)
      end
      
      typesig { [::Java::Int, ::Java::Double, ::Java::Double] }
      def gtk_range_set_range(range, min, max)
        self.attr_lock.lock
        begin
          __gtk_range_set_range(range, min, max)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1range_1set_1value, [:pointer, :long, :int32, :double], :void
      typesig { [::Java::Int, ::Java::Double] }
      def __gtk_range_set_value(range, value)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1range_1set_1value, JNI.env, self.jni_id, range, value)
      end
      
      typesig { [::Java::Int, ::Java::Double] }
      def gtk_range_set_value(range, value)
        self.attr_lock.lock
        begin
          __gtk_range_set_value(range, value)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1parse_1string, [:pointer, :long, :long], :void
      typesig { [Array.typed(::Java::Byte)] }
      def __gtk_rc_parse_string(rc_string)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1parse_1string, JNI.env, self.jni_id, rc_string.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gtk_rc_parse_string(rc_string)
        self.attr_lock.lock
        begin
          __gtk_rc_parse_string(rc_string)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1get_1bg_1pixmap_1name, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_rc_style_get_bg_pixmap_name(style, index)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1get_1bg_1pixmap_1name, JNI.env, self.jni_id, style, index)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_rc_style_get_bg_pixmap_name(style, index)
        self.attr_lock.lock
        begin
          return __gtk_rc_style_get_bg_pixmap_name(style, index)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1get_1color_1flags, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_rc_style_get_color_flags(style, index)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1get_1color_1flags, JNI.env, self.jni_id, style, index)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_rc_style_get_color_flags(style, index)
        self.attr_lock.lock
        begin
          return __gtk_rc_style_get_color_flags(style, index)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1set_1bg, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def __gtk_rc_style_set_bg(style, index, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1set_1bg, JNI.env, self.jni_id, style, index, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def gtk_rc_style_set_bg(style, index, color)
        self.attr_lock.lock
        begin
          __gtk_rc_style_set_bg(style, index, color)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1set_1bg_1pixmap_1name, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_rc_style_set_bg_pixmap_name(style, index, name)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1set_1bg_1pixmap_1name, JNI.env, self.jni_id, style, index, name)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_rc_style_set_bg_pixmap_name(style, index, name)
        self.attr_lock.lock
        begin
          __gtk_rc_style_set_bg_pixmap_name(style, index, name)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1set_1color_1flags, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_rc_style_set_color_flags(style, index, flag)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1set_1color_1flags, JNI.env, self.jni_id, style, index, flag)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_rc_style_set_color_flags(style, index, flag)
        self.attr_lock.lock
        begin
          __gtk_rc_style_set_color_flags(style, index, flag)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scale_1set_1digits, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_scale_set_digits(scale, digits)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scale_1set_1digits, JNI.env, self.jni_id, scale, digits)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_scale_set_digits(scale, digits)
        self.attr_lock.lock
        begin
          __gtk_scale_set_digits(scale, digits)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scale_1set_1draw_1value, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_scale_set_draw_value(scale, draw_value)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scale_1set_1draw_1value, JNI.env, self.jni_id, scale, draw_value ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_scale_set_draw_value(scale, draw_value)
        self.attr_lock.lock
        begin
          __gtk_scale_set_draw_value(scale, draw_value)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1set_1fg, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def __gtk_rc_style_set_fg(style, index, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1set_1fg, JNI.env, self.jni_id, style, index, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def gtk_rc_style_set_fg(style, index, color)
        self.attr_lock.lock
        begin
          __gtk_rc_style_set_fg(style, index, color)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1set_1text, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def __gtk_rc_style_set_text(style, index, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1set_1text, JNI.env, self.jni_id, style, index, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def gtk_rc_style_set_text(style, index, color)
        self.attr_lock.lock
        begin
          __gtk_rc_style_set_text(style, index, color)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1add_1with_1viewport, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_scrolled_window_add_with_viewport(scrolled_window, child)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1add_1with_1viewport, JNI.env, self.jni_id, scrolled_window, child)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_scrolled_window_add_with_viewport(scrolled_window, child)
        self.attr_lock.lock
        begin
          __gtk_scrolled_window_add_with_viewport(scrolled_window, child)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1get_1hadjustment, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_scrolled_window_get_hadjustment(scrolled_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1get_1hadjustment, JNI.env, self.jni_id, scrolled_window)
      end
      
      typesig { [::Java::Int] }
      def gtk_scrolled_window_get_hadjustment(scrolled_window)
        self.attr_lock.lock
        begin
          return __gtk_scrolled_window_get_hadjustment(scrolled_window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1get_1policy, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gtk_scrolled_window_get_policy(scrolled_window, hscrollbar_policy, vscrollbar_policy)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1get_1policy, JNI.env, self.jni_id, scrolled_window, hscrollbar_policy.jni_id, vscrollbar_policy.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gtk_scrolled_window_get_policy(scrolled_window, hscrollbar_policy, vscrollbar_policy)
        self.attr_lock.lock
        begin
          __gtk_scrolled_window_get_policy(scrolled_window, hscrollbar_policy, vscrollbar_policy)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1get_1shadow_1type, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_scrolled_window_get_shadow_type(scrolled_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1get_1shadow_1type, JNI.env, self.jni_id, scrolled_window)
      end
      
      typesig { [::Java::Int] }
      def gtk_scrolled_window_get_shadow_type(scrolled_window)
        self.attr_lock.lock
        begin
          return __gtk_scrolled_window_get_shadow_type(scrolled_window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1get_1vadjustment, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_scrolled_window_get_vadjustment(scrolled_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1get_1vadjustment, JNI.env, self.jni_id, scrolled_window)
      end
      
      typesig { [::Java::Int] }
      def gtk_scrolled_window_get_vadjustment(scrolled_window)
        self.attr_lock.lock
        begin
          return __gtk_scrolled_window_get_vadjustment(scrolled_window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1new, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_scrolled_window_new(hadjustment, vadjustment)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1new, JNI.env, self.jni_id, hadjustment, vadjustment)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_scrolled_window_new(hadjustment, vadjustment)
        self.attr_lock.lock
        begin
          return __gtk_scrolled_window_new(hadjustment, vadjustment)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1set_1placement, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_scrolled_window_set_placement(scrolled_window, placement)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1set_1placement, JNI.env, self.jni_id, scrolled_window, placement)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_scrolled_window_set_placement(scrolled_window, placement)
        self.attr_lock.lock
        begin
          __gtk_scrolled_window_set_placement(scrolled_window, placement)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1set_1policy, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_scrolled_window_set_policy(scrolled_window, hscrollbar_policy, vscrollbar_policy)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1set_1policy, JNI.env, self.jni_id, scrolled_window, hscrollbar_policy, vscrollbar_policy)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_scrolled_window_set_policy(scrolled_window, hscrollbar_policy, vscrollbar_policy)
        self.attr_lock.lock
        begin
          __gtk_scrolled_window_set_policy(scrolled_window, hscrollbar_policy, vscrollbar_policy)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1set_1shadow_1type, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_scrolled_window_set_shadow_type(scrolled_window, type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1set_1shadow_1type, JNI.env, self.jni_id, scrolled_window, type)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_scrolled_window_set_shadow_type(scrolled_window, type)
        self.attr_lock.lock
        begin
          __gtk_scrolled_window_set_shadow_type(scrolled_window, type)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1settings_1get_1default, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_settings_get_default
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1settings_1get_1default, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_settings_get_default
        self.attr_lock.lock
        begin
          return __gtk_settings_get_default
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1selection_1data_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_selection_data_free(selection_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1selection_1data_1free, JNI.env, self.jni_id, selection_data)
      end
      
      typesig { [::Java::Int] }
      def gtk_selection_data_free(selection_data)
        self.attr_lock.lock
        begin
          __gtk_selection_data_free(selection_data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1selection_1data_1set, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_selection_data_set(selection_data, type, format, data, length_)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1selection_1data_1set, JNI.env, self.jni_id, selection_data, type, format, data, length_)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_selection_data_set(selection_data, type, format, data, length_)
        self.attr_lock.lock
        begin
          __gtk_selection_data_set(selection_data, type, format, data, length_)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1separator_1menu_1item_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_separator_menu_item_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1separator_1menu_1item_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_separator_menu_item_new
        self.attr_lock.lock
        begin
          return __gtk_separator_menu_item_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1set_1locale, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_set_locale
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1set_1locale, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_set_locale
        self.attr_lock.lock
        begin
          return __gtk_set_locale
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1socket_1get_1id, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_socket_get_id(socket)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1socket_1get_1id, JNI.env, self.jni_id, socket)
      end
      
      typesig { [::Java::Int] }
      def gtk_socket_get_id(socket)
        self.attr_lock.lock
        begin
          return __gtk_socket_get_id(socket)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1socket_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_socket_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1socket_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_socket_new
        self.attr_lock.lock
        begin
          return __gtk_socket_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1new, [:pointer, :long, :int32, :double, :int32], :int32
      typesig { [::Java::Int, ::Java::Double, ::Java::Int] }
      def __gtk_spin_button_new(adjustment, climb_rate, digits)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1new, JNI.env, self.jni_id, adjustment, climb_rate, digits)
      end
      
      typesig { [::Java::Int, ::Java::Double, ::Java::Int] }
      def gtk_spin_button_new(adjustment, climb_rate, digits)
        self.attr_lock.lock
        begin
          return __gtk_spin_button_new(adjustment, climb_rate, digits)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1get_1adjustment, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_spin_button_get_adjustment(spin_button)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1get_1adjustment, JNI.env, self.jni_id, spin_button)
      end
      
      typesig { [::Java::Int] }
      def gtk_spin_button_get_adjustment(spin_button)
        self.attr_lock.lock
        begin
          return __gtk_spin_button_get_adjustment(spin_button)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1get_1digits, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_spin_button_get_digits(spin_button)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1get_1digits, JNI.env, self.jni_id, spin_button)
      end
      
      typesig { [::Java::Int] }
      def gtk_spin_button_get_digits(spin_button)
        self.attr_lock.lock
        begin
          return __gtk_spin_button_get_digits(spin_button)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1set_1digits, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_spin_button_set_digits(spin_button, digits)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1set_1digits, JNI.env, self.jni_id, spin_button, digits)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_spin_button_set_digits(spin_button, digits)
        self.attr_lock.lock
        begin
          __gtk_spin_button_set_digits(spin_button, digits)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1set_1increments, [:pointer, :long, :int32, :double, :double], :void
      typesig { [::Java::Int, ::Java::Double, ::Java::Double] }
      def __gtk_spin_button_set_increments(spin_button, step, page)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1set_1increments, JNI.env, self.jni_id, spin_button, step, page)
      end
      
      typesig { [::Java::Int, ::Java::Double, ::Java::Double] }
      def gtk_spin_button_set_increments(spin_button, step, page)
        self.attr_lock.lock
        begin
          __gtk_spin_button_set_increments(spin_button, step, page)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1set_1range, [:pointer, :long, :int32, :double, :double], :void
      typesig { [::Java::Int, ::Java::Double, ::Java::Double] }
      def __gtk_spin_button_set_range(spin_button, max, min)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1set_1range, JNI.env, self.jni_id, spin_button, max, min)
      end
      
      typesig { [::Java::Int, ::Java::Double, ::Java::Double] }
      def gtk_spin_button_set_range(spin_button, max, min)
        self.attr_lock.lock
        begin
          __gtk_spin_button_set_range(spin_button, max, min)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1set_1value, [:pointer, :long, :int32, :double], :void
      typesig { [::Java::Int, ::Java::Double] }
      def __gtk_spin_button_set_value(spin_button, value)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1set_1value, JNI.env, self.jni_id, spin_button, value)
      end
      
      typesig { [::Java::Int, ::Java::Double] }
      def gtk_spin_button_set_value(spin_button, value)
        self.attr_lock.lock
        begin
          __gtk_spin_button_set_value(spin_button, value)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1set_1wrap, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_spin_button_set_wrap(spin_button, wrap)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1set_1wrap, JNI.env, self.jni_id, spin_button, wrap ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_spin_button_set_wrap(spin_button, wrap)
        self.attr_lock.lock
        begin
          __gtk_spin_button_set_wrap(spin_button, wrap)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1update, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_spin_button_update(spin_button)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1update, JNI.env, self.jni_id, spin_button)
      end
      
      typesig { [::Java::Int] }
      def gtk_spin_button_update(spin_button)
        self.attr_lock.lock
        begin
          __gtk_spin_button_update(spin_button)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1base, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def __gtk_style_get_base(style, index, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1base, JNI.env, self.jni_id, style, index, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def gtk_style_get_base(style, index, color)
        self.attr_lock.lock
        begin
          __gtk_style_get_base(style, index, color)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1black, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkColor] }
      def __gtk_style_get_black(style, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1black, JNI.env, self.jni_id, style, color.jni_id)
      end
      
      typesig { [::Java::Int, GdkColor] }
      def gtk_style_get_black(style, color)
        self.attr_lock.lock
        begin
          __gtk_style_get_black(style, color)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1bg, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def __gtk_style_get_bg(style, index, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1bg, JNI.env, self.jni_id, style, index, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def gtk_style_get_bg(style, index, color)
        self.attr_lock.lock
        begin
          __gtk_style_get_bg(style, index, color)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1dark, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def __gtk_style_get_dark(style, index, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1dark, JNI.env, self.jni_id, style, index, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def gtk_style_get_dark(style, index, color)
        self.attr_lock.lock
        begin
          __gtk_style_get_dark(style, index, color)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1fg, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def __gtk_style_get_fg(style, index, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1fg, JNI.env, self.jni_id, style, index, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def gtk_style_get_fg(style, index, color)
        self.attr_lock.lock
        begin
          __gtk_style_get_fg(style, index, color)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1fg_1gc, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def __gtk_style_get_fg_gc(style, index, gc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1fg_1gc, JNI.env, self.jni_id, style, index, gc.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def gtk_style_get_fg_gc(style, index, gc)
        self.attr_lock.lock
        begin
          __gtk_style_get_fg_gc(style, index, gc)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1bg_1gc, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def __gtk_style_get_bg_gc(style, index, gc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1bg_1gc, JNI.env, self.jni_id, style, index, gc.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def gtk_style_get_bg_gc(style, index, gc)
        self.attr_lock.lock
        begin
          __gtk_style_get_bg_gc(style, index, gc)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1light_1gc, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def __gtk_style_get_light_gc(style, index, gc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1light_1gc, JNI.env, self.jni_id, style, index, gc.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def gtk_style_get_light_gc(style, index, gc)
        self.attr_lock.lock
        begin
          __gtk_style_get_light_gc(style, index, gc)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1dark_1gc, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def __gtk_style_get_dark_gc(style, index, gc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1dark_1gc, JNI.env, self.jni_id, style, index, gc.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def gtk_style_get_dark_gc(style, index, gc)
        self.attr_lock.lock
        begin
          __gtk_style_get_dark_gc(style, index, gc)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1mid_1gc, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def __gtk_style_get_mid_gc(style, index, gc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1mid_1gc, JNI.env, self.jni_id, style, index, gc.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def gtk_style_get_mid_gc(style, index, gc)
        self.attr_lock.lock
        begin
          __gtk_style_get_mid_gc(style, index, gc)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1text_1gc, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def __gtk_style_get_text_gc(style, index, gc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1text_1gc, JNI.env, self.jni_id, style, index, gc.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def gtk_style_get_text_gc(style, index, gc)
        self.attr_lock.lock
        begin
          __gtk_style_get_text_gc(style, index, gc)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1text_1aa_1gc, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def __gtk_style_get_text_aa_gc(style, index, gc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1text_1aa_1gc, JNI.env, self.jni_id, style, index, gc.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      def gtk_style_get_text_aa_gc(style, index, gc)
        self.attr_lock.lock
        begin
          __gtk_style_get_text_aa_gc(style, index, gc)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1black_1gc, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def __gtk_style_get_black_gc(style, gc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1black_1gc, JNI.env, self.jni_id, style, gc.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def gtk_style_get_black_gc(style, gc)
        self.attr_lock.lock
        begin
          __gtk_style_get_black_gc(style, gc)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1white_1gc, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def __gtk_style_get_white_gc(style, gc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1white_1gc, JNI.env, self.jni_id, style, gc.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def gtk_style_get_white_gc(style, gc)
        self.attr_lock.lock
        begin
          __gtk_style_get_white_gc(style, gc)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1font_1desc, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_style_get_font_desc(style)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1font_1desc, JNI.env, self.jni_id, style)
      end
      
      typesig { [::Java::Int] }
      def gtk_style_get_font_desc(style)
        self.attr_lock.lock
        begin
          return __gtk_style_get_font_desc(style)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1light, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def __gtk_style_get_light(style, index, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1light, JNI.env, self.jni_id, style, index, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def gtk_style_get_light(style, index, color)
        self.attr_lock.lock
        begin
          __gtk_style_get_light(style, index, color)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1text, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def __gtk_style_get_text(style, index, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1text, JNI.env, self.jni_id, style, index, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def gtk_style_get_text(style, index, color)
        self.attr_lock.lock
        begin
          __gtk_style_get_text(style, index, color)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1xthickness, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_style_get_xthickness(style)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1xthickness, JNI.env, self.jni_id, style)
      end
      
      typesig { [::Java::Int] }
      def gtk_style_get_xthickness(style)
        self.attr_lock.lock
        begin
          return __gtk_style_get_xthickness(style)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1ythickness, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_style_get_ythickness(style)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1ythickness, JNI.env, self.jni_id, style)
      end
      
      typesig { [::Java::Int] }
      def gtk_style_get_ythickness(style)
        self.attr_lock.lock
        begin
          return __gtk_style_get_ythickness(style)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1render_1icon, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_style_render_icon(style, source, direction, state, size, widget, detail)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1render_1icon, JNI.env, self.jni_id, style, source, direction, state, size, widget, detail.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_style_render_icon(style, source, direction, state, size, widget, detail)
        self.attr_lock.lock
        begin
          return __gtk_style_render_icon(style, source, direction, state, size, widget, detail)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1target_1list_1new, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_target_list_new(targets, ntargets)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1target_1list_1new, JNI.env, self.jni_id, targets, ntargets)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_target_list_new(targets, ntargets)
        self.attr_lock.lock
        begin
          return __gtk_target_list_new(targets, ntargets)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1target_1list_1unref, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_target_list_unref(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1target_1list_1unref, JNI.env, self.jni_id, list)
      end
      
      typesig { [::Java::Int] }
      def gtk_target_list_unref(list)
        self.attr_lock.lock
        begin
          __gtk_target_list_unref(list)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1copy_1clipboard, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_text_buffer_copy_clipboard(buffer, clipboard)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1copy_1clipboard, JNI.env, self.jni_id, buffer, clipboard)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_text_buffer_copy_clipboard(buffer, clipboard)
        self.attr_lock.lock
        begin
          __gtk_text_buffer_copy_clipboard(buffer, clipboard)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1cut_1clipboard, [:pointer, :long, :int32, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      def __gtk_text_buffer_cut_clipboard(buffer, clipboard, default_editable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1cut_1clipboard, JNI.env, self.jni_id, buffer, clipboard, default_editable ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      def gtk_text_buffer_cut_clipboard(buffer, clipboard, default_editable)
        self.attr_lock.lock
        begin
          __gtk_text_buffer_cut_clipboard(buffer, clipboard, default_editable)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1delete, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      def __gtk_text_buffer_delete(buffer, start, end_)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1delete, JNI.env, self.jni_id, buffer, start.jni_id, end_.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      def gtk_text_buffer_delete(buffer, start, end_)
        self.attr_lock.lock
        begin
          __gtk_text_buffer_delete(buffer, start, end_)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1bounds, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      def __gtk_text_buffer_get_bounds(buffer, start, end_)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1bounds, JNI.env, self.jni_id, buffer, start.jni_id, end_.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      def gtk_text_buffer_get_bounds(buffer, start, end_)
        self.attr_lock.lock
        begin
          __gtk_text_buffer_get_bounds(buffer, start, end_)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1char_1count, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_text_buffer_get_char_count(buffer)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1char_1count, JNI.env, self.jni_id, buffer)
      end
      
      typesig { [::Java::Int] }
      def gtk_text_buffer_get_char_count(buffer)
        self.attr_lock.lock
        begin
          return __gtk_text_buffer_get_char_count(buffer)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1end_1iter, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_text_buffer_get_end_iter(buffer, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1end_1iter, JNI.env, self.jni_id, buffer, iter.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_text_buffer_get_end_iter(buffer, iter)
        self.attr_lock.lock
        begin
          __gtk_text_buffer_get_end_iter(buffer, iter)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1insert, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_text_buffer_get_insert(buffer)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1insert, JNI.env, self.jni_id, buffer)
      end
      
      typesig { [::Java::Int] }
      def gtk_text_buffer_get_insert(buffer)
        self.attr_lock.lock
        begin
          return __gtk_text_buffer_get_insert(buffer)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1iter_1at_1line, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def __gtk_text_buffer_get_iter_at_line(buffer, iter, line_number)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1iter_1at_1line, JNI.env, self.jni_id, buffer, iter.jni_id, line_number)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def gtk_text_buffer_get_iter_at_line(buffer, iter, line_number)
        self.attr_lock.lock
        begin
          __gtk_text_buffer_get_iter_at_line(buffer, iter, line_number)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1iter_1at_1mark, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def __gtk_text_buffer_get_iter_at_mark(buffer, iter, mark)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1iter_1at_1mark, JNI.env, self.jni_id, buffer, iter.jni_id, mark)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def gtk_text_buffer_get_iter_at_mark(buffer, iter, mark)
        self.attr_lock.lock
        begin
          __gtk_text_buffer_get_iter_at_mark(buffer, iter, mark)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1iter_1at_1offset, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def __gtk_text_buffer_get_iter_at_offset(buffer, iter, char_offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1iter_1at_1offset, JNI.env, self.jni_id, buffer, iter.jni_id, char_offset)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def gtk_text_buffer_get_iter_at_offset(buffer, iter, char_offset)
        self.attr_lock.lock
        begin
          __gtk_text_buffer_get_iter_at_offset(buffer, iter, char_offset)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1line_1count, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_text_buffer_get_line_count(buffer)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1line_1count, JNI.env, self.jni_id, buffer)
      end
      
      typesig { [::Java::Int] }
      def gtk_text_buffer_get_line_count(buffer)
        self.attr_lock.lock
        begin
          return __gtk_text_buffer_get_line_count(buffer)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1selection_1bound, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_text_buffer_get_selection_bound(buffer)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1selection_1bound, JNI.env, self.jni_id, buffer)
      end
      
      typesig { [::Java::Int] }
      def gtk_text_buffer_get_selection_bound(buffer)
        self.attr_lock.lock
        begin
          return __gtk_text_buffer_get_selection_bound(buffer)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1selection_1bounds, [:pointer, :long, :int32, :long, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      def __gtk_text_buffer_get_selection_bounds(buffer, start, end_)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1selection_1bounds, JNI.env, self.jni_id, buffer, start.jni_id, end_.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      def gtk_text_buffer_get_selection_bounds(buffer, start, end_)
        self.attr_lock.lock
        begin
          return __gtk_text_buffer_get_selection_bounds(buffer, start, end_)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1text, [:pointer, :long, :int32, :long, :long, :int8], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Boolean] }
      def __gtk_text_buffer_get_text(buffer, start, end_, include_hidden_chars)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1text, JNI.env, self.jni_id, buffer, start.jni_id, end_.jni_id, include_hidden_chars ? 1 : 0)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Boolean] }
      def gtk_text_buffer_get_text(buffer, start, end_, include_hidden_chars)
        self.attr_lock.lock
        begin
          return __gtk_text_buffer_get_text(buffer, start, end_, include_hidden_chars)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1insert__I_3B_3BI, [:pointer, :long, :int32, :long, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
      def __gtk_text_buffer_insert(buffer, iter, text, len)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1insert__I_3B_3BI, JNI.env, self.jni_id, buffer, iter.jni_id, text.jni_id, len)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
      def gtk_text_buffer_insert(buffer, iter, text, len)
        self.attr_lock.lock
        begin
          __gtk_text_buffer_insert(buffer, iter, text, len)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1insert__II_3BI, [:pointer, :long, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def __gtk_text_buffer_insert(buffer, iter, text, len)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1insert__II_3BI, JNI.env, self.jni_id, buffer, iter, text.jni_id, len)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def gtk_text_buffer_insert(buffer, iter, text, len)
        self.attr_lock.lock
        begin
          __gtk_text_buffer_insert(buffer, iter, text, len)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1move_1mark, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_text_buffer_move_mark(buffer, mark, where)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1move_1mark, JNI.env, self.jni_id, buffer, mark, where.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_text_buffer_move_mark(buffer, mark, where)
        self.attr_lock.lock
        begin
          __gtk_text_buffer_move_mark(buffer, mark, where)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1paste_1clipboard, [:pointer, :long, :int32, :int32, :long, :int8], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Boolean] }
      def __gtk_text_buffer_paste_clipboard(buffer, clipboard, override_location, default_editable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1paste_1clipboard, JNI.env, self.jni_id, buffer, clipboard, override_location.jni_id, default_editable ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Boolean] }
      def gtk_text_buffer_paste_clipboard(buffer, clipboard, override_location, default_editable)
        self.attr_lock.lock
        begin
          __gtk_text_buffer_paste_clipboard(buffer, clipboard, override_location, default_editable)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1place_1cursor, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_text_buffer_place_cursor(buffer, where)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1place_1cursor, JNI.env, self.jni_id, buffer, where.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_text_buffer_place_cursor(buffer, where)
        self.attr_lock.lock
        begin
          __gtk_text_buffer_place_cursor(buffer, where)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1set_1text, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def __gtk_text_buffer_set_text(buffer, text, len)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1set_1text, JNI.env, self.jni_id, buffer, text.jni_id, len)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def gtk_text_buffer_set_text(buffer, text, len)
        self.attr_lock.lock
        begin
          __gtk_text_buffer_set_text(buffer, text, len)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1iter_1get_1line, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __gtk_text_iter_get_line(iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1iter_1get_1line, JNI.env, self.jni_id, iter.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gtk_text_iter_get_line(iter)
        self.attr_lock.lock
        begin
          return __gtk_text_iter_get_line(iter)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1iter_1get_1offset, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __gtk_text_iter_get_offset(iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1iter_1get_1offset, JNI.env, self.jni_id, iter.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gtk_text_iter_get_offset(iter)
        self.attr_lock.lock
        begin
          return __gtk_text_iter_get_offset(iter)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1buffer_1to_1window_1coords, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :long], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gtk_text_view_buffer_to_window_coords(text_view, win, buffer_x, buffer_y, window_x, window_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1buffer_1to_1window_1coords, JNI.env, self.jni_id, text_view, win, buffer_x, buffer_y, window_x.jni_id, window_y.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gtk_text_view_buffer_to_window_coords(text_view, win, buffer_x, buffer_y, window_x, window_y)
        self.attr_lock.lock
        begin
          __gtk_text_view_buffer_to_window_coords(text_view, win, buffer_x, buffer_y, window_x, window_y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1buffer, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_text_view_get_buffer(text_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1buffer, JNI.env, self.jni_id, text_view)
      end
      
      typesig { [::Java::Int] }
      def gtk_text_view_get_buffer(text_view)
        self.attr_lock.lock
        begin
          return __gtk_text_view_get_buffer(text_view)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1editable, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_text_view_get_editable(text_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1editable, JNI.env, self.jni_id, text_view) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_text_view_get_editable(text_view)
        self.attr_lock.lock
        begin
          return __gtk_text_view_get_editable(text_view)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1iter_1at_1location, [:pointer, :long, :int32, :long, :int32, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      def __gtk_text_view_get_iter_at_location(text_view, iter, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1iter_1at_1location, JNI.env, self.jni_id, text_view, iter.jni_id, x, y)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      def gtk_text_view_get_iter_at_location(text_view, iter, x, y)
        self.attr_lock.lock
        begin
          __gtk_text_view_get_iter_at_location(text_view, iter, x, y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1iter_1location, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), GdkRectangle] }
      def __gtk_text_view_get_iter_location(text_view, iter, location)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1iter_1location, JNI.env, self.jni_id, text_view, iter.jni_id, location.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), GdkRectangle] }
      def gtk_text_view_get_iter_location(text_view, iter, location)
        self.attr_lock.lock
        begin
          __gtk_text_view_get_iter_location(text_view, iter, location)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1line_1at_1y, [:pointer, :long, :int32, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      def __gtk_text_view_get_line_at_y(text_view, target_iter, y, line_top)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1line_1at_1y, JNI.env, self.jni_id, text_view, target_iter.jni_id, y, line_top.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      def gtk_text_view_get_line_at_y(text_view, target_iter, y, line_top)
        self.attr_lock.lock
        begin
          __gtk_text_view_get_line_at_y(text_view, target_iter, y, line_top)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1visible_1rect, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkRectangle] }
      def __gtk_text_view_get_visible_rect(text_view, visible_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1visible_1rect, JNI.env, self.jni_id, text_view, visible_rect.jni_id)
      end
      
      typesig { [::Java::Int, GdkRectangle] }
      def gtk_text_view_get_visible_rect(text_view, visible_rect)
        self.attr_lock.lock
        begin
          __gtk_text_view_get_visible_rect(text_view, visible_rect)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1window, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_text_view_get_window(text_view, win)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1window, JNI.env, self.jni_id, text_view, win)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_text_view_get_window(text_view, win)
        self.attr_lock.lock
        begin
          return __gtk_text_view_get_window(text_view, win)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_text_view_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_text_view_new
        self.attr_lock.lock
        begin
          return __gtk_text_view_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1scroll_1mark_1onscreen, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_text_view_scroll_mark_onscreen(text_view, mark)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1scroll_1mark_1onscreen, JNI.env, self.jni_id, text_view, mark)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_text_view_scroll_mark_onscreen(text_view, mark)
        self.attr_lock.lock
        begin
          __gtk_text_view_scroll_mark_onscreen(text_view, mark)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1scroll_1to_1iter, [:pointer, :long, :int32, :long, :double, :int8, :double, :double], :int8
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Double, ::Java::Boolean, ::Java::Double, ::Java::Double] }
      def __gtk_text_view_scroll_to_iter(text_view, iter, within_margin, use_align, xalign, yalign)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1scroll_1to_1iter, JNI.env, self.jni_id, text_view, iter.jni_id, within_margin, use_align ? 1 : 0, xalign, yalign) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Double, ::Java::Boolean, ::Java::Double, ::Java::Double] }
      def gtk_text_view_scroll_to_iter(text_view, iter, within_margin, use_align, xalign, yalign)
        self.attr_lock.lock
        begin
          return __gtk_text_view_scroll_to_iter(text_view, iter, within_margin, use_align, xalign, yalign)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1set_1editable, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_text_view_set_editable(text_view, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1set_1editable, JNI.env, self.jni_id, text_view, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_text_view_set_editable(text_view, setting)
        self.attr_lock.lock
        begin
          __gtk_text_view_set_editable(text_view, setting)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1set_1justification, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_text_view_set_justification(text_view, justification)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1set_1justification, JNI.env, self.jni_id, text_view, justification)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_text_view_set_justification(text_view, justification)
        self.attr_lock.lock
        begin
          __gtk_text_view_set_justification(text_view, justification)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1set_1tabs, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_text_view_set_tabs(text_view, tabs)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1set_1tabs, JNI.env, self.jni_id, text_view, tabs)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_text_view_set_tabs(text_view, tabs)
        self.attr_lock.lock
        begin
          __gtk_text_view_set_tabs(text_view, tabs)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1set_1wrap_1mode, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_text_view_set_wrap_mode(text_view, wrap_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1set_1wrap_1mode, JNI.env, self.jni_id, text_view, wrap_mode)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_text_view_set_wrap_mode(text_view, wrap_mode)
        self.attr_lock.lock
        begin
          __gtk_text_view_set_wrap_mode(text_view, wrap_mode)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1window_1to_1buffer_1coords, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :long], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gtk_text_view_window_to_buffer_coords(text_view, win, window_x, window_y, buffer_x, buffer_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1window_1to_1buffer_1coords, JNI.env, self.jni_id, text_view, win, window_x, window_y, buffer_x.jni_id, buffer_y.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gtk_text_view_window_to_buffer_coords(text_view, win, window_x, window_y, buffer_x, buffer_y)
        self.attr_lock.lock
        begin
          __gtk_text_view_window_to_buffer_coords(text_view, win, window_x, window_y, buffer_x, buffer_y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1timeout_1add, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_timeout_add(interval, function, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1timeout_1add, JNI.env, self.jni_id, interval, function, data)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_timeout_add(interval, function, data)
        self.attr_lock.lock
        begin
          return __gtk_timeout_add(interval, function, data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1timeout_1remove, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_timeout_remove(timeout_handler_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1timeout_1remove, JNI.env, self.jni_id, timeout_handler_id)
      end
      
      typesig { [::Java::Int] }
      def gtk_timeout_remove(timeout_handler_id)
        self.attr_lock.lock
        begin
          __gtk_timeout_remove(timeout_handler_id)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1get_1active, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_toggle_button_get_active(toggle_button)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1get_1active, JNI.env, self.jni_id, toggle_button) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_toggle_button_get_active(toggle_button)
        self.attr_lock.lock
        begin
          return __gtk_toggle_button_get_active(toggle_button)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_toggle_button_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_toggle_button_new
        self.attr_lock.lock
        begin
          return __gtk_toggle_button_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1get_1inconsistent, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_toggle_button_get_inconsistent(toggle_button)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1get_1inconsistent, JNI.env, self.jni_id, toggle_button) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_toggle_button_get_inconsistent(toggle_button)
        self.attr_lock.lock
        begin
          return __gtk_toggle_button_get_inconsistent(toggle_button)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1set_1active, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_toggle_button_set_active(toggle_button, is_active)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1set_1active, JNI.env, self.jni_id, toggle_button, is_active ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_toggle_button_set_active(toggle_button, is_active)
        self.attr_lock.lock
        begin
          __gtk_toggle_button_set_active(toggle_button, is_active)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1set_1inconsistent, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_toggle_button_set_inconsistent(toggle_button, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1set_1inconsistent, JNI.env, self.jni_id, toggle_button, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_toggle_button_set_inconsistent(toggle_button, setting)
        self.attr_lock.lock
        begin
          __gtk_toggle_button_set_inconsistent(toggle_button, setting)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1set_1mode, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_toggle_button_set_mode(toggle_button, draw_indicator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1set_1mode, JNI.env, self.jni_id, toggle_button, draw_indicator ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_toggle_button_set_mode(toggle_button, draw_indicator)
        self.attr_lock.lock
        begin
          __gtk_toggle_button_set_mode(toggle_button, draw_indicator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toolbar_1insert_1widget, [:pointer, :long, :int32, :int32, :long, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
      def __gtk_toolbar_insert_widget(toolbar, widget, tooltip_text, tooltip_private_text, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toolbar_1insert_1widget, JNI.env, self.jni_id, toolbar, widget, tooltip_text.jni_id, tooltip_private_text.jni_id, position)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
      def gtk_toolbar_insert_widget(toolbar, widget, tooltip_text, tooltip_private_text, position)
        self.attr_lock.lock
        begin
          __gtk_toolbar_insert_widget(toolbar, widget, tooltip_text, tooltip_private_text, position)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toolbar_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_toolbar_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toolbar_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_toolbar_new
        self.attr_lock.lock
        begin
          return __gtk_toolbar_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toolbar_1set_1orientation, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_toolbar_set_orientation(toolbar, orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toolbar_1set_1orientation, JNI.env, self.jni_id, toolbar, orientation)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_toolbar_set_orientation(toolbar, orientation)
        self.attr_lock.lock
        begin
          __gtk_toolbar_set_orientation(toolbar, orientation)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1data_1get, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_tooltips_data_get(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1data_1get, JNI.env, self.jni_id, widget)
      end
      
      typesig { [::Java::Int] }
      def gtk_tooltips_data_get(widget)
        self.attr_lock.lock
        begin
          return __gtk_tooltips_data_get(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1disable, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_tooltips_disable(tooltips)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1disable, JNI.env, self.jni_id, tooltips)
      end
      
      typesig { [::Java::Int] }
      def gtk_tooltips_disable(tooltips)
        self.attr_lock.lock
        begin
          __gtk_tooltips_disable(tooltips)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1enable, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_tooltips_enable(tooltips)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1enable, JNI.env, self.jni_id, tooltips)
      end
      
      typesig { [::Java::Int] }
      def gtk_tooltips_enable(tooltips)
        self.attr_lock.lock
        begin
          __gtk_tooltips_enable(tooltips)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_tooltips_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_tooltips_new
        self.attr_lock.lock
        begin
          return __gtk_tooltips_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1force_1window, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_tooltips_force_window(tooltips)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1force_1window, JNI.env, self.jni_id, tooltips)
      end
      
      typesig { [::Java::Int] }
      def gtk_tooltips_force_window(tooltips)
        self.attr_lock.lock
        begin
          __gtk_tooltips_force_window(tooltips)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1set_1tip, [:pointer, :long, :int32, :int32, :long, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      def __gtk_tooltips_set_tip(tooltips, widget, tip_text, tip_private)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1set_1tip, JNI.env, self.jni_id, tooltips, widget, tip_text.jni_id, tip_private.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      def gtk_tooltips_set_tip(tooltips, widget, tip_text, tip_private)
        self.attr_lock.lock
        begin
          __gtk_tooltips_set_tip(tooltips, widget, tip_text, tip_private)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get__III_3II, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      def __gtk_tree_model_get(tree_model, iter, column, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get__III_3II, JNI.env, self.jni_id, tree_model, iter, column, value.jni_id, terminator)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      def gtk_tree_model_get(tree_model, iter, column, value, terminator)
        self.attr_lock.lock
        begin
          __gtk_tree_model_get(tree_model, iter, column, value, terminator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get__III_3JI, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Long), ::Java::Int] }
      def __gtk_tree_model_get(tree_model, iter, column, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get__III_3JI, JNI.env, self.jni_id, tree_model, iter, column, value.jni_id, terminator)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Long), ::Java::Int] }
      def gtk_tree_model_get(tree_model, iter, column, value, terminator)
        self.attr_lock.lock
        begin
          __gtk_tree_model_get(tree_model, iter, column, value, terminator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get_1iter, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_tree_model_get_iter(tree_model, iter, path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get_1iter, JNI.env, self.jni_id, tree_model, iter, path) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_tree_model_get_iter(tree_model, iter, path)
        self.attr_lock.lock
        begin
          return __gtk_tree_model_get_iter(tree_model, iter, path)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get_1iter_1first, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_model_get_iter_first(tree_model, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get_1iter_1first, JNI.env, self.jni_id, tree_model, iter) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_model_get_iter_first(tree_model, iter)
        self.attr_lock.lock
        begin
          return __gtk_tree_model_get_iter_first(tree_model, iter)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get_1n_1columns, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_tree_model_get_n_columns(tree_model)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get_1n_1columns, JNI.env, self.jni_id, tree_model)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_model_get_n_columns(tree_model)
        self.attr_lock.lock
        begin
          return __gtk_tree_model_get_n_columns(tree_model)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get_1path, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_model_get_path(tree_model, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get_1path, JNI.env, self.jni_id, tree_model, iter)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_model_get_path(tree_model, iter)
        self.attr_lock.lock
        begin
          return __gtk_tree_model_get_path(tree_model, iter)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get_1type, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_tree_model_get_type
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get_1type, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_tree_model_get_type
        self.attr_lock.lock
        begin
          return __gtk_tree_model_get_type
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1iter_1children, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_tree_model_iter_children(model, iter, parent)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1iter_1children, JNI.env, self.jni_id, model, iter, parent) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_tree_model_iter_children(model, iter, parent)
        self.attr_lock.lock
        begin
          return __gtk_tree_model_iter_children(model, iter, parent)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1iter_1n_1children, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_model_iter_n_children(model, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1iter_1n_1children, JNI.env, self.jni_id, model, iter)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_model_iter_n_children(model, iter)
        self.attr_lock.lock
        begin
          return __gtk_tree_model_iter_n_children(model, iter)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1iter_1next, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_model_iter_next(model, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1iter_1next, JNI.env, self.jni_id, model, iter) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_model_iter_next(model, iter)
        self.attr_lock.lock
        begin
          return __gtk_tree_model_iter_next(model, iter)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1iter_1nth_1child, [:pointer, :long, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_tree_model_iter_nth_child(tree_model, iter, parent, n)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1iter_1nth_1child, JNI.env, self.jni_id, tree_model, iter, parent, n) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_tree_model_iter_nth_child(tree_model, iter, parent, n)
        self.attr_lock.lock
        begin
          return __gtk_tree_model_iter_nth_child(tree_model, iter, parent, n)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1append_1index, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_path_append_index(path, index)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1append_1index, JNI.env, self.jni_id, path, index)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_path_append_index(path, index)
        self.attr_lock.lock
        begin
          __gtk_tree_path_append_index(path, index)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1compare, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_path_compare(a, b)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1compare, JNI.env, self.jni_id, a, b)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_path_compare(a, b)
        self.attr_lock.lock
        begin
          return __gtk_tree_path_compare(a, b)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1down, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_tree_path_down(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1down, JNI.env, self.jni_id, path)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_path_down(path)
        self.attr_lock.lock
        begin
          __gtk_tree_path_down(path)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_tree_path_free(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1free, JNI.env, self.jni_id, path)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_path_free(path)
        self.attr_lock.lock
        begin
          __gtk_tree_path_free(path)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1get_1depth, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_tree_path_get_depth(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1get_1depth, JNI.env, self.jni_id, path)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_path_get_depth(path)
        self.attr_lock.lock
        begin
          return __gtk_tree_path_get_depth(path)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1get_1indices, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_tree_path_get_indices(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1get_1indices, JNI.env, self.jni_id, path)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_path_get_indices(path)
        self.attr_lock.lock
        begin
          return __gtk_tree_path_get_indices(path)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_tree_path_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_tree_path_new
        self.attr_lock.lock
        begin
          return __gtk_tree_path_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1new_1first, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_tree_path_new_first
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1new_1first, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_tree_path_new_first
        self.attr_lock.lock
        begin
          return __gtk_tree_path_new_first
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1new_1from_1string___3B, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __gtk_tree_path_new_from_string(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1new_1from_1string___3B, JNI.env, self.jni_id, path.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gtk_tree_path_new_from_string(path)
        self.attr_lock.lock
        begin
          return __gtk_tree_path_new_from_string(path)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1new_1from_1string__I, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_tree_path_new_from_string(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1new_1from_1string__I, JNI.env, self.jni_id, path)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_path_new_from_string(path)
        self.attr_lock.lock
        begin
          return __gtk_tree_path_new_from_string(path)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1next, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_tree_path_next(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1next, JNI.env, self.jni_id, path)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_path_next(path)
        self.attr_lock.lock
        begin
          __gtk_tree_path_next(path)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1prev, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_tree_path_prev(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1prev, JNI.env, self.jni_id, path) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_path_prev(path)
        self.attr_lock.lock
        begin
          return __gtk_tree_path_prev(path)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1up, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_tree_path_up(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1up, JNI.env, self.jni_id, path) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_path_up(path)
        self.attr_lock.lock
        begin
          return __gtk_tree_path_up(path)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1count_1selected_1rows, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_tree_selection_count_selected_rows(selection)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1count_1selected_1rows, JNI.env, self.jni_id, selection)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_selection_count_selected_rows(selection)
        self.attr_lock.lock
        begin
          return __gtk_tree_selection_count_selected_rows(selection)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1get_1selected, [:pointer, :long, :int32, :long, :int32], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      def __gtk_tree_selection_get_selected(selection, model, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1get_1selected, JNI.env, self.jni_id, selection, model.jni_id, iter) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      def gtk_tree_selection_get_selected(selection, model, iter)
        self.attr_lock.lock
        begin
          return __gtk_tree_selection_get_selected(selection, model, iter)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1get_1selected_1rows, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def __gtk_tree_selection_get_selected_rows(selection, model)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1get_1selected_1rows, JNI.env, self.jni_id, selection, model.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def gtk_tree_selection_get_selected_rows(selection, model)
        self.attr_lock.lock
        begin
          return __gtk_tree_selection_get_selected_rows(selection, model)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1path_1is_1selected, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_selection_path_is_selected(selection, path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1path_1is_1selected, JNI.env, self.jni_id, selection, path) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_selection_path_is_selected(selection, path)
        self.attr_lock.lock
        begin
          return __gtk_tree_selection_path_is_selected(selection, path)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1select_1all, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_tree_selection_select_all(selection)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1select_1all, JNI.env, self.jni_id, selection)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_selection_select_all(selection)
        self.attr_lock.lock
        begin
          __gtk_tree_selection_select_all(selection)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1select_1iter, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_selection_select_iter(selection, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1select_1iter, JNI.env, self.jni_id, selection, iter)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_selection_select_iter(selection, iter)
        self.attr_lock.lock
        begin
          __gtk_tree_selection_select_iter(selection, iter)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1selected_1foreach, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_tree_selection_selected_foreach(selection, func, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1selected_1foreach, JNI.env, self.jni_id, selection, func, data)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_tree_selection_selected_foreach(selection, func, data)
        self.attr_lock.lock
        begin
          __gtk_tree_selection_selected_foreach(selection, func, data)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1set_1mode, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_selection_set_mode(selection, mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1set_1mode, JNI.env, self.jni_id, selection, mode)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_selection_set_mode(selection, mode)
        self.attr_lock.lock
        begin
          __gtk_tree_selection_set_mode(selection, mode)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1unselect_1all, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_tree_selection_unselect_all(selection)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1unselect_1all, JNI.env, self.jni_id, selection)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_selection_unselect_all(selection)
        self.attr_lock.lock
        begin
          __gtk_tree_selection_unselect_all(selection)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1unselect_1iter, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_selection_unselect_iter(selection, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1unselect_1iter, JNI.env, self.jni_id, selection, iter)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_selection_unselect_iter(selection, iter)
        self.attr_lock.lock
        begin
          __gtk_tree_selection_unselect_iter(selection, iter)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1append, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_tree_store_append(store, iter, parent)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1append, JNI.env, self.jni_id, store, iter, parent)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_tree_store_append(store, iter, parent)
        self.attr_lock.lock
        begin
          __gtk_tree_store_append(store, iter, parent)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1clear, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_tree_store_clear(store)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1clear, JNI.env, self.jni_id, store)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_store_clear(store)
        self.attr_lock.lock
        begin
          __gtk_tree_store_clear(store)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1insert, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_tree_store_insert(store, iter, parent, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1insert, JNI.env, self.jni_id, store, iter, parent, position)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_tree_store_insert(store, iter, parent, position)
        self.attr_lock.lock
        begin
          __gtk_tree_store_insert(store, iter, parent, position)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1newv, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def __gtk_tree_store_newv(num_columns, types)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1newv, JNI.env, self.jni_id, num_columns, types.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      def gtk_tree_store_newv(num_columns, types)
        self.attr_lock.lock
        begin
          return __gtk_tree_store_newv(num_columns, types)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1remove, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_store_remove(store, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1remove, JNI.env, self.jni_id, store, iter)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_store_remove(store, iter)
        self.attr_lock.lock
        begin
          __gtk_tree_store_remove(store, iter)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1set__III_3BI, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def __gtk_tree_store_set(store, iter, column, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1set__III_3BI, JNI.env, self.jni_id, store, iter, column, value.jni_id, terminator)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def gtk_tree_store_set(store, iter, column, value, terminator)
        self.attr_lock.lock
        begin
          __gtk_tree_store_set(store, iter, column, value, terminator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1set__IIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_tree_store_set(store, iter, column, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1set__IIIII, JNI.env, self.jni_id, store, iter, column, value, terminator)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_tree_store_set(store, iter, column, value, terminator)
        self.attr_lock.lock
        begin
          __gtk_tree_store_set(store, iter, column, value, terminator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1set__IIIJI, [:pointer, :long, :int32, :int32, :int32, :int64, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int] }
      def __gtk_tree_store_set(store, iter, column, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1set__IIIJI, JNI.env, self.jni_id, store, iter, column, value, terminator)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int] }
      def gtk_tree_store_set(store, iter, column, value, terminator)
        self.attr_lock.lock
        begin
          __gtk_tree_store_set(store, iter, column, value, terminator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1set__IIIL#{GdkColor.jni_name}_2I".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkColor, ::Java::Int] }
      def __gtk_tree_store_set(store, iter, column, value, terminator)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1set__IIIL#{GdkColor.jni_name}_2I".to_sym, JNI.env, self.jni_id, store, iter, column, value.jni_id, terminator)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkColor, ::Java::Int] }
      def gtk_tree_store_set(store, iter, column, value, terminator)
        self.attr_lock.lock
        begin
          __gtk_tree_store_set(store, iter, column, value, terminator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1set__IIIZI, [:pointer, :long, :int32, :int32, :int32, :int8, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int] }
      def __gtk_tree_store_set(store, iter, column, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1set__IIIZI, JNI.env, self.jni_id, store, iter, column, value ? 1 : 0, terminator)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int] }
      def gtk_tree_store_set(store, iter, column, value, terminator)
        self.attr_lock.lock
        begin
          __gtk_tree_store_set(store, iter, column, value, terminator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1create_1row_1drag_1icon, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_view_create_row_drag_icon(view, path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1create_1row_1drag_1icon, JNI.env, self.jni_id, view, path)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_view_create_row_drag_icon(view, path)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_create_row_drag_icon(view, path)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1collapse_1row, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_view_collapse_row(view, path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1collapse_1row, JNI.env, self.jni_id, view, path) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_view_collapse_row(view, path)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_collapse_row(view, path)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1add_1attribute, [:pointer, :long, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def __gtk_tree_view_column_add_attribute(tree_column, cell_renderer, attribute, column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1add_1attribute, JNI.env, self.jni_id, tree_column, cell_renderer, attribute.jni_id, column)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def gtk_tree_view_column_add_attribute(tree_column, cell_renderer, attribute, column)
        self.attr_lock.lock
        begin
          __gtk_tree_view_column_add_attribute(tree_column, cell_renderer, attribute, column)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1cell_1get_1position, [:pointer, :long, :int32, :int32, :long, :long], :int8
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gtk_tree_view_column_cell_get_position(tree_column, cell_renderer, start_pos, width)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1cell_1get_1position, JNI.env, self.jni_id, tree_column, cell_renderer, start_pos.jni_id, width.jni_id) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gtk_tree_view_column_cell_get_position(tree_column, cell_renderer, start_pos, width)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_column_cell_get_position(tree_column, cell_renderer, start_pos, width)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1cell_1get_1size, [:pointer, :long, :int32, :long, :long, :long, :long, :long], :void
      typesig { [::Java::Int, GdkRectangle, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gtk_tree_view_column_cell_get_size(tree_column, cell_area, x_offset, y_offset, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1cell_1get_1size, JNI.env, self.jni_id, tree_column, cell_area.jni_id, x_offset.jni_id, y_offset.jni_id, width.jni_id, height.jni_id)
      end
      
      typesig { [::Java::Int, GdkRectangle, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gtk_tree_view_column_cell_get_size(tree_column, cell_area, x_offset, y_offset, width, height)
        self.attr_lock.lock
        begin
          __gtk_tree_view_column_cell_get_size(tree_column, cell_area, x_offset, y_offset, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1cell_1set_1cell_1data, [:pointer, :long, :int32, :int32, :int32, :int8, :int8], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
      def __gtk_tree_view_column_cell_set_cell_data(tree_column, tree_model, iter, is_expander, is_expanded)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1cell_1set_1cell_1data, JNI.env, self.jni_id, tree_column, tree_model, iter, is_expander ? 1 : 0, is_expanded ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
      def gtk_tree_view_column_cell_set_cell_data(tree_column, tree_model, iter, is_expander, is_expanded)
        self.attr_lock.lock
        begin
          __gtk_tree_view_column_cell_set_cell_data(tree_column, tree_model, iter, is_expander, is_expanded)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1clear, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_tree_view_column_clear(tree_column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1clear, JNI.env, self.jni_id, tree_column)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_view_column_clear(tree_column)
        self.attr_lock.lock
        begin
          __gtk_tree_view_column_clear(tree_column)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1cell_1renderers, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_tree_view_column_get_cell_renderers(tree_column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1cell_1renderers, JNI.env, self.jni_id, tree_column)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_view_column_get_cell_renderers(tree_column)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_column_get_cell_renderers(tree_column)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1fixed_1width, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_tree_view_column_get_fixed_width(column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1fixed_1width, JNI.env, self.jni_id, column)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_view_column_get_fixed_width(column)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_column_get_fixed_width(column)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1reorderable, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_tree_view_column_get_reorderable(column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1reorderable, JNI.env, self.jni_id, column) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_view_column_get_reorderable(column)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_column_get_reorderable(column)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1resizable, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_tree_view_column_get_resizable(column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1resizable, JNI.env, self.jni_id, column) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_view_column_get_resizable(column)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_column_get_resizable(column)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1sizing, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_tree_view_column_get_sizing(tree_column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1sizing, JNI.env, self.jni_id, tree_column)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_view_column_get_sizing(tree_column)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_column_get_sizing(tree_column)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1spacing, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_tree_view_column_get_spacing(tree_column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1spacing, JNI.env, self.jni_id, tree_column)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_view_column_get_spacing(tree_column)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_column_get_spacing(tree_column)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1visible, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_tree_view_column_get_visible(column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1visible, JNI.env, self.jni_id, column) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_view_column_get_visible(column)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_column_get_visible(column)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1sort_1indicator, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_tree_view_column_get_sort_indicator(tree_column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1sort_1indicator, JNI.env, self.jni_id, tree_column) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_view_column_get_sort_indicator(tree_column)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_column_get_sort_indicator(tree_column)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1sort_1order, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_tree_view_column_get_sort_order(tree_column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1sort_1order, JNI.env, self.jni_id, tree_column)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_view_column_get_sort_order(tree_column)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_column_get_sort_order(tree_column)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1width, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_tree_view_column_get_width(column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1width, JNI.env, self.jni_id, column)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_view_column_get_width(column)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_column_get_width(column)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_tree_view_column_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_tree_view_column_new
        self.attr_lock.lock
        begin
          return __gtk_tree_view_column_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1pack_1start, [:pointer, :long, :int32, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      def __gtk_tree_view_column_pack_start(tree_column, cell_renderer, expand)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1pack_1start, JNI.env, self.jni_id, tree_column, cell_renderer, expand ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      def gtk_tree_view_column_pack_start(tree_column, cell_renderer, expand)
        self.attr_lock.lock
        begin
          __gtk_tree_view_column_pack_start(tree_column, cell_renderer, expand)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1pack_1end, [:pointer, :long, :int32, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      def __gtk_tree_view_column_pack_end(tree_column, cell_renderer, expand)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1pack_1end, JNI.env, self.jni_id, tree_column, cell_renderer, expand ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      def gtk_tree_view_column_pack_end(tree_column, cell_renderer, expand)
        self.attr_lock.lock
        begin
          __gtk_tree_view_column_pack_end(tree_column, cell_renderer, expand)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1alignment, [:pointer, :long, :int32, :float], :void
      typesig { [::Java::Int, ::Java::Float] }
      def __gtk_tree_view_column_set_alignment(tree_column, xalign)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1alignment, JNI.env, self.jni_id, tree_column, xalign)
      end
      
      typesig { [::Java::Int, ::Java::Float] }
      def gtk_tree_view_column_set_alignment(tree_column, xalign)
        self.attr_lock.lock
        begin
          __gtk_tree_view_column_set_alignment(tree_column, xalign)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1cell_1data_1func, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_tree_view_column_set_cell_data_func(tree_column, cell_renderer, func, func_data, destroy)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1cell_1data_1func, JNI.env, self.jni_id, tree_column, cell_renderer, func, func_data, destroy)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_tree_view_column_set_cell_data_func(tree_column, cell_renderer, func, func_data, destroy)
        self.attr_lock.lock
        begin
          __gtk_tree_view_column_set_cell_data_func(tree_column, cell_renderer, func, func_data, destroy)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1clickable, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_tree_view_column_set_clickable(column, clickable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1clickable, JNI.env, self.jni_id, column, clickable ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_tree_view_column_set_clickable(column, clickable)
        self.attr_lock.lock
        begin
          __gtk_tree_view_column_set_clickable(column, clickable)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1fixed_1width, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_view_column_set_fixed_width(column, fixed_width)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1fixed_1width, JNI.env, self.jni_id, column, fixed_width)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_view_column_set_fixed_width(column, fixed_width)
        self.attr_lock.lock
        begin
          __gtk_tree_view_column_set_fixed_width(column, fixed_width)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1min_1width, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_view_column_set_min_width(tree_column, min_width)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1min_1width, JNI.env, self.jni_id, tree_column, min_width)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_view_column_set_min_width(tree_column, min_width)
        self.attr_lock.lock
        begin
          __gtk_tree_view_column_set_min_width(tree_column, min_width)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1reorderable, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_tree_view_column_set_reorderable(column, reorderable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1reorderable, JNI.env, self.jni_id, column, reorderable ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_tree_view_column_set_reorderable(column, reorderable)
        self.attr_lock.lock
        begin
          __gtk_tree_view_column_set_reorderable(column, reorderable)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1resizable, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_tree_view_column_set_resizable(column, resizable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1resizable, JNI.env, self.jni_id, column, resizable ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_tree_view_column_set_resizable(column, resizable)
        self.attr_lock.lock
        begin
          __gtk_tree_view_column_set_resizable(column, resizable)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1sizing, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_view_column_set_sizing(column, type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1sizing, JNI.env, self.jni_id, column, type)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_view_column_set_sizing(column, type)
        self.attr_lock.lock
        begin
          __gtk_tree_view_column_set_sizing(column, type)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1sort_1indicator, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_tree_view_column_set_sort_indicator(tree_column, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1sort_1indicator, JNI.env, self.jni_id, tree_column, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_tree_view_column_set_sort_indicator(tree_column, setting)
        self.attr_lock.lock
        begin
          __gtk_tree_view_column_set_sort_indicator(tree_column, setting)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1sort_1order, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_view_column_set_sort_order(tree_column, order)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1sort_1order, JNI.env, self.jni_id, tree_column, order)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_view_column_set_sort_order(tree_column, order)
        self.attr_lock.lock
        begin
          __gtk_tree_view_column_set_sort_order(tree_column, order)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1title, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_tree_view_column_set_title(tree_column, title)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1title, JNI.env, self.jni_id, tree_column, title.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_tree_view_column_set_title(tree_column, title)
        self.attr_lock.lock
        begin
          __gtk_tree_view_column_set_title(tree_column, title)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1visible, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_tree_view_column_set_visible(tree_column, visible)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1visible, JNI.env, self.jni_id, tree_column, visible ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_tree_view_column_set_visible(tree_column, visible)
        self.attr_lock.lock
        begin
          __gtk_tree_view_column_set_visible(tree_column, visible)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1widget, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_view_column_set_widget(tree_column, widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1widget, JNI.env, self.jni_id, tree_column, widget)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_view_column_set_widget(tree_column, widget)
        self.attr_lock.lock
        begin
          __gtk_tree_view_column_set_widget(tree_column, widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1drag_1dest_1row, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_tree_view_set_drag_dest_row(view, path, pos)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1drag_1dest_1row, JNI.env, self.jni_id, view, path, pos)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_tree_view_set_drag_dest_row(view, path, pos)
        self.attr_lock.lock
        begin
          __gtk_tree_view_set_drag_dest_row(view, path, pos)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1enable_1search, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_tree_view_set_enable_search(view, enable_search)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1enable_1search, JNI.env, self.jni_id, view, enable_search ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_tree_view_set_enable_search(view, enable_search)
        self.attr_lock.lock
        begin
          __gtk_tree_view_set_enable_search(view, enable_search)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1expand_1row, [:pointer, :long, :int32, :int32, :int8], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      def __gtk_tree_view_expand_row(view, path, open_all)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1expand_1row, JNI.env, self.jni_id, view, path, open_all ? 1 : 0) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      def gtk_tree_view_expand_row(view, path, open_all)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_expand_row(view, path, open_all)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1background_1area, [:pointer, :long, :int32, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle] }
      def __gtk_tree_view_get_background_area(tree_view, path, column, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1background_1area, JNI.env, self.jni_id, tree_view, path, column, rect.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle] }
      def gtk_tree_view_get_background_area(tree_view, path, column, rect)
        self.attr_lock.lock
        begin
          __gtk_tree_view_get_background_area(tree_view, path, column, rect)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1bin_1window, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_tree_view_get_bin_window(tree_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1bin_1window, JNI.env, self.jni_id, tree_view)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_view_get_bin_window(tree_view)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_get_bin_window(tree_view)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1cell_1area, [:pointer, :long, :int32, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle] }
      def __gtk_tree_view_get_cell_area(tree_view, path, column, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1cell_1area, JNI.env, self.jni_id, tree_view, path, column, rect.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle] }
      def gtk_tree_view_get_cell_area(tree_view, path, column, rect)
        self.attr_lock.lock
        begin
          __gtk_tree_view_get_cell_area(tree_view, path, column, rect)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1expander_1column, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_tree_view_get_expander_column(tree_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1expander_1column, JNI.env, self.jni_id, tree_view)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_view_get_expander_column(tree_view)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_get_expander_column(tree_view)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1column, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_view_get_column(tree_view, n)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1column, JNI.env, self.jni_id, tree_view, n)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_view_get_column(tree_view, n)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_get_column(tree_view, n)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1columns, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_tree_view_get_columns(tree_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1columns, JNI.env, self.jni_id, tree_view)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_view_get_columns(tree_view)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_get_columns(tree_view)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1cursor, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gtk_tree_view_get_cursor(tree_view, path, focus_column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1cursor, JNI.env, self.jni_id, tree_view, path.jni_id, focus_column.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gtk_tree_view_get_cursor(tree_view, path, focus_column)
        self.attr_lock.lock
        begin
          __gtk_tree_view_get_cursor(tree_view, path, focus_column)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1headers_1visible, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_tree_view_get_headers_visible(tree_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1headers_1visible, JNI.env, self.jni_id, tree_view) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_view_get_headers_visible(tree_view)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_get_headers_visible(tree_view)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1path_1at_1pos, [:pointer, :long, :int32, :int32, :int32, :long, :long, :long, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gtk_tree_view_get_path_at_pos(tree_view, x, y, path, column, cell_x, cell_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1path_1at_1pos, JNI.env, self.jni_id, tree_view, x, y, path.jni_id, column.jni_id, cell_x.jni_id, cell_y.jni_id) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gtk_tree_view_get_path_at_pos(tree_view, x, y, path, column, cell_x, cell_y)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_get_path_at_pos(tree_view, x, y, path, column, cell_x, cell_y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1rules_1hint, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_tree_view_get_rules_hint(tree_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1rules_1hint, JNI.env, self.jni_id, tree_view) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_view_get_rules_hint(tree_view)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_get_rules_hint(tree_view)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1selection, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_tree_view_get_selection(tree_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1selection, JNI.env, self.jni_id, tree_view)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_view_get_selection(tree_view)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_get_selection(tree_view)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1visible_1rect, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkRectangle] }
      def __gtk_tree_view_get_visible_rect(tree_view, visible_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1visible_1rect, JNI.env, self.jni_id, tree_view, visible_rect.jni_id)
      end
      
      typesig { [::Java::Int, GdkRectangle] }
      def gtk_tree_view_get_visible_rect(tree_view, visible_rect)
        self.attr_lock.lock
        begin
          __gtk_tree_view_get_visible_rect(tree_view, visible_rect)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1insert_1column, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_tree_view_insert_column(tree_view, column, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1insert_1column, JNI.env, self.jni_id, tree_view, column, position)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_tree_view_insert_column(tree_view, column, position)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_insert_column(tree_view, column, position)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1move_1column_1after, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_tree_view_move_column_after(tree_view, column, base_column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1move_1column_1after, JNI.env, self.jni_id, tree_view, column, base_column)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_tree_view_move_column_after(tree_view, column, base_column)
        self.attr_lock.lock
        begin
          __gtk_tree_view_move_column_after(tree_view, column, base_column)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1new_1with_1model, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_tree_view_new_with_model(model)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1new_1with_1model, JNI.env, self.jni_id, model)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_view_new_with_model(model)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_new_with_model(model)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1remove_1column, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_view_remove_column(tree_view, column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1remove_1column, JNI.env, self.jni_id, tree_view, column)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_view_remove_column(tree_view, column)
        self.attr_lock.lock
        begin
          __gtk_tree_view_remove_column(tree_view, column)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1row_1expanded, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_view_row_expanded(view, path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1row_1expanded, JNI.env, self.jni_id, view, path) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_view_row_expanded(view, path)
        self.attr_lock.lock
        begin
          return __gtk_tree_view_row_expanded(view, path)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1scroll_1to_1cell, [:pointer, :long, :int32, :int32, :int32, :int8, :float, :float], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Float, ::Java::Float] }
      def __gtk_tree_view_scroll_to_cell(tree_view, path, column, use_align, row_aligh, column_align)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1scroll_1to_1cell, JNI.env, self.jni_id, tree_view, path, column, use_align ? 1 : 0, row_aligh, column_align)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Float, ::Java::Float] }
      def gtk_tree_view_scroll_to_cell(tree_view, path, column, use_align, row_aligh, column_align)
        self.attr_lock.lock
        begin
          __gtk_tree_view_scroll_to_cell(tree_view, path, column, use_align, row_aligh, column_align)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1scroll_1to_1point, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_tree_view_scroll_to_point(tree_view, tree_x, tree_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1scroll_1to_1point, JNI.env, self.jni_id, tree_view, tree_x, tree_y)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_tree_view_scroll_to_point(tree_view, tree_x, tree_y)
        self.attr_lock.lock
        begin
          __gtk_tree_view_scroll_to_point(tree_view, tree_x, tree_y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1cursor, [:pointer, :long, :int32, :int32, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      def __gtk_tree_view_set_cursor(tree_view, path, focus_column, start_editing)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1cursor, JNI.env, self.jni_id, tree_view, path, focus_column, start_editing ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      def gtk_tree_view_set_cursor(tree_view, path, focus_column, start_editing)
        self.attr_lock.lock
        begin
          __gtk_tree_view_set_cursor(tree_view, path, focus_column, start_editing)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1headers_1visible, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_tree_view_set_headers_visible(tree_view, visible)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1headers_1visible, JNI.env, self.jni_id, tree_view, visible ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_tree_view_set_headers_visible(tree_view, visible)
        self.attr_lock.lock
        begin
          __gtk_tree_view_set_headers_visible(tree_view, visible)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1model, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_view_set_model(tree_view, model)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1model, JNI.env, self.jni_id, tree_view, model)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_view_set_model(tree_view, model)
        self.attr_lock.lock
        begin
          __gtk_tree_view_set_model(tree_view, model)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1rules_1hint, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_tree_view_set_rules_hint(tree_view, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1rules_1hint, JNI.env, self.jni_id, tree_view, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_tree_view_set_rules_hint(tree_view, setting)
        self.attr_lock.lock
        begin
          __gtk_tree_view_set_rules_hint(tree_view, setting)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1search_1column, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_tree_view_set_search_column(tree_view, column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1search_1column, JNI.env, self.jni_id, tree_view, column)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_tree_view_set_search_column(tree_view, column)
        self.attr_lock.lock
        begin
          __gtk_tree_view_set_search_column(tree_view, column)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1tree_1to_1widget_1coords, [:pointer, :long, :int32, :int32, :int32, :long, :long], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gtk_tree_view_tree_to_widget_coords(tree_view, tx, ty, wx, wy)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1tree_1to_1widget_1coords, JNI.env, self.jni_id, tree_view, tx, ty, wx.jni_id, wy.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gtk_tree_view_tree_to_widget_coords(tree_view, tx, ty, wx, wy)
        self.attr_lock.lock
        begin
          __gtk_tree_view_tree_to_widget_coords(tree_view, tx, ty, wx, wy)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1unset_1rows_1drag_1dest, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_tree_view_unset_rows_drag_dest(tree_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1unset_1rows_1drag_1dest, JNI.env, self.jni_id, tree_view)
      end
      
      typesig { [::Java::Int] }
      def gtk_tree_view_unset_rows_drag_dest(tree_view)
        self.attr_lock.lock
        begin
          __gtk_tree_view_unset_rows_drag_dest(tree_view)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1widget_1to_1tree_1coords, [:pointer, :long, :int32, :int32, :int32, :long, :long], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gtk_tree_view_widget_to_tree_coords(tree_view, wx, wy, tx, ty)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1widget_1to_1tree_1coords, JNI.env, self.jni_id, tree_view, wx, wy, tx.jni_id, ty.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gtk_tree_view_widget_to_tree_coords(tree_view, wx, wy, tx, ty)
        self.attr_lock.lock
        begin
          __gtk_tree_view_widget_to_tree_coords(tree_view, wx, wy, tx, ty)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1vbox_1new, [:pointer, :long, :int8, :int32], :int32
      typesig { [::Java::Boolean, ::Java::Int] }
      def __gtk_vbox_new(homogeneous, spacing)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1vbox_1new, JNI.env, self.jni_id, homogeneous ? 1 : 0, spacing)
      end
      
      typesig { [::Java::Boolean, ::Java::Int] }
      def gtk_vbox_new(homogeneous, spacing)
        self.attr_lock.lock
        begin
          return __gtk_vbox_new(homogeneous, spacing)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1vscale_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_vscale_new(adjustment)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1vscale_1new, JNI.env, self.jni_id, adjustment)
      end
      
      typesig { [::Java::Int] }
      def gtk_vscale_new(adjustment)
        self.attr_lock.lock
        begin
          return __gtk_vscale_new(adjustment)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1vscrollbar_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_vscrollbar_new(adjustment)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1vscrollbar_1new, JNI.env, self.jni_id, adjustment)
      end
      
      typesig { [::Java::Int] }
      def gtk_vscrollbar_new(adjustment)
        self.attr_lock.lock
        begin
          return __gtk_vscrollbar_new(adjustment)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1vseparator_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_vseparator_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1vseparator_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_vseparator_new
        self.attr_lock.lock
        begin
          return __gtk_vseparator_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1add_1accelerator, [:pointer, :long, :int32, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_widget_add_accelerator(widget, accel_signal, accel_group, accel_key, accel_mods, accel_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1add_1accelerator, JNI.env, self.jni_id, widget, accel_signal.jni_id, accel_group, accel_key, accel_mods, accel_flags)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_widget_add_accelerator(widget, accel_signal, accel_group, accel_key, accel_mods, accel_flags)
        self.attr_lock.lock
        begin
          __gtk_widget_add_accelerator(widget, accel_signal, accel_group, accel_key, accel_mods, accel_flags)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1add_1events, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_widget_add_events(widget, events)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1add_1events, JNI.env, self.jni_id, widget, events)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_widget_add_events(widget, events)
        self.attr_lock.lock
        begin
          __gtk_widget_add_events(widget, events)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1child_1focus, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_widget_child_focus(widget, direction)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1child_1focus, JNI.env, self.jni_id, widget, direction) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_widget_child_focus(widget, direction)
        self.attr_lock.lock
        begin
          return __gtk_widget_child_focus(widget, direction)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1create_1pango_1layout__I_3B, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_widget_create_pango_layout(widget, text)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1create_1pango_1layout__I_3B, JNI.env, self.jni_id, widget, text.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_widget_create_pango_layout(widget, text)
        self.attr_lock.lock
        begin
          return __gtk_widget_create_pango_layout(widget, text)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1create_1pango_1layout__II, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_widget_create_pango_layout(widget, text)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1create_1pango_1layout__II, JNI.env, self.jni_id, widget, text)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_widget_create_pango_layout(widget, text)
        self.attr_lock.lock
        begin
          return __gtk_widget_create_pango_layout(widget, text)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1destroy, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_widget_destroy(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1destroy, JNI.env, self.jni_id, widget)
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_destroy(widget)
        self.attr_lock.lock
        begin
          __gtk_widget_destroy(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1event, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_widget_event(widget, event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1event, JNI.env, self.jni_id, widget, event) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_widget_event(widget, event)
        self.attr_lock.lock
        begin
          return __gtk_widget_event(widget, event)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1accessible, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_widget_get_accessible(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1accessible, JNI.env, self.jni_id, widget)
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_get_accessible(widget)
        self.attr_lock.lock
        begin
          return __gtk_widget_get_accessible(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1child_1visible, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_widget_get_child_visible(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1child_1visible, JNI.env, self.jni_id, widget) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_get_child_visible(widget)
        self.attr_lock.lock
        begin
          return __gtk_widget_get_child_visible(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1default_1direction, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_widget_get_default_direction
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1default_1direction, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_widget_get_default_direction
        self.attr_lock.lock
        begin
          return __gtk_widget_get_default_direction
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1default_1style, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_widget_get_default_style
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1default_1style, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_widget_get_default_style
        self.attr_lock.lock
        begin
          return __gtk_widget_get_default_style
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1direction, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_widget_get_direction(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1direction, JNI.env, self.jni_id, widget)
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_get_direction(widget)
        self.attr_lock.lock
        begin
          return __gtk_widget_get_direction(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1events, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_widget_get_events(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1events, JNI.env, self.jni_id, widget)
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_get_events(widget)
        self.attr_lock.lock
        begin
          return __gtk_widget_get_events(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1modifier_1style, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_widget_get_modifier_style(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1modifier_1style, JNI.env, self.jni_id, widget)
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_get_modifier_style(widget)
        self.attr_lock.lock
        begin
          return __gtk_widget_get_modifier_style(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1pango_1context, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_widget_get_pango_context(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1pango_1context, JNI.env, self.jni_id, widget)
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_get_pango_context(widget)
        self.attr_lock.lock
        begin
          return __gtk_widget_get_pango_context(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1parent, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_widget_get_parent(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1parent, JNI.env, self.jni_id, widget)
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_get_parent(widget)
        self.attr_lock.lock
        begin
          return __gtk_widget_get_parent(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1style, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_widget_get_style(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1style, JNI.env, self.jni_id, widget)
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_get_style(widget)
        self.attr_lock.lock
        begin
          return __gtk_widget_get_style(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1size_1request, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gtk_widget_get_size_request(widget, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1size_1request, JNI.env, self.jni_id, widget, width.jni_id, height.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gtk_widget_get_size_request(widget, width, height)
        self.attr_lock.lock
        begin
          __gtk_widget_get_size_request(widget, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1toplevel, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_widget_get_toplevel(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1toplevel, JNI.env, self.jni_id, widget)
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_get_toplevel(widget)
        self.attr_lock.lock
        begin
          return __gtk_widget_get_toplevel(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1grab_1focus, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_widget_grab_focus(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1grab_1focus, JNI.env, self.jni_id, widget)
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_grab_focus(widget)
        self.attr_lock.lock
        begin
          __gtk_widget_grab_focus(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1hide, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_widget_hide(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1hide, JNI.env, self.jni_id, widget)
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_hide(widget)
        self.attr_lock.lock
        begin
          __gtk_widget_hide(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1is_1composited, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_widget_is_composited(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1is_1composited, JNI.env, self.jni_id, widget) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_is_composited(widget)
        self.attr_lock.lock
        begin
          return __gtk_widget_is_composited(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1is_1focus, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_widget_is_focus(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1is_1focus, JNI.env, self.jni_id, widget) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_is_focus(widget)
        self.attr_lock.lock
        begin
          return __gtk_widget_is_focus(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1map, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_widget_map(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1map, JNI.env, self.jni_id, widget)
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_map(widget)
        self.attr_lock.lock
        begin
          __gtk_widget_map(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1mnemonic_1activate, [:pointer, :long, :int32, :int8], :int8
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_widget_mnemonic_activate(widget, group_cycling)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1mnemonic_1activate, JNI.env, self.jni_id, widget, group_cycling ? 1 : 0) != 0
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_widget_mnemonic_activate(widget, group_cycling)
        self.attr_lock.lock
        begin
          return __gtk_widget_mnemonic_activate(widget, group_cycling)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1base, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def __gtk_widget_modify_base(widget, state, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1base, JNI.env, self.jni_id, widget, state, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def gtk_widget_modify_base(widget, state, color)
        self.attr_lock.lock
        begin
          __gtk_widget_modify_base(widget, state, color)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1bg, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def __gtk_widget_modify_bg(widget, state, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1bg, JNI.env, self.jni_id, widget, state, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def gtk_widget_modify_bg(widget, state, color)
        self.attr_lock.lock
        begin
          __gtk_widget_modify_bg(widget, state, color)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1fg, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def __gtk_widget_modify_fg(widget, state, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1fg, JNI.env, self.jni_id, widget, state, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def gtk_widget_modify_fg(widget, state, color)
        self.attr_lock.lock
        begin
          __gtk_widget_modify_fg(widget, state, color)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1font, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_widget_modify_font(widget, pango_font_descr)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1font, JNI.env, self.jni_id, widget, pango_font_descr)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_widget_modify_font(widget, pango_font_descr)
        self.attr_lock.lock
        begin
          __gtk_widget_modify_font(widget, pango_font_descr)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1style, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_widget_modify_style(widget, style)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1style, JNI.env, self.jni_id, widget, style)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_widget_modify_style(widget, style)
        self.attr_lock.lock
        begin
          __gtk_widget_modify_style(widget, style)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1text, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def __gtk_widget_modify_text(widget, state, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1text, JNI.env, self.jni_id, widget, state, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      def gtk_widget_modify_text(widget, state, color)
        self.attr_lock.lock
        begin
          __gtk_widget_modify_text(widget, state, color)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1queue_1resize, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_widget_queue_resize(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1queue_1resize, JNI.env, self.jni_id, widget)
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_queue_resize(widget)
        self.attr_lock.lock
        begin
          __gtk_widget_queue_resize(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1realize, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_widget_realize(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1realize, JNI.env, self.jni_id, widget)
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_realize(widget)
        self.attr_lock.lock
        begin
          __gtk_widget_realize(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1remove_1accelerator, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_widget_remove_accelerator(widget, accel_group, accel_key, accel_mods)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1remove_1accelerator, JNI.env, self.jni_id, widget, accel_group, accel_key, accel_mods)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_widget_remove_accelerator(widget, accel_group, accel_key, accel_mods)
        self.attr_lock.lock
        begin
          __gtk_widget_remove_accelerator(widget, accel_group, accel_key, accel_mods)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1reparent, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_widget_reparent(widget, new_parent)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1reparent, JNI.env, self.jni_id, widget, new_parent)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_widget_reparent(widget, new_parent)
        self.attr_lock.lock
        begin
          __gtk_widget_reparent(widget, new_parent)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1send_1expose, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_widget_send_expose(widget, event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1send_1expose, JNI.env, self.jni_id, widget, event)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_widget_send_expose(widget, event)
        self.attr_lock.lock
        begin
          return __gtk_widget_send_expose(widget, event)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1app_1paintable, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_widget_set_app_paintable(widget, app_paintable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1app_1paintable, JNI.env, self.jni_id, widget, app_paintable ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_widget_set_app_paintable(widget, app_paintable)
        self.attr_lock.lock
        begin
          __gtk_widget_set_app_paintable(widget, app_paintable)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1default_1direction, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_widget_set_default_direction(dir)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1default_1direction, JNI.env, self.jni_id, dir)
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_set_default_direction(dir)
        self.attr_lock.lock
        begin
          __gtk_widget_set_default_direction(dir)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1direction, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_widget_set_direction(widget, dir)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1direction, JNI.env, self.jni_id, widget, dir)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_widget_set_direction(widget, dir)
        self.attr_lock.lock
        begin
          __gtk_widget_set_direction(widget, dir)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1double_1buffered, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_widget_set_double_buffered(widget, double_buffered)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1double_1buffered, JNI.env, self.jni_id, widget, double_buffered ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_widget_set_double_buffered(widget, double_buffered)
        self.attr_lock.lock
        begin
          __gtk_widget_set_double_buffered(widget, double_buffered)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1name, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_widget_set_name(widget, name)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1name, JNI.env, self.jni_id, widget, name.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_widget_set_name(widget, name)
        self.attr_lock.lock
        begin
          __gtk_widget_set_name(widget, name)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1redraw_1on_1allocate, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_widget_set_redraw_on_allocate(widget, redraw)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1redraw_1on_1allocate, JNI.env, self.jni_id, widget, redraw ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_widget_set_redraw_on_allocate(widget, redraw)
        self.attr_lock.lock
        begin
          __gtk_widget_set_redraw_on_allocate(widget, redraw)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1sensitive, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_widget_set_sensitive(widget, sensitive)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1sensitive, JNI.env, self.jni_id, widget, sensitive ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_widget_set_sensitive(widget, sensitive)
        self.attr_lock.lock
        begin
          __gtk_widget_set_sensitive(widget, sensitive)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1size_1request, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_widget_set_size_request(widget, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1size_1request, JNI.env, self.jni_id, widget, width, height)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_widget_set_size_request(widget, width, height)
        self.attr_lock.lock
        begin
          __gtk_widget_set_size_request(widget, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1state, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_widget_set_state(widget, state)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1state, JNI.env, self.jni_id, widget, state)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_widget_set_state(widget, state)
        self.attr_lock.lock
        begin
          __gtk_widget_set_state(widget, state)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1style, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_widget_set_style(widget, style)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1style, JNI.env, self.jni_id, widget, style)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_widget_set_style(widget, style)
        self.attr_lock.lock
        begin
          __gtk_widget_set_style(widget, style)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1shape_1combine_1mask, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_widget_shape_combine_mask(widget, shape_mask, offset_x, offset_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1shape_1combine_1mask, JNI.env, self.jni_id, widget, shape_mask, offset_x, offset_y)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_widget_shape_combine_mask(widget, shape_mask, offset_x, offset_y)
        self.attr_lock.lock
        begin
          __gtk_widget_shape_combine_mask(widget, shape_mask, offset_x, offset_y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1show, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_widget_show(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1show, JNI.env, self.jni_id, widget)
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_show(widget)
        self.attr_lock.lock
        begin
          __gtk_widget_show(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1show_1now, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_widget_show_now(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1show_1now, JNI.env, self.jni_id, widget)
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_show_now(widget)
        self.attr_lock.lock
        begin
          __gtk_widget_show_now(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1size_1allocate, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GtkAllocation] }
      def __gtk_widget_size_allocate(widget, allocation)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1size_1allocate, JNI.env, self.jni_id, widget, allocation.jni_id)
      end
      
      typesig { [::Java::Int, GtkAllocation] }
      def gtk_widget_size_allocate(widget, allocation)
        self.attr_lock.lock
        begin
          __gtk_widget_size_allocate(widget, allocation)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1size_1request, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GtkRequisition] }
      def __gtk_widget_size_request(widget, requisition)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1size_1request, JNI.env, self.jni_id, widget, requisition.jni_id)
      end
      
      typesig { [::Java::Int, GtkRequisition] }
      def gtk_widget_size_request(widget, requisition)
        self.attr_lock.lock
        begin
          __gtk_widget_size_request(widget, requisition)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1style_1get__I_3B_3II, [:pointer, :long, :int32, :long, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int), ::Java::Int] }
      def __gtk_widget_style_get(widget, property_name, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1style_1get__I_3B_3II, JNI.env, self.jni_id, widget, property_name.jni_id, value.jni_id, terminator)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int), ::Java::Int] }
      def gtk_widget_style_get(widget, property_name, value, terminator)
        self.attr_lock.lock
        begin
          __gtk_widget_style_get(widget, property_name, value, terminator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1style_1get__I_3B_3JI, [:pointer, :long, :int32, :long, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Long), ::Java::Int] }
      def __gtk_widget_style_get(widget, property_name, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1style_1get__I_3B_3JI, JNI.env, self.jni_id, widget, property_name.jni_id, value.jni_id, terminator)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Long), ::Java::Int] }
      def gtk_widget_style_get(widget, property_name, value, terminator)
        self.attr_lock.lock
        begin
          __gtk_widget_style_get(widget, property_name, value, terminator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1translate_1coordinates, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gtk_widget_translate_coordinates(src_widget, dest_widget, src_x, src_y, dest_x, dest_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1translate_1coordinates, JNI.env, self.jni_id, src_widget, dest_widget, src_x, src_y, dest_x.jni_id, dest_y.jni_id) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gtk_widget_translate_coordinates(src_widget, dest_widget, src_x, src_y, dest_x, dest_y)
        self.attr_lock.lock
        begin
          return __gtk_widget_translate_coordinates(src_widget, dest_widget, src_x, src_y, dest_x, dest_y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1unrealize, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_widget_unrealize(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1unrealize, JNI.env, self.jni_id, widget)
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_unrealize(widget)
        self.attr_lock.lock
        begin
          __gtk_widget_unrealize(widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1activate_1default, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_window_activate_default(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1activate_1default, JNI.env, self.jni_id, window) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_window_activate_default(window)
        self.attr_lock.lock
        begin
          return __gtk_window_activate_default(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1add_1accel_1group, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_window_add_accel_group(window, accel_group)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1add_1accel_1group, JNI.env, self.jni_id, window, accel_group)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_window_add_accel_group(window, accel_group)
        self.attr_lock.lock
        begin
          __gtk_window_add_accel_group(window, accel_group)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1deiconify, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_window_deiconify(handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1deiconify, JNI.env, self.jni_id, handle)
      end
      
      typesig { [::Java::Int] }
      def gtk_window_deiconify(handle)
        self.attr_lock.lock
        begin
          __gtk_window_deiconify(handle)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1focus, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_window_get_focus(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1focus, JNI.env, self.jni_id, window)
      end
      
      typesig { [::Java::Int] }
      def gtk_window_get_focus(window)
        self.attr_lock.lock
        begin
          return __gtk_window_get_focus(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1group, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_window_get_group(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1group, JNI.env, self.jni_id, window)
      end
      
      typesig { [::Java::Int] }
      def gtk_window_get_group(window)
        self.attr_lock.lock
        begin
          return __gtk_window_get_group(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1icon_1list, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_window_get_icon_list(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1icon_1list, JNI.env, self.jni_id, window)
      end
      
      typesig { [::Java::Int] }
      def gtk_window_get_icon_list(window)
        self.attr_lock.lock
        begin
          return __gtk_window_get_icon_list(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1modal, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __gtk_window_get_modal(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1modal, JNI.env, self.jni_id, window) != 0
      end
      
      typesig { [::Java::Int] }
      def gtk_window_get_modal(window)
        self.attr_lock.lock
        begin
          return __gtk_window_get_modal(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1mnemonic_1modifier, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_window_get_mnemonic_modifier(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1mnemonic_1modifier, JNI.env, self.jni_id, window)
      end
      
      typesig { [::Java::Int] }
      def gtk_window_get_mnemonic_modifier(window)
        self.attr_lock.lock
        begin
          return __gtk_window_get_mnemonic_modifier(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1opacity, [:pointer, :long, :int32], :double
      typesig { [::Java::Int] }
      def __gtk_window_get_opacity(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1opacity, JNI.env, self.jni_id, window)
      end
      
      typesig { [::Java::Int] }
      def gtk_window_get_opacity(window)
        self.attr_lock.lock
        begin
          return __gtk_window_get_opacity(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1position, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gtk_window_get_position(handle, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1position, JNI.env, self.jni_id, handle, x.jni_id, y.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gtk_window_get_position(handle, x, y)
        self.attr_lock.lock
        begin
          __gtk_window_get_position(handle, x, y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1size, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __gtk_window_get_size(handle, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1size, JNI.env, self.jni_id, handle, x.jni_id, y.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def gtk_window_get_size(handle, x, y)
        self.attr_lock.lock
        begin
          __gtk_window_get_size(handle, x, y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1group_1add_1window, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_window_group_add_window(group, window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1group_1add_1window, JNI.env, self.jni_id, group, window)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_window_group_add_window(group, window)
        self.attr_lock.lock
        begin
          __gtk_window_group_add_window(group, window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1group_1remove_1window, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_window_group_remove_window(group, window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1group_1remove_1window, JNI.env, self.jni_id, group, window)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_window_group_remove_window(group, window)
        self.attr_lock.lock
        begin
          __gtk_window_group_remove_window(group, window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1group_1new, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_window_group_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1group_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_window_group_new
        self.attr_lock.lock
        begin
          return __gtk_window_group_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1iconify, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_window_iconify(handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1iconify, JNI.env, self.jni_id, handle)
      end
      
      typesig { [::Java::Int] }
      def gtk_window_iconify(handle)
        self.attr_lock.lock
        begin
          __gtk_window_iconify(handle)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1list_1toplevels, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_window_list_toplevels
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1list_1toplevels, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_window_list_toplevels
        self.attr_lock.lock
        begin
          return __gtk_window_list_toplevels
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1maximize, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_window_maximize(handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1maximize, JNI.env, self.jni_id, handle)
      end
      
      typesig { [::Java::Int] }
      def gtk_window_maximize(handle)
        self.attr_lock.lock
        begin
          __gtk_window_maximize(handle)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1fullscreen, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_window_fullscreen(handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1fullscreen, JNI.env, self.jni_id, handle)
      end
      
      typesig { [::Java::Int] }
      def gtk_window_fullscreen(handle)
        self.attr_lock.lock
        begin
          __gtk_window_fullscreen(handle)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1unfullscreen, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_window_unfullscreen(handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1unfullscreen, JNI.env, self.jni_id, handle)
      end
      
      typesig { [::Java::Int] }
      def gtk_window_unfullscreen(handle)
        self.attr_lock.lock
        begin
          __gtk_window_unfullscreen(handle)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1move, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_window_move(handle, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1move, JNI.env, self.jni_id, handle, x, y)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_window_move(handle, x, y)
        self.attr_lock.lock
        begin
          __gtk_window_move(handle, x, y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gtk_window_new(type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1new, JNI.env, self.jni_id, type)
      end
      
      typesig { [::Java::Int] }
      def gtk_window_new(type)
        self.attr_lock.lock
        begin
          return __gtk_window_new(type)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1present, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_window_present(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1present, JNI.env, self.jni_id, window)
      end
      
      typesig { [::Java::Int] }
      def gtk_window_present(window)
        self.attr_lock.lock
        begin
          __gtk_window_present(window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1remove_1accel_1group, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_window_remove_accel_group(window, accel_group)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1remove_1accel_1group, JNI.env, self.jni_id, window, accel_group)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_window_remove_accel_group(window, accel_group)
        self.attr_lock.lock
        begin
          __gtk_window_remove_accel_group(window, accel_group)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1resize, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __gtk_window_resize(handle, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1resize, JNI.env, self.jni_id, handle, x, y)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def gtk_window_resize(handle, x, y)
        self.attr_lock.lock
        begin
          __gtk_window_resize(handle, x, y)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1default, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_window_set_default(window, widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1default, JNI.env, self.jni_id, window, widget)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_window_set_default(window, widget)
        self.attr_lock.lock
        begin
          __gtk_window_set_default(window, widget)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1destroy_1with_1parent, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_window_set_destroy_with_parent(window, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1destroy_1with_1parent, JNI.env, self.jni_id, window, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_window_set_destroy_with_parent(window, setting)
        self.attr_lock.lock
        begin
          __gtk_window_set_destroy_with_parent(window, setting)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1keep_1below, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_window_set_keep_below(window, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1keep_1below, JNI.env, self.jni_id, window, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_window_set_keep_below(window, setting)
        self.attr_lock.lock
        begin
          __gtk_window_set_keep_below(window, setting)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1geometry_1hints, [:pointer, :long, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, GdkGeometry, ::Java::Int] }
      def __gtk_window_set_geometry_hints(window, geometry_widget, geometry, geom_mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1geometry_1hints, JNI.env, self.jni_id, window, geometry_widget, geometry.jni_id, geom_mask)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkGeometry, ::Java::Int] }
      def gtk_window_set_geometry_hints(window, geometry_widget, geometry, geom_mask)
        self.attr_lock.lock
        begin
          __gtk_window_set_geometry_hints(window, geometry_widget, geometry, geom_mask)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1icon_1list, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_window_set_icon_list(window, list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1icon_1list, JNI.env, self.jni_id, window, list)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_window_set_icon_list(window, list)
        self.attr_lock.lock
        begin
          __gtk_window_set_icon_list(window, list)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1modal, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_window_set_modal(window, modal)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1modal, JNI.env, self.jni_id, window, modal ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_window_set_modal(window, modal)
        self.attr_lock.lock
        begin
          __gtk_window_set_modal(window, modal)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1opacity, [:pointer, :long, :int32, :double], :void
      typesig { [::Java::Int, ::Java::Double] }
      def __gtk_window_set_opacity(window, opacity)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1opacity, JNI.env, self.jni_id, window, opacity)
      end
      
      typesig { [::Java::Int, ::Java::Double] }
      def gtk_window_set_opacity(window, opacity)
        self.attr_lock.lock
        begin
          __gtk_window_set_opacity(window, opacity)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1tooltip_1text, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_widget_set_tooltip_text(widget, tip_text)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1tooltip_1text, JNI.env, self.jni_id, widget, tip_text.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_widget_set_tooltip_text(widget, tip_text)
        self.attr_lock.lock
        begin
          __gtk_widget_set_tooltip_text(widget, tip_text)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1parent_1window, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_widget_set_parent_window(widget, parent_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1parent_1window, JNI.env, self.jni_id, widget, parent_window)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_widget_set_parent_window(widget, parent_window)
        self.attr_lock.lock
        begin
          __gtk_widget_set_parent_window(widget, parent_window)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1resizable, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_window_set_resizable(window, resizable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1resizable, JNI.env, self.jni_id, window, resizable ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_window_set_resizable(window, resizable)
        self.attr_lock.lock
        begin
          __gtk_window_set_resizable(window, resizable)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1title, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __gtk_window_set_title(window, title)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1title, JNI.env, self.jni_id, window, title.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def gtk_window_set_title(window, title)
        self.attr_lock.lock
        begin
          __gtk_window_set_title(window, title)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1skip_1taskbar_1hint, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __gtk_window_set_skip_taskbar_hint(window, skips_taskbar)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1skip_1taskbar_1hint, JNI.env, self.jni_id, window, skips_taskbar ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def gtk_window_set_skip_taskbar_hint(window, skips_taskbar)
        self.attr_lock.lock
        begin
          __gtk_window_set_skip_taskbar_hint(window, skips_taskbar)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1type_1hint, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_window_set_type_hint(window, hint)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1type_1hint, JNI.env, self.jni_id, window, hint)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_window_set_type_hint(window, hint)
        self.attr_lock.lock
        begin
          __gtk_window_set_type_hint(window, hint)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1transient_1for, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __gtk_window_set_transient_for(window, parent)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1transient_1for, JNI.env, self.jni_id, window, parent)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def gtk_window_set_transient_for(window, parent)
        self.attr_lock.lock
        begin
          __gtk_window_set_transient_for(window, parent)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1unmaximize, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_window_unmaximize(handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1unmaximize, JNI.env, self.jni_id, handle)
      end
      
      typesig { [::Java::Int] }
      def gtk_window_unmaximize(handle)
        self.attr_lock.lock
        begin
          __gtk_window_unmaximize(handle)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GInterfaceInfo.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, GInterfaceInfo, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GInterfaceInfo.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest, src.jni_id, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GObjectClass.jni_name}_2".to_sym, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GObjectClass] }
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GObjectClass.jni_name}_2".to_sym, JNI.env, self.jni_id, dest, src.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GTypeInfo.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, GTypeInfo, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GTypeInfo.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest, src.jni_id, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GtkTargetEntry.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, GtkTargetEntry, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GtkTargetEntry.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest, src.jni_id, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GtkAdjustment.jni_name}_2".to_sym, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GtkAdjustment] }
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GtkAdjustment.jni_name}_2".to_sym, JNI.env, self.jni_id, dest, src.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GdkEventButton.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, GdkEventButton, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GdkEventButton.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest, src.jni_id, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GdkEventExpose.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, GdkEventExpose, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GdkEventExpose.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest, src.jni_id, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GdkEventMotion.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, GdkEventMotion, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GdkEventMotion.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest, src.jni_id, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GtkWidgetClass.jni_name}_2".to_sym, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GtkWidgetClass] }
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GtkWidgetClass.jni_name}_2".to_sym, JNI.env, self.jni_id, dest, src.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{PangoAttribute.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, PangoAttribute, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{PangoAttribute.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest, src.jni_id, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GObjectClass.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32], :void
      typesig { [GObjectClass, ::Java::Int] }
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GObjectClass.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.jni_id, src)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GTypeQuery.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GTypeQuery, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GTypeQuery.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkColorSelectionDialog.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32], :void
      typesig { [GtkColorSelectionDialog, ::Java::Int] }
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkColorSelectionDialog.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.jni_id, src)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkFileSelection.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32], :void
      typesig { [GtkFileSelection, ::Java::Int] }
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkFileSelection.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.jni_id, src)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkDragContext.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkDragContext, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkDragContext.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkSelectionData.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GtkSelectionData, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkSelectionData.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkWidgetClass.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32], :void
      typesig { [GtkWidgetClass, ::Java::Int] }
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkWidgetClass.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.jni_id, src)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkTargetPair.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GtkTargetPair, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkTargetPair.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkCombo.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32], :void
      typesig { [GtkCombo, ::Java::Int] }
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkCombo.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.jni_id, src)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkAdjustment.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32], :void
      typesig { [GtkAdjustment, ::Java::Int] }
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkAdjustment.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.jni_id, src)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkBorder.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GtkBorder, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkBorder.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkColor.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkColor, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkColor.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEvent.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEvent, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEvent.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventAny.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEventAny, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventAny.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventButton.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEventButton, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventButton.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventCrossing.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEventCrossing, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventCrossing.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventExpose.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEventExpose, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventExpose.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventFocus.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEventFocus, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventFocus.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventKey.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEventKey, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventKey.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventMotion.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEventMotion, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventMotion.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventScroll.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEventScroll, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventScroll.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventVisibility.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEventVisibility, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventVisibility.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventWindowState.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEventWindowState, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventWindowState.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GtkCellRendererClass.jni_name}_2".to_sym, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GtkCellRendererClass] }
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GtkCellRendererClass.jni_name}_2".to_sym, JNI.env, self.jni_id, dest, src.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkCellRendererClass.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32], :void
      typesig { [GtkCellRendererClass, ::Java::Int] }
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkCellRendererClass.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.jni_id, src)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkFixed.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32], :void
      typesig { [GtkFixed, ::Java::Int] }
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkFixed.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.jni_id, src)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GtkFixed.jni_name}_2".to_sym, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GtkFixed] }
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GtkFixed.jni_name}_2".to_sym, JNI.env, self.jni_id, dest, src.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkVisual.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32], :void
      typesig { [GdkVisual, ::Java::Int] }
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkVisual.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.jni_id, src)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkImage.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32], :void
      typesig { [GdkImage, ::Java::Int] }
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkImage.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.jni_id, src)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkRectangle.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkRectangle, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkRectangle.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoAttribute.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [PangoAttribute, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoAttribute.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoAttrColor.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [PangoAttrColor, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoAttrColor.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoAttrInt.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [PangoAttrInt, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoAttrInt.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoItem.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [PangoItem, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoItem.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoLayoutLine.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [PangoLayoutLine, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoLayoutLine.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoLayoutRun.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [PangoLayoutRun, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoLayoutRun.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoLogAttr.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [PangoLogAttr, ::Java::Int, ::Java::Int] }
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoLogAttr.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src, size)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1background_1new, [:pointer, :long, :int16, :int16, :int16], :int32
      typesig { [::Java::Short, ::Java::Short, ::Java::Short] }
      def __pango_attr_background_new(red, green, blue)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1background_1new, JNI.env, self.jni_id, red, green, blue)
      end
      
      typesig { [::Java::Short, ::Java::Short, ::Java::Short] }
      def pango_attr_background_new(red, green, blue)
        self.attr_lock.lock
        begin
          return __pango_attr_background_new(red, green, blue)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1font_1desc_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_attr_font_desc_new(desc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1font_1desc_1new, JNI.env, self.jni_id, desc)
      end
      
      typesig { [::Java::Int] }
      def pango_attr_font_desc_new(desc)
        self.attr_lock.lock
        begin
          return __pango_attr_font_desc_new(desc)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1foreground_1new, [:pointer, :long, :int16, :int16, :int16], :int32
      typesig { [::Java::Short, ::Java::Short, ::Java::Short] }
      def __pango_attr_foreground_new(red, green, blue)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1foreground_1new, JNI.env, self.jni_id, red, green, blue)
      end
      
      typesig { [::Java::Short, ::Java::Short, ::Java::Short] }
      def pango_attr_foreground_new(red, green, blue)
        self.attr_lock.lock
        begin
          return __pango_attr_foreground_new(red, green, blue)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1rise_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_attr_rise_new(rise)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1rise_1new, JNI.env, self.jni_id, rise)
      end
      
      typesig { [::Java::Int] }
      def pango_attr_rise_new(rise)
        self.attr_lock.lock
        begin
          return __pango_attr_rise_new(rise)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1shape_1new, [:pointer, :long, :long, :long], :int32
      typesig { [PangoRectangle, PangoRectangle] }
      def __pango_attr_shape_new(ink_rect, logical_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1shape_1new, JNI.env, self.jni_id, ink_rect.jni_id, logical_rect.jni_id)
      end
      
      typesig { [PangoRectangle, PangoRectangle] }
      def pango_attr_shape_new(ink_rect, logical_rect)
        self.attr_lock.lock
        begin
          return __pango_attr_shape_new(ink_rect, logical_rect)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1list_1insert, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_attr_list_insert(list, attr)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1list_1insert, JNI.env, self.jni_id, list, attr)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_attr_list_insert(list, attr)
        self.attr_lock.lock
        begin
          __pango_attr_list_insert(list, attr)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1list_1change, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_attr_list_change(list, attr)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1list_1change, JNI.env, self.jni_id, list, attr)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_attr_list_change(list, attr)
        self.attr_lock.lock
        begin
          __pango_attr_list_change(list, attr)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1list_1get_1iterator, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_attr_list_get_iterator(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1list_1get_1iterator, JNI.env, self.jni_id, list)
      end
      
      typesig { [::Java::Int] }
      def pango_attr_list_get_iterator(list)
        self.attr_lock.lock
        begin
          return __pango_attr_list_get_iterator(list)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1iterator_1next, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __pango_attr_iterator_next(iterator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1iterator_1next, JNI.env, self.jni_id, iterator) != 0
      end
      
      typesig { [::Java::Int] }
      def pango_attr_iterator_next(iterator)
        self.attr_lock.lock
        begin
          return __pango_attr_iterator_next(iterator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1iterator_1range, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __pango_attr_iterator_range(iterator, start, end_)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1iterator_1range, JNI.env, self.jni_id, iterator, start.jni_id, end_.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def pango_attr_iterator_range(iterator, start, end_)
        self.attr_lock.lock
        begin
          __pango_attr_iterator_range(iterator, start, end_)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1iterator_1get, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_attr_iterator_get(iterator, type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1iterator_1get, JNI.env, self.jni_id, iterator, type)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_attr_iterator_get(iterator, type)
        self.attr_lock.lock
        begin
          return __pango_attr_iterator_get(iterator, type)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1iterator_1get_1attrs, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_attr_iterator_get_attrs(iterator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1iterator_1get_1attrs, JNI.env, self.jni_id, iterator)
      end
      
      typesig { [::Java::Int] }
      def pango_attr_iterator_get_attrs(iterator)
        self.attr_lock.lock
        begin
          return __pango_attr_iterator_get_attrs(iterator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1iterator_1destroy, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __pango_attr_iterator_destroy(iterator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1iterator_1destroy, JNI.env, self.jni_id, iterator)
      end
      
      typesig { [::Java::Int] }
      def pango_attr_iterator_destroy(iterator)
        self.attr_lock.lock
        begin
          __pango_attr_iterator_destroy(iterator)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1list_1new, [:pointer, :long], :int32
      typesig { [] }
      def __pango_attr_list_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1list_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def pango_attr_list_new
        self.attr_lock.lock
        begin
          return __pango_attr_list_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1list_1unref, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __pango_attr_list_unref(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1list_1unref, JNI.env, self.jni_id, list)
      end
      
      typesig { [::Java::Int] }
      def pango_attr_list_unref(list)
        self.attr_lock.lock
        begin
          __pango_attr_list_unref(list)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1strikethrough_1color_1new, [:pointer, :long, :int16, :int16, :int16], :int32
      typesig { [::Java::Short, ::Java::Short, ::Java::Short] }
      def __pango_attr_strikethrough_color_new(red, green, blue)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1strikethrough_1color_1new, JNI.env, self.jni_id, red, green, blue)
      end
      
      typesig { [::Java::Short, ::Java::Short, ::Java::Short] }
      def pango_attr_strikethrough_color_new(red, green, blue)
        self.attr_lock.lock
        begin
          return __pango_attr_strikethrough_color_new(red, green, blue)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1strikethrough_1new, [:pointer, :long, :int8], :int32
      typesig { [::Java::Boolean] }
      def __pango_attr_strikethrough_new(strikethrough)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1strikethrough_1new, JNI.env, self.jni_id, strikethrough ? 1 : 0)
      end
      
      typesig { [::Java::Boolean] }
      def pango_attr_strikethrough_new(strikethrough)
        self.attr_lock.lock
        begin
          return __pango_attr_strikethrough_new(strikethrough)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1underline_1color_1new, [:pointer, :long, :int16, :int16, :int16], :int32
      typesig { [::Java::Short, ::Java::Short, ::Java::Short] }
      def __pango_attr_underline_color_new(red, green, blue)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1underline_1color_1new, JNI.env, self.jni_id, red, green, blue)
      end
      
      typesig { [::Java::Short, ::Java::Short, ::Java::Short] }
      def pango_attr_underline_color_new(red, green, blue)
        self.attr_lock.lock
        begin
          return __pango_attr_underline_color_new(red, green, blue)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1underline_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_attr_underline_new(underline)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1underline_1new, JNI.env, self.jni_id, underline)
      end
      
      typesig { [::Java::Int] }
      def pango_attr_underline_new(underline)
        self.attr_lock.lock
        begin
          return __pango_attr_underline_new(underline)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1weight_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_attr_weight_new(weight)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1weight_1new, JNI.env, self.jni_id, weight)
      end
      
      typesig { [::Java::Int] }
      def pango_attr_weight_new(weight)
        self.attr_lock.lock
        begin
          return __pango_attr_weight_new(weight)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1font_1map_1get_1default, [:pointer, :long], :int32
      typesig { [] }
      def __pango_cairo_font_map_get_default
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1font_1map_1get_1default, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def pango_cairo_font_map_get_default
        self.attr_lock.lock
        begin
          return __pango_cairo_font_map_get_default
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1font_1map_1new, [:pointer, :long], :int32
      typesig { [] }
      def __pango_cairo_font_map_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1font_1map_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def pango_cairo_font_map_new
        self.attr_lock.lock
        begin
          return __pango_cairo_font_map_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1font_1map_1create_1context, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_cairo_font_map_create_context(fontmap)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1font_1map_1create_1context, JNI.env, self.jni_id, fontmap)
      end
      
      typesig { [::Java::Int] }
      def pango_cairo_font_map_create_context(fontmap)
        self.attr_lock.lock
        begin
          return __pango_cairo_font_map_create_context(fontmap)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1create_1layout, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_cairo_create_layout(cairo)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1create_1layout, JNI.env, self.jni_id, cairo)
      end
      
      typesig { [::Java::Int] }
      def pango_cairo_create_layout(cairo)
        self.attr_lock.lock
        begin
          return __pango_cairo_create_layout(cairo)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1context_1get_1font_1options, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_cairo_context_get_font_options(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1context_1get_1font_1options, JNI.env, self.jni_id, context)
      end
      
      typesig { [::Java::Int] }
      def pango_cairo_context_get_font_options(context)
        self.attr_lock.lock
        begin
          return __pango_cairo_context_get_font_options(context)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1context_1set_1font_1options, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_cairo_context_set_font_options(context, options)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1context_1set_1font_1options, JNI.env, self.jni_id, context, options)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_cairo_context_set_font_options(context, options)
        self.attr_lock.lock
        begin
          __pango_cairo_context_set_font_options(context, options)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1font_1map_1set_1resolution, [:pointer, :long, :int32, :double], :void
      typesig { [::Java::Int, ::Java::Double] }
      def __pango_cairo_font_map_set_resolution(fontmap, dpi)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1font_1map_1set_1resolution, JNI.env, self.jni_id, fontmap, dpi)
      end
      
      typesig { [::Java::Int, ::Java::Double] }
      def pango_cairo_font_map_set_resolution(fontmap, dpi)
        self.attr_lock.lock
        begin
          __pango_cairo_font_map_set_resolution(fontmap, dpi)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1layout_1path, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_cairo_layout_path(cairo, layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1layout_1path, JNI.env, self.jni_id, cairo, layout)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_cairo_layout_path(cairo, layout)
        self.attr_lock.lock
        begin
          __pango_cairo_layout_path(cairo, layout)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1show_1layout, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_cairo_show_layout(cairo, layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1show_1layout, JNI.env, self.jni_id, cairo, layout)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_cairo_show_layout(cairo, layout)
        self.attr_lock.lock
        begin
          __pango_cairo_show_layout(cairo, layout)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1get_1base_1dir, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_context_get_base_dir(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1get_1base_1dir, JNI.env, self.jni_id, context)
      end
      
      typesig { [::Java::Int] }
      def pango_context_get_base_dir(context)
        self.attr_lock.lock
        begin
          return __pango_context_get_base_dir(context)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1get_1language, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_context_get_language(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1get_1language, JNI.env, self.jni_id, context)
      end
      
      typesig { [::Java::Int] }
      def pango_context_get_language(context)
        self.attr_lock.lock
        begin
          return __pango_context_get_language(context)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1get_1metrics, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __pango_context_get_metrics(context, desc, language)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1get_1metrics, JNI.env, self.jni_id, context, desc, language)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def pango_context_get_metrics(context, desc, language)
        self.attr_lock.lock
        begin
          return __pango_context_get_metrics(context, desc, language)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1list_1families, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __pango_context_list_families(context, families, n_families)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1list_1families, JNI.env, self.jni_id, context, families.jni_id, n_families.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def pango_context_list_families(context, families, n_families)
        self.attr_lock.lock
        begin
          __pango_context_list_families(context, families, n_families)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1set_1base_1dir, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_context_set_base_dir(context, direction)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1set_1base_1dir, JNI.env, self.jni_id, context, direction)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_context_set_base_dir(context, direction)
        self.attr_lock.lock
        begin
          __pango_context_set_base_dir(context, direction)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1set_1language, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_context_set_language(context, language)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1set_1language, JNI.env, self.jni_id, context, language)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_context_set_language(context, language)
        self.attr_lock.lock
        begin
          __pango_context_set_language(context, language)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1copy, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_font_description_copy(desc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1copy, JNI.env, self.jni_id, desc)
      end
      
      typesig { [::Java::Int] }
      def pango_font_description_copy(desc)
        self.attr_lock.lock
        begin
          return __pango_font_description_copy(desc)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __pango_font_description_free(desc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1free, JNI.env, self.jni_id, desc)
      end
      
      typesig { [::Java::Int] }
      def pango_font_description_free(desc)
        self.attr_lock.lock
        begin
          __pango_font_description_free(desc)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1from_1string, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __pango_font_description_from_string(str)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1from_1string, JNI.env, self.jni_id, str.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def pango_font_description_from_string(str)
        self.attr_lock.lock
        begin
          return __pango_font_description_from_string(str)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1get_1family, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_font_description_get_family(desc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1get_1family, JNI.env, self.jni_id, desc)
      end
      
      typesig { [::Java::Int] }
      def pango_font_description_get_family(desc)
        self.attr_lock.lock
        begin
          return __pango_font_description_get_family(desc)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1get_1size, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_font_description_get_size(desc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1get_1size, JNI.env, self.jni_id, desc)
      end
      
      typesig { [::Java::Int] }
      def pango_font_description_get_size(desc)
        self.attr_lock.lock
        begin
          return __pango_font_description_get_size(desc)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1get_1style, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_font_description_get_style(desc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1get_1style, JNI.env, self.jni_id, desc)
      end
      
      typesig { [::Java::Int] }
      def pango_font_description_get_style(desc)
        self.attr_lock.lock
        begin
          return __pango_font_description_get_style(desc)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1get_1weight, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_font_description_get_weight(desc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1get_1weight, JNI.env, self.jni_id, desc)
      end
      
      typesig { [::Java::Int] }
      def pango_font_description_get_weight(desc)
        self.attr_lock.lock
        begin
          return __pango_font_description_get_weight(desc)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1new, [:pointer, :long], :int32
      typesig { [] }
      def __pango_font_description_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def pango_font_description_new
        self.attr_lock.lock
        begin
          return __pango_font_description_new
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1set_1family, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def __pango_font_description_set_family(desc, family)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1set_1family, JNI.env, self.jni_id, desc, family.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      def pango_font_description_set_family(desc, family)
        self.attr_lock.lock
        begin
          __pango_font_description_set_family(desc, family)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1set_1size, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_font_description_set_size(desc, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1set_1size, JNI.env, self.jni_id, desc, size)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_font_description_set_size(desc, size)
        self.attr_lock.lock
        begin
          __pango_font_description_set_size(desc, size)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1set_1stretch, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_font_description_set_stretch(desc, stretch)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1set_1stretch, JNI.env, self.jni_id, desc, stretch)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_font_description_set_stretch(desc, stretch)
        self.attr_lock.lock
        begin
          __pango_font_description_set_stretch(desc, stretch)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1set_1style, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_font_description_set_style(desc, weight)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1set_1style, JNI.env, self.jni_id, desc, weight)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_font_description_set_style(desc, weight)
        self.attr_lock.lock
        begin
          __pango_font_description_set_style(desc, weight)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1set_1weight, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_font_description_set_weight(desc, weight)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1set_1weight, JNI.env, self.jni_id, desc, weight)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_font_description_set_weight(desc, weight)
        self.attr_lock.lock
        begin
          __pango_font_description_set_weight(desc, weight)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1to_1string, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_font_description_to_string(desc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1to_1string, JNI.env, self.jni_id, desc)
      end
      
      typesig { [::Java::Int] }
      def pango_font_description_to_string(desc)
        self.attr_lock.lock
        begin
          return __pango_font_description_to_string(desc)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1face_1describe, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_font_face_describe(face)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1face_1describe, JNI.env, self.jni_id, face)
      end
      
      typesig { [::Java::Int] }
      def pango_font_face_describe(face)
        self.attr_lock.lock
        begin
          return __pango_font_face_describe(face)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1family_1get_1name, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_font_family_get_name(family)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1family_1get_1name, JNI.env, self.jni_id, family)
      end
      
      typesig { [::Java::Int] }
      def pango_font_family_get_name(family)
        self.attr_lock.lock
        begin
          return __pango_font_family_get_name(family)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1family_1list_1faces, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __pango_font_family_list_faces(family, faces, n_faces)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1family_1list_1faces, JNI.env, self.jni_id, family, faces.jni_id, n_faces.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def pango_font_family_list_faces(family, faces, n_faces)
        self.attr_lock.lock
        begin
          __pango_font_family_list_faces(family, faces, n_faces)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1get_1metrics, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_font_get_metrics(font, language)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1get_1metrics, JNI.env, self.jni_id, font, language)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_font_get_metrics(font, language)
        self.attr_lock.lock
        begin
          return __pango_font_get_metrics(font, language)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1approximate_1char_1width, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_font_metrics_get_approximate_char_width(metrics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1approximate_1char_1width, JNI.env, self.jni_id, metrics)
      end
      
      typesig { [::Java::Int] }
      def pango_font_metrics_get_approximate_char_width(metrics)
        self.attr_lock.lock
        begin
          return __pango_font_metrics_get_approximate_char_width(metrics)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1ascent, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_font_metrics_get_ascent(metrics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1ascent, JNI.env, self.jni_id, metrics)
      end
      
      typesig { [::Java::Int] }
      def pango_font_metrics_get_ascent(metrics)
        self.attr_lock.lock
        begin
          return __pango_font_metrics_get_ascent(metrics)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1descent, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_font_metrics_get_descent(metrics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1descent, JNI.env, self.jni_id, metrics)
      end
      
      typesig { [::Java::Int] }
      def pango_font_metrics_get_descent(metrics)
        self.attr_lock.lock
        begin
          return __pango_font_metrics_get_descent(metrics)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1underline_1thickness, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_font_metrics_get_underline_thickness(metrics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1underline_1thickness, JNI.env, self.jni_id, metrics)
      end
      
      typesig { [::Java::Int] }
      def pango_font_metrics_get_underline_thickness(metrics)
        self.attr_lock.lock
        begin
          return __pango_font_metrics_get_underline_thickness(metrics)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1underline_1position, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_font_metrics_get_underline_position(metrics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1underline_1position, JNI.env, self.jni_id, metrics)
      end
      
      typesig { [::Java::Int] }
      def pango_font_metrics_get_underline_position(metrics)
        self.attr_lock.lock
        begin
          return __pango_font_metrics_get_underline_position(metrics)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1strikethrough_1thickness, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_font_metrics_get_strikethrough_thickness(metrics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1strikethrough_1thickness, JNI.env, self.jni_id, metrics)
      end
      
      typesig { [::Java::Int] }
      def pango_font_metrics_get_strikethrough_thickness(metrics)
        self.attr_lock.lock
        begin
          return __pango_font_metrics_get_strikethrough_thickness(metrics)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1strikethrough_1position, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_font_metrics_get_strikethrough_position(metrics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1strikethrough_1position, JNI.env, self.jni_id, metrics)
      end
      
      typesig { [::Java::Int] }
      def pango_font_metrics_get_strikethrough_position(metrics)
        self.attr_lock.lock
        begin
          return __pango_font_metrics_get_strikethrough_position(metrics)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1unref, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __pango_font_metrics_unref(metrics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1unref, JNI.env, self.jni_id, metrics)
      end
      
      typesig { [::Java::Int] }
      def pango_font_metrics_unref(metrics)
        self.attr_lock.lock
        begin
          __pango_font_metrics_unref(metrics)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1language_1from_1string, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __pango_language_from_string(language)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1language_1from_1string, JNI.env, self.jni_id, language.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def pango_language_from_string(language)
        self.attr_lock.lock
        begin
          return __pango_language_from_string(language)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1context_1changed, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __pango_layout_context_changed(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1context_1changed, JNI.env, self.jni_id, layout)
      end
      
      typesig { [::Java::Int] }
      def pango_layout_context_changed(layout)
        self.attr_lock.lock
        begin
          __pango_layout_context_changed(layout)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1alignment, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_layout_get_alignment(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1alignment, JNI.env, self.jni_id, layout)
      end
      
      typesig { [::Java::Int] }
      def pango_layout_get_alignment(layout)
        self.attr_lock.lock
        begin
          return __pango_layout_get_alignment(layout)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1context, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_layout_get_context(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1context, JNI.env, self.jni_id, layout)
      end
      
      typesig { [::Java::Int] }
      def pango_layout_get_context(layout)
        self.attr_lock.lock
        begin
          return __pango_layout_get_context(layout)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1attributes, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_layout_get_attributes(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1attributes, JNI.env, self.jni_id, layout)
      end
      
      typesig { [::Java::Int] }
      def pango_layout_get_attributes(layout)
        self.attr_lock.lock
        begin
          return __pango_layout_get_attributes(layout)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1indent, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_layout_get_indent(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1indent, JNI.env, self.jni_id, layout)
      end
      
      typesig { [::Java::Int] }
      def pango_layout_get_indent(layout)
        self.attr_lock.lock
        begin
          return __pango_layout_get_indent(layout)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1iter, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_layout_get_iter(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1iter, JNI.env, self.jni_id, layout)
      end
      
      typesig { [::Java::Int] }
      def pango_layout_get_iter(layout)
        self.attr_lock.lock
        begin
          return __pango_layout_get_iter(layout)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1justify, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __pango_layout_get_justify(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1justify, JNI.env, self.jni_id, layout) != 0
      end
      
      typesig { [::Java::Int] }
      def pango_layout_get_justify(layout)
        self.attr_lock.lock
        begin
          return __pango_layout_get_justify(layout)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1line, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_layout_get_line(layout, line)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1line, JNI.env, self.jni_id, layout, line)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_layout_get_line(layout, line)
        self.attr_lock.lock
        begin
          return __pango_layout_get_line(layout, line)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1line_1count, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_layout_get_line_count(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1line_1count, JNI.env, self.jni_id, layout)
      end
      
      typesig { [::Java::Int] }
      def pango_layout_get_line_count(layout)
        self.attr_lock.lock
        begin
          return __pango_layout_get_line_count(layout)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1log_1attrs, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __pango_layout_get_log_attrs(layout, attrs, n_attrs)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1log_1attrs, JNI.env, self.jni_id, layout, attrs.jni_id, n_attrs.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def pango_layout_get_log_attrs(layout, attrs, n_attrs)
        self.attr_lock.lock
        begin
          __pango_layout_get_log_attrs(layout, attrs, n_attrs)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1size, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __pango_layout_get_size(layout, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1size, JNI.env, self.jni_id, layout, width.jni_id, height.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def pango_layout_get_size(layout, width, height)
        self.attr_lock.lock
        begin
          __pango_layout_get_size(layout, width, height)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1spacing, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_layout_get_spacing(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1spacing, JNI.env, self.jni_id, layout)
      end
      
      typesig { [::Java::Int] }
      def pango_layout_get_spacing(layout)
        self.attr_lock.lock
        begin
          return __pango_layout_get_spacing(layout)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1tabs, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_layout_get_tabs(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1tabs, JNI.env, self.jni_id, layout)
      end
      
      typesig { [::Java::Int] }
      def pango_layout_get_tabs(layout)
        self.attr_lock.lock
        begin
          return __pango_layout_get_tabs(layout)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1text, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_layout_get_text(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1text, JNI.env, self.jni_id, layout)
      end
      
      typesig { [::Java::Int] }
      def pango_layout_get_text(layout)
        self.attr_lock.lock
        begin
          return __pango_layout_get_text(layout)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1width, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_layout_get_width(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1width, JNI.env, self.jni_id, layout)
      end
      
      typesig { [::Java::Int] }
      def pango_layout_get_width(layout)
        self.attr_lock.lock
        begin
          return __pango_layout_get_width(layout)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1index_1to_1pos, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, PangoRectangle] }
      def __pango_layout_index_to_pos(layout, index, pos)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1index_1to_1pos, JNI.env, self.jni_id, layout, index, pos.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, PangoRectangle] }
      def pango_layout_index_to_pos(layout, index, pos)
        self.attr_lock.lock
        begin
          __pango_layout_index_to_pos(layout, index, pos)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __pango_layout_iter_free(iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1free, JNI.env, self.jni_id, iter)
      end
      
      typesig { [::Java::Int] }
      def pango_layout_iter_free(iter)
        self.attr_lock.lock
        begin
          __pango_layout_iter_free(iter)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1get_1line_1extents, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, PangoRectangle, PangoRectangle] }
      def __pango_layout_iter_get_line_extents(iter, ink_rect, logical_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1get_1line_1extents, JNI.env, self.jni_id, iter, ink_rect.jni_id, logical_rect.jni_id)
      end
      
      typesig { [::Java::Int, PangoRectangle, PangoRectangle] }
      def pango_layout_iter_get_line_extents(iter, ink_rect, logical_rect)
        self.attr_lock.lock
        begin
          __pango_layout_iter_get_line_extents(iter, ink_rect, logical_rect)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1get_1index, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_layout_iter_get_index(iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1get_1index, JNI.env, self.jni_id, iter)
      end
      
      typesig { [::Java::Int] }
      def pango_layout_iter_get_index(iter)
        self.attr_lock.lock
        begin
          return __pango_layout_iter_get_index(iter)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1get_1run, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_layout_iter_get_run(iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1get_1run, JNI.env, self.jni_id, iter)
      end
      
      typesig { [::Java::Int] }
      def pango_layout_iter_get_run(iter)
        self.attr_lock.lock
        begin
          return __pango_layout_iter_get_run(iter)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1next_1line, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __pango_layout_iter_next_line(iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1next_1line, JNI.env, self.jni_id, iter) != 0
      end
      
      typesig { [::Java::Int] }
      def pango_layout_iter_next_line(iter)
        self.attr_lock.lock
        begin
          return __pango_layout_iter_next_line(iter)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1next_1run, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      def __pango_layout_iter_next_run(iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1next_1run, JNI.env, self.jni_id, iter) != 0
      end
      
      typesig { [::Java::Int] }
      def pango_layout_iter_next_run(iter)
        self.attr_lock.lock
        begin
          return __pango_layout_iter_next_run(iter)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1line_1get_1extents, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, PangoRectangle, PangoRectangle] }
      def __pango_layout_line_get_extents(line, ink_rect, logical_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1line_1get_1extents, JNI.env, self.jni_id, line, ink_rect.jni_id, logical_rect.jni_id)
      end
      
      typesig { [::Java::Int, PangoRectangle, PangoRectangle] }
      def pango_layout_line_get_extents(line, ink_rect, logical_rect)
        self.attr_lock.lock
        begin
          __pango_layout_line_get_extents(line, ink_rect, logical_rect)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1line_1x_1to_1index, [:pointer, :long, :int32, :int32, :long, :long], :int8
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __pango_layout_line_x_to_index(line, x_pos, index_, trailing)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1line_1x_1to_1index, JNI.env, self.jni_id, line, x_pos, index_.jni_id, trailing.jni_id) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def pango_layout_line_x_to_index(line, x_pos, index_, trailing)
        self.attr_lock.lock
        begin
          return __pango_layout_line_x_to_index(line, x_pos, index_, trailing)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1line_1get_1resolved_1dir, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_layout_line_get_resolved_dir(line)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1line_1get_1resolved_1dir, JNI.env, self.jni_id, line)
      end
      
      typesig { [::Java::Int] }
      def pango_layout_line_get_resolved_dir(line)
        self.attr_lock.lock
        begin
          return __pango_layout_line_get_resolved_dir(line)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_layout_new(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1new, JNI.env, self.jni_id, context)
      end
      
      typesig { [::Java::Int] }
      def pango_layout_new(context)
        self.attr_lock.lock
        begin
          return __pango_layout_new(context)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1alignment, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_layout_set_alignment(layout, alignment)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1alignment, JNI.env, self.jni_id, layout, alignment)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_layout_set_alignment(layout, alignment)
        self.attr_lock.lock
        begin
          __pango_layout_set_alignment(layout, alignment)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1attributes, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_layout_set_attributes(layout, attrs)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1attributes, JNI.env, self.jni_id, layout, attrs)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_layout_set_attributes(layout, attrs)
        self.attr_lock.lock
        begin
          __pango_layout_set_attributes(layout, attrs)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1auto_1dir, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __pango_layout_set_auto_dir(layout, auto_dir)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1auto_1dir, JNI.env, self.jni_id, layout, auto_dir ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def pango_layout_set_auto_dir(layout, auto_dir)
        self.attr_lock.lock
        begin
          __pango_layout_set_auto_dir(layout, auto_dir)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1font_1description, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_layout_set_font_description(context, descr)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1font_1description, JNI.env, self.jni_id, context, descr)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_layout_set_font_description(context, descr)
        self.attr_lock.lock
        begin
          __pango_layout_set_font_description(context, descr)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1indent, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_layout_set_indent(layout, indent)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1indent, JNI.env, self.jni_id, layout, indent)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_layout_set_indent(layout, indent)
        self.attr_lock.lock
        begin
          __pango_layout_set_indent(layout, indent)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1justify, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __pango_layout_set_justify(layout, justify)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1justify, JNI.env, self.jni_id, layout, justify ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def pango_layout_set_justify(layout, justify)
        self.attr_lock.lock
        begin
          __pango_layout_set_justify(layout, justify)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1single_1paragraph_1mode, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      def __pango_layout_set_single_paragraph_mode(context, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1single_1paragraph_1mode, JNI.env, self.jni_id, context, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def pango_layout_set_single_paragraph_mode(context, setting)
        self.attr_lock.lock
        begin
          __pango_layout_set_single_paragraph_mode(context, setting)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1spacing, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_layout_set_spacing(layout, spacing)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1spacing, JNI.env, self.jni_id, layout, spacing)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_layout_set_spacing(layout, spacing)
        self.attr_lock.lock
        begin
          __pango_layout_set_spacing(layout, spacing)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1tabs, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_layout_set_tabs(layout, tabs)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1tabs, JNI.env, self.jni_id, layout, tabs)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_layout_set_tabs(layout, tabs)
        self.attr_lock.lock
        begin
          __pango_layout_set_tabs(layout, tabs)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1text, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def __pango_layout_set_text(layout, text, length_)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1text, JNI.env, self.jni_id, layout, text.jni_id, length_)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def pango_layout_set_text(layout, text, length_)
        self.attr_lock.lock
        begin
          __pango_layout_set_text(layout, text, length_)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1width, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_layout_set_width(layout, width)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1width, JNI.env, self.jni_id, layout, width)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_layout_set_width(layout, width)
        self.attr_lock.lock
        begin
          __pango_layout_set_width(layout, width)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1wrap, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      def __pango_layout_set_wrap(layout, wrap)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1wrap, JNI.env, self.jni_id, layout, wrap)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def pango_layout_set_wrap(layout, wrap)
        self.attr_lock.lock
        begin
          __pango_layout_set_wrap(layout, wrap)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1xy_1to_1index, [:pointer, :long, :int32, :int32, :int32, :long, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __pango_layout_xy_to_index(layout, x, y, index, trailing)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1xy_1to_1index, JNI.env, self.jni_id, layout, x, y, index.jni_id, trailing.jni_id) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def pango_layout_xy_to_index(layout, x, y, index, trailing)
        self.attr_lock.lock
        begin
          return __pango_layout_xy_to_index(layout, x, y, index, trailing)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1tab_1array_1get_1size, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __pango_tab_array_get_size(tab_array)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1tab_1array_1get_1size, JNI.env, self.jni_id, tab_array)
      end
      
      typesig { [::Java::Int] }
      def pango_tab_array_get_size(tab_array)
        self.attr_lock.lock
        begin
          return __pango_tab_array_get_size(tab_array)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1tab_1array_1get_1tabs, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def __pango_tab_array_get_tabs(tab_array, alignments, locations)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1tab_1array_1get_1tabs, JNI.env, self.jni_id, tab_array, alignments.jni_id, locations.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      def pango_tab_array_get_tabs(tab_array, alignments, locations)
        self.attr_lock.lock
        begin
          __pango_tab_array_get_tabs(tab_array, alignments, locations)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1tab_1array_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __pango_tab_array_free(tab_array)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1tab_1array_1free, JNI.env, self.jni_id, tab_array)
      end
      
      typesig { [::Java::Int] }
      def pango_tab_array_free(tab_array)
        self.attr_lock.lock
        begin
          __pango_tab_array_free(tab_array)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1tab_1array_1new, [:pointer, :long, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean] }
      def __pango_tab_array_new(initial_size, positions_in_pixels)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1tab_1array_1new, JNI.env, self.jni_id, initial_size, positions_in_pixels ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      def pango_tab_array_new(initial_size, positions_in_pixels)
        self.attr_lock.lock
        begin
          return __pango_tab_array_new(initial_size, positions_in_pixels)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1tab_1array_1set_1tab, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def __pango_tab_array_set_tab(tab_array, tab_index, alignment, location)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1tab_1array_1set_1tab, JNI.env, self.jni_id, tab_array, tab_index, alignment, location)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def pango_tab_array_set_tab(tab_array, tab_index, alignment, location)
        self.attr_lock.lock
        begin
          __pango_tab_array_set_tab(tab_array, tab_index, alignment, location)
        ensure
          self.attr_lock.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1atk_1object_1add_1relationship, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def __atk_object_add_relationship(object, relationship, target)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1atk_1object_1add_1relationship, JNI.env, self.jni_id, object, relationship, target) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def atk_object_add_relationship(object, relationship, target)
        self.attr_lock.lock
        begin
          return __atk_object_add_relationship(object, relationship, target)
        ensure
          self.attr_lock.unlock
        end
      end
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    alias_method :initialize__os, :initialize
  end
  
end
