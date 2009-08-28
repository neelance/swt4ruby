require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others. All rights reserved.
# The contents of this file are made available under the terms
# of the GNU Lesser General Public License (LGPL) Version 2.1 that
# accompanies this distribution (lgpl-v21.txt).  The LGPL is also
# available at http://www.gnu.org/licenses/lgpl.html.  If the version
# of the LGPL at http://www.gnu.org is different to the version of
# the LGPL accompanying this distribution and there is any conflict
# between the two license versions, the terms of the LGPL accompanying
# this distribution shall govern.
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Gtk
  module OSImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Internal
    }
  end
  
  class OS < OSImports.const_get :C
    include_class_members OSImports
    
    class_module.module_eval {
      when_class_loaded do
        Library.load_library("swt-pi")
      end
      
      when_class_loaded do
        # Initialize the OS flags and locale constants
        os_name = System.get_property("os.name")
        is_aix = false
        is_sun_os = false
        is_linux = false
        is_hpux = false
        if ((os_name == "Linux"))
          is_linux = true
        end
        if ((os_name == "AIX"))
          is_aix = true
        end
        if ((os_name == "Solaris"))
          is_sun_os = true
        end
        if ((os_name == "SunOS"))
          is_sun_os = true
        end
        if ((os_name == "HP-UX"))
          is_hpux = true
        end
        const_set :IsAIX, is_aix
        const_set :IsSunOS, is_sun_os
        const_set :IsLinux, is_linux
        const_set :IsHPUX, is_hpux
      end
      
      # Constants
      const_set_lazy(:ATK_RELATION_LABELLED_BY) { 4 }
      const_attr_reader  :ATK_RELATION_LABELLED_BY
      
      const_set_lazy(:G_SIGNAL_MATCH_DATA) { 1 << 4 }
      const_attr_reader  :G_SIGNAL_MATCH_DATA
      
      const_set_lazy(:G_SIGNAL_MATCH_ID) { 1 << 0 }
      const_attr_reader  :G_SIGNAL_MATCH_ID
      
      const_set_lazy(:GDK_2BUTTON_PRESS) { 0x5 }
      const_attr_reader  :GDK_2BUTTON_PRESS
      
      const_set_lazy(:GDK_3BUTTON_PRESS) { 0x6 }
      const_attr_reader  :GDK_3BUTTON_PRESS
      
      const_set_lazy(:GDK_ACTION_COPY) { 1 << 1 }
      const_attr_reader  :GDK_ACTION_COPY
      
      const_set_lazy(:GDK_ACTION_MOVE) { 1 << 2 }
      const_attr_reader  :GDK_ACTION_MOVE
      
      const_set_lazy(:GDK_ACTION_LINK) { 1 << 3 }
      const_attr_reader  :GDK_ACTION_LINK
      
      const_set_lazy(:GDK_Alt_L) { 0xffe9 }
      const_attr_reader  :GDK_Alt_L
      
      const_set_lazy(:GDK_Alt_R) { 0xffea }
      const_attr_reader  :GDK_Alt_R
      
      const_set_lazy(:GDK_AND) { 4 }
      const_attr_reader  :GDK_AND
      
      const_set_lazy(:GDK_BackSpace) { 0xff08 }
      const_attr_reader  :GDK_BackSpace
      
      const_set_lazy(:GDK_BOTTOM_LEFT_CORNER) { 0xc }
      const_attr_reader  :GDK_BOTTOM_LEFT_CORNER
      
      const_set_lazy(:GDK_BOTTOM_RIGHT_CORNER) { 0xe }
      const_attr_reader  :GDK_BOTTOM_RIGHT_CORNER
      
      const_set_lazy(:GDK_BOTTOM_SIDE) { 0x10 }
      const_attr_reader  :GDK_BOTTOM_SIDE
      
      const_set_lazy(:GDK_BUTTON1_MASK) { 0x100 }
      const_attr_reader  :GDK_BUTTON1_MASK
      
      const_set_lazy(:GDK_BUTTON2_MASK) { 0x200 }
      const_attr_reader  :GDK_BUTTON2_MASK
      
      const_set_lazy(:GDK_BUTTON3_MASK) { 0x400 }
      const_attr_reader  :GDK_BUTTON3_MASK
      
      const_set_lazy(:GDK_BUTTON_MOTION_MASK) { 1 << 4 }
      const_attr_reader  :GDK_BUTTON_MOTION_MASK
      
      const_set_lazy(:GDK_BUTTON1_MOTION_MASK) { 1 << 5 }
      const_attr_reader  :GDK_BUTTON1_MOTION_MASK
      
      const_set_lazy(:GDK_BUTTON2_MOTION_MASK) { 1 << 6 }
      const_attr_reader  :GDK_BUTTON2_MOTION_MASK
      
      const_set_lazy(:GDK_BUTTON3_MOTION_MASK) { 1 << 7 }
      const_attr_reader  :GDK_BUTTON3_MOTION_MASK
      
      const_set_lazy(:GDK_BUTTON_PRESS) { 0x4 }
      const_attr_reader  :GDK_BUTTON_PRESS
      
      const_set_lazy(:GDK_BUTTON_PRESS_MASK) { 0x100 }
      const_attr_reader  :GDK_BUTTON_PRESS_MASK
      
      const_set_lazy(:GDK_BUTTON_RELEASE) { 0x7 }
      const_attr_reader  :GDK_BUTTON_RELEASE
      
      const_set_lazy(:GDK_BUTTON_RELEASE_MASK) { 0x200 }
      const_attr_reader  :GDK_BUTTON_RELEASE_MASK
      
      const_set_lazy(:GDK_CAP_BUTT) { 0x1 }
      const_attr_reader  :GDK_CAP_BUTT
      
      const_set_lazy(:GDK_CAP_PROJECTING) { 3 }
      const_attr_reader  :GDK_CAP_PROJECTING
      
      const_set_lazy(:GDK_CAP_ROUND) { 0x2 }
      const_attr_reader  :GDK_CAP_ROUND
      
      const_set_lazy(:GDK_COLORSPACE_RGB) { 0 }
      const_attr_reader  :GDK_COLORSPACE_RGB
      
      const_set_lazy(:GDK_CONFIGURE) { 13 }
      const_attr_reader  :GDK_CONFIGURE
      
      const_set_lazy(:GDK_CONTROL_MASK) { 0x4 }
      const_attr_reader  :GDK_CONTROL_MASK
      
      const_set_lazy(:GDK_COPY) { 0x0 }
      const_attr_reader  :GDK_COPY
      
      const_set_lazy(:GDK_CROSS) { 0x1e }
      const_attr_reader  :GDK_CROSS
      
      const_set_lazy(:GDK_CROSSING_NORMAL) { 0 }
      const_attr_reader  :GDK_CROSSING_NORMAL
      
      const_set_lazy(:GDK_CROSSING_GRAB) { 1 }
      const_attr_reader  :GDK_CROSSING_GRAB
      
      const_set_lazy(:GDK_CROSSING_UNGRAB) { 2 }
      const_attr_reader  :GDK_CROSSING_UNGRAB
      
      const_set_lazy(:GDK_Break) { 0xff6b }
      const_attr_reader  :GDK_Break
      
      const_set_lazy(:GDK_Cancel) { 0xff69 }
      const_attr_reader  :GDK_Cancel
      
      const_set_lazy(:GDK_Caps_Lock) { 0xffe5 }
      const_attr_reader  :GDK_Caps_Lock
      
      const_set_lazy(:GDK_Clear) { 0xff0b }
      const_attr_reader  :GDK_Clear
      
      const_set_lazy(:GDK_Control_L) { 0xffe3 }
      const_attr_reader  :GDK_Control_L
      
      const_set_lazy(:GDK_Control_R) { 0xffe4 }
      const_attr_reader  :GDK_Control_R
      
      const_set_lazy(:GDK_CURRENT_TIME) { 0x0 }
      const_attr_reader  :GDK_CURRENT_TIME
      
      const_set_lazy(:GDK_DECOR_BORDER) { 0x2 }
      const_attr_reader  :GDK_DECOR_BORDER
      
      const_set_lazy(:GDK_DECOR_MAXIMIZE) { 0x40 }
      const_attr_reader  :GDK_DECOR_MAXIMIZE
      
      const_set_lazy(:GDK_DECOR_MENU) { 0x10 }
      const_attr_reader  :GDK_DECOR_MENU
      
      const_set_lazy(:GDK_DECOR_MINIMIZE) { 0x20 }
      const_attr_reader  :GDK_DECOR_MINIMIZE
      
      const_set_lazy(:GDK_DECOR_RESIZEH) { 0x4 }
      const_attr_reader  :GDK_DECOR_RESIZEH
      
      const_set_lazy(:GDK_DECOR_TITLE) { 0x8 }
      const_attr_reader  :GDK_DECOR_TITLE
      
      const_set_lazy(:GDK_DOUBLE_ARROW) { 0x2a }
      const_attr_reader  :GDK_DOUBLE_ARROW
      
      const_set_lazy(:GDK_Delete) { 0xffff }
      const_attr_reader  :GDK_Delete
      
      const_set_lazy(:GDK_Down) { 0xff54 }
      const_attr_reader  :GDK_Down
      
      const_set_lazy(:GDK_ENTER_NOTIFY_MASK) { 0x1000 }
      const_attr_reader  :GDK_ENTER_NOTIFY_MASK
      
      const_set_lazy(:GDK_ENTER_NOTIFY) { 10 }
      const_attr_reader  :GDK_ENTER_NOTIFY
      
      const_set_lazy(:GDK_EVEN_ODD_RULE) { 0 }
      const_attr_reader  :GDK_EVEN_ODD_RULE
      
      const_set_lazy(:GTK_EXPANDER_COLAPSED) { 0 }
      const_attr_reader  :GTK_EXPANDER_COLAPSED
      
      const_set_lazy(:GTK_EXPANDER_SEMI_COLLAPSED) { 1 }
      const_attr_reader  :GTK_EXPANDER_SEMI_COLLAPSED
      
      const_set_lazy(:GTK_EXPANDER_SEMI_EXPANDED) { 2 }
      const_attr_reader  :GTK_EXPANDER_SEMI_EXPANDED
      
      const_set_lazy(:GTK_EXPANDER_EXPANDED) { 3 }
      const_attr_reader  :GTK_EXPANDER_EXPANDED
      
      const_set_lazy(:GDK_EXPOSE) { 2 }
      const_attr_reader  :GDK_EXPOSE
      
      const_set_lazy(:GDK_EXPOSURE_MASK) { 0x2 }
      const_attr_reader  :GDK_EXPOSURE_MASK
      
      const_set_lazy(:GDK_End) { 0xff57 }
      const_attr_reader  :GDK_End
      
      const_set_lazy(:GDK_Escape) { 0xff1b }
      const_attr_reader  :GDK_Escape
      
      const_set_lazy(:GDK_F1) { 0xffbe }
      const_attr_reader  :GDK_F1
      
      const_set_lazy(:GDK_F10) { 0xffc7 }
      const_attr_reader  :GDK_F10
      
      const_set_lazy(:GDK_F11) { 0xffc8 }
      const_attr_reader  :GDK_F11
      
      const_set_lazy(:GDK_F12) { 0xffc9 }
      const_attr_reader  :GDK_F12
      
      const_set_lazy(:GDK_F13) { 0xffca }
      const_attr_reader  :GDK_F13
      
      const_set_lazy(:GDK_F14) { 0xffcb }
      const_attr_reader  :GDK_F14
      
      const_set_lazy(:GDK_F15) { 0xffcc }
      const_attr_reader  :GDK_F15
      
      const_set_lazy(:GDK_F2) { 0xffbf }
      const_attr_reader  :GDK_F2
      
      const_set_lazy(:GDK_F3) { 0xffc0 }
      const_attr_reader  :GDK_F3
      
      const_set_lazy(:GDK_F4) { 0xffc1 }
      const_attr_reader  :GDK_F4
      
      const_set_lazy(:GDK_F5) { 0xffc2 }
      const_attr_reader  :GDK_F5
      
      const_set_lazy(:GDK_F6) { 0xffc3 }
      const_attr_reader  :GDK_F6
      
      const_set_lazy(:GDK_F7) { 0xffc4 }
      const_attr_reader  :GDK_F7
      
      const_set_lazy(:GDK_F8) { 0xffc5 }
      const_attr_reader  :GDK_F8
      
      const_set_lazy(:GDK_F9) { 0xffc6 }
      const_attr_reader  :GDK_F9
      
      const_set_lazy(:GDK_FLEUR) { 0x34 }
      const_attr_reader  :GDK_FLEUR
      
      const_set_lazy(:GDK_FOCUS_CHANGE) { 0xc }
      const_attr_reader  :GDK_FOCUS_CHANGE
      
      const_set_lazy(:GDK_FOCUS_CHANGE_MASK) { 0x4000 }
      const_attr_reader  :GDK_FOCUS_CHANGE_MASK
      
      const_set_lazy(:GDK_GC_FOREGROUND) { 0x1 }
      const_attr_reader  :GDK_GC_FOREGROUND
      
      const_set_lazy(:GDK_GC_CLIP_MASK) { 0x80 }
      const_attr_reader  :GDK_GC_CLIP_MASK
      
      const_set_lazy(:GDK_GC_CLIP_X_ORIGIN) { 0x800 }
      const_attr_reader  :GDK_GC_CLIP_X_ORIGIN
      
      const_set_lazy(:GDK_GC_CLIP_Y_ORIGIN) { 0x1000 }
      const_attr_reader  :GDK_GC_CLIP_Y_ORIGIN
      
      const_set_lazy(:GDK_GC_LINE_WIDTH) { 0x4000 }
      const_attr_reader  :GDK_GC_LINE_WIDTH
      
      const_set_lazy(:GDK_GC_LINE_STYLE) { 0x8000 }
      const_attr_reader  :GDK_GC_LINE_STYLE
      
      const_set_lazy(:GDK_GC_CAP_STYLE) { 0x10000 }
      const_attr_reader  :GDK_GC_CAP_STYLE
      
      const_set_lazy(:GDK_GC_JOIN_STYLE) { 0x20000 }
      const_attr_reader  :GDK_GC_JOIN_STYLE
      
      const_set_lazy(:GDK_GRAB_SUCCESS) { 0x0 }
      const_attr_reader  :GDK_GRAB_SUCCESS
      
      const_set_lazy(:GDK_HAND2) { 0x3c }
      const_attr_reader  :GDK_HAND2
      
      const_set_lazy(:GDK_Help) { 0xff6a }
      const_attr_reader  :GDK_Help
      
      const_set_lazy(:GDK_HINT_MIN_SIZE) { 1 << 1 }
      const_attr_reader  :GDK_HINT_MIN_SIZE
      
      const_set_lazy(:GDK_Home) { 0xff50 }
      const_attr_reader  :GDK_Home
      
      const_set_lazy(:GDK_INCLUDE_INFERIORS) { 0x1 }
      const_attr_reader  :GDK_INCLUDE_INFERIORS
      
      const_set_lazy(:GDK_INPUT_ONLY) { 1 }
      const_attr_reader  :GDK_INPUT_ONLY
      
      const_set_lazy(:GDK_INTERP_BILINEAR) { 0x2 }
      const_attr_reader  :GDK_INTERP_BILINEAR
      
      const_set_lazy(:GDK_Insert) { 0xff63 }
      const_attr_reader  :GDK_Insert
      
      const_set_lazy(:GDK_ISO_Left_Tab) { 0xfe20 }
      const_attr_reader  :GDK_ISO_Left_Tab
      
      const_set_lazy(:GDK_JOIN_MITER) { 0x0 }
      const_attr_reader  :GDK_JOIN_MITER
      
      const_set_lazy(:GDK_JOIN_ROUND) { 0x1 }
      const_attr_reader  :GDK_JOIN_ROUND
      
      const_set_lazy(:GDK_JOIN_BEVEL) { 0x2 }
      const_attr_reader  :GDK_JOIN_BEVEL
      
      const_set_lazy(:GDK_KEY_PRESS) { 0x8 }
      const_attr_reader  :GDK_KEY_PRESS
      
      const_set_lazy(:GDK_KEY_PRESS_MASK) { 0x400 }
      const_attr_reader  :GDK_KEY_PRESS_MASK
      
      const_set_lazy(:GDK_KEY_RELEASE) { 0x9 }
      const_attr_reader  :GDK_KEY_RELEASE
      
      const_set_lazy(:GDK_KEY_RELEASE_MASK) { 0x800 }
      const_attr_reader  :GDK_KEY_RELEASE_MASK
      
      const_set_lazy(:GDK_KP_0) { 0xffb0 }
      const_attr_reader  :GDK_KP_0
      
      const_set_lazy(:GDK_KP_1) { 0xffb1 }
      const_attr_reader  :GDK_KP_1
      
      const_set_lazy(:GDK_KP_2) { 0xffb2 }
      const_attr_reader  :GDK_KP_2
      
      const_set_lazy(:GDK_KP_3) { 0xffb3 }
      const_attr_reader  :GDK_KP_3
      
      const_set_lazy(:GDK_KP_4) { 0xffb4 }
      const_attr_reader  :GDK_KP_4
      
      const_set_lazy(:GDK_KP_5) { 0xffb5 }
      const_attr_reader  :GDK_KP_5
      
      const_set_lazy(:GDK_KP_6) { 0xffb6 }
      const_attr_reader  :GDK_KP_6
      
      const_set_lazy(:GDK_KP_7) { 0xffb7 }
      const_attr_reader  :GDK_KP_7
      
      const_set_lazy(:GDK_KP_8) { 0xffb8 }
      const_attr_reader  :GDK_KP_8
      
      const_set_lazy(:GDK_KP_9) { 0xffb9 }
      const_attr_reader  :GDK_KP_9
      
      const_set_lazy(:GDK_KP_Add) { 0xffab }
      const_attr_reader  :GDK_KP_Add
      
      const_set_lazy(:GDK_KP_Decimal) { 0xffae }
      const_attr_reader  :GDK_KP_Decimal
      
      const_set_lazy(:GDK_KP_Delete) { 0xff9f }
      const_attr_reader  :GDK_KP_Delete
      
      const_set_lazy(:GDK_KP_Divide) { 0xffaf }
      const_attr_reader  :GDK_KP_Divide
      
      const_set_lazy(:GDK_KP_Down) { 0xff99 }
      const_attr_reader  :GDK_KP_Down
      
      const_set_lazy(:GDK_KP_End) { 0xff9c }
      const_attr_reader  :GDK_KP_End
      
      const_set_lazy(:GDK_KP_Enter) { 0xff8d }
      const_attr_reader  :GDK_KP_Enter
      
      const_set_lazy(:GDK_KP_Equal) { 0xffbd }
      const_attr_reader  :GDK_KP_Equal
      
      const_set_lazy(:GDK_KP_Home) { 0xff95 }
      const_attr_reader  :GDK_KP_Home
      
      const_set_lazy(:GDK_KP_Insert) { 0xff9e }
      const_attr_reader  :GDK_KP_Insert
      
      const_set_lazy(:GDK_KP_Left) { 0xff96 }
      const_attr_reader  :GDK_KP_Left
      
      const_set_lazy(:GDK_KP_Multiply) { 0xffaa }
      const_attr_reader  :GDK_KP_Multiply
      
      const_set_lazy(:GDK_KP_Page_Down) { 0xff9b }
      const_attr_reader  :GDK_KP_Page_Down
      
      const_set_lazy(:GDK_KP_Page_Up) { 0xff9a }
      const_attr_reader  :GDK_KP_Page_Up
      
      const_set_lazy(:GDK_KP_Right) { 0xff98 }
      const_attr_reader  :GDK_KP_Right
      
      const_set_lazy(:GDK_KP_Subtract) { 0xffad }
      const_attr_reader  :GDK_KP_Subtract
      
      const_set_lazy(:GDK_KP_Up) { 0xff97 }
      const_attr_reader  :GDK_KP_Up
      
      const_set_lazy(:GDK_LEAVE_NOTIFY) { 11 }
      const_attr_reader  :GDK_LEAVE_NOTIFY
      
      const_set_lazy(:GDK_LEAVE_NOTIFY_MASK) { 0x2000 }
      const_attr_reader  :GDK_LEAVE_NOTIFY_MASK
      
      const_set_lazy(:GDK_LEFT_PTR) { 0x44 }
      const_attr_reader  :GDK_LEFT_PTR
      
      const_set_lazy(:GDK_LEFT_SIDE) { 0x46 }
      const_attr_reader  :GDK_LEFT_SIDE
      
      const_set_lazy(:GDK_LINE_ON_OFF_DASH) { 0x1 }
      const_attr_reader  :GDK_LINE_ON_OFF_DASH
      
      const_set_lazy(:GDK_LINE_SOLID) { 0x0 }
      const_attr_reader  :GDK_LINE_SOLID
      
      const_set_lazy(:GDK_Linefeed) { 0xff0a }
      const_attr_reader  :GDK_Linefeed
      
      const_set_lazy(:GDK_LSB_FIRST) { 0x0 }
      const_attr_reader  :GDK_LSB_FIRST
      
      const_set_lazy(:GDK_Left) { 0xff51 }
      const_attr_reader  :GDK_Left
      
      const_set_lazy(:GDK_Meta_L) { 0xffe7 }
      const_attr_reader  :GDK_Meta_L
      
      const_set_lazy(:GDK_Meta_R) { 0xffe8 }
      const_attr_reader  :GDK_Meta_R
      
      const_set_lazy(:GDK_MAP) { 14 }
      const_attr_reader  :GDK_MAP
      
      const_set_lazy(:GDK_MOD1_MASK) { 0x8 }
      const_attr_reader  :GDK_MOD1_MASK
      
      const_set_lazy(:GDK_MOTION_NOTIFY) { 0x3 }
      const_attr_reader  :GDK_MOTION_NOTIFY
      
      const_set_lazy(:GDK_NO_EXPOSE) { 30 }
      const_attr_reader  :GDK_NO_EXPOSE
      
      const_set_lazy(:GDK_NONE) { 0 }
      const_attr_reader  :GDK_NONE
      
      const_set_lazy(:GDK_NOTIFY_INFERIOR) { 2 }
      const_attr_reader  :GDK_NOTIFY_INFERIOR
      
      const_set_lazy(:GDK_Num_Lock) { 0xff7f }
      const_attr_reader  :GDK_Num_Lock
      
      const_set_lazy(:GDK_OVERLAP_RECTANGLE_OUT) { 0x1 }
      const_attr_reader  :GDK_OVERLAP_RECTANGLE_OUT
      
      const_set_lazy(:GDK_PIXBUF_ALPHA_BILEVEL) { 0x0 }
      const_attr_reader  :GDK_PIXBUF_ALPHA_BILEVEL
      
      const_set_lazy(:GDK_POINTER_MOTION_HINT_MASK) { 0x8 }
      const_attr_reader  :GDK_POINTER_MOTION_HINT_MASK
      
      const_set_lazy(:GDK_POINTER_MOTION_MASK) { 0x4 }
      const_attr_reader  :GDK_POINTER_MOTION_MASK
      
      const_set_lazy(:GDK_PROPERTY_NOTIFY) { 16 }
      const_attr_reader  :GDK_PROPERTY_NOTIFY
      
      const_set_lazy(:GDK_Page_Down) { 0xff56 }
      const_attr_reader  :GDK_Page_Down
      
      const_set_lazy(:GDK_Page_Up) { 0xff55 }
      const_attr_reader  :GDK_Page_Up
      
      const_set_lazy(:GDK_Pause) { 0xff13 }
      const_attr_reader  :GDK_Pause
      
      const_set_lazy(:GDK_Print) { 0xff61 }
      const_attr_reader  :GDK_Print
      
      const_set_lazy(:GDK_QUESTION_ARROW) { 0x5c }
      const_attr_reader  :GDK_QUESTION_ARROW
      
      const_set_lazy(:GDK_RGB_DITHER_NORMAL) { 0x1 }
      const_attr_reader  :GDK_RGB_DITHER_NORMAL
      
      const_set_lazy(:GDK_RIGHT_SIDE) { 0x60 }
      const_attr_reader  :GDK_RIGHT_SIDE
      
      const_set_lazy(:GDK_Return) { 0xff0d }
      const_attr_reader  :GDK_Return
      
      const_set_lazy(:GDK_Right) { 0xff53 }
      const_attr_reader  :GDK_Right
      
      const_set_lazy(:GDK_space) { 0x20 }
      const_attr_reader  :GDK_space
      
      const_set_lazy(:GDK_SB_H_DOUBLE_ARROW) { 0x6c }
      const_attr_reader  :GDK_SB_H_DOUBLE_ARROW
      
      const_set_lazy(:GDK_SB_UP_ARROW) { 0x72 }
      const_attr_reader  :GDK_SB_UP_ARROW
      
      const_set_lazy(:GDK_SB_V_DOUBLE_ARROW) { 0x74 }
      const_attr_reader  :GDK_SB_V_DOUBLE_ARROW
      
      const_set_lazy(:GDK_SCROLL_UP) { 0 }
      const_attr_reader  :GDK_SCROLL_UP
      
      const_set_lazy(:GDK_SCROLL_DOWN) { 1 }
      const_attr_reader  :GDK_SCROLL_DOWN
      
      const_set_lazy(:GDK_SCROLL_LEFT) { 2 }
      const_attr_reader  :GDK_SCROLL_LEFT
      
      const_set_lazy(:GDK_SCROLL_RIGHT) { 3 }
      const_attr_reader  :GDK_SCROLL_RIGHT
      
      const_set_lazy(:GDK_SELECTION_CLEAR) { 17 }
      const_attr_reader  :GDK_SELECTION_CLEAR
      
      const_set_lazy(:GDK_SELECTION_NOTIFY) { 19 }
      const_attr_reader  :GDK_SELECTION_NOTIFY
      
      const_set_lazy(:GDK_SELECTION_REQUEST) { 18 }
      const_attr_reader  :GDK_SELECTION_REQUEST
      
      const_set_lazy(:GDK_SHIFT_MASK) { 0x1 }
      const_attr_reader  :GDK_SHIFT_MASK
      
      const_set_lazy(:GDK_SIZING) { 0x78 }
      const_attr_reader  :GDK_SIZING
      
      const_set_lazy(:GDK_STIPPLED) { 0x2 }
      const_attr_reader  :GDK_STIPPLED
      
      const_set_lazy(:GDK_TILED) { 0x1 }
      const_attr_reader  :GDK_TILED
      
      const_set_lazy(:GDK_Shift_L) { 0xffe1 }
      const_attr_reader  :GDK_Shift_L
      
      const_set_lazy(:GDK_Shift_R) { 0xffe2 }
      const_attr_reader  :GDK_Shift_R
      
      const_set_lazy(:GDK_SCROLL) { 31 }
      const_attr_reader  :GDK_SCROLL
      
      const_set_lazy(:GDK_Scroll_Lock) { 0xff14 }
      const_attr_reader  :GDK_Scroll_Lock
      
      const_set_lazy(:GDK_TOP_LEFT_CORNER) { 0x86 }
      const_attr_reader  :GDK_TOP_LEFT_CORNER
      
      const_set_lazy(:GDK_TOP_RIGHT_CORNER) { 0x88 }
      const_attr_reader  :GDK_TOP_RIGHT_CORNER
      
      const_set_lazy(:GDK_TOP_SIDE) { 0x8a }
      const_attr_reader  :GDK_TOP_SIDE
      
      const_set_lazy(:GDK_Tab) { 0xff09 }
      const_attr_reader  :GDK_Tab
      
      const_set_lazy(:GDK_Up) { 0xff52 }
      const_attr_reader  :GDK_Up
      
      const_set_lazy(:GDK_WATCH) { 0x96 }
      const_attr_reader  :GDK_WATCH
      
      const_set_lazy(:GDK_XOR) { 0x2 }
      const_attr_reader  :GDK_XOR
      
      const_set_lazy(:GDK_XTERM) { 0x98 }
      const_attr_reader  :GDK_XTERM
      
      const_set_lazy(:GDK_X_CURSOR) { 0x0 }
      const_attr_reader  :GDK_X_CURSOR
      
      const_set_lazy(:GDK_VISIBILITY_FULLY_OBSCURED) { 2 }
      const_attr_reader  :GDK_VISIBILITY_FULLY_OBSCURED
      
      const_set_lazy(:GDK_VISIBILITY_NOTIFY_MASK) { 1 << 17 }
      const_attr_reader  :GDK_VISIBILITY_NOTIFY_MASK
      
      const_set_lazy(:GDK_WINDOW_CHILD) { 2 }
      const_attr_reader  :GDK_WINDOW_CHILD
      
      const_set_lazy(:GDK_WINDOW_STATE_ICONIFIED) { 1 << 1 }
      const_attr_reader  :GDK_WINDOW_STATE_ICONIFIED
      
      const_set_lazy(:GDK_WINDOW_STATE_MAXIMIZED) { 1 << 2 }
      const_attr_reader  :GDK_WINDOW_STATE_MAXIMIZED
      
      const_set_lazy(:GDK_WINDOW_STATE_FULLSCREEN) { 1 << 4 }
      const_attr_reader  :GDK_WINDOW_STATE_FULLSCREEN
      
      const_set_lazy(:GTK_ACCEL_VISIBLE) { 0x1 }
      const_attr_reader  :GTK_ACCEL_VISIBLE
      
      const_set_lazy(:GTK_ARROW_DOWN) { 0x1 }
      const_attr_reader  :GTK_ARROW_DOWN
      
      const_set_lazy(:GTK_ARROW_LEFT) { 0x2 }
      const_attr_reader  :GTK_ARROW_LEFT
      
      const_set_lazy(:GTK_ARROW_RIGHT) { 0x3 }
      const_attr_reader  :GTK_ARROW_RIGHT
      
      const_set_lazy(:GTK_ARROW_UP) { 0x0 }
      const_attr_reader  :GTK_ARROW_UP
      
      const_set_lazy(:GTK_CALENDAR_SHOW_HEADING) { 1 << 0 }
      const_attr_reader  :GTK_CALENDAR_SHOW_HEADING
      
      const_set_lazy(:GTK_CALENDAR_SHOW_DAY_NAMES) { 1 << 1 }
      const_attr_reader  :GTK_CALENDAR_SHOW_DAY_NAMES
      
      const_set_lazy(:GTK_CALENDAR_NO_MONTH_CHANGE) { 1 << 2 }
      const_attr_reader  :GTK_CALENDAR_NO_MONTH_CHANGE
      
      const_set_lazy(:GTK_CALENDAR_SHOW_WEEK_NUMBERS) { 1 << 3 }
      const_attr_reader  :GTK_CALENDAR_SHOW_WEEK_NUMBERS
      
      const_set_lazy(:GTK_CALENDAR_WEEK_START_MONDAY) { 1 << 4 }
      const_attr_reader  :GTK_CALENDAR_WEEK_START_MONDAY
      
      const_set_lazy(:GTK_CAN_DEFAULT) { 0x2000 }
      const_attr_reader  :GTK_CAN_DEFAULT
      
      const_set_lazy(:GTK_CAN_FOCUS) { 0x800 }
      const_attr_reader  :GTK_CAN_FOCUS
      
      const_set_lazy(:GTK_CELL_RENDERER_MODE_ACTIVATABLE) { 1 }
      const_attr_reader  :GTK_CELL_RENDERER_MODE_ACTIVATABLE
      
      const_set_lazy(:GTK_CELL_RENDERER_SELECTED) { 1 << 0 }
      const_attr_reader  :GTK_CELL_RENDERER_SELECTED
      
      const_set_lazy(:GTK_CELL_RENDERER_FOCUSED) { 1 << 4 }
      const_attr_reader  :GTK_CELL_RENDERER_FOCUSED
      
      const_set_lazy(:GTK_CLIST_SHOW_TITLES) { 0x4 }
      const_attr_reader  :GTK_CLIST_SHOW_TITLES
      
      const_set_lazy(:GTK_CORNER_TOP_LEFT) { 0x0 }
      const_attr_reader  :GTK_CORNER_TOP_LEFT
      
      const_set_lazy(:GTK_CORNER_TOP_RIGHT) { 0x2 }
      const_attr_reader  :GTK_CORNER_TOP_RIGHT
      
      const_set_lazy(:GTK_DIALOG_DESTROY_WITH_PARENT) { 1 << 1 }
      const_attr_reader  :GTK_DIALOG_DESTROY_WITH_PARENT
      
      const_set_lazy(:GTK_DIALOG_MODAL) { 1 << 0 }
      const_attr_reader  :GTK_DIALOG_MODAL
      
      const_set_lazy(:GTK_DIR_TAB_FORWARD) { 0 }
      const_attr_reader  :GTK_DIR_TAB_FORWARD
      
      const_set_lazy(:GTK_DIR_TAB_BACKWARD) { 1 }
      const_attr_reader  :GTK_DIR_TAB_BACKWARD
      
      const_set_lazy(:GTK_FILE_CHOOSER_ACTION_OPEN) { 0 }
      const_attr_reader  :GTK_FILE_CHOOSER_ACTION_OPEN
      
      const_set_lazy(:GTK_FILE_CHOOSER_ACTION_SAVE) { 1 }
      const_attr_reader  :GTK_FILE_CHOOSER_ACTION_SAVE
      
      const_set_lazy(:GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER) { 2 }
      const_attr_reader  :GTK_FILE_CHOOSER_ACTION_SELECT_FOLDER
      
      const_set_lazy(:GTK_HAS_FOCUS) { 1 << 12 }
      const_attr_reader  :GTK_HAS_FOCUS
      
      const_set_lazy(:GTK_ICON_SIZE_MENU) { 1 }
      const_attr_reader  :GTK_ICON_SIZE_MENU
      
      const_set_lazy(:GTK_ICON_SIZE_SMALL_TOOLBAR) { 2 }
      const_attr_reader  :GTK_ICON_SIZE_SMALL_TOOLBAR
      
      const_set_lazy(:GTK_ICON_SIZE_LARGE_TOOLBAR) { 3 }
      const_attr_reader  :GTK_ICON_SIZE_LARGE_TOOLBAR
      
      const_set_lazy(:GTK_ICON_SIZE_DIALOG) { 6 }
      const_attr_reader  :GTK_ICON_SIZE_DIALOG
      
      const_set_lazy(:GTK_JUSTIFY_CENTER) { 0x2 }
      const_attr_reader  :GTK_JUSTIFY_CENTER
      
      const_set_lazy(:GTK_JUSTIFY_LEFT) { 0x0 }
      const_attr_reader  :GTK_JUSTIFY_LEFT
      
      const_set_lazy(:GTK_JUSTIFY_RIGHT) { 0x1 }
      const_attr_reader  :GTK_JUSTIFY_RIGHT
      
      const_set_lazy(:GTK_MAPPED) { 1 << 7 }
      const_attr_reader  :GTK_MAPPED
      
      const_set_lazy(:GTK_MESSAGE_INFO) { 0 }
      const_attr_reader  :GTK_MESSAGE_INFO
      
      const_set_lazy(:GTK_MESSAGE_WARNING) { 1 }
      const_attr_reader  :GTK_MESSAGE_WARNING
      
      const_set_lazy(:GTK_MESSAGE_QUESTION) { 2 }
      const_attr_reader  :GTK_MESSAGE_QUESTION
      
      const_set_lazy(:GTK_MESSAGE_ERROR) { 3 }
      const_attr_reader  :GTK_MESSAGE_ERROR
      
      const_set_lazy(:GTK_NO_WINDOW) { 1 << 5 }
      const_attr_reader  :GTK_NO_WINDOW
      
      const_set_lazy(:GTK_ORIENTATION_HORIZONTAL) { 0x0 }
      const_attr_reader  :GTK_ORIENTATION_HORIZONTAL
      
      const_set_lazy(:GTK_ORIENTATION_VERTICAL) { 0x1 }
      const_attr_reader  :GTK_ORIENTATION_VERTICAL
      
      const_set_lazy(:GTK_PACK_END) { 1 }
      const_attr_reader  :GTK_PACK_END
      
      const_set_lazy(:GTK_PACK_START) { 0 }
      const_attr_reader  :GTK_PACK_START
      
      const_set_lazy(:GTK_POLICY_ALWAYS) { 0x0 }
      const_attr_reader  :GTK_POLICY_ALWAYS
      
      const_set_lazy(:GTK_POLICY_AUTOMATIC) { 0x1 }
      const_attr_reader  :GTK_POLICY_AUTOMATIC
      
      const_set_lazy(:GTK_POLICY_NEVER) { 0x2 }
      const_attr_reader  :GTK_POLICY_NEVER
      
      const_set_lazy(:GTK_POS_TOP) { 0x2 }
      const_attr_reader  :GTK_POS_TOP
      
      const_set_lazy(:GTK_POS_BOTTOM) { 0x3 }
      const_attr_reader  :GTK_POS_BOTTOM
      
      const_set_lazy(:GTK_PRINT_CAPABILITY_PAGE_SET) { 1 << 0 }
      const_attr_reader  :GTK_PRINT_CAPABILITY_PAGE_SET
      
      const_set_lazy(:GTK_PRINT_CAPABILITY_COPIES) { 1 << 1 }
      const_attr_reader  :GTK_PRINT_CAPABILITY_COPIES
      
      const_set_lazy(:GTK_PRINT_CAPABILITY_COLLATE) { 1 << 2 }
      const_attr_reader  :GTK_PRINT_CAPABILITY_COLLATE
      
      const_set_lazy(:GTK_PRINT_CAPABILITY_REVERSE) { 1 << 3 }
      const_attr_reader  :GTK_PRINT_CAPABILITY_REVERSE
      
      const_set_lazy(:GTK_PRINT_CAPABILITY_SCALE) { 1 << 4 }
      const_attr_reader  :GTK_PRINT_CAPABILITY_SCALE
      
      const_set_lazy(:GTK_PRINT_CAPABILITY_GENERATE_PDF) { 1 << 5 }
      const_attr_reader  :GTK_PRINT_CAPABILITY_GENERATE_PDF
      
      const_set_lazy(:GTK_PRINT_CAPABILITY_GENERATE_PS) { 1 << 6 }
      const_attr_reader  :GTK_PRINT_CAPABILITY_GENERATE_PS
      
      const_set_lazy(:GTK_PRINT_CAPABILITY_PREVIEW) { 1 << 7 }
      const_attr_reader  :GTK_PRINT_CAPABILITY_PREVIEW
      
      const_set_lazy(:GTK_PRINT_PAGES_ALL) { 0 }
      const_attr_reader  :GTK_PRINT_PAGES_ALL
      
      const_set_lazy(:GTK_PRINT_PAGES_CURRENT) { 1 }
      const_attr_reader  :GTK_PRINT_PAGES_CURRENT
      
      const_set_lazy(:GTK_PRINT_PAGES_RANGES) { 2 }
      const_attr_reader  :GTK_PRINT_PAGES_RANGES
      
      const_set_lazy(:GTK_PROGRESS_CONTINUOUS) { 0x0 }
      const_attr_reader  :GTK_PROGRESS_CONTINUOUS
      
      const_set_lazy(:GTK_PROGRESS_DISCRETE) { 0x1 }
      const_attr_reader  :GTK_PROGRESS_DISCRETE
      
      const_set_lazy(:GTK_PROGRESS_LEFT_TO_RIGHT) { 0x0 }
      const_attr_reader  :GTK_PROGRESS_LEFT_TO_RIGHT
      
      const_set_lazy(:GTK_PROGRESS_BOTTOM_TO_TOP) { 0x2 }
      const_attr_reader  :GTK_PROGRESS_BOTTOM_TO_TOP
      
      const_set_lazy(:GTK_REALIZED) { 1 << 6 }
      const_attr_reader  :GTK_REALIZED
      
      const_set_lazy(:GTK_RECEIVES_DEFAULT) { 1 << 20 }
      const_attr_reader  :GTK_RECEIVES_DEFAULT
      
      const_set_lazy(:GTK_RELIEF_NONE) { 0x2 }
      const_attr_reader  :GTK_RELIEF_NONE
      
      const_set_lazy(:GTK_RELIEF_NORMAL) { 0 }
      const_attr_reader  :GTK_RELIEF_NORMAL
      
      const_set_lazy(:GTK_RC_BG) { 1 << 1 }
      const_attr_reader  :GTK_RC_BG
      
      const_set_lazy(:GTK_RC_FG) { 1 << 0 }
      const_attr_reader  :GTK_RC_FG
      
      const_set_lazy(:GTK_RC_TEXT) { 1 << 2 }
      const_attr_reader  :GTK_RC_TEXT
      
      const_set_lazy(:GTK_RC_BASE) { 1 << 3 }
      const_attr_reader  :GTK_RC_BASE
      
      const_set_lazy(:GTK_RESPONSE_APPLY) { -0xa }
      const_attr_reader  :GTK_RESPONSE_APPLY
      
      const_set_lazy(:GTK_RESPONSE_CANCEL) { -0x6 }
      const_attr_reader  :GTK_RESPONSE_CANCEL
      
      const_set_lazy(:GTK_RESPONSE_OK) { -0x5 }
      const_attr_reader  :GTK_RESPONSE_OK
      
      const_set_lazy(:GTK_SCROLL_NONE) { 0 }
      const_attr_reader  :GTK_SCROLL_NONE
      
      const_set_lazy(:GTK_SCROLL_JUMP) { 1 }
      const_attr_reader  :GTK_SCROLL_JUMP
      
      const_set_lazy(:GTK_SCROLL_STEP_BACKWARD) { 2 }
      const_attr_reader  :GTK_SCROLL_STEP_BACKWARD
      
      const_set_lazy(:GTK_SCROLL_STEP_FORWARD) { 3 }
      const_attr_reader  :GTK_SCROLL_STEP_FORWARD
      
      const_set_lazy(:GTK_SCROLL_PAGE_BACKWARD) { 4 }
      const_attr_reader  :GTK_SCROLL_PAGE_BACKWARD
      
      const_set_lazy(:GTK_SCROLL_PAGE_FORWARD) { 5 }
      const_attr_reader  :GTK_SCROLL_PAGE_FORWARD
      
      const_set_lazy(:GTK_SCROLL_STEP_UP) { 6 }
      const_attr_reader  :GTK_SCROLL_STEP_UP
      
      const_set_lazy(:GTK_SCROLL_STEP_DOWN) { 7 }
      const_attr_reader  :GTK_SCROLL_STEP_DOWN
      
      const_set_lazy(:GTK_SCROLL_PAGE_UP) { 8 }
      const_attr_reader  :GTK_SCROLL_PAGE_UP
      
      const_set_lazy(:GTK_SCROLL_PAGE_DOWN) { 9 }
      const_attr_reader  :GTK_SCROLL_PAGE_DOWN
      
      const_set_lazy(:GTK_SCROLL_STEP_LEFT) { 10 }
      const_attr_reader  :GTK_SCROLL_STEP_LEFT
      
      const_set_lazy(:GTK_SCROLL_STEP_RIGHT) { 11 }
      const_attr_reader  :GTK_SCROLL_STEP_RIGHT
      
      const_set_lazy(:GTK_SCROLL_PAGE_LEFT) { 12 }
      const_attr_reader  :GTK_SCROLL_PAGE_LEFT
      
      const_set_lazy(:GTK_SCROLL_PAGE_RIGHT) { 13 }
      const_attr_reader  :GTK_SCROLL_PAGE_RIGHT
      
      const_set_lazy(:GTK_SCROLL_START) { 14 }
      const_attr_reader  :GTK_SCROLL_START
      
      const_set_lazy(:GTK_SCROLL_END) { 15 }
      const_attr_reader  :GTK_SCROLL_END
      
      const_set_lazy(:GTK_SELECTION_BROWSE) { 0x2 }
      const_attr_reader  :GTK_SELECTION_BROWSE
      
      const_set_lazy(:GTK_SELECTION_MULTIPLE) { 0x3 }
      const_attr_reader  :GTK_SELECTION_MULTIPLE
      
      const_set_lazy(:GTK_SENSITIVE) { 0x200 }
      const_attr_reader  :GTK_SENSITIVE
      
      const_set_lazy(:GTK_SHADOW_ETCHED_IN) { 0x3 }
      const_attr_reader  :GTK_SHADOW_ETCHED_IN
      
      const_set_lazy(:GTK_SHADOW_ETCHED_OUT) { 0x4 }
      const_attr_reader  :GTK_SHADOW_ETCHED_OUT
      
      const_set_lazy(:GTK_SHADOW_IN) { 0x1 }
      const_attr_reader  :GTK_SHADOW_IN
      
      const_set_lazy(:GTK_SHADOW_NONE) { 0x0 }
      const_attr_reader  :GTK_SHADOW_NONE
      
      const_set_lazy(:GTK_SHADOW_OUT) { 0x2 }
      const_attr_reader  :GTK_SHADOW_OUT
      
      const_set_lazy(:GTK_STATE_ACTIVE) { 0x1 }
      const_attr_reader  :GTK_STATE_ACTIVE
      
      const_set_lazy(:GTK_STATE_INSENSITIVE) { 0x4 }
      const_attr_reader  :GTK_STATE_INSENSITIVE
      
      const_set_lazy(:GTK_STATE_NORMAL) { 0x0 }
      const_attr_reader  :GTK_STATE_NORMAL
      
      const_set_lazy(:GTK_STATE_PRELIGHT) { 0x2 }
      const_attr_reader  :GTK_STATE_PRELIGHT
      
      const_set_lazy(:GTK_STATE_SELECTED) { 0x3 }
      const_attr_reader  :GTK_STATE_SELECTED
      
      const_set_lazy(:GTK_TEXT_DIR_LTR) { 1 }
      const_attr_reader  :GTK_TEXT_DIR_LTR
      
      const_set_lazy(:GTK_TEXT_DIR_NONE) { 0 }
      const_attr_reader  :GTK_TEXT_DIR_NONE
      
      const_set_lazy(:GTK_TEXT_DIR_RTL) { 2 }
      const_attr_reader  :GTK_TEXT_DIR_RTL
      
      const_set_lazy(:GTK_TEXT_WINDOW_TEXT) { 2 }
      const_attr_reader  :GTK_TEXT_WINDOW_TEXT
      
      const_set_lazy(:GTK_TOOLBAR_CHILD_BUTTON) { 0x1 }
      const_attr_reader  :GTK_TOOLBAR_CHILD_BUTTON
      
      const_set_lazy(:GTK_TOOLBAR_CHILD_RADIOBUTTON) { 0x3 }
      const_attr_reader  :GTK_TOOLBAR_CHILD_RADIOBUTTON
      
      const_set_lazy(:GTK_TOOLBAR_CHILD_TOGGLEBUTTON) { 0x2 }
      const_attr_reader  :GTK_TOOLBAR_CHILD_TOGGLEBUTTON
      
      const_set_lazy(:GTK_TREE_VIEW_COLUMN_GROW_ONLY) { 0 }
      const_attr_reader  :GTK_TREE_VIEW_COLUMN_GROW_ONLY
      
      const_set_lazy(:GTK_TREE_VIEW_COLUMN_AUTOSIZE) { 1 }
      const_attr_reader  :GTK_TREE_VIEW_COLUMN_AUTOSIZE
      
      const_set_lazy(:GTK_TREE_VIEW_COLUMN_FIXED) { 2 }
      const_attr_reader  :GTK_TREE_VIEW_COLUMN_FIXED
      
      const_set_lazy(:GTK_TREE_VIEW_DROP_BEFORE) { 0 }
      const_attr_reader  :GTK_TREE_VIEW_DROP_BEFORE
      
      const_set_lazy(:GTK_TREE_VIEW_DROP_AFTER) { 1 }
      const_attr_reader  :GTK_TREE_VIEW_DROP_AFTER
      
      const_set_lazy(:GTK_TREE_VIEW_DROP_INTO_OR_BEFORE) { 2 }
      const_attr_reader  :GTK_TREE_VIEW_DROP_INTO_OR_BEFORE
      
      const_set_lazy(:GTK_TREE_VIEW_DROP_INTO_OR_AFTER) { 3 }
      const_attr_reader  :GTK_TREE_VIEW_DROP_INTO_OR_AFTER
      
      const_set_lazy(:GDK_UNMAP) { 15 }
      const_attr_reader  :GDK_UNMAP
      
      const_set_lazy(:GTK_UNIT_PIXEL) { 0 }
      const_attr_reader  :GTK_UNIT_PIXEL
      
      const_set_lazy(:GTK_UNIT_POINTS) { 1 }
      const_attr_reader  :GTK_UNIT_POINTS
      
      const_set_lazy(:GTK_UNIT_INCH) { 2 }
      const_attr_reader  :GTK_UNIT_INCH
      
      const_set_lazy(:GTK_UNIT_MM) { 3 }
      const_attr_reader  :GTK_UNIT_MM
      
      const_set_lazy(:GTK_VISIBILITY_FULL) { 0x2 }
      const_attr_reader  :GTK_VISIBILITY_FULL
      
      const_set_lazy(:GTK_VISIBILITY_NONE) { 0x0 }
      const_attr_reader  :GTK_VISIBILITY_NONE
      
      const_set_lazy(:GTK_VISIBLE) { 0x100 }
      const_attr_reader  :GTK_VISIBLE
      
      const_set_lazy(:GDK_WA_X) { 1 << 2 }
      const_attr_reader  :GDK_WA_X
      
      const_set_lazy(:GDK_WA_Y) { 1 << 3 }
      const_attr_reader  :GDK_WA_Y
      
      const_set_lazy(:GDK_WA_VISUAL) { 1 << 6 }
      const_attr_reader  :GDK_WA_VISUAL
      
      const_set_lazy(:GTK_WINDOW_POPUP) { 0x1 }
      const_attr_reader  :GTK_WINDOW_POPUP
      
      const_set_lazy(:GTK_WINDOW_TOPLEVEL) { 0x0 }
      const_attr_reader  :GTK_WINDOW_TOPLEVEL
      
      const_set_lazy(:GDK_WINDOW_TYPE_HINT_DIALOG) { 1 }
      const_attr_reader  :GDK_WINDOW_TYPE_HINT_DIALOG
      
      const_set_lazy(:GTK_WRAP_NONE) { 0 }
      const_attr_reader  :GTK_WRAP_NONE
      
      const_set_lazy(:GTK_WRAP_WORD) { 2 }
      const_attr_reader  :GTK_WRAP_WORD
      
      const_set_lazy(:GTK_WRAP_WORD_CHAR) { 3 }
      const_attr_reader  :GTK_WRAP_WORD_CHAR
      
      const_set_lazy(:G_LOG_FLAG_FATAL) { 0x2 }
      const_attr_reader  :G_LOG_FLAG_FATAL
      
      const_set_lazy(:G_LOG_FLAG_RECURSION) { 0x1 }
      const_attr_reader  :G_LOG_FLAG_RECURSION
      
      const_set_lazy(:G_LOG_LEVEL_MASK) { -0x4 }
      const_attr_reader  :G_LOG_LEVEL_MASK
      
      const_set_lazy(:None) { 0 }
      const_attr_reader  :None
      
      const_set_lazy(:PANGO_ALIGN_LEFT) { 0 }
      const_attr_reader  :PANGO_ALIGN_LEFT
      
      const_set_lazy(:PANGO_ALIGN_CENTER) { 1 }
      const_attr_reader  :PANGO_ALIGN_CENTER
      
      const_set_lazy(:PANGO_ALIGN_RIGHT) { 2 }
      const_attr_reader  :PANGO_ALIGN_RIGHT
      
      const_set_lazy(:PANGO_ATTR_FOREGROUND) { 9 }
      const_attr_reader  :PANGO_ATTR_FOREGROUND
      
      const_set_lazy(:PANGO_ATTR_BACKGROUND) { 10 }
      const_attr_reader  :PANGO_ATTR_BACKGROUND
      
      const_set_lazy(:PANGO_ATTR_UNDERLINE) { 11 }
      const_attr_reader  :PANGO_ATTR_UNDERLINE
      
      const_set_lazy(:PANGO_ATTR_UNDERLINE_COLOR) { 18 }
      const_attr_reader  :PANGO_ATTR_UNDERLINE_COLOR
      
      const_set_lazy(:PANGO_DIRECTION_LTR) { 0 }
      const_attr_reader  :PANGO_DIRECTION_LTR
      
      const_set_lazy(:PANGO_DIRECTION_RTL) { 1 }
      const_attr_reader  :PANGO_DIRECTION_RTL
      
      const_set_lazy(:PANGO_SCALE) { 1024 }
      const_attr_reader  :PANGO_SCALE
      
      const_set_lazy(:PANGO_STRETCH_NORMAL) { 0x4 }
      const_attr_reader  :PANGO_STRETCH_NORMAL
      
      const_set_lazy(:PANGO_STYLE_ITALIC) { 0x2 }
      const_attr_reader  :PANGO_STYLE_ITALIC
      
      const_set_lazy(:PANGO_STYLE_NORMAL) { 0x0 }
      const_attr_reader  :PANGO_STYLE_NORMAL
      
      const_set_lazy(:PANGO_STYLE_OBLIQUE) { 0x1 }
      const_attr_reader  :PANGO_STYLE_OBLIQUE
      
      const_set_lazy(:PANGO_TAB_LEFT) { 0 }
      const_attr_reader  :PANGO_TAB_LEFT
      
      const_set_lazy(:PANGO_UNDERLINE_NONE) { 0 }
      const_attr_reader  :PANGO_UNDERLINE_NONE
      
      const_set_lazy(:PANGO_UNDERLINE_SINGLE) { 1 }
      const_attr_reader  :PANGO_UNDERLINE_SINGLE
      
      const_set_lazy(:PANGO_UNDERLINE_DOUBLE) { 2 }
      const_attr_reader  :PANGO_UNDERLINE_DOUBLE
      
      const_set_lazy(:PANGO_UNDERLINE_LOW) { 3 }
      const_attr_reader  :PANGO_UNDERLINE_LOW
      
      const_set_lazy(:PANGO_UNDERLINE_ERROR) { 4 }
      const_attr_reader  :PANGO_UNDERLINE_ERROR
      
      const_set_lazy(:PANGO_WEIGHT_BOLD) { 0x2bc }
      const_attr_reader  :PANGO_WEIGHT_BOLD
      
      const_set_lazy(:PANGO_WEIGHT_NORMAL) { 0x190 }
      const_attr_reader  :PANGO_WEIGHT_NORMAL
      
      const_set_lazy(:PANGO_WRAP_WORD) { 0 }
      const_attr_reader  :PANGO_WRAP_WORD
      
      const_set_lazy(:PANGO_WRAP_WORD_CHAR) { 2 }
      const_attr_reader  :PANGO_WRAP_WORD_CHAR
      
      const_set_lazy(:RTLD_LAZY) { 1 }
      const_attr_reader  :RTLD_LAZY
      
      const_set_lazy(:XA_CARDINAL) { 6 }
      const_attr_reader  :XA_CARDINAL
      
      const_set_lazy(:XA_WINDOW) { 33 }
      const_attr_reader  :XA_WINDOW
      
      # Signals
      const_set_lazy(:Activate) { ascii("activate") }
      const_attr_reader  :Activate
      
      const_set_lazy(:Button_press_event) { ascii("button-press-event") }
      const_attr_reader  :Button_press_event
      
      const_set_lazy(:Button_release_event) { ascii("button-release-event") }
      const_attr_reader  :Button_release_event
      
      const_set_lazy(:Changed) { ascii("changed") }
      const_attr_reader  :Changed
      
      const_set_lazy(:Change_current_page) { ascii("change-current-page") }
      const_attr_reader  :Change_current_page
      
      const_set_lazy(:Change_value) { ascii("change-value") }
      const_attr_reader  :Change_value
      
      const_set_lazy(:Clicked) { ascii("clicked") }
      const_attr_reader  :Clicked
      
      const_set_lazy(:Commit) { ascii("commit") }
      const_attr_reader  :Commit
      
      const_set_lazy(:Configure_event) { ascii("configure-event") }
      const_attr_reader  :Configure_event
      
      const_set_lazy(:Delete_event) { ascii("delete-event") }
      const_attr_reader  :Delete_event
      
      const_set_lazy(:Day_selected) { ascii("day-selected") }
      const_attr_reader  :Day_selected
      
      const_set_lazy(:Delete_range) { ascii("delete-range") }
      const_attr_reader  :Delete_range
      
      const_set_lazy(:Delete_text) { ascii("delete-text") }
      const_attr_reader  :Delete_text
      
      const_set_lazy(:Drag_data_delete) { ascii("drag_data_delete") }
      const_attr_reader  :Drag_data_delete
      
      const_set_lazy(:Drag_data_get) { ascii("drag_data_get") }
      const_attr_reader  :Drag_data_get
      
      const_set_lazy(:Drag_data_received) { ascii("drag_data_received") }
      const_attr_reader  :Drag_data_received
      
      const_set_lazy(:Drag_drop) { ascii("drag_drop") }
      const_attr_reader  :Drag_drop
      
      const_set_lazy(:Drag_end) { ascii("drag_end") }
      const_attr_reader  :Drag_end
      
      const_set_lazy(:Drag_leave) { ascii("drag_leave") }
      const_attr_reader  :Drag_leave
      
      const_set_lazy(:Drag_motion) { ascii("drag_motion") }
      const_attr_reader  :Drag_motion
      
      const_set_lazy(:Enter_notify_event) { ascii("enter-notify-event") }
      const_attr_reader  :Enter_notify_event
      
      const_set_lazy(:Event) { ascii("event") }
      const_attr_reader  :Event
      
      const_set_lazy(:Event_after) { ascii("event-after") }
      const_attr_reader  :Event_after
      
      const_set_lazy(:Expand_collapse_cursor_row) { ascii("expand-collapse-cursor-row") }
      const_attr_reader  :Expand_collapse_cursor_row
      
      const_set_lazy(:Expose_event) { ascii("expose-event") }
      const_attr_reader  :Expose_event
      
      const_set_lazy(:Focus) { ascii("focus") }
      const_attr_reader  :Focus
      
      const_set_lazy(:Focus_in_event) { ascii("focus-in-event") }
      const_attr_reader  :Focus_in_event
      
      const_set_lazy(:Focus_out_event) { ascii("focus-out-event") }
      const_attr_reader  :Focus_out_event
      
      const_set_lazy(:Grab_focus) { ascii("grab-focus") }
      const_attr_reader  :Grab_focus
      
      const_set_lazy(:Hide) { ascii("hide") }
      const_attr_reader  :Hide
      
      const_set_lazy(:Input) { ascii("input") }
      const_attr_reader  :Input
      
      const_set_lazy(:Insert_text) { ascii("insert-text") }
      const_attr_reader  :Insert_text
      
      const_set_lazy(:Key_press_event) { ascii("key-press-event") }
      const_attr_reader  :Key_press_event
      
      const_set_lazy(:Key_release_event) { ascii("key-release-event") }
      const_attr_reader  :Key_release_event
      
      const_set_lazy(:Leave_notify_event) { ascii("leave-notify-event") }
      const_attr_reader  :Leave_notify_event
      
      const_set_lazy(:Map) { ascii("map") }
      const_attr_reader  :Map
      
      const_set_lazy(:Map_event) { ascii("map-event") }
      const_attr_reader  :Map_event
      
      const_set_lazy(:Mnemonic_activate) { ascii("mnemonic-activate") }
      const_attr_reader  :Mnemonic_activate
      
      const_set_lazy(:Month_changed) { ascii("month-changed") }
      const_attr_reader  :Month_changed
      
      const_set_lazy(:Motion_notify_event) { ascii("motion-notify-event") }
      const_attr_reader  :Motion_notify_event
      
      const_set_lazy(:Move_focus) { ascii("move-focus") }
      const_attr_reader  :Move_focus
      
      const_set_lazy(:Output) { ascii("output") }
      const_attr_reader  :Output
      
      const_set_lazy(:Popup_menu) { ascii("popup-menu") }
      const_attr_reader  :Popup_menu
      
      const_set_lazy(:Populate_popup) { ascii("populate-popup") }
      const_attr_reader  :Populate_popup
      
      const_set_lazy(:Preedit_changed) { ascii("preedit-changed") }
      const_attr_reader  :Preedit_changed
      
      const_set_lazy(:Realize) { ascii("realize") }
      const_attr_reader  :Realize
      
      const_set_lazy(:Row_activated) { ascii("row-activated") }
      const_attr_reader  :Row_activated
      
      const_set_lazy(:Row_changed) { ascii("row-changed") }
      const_attr_reader  :Row_changed
      
      const_set_lazy(:Scroll_child) { ascii("scroll-child") }
      const_attr_reader  :Scroll_child
      
      const_set_lazy(:Scroll_event) { ascii("scroll-event") }
      const_attr_reader  :Scroll_event
      
      const_set_lazy(:Select) { ascii("select") }
      const_attr_reader  :Select
      
      const_set_lazy(:Show) { ascii("show") }
      const_attr_reader  :Show
      
      const_set_lazy(:Show_help) { ascii("show-help") }
      const_attr_reader  :Show_help
      
      const_set_lazy(:Size_allocate) { ascii("size-allocate") }
      const_attr_reader  :Size_allocate
      
      const_set_lazy(:Size_request) { ascii("size-request") }
      const_attr_reader  :Size_request
      
      const_set_lazy(:Style_set) { ascii("style-set") }
      const_attr_reader  :Style_set
      
      const_set_lazy(:Switch_page) { ascii("switch-page") }
      const_attr_reader  :Switch_page
      
      const_set_lazy(:Test_collapse_row) { ascii("test-collapse-row") }
      const_attr_reader  :Test_collapse_row
      
      const_set_lazy(:Test_expand_row) { ascii("test-expand-row") }
      const_attr_reader  :Test_expand_row
      
      const_set_lazy(:Toggled) { ascii("toggled") }
      const_attr_reader  :Toggled
      
      const_set_lazy(:Unmap) { ascii("unmap") }
      const_attr_reader  :Unmap
      
      const_set_lazy(:Unmap_event) { ascii("unmap-event") }
      const_attr_reader  :Unmap_event
      
      const_set_lazy(:Unrealize) { ascii("unrealize") }
      const_attr_reader  :Unrealize
      
      const_set_lazy(:Value_changed) { ascii("value-changed") }
      const_attr_reader  :Value_changed
      
      const_set_lazy(:Visibility_notify_event) { ascii("visibility-notify-event") }
      const_attr_reader  :Visibility_notify_event
      
      const_set_lazy(:Window_state_event) { ascii("window-state-event") }
      const_attr_reader  :Window_state_event
      
      # Properties
      const_set_lazy(:Active) { ascii("active") }
      const_attr_reader  :Active
      
      const_set_lazy(:Background_gdk) { ascii("background-gdk") }
      const_attr_reader  :Background_gdk
      
      const_set_lazy(:Button_relief) { ascii("button-relief") }
      const_attr_reader  :Button_relief
      
      const_set_lazy(:Cell_background_gdk) { ascii("cell-background-gdk") }
      const_attr_reader  :Cell_background_gdk
      
      const_set_lazy(:Default_border) { ascii("default-border") }
      const_attr_reader  :Default_border
      
      const_set_lazy(:Expander_size) { ascii("expander-size") }
      const_attr_reader  :Expander_size
      
      const_set_lazy(:Fixed_height_mode) { ascii("fixed-height-mode") }
      const_attr_reader  :Fixed_height_mode
      
      const_set_lazy(:Focus_line_width) { ascii("focus-line-width") }
      const_attr_reader  :Focus_line_width
      
      const_set_lazy(:Font_desc) { ascii("font-desc") }
      const_attr_reader  :Font_desc
      
      const_set_lazy(:Foreground_gdk) { ascii("foreground-gdk") }
      const_attr_reader  :Foreground_gdk
      
      const_set_lazy(:Gtk_cursor_blink) { ascii("gtk-cursor-blink") }
      const_attr_reader  :Gtk_cursor_blink
      
      const_set_lazy(:Gtk_cursor_blink_time) { ascii("gtk-cursor-blink-time") }
      const_attr_reader  :Gtk_cursor_blink_time
      
      const_set_lazy(:Gtk_double_click_time) { ascii("gtk-double-click-time") }
      const_attr_reader  :Gtk_double_click_time
      
      const_set_lazy(:Gtk_entry_select_on_focus) { ascii("gtk-entry-select-on-focus") }
      const_attr_reader  :Gtk_entry_select_on_focus
      
      const_set_lazy(:Horizontal_separator) { ascii("horizontal-separator") }
      const_attr_reader  :Horizontal_separator
      
      const_set_lazy(:Inconsistent) { ascii("inconsistent") }
      const_attr_reader  :Inconsistent
      
      const_set_lazy(:Interior_focus) { ascii("interior-focus") }
      const_attr_reader  :Interior_focus
      
      const_set_lazy(:Mode) { ascii("mode") }
      const_attr_reader  :Mode
      
      const_set_lazy(:Pixbuf) { ascii("pixbuf") }
      const_attr_reader  :Pixbuf
      
      const_set_lazy(:Text) { ascii("text") }
      const_attr_reader  :Text
      
      const_set_lazy(:Xalign) { ascii("xalign") }
      const_attr_reader  :Xalign
      
      const_set_lazy(:Ypad) { ascii("ypad") }
      const_attr_reader  :Ypad
      
      const_set_lazy(:GTK_PRINT_SETTINGS_OUTPUT_URI) { ascii("output-uri") }
      const_attr_reader  :GTK_PRINT_SETTINGS_OUTPUT_URI
      
      const_set_lazy(:GTK_VERSION) { _version(gtk_major_version, gtk_minor_version, gtk_micro_version) }
      const_attr_reader  :GTK_VERSION
      
      typesig { [String] }
      def ascii(name)
        length_ = name.length
        chars = CharArray.new(length_)
        name.get_chars(0, length_, chars, 0)
        buffer = Array.typed(::Java::Byte).new(length_ + 1) { 0 }
        i = 0
        while i < length_
          buffer[i] = chars[i]
          i += 1
        end
        return buffer
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _version(major, minor, micro)
        return (major << 16) + (minor << 8) + micro
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GInterfaceInfo_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      # 64 bit
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
      # long
      def localeconv_decimal_point
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_localeconv_1decimal_1point, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_realpath, [:pointer, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def realpath(path, real_path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_realpath, JNI.env, self.jni_id, path.jni_id, real_path.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1HEIGHT, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # Object private fields accessors
      # long
      def _gtk_widget_height(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1HEIGHT, JNI.env, self.jni_id, widget.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1WIDTH, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _gtk_widget_width(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1WIDTH, JNI.env, self.jni_id, widget.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1WINDOW, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def _gtk_widget_window(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1WINDOW, JNI.env, self.jni_id, widget.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1X, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _gtk_widget_x(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1X, JNI.env, self.jni_id, widget.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1Y, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _gtk_widget_y(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1Y, JNI.env, self.jni_id, widget.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1SCROLLED_1WINDOW_1HSCROLLBAR, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def _gtk_scrolled_window_hscrollbar(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1SCROLLED_1WINDOW_1HSCROLLBAR, JNI.env, self.jni_id, widget.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1SCROLLED_1WINDOW_1VSCROLLBAR, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def _gtk_scrolled_window_vscrollbar(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1SCROLLED_1WINDOW_1VSCROLLBAR, JNI.env, self.jni_id, widget.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1SCROLLED_1WINDOW_1SCROLLBAR_1SPACING, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _gtk_scrolled_window_scrollbar_spacing(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1SCROLLED_1WINDOW_1SCROLLBAR_1SPACING, JNI.env, self.jni_id, widget.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1ACCEL_1LABEL_1SET_1ACCEL_1STRING, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def _gtk_accel_label_set_accel_string(acce_label, string)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1ACCEL_1LABEL_1SET_1ACCEL_1STRING, JNI.env, self.jni_id, acce_label.to_int, string.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1ACCEL_1LABEL_1GET_1ACCEL_1STRING, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def _gtk_accel_label_get_accel_string(acce_label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1ACCEL_1LABEL_1GET_1ACCEL_1STRING, JNI.env, self.jni_id, acce_label.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1ENTRY_1IM_1CONTEXT, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def _gtk_entry_im_context(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1ENTRY_1IM_1CONTEXT, JNI.env, self.jni_id, widget.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1TEXTVIEW_1IM_1CONTEXT, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def _gtk_textview_im_context(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1TEXTVIEW_1IM_1CONTEXT, JNI.env, self.jni_id, widget.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1TOOLTIPS_1TIP_1WINDOW, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def _gtk_tooltips_tip_window(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1TOOLTIPS_1TIP_1WINDOW, JNI.env, self.jni_id, widget.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1TOOLTIPS_1SET_1ACTIVE, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def _gtk_tooltips_set_active(widget, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1TOOLTIPS_1SET_1ACTIVE, JNI.env, self.jni_id, widget.to_int, data.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1SET_1HEIGHT, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _gtk_widget_set_height(widget, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1SET_1HEIGHT, JNI.env, self.jni_id, widget.to_int, height.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1SET_1WIDTH, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _gtk_widget_set_width(widget, width)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1SET_1WIDTH, JNI.env, self.jni_id, widget.to_int, width.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1SET_1X, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _gtk_widget_set_x(widget, x)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1SET_1X, JNI.env, self.jni_id, widget.to_int, x.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1SET_1Y, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _gtk_widget_set_y(widget, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1SET_1Y, JNI.env, self.jni_id, widget.to_int, y.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1REQUISITION_1WIDTH, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _gtk_widget_requisition_width(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1REQUISITION_1WIDTH, JNI.env, self.jni_id, widget.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1REQUISITION_1HEIGHT, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _gtk_widget_requisition_height(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GTK_1WIDGET_1REQUISITION_1HEIGHT, JNI.env, self.jni_id, widget.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GDK_1EVENT_1TYPE, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _gdk_event_type(event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GDK_1EVENT_1TYPE, JNI.env, self.jni_id, event.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GDK_1EVENT_1WINDOW, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def _gdk_event_window(event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GDK_1EVENT_1WINDOW, JNI.env, self.jni_id, event.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_X_1EVENT_1TYPE, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def _x_event_type(xevent)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_X_1EVENT_1TYPE, JNI.env, self.jni_id, xevent.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_X_1EVENT_1WINDOW, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def _x_event_window(xevent)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_X_1EVENT_1WINDOW, JNI.env, self.jni_id, xevent.to_int)
      end
      
      # X11 Native methods and constants
      const_set_lazy(:Above) { 0 }
      const_attr_reader  :Above
      
      const_set_lazy(:Below) { 1 }
      const_attr_reader  :Below
      
      const_set_lazy(:ButtonRelease) { 5 }
      const_attr_reader  :ButtonRelease
      
      const_set_lazy(:ClientMessage) { 33 }
      const_attr_reader  :ClientMessage
      
      const_set_lazy(:CurrentTime) { 0 }
      const_attr_reader  :CurrentTime
      
      const_set_lazy(:CWSibling) { 0x20 }
      const_attr_reader  :CWSibling
      
      const_set_lazy(:CWStackMode) { 0x40 }
      const_attr_reader  :CWStackMode
      
      const_set_lazy(:EnterNotify) { 7 }
      const_attr_reader  :EnterNotify
      
      const_set_lazy(:Expose) { 12 }
      const_attr_reader  :Expose
      
      const_set_lazy(:FocusChangeMask) { 1 << 21 }
      const_attr_reader  :FocusChangeMask
      
      const_set_lazy(:FocusIn) { 9 }
      const_attr_reader  :FocusIn
      
      const_set_lazy(:FocusOut) { 10 }
      const_attr_reader  :FocusOut
      
      const_set_lazy(:GraphicsExpose) { 13 }
      const_attr_reader  :GraphicsExpose
      
      const_set_lazy(:NoExpose) { 14 }
      const_attr_reader  :NoExpose
      
      const_set_lazy(:ExposureMask) { 1 << 15 }
      const_attr_reader  :ExposureMask
      
      # long
      const_set_lazy(:NoEventMask) { 0 }
      const_attr_reader  :NoEventMask
      
      const_set_lazy(:NotifyNormal) { 0 }
      const_attr_reader  :NotifyNormal
      
      const_set_lazy(:NotifyGrab) { 1 }
      const_attr_reader  :NotifyGrab
      
      const_set_lazy(:NotifyHint) { 1 }
      const_attr_reader  :NotifyHint
      
      const_set_lazy(:NotifyUngrab) { 2 }
      const_attr_reader  :NotifyUngrab
      
      const_set_lazy(:NotifyWhileGrabbed) { 3 }
      const_attr_reader  :NotifyWhileGrabbed
      
      const_set_lazy(:NotifyAncestor) { 0 }
      const_attr_reader  :NotifyAncestor
      
      const_set_lazy(:NotifyVirtual) { 1 }
      const_attr_reader  :NotifyVirtual
      
      const_set_lazy(:NotifyNonlinear) { 3 }
      const_attr_reader  :NotifyNonlinear
      
      const_set_lazy(:NotifyNonlinearVirtual) { 4 }
      const_attr_reader  :NotifyNonlinearVirtual
      
      const_set_lazy(:NotifyPointer) { 5 }
      const_attr_reader  :NotifyPointer
      
      const_set_lazy(:RevertToParent) { 2 }
      const_attr_reader  :RevertToParent
      
      const_set_lazy(:VisibilityChangeMask) { 1 << 16 }
      const_attr_reader  :VisibilityChangeMask
      
      const_set_lazy(:VisibilityFullyObscured) { 2 }
      const_attr_reader  :VisibilityFullyObscured
      
      const_set_lazy(:VisibilityNotify) { 15 }
      const_attr_reader  :VisibilityNotify
      
      const_set_lazy(:SYSTEM_TRAY_REQUEST_DOCK) { 0 }
      const_attr_reader  :SYSTEM_TRAY_REQUEST_DOCK
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1Call, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def ___call(proc, arg1, arg2)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1Call, JNI.env, self.jni_id, proc.to_int, arg1.to_int, arg2.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _call(proc, arg1, arg2)
        PLATFORM_LOCK.lock
        begin
          return ___call(proc, arg1, arg2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1call, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def __call(function, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1call, JNI.env, self.jni_id, function.to_int, arg0.to_int, arg1.to_int, arg2.to_int, arg3.to_int, arg4.to_int, arg5.to_int, arg6.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def call(function, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        PLATFORM_LOCK.lock
        begin
          return __call(function, arg0, arg1, arg2, arg3, arg4, arg5, arg6)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_GDK_1WINDOWING_1X11, [:pointer, :long], :int8
      typesig { [] }
      def _gdk_windowing_x11
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_GDK_1WINDOWING_1X11, JNI.env, self.jni_id) != 0
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GDK_1PIXMAP_1XID, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def ___gdk_pixmap_xid(pixmap)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GDK_1PIXMAP_1XID, JNI.env, self.jni_id, pixmap.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def _gdk_pixmap_xid(pixmap)
        PLATFORM_LOCK.lock
        begin
          return ___gdk_pixmap_xid(pixmap)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XCheckMaskEvent, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def ___xcheck_mask_event(display, event_mask, event_return)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XCheckMaskEvent, JNI.env, self.jni_id, display.to_int, event_mask.to_int, event_return.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _xcheck_mask_event(display, event_mask, event_return)
        PLATFORM_LOCK.lock
        begin
          return ___xcheck_mask_event(display, event_mask, event_return)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XCheckWindowEvent, [:pointer, :long, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def ___xcheck_window_event(display, window, event_mask, event_return)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XCheckWindowEvent, JNI.env, self.jni_id, display.to_int, window.to_int, event_mask.to_int, event_return.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def _xcheck_window_event(display, window, event_mask, event_return)
        PLATFORM_LOCK.lock
        begin
          return ___xcheck_window_event(display, window, event_mask, event_return)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XCheckIfEvent, [:pointer, :long, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def ___xcheck_if_event(display, event_return, predicate, arg)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XCheckIfEvent, JNI.env, self.jni_id, display.to_int, event_return.to_int, predicate.to_int, arg.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def _xcheck_if_event(display, event_return, predicate, arg)
        PLATFORM_LOCK.lock
        begin
          return ___xcheck_if_event(display, event_return, predicate, arg)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XDefaultScreen, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def ___xdefault_screen(display)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XDefaultScreen, JNI.env, self.jni_id, display.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def _xdefault_screen(display)
        PLATFORM_LOCK.lock
        begin
          return ___xdefault_screen(display)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XDefaultRootWindow, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def ___xdefault_root_window(display)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XDefaultRootWindow, JNI.env, self.jni_id, display.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def _xdefault_root_window(display)
        PLATFORM_LOCK.lock
        begin
          return ___xdefault_root_window(display)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XFlush, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def ___xflush(display)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XFlush, JNI.env, self.jni_id, display.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def _xflush(display)
        PLATFORM_LOCK.lock
        begin
          ___xflush(display)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XFree, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def ___xfree(address)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XFree, JNI.env, self.jni_id, address.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def _xfree(address)
        PLATFORM_LOCK.lock
        begin
          ___xfree(address)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XGetSelectionOwner, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def ___xget_selection_owner(display, selection)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XGetSelectionOwner, JNI.env, self.jni_id, display.to_int, selection.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _xget_selection_owner(display, selection)
        PLATFORM_LOCK.lock
        begin
          return ___xget_selection_owner(display, selection)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XInternAtom, [:pointer, :long, :int32, :long, :int8], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Boolean] }
      # long
      # long
      def ___xintern_atom(display, name, if_exists)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XInternAtom, JNI.env, self.jni_id, display.to_int, name.jni_id, if_exists ? 1 : 0)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Boolean] }
      # long
      # long
      def _xintern_atom(display, name, if_exists)
        PLATFORM_LOCK.lock
        begin
          return ___xintern_atom(display, name, if_exists)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XQueryPointer, [:pointer, :long, :int32, :int32, :long, :long, :long, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      def ___xquery_pointer(display, w, root_return, child_return, root_x_return, root_y_return, win_x_return, win_y_return, mask_return)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XQueryPointer, JNI.env, self.jni_id, display.to_int, w.to_int, root_return.jni_id, child_return.jni_id, root_x_return.jni_id, root_y_return.jni_id, win_x_return.jni_id, win_y_return.jni_id, mask_return.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      def _xquery_pointer(display, w, root_return, child_return, root_x_return, root_y_return, win_x_return, win_y_return, mask_return)
        PLATFORM_LOCK.lock
        begin
          return ___xquery_pointer(display, w, root_return, child_return, root_x_return, root_y_return, win_x_return, win_y_return, mask_return)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XQueryTree, [:pointer, :long, :int32, :int32, :long, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      # long
      def ___xquery_tree(display, w, root_return, parent_return, children_return, nchildren_return)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XQueryTree, JNI.env, self.jni_id, display.to_int, w.to_int, root_return.jni_id, parent_return.jni_id, children_return.jni_id, nchildren_return.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      # long
      def _xquery_tree(display, w, root_return, parent_return, children_return, nchildren_return)
        PLATFORM_LOCK.lock
        begin
          return ___xquery_tree(display, w, root_return, parent_return, children_return, nchildren_return)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XKeysymToKeycode, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def ___xkeysym_to_keycode(display, keysym)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XKeysymToKeycode, JNI.env, self.jni_id, display.to_int, keysym.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def _xkeysym_to_keycode(display, keysym)
        PLATFORM_LOCK.lock
        begin
          return ___xkeysym_to_keycode(display, keysym)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XListProperties, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def ___xlist_properties(display, window, num_prop_return)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XListProperties, JNI.env, self.jni_id, display.to_int, window.to_int, num_prop_return.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def _xlist_properties(display, window, num_prop_return)
        PLATFORM_LOCK.lock
        begin
          return ___xlist_properties(display, window, num_prop_return)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XReconfigureWMWindow, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, XWindowChanges] }
      # long
      # long
      def ___xreconfigure_wmwindow(display, window, screen, value_mask, values)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XReconfigureWMWindow, JNI.env, self.jni_id, display.to_int, window.to_int, screen.to_int, value_mask.to_int, values.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, XWindowChanges] }
      # long
      # long
      def _xreconfigure_wmwindow(display, window, screen, value_mask, values)
        PLATFORM_LOCK.lock
        begin
          return ___xreconfigure_wmwindow(display, window, screen, value_mask, values)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XSendEvent, [:pointer, :long, :int32, :int32, :int8, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def ___xsend_event(display, w, propogate, event_mask, event_send)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XSendEvent, JNI.env, self.jni_id, display.to_int, w.to_int, propogate ? 1 : 0, event_mask.to_int, event_send.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def _xsend_event(display, w, propogate, event_mask, event_send)
        PLATFORM_LOCK.lock
        begin
          return ___xsend_event(display, w, propogate, event_mask, event_send)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XSetIOErrorHandler, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def ___xset_ioerror_handler(handler)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XSetIOErrorHandler, JNI.env, self.jni_id, handler.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def _xset_ioerror_handler(handler)
        PLATFORM_LOCK.lock
        begin
          return ___xset_ioerror_handler(handler)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XSetErrorHandler, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def ___xset_error_handler(handler)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XSetErrorHandler, JNI.env, self.jni_id, handler.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def _xset_error_handler(handler)
        PLATFORM_LOCK.lock
        begin
          return ___xset_error_handler(handler)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XSetInputFocus, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def ___xset_input_focus(display, window, revert, time)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XSetInputFocus, JNI.env, self.jni_id, display.to_int, window.to_int, revert.to_int, time.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def _xset_input_focus(display, window, revert, time)
        PLATFORM_LOCK.lock
        begin
          return ___xset_input_focus(display, window, revert, time)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XSynchronize, [:pointer, :long, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      # long
      def ___xsynchronize(display, onoff)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XSynchronize, JNI.env, self.jni_id, display.to_int, onoff ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      # long
      def _xsynchronize(display, onoff)
        PLATFORM_LOCK.lock
        begin
          return ___xsynchronize(display, onoff)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XTestFakeButtonEvent, [:pointer, :long, :int32, :int32, :int8, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int] }
      # long
      # long
      def ___xtest_fake_button_event(display, button, is_press, delay)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XTestFakeButtonEvent, JNI.env, self.jni_id, display.to_int, button.to_int, is_press ? 1 : 0, delay.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int] }
      # long
      # long
      def _xtest_fake_button_event(display, button, is_press, delay)
        PLATFORM_LOCK.lock
        begin
          ___xtest_fake_button_event(display, button, is_press, delay)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XTestFakeKeyEvent, [:pointer, :long, :int32, :int32, :int8, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int] }
      # long
      # long
      def ___xtest_fake_key_event(display, keycode, is_press, delay)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XTestFakeKeyEvent, JNI.env, self.jni_id, display.to_int, keycode.to_int, is_press ? 1 : 0, delay.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int] }
      # long
      # long
      def _xtest_fake_key_event(display, keycode, is_press, delay)
        PLATFORM_LOCK.lock
        begin
          ___xtest_fake_key_event(display, keycode, is_press, delay)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XTestFakeMotionEvent, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def ___xtest_fake_motion_event(display, screen_number, x, y, delay)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XTestFakeMotionEvent, JNI.env, self.jni_id, display.to_int, screen_number.to_int, x.to_int, y.to_int, delay.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def _xtest_fake_motion_event(display, screen_number, x, y, delay)
        PLATFORM_LOCK.lock
        begin
          ___xtest_fake_motion_event(display, screen_number, x, y, delay)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XWarpPointer, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def ___xwarp_pointer(display, source_window, dest_window, source_x, source_y, source_width, source_height, dest_x, dest_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XWarpPointer, JNI.env, self.jni_id, display.to_int, source_window.to_int, dest_window.to_int, source_x.to_int, source_y.to_int, source_width.to_int, source_height.to_int, dest_x.to_int, dest_y.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _xwarp_pointer(display, source_window, dest_window, source_x, source_y, source_width, source_height, dest_x, dest_y)
        PLATFORM_LOCK.lock
        begin
          return ___xwarp_pointer(display, source_window, dest_window, source_x, source_y, source_width, source_height, dest_x, dest_y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1atom_1to_1xatom, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gdk_x11_atom_to_xatom(atom)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1atom_1to_1xatom, JNI.env, self.jni_id, atom.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gdk_x11_atom_to_xatom(atom)
        PLATFORM_LOCK.lock
        begin
          return __gdk_x11_atom_to_xatom(atom)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1colormap_1get_1xcolormap, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gdk_x11_colormap_get_xcolormap(colormap)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1colormap_1get_1xcolormap, JNI.env, self.jni_id, colormap.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gdk_x11_colormap_get_xcolormap(colormap)
        PLATFORM_LOCK.lock
        begin
          return __gdk_x11_colormap_get_xcolormap(colormap)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1drawable_1get_1xdisplay, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gdk_x11_drawable_get_xdisplay(drawable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1drawable_1get_1xdisplay, JNI.env, self.jni_id, drawable.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gdk_x11_drawable_get_xdisplay(drawable)
        PLATFORM_LOCK.lock
        begin
          return __gdk_x11_drawable_get_xdisplay(drawable)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1drawable_1get_1xid, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gdk_x11_drawable_get_xid(drawable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1drawable_1get_1xid, JNI.env, self.jni_id, drawable.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gdk_x11_drawable_get_xid(drawable)
        PLATFORM_LOCK.lock
        begin
          return __gdk_x11_drawable_get_xid(drawable)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1screen_1lookup_1visual, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_x11_screen_lookup_visual(screen, xvisualid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1screen_1lookup_1visual, JNI.env, self.jni_id, screen.to_int, xvisualid.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_x11_screen_lookup_visual(screen, xvisualid)
        PLATFORM_LOCK.lock
        begin
          return __gdk_x11_screen_lookup_visual(screen, xvisualid)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1screen_1get_1window_1manager_1name, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gdk_x11_screen_get_window_manager_name(screen)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1screen_1get_1window_1manager_1name, JNI.env, self.jni_id, screen.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gdk_x11_screen_get_window_manager_name(screen)
        PLATFORM_LOCK.lock
        begin
          return __gdk_x11_screen_get_window_manager_name(screen)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1visual_1get_1xvisual, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gdk_x11_visual_get_xvisual(visual)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1x11_1visual_1get_1xvisual, JNI.env, self.jni_id, visual.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gdk_x11_visual_get_xvisual(visual)
        PLATFORM_LOCK.lock
        begin
          return __gdk_x11_visual_get_xvisual(visual)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixmap_1foreign_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gdk_pixmap_foreign_new(anid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixmap_1foreign_1new, JNI.env, self.jni_id, anid.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gdk_pixmap_foreign_new(anid)
        PLATFORM_LOCK.lock
        begin
          return __gdk_pixmap_foreign_new(anid)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1lookup, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gdk_window_lookup(xid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1lookup, JNI.env, self.jni_id, xid.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gdk_window_lookup(xid)
        PLATFORM_LOCK.lock
        begin
          return __gdk_window_lookup(xid)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1add_1filter, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gdk_window_add_filter(window, function, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1add_1filter, JNI.env, self.jni_id, window.to_int, function.to_int, data.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gdk_window_add_filter(window, function, data)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_add_filter(window, function, data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1remove_1filter, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gdk_window_remove_filter(window, function, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1remove_1filter, JNI.env, self.jni_id, window.to_int, function.to_int, data.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gdk_window_remove_filter(window, function, data)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_remove_filter(window, function, data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{XButtonEvent.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, XButtonEvent, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{XButtonEvent.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{XClientMessageEvent.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, XClientMessageEvent, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{XClientMessageEvent.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{XCrossingEvent.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, XCrossingEvent, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{XCrossingEvent.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{XExposeEvent.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, XExposeEvent, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{XExposeEvent.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{XFocusChangeEvent.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, XFocusChangeEvent, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{XFocusChangeEvent.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{XButtonEvent.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [XButtonEvent, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{XButtonEvent.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{XCrossingEvent.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [XCrossingEvent, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{XCrossingEvent.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{XExposeEvent.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [XExposeEvent, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{XExposeEvent.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{XFocusChangeEvent.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [XFocusChangeEvent, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{XFocusChangeEvent.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{XVisibilityEvent.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [XVisibilityEvent, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{XVisibilityEvent.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      # X render natives and constants
      const_set_lazy(:PictStandardARGB32) { 0 }
      const_attr_reader  :PictStandardARGB32
      
      const_set_lazy(:PictStandardRGB24) { 1 }
      const_attr_reader  :PictStandardRGB24
      
      const_set_lazy(:PictStandardA8) { 2 }
      const_attr_reader  :PictStandardA8
      
      const_set_lazy(:PictStandardA4) { 3 }
      const_attr_reader  :PictStandardA4
      
      const_set_lazy(:PictStandardA1) { 4 }
      const_attr_reader  :PictStandardA1
      
      const_set_lazy(:PictOpSrc) { 1 }
      const_attr_reader  :PictOpSrc
      
      const_set_lazy(:PictOpOver) { 3 }
      const_attr_reader  :PictOpOver
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_XRenderPictureAttributes_1sizeof, [:pointer, :long], :int32
      typesig { [] }
      def _xrender_picture_attributes_sizeof
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_XRenderPictureAttributes_1sizeof, JNI.env, self.jni_id)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XRenderQueryExtension, [:pointer, :long, :int32, :long, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___xrender_query_extension(display, event_basep, error_basep)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XRenderQueryExtension, JNI.env, self.jni_id, display.to_int, event_basep.jni_id, error_basep.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _xrender_query_extension(display, event_basep, error_basep)
        PLATFORM_LOCK.lock
        begin
          return ___xrender_query_extension(display, event_basep, error_basep)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XRenderQueryVersion, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def ___xrender_query_version(display, major_versionp, minor_versionp)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XRenderQueryVersion, JNI.env, self.jni_id, display.to_int, major_versionp.jni_id, minor_versionp.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def _xrender_query_version(display, major_versionp, minor_versionp)
        PLATFORM_LOCK.lock
        begin
          return ___xrender_query_version(display, major_versionp, minor_versionp)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XRenderCreatePicture, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, XRenderPictureAttributes] }
      # long
      # long
      # long
      # long
      # long
      def ___xrender_create_picture(display, drawable, format, valuemask, attributes)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XRenderCreatePicture, JNI.env, self.jni_id, display.to_int, drawable.to_int, format.to_int, valuemask.to_int, attributes.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, XRenderPictureAttributes] }
      # long
      # long
      # long
      # long
      # long
      def _xrender_create_picture(display, drawable, format, valuemask, attributes)
        PLATFORM_LOCK.lock
        begin
          return ___xrender_create_picture(display, drawable, format, valuemask, attributes)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XRenderSetPictureClipRectangles, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Short), ::Java::Int] }
      # long
      # long
      def ___xrender_set_picture_clip_rectangles(display, picture, x_origin, y_origin, rects, count)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XRenderSetPictureClipRectangles, JNI.env, self.jni_id, display.to_int, picture.to_int, x_origin.to_int, y_origin.to_int, rects.jni_id, count.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Short), ::Java::Int] }
      # long
      # long
      def _xrender_set_picture_clip_rectangles(display, picture, x_origin, y_origin, rects, count)
        PLATFORM_LOCK.lock
        begin
          ___xrender_set_picture_clip_rectangles(display, picture, x_origin, y_origin, rects, count)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XRenderSetPictureTransform, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def ___xrender_set_picture_transform(display, picture, transform)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XRenderSetPictureTransform, JNI.env, self.jni_id, display.to_int, picture.to_int, transform.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def _xrender_set_picture_transform(display, picture, transform)
        PLATFORM_LOCK.lock
        begin
          ___xrender_set_picture_transform(display, picture, transform)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XRenderFreePicture, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def ___xrender_free_picture(display, picture)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XRenderFreePicture, JNI.env, self.jni_id, display.to_int, picture.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def _xrender_free_picture(display, picture)
        PLATFORM_LOCK.lock
        begin
          ___xrender_free_picture(display, picture)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XRenderComposite, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def ___xrender_composite(display, op, src, mask, dst, src_x, src_y, mask_x, mask_y, dst_x, dst_y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XRenderComposite, JNI.env, self.jni_id, display.to_int, op.to_int, src.to_int, mask.to_int, dst.to_int, src_x.to_int, src_y.to_int, mask_x.to_int, mask_y.to_int, dst_x.to_int, dst_y.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def _xrender_composite(display, op, src, mask, dst, src_x, src_y, mask_x, mask_y, dst_x, dst_y, width, height)
        PLATFORM_LOCK.lock
        begin
          ___xrender_composite(display, op, src, mask, dst, src_x, src_y, mask_x, mask_y, dst_x, dst_y, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XRenderFindStandardFormat, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def ___xrender_find_standard_format(display, format)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XRenderFindStandardFormat, JNI.env, self.jni_id, display.to_int, format.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def _xrender_find_standard_format(display, format)
        PLATFORM_LOCK.lock
        begin
          return ___xrender_find_standard_format(display, format)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1XRenderFindVisualFormat, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def ___xrender_find_visual_format(display, visual)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1XRenderFindVisualFormat, JNI.env, self.jni_id, display.to_int, visual.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _xrender_find_visual_format(display, visual)
        PLATFORM_LOCK.lock
        begin
          return ___xrender_find_visual_format(display, visual)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_Call, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # Natives
      # long
      # long
      def _call(func, arg0, arg1, arg2)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_Call, JNI.env, self.jni_id, func.to_int, arg0.to_int, arg1.to_int, arg2.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GDK_1DISPLAY, [:pointer, :long], :int32
      typesig { [] }
      # long
      def ___gdk_display
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GDK_1DISPLAY, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def _gdk_display
        PLATFORM_LOCK.lock
        begin
          return ___gdk_display
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GDK_1ROOT_1PARENT, [:pointer, :long], :int32
      typesig { [] }
      # long
      def ___gdk_root_parent
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GDK_1ROOT_1PARENT, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def _gdk_root_parent
        PLATFORM_LOCK.lock
        begin
          return ___gdk_root_parent
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GDK_1TYPE_1COLOR, [:pointer, :long], :int32
      typesig { [] }
      # long
      def ___gdk_type_color
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GDK_1TYPE_1COLOR, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def _gdk_type_color
        PLATFORM_LOCK.lock
        begin
          return ___gdk_type_color
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GDK_1TYPE_1PIXBUF, [:pointer, :long], :int32
      typesig { [] }
      # long
      def ___gdk_type_pixbuf
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GDK_1TYPE_1PIXBUF, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def _gdk_type_pixbuf
        PLATFORM_LOCK.lock
        begin
          return ___gdk_type_pixbuf
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1BUTTON, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def ___gtk_is_button(obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1BUTTON, JNI.env, self.jni_id, obj.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def _gtk_is_button(obj)
        PLATFORM_LOCK.lock
        begin
          return ___gtk_is_button(obj)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1WINDOW, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def ___gtk_is_window(obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1WINDOW, JNI.env, self.jni_id, obj.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def _gtk_is_window(obj)
        PLATFORM_LOCK.lock
        begin
          return ___gtk_is_window(obj)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1CELL_1RENDERER_1PIXBUF, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def ___gtk_is_cell_renderer_pixbuf(obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1CELL_1RENDERER_1PIXBUF, JNI.env, self.jni_id, obj.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def _gtk_is_cell_renderer_pixbuf(obj)
        PLATFORM_LOCK.lock
        begin
          return ___gtk_is_cell_renderer_pixbuf(obj)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1CELL_1RENDERER_1TEXT, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def ___gtk_is_cell_renderer_text(obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1CELL_1RENDERER_1TEXT, JNI.env, self.jni_id, obj.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def _gtk_is_cell_renderer_text(obj)
        PLATFORM_LOCK.lock
        begin
          return ___gtk_is_cell_renderer_text(obj)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1CELL_1RENDERER_1TOGGLE, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def ___gtk_is_cell_renderer_toggle(obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1CELL_1RENDERER_1TOGGLE, JNI.env, self.jni_id, obj.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def _gtk_is_cell_renderer_toggle(obj)
        PLATFORM_LOCK.lock
        begin
          return ___gtk_is_cell_renderer_toggle(obj)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1CONTAINER, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def ___gtk_is_container(obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1CONTAINER, JNI.env, self.jni_id, obj.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def _gtk_is_container(obj)
        PLATFORM_LOCK.lock
        begin
          return ___gtk_is_container(obj)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1IMAGE_1MENU_1ITEM, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def ___gtk_is_image_menu_item(obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1IMAGE_1MENU_1ITEM, JNI.env, self.jni_id, obj.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def _gtk_is_image_menu_item(obj)
        PLATFORM_LOCK.lock
        begin
          return ___gtk_is_image_menu_item(obj)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1MENU_1ITEM, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def ___gtk_is_menu_item(obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1MENU_1ITEM, JNI.env, self.jni_id, obj.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def _gtk_is_menu_item(obj)
        PLATFORM_LOCK.lock
        begin
          return ___gtk_is_menu_item(obj)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1PLUG, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def ___gtk_is_plug(obj)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1IS_1PLUG, JNI.env, self.jni_id, obj.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def _gtk_is_plug(obj)
        PLATFORM_LOCK.lock
        begin
          return ___gtk_is_plug(obj)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1STOCK_1CANCEL, [:pointer, :long], :int32
      typesig { [] }
      # long
      def ___gtk_stock_cancel
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1STOCK_1CANCEL, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def _gtk_stock_cancel
        PLATFORM_LOCK.lock
        begin
          return ___gtk_stock_cancel
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1STOCK_1OK, [:pointer, :long], :int32
      typesig { [] }
      # long
      def ___gtk_stock_ok
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1STOCK_1OK, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def _gtk_stock_ok
        PLATFORM_LOCK.lock
        begin
          return ___gtk_stock_ok
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1CELL_1RENDERER_1TEXT, [:pointer, :long], :int32
      typesig { [] }
      # long
      def ___gtk_type_cell_renderer_text
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1CELL_1RENDERER_1TEXT, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def _gtk_type_cell_renderer_text
        PLATFORM_LOCK.lock
        begin
          return ___gtk_type_cell_renderer_text
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1CELL_1RENDERER_1PIXBUF, [:pointer, :long], :int32
      typesig { [] }
      # long
      def ___gtk_type_cell_renderer_pixbuf
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1CELL_1RENDERER_1PIXBUF, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def _gtk_type_cell_renderer_pixbuf
        PLATFORM_LOCK.lock
        begin
          return ___gtk_type_cell_renderer_pixbuf
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1CELL_1RENDERER_1TOGGLE, [:pointer, :long], :int32
      typesig { [] }
      # long
      def ___gtk_type_cell_renderer_toggle
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1CELL_1RENDERER_1TOGGLE, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def _gtk_type_cell_renderer_toggle
        PLATFORM_LOCK.lock
        begin
          return ___gtk_type_cell_renderer_toggle
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1FIXED, [:pointer, :long], :int32
      typesig { [] }
      # long
      def ___gtk_type_fixed
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1FIXED, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def _gtk_type_fixed
        PLATFORM_LOCK.lock
        begin
          return ___gtk_type_fixed
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1MENU, [:pointer, :long], :int32
      typesig { [] }
      # long
      def ___gtk_type_menu
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1MENU, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def _gtk_type_menu
        PLATFORM_LOCK.lock
        begin
          return ___gtk_type_menu
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1WIDGET, [:pointer, :long], :int32
      typesig { [] }
      # long
      def ___gtk_type_widget
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1TYPE_1WIDGET, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def _gtk_type_widget
        PLATFORM_LOCK.lock
        begin
          return ___gtk_type_widget
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1FLAGS, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def ___gtk_widget_flags(wid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1FLAGS, JNI.env, self.jni_id, wid.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def _gtk_widget_flags(wid)
        PLATFORM_LOCK.lock
        begin
          return ___gtk_widget_flags(wid)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1STATE, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def ___gtk_widget_state(wid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1STATE, JNI.env, self.jni_id, wid.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def _gtk_widget_state(wid)
        PLATFORM_LOCK.lock
        begin
          return ___gtk_widget_state(wid)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1HAS_1DEFAULT, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def ___gtk_widget_has_default(wid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1HAS_1DEFAULT, JNI.env, self.jni_id, wid.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def _gtk_widget_has_default(wid)
        PLATFORM_LOCK.lock
        begin
          return ___gtk_widget_has_default(wid)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1HAS_1FOCUS, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def ___gtk_widget_has_focus(wid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1HAS_1FOCUS, JNI.env, self.jni_id, wid.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def _gtk_widget_has_focus(wid)
        PLATFORM_LOCK.lock
        begin
          return ___gtk_widget_has_focus(wid)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1IS_1SENSITIVE, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def ___gtk_widget_is_sensitive(wid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1IS_1SENSITIVE, JNI.env, self.jni_id, wid.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def _gtk_widget_is_sensitive(wid)
        PLATFORM_LOCK.lock
        begin
          return ___gtk_widget_is_sensitive(wid)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1MAPPED, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def ___gtk_widget_mapped(wid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1MAPPED, JNI.env, self.jni_id, wid.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def _gtk_widget_mapped(wid)
        PLATFORM_LOCK.lock
        begin
          return ___gtk_widget_mapped(wid)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1SENSITIVE, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def ___gtk_widget_sensitive(wid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1SENSITIVE, JNI.env, self.jni_id, wid.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def _gtk_widget_sensitive(wid)
        PLATFORM_LOCK.lock
        begin
          return ___gtk_widget_sensitive(wid)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1SET_1FLAGS, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def ___gtk_widget_set_flags(wid, flag)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1SET_1FLAGS, JNI.env, self.jni_id, wid.to_int, flag.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _gtk_widget_set_flags(wid, flag)
        PLATFORM_LOCK.lock
        begin
          ___gtk_widget_set_flags(wid, flag)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1UNSET_1FLAGS, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def ___gtk_widget_unset_flags(wid, flag)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1UNSET_1FLAGS, JNI.env, self.jni_id, wid.to_int, flag.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def _gtk_widget_unset_flags(wid, flag)
        PLATFORM_LOCK.lock
        begin
          ___gtk_widget_unset_flags(wid, flag)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1VISIBLE, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def ___gtk_widget_visible(wid)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1GTK_1WIDGET_1VISIBLE, JNI.env, self.jni_id, wid.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def _gtk_widget_visible(wid)
        PLATFORM_LOCK.lock
        begin
          return ___gtk_widget_visible(wid)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1G_1OBJECT_1CLASS, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def ___g_object_class(klass)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1G_1OBJECT_1CLASS, JNI.env, self.jni_id, klass.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def _g_object_class(klass)
        PLATFORM_LOCK.lock
        begin
          return ___g_object_class(klass)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1G_1OBJECT_1GET_1CLASS, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def ___g_object_get_class(object)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1G_1OBJECT_1GET_1CLASS, JNI.env, self.jni_id, object.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def _g_object_get_class(object)
        PLATFORM_LOCK.lock
        begin
          return ___g_object_get_class(object)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1G_1OBJECT_1TYPE_1NAME, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def ___g_object_type_name(object)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1G_1OBJECT_1TYPE_1NAME, JNI.env, self.jni_id, object.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def _g_object_type_name(object)
        PLATFORM_LOCK.lock
        begin
          return ___g_object_type_name(object)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1G_1TYPE_1BOOLEAN, [:pointer, :long], :int32
      typesig { [] }
      # long
      def ___g_type_boolean
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1G_1TYPE_1BOOLEAN, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def _g_type_boolean
        PLATFORM_LOCK.lock
        begin
          return ___g_type_boolean
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1G_1TYPE_1INT, [:pointer, :long], :int32
      typesig { [] }
      # long
      def ___g_type_int
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1G_1TYPE_1INT, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def _g_type_int
        PLATFORM_LOCK.lock
        begin
          return ___g_type_int
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1G_1OBJECT_1TYPE, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def ___g_object_type(instance)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1G_1OBJECT_1TYPE, JNI.env, self.jni_id, instance.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def _g_object_type(instance)
        PLATFORM_LOCK.lock
        begin
          return ___g_object_type(instance)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1G_1TYPE_1STRING, [:pointer, :long], :int32
      typesig { [] }
      # long
      def ___g_type_string
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1G_1TYPE_1STRING, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def _g_type_string
        PLATFORM_LOCK.lock
        begin
          return ___g_type_string
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1PANGO_1PIXELS, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def ___pango_pixels(dimension)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1PANGO_1PIXELS, JNI.env, self.jni_id, dimension.to_int)
      end
      
      typesig { [::Java::Int] }
      def _pango_pixels(dimension)
        PLATFORM_LOCK.lock
        begin
          return ___pango_pixels(dimension)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1PANGO_1TYPE_1FONT_1DESCRIPTION, [:pointer, :long], :int32
      typesig { [] }
      # long
      def ___pango_type_font_description
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1PANGO_1TYPE_1FONT_1DESCRIPTION, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def _pango_type_font_description
        PLATFORM_LOCK.lock
        begin
          return ___pango_type_font_description
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1dlclose, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __dlclose(handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1dlclose, JNI.env, self.jni_id, handle.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def dlclose(handle)
        PLATFORM_LOCK.lock
        begin
          return __dlclose(handle)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1dlopen, [:pointer, :long, :long, :int32], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def __dlopen(filename, flag)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1dlopen, JNI.env, self.jni_id, filename.jni_id, flag.to_int)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def dlopen(filename, flag)
        PLATFORM_LOCK.lock
        begin
          return __dlopen(filename, flag)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1dlsym, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      # long
      def __dlsym(handle, symbol)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1dlsym, JNI.env, self.jni_id, handle.to_int, symbol.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      # long
      def dlsym(handle, symbol)
        PLATFORM_LOCK.lock
        begin
          return __dlsym(handle, symbol)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1add_1emission_1hook, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def __g_signal_add_emission_hook(signal_id, detail, hook_func, hook_data, data_destroy)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1add_1emission_1hook, JNI.env, self.jni_id, signal_id.to_int, detail.to_int, hook_func.to_int, hook_data.to_int, data_destroy.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def g_signal_add_emission_hook(signal_id, detail, hook_func, hook_data, data_destroy)
        PLATFORM_LOCK.lock
        begin
          return __g_signal_add_emission_hook(signal_id, detail, hook_func, hook_data, data_destroy)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1remove_1emission_1hook, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __g_signal_remove_emission_hook(signal_id, hook_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1remove_1emission_1hook, JNI.env, self.jni_id, signal_id.to_int, hook_id.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def g_signal_remove_emission_hook(signal_id, hook_id)
        PLATFORM_LOCK.lock
        begin
          __g_signal_remove_emission_hook(signal_id, hook_id)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1cclosure_1new, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def __g_cclosure_new(callback_func, user_data, destroy_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1cclosure_1new, JNI.env, self.jni_id, callback_func.to_int, user_data.to_int, destroy_data.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def g_cclosure_new(callback_func, user_data, destroy_data)
        PLATFORM_LOCK.lock
        begin
          return __g_cclosure_new(callback_func, user_data, destroy_data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1closure_1ref, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __g_closure_ref(closure)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1closure_1ref, JNI.env, self.jni_id, closure.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def g_closure_ref(closure)
        PLATFORM_LOCK.lock
        begin
          return __g_closure_ref(closure)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1closure_1unref, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __g_closure_unref(closure)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1closure_1unref, JNI.env, self.jni_id, closure.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def g_closure_unref(closure)
        PLATFORM_LOCK.lock
        begin
          __g_closure_unref(closure)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1acquire, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __g_main_context_acquire(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1acquire, JNI.env, self.jni_id, context.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def g_main_context_acquire(context)
        PLATFORM_LOCK.lock
        begin
          return __g_main_context_acquire(context)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1check, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __g_main_context_check(context, max_priority, fds, n_fds)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1check, JNI.env, self.jni_id, context.to_int, max_priority.to_int, fds.to_int, n_fds.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def g_main_context_check(context, max_priority, fds, n_fds)
        PLATFORM_LOCK.lock
        begin
          return __g_main_context_check(context, max_priority, fds, n_fds)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1default, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __g_main_context_default
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1default, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def g_main_context_default
        PLATFORM_LOCK.lock
        begin
          return __g_main_context_default
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1iteration, [:pointer, :long, :int32, :int8], :int8
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __g_main_context_iteration(context, may_block)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1iteration, JNI.env, self.jni_id, context.to_int, may_block ? 1 : 0) != 0
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def g_main_context_iteration(context, may_block)
        PLATFORM_LOCK.lock
        begin
          return __g_main_context_iteration(context, may_block)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1pending, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __g_main_context_pending(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1pending, JNI.env, self.jni_id, context.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def g_main_context_pending(context)
        PLATFORM_LOCK.lock
        begin
          return __g_main_context_pending(context)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1get_1poll_1func, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __g_main_context_get_poll_func(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1get_1poll_1func, JNI.env, self.jni_id, context.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def g_main_context_get_poll_func(context)
        PLATFORM_LOCK.lock
        begin
          return __g_main_context_get_poll_func(context)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1prepare, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      def __g_main_context_prepare(context, priority)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1prepare, JNI.env, self.jni_id, context.to_int, priority.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      def g_main_context_prepare(context, priority)
        PLATFORM_LOCK.lock
        begin
          return __g_main_context_prepare(context, priority)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1query, [:pointer, :long, :int32, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
      # long
      # long
      def __g_main_context_query(context, max_priority, timeout_, fds, n_fds)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1query, JNI.env, self.jni_id, context.to_int, max_priority.to_int, timeout_.jni_id, fds.to_int, n_fds.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
      # long
      # long
      def g_main_context_query(context, max_priority, timeout_, fds, n_fds)
        PLATFORM_LOCK.lock
        begin
          return __g_main_context_query(context, max_priority, timeout_, fds, n_fds)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1release, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __g_main_context_release(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1main_1context_1release, JNI.env, self.jni_id, context.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def g_main_context_release(context)
        PLATFORM_LOCK.lock
        begin
          __g_main_context_release(context)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS_g_1main_1context_1wakeup, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def g_main_context_wakeup(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS_g_1main_1context_1wakeup, JNI.env, self.jni_id, context.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1filename_1to_1utf8, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      # long
      # long
      def __g_filename_to_utf8(opsysstring, len, bytes_read, bytes_written, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1filename_1to_1utf8, JNI.env, self.jni_id, opsysstring.to_int, len.to_int, bytes_read.jni_id, bytes_written.jni_id, error.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      # long
      # long
      def g_filename_to_utf8(opsysstring, len, bytes_read, bytes_written, error)
        PLATFORM_LOCK.lock
        begin
          return __g_filename_to_utf8(opsysstring, len, bytes_read, bytes_written, error)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1filename_1to_1uri, [:pointer, :long, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      def __g_filename_to_uri(filename, hostname, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1filename_1to_1uri, JNI.env, self.jni_id, filename.to_int, hostname.to_int, error.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      def g_filename_to_uri(filename, hostname, error)
        PLATFORM_LOCK.lock
        begin
          return __g_filename_to_uri(filename, hostname, error)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1filename_1from_1utf8, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      # long
      # long
      def __g_filename_from_utf8(opsysstring, len, bytes_read, bytes_written, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1filename_1from_1utf8, JNI.env, self.jni_id, opsysstring.to_int, len.to_int, bytes_read.jni_id, bytes_written.jni_id, error.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      # long
      # long
      def g_filename_from_utf8(opsysstring, len, bytes_read, bytes_written, error)
        PLATFORM_LOCK.lock
        begin
          return __g_filename_from_utf8(opsysstring, len, bytes_read, bytes_written, error)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1filename_1from_1uri, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      def __g_filename_from_uri(uri, hostname, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1filename_1from_1uri, JNI.env, self.jni_id, uri.to_int, hostname.jni_id, error.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      def g_filename_from_uri(uri, hostname, error)
        PLATFORM_LOCK.lock
        begin
          return __g_filename_from_uri(uri, hostname, error)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __g_free(mem)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1free, JNI.env, self.jni_id, mem.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def g_free(mem)
        PLATFORM_LOCK.lock
        begin
          __g_free(mem)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1idle_1add, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __g_idle_add(function, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1idle_1add, JNI.env, self.jni_id, function.to_int, data.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def g_idle_add(function, data)
        PLATFORM_LOCK.lock
        begin
          return __g_idle_add(function, data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1append, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __g_list_append(list, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1append, JNI.env, self.jni_id, list.to_int, data.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def g_list_append(list, data)
        PLATFORM_LOCK.lock
        begin
          return __g_list_append(list, data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1data, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __g_list_data(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1data, JNI.env, self.jni_id, list.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def g_list_data(list)
        PLATFORM_LOCK.lock
        begin
          return __g_list_data(list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __g_list_free(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1free, JNI.env, self.jni_id, list.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def g_list_free(list)
        PLATFORM_LOCK.lock
        begin
          __g_list_free(list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1free_11, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __g_list_free_1(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1free_11, JNI.env, self.jni_id, list.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def g_list_free_1(list)
        PLATFORM_LOCK.lock
        begin
          __g_list_free_1(list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1length, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __g_list_length(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1length, JNI.env, self.jni_id, list.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def g_list_length(list)
        PLATFORM_LOCK.lock
        begin
          return __g_list_length(list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1set_1next, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __g_list_set_next(list, llist)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1set_1next, JNI.env, self.jni_id, list.to_int, llist.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def g_list_set_next(list, llist)
        PLATFORM_LOCK.lock
        begin
          __g_list_set_next(list, llist)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1next, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __g_list_next(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1next, JNI.env, self.jni_id, list.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def g_list_next(list)
        PLATFORM_LOCK.lock
        begin
          return __g_list_next(list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1nth, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __g_list_nth(list, n)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1nth, JNI.env, self.jni_id, list.to_int, n.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def g_list_nth(list, n)
        PLATFORM_LOCK.lock
        begin
          return __g_list_nth(list, n)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1nth_1data, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __g_list_nth_data(list, n)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1nth_1data, JNI.env, self.jni_id, list.to_int, n.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def g_list_nth_data(list, n)
        PLATFORM_LOCK.lock
        begin
          return __g_list_nth_data(list, n)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1prepend, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __g_list_prepend(list, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1prepend, JNI.env, self.jni_id, list.to_int, data.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def g_list_prepend(list, data)
        PLATFORM_LOCK.lock
        begin
          return __g_list_prepend(list, data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1set_1previous, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __g_list_set_previous(list, llist)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1set_1previous, JNI.env, self.jni_id, list.to_int, llist.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def g_list_set_previous(list, llist)
        PLATFORM_LOCK.lock
        begin
          __g_list_set_previous(list, llist)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1previous, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __g_list_previous(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1previous, JNI.env, self.jni_id, list.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def g_list_previous(list)
        PLATFORM_LOCK.lock
        begin
          return __g_list_previous(list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1remove_1link, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __g_list_remove_link(list, link)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1remove_1link, JNI.env, self.jni_id, list.to_int, link.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def g_list_remove_link(list, link)
        PLATFORM_LOCK.lock
        begin
          return __g_list_remove_link(list, link)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1reverse, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __g_list_reverse(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1list_1reverse, JNI.env, self.jni_id, list.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def g_list_reverse(list)
        PLATFORM_LOCK.lock
        begin
          return __g_list_reverse(list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1locale_1from_1utf8, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      # long
      # long
      def __g_locale_from_utf8(utf8string, len, bytes_read, bytes_written, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1locale_1from_1utf8, JNI.env, self.jni_id, utf8string.to_int, len.to_int, bytes_read.jni_id, bytes_written.jni_id, error.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      # long
      # long
      def g_locale_from_utf8(utf8string, len, bytes_read, bytes_written, error)
        PLATFORM_LOCK.lock
        begin
          return __g_locale_from_utf8(utf8string, len, bytes_read, bytes_written, error)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1locale_1to_1utf8, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      # long
      # long
      def __g_locale_to_utf8(opsysstring, len, bytes_read, bytes_written, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1locale_1to_1utf8, JNI.env, self.jni_id, opsysstring.to_int, len.to_int, bytes_read.jni_id, bytes_written.jni_id, error.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      # long
      # long
      def g_locale_to_utf8(opsysstring, len, bytes_read, bytes_written, error)
        PLATFORM_LOCK.lock
        begin
          return __g_locale_to_utf8(opsysstring, len, bytes_read, bytes_written, error)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1log_1default_1handler, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __g_log_default_handler(log_domain, log_levels, message, unused_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1log_1default_1handler, JNI.env, self.jni_id, log_domain.to_int, log_levels.to_int, message.to_int, unused_data.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def g_log_default_handler(log_domain, log_levels, message, unused_data)
        PLATFORM_LOCK.lock
        begin
          __g_log_default_handler(log_domain, log_levels, message, unused_data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1log_1remove_1handler, [:pointer, :long, :long, :int32], :void
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      def __g_log_remove_handler(log_domain, handler_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1log_1remove_1handler, JNI.env, self.jni_id, log_domain.jni_id, handler_id.to_int)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      def g_log_remove_handler(log_domain, handler_id)
        PLATFORM_LOCK.lock
        begin
          __g_log_remove_handler(log_domain, handler_id)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1log_1set_1handler, [:pointer, :long, :long, :int32, :int32, :int32], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __g_log_set_handler(log_domain, log_levels, log_func, user_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1log_1set_1handler, JNI.env, self.jni_id, log_domain.jni_id, log_levels.to_int, log_func.to_int, user_data.to_int)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def g_log_set_handler(log_domain, log_levels, log_func, user_data)
        PLATFORM_LOCK.lock
        begin
          return __g_log_set_handler(log_domain, log_levels, log_func, user_data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1malloc, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __g_malloc(size)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1malloc, JNI.env, self.jni_id, size.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def g_malloc(size)
        PLATFORM_LOCK.lock
        begin
          return __g_malloc(size)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1get, [:pointer, :long, :int32, :long, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int), ::Java::Int] }
      # long
      # long
      def __g_object_get(object, first_property_name, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1get, JNI.env, self.jni_id, object.to_int, first_property_name.jni_id, value.jni_id, terminator.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int), ::Java::Int] }
      # long
      # long
      def g_object_get(object, first_property_name, value, terminator)
        PLATFORM_LOCK.lock
        begin
          __g_object_get(object, first_property_name, value, terminator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1get_1qdata, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __g_object_get_qdata(object, quark)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1get_1qdata, JNI.env, self.jni_id, object.to_int, quark.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def g_object_get_qdata(object, quark)
        PLATFORM_LOCK.lock
        begin
          return __g_object_get_qdata(object, quark)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1new, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __g_object_new(type, first_property_name)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1new, JNI.env, self.jni_id, type.to_int, first_property_name.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def g_object_new(type, first_property_name)
        PLATFORM_LOCK.lock
        begin
          return __g_object_new(type, first_property_name)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1ref, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __g_object_ref(object)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1ref, JNI.env, self.jni_id, object.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def g_object_ref(object)
        PLATFORM_LOCK.lock
        begin
          return __g_object_ref(object)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set__I_3BZI, [:pointer, :long, :int32, :long, :int8, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Boolean, ::Java::Int] }
      # long
      # long
      def __g_object_set(object, first_property_name, data, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set__I_3BZI, JNI.env, self.jni_id, object.to_int, first_property_name.jni_id, data ? 1 : 0, terminator.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Boolean, ::Java::Int] }
      # long
      # long
      def g_object_set(object, first_property_name, data, terminator)
        PLATFORM_LOCK.lock
        begin
          __g_object_set(object, first_property_name, data, terminator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set__I_3BL#{GdkColor.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), GdkColor, ::Java::Int] }
      # long
      # long
      def __g_object_set(object, first_property_name, data, terminator)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set__I_3BL#{GdkColor.jni_name}_2I".to_sym, JNI.env, self.jni_id, object.to_int, first_property_name.jni_id, data.jni_id, terminator.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), GdkColor, ::Java::Int] }
      # long
      # long
      def g_object_set(object, first_property_name, data, terminator)
        PLATFORM_LOCK.lock
        begin
          __g_object_set(object, first_property_name, data, terminator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set__I_3BII, [:pointer, :long, :int32, :long, :int32, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # long
      # long
      def __g_object_set(object, first_property_name, data, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set__I_3BII, JNI.env, self.jni_id, object.to_int, first_property_name.jni_id, data.to_int, terminator.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # long
      # long
      def g_object_set(object, first_property_name, data, terminator)
        PLATFORM_LOCK.lock
        begin
          __g_object_set(object, first_property_name, data, terminator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set__I_3BXfloatXI, [:pointer, :long, :int32, :long, :float, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Float, ::Java::Int] }
      # long
      # long
      def __g_object_set(object, first_property_name, data, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set__I_3BXfloatXI, JNI.env, self.jni_id, object.to_int, first_property_name.jni_id, data, terminator.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Float, ::Java::Int] }
      # long
      # long
      def g_object_set(object, first_property_name, data, terminator)
        PLATFORM_LOCK.lock
        begin
          __g_object_set(object, first_property_name, data, terminator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set__I_3BJI, [:pointer, :long, :int32, :long, :int64, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Long, ::Java::Int] }
      # long
      # long
      def __g_object_set(object, first_property_name, data, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set__I_3BJI, JNI.env, self.jni_id, object.to_int, first_property_name.jni_id, data.to_int, terminator.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Long, ::Java::Int] }
      # long
      # long
      def g_object_set(object, first_property_name, data, terminator)
        PLATFORM_LOCK.lock
        begin
          __g_object_set(object, first_property_name, data, terminator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set_1qdata, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __g_object_set_qdata(object, quark, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1set_1qdata, JNI.env, self.jni_id, object.to_int, quark.to_int, data.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def g_object_set_qdata(object, quark, data)
        PLATFORM_LOCK.lock
        begin
          __g_object_set_qdata(object, quark, data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1unref, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __g_object_unref(object)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1object_1unref, JNI.env, self.jni_id, object.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def g_object_unref(object)
        PLATFORM_LOCK.lock
        begin
          __g_object_unref(object)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1quark_1from_1string, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __g_quark_from_string(string)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1quark_1from_1string, JNI.env, self.jni_id, string.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def g_quark_from_string(string)
        PLATFORM_LOCK.lock
        begin
          return __g_quark_from_string(string)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1set_1prgname, [:pointer, :long, :long], :void
      typesig { [Array.typed(::Java::Byte)] }
      def __g_set_prgname(prgname)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1set_1prgname, JNI.env, self.jni_id, prgname.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def g_set_prgname(prgname)
        PLATFORM_LOCK.lock
        begin
          __g_set_prgname(prgname)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1connect, [:pointer, :long, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __g_signal_connect(instance, detailed_signal, proc, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1connect, JNI.env, self.jni_id, instance.to_int, detailed_signal.jni_id, proc.to_int, data.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def g_signal_connect(instance, detailed_signal, proc, data)
        PLATFORM_LOCK.lock
        begin
          return __g_signal_connect(instance, detailed_signal, proc, data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1connect_1closure, [:pointer, :long, :int32, :long, :int32, :int8], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def __g_signal_connect_closure(instance, detailed_signal, closure, after)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1connect_1closure, JNI.env, self.jni_id, instance.to_int, detailed_signal.jni_id, closure.to_int, after ? 1 : 0)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def g_signal_connect_closure(instance, detailed_signal, closure, after)
        PLATFORM_LOCK.lock
        begin
          return __g_signal_connect_closure(instance, detailed_signal, closure, after)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1connect_1closure_1by_1id, [:pointer, :long, :int32, :int32, :int32, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def __g_signal_connect_closure_by_id(instance, signal_id, detail, closure, after)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1connect_1closure_1by_1id, JNI.env, self.jni_id, instance.to_int, signal_id.to_int, detail.to_int, closure.to_int, after ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def g_signal_connect_closure_by_id(instance, signal_id, detail, closure, after)
        PLATFORM_LOCK.lock
        begin
          return __g_signal_connect_closure_by_id(instance, signal_id, detail, closure, after)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1connect_1after, [:pointer, :long, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __g_signal_connect_after(instance, detailed_signal, proc, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1connect_1after, JNI.env, self.jni_id, instance.to_int, detailed_signal.jni_id, proc.to_int, data.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def g_signal_connect_after(instance, detailed_signal, proc, data)
        PLATFORM_LOCK.lock
        begin
          return __g_signal_connect_after(instance, detailed_signal, proc, data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1emit_1by_1name__I_3B, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def __g_signal_emit_by_name(instance, detailed_signal)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1emit_1by_1name__I_3B, JNI.env, self.jni_id, instance.to_int, detailed_signal.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def g_signal_emit_by_name(instance, detailed_signal)
        PLATFORM_LOCK.lock
        begin
          __g_signal_emit_by_name(instance, detailed_signal)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1emit_1by_1name__I_3BI, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      # long
      def __g_signal_emit_by_name(instance, detailed_signal, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1emit_1by_1name__I_3BI, JNI.env, self.jni_id, instance.to_int, detailed_signal.jni_id, data.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      # long
      def g_signal_emit_by_name(instance, detailed_signal, data)
        PLATFORM_LOCK.lock
        begin
          __g_signal_emit_by_name(instance, detailed_signal, data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1emit_1by_1name__I_3BII, [:pointer, :long, :int32, :long, :int32, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __g_signal_emit_by_name(instance, detailed_signal, data1, data2)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1emit_1by_1name__I_3BII, JNI.env, self.jni_id, instance.to_int, detailed_signal.jni_id, data1.to_int, data2.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def g_signal_emit_by_name(instance, detailed_signal, data1, data2)
        PLATFORM_LOCK.lock
        begin
          __g_signal_emit_by_name(instance, detailed_signal, data1, data2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1emit_1by_1name__I_3B_3B, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def __g_signal_emit_by_name(instance, detailed_signal, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1emit_1by_1name__I_3B_3B, JNI.env, self.jni_id, instance.to_int, detailed_signal.jni_id, data.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def g_signal_emit_by_name(instance, detailed_signal, data)
        PLATFORM_LOCK.lock
        begin
          __g_signal_emit_by_name(instance, detailed_signal, data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1handler_1disconnect, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __g_signal_handler_disconnect(instance, handler_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1handler_1disconnect, JNI.env, self.jni_id, instance.to_int, handler_id.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def g_signal_handler_disconnect(instance, handler_id)
        PLATFORM_LOCK.lock
        begin
          __g_signal_handler_disconnect(instance, handler_id)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1handlers_1block_1matched, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def __g_signal_handlers_block_matched(instance, mask, signal_id, detail, closure, func, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1handlers_1block_1matched, JNI.env, self.jni_id, instance.to_int, mask.to_int, signal_id.to_int, detail.to_int, closure.to_int, func.to_int, data.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def g_signal_handlers_block_matched(instance, mask, signal_id, detail, closure, func, data)
        PLATFORM_LOCK.lock
        begin
          return __g_signal_handlers_block_matched(instance, mask, signal_id, detail, closure, func, data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1handlers_1disconnect_1matched, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def __g_signal_handlers_disconnect_matched(instance, mask, signal_id, detail, closure, func, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1handlers_1disconnect_1matched, JNI.env, self.jni_id, instance.to_int, mask.to_int, signal_id.to_int, detail.to_int, closure.to_int, func.to_int, data.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def g_signal_handlers_disconnect_matched(instance, mask, signal_id, detail, closure, func, data)
        PLATFORM_LOCK.lock
        begin
          return __g_signal_handlers_disconnect_matched(instance, mask, signal_id, detail, closure, func, data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1handlers_1unblock_1matched, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def __g_signal_handlers_unblock_matched(instance, mask, signal_id, detail, closure, func, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1handlers_1unblock_1matched, JNI.env, self.jni_id, instance.to_int, mask.to_int, signal_id.to_int, detail.to_int, closure.to_int, func.to_int, data.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def g_signal_handlers_unblock_matched(instance, mask, signal_id, detail, closure, func, data)
        PLATFORM_LOCK.lock
        begin
          return __g_signal_handlers_unblock_matched(instance, mask, signal_id, detail, closure, func, data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1lookup, [:pointer, :long, :long, :int32], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def __g_signal_lookup(name, itype)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1lookup, JNI.env, self.jni_id, name.jni_id, itype.to_int)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def g_signal_lookup(name, itype)
        PLATFORM_LOCK.lock
        begin
          return __g_signal_lookup(name, itype)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1stop_1emission_1by_1name, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def __g_signal_stop_emission_by_name(instance, detailed_signal)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1signal_1stop_1emission_1by_1name, JNI.env, self.jni_id, instance.to_int, detailed_signal.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def g_signal_stop_emission_by_name(instance, detailed_signal)
        PLATFORM_LOCK.lock
        begin
          __g_signal_stop_emission_by_name(instance, detailed_signal)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1source_1remove, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      # long
      def __g_source_remove(tag)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1source_1remove, JNI.env, self.jni_id, tag.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def g_source_remove(tag)
        PLATFORM_LOCK.lock
        begin
          return __g_source_remove(tag)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1slist_1data, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __g_slist_data(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1slist_1data, JNI.env, self.jni_id, list.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def g_slist_data(list)
        PLATFORM_LOCK.lock
        begin
          return __g_slist_data(list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1slist_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __g_slist_free(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1slist_1free, JNI.env, self.jni_id, list.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def g_slist_free(list)
        PLATFORM_LOCK.lock
        begin
          __g_slist_free(list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1slist_1next, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __g_slist_next(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1slist_1next, JNI.env, self.jni_id, list.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def g_slist_next(list)
        PLATFORM_LOCK.lock
        begin
          return __g_slist_next(list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1slist_1length, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __g_slist_length(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1slist_1length, JNI.env, self.jni_id, list.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def g_slist_length(list)
        PLATFORM_LOCK.lock
        begin
          return __g_slist_length(list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1strfreev, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __g_strfreev(string_array)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1strfreev, JNI.env, self.jni_id, string_array.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def g_strfreev(string_array)
        PLATFORM_LOCK.lock
        begin
          __g_strfreev(string_array)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1strtod, [:pointer, :long, :int32, :long], :double
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def __g_strtod(str, endptr)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1strtod, JNI.env, self.jni_id, str.to_int, endptr.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def g_strtod(str, endptr)
        PLATFORM_LOCK.lock
        begin
          return __g_strtod(str, endptr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1add_1interface_1static, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __g_type_add_interface_static(instance_type, interface_type, info)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1add_1interface_1static, JNI.env, self.jni_id, instance_type.to_int, interface_type.to_int, info.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def g_type_add_interface_static(instance_type, interface_type, info)
        PLATFORM_LOCK.lock
        begin
          __g_type_add_interface_static(instance_type, interface_type, info)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1class_1peek, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __g_type_class_peek(g_class)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1class_1peek, JNI.env, self.jni_id, g_class.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def g_type_class_peek(g_class)
        PLATFORM_LOCK.lock
        begin
          return __g_type_class_peek(g_class)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1class_1peek_1parent, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __g_type_class_peek_parent(g_class)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1class_1peek_1parent, JNI.env, self.jni_id, g_class.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def g_type_class_peek_parent(g_class)
        PLATFORM_LOCK.lock
        begin
          return __g_type_class_peek_parent(g_class)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1from_1name, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def __g_type_from_name(name)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1from_1name, JNI.env, self.jni_id, name.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def g_type_from_name(name)
        PLATFORM_LOCK.lock
        begin
          return __g_type_from_name(name)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1interface_1peek_1parent, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __g_type_interface_peek_parent(iface)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1interface_1peek_1parent, JNI.env, self.jni_id, iface.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def g_type_interface_peek_parent(iface)
        PLATFORM_LOCK.lock
        begin
          return __g_type_interface_peek_parent(iface)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1is_1a, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __g_type_is_a(type, is_a_type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1is_1a, JNI.env, self.jni_id, type.to_int, is_a_type.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def g_type_is_a(type, is_a_type)
        PLATFORM_LOCK.lock
        begin
          return __g_type_is_a(type, is_a_type)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1name, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __g_type_name(handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1name, JNI.env, self.jni_id, handle.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def g_type_name(handle)
        PLATFORM_LOCK.lock
        begin
          return __g_type_name(handle)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1parent, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __g_type_parent(type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1parent, JNI.env, self.jni_id, type.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def g_type_parent(type)
        PLATFORM_LOCK.lock
        begin
          return __g_type_parent(type)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1query, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __g_type_query(type, query)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1query, JNI.env, self.jni_id, type.to_int, query.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def g_type_query(type, query)
        PLATFORM_LOCK.lock
        begin
          __g_type_query(type, query)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1register_1static, [:pointer, :long, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __g_type_register_static(parent_type, type_name, info, flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1type_1register_1static, JNI.env, self.jni_id, parent_type.to_int, type_name.jni_id, info.to_int, flags.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def g_type_register_static(parent_type, type_name, info, flags)
        PLATFORM_LOCK.lock
        begin
          return __g_type_register_static(parent_type, type_name, info, flags)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1thread_1init, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __g_thread_init(vtable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1thread_1init, JNI.env, self.jni_id, vtable.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def g_thread_init(vtable)
        PLATFORM_LOCK.lock
        begin
          __g_thread_init(vtable)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1thread_1supported, [:pointer, :long], :int8
      typesig { [] }
      def __g_thread_supported
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1thread_1supported, JNI.env, self.jni_id) != 0
      end
      
      typesig { [] }
      def g_thread_supported
        PLATFORM_LOCK.lock
        begin
          return __g_thread_supported
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1utf16_1to_1utf8, [:pointer, :long, :long, :int32, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      # long
      def __g_utf16_to_utf8(str, len, items_read, items_written, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1utf16_1to_1utf8, JNI.env, self.jni_id, str.jni_id, len.to_int, items_read.jni_id, items_written.jni_id, error.jni_id)
      end
      
      typesig { [Array.typed(::Java::Char), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      # long
      def g_utf16_to_utf8(str, len, items_read, items_written, error)
        PLATFORM_LOCK.lock
        begin
          return __g_utf16_to_utf8(str, len, items_read, items_written, error)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1utf8_1offset_1to_1pointer, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __g_utf8_offset_to_pointer(str, offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1utf8_1offset_1to_1pointer, JNI.env, self.jni_id, str.to_int, offset.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def g_utf8_offset_to_pointer(str, offset)
        PLATFORM_LOCK.lock
        begin
          return __g_utf8_offset_to_pointer(str, offset)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1utf8_1pointer_1to_1offset, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __g_utf8_pointer_to_offset(str, pos)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1utf8_1pointer_1to_1offset, JNI.env, self.jni_id, str.to_int, pos.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def g_utf8_pointer_to_offset(str, pos)
        PLATFORM_LOCK.lock
        begin
          return __g_utf8_pointer_to_offset(str, pos)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1utf8_1strlen, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __g_utf8_strlen(str, max)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1utf8_1strlen, JNI.env, self.jni_id, str.to_int, max.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def g_utf8_strlen(str, max)
        PLATFORM_LOCK.lock
        begin
          return __g_utf8_strlen(str, max)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1utf8_1to_1utf16___3BI_3I_3I_3I, [:pointer, :long, :long, :int32, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      # long
      def __g_utf8_to_utf16(str, len, items_read, items_written, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1utf8_1to_1utf16___3BI_3I_3I_3I, JNI.env, self.jni_id, str.jni_id, len.to_int, items_read.jni_id, items_written.jni_id, error.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      # long
      def g_utf8_to_utf16(str, len, items_read, items_written, error)
        PLATFORM_LOCK.lock
        begin
          return __g_utf8_to_utf16(str, len, items_read, items_written, error)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1utf8_1to_1utf16__II_3I_3I_3I, [:pointer, :long, :int32, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      # long
      # long
      def __g_utf8_to_utf16(str, len, items_read, items_written, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1utf8_1to_1utf16__II_3I_3I_3I, JNI.env, self.jni_id, str.to_int, len.to_int, items_read.jni_id, items_written.jni_id, error.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      # long
      # long
      def g_utf8_to_utf16(str, len, items_read, items_written, error)
        PLATFORM_LOCK.lock
        begin
          return __g_utf8_to_utf16(str, len, items_read, items_written, error)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1g_1value_1peek_1pointer, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __g_value_peek_pointer(value)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1g_1value_1peek_1pointer, JNI.env, self.jni_id, value.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def g_value_peek_pointer(value)
        PLATFORM_LOCK.lock
        begin
          return __g_value_peek_pointer(value)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1atom_1intern, [:pointer, :long, :long, :int8], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Boolean] }
      # long
      def __gdk_atom_intern(atom_name, only_if_exists)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1atom_1intern, JNI.env, self.jni_id, atom_name.jni_id, only_if_exists ? 1 : 0)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Boolean] }
      # long
      def gdk_atom_intern(atom_name, only_if_exists)
        PLATFORM_LOCK.lock
        begin
          return __gdk_atom_intern(atom_name, only_if_exists)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1atom_1name, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gdk_atom_name(atom)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1atom_1name, JNI.env, self.jni_id, atom.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gdk_atom_name(atom)
        PLATFORM_LOCK.lock
        begin
          return __gdk_atom_name(atom)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1beep, [:pointer, :long], :void
      typesig { [] }
      def __gdk_beep
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1beep, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_beep
        PLATFORM_LOCK.lock
        begin
          __gdk_beep
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1bitmap_1create_1from_1data, [:pointer, :long, :int32, :long, :int32, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_bitmap_create_from_data(window, data, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1bitmap_1create_1from_1data, JNI.env, self.jni_id, window.to_int, data.jni_id, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_bitmap_create_from_data(window, data, width, height)
        PLATFORM_LOCK.lock
        begin
          return __gdk_bitmap_create_from_data(window, data, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cairo_1region, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_cairo_region(cairo, region)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cairo_1region, JNI.env, self.jni_id, cairo.to_int, region.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_cairo_region(cairo, region)
        PLATFORM_LOCK.lock
        begin
          __gdk_cairo_region(cairo, region)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cairo_1set_1source_1color, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkColor] }
      # long
      def __gdk_cairo_set_source_color(cairo, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cairo_1set_1source_1color, JNI.env, self.jni_id, cairo.to_int, color.jni_id)
      end
      
      typesig { [::Java::Int, GdkColor] }
      # long
      def gdk_cairo_set_source_color(cairo, color)
        PLATFORM_LOCK.lock
        begin
          __gdk_cairo_set_source_color(cairo, color)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1color_1white, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, GdkColor] }
      # long
      def __gdk_color_white(colormap, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1color_1white, JNI.env, self.jni_id, colormap.to_int, color.jni_id) != 0
      end
      
      typesig { [::Java::Int, GdkColor] }
      # long
      def gdk_color_white(colormap, color)
        PLATFORM_LOCK.lock
        begin
          return __gdk_color_white(colormap, color)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1colormap_1alloc_1color, [:pointer, :long, :int32, :long, :int8, :int8], :int8
      typesig { [::Java::Int, GdkColor, ::Java::Boolean, ::Java::Boolean] }
      # long
      def __gdk_colormap_alloc_color(colormap, color, writeable, best_match)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1colormap_1alloc_1color, JNI.env, self.jni_id, colormap.to_int, color.jni_id, writeable ? 1 : 0, best_match ? 1 : 0) != 0
      end
      
      typesig { [::Java::Int, GdkColor, ::Java::Boolean, ::Java::Boolean] }
      # long
      def gdk_colormap_alloc_color(colormap, color, writeable, best_match)
        PLATFORM_LOCK.lock
        begin
          return __gdk_colormap_alloc_color(colormap, color, writeable, best_match)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1colormap_1free_1colors, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, GdkColor, ::Java::Int] }
      # long
      def __gdk_colormap_free_colors(colormap, colors, ncolors)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1colormap_1free_1colors, JNI.env, self.jni_id, colormap.to_int, colors.jni_id, ncolors.to_int)
      end
      
      typesig { [::Java::Int, GdkColor, ::Java::Int] }
      # long
      def gdk_colormap_free_colors(colormap, colors, ncolors)
        PLATFORM_LOCK.lock
        begin
          __gdk_colormap_free_colors(colormap, colors, ncolors)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1colormap_1get_1system, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gdk_colormap_get_system
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1colormap_1get_1system, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gdk_colormap_get_system
        PLATFORM_LOCK.lock
        begin
          return __gdk_colormap_get_system
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1colormap_1query_1color, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      # long
      def __gdk_colormap_query_color(colormap, pixel, result)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1colormap_1query_1color, JNI.env, self.jni_id, colormap.to_int, pixel.to_int, result.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      # long
      def gdk_colormap_query_color(colormap, pixel, result)
        PLATFORM_LOCK.lock
        begin
          __gdk_colormap_query_color(colormap, pixel, result)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cursor_1destroy, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gdk_cursor_destroy(cursor)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cursor_1destroy, JNI.env, self.jni_id, cursor.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_cursor_destroy(cursor)
        PLATFORM_LOCK.lock
        begin
          __gdk_cursor_destroy(cursor)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cursor_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gdk_cursor_new(cursor_type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cursor_1new, JNI.env, self.jni_id, cursor_type.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gdk_cursor_new(cursor_type)
        PLATFORM_LOCK.lock
        begin
          return __gdk_cursor_new(cursor_type)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cursor_1new_1from_1pixmap, [:pointer, :long, :int32, :int32, :long, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, GdkColor, GdkColor, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gdk_cursor_new_from_pixmap(source, mask, fg, bg, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cursor_1new_1from_1pixmap, JNI.env, self.jni_id, source.to_int, mask.to_int, fg.jni_id, bg.jni_id, x.to_int, y.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor, GdkColor, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gdk_cursor_new_from_pixmap(source, mask, fg, bg, x, y)
        PLATFORM_LOCK.lock
        begin
          return __gdk_cursor_new_from_pixmap(source, mask, fg, bg, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cursor_1new_1from_1pixbuf, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gdk_cursor_new_from_pixbuf(display, pixbuf, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1cursor_1new_1from_1pixbuf, JNI.env, self.jni_id, display.to_int, pixbuf.to_int, x.to_int, y.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gdk_cursor_new_from_pixbuf(display, pixbuf, x, y)
        PLATFORM_LOCK.lock
        begin
          return __gdk_cursor_new_from_pixbuf(display, pixbuf, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1display_1get_1default, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gdk_display_get_default
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1display_1get_1default, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gdk_display_get_default
        PLATFORM_LOCK.lock
        begin
          return __gdk_display_get_default
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1display_1supports_1cursor_1color, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gdk_display_supports_cursor_color(display)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1display_1supports_1cursor_1color, JNI.env, self.jni_id, display.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_display_supports_cursor_color(display)
        PLATFORM_LOCK.lock
        begin
          return __gdk_display_supports_cursor_color(display)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1drag_1status, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gdk_drag_status(context, action, time)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1drag_1status, JNI.env, self.jni_id, context.to_int, action.to_int, time.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gdk_drag_status(context, action, time)
        PLATFORM_LOCK.lock
        begin
          __gdk_drag_status(context, action, time)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1arc, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_draw_arc(drawable, gc, filled, x, y, width, height, angle1, angle2)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1arc, JNI.env, self.jni_id, drawable.to_int, gc.to_int, filled.to_int, x.to_int, y.to_int, width.to_int, height.to_int, angle1.to_int, angle2.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_draw_arc(drawable, gc, filled, x, y, width, height, angle1, angle2)
        PLATFORM_LOCK.lock
        begin
          __gdk_draw_arc(drawable, gc, filled, x, y, width, height, angle1, angle2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1drawable, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gdk_draw_drawable(drawable, gc, src, xsrc, ysrc, xdest, ydest, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1drawable, JNI.env, self.jni_id, drawable.to_int, gc.to_int, src.to_int, xsrc.to_int, ysrc.to_int, xdest.to_int, ydest.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gdk_draw_drawable(drawable, gc, src, xsrc, ysrc, xdest, ydest, width, height)
        PLATFORM_LOCK.lock
        begin
          __gdk_draw_drawable(drawable, gc, src, xsrc, ysrc, xdest, ydest, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1image, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gdk_draw_image(drawable, gc, image, xsrc, ysrc, xdest, ydest, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1image, JNI.env, self.jni_id, drawable.to_int, gc.to_int, image.to_int, xsrc.to_int, ysrc.to_int, xdest.to_int, ydest.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gdk_draw_image(drawable, gc, image, xsrc, ysrc, xdest, ydest, width, height)
        PLATFORM_LOCK.lock
        begin
          __gdk_draw_image(drawable, gc, image, xsrc, ysrc, xdest, ydest, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1layout, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gdk_draw_layout(drawable, gc, x, y, layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1layout, JNI.env, self.jni_id, drawable.to_int, gc.to_int, x.to_int, y.to_int, layout.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gdk_draw_layout(drawable, gc, x, y, layout)
        PLATFORM_LOCK.lock
        begin
          __gdk_draw_layout(drawable, gc, x, y, layout)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1layout_1with_1colors, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :long, :long], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkColor, GdkColor] }
      # long
      # long
      # long
      def __gdk_draw_layout_with_colors(drawable, gc, x, y, layout, foreground, background)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1layout_1with_1colors, JNI.env, self.jni_id, drawable.to_int, gc.to_int, x.to_int, y.to_int, layout.to_int, foreground.jni_id, background.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkColor, GdkColor] }
      # long
      # long
      # long
      def gdk_draw_layout_with_colors(drawable, gc, x, y, layout, foreground, background)
        PLATFORM_LOCK.lock
        begin
          __gdk_draw_layout_with_colors(drawable, gc, x, y, layout, foreground, background)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1line, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_draw_line(drawable, gc, x1, y1, x2, y2)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1line, JNI.env, self.jni_id, drawable.to_int, gc.to_int, x1.to_int, y1.to_int, x2.to_int, y2.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_draw_line(drawable, gc, x1, y1, x2, y2)
        PLATFORM_LOCK.lock
        begin
          __gdk_draw_line(drawable, gc, x1, y1, x2, y2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1lines, [:pointer, :long, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # long
      # long
      def __gdk_draw_lines(drawable, gc, points, npoints)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1lines, JNI.env, self.jni_id, drawable.to_int, gc.to_int, points.jni_id, npoints.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # long
      # long
      def gdk_draw_lines(drawable, gc, points, npoints)
        PLATFORM_LOCK.lock
        begin
          __gdk_draw_lines(drawable, gc, points, npoints)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1pixbuf, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gdk_draw_pixbuf(drawable, gc, pixbuf, xsrc, ysrc, xdest, ydest, width, height, dither, x_dither, y_dither)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1pixbuf, JNI.env, self.jni_id, drawable.to_int, gc.to_int, pixbuf.to_int, xsrc.to_int, ysrc.to_int, xdest.to_int, ydest.to_int, width.to_int, height.to_int, dither.to_int, x_dither.to_int, y_dither.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gdk_draw_pixbuf(drawable, gc, pixbuf, xsrc, ysrc, xdest, ydest, width, height, dither, x_dither, y_dither)
        PLATFORM_LOCK.lock
        begin
          __gdk_draw_pixbuf(drawable, gc, pixbuf, xsrc, ysrc, xdest, ydest, width, height, dither, x_dither, y_dither)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1point, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_draw_point(drawable, gc, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1point, JNI.env, self.jni_id, drawable.to_int, gc.to_int, x.to_int, y.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_draw_point(drawable, gc, x, y)
        PLATFORM_LOCK.lock
        begin
          __gdk_draw_point(drawable, gc, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1polygon, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # long
      # long
      def __gdk_draw_polygon(drawable, gc, filled, points, npoints)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1polygon, JNI.env, self.jni_id, drawable.to_int, gc.to_int, filled.to_int, points.jni_id, npoints.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # long
      # long
      def gdk_draw_polygon(drawable, gc, filled, points, npoints)
        PLATFORM_LOCK.lock
        begin
          __gdk_draw_polygon(drawable, gc, filled, points, npoints)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1rectangle, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_draw_rectangle(drawable, gc, filled, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1draw_1rectangle, JNI.env, self.jni_id, drawable.to_int, gc.to_int, filled.to_int, x.to_int, y.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_draw_rectangle(drawable, gc, filled, x, y, width, height)
        PLATFORM_LOCK.lock
        begin
          __gdk_draw_rectangle(drawable, gc, filled, x, y, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1drawable_1get_1depth, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gdk_drawable_get_depth(drawable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1drawable_1get_1depth, JNI.env, self.jni_id, drawable.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_drawable_get_depth(drawable)
        PLATFORM_LOCK.lock
        begin
          return __gdk_drawable_get_depth(drawable)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1drawable_1get_1image, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_drawable_get_image(drawable, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1drawable_1get_1image, JNI.env, self.jni_id, drawable.to_int, x.to_int, y.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_drawable_get_image(drawable, x, y, width, height)
        PLATFORM_LOCK.lock
        begin
          return __gdk_drawable_get_image(drawable, x, y, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1drawable_1get_1size, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def __gdk_drawable_get_size(drawable, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1drawable_1get_1size, JNI.env, self.jni_id, drawable.to_int, width.jni_id, height.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def gdk_drawable_get_size(drawable, width, height)
        PLATFORM_LOCK.lock
        begin
          __gdk_drawable_get_size(drawable, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1drawable_1get_1visible_1region, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gdk_drawable_get_visible_region(drawable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1drawable_1get_1visible_1region, JNI.env, self.jni_id, drawable.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gdk_drawable_get_visible_region(drawable)
        PLATFORM_LOCK.lock
        begin
          return __gdk_drawable_get_visible_region(drawable)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1copy, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gdk_event_copy(event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1copy, JNI.env, self.jni_id, event.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gdk_event_copy(event)
        PLATFORM_LOCK.lock
        begin
          return __gdk_event_copy(event)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gdk_event_free(event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1free, JNI.env, self.jni_id, event.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_event_free(event)
        PLATFORM_LOCK.lock
        begin
          __gdk_event_free(event)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gdk_event_get
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gdk_event_get
        PLATFORM_LOCK.lock
        begin
          return __gdk_event_get
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get_1root_1coords, [:pointer, :long, :int32, :long, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      # long
      def __gdk_event_get_root_coords(event, px, py)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get_1root_1coords, JNI.env, self.jni_id, event.to_int, px.jni_id, py.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      # long
      def gdk_event_get_root_coords(event, px, py)
        PLATFORM_LOCK.lock
        begin
          return __gdk_event_get_root_coords(event, px, py)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get_1coords, [:pointer, :long, :int32, :long, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      # long
      def __gdk_event_get_coords(event, px, py)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get_1coords, JNI.env, self.jni_id, event.to_int, px.jni_id, py.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Double), Array.typed(::Java::Double)] }
      # long
      def gdk_event_get_coords(event, px, py)
        PLATFORM_LOCK.lock
        begin
          return __gdk_event_get_coords(event, px, py)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get_1graphics_1expose, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gdk_event_get_graphics_expose(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get_1graphics_1expose, JNI.env, self.jni_id, window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gdk_event_get_graphics_expose(window)
        PLATFORM_LOCK.lock
        begin
          return __gdk_event_get_graphics_expose(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get_1state, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      def __gdk_event_get_state(event, pmod)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get_1state, JNI.env, self.jni_id, event.to_int, pmod.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      def gdk_event_get_state(event, pmod)
        PLATFORM_LOCK.lock
        begin
          return __gdk_event_get_state(event, pmod)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get_1time, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gdk_event_get_time(event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1get_1time, JNI.env, self.jni_id, event.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_event_get_time(event)
        PLATFORM_LOCK.lock
        begin
          return __gdk_event_get_time(event)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1handler_1set, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gdk_event_handler_set(func, data, notify)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1handler_1set, JNI.env, self.jni_id, func.to_int, data.to_int, notify.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gdk_event_handler_set(func, data, notify)
        PLATFORM_LOCK.lock
        begin
          __gdk_event_handler_set(func, data, notify)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gdk_event_new(type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1new, JNI.env, self.jni_id, type.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_event_new(type)
        PLATFORM_LOCK.lock
        begin
          return __gdk_event_new(type)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1peek, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gdk_event_peek
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1peek, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gdk_event_peek
        PLATFORM_LOCK.lock
        begin
          return __gdk_event_peek
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1put, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gdk_event_put(event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1event_1put, JNI.env, self.jni_id, event.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_event_put(event)
        PLATFORM_LOCK.lock
        begin
          __gdk_event_put(event)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1error_1trap_1push, [:pointer, :long], :void
      typesig { [] }
      def __gdk_error_trap_push
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1error_1trap_1push, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_error_trap_push
        PLATFORM_LOCK.lock
        begin
          __gdk_error_trap_push
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1error_1trap_1pop, [:pointer, :long], :int32
      typesig { [] }
      def __gdk_error_trap_pop
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1error_1trap_1pop, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_error_trap_pop
        PLATFORM_LOCK.lock
        begin
          return __gdk_error_trap_pop
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1flush, [:pointer, :long], :void
      typesig { [] }
      def __gdk_flush
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1flush, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_flush
        PLATFORM_LOCK.lock
        begin
          __gdk_flush
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1free_1text_1list, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gdk_free_text_list(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1free_1text_1list, JNI.env, self.jni_id, list.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_free_text_list(list)
        PLATFORM_LOCK.lock
        begin
          __gdk_free_text_list(list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1get_1values, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkGCValues] }
      # long
      def __gdk_gc_get_values(gc, values)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1get_1values, JNI.env, self.jni_id, gc.to_int, values.jni_id)
      end
      
      typesig { [::Java::Int, GdkGCValues] }
      # long
      def gdk_gc_get_values(gc, values)
        PLATFORM_LOCK.lock
        begin
          __gdk_gc_get_values(gc, values)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gdk_gc_new(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1new, JNI.env, self.jni_id, window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gdk_gc_new(window)
        PLATFORM_LOCK.lock
        begin
          return __gdk_gc_new(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1background, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkColor] }
      # long
      def __gdk_gc_set_background(gc, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1background, JNI.env, self.jni_id, gc.to_int, color.jni_id)
      end
      
      typesig { [::Java::Int, GdkColor] }
      # long
      def gdk_gc_set_background(gc, color)
        PLATFORM_LOCK.lock
        begin
          __gdk_gc_set_background(gc, color)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1clip_1mask, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_gc_set_clip_mask(gc, mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1clip_1mask, JNI.env, self.jni_id, gc.to_int, mask.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_gc_set_clip_mask(gc, mask)
        PLATFORM_LOCK.lock
        begin
          __gdk_gc_set_clip_mask(gc, mask)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1clip_1origin, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gdk_gc_set_clip_origin(gc, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1clip_1origin, JNI.env, self.jni_id, gc.to_int, x.to_int, y.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gdk_gc_set_clip_origin(gc, x, y)
        PLATFORM_LOCK.lock
        begin
          __gdk_gc_set_clip_origin(gc, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1clip_1rectangle, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkRectangle] }
      # long
      def __gdk_gc_set_clip_rectangle(gc, rectangle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1clip_1rectangle, JNI.env, self.jni_id, gc.to_int, rectangle.jni_id)
      end
      
      typesig { [::Java::Int, GdkRectangle] }
      # long
      def gdk_gc_set_clip_rectangle(gc, rectangle)
        PLATFORM_LOCK.lock
        begin
          __gdk_gc_set_clip_rectangle(gc, rectangle)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1clip_1region, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_gc_set_clip_region(gc, region)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1clip_1region, JNI.env, self.jni_id, gc.to_int, region.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_gc_set_clip_region(gc, region)
        PLATFORM_LOCK.lock
        begin
          __gdk_gc_set_clip_region(gc, region)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1dashes, [:pointer, :long, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def __gdk_gc_set_dashes(gc, dash_offset, dash_list, n)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1dashes, JNI.env, self.jni_id, gc.to_int, dash_offset.to_int, dash_list.jni_id, n.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def gdk_gc_set_dashes(gc, dash_offset, dash_list, n)
        PLATFORM_LOCK.lock
        begin
          __gdk_gc_set_dashes(gc, dash_offset, dash_list, n)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1exposures, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gdk_gc_set_exposures(gc, exposures)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1exposures, JNI.env, self.jni_id, gc.to_int, exposures ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gdk_gc_set_exposures(gc, exposures)
        PLATFORM_LOCK.lock
        begin
          __gdk_gc_set_exposures(gc, exposures)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1fill, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gdk_gc_set_fill(gc, fill)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1fill, JNI.env, self.jni_id, gc.to_int, fill.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gdk_gc_set_fill(gc, fill)
        PLATFORM_LOCK.lock
        begin
          __gdk_gc_set_fill(gc, fill)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1foreground, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkColor] }
      # long
      def __gdk_gc_set_foreground(gc, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1foreground, JNI.env, self.jni_id, gc.to_int, color.jni_id)
      end
      
      typesig { [::Java::Int, GdkColor] }
      # long
      def gdk_gc_set_foreground(gc, color)
        PLATFORM_LOCK.lock
        begin
          __gdk_gc_set_foreground(gc, color)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1function, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_gc_set_function(gc, function)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1function, JNI.env, self.jni_id, gc.to_int, function.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_gc_set_function(gc, function)
        PLATFORM_LOCK.lock
        begin
          __gdk_gc_set_function(gc, function)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1line_1attributes, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gdk_gc_set_line_attributes(gc, line_width, line_style, cap_style, join_style)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1line_1attributes, JNI.env, self.jni_id, gc.to_int, line_width.to_int, line_style.to_int, cap_style.to_int, join_style.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gdk_gc_set_line_attributes(gc, line_width, line_style, cap_style, join_style)
        PLATFORM_LOCK.lock
        begin
          __gdk_gc_set_line_attributes(gc, line_width, line_style, cap_style, join_style)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1stipple, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_gc_set_stipple(gc, stipple)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1stipple, JNI.env, self.jni_id, gc.to_int, stipple.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_gc_set_stipple(gc, stipple)
        PLATFORM_LOCK.lock
        begin
          __gdk_gc_set_stipple(gc, stipple)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1subwindow, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_gc_set_subwindow(gc, mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1subwindow, JNI.env, self.jni_id, gc.to_int, mode.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_gc_set_subwindow(gc, mode)
        PLATFORM_LOCK.lock
        begin
          __gdk_gc_set_subwindow(gc, mode)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1tile, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_gc_set_tile(gc, tile)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1tile, JNI.env, self.jni_id, gc.to_int, tile.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_gc_set_tile(gc, tile)
        PLATFORM_LOCK.lock
        begin
          __gdk_gc_set_tile(gc, tile)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1ts_1origin, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gdk_gc_set_ts_origin(gc, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1ts_1origin, JNI.env, self.jni_id, gc.to_int, x.to_int, y.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gdk_gc_set_ts_origin(gc, x, y)
        PLATFORM_LOCK.lock
        begin
          __gdk_gc_set_ts_origin(gc, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1values, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, GdkGCValues, ::Java::Int] }
      # long
      def __gdk_gc_set_values(gc, values, values_mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1gc_1set_1values, JNI.env, self.jni_id, gc.to_int, values.jni_id, values_mask.to_int)
      end
      
      typesig { [::Java::Int, GdkGCValues, ::Java::Int] }
      # long
      def gdk_gc_set_values(gc, values, values_mask)
        PLATFORM_LOCK.lock
        begin
          __gdk_gc_set_values(gc, values, values_mask)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1keyboard_1ungrab, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gdk_keyboard_ungrab(time)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1keyboard_1ungrab, JNI.env, self.jni_id, time.to_int)
      end
      
      typesig { [::Java::Int] }
      def gdk_keyboard_ungrab(time)
        PLATFORM_LOCK.lock
        begin
          __gdk_keyboard_ungrab(time)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1keymap_1get_1default, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gdk_keymap_get_default
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1keymap_1get_1default, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gdk_keymap_get_default
        PLATFORM_LOCK.lock
        begin
          return __gdk_keymap_get_default
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1keymap_1translate_1keyboard_1state, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :long, :long, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def __gdk_keymap_translate_keyboard_state(keymap, hardware_keycode, state, group, keyval, effective_group, level, consumed_modifiers)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1keymap_1translate_1keyboard_1state, JNI.env, self.jni_id, keymap.to_int, hardware_keycode.to_int, state.to_int, group.to_int, keyval.jni_id, effective_group.jni_id, level.jni_id, consumed_modifiers.jni_id) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def gdk_keymap_translate_keyboard_state(keymap, hardware_keycode, state, group, keyval, effective_group, level, consumed_modifiers)
        PLATFORM_LOCK.lock
        begin
          return __gdk_keymap_translate_keyboard_state(keymap, hardware_keycode, state, group, keyval, effective_group, level, consumed_modifiers)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1keyval_1to_1lower, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_keyval_to_lower(keyval)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1keyval_1to_1lower, JNI.env, self.jni_id, keyval.to_int)
      end
      
      typesig { [::Java::Int] }
      def gdk_keyval_to_lower(keyval)
        PLATFORM_LOCK.lock
        begin
          return __gdk_keyval_to_lower(keyval)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1keyval_1to_1unicode, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_keyval_to_unicode(keyval)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1keyval_1to_1unicode, JNI.env, self.jni_id, keyval.to_int)
      end
      
      typesig { [::Java::Int] }
      def gdk_keyval_to_unicode(keyval)
        PLATFORM_LOCK.lock
        begin
          return __gdk_keyval_to_unicode(keyval)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pango_1context_1get, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gdk_pango_context_get
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pango_1context_1get, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gdk_pango_context_get
        PLATFORM_LOCK.lock
        begin
          return __gdk_pango_context_get
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pango_1context_1set_1colormap, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_pango_context_set_colormap(context, colormap)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pango_1context_1set_1colormap, JNI.env, self.jni_id, context.to_int, colormap.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_pango_context_set_colormap(context, colormap)
        PLATFORM_LOCK.lock
        begin
          __gdk_pango_context_set_colormap(context, colormap)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pango_1layout_1get_1clip_1region, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # long
      # long
      def __gdk_pango_layout_get_clip_region(layout, x_origin, y_origin, index_ranges, n_ranges)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pango_1layout_1get_1clip_1region, JNI.env, self.jni_id, layout.to_int, x_origin.to_int, y_origin.to_int, index_ranges.jni_id, n_ranges.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # long
      # long
      def gdk_pango_layout_get_clip_region(layout, x_origin, y_origin, index_ranges, n_ranges)
        PLATFORM_LOCK.lock
        begin
          return __gdk_pango_layout_get_clip_region(layout, x_origin, y_origin, index_ranges, n_ranges)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1copy_1area, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_pixbuf_copy_area(src_pixbuf, src_x, src_y, width, height, dest_pixbuf, dest_x, dest_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1copy_1area, JNI.env, self.jni_id, src_pixbuf.to_int, src_x.to_int, src_y.to_int, width.to_int, height.to_int, dest_pixbuf.to_int, dest_x.to_int, dest_y.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_pixbuf_copy_area(src_pixbuf, src_x, src_y, width, height, dest_pixbuf, dest_x, dest_y)
        PLATFORM_LOCK.lock
        begin
          __gdk_pixbuf_copy_area(src_pixbuf, src_x, src_y, width, height, dest_pixbuf, dest_x, dest_y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1from_1drawable, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def __gdk_pixbuf_get_from_drawable(dest, src, cmap, src_x, src_y, dest_x, dest_y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1from_1drawable, JNI.env, self.jni_id, dest.to_int, src.to_int, cmap.to_int, src_x.to_int, src_y.to_int, dest_x.to_int, dest_y.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def gdk_pixbuf_get_from_drawable(dest, src, cmap, src_x, src_y, dest_x, dest_y, width, height)
        PLATFORM_LOCK.lock
        begin
          return __gdk_pixbuf_get_from_drawable(dest, src, cmap, src_x, src_y, dest_x, dest_y, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1has_1alpha, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gdk_pixbuf_get_has_alpha(pixbuf)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1has_1alpha, JNI.env, self.jni_id, pixbuf.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_pixbuf_get_has_alpha(pixbuf)
        PLATFORM_LOCK.lock
        begin
          return __gdk_pixbuf_get_has_alpha(pixbuf)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1height, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gdk_pixbuf_get_height(pixbuf)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1height, JNI.env, self.jni_id, pixbuf.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_pixbuf_get_height(pixbuf)
        PLATFORM_LOCK.lock
        begin
          return __gdk_pixbuf_get_height(pixbuf)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1pixels, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gdk_pixbuf_get_pixels(pixbuf)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1pixels, JNI.env, self.jni_id, pixbuf.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gdk_pixbuf_get_pixels(pixbuf)
        PLATFORM_LOCK.lock
        begin
          return __gdk_pixbuf_get_pixels(pixbuf)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1rowstride, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gdk_pixbuf_get_rowstride(pixbuf)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1rowstride, JNI.env, self.jni_id, pixbuf.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_pixbuf_get_rowstride(pixbuf)
        PLATFORM_LOCK.lock
        begin
          return __gdk_pixbuf_get_rowstride(pixbuf)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1width, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gdk_pixbuf_get_width(pixbuf)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1get_1width, JNI.env, self.jni_id, pixbuf.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_pixbuf_get_width(pixbuf)
        PLATFORM_LOCK.lock
        begin
          return __gdk_pixbuf_get_width(pixbuf)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1loader_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gdk_pixbuf_loader_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1loader_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gdk_pixbuf_loader_new
        PLATFORM_LOCK.lock
        begin
          return __gdk_pixbuf_loader_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1loader_1close, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def __gdk_pixbuf_loader_close(loader, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1loader_1close, JNI.env, self.jni_id, loader.to_int, error.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def gdk_pixbuf_loader_close(loader, error)
        PLATFORM_LOCK.lock
        begin
          return __gdk_pixbuf_loader_close(loader, error)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1loader_1get_1pixbuf, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gdk_pixbuf_loader_get_pixbuf(loader)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1loader_1get_1pixbuf, JNI.env, self.jni_id, loader.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gdk_pixbuf_loader_get_pixbuf(loader)
        PLATFORM_LOCK.lock
        begin
          return __gdk_pixbuf_loader_get_pixbuf(loader)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1loader_1write, [:pointer, :long, :int32, :int32, :int32, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def __gdk_pixbuf_loader_write(loader, buffer, count, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1loader_1write, JNI.env, self.jni_id, loader.to_int, buffer.to_int, count.to_int, error.jni_id) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def gdk_pixbuf_loader_write(loader, buffer, count, error)
        PLATFORM_LOCK.lock
        begin
          return __gdk_pixbuf_loader_write(loader, buffer, count, error)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1new, [:pointer, :long, :int32, :int8, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gdk_pixbuf_new(colorspace, has_alpha, bits_per_sample, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1new, JNI.env, self.jni_id, colorspace.to_int, has_alpha ? 1 : 0, bits_per_sample.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gdk_pixbuf_new(colorspace, has_alpha, bits_per_sample, width, height)
        PLATFORM_LOCK.lock
        begin
          return __gdk_pixbuf_new(colorspace, has_alpha, bits_per_sample, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1new_1from_1file, [:pointer, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      # long
      # long
      def __gdk_pixbuf_new_from_file(filename, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1new_1from_1file, JNI.env, self.jni_id, filename.jni_id, error.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      # long
      # long
      def gdk_pixbuf_new_from_file(filename, error)
        PLATFORM_LOCK.lock
        begin
          return __gdk_pixbuf_new_from_file(filename, error)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1render_1to_1drawable, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gdk_pixbuf_render_to_drawable(pixbuf, drawable, gc, src_x, src_y, dest_x, dest_y, width, height, dither, x_dither, y_dither)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1render_1to_1drawable, JNI.env, self.jni_id, pixbuf.to_int, drawable.to_int, gc.to_int, src_x.to_int, src_y.to_int, dest_x.to_int, dest_y.to_int, width.to_int, height.to_int, dither.to_int, x_dither.to_int, y_dither.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gdk_pixbuf_render_to_drawable(pixbuf, drawable, gc, src_x, src_y, dest_x, dest_y, width, height, dither, x_dither, y_dither)
        PLATFORM_LOCK.lock
        begin
          __gdk_pixbuf_render_to_drawable(pixbuf, drawable, gc, src_x, src_y, dest_x, dest_y, width, height, dither, x_dither, y_dither)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1render_1to_1drawable_1alpha, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_pixbuf_render_to_drawable_alpha(pixbuf, drawable, src_x, src_y, dest_x, dest_y, width, height, alpha_mode, alpha_threshold, dither, x_dither, y_dither)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1render_1to_1drawable_1alpha, JNI.env, self.jni_id, pixbuf.to_int, drawable.to_int, src_x.to_int, src_y.to_int, dest_x.to_int, dest_y.to_int, width.to_int, height.to_int, alpha_mode.to_int, alpha_threshold.to_int, dither.to_int, x_dither.to_int, y_dither.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_pixbuf_render_to_drawable_alpha(pixbuf, drawable, src_x, src_y, dest_x, dest_y, width, height, alpha_mode, alpha_threshold, dither, x_dither, y_dither)
        PLATFORM_LOCK.lock
        begin
          __gdk_pixbuf_render_to_drawable_alpha(pixbuf, drawable, src_x, src_y, dest_x, dest_y, width, height, alpha_mode, alpha_threshold, dither, x_dither, y_dither)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1render_1pixmap_1and_1mask, [:pointer, :long, :int32, :long, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), ::Java::Int] }
      # long
      # long
      # long
      def __gdk_pixbuf_render_pixmap_and_mask(pixbuf, pixmap_return, mask_return, alpha_threshold)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1render_1pixmap_1and_1mask, JNI.env, self.jni_id, pixbuf.to_int, pixmap_return.jni_id, mask_return.jni_id, alpha_threshold.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), ::Java::Int] }
      # long
      # long
      # long
      def gdk_pixbuf_render_pixmap_and_mask(pixbuf, pixmap_return, mask_return, alpha_threshold)
        PLATFORM_LOCK.lock
        begin
          __gdk_pixbuf_render_pixmap_and_mask(pixbuf, pixmap_return, mask_return, alpha_threshold)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1save_1to_1buffer, [:pointer, :long, :int32, :long, :long, :long, :long, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Byte), Array.typed(::Java::Int), Array.typed(::Java::Byte)] }
      # long
      # long
      # long
      def __gdk_pixbuf_save_to_buffer(pixbuf, buffer, buffer_size, type, error, terminate)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1save_1to_1buffer, JNI.env, self.jni_id, pixbuf.to_int, buffer.jni_id, buffer_size.jni_id, type.jni_id, error.jni_id, terminate.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Byte), Array.typed(::Java::Int), Array.typed(::Java::Byte)] }
      # long
      # long
      # long
      def gdk_pixbuf_save_to_buffer(pixbuf, buffer, buffer_size, type, error, terminate)
        PLATFORM_LOCK.lock
        begin
          return __gdk_pixbuf_save_to_buffer(pixbuf, buffer, buffer_size, type, error, terminate)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1scale, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :double, :double, :double, :double, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Int] }
      # long
      # long
      def __gdk_pixbuf_scale(src, dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1scale, JNI.env, self.jni_id, src.to_int, dest.to_int, dest_x.to_int, dest_y.to_int, dest_width.to_int, dest_height.to_int, offset_x, offset_y, scale_x, scale_y, interp_type.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Int] }
      # long
      # long
      def gdk_pixbuf_scale(src, dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type)
        PLATFORM_LOCK.lock
        begin
          __gdk_pixbuf_scale(src, dest, dest_x, dest_y, dest_width, dest_height, offset_x, offset_y, scale_x, scale_y, interp_type)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1scale_1simple, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_pixbuf_scale_simple(src, dest_width, dest_height, interp_type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixbuf_1scale_1simple, JNI.env, self.jni_id, src.to_int, dest_width.to_int, dest_height.to_int, interp_type.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_pixbuf_scale_simple(src, dest_width, dest_height, interp_type)
        PLATFORM_LOCK.lock
        begin
          return __gdk_pixbuf_scale_simple(src, dest_width, dest_height, interp_type)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixmap_1new, [:pointer, :long, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_pixmap_new(window, width, height, depth)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pixmap_1new, JNI.env, self.jni_id, window.to_int, width.to_int, height.to_int, depth.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_pixmap_new(window, width, height, depth)
        PLATFORM_LOCK.lock
        begin
          return __gdk_pixmap_new(window, width, height, depth)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pointer_1grab, [:pointer, :long, :int32, :int8, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gdk_pointer_grab(window, owner_events, event_mask, confine_to, cursor, time)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pointer_1grab, JNI.env, self.jni_id, window.to_int, owner_events ? 1 : 0, event_mask.to_int, confine_to.to_int, cursor.to_int, time.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gdk_pointer_grab(window, owner_events, event_mask, confine_to, cursor, time)
        PLATFORM_LOCK.lock
        begin
          return __gdk_pointer_grab(window, owner_events, event_mask, confine_to, cursor, time)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pointer_1is_1grabbed, [:pointer, :long], :int8
      typesig { [] }
      def __gdk_pointer_is_grabbed
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pointer_1is_1grabbed, JNI.env, self.jni_id) != 0
      end
      
      typesig { [] }
      def gdk_pointer_is_grabbed
        PLATFORM_LOCK.lock
        begin
          return __gdk_pointer_is_grabbed
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pointer_1ungrab, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gdk_pointer_ungrab(time)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1pointer_1ungrab, JNI.env, self.jni_id, time.to_int)
      end
      
      typesig { [::Java::Int] }
      def gdk_pointer_ungrab(time)
        PLATFORM_LOCK.lock
        begin
          __gdk_pointer_ungrab(time)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1property_1get, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :long, :long, :long, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def __gdk_property_get(window, property, type, offset, length_, pdelete, actual_property_type, actual_format, actual_length, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1property_1get, JNI.env, self.jni_id, window.to_int, property.to_int, type.to_int, offset.to_int, length_.to_int, pdelete.to_int, actual_property_type.jni_id, actual_format.jni_id, actual_length.jni_id, data.jni_id) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def gdk_property_get(window, property, type, offset, length_, pdelete, actual_property_type, actual_format, actual_length, data)
        PLATFORM_LOCK.lock
        begin
          return __gdk_property_get(window, property, type, offset, length_, pdelete, actual_property_type, actual_format, actual_length, data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1destroy, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gdk_region_destroy(region)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1destroy, JNI.env, self.jni_id, region.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_region_destroy(region)
        PLATFORM_LOCK.lock
        begin
          __gdk_region_destroy(region)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1empty, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gdk_region_empty(region)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1empty, JNI.env, self.jni_id, region.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_region_empty(region)
        PLATFORM_LOCK.lock
        begin
          return __gdk_region_empty(region)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1get_1clipbox, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkRectangle] }
      # long
      def __gdk_region_get_clipbox(region, rectangle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1get_1clipbox, JNI.env, self.jni_id, region.to_int, rectangle.jni_id)
      end
      
      typesig { [::Java::Int, GdkRectangle] }
      # long
      def gdk_region_get_clipbox(region, rectangle)
        PLATFORM_LOCK.lock
        begin
          __gdk_region_get_clipbox(region, rectangle)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1get_1rectangles, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def __gdk_region_get_rectangles(region, rectangles, n_rectangles)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1get_1rectangles, JNI.env, self.jni_id, region.to_int, rectangles.jni_id, n_rectangles.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def gdk_region_get_rectangles(region, rectangles, n_rectangles)
        PLATFORM_LOCK.lock
        begin
          __gdk_region_get_rectangles(region, rectangles, n_rectangles)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1intersect, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_region_intersect(source1, source2)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1intersect, JNI.env, self.jni_id, source1.to_int, source2.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_region_intersect(source1, source2)
        PLATFORM_LOCK.lock
        begin
          __gdk_region_intersect(source1, source2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gdk_region_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gdk_region_new
        PLATFORM_LOCK.lock
        begin
          return __gdk_region_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1offset, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gdk_region_offset(region, dx, dy)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1offset, JNI.env, self.jni_id, region.to_int, dx.to_int, dy.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gdk_region_offset(region, dx, dy)
        PLATFORM_LOCK.lock
        begin
          __gdk_region_offset(region, dx, dy)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1point_1in, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gdk_region_point_in(region, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1point_1in, JNI.env, self.jni_id, region.to_int, x.to_int, y.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gdk_region_point_in(region, x, y)
        PLATFORM_LOCK.lock
        begin
          return __gdk_region_point_in(region, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1polygon, [:pointer, :long, :long, :int32, :int32], :int32
      typesig { [Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
      # long
      def __gdk_region_polygon(points, npoints, fill_rule)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1polygon, JNI.env, self.jni_id, points.jni_id, npoints.to_int, fill_rule.to_int)
      end
      
      typesig { [Array.typed(::Java::Int), ::Java::Int, ::Java::Int] }
      # long
      def gdk_region_polygon(points, npoints, fill_rule)
        PLATFORM_LOCK.lock
        begin
          return __gdk_region_polygon(points, npoints, fill_rule)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1rectangle, [:pointer, :long, :long], :int32
      typesig { [GdkRectangle] }
      # long
      def __gdk_region_rectangle(rectangle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1rectangle, JNI.env, self.jni_id, rectangle.jni_id)
      end
      
      typesig { [GdkRectangle] }
      # long
      def gdk_region_rectangle(rectangle)
        PLATFORM_LOCK.lock
        begin
          return __gdk_region_rectangle(rectangle)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1rect_1in, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, GdkRectangle] }
      # long
      # long
      def __gdk_region_rect_in(region, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1rect_1in, JNI.env, self.jni_id, region.to_int, rect.jni_id)
      end
      
      typesig { [::Java::Int, GdkRectangle] }
      # long
      # long
      def gdk_region_rect_in(region, rect)
        PLATFORM_LOCK.lock
        begin
          return __gdk_region_rect_in(region, rect)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1subtract, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_region_subtract(source1, source2)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1subtract, JNI.env, self.jni_id, source1.to_int, source2.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_region_subtract(source1, source2)
        PLATFORM_LOCK.lock
        begin
          __gdk_region_subtract(source1, source2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1union, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_region_union(source1, source2)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1union, JNI.env, self.jni_id, source1.to_int, source2.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_region_union(source1, source2)
        PLATFORM_LOCK.lock
        begin
          __gdk_region_union(source1, source2)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1union_1with_1rect, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkRectangle] }
      # long
      def __gdk_region_union_with_rect(region, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1region_1union_1with_1rect, JNI.env, self.jni_id, region.to_int, rect.jni_id)
      end
      
      typesig { [::Java::Int, GdkRectangle] }
      # long
      def gdk_region_union_with_rect(region, rect)
        PLATFORM_LOCK.lock
        begin
          __gdk_region_union_with_rect(region, rect)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1rgb_1init, [:pointer, :long], :void
      typesig { [] }
      def __gdk_rgb_init
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1rgb_1init, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_rgb_init
        PLATFORM_LOCK.lock
        begin
          __gdk_rgb_init
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1default, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gdk_screen_get_default
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1default, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gdk_screen_get_default
        PLATFORM_LOCK.lock
        begin
          return __gdk_screen_get_default
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1monitor_1at_1point, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gdk_screen_get_monitor_at_point(screen, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1monitor_1at_1point, JNI.env, self.jni_id, screen.to_int, x.to_int, y.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gdk_screen_get_monitor_at_point(screen, x, y)
        PLATFORM_LOCK.lock
        begin
          return __gdk_screen_get_monitor_at_point(screen, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1monitor_1at_1window, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_screen_get_monitor_at_window(screen, window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1monitor_1at_1window, JNI.env, self.jni_id, screen.to_int, window.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_screen_get_monitor_at_window(screen, window)
        PLATFORM_LOCK.lock
        begin
          return __gdk_screen_get_monitor_at_window(screen, window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1monitor_1geometry, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkRectangle] }
      # long
      def __gdk_screen_get_monitor_geometry(screen, monitor_num, dest)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1monitor_1geometry, JNI.env, self.jni_id, screen.to_int, monitor_num.to_int, dest.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkRectangle] }
      # long
      def gdk_screen_get_monitor_geometry(screen, monitor_num, dest)
        PLATFORM_LOCK.lock
        begin
          __gdk_screen_get_monitor_geometry(screen, monitor_num, dest)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1n_1monitors, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gdk_screen_get_n_monitors(screen)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1n_1monitors, JNI.env, self.jni_id, screen.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_screen_get_n_monitors(screen)
        PLATFORM_LOCK.lock
        begin
          return __gdk_screen_get_n_monitors(screen)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1number, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gdk_screen_get_number(screen)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1get_1number, JNI.env, self.jni_id, screen.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_screen_get_number(screen)
        PLATFORM_LOCK.lock
        begin
          return __gdk_screen_get_number(screen)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1height, [:pointer, :long], :int32
      typesig { [] }
      def __gdk_screen_height
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1height, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_screen_height
        PLATFORM_LOCK.lock
        begin
          return __gdk_screen_height
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1width, [:pointer, :long], :int32
      typesig { [] }
      def __gdk_screen_width
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1width, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_screen_width
        PLATFORM_LOCK.lock
        begin
          return __gdk_screen_width
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1width_1mm, [:pointer, :long], :int32
      typesig { [] }
      def __gdk_screen_width_mm
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1screen_1width_1mm, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_screen_width_mm
        PLATFORM_LOCK.lock
        begin
          return __gdk_screen_width_mm
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1set_1program_1class, [:pointer, :long, :long], :void
      typesig { [Array.typed(::Java::Byte)] }
      def __gdk_set_program_class(program_class)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1set_1program_1class, JNI.env, self.jni_id, program_class.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gdk_set_program_class(program_class)
        PLATFORM_LOCK.lock
        begin
          __gdk_set_program_class(program_class)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1utf8_1to_1compound_1text, [:pointer, :long, :long, :long, :long, :long, :long], :int8
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def __gdk_utf8_to_compound_text(str, encoding, format, ctext, length_)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1utf8_1to_1compound_1text, JNI.env, self.jni_id, str.jni_id, encoding.jni_id, format.jni_id, ctext.jni_id, length_.jni_id) != 0
      end
      
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def gdk_utf8_to_compound_text(str, encoding, format, ctext, length_)
        PLATFORM_LOCK.lock
        begin
          return __gdk_utf8_to_compound_text(str, encoding, format, ctext, length_)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1utf8_1to_1string_1target, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def __gdk_utf8_to_string_target(str)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1utf8_1to_1string_1target, JNI.env, self.jni_id, str.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def gdk_utf8_to_string_target(str)
        PLATFORM_LOCK.lock
        begin
          return __gdk_utf8_to_string_target(str)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1text_1property_1to_1utf8_1list, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def __gdk_text_property_to_utf8_list(encoding, format, text, length_, list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1text_1property_1to_1utf8_1list, JNI.env, self.jni_id, encoding.to_int, format.to_int, text.to_int, length_.to_int, list.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def gdk_text_property_to_utf8_list(encoding, format, text, length_, list)
        PLATFORM_LOCK.lock
        begin
          return __gdk_text_property_to_utf8_list(encoding, format, text, length_, list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltip_1trigger_1tooltip_1query, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_tooltip_trigger_tooltip_query(display)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltip_1trigger_1tooltip_1query, JNI.env, self.jni_id, display.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tooltip_trigger_tooltip_query(display)
        PLATFORM_LOCK.lock
        begin
          __gtk_tooltip_trigger_tooltip_query(display)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1unicode_1to_1keyval, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      def __gdk_unicode_to_keyval(wc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1unicode_1to_1keyval, JNI.env, self.jni_id, wc.to_int)
      end
      
      typesig { [::Java::Int] }
      def gdk_unicode_to_keyval(wc)
        PLATFORM_LOCK.lock
        begin
          return __gdk_unicode_to_keyval(wc)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1visual_1get_1system, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gdk_visual_get_system
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1visual_1get_1system, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gdk_visual_get_system
        PLATFORM_LOCK.lock
        begin
          return __gdk_visual_get_system
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1at_1pointer, [:pointer, :long, :long, :long], :int32
      typesig { [Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def __gdk_window_at_pointer(win_x, win_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1at_1pointer, JNI.env, self.jni_id, win_x.jni_id, win_y.jni_id)
      end
      
      typesig { [Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def gdk_window_at_pointer(win_x, win_y)
        PLATFORM_LOCK.lock
        begin
          return __gdk_window_at_pointer(win_x, win_y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1begin_1paint_1rect, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkRectangle] }
      # long
      def __gdk_window_begin_paint_rect(window, rectangle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1begin_1paint_1rect, JNI.env, self.jni_id, window.to_int, rectangle.jni_id)
      end
      
      typesig { [::Java::Int, GdkRectangle] }
      # long
      def gdk_window_begin_paint_rect(window, rectangle)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_begin_paint_rect(window, rectangle)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1clear_1area, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gdk_window_clear_area(window, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1clear_1area, JNI.env, self.jni_id, window.to_int, x.to_int, y.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gdk_window_clear_area(window, x, y, width, height)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_clear_area(window, x, y, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1destroy, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gdk_window_destroy(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1destroy, JNI.env, self.jni_id, window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_window_destroy(window)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_destroy(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1end_1paint, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gdk_window_end_paint(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1end_1paint, JNI.env, self.jni_id, window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_window_end_paint(window)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_end_paint(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1children, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gdk_window_get_children(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1children, JNI.env, self.jni_id, window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gdk_window_get_children(window)
        PLATFORM_LOCK.lock
        begin
          return __gdk_window_get_children(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1events, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gdk_window_get_events(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1events, JNI.env, self.jni_id, window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_window_get_events(window)
        PLATFORM_LOCK.lock
        begin
          return __gdk_window_get_events(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1focus, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gdk_window_focus(window, timestamp)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1focus, JNI.env, self.jni_id, window.to_int, timestamp.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gdk_window_focus(window, timestamp)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_focus(window, timestamp)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1freeze_1updates, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gdk_window_freeze_updates(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1freeze_1updates, JNI.env, self.jni_id, window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_window_freeze_updates(window)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_freeze_updates(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1frame_1extents, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkRectangle] }
      # long
      def __gdk_window_get_frame_extents(window, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1frame_1extents, JNI.env, self.jni_id, window.to_int, rect.jni_id)
      end
      
      typesig { [::Java::Int, GdkRectangle] }
      # long
      def gdk_window_get_frame_extents(window, rect)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_get_frame_extents(window, rect)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1internal_1paint_1info, [:pointer, :long, :int32, :long, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def __gdk_window_get_internal_paint_info(window, real_drawable, x_offset, y_offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1internal_1paint_1info, JNI.env, self.jni_id, window.to_int, real_drawable.jni_id, x_offset.jni_id, y_offset.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def gdk_window_get_internal_paint_info(window, real_drawable, x_offset, y_offset)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_get_internal_paint_info(window, real_drawable, x_offset, y_offset)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1origin, [:pointer, :long, :int32, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def __gdk_window_get_origin(window, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1origin, JNI.env, self.jni_id, window.to_int, x.jni_id, y.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def gdk_window_get_origin(window, x, y)
        PLATFORM_LOCK.lock
        begin
          return __gdk_window_get_origin(window, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1parent, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gdk_window_get_parent(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1parent, JNI.env, self.jni_id, window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gdk_window_get_parent(window)
        PLATFORM_LOCK.lock
        begin
          return __gdk_window_get_parent(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1pointer, [:pointer, :long, :int32, :long, :long, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def __gdk_window_get_pointer(window, x, y, mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1pointer, JNI.env, self.jni_id, window.to_int, x.jni_id, y.jni_id, mask.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def gdk_window_get_pointer(window, x, y, mask)
        PLATFORM_LOCK.lock
        begin
          return __gdk_window_get_pointer(window, x, y, mask)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1position, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def __gdk_window_get_position(window, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1position, JNI.env, self.jni_id, window.to_int, x.jni_id, y.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def gdk_window_get_position(window, x, y)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_get_position(window, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1user_1data, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def __gdk_window_get_user_data(window, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1get_1user_1data, JNI.env, self.jni_id, window.to_int, data.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def gdk_window_get_user_data(window, data)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_get_user_data(window, data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1hide, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gdk_window_hide(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1hide, JNI.env, self.jni_id, window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_window_hide(window)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_hide(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1invalidate_1rect, [:pointer, :long, :int32, :long, :int8], :void
      typesig { [::Java::Int, GdkRectangle, ::Java::Boolean] }
      # long
      def __gdk_window_invalidate_rect(window, rectangle, invalidate_children)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1invalidate_1rect, JNI.env, self.jni_id, window.to_int, rectangle.jni_id, invalidate_children ? 1 : 0)
      end
      
      typesig { [::Java::Int, GdkRectangle, ::Java::Boolean] }
      # long
      def gdk_window_invalidate_rect(window, rectangle, invalidate_children)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_invalidate_rect(window, rectangle, invalidate_children)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1invalidate_1region, [:pointer, :long, :int32, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def __gdk_window_invalidate_region(window, region, invalidate_children)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1invalidate_1region, JNI.env, self.jni_id, window.to_int, region.to_int, invalidate_children ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def gdk_window_invalidate_region(window, region, invalidate_children)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_invalidate_region(window, region, invalidate_children)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1is_1visible, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gdk_window_is_visible(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1is_1visible, JNI.env, self.jni_id, window.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_window_is_visible(window)
        PLATFORM_LOCK.lock
        begin
          return __gdk_window_is_visible(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1move, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gdk_window_move(window, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1move, JNI.env, self.jni_id, window.to_int, x.to_int, y.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gdk_window_move(window, x, y)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_move(window, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1new, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, GdkWindowAttr, ::Java::Int] }
      # long
      # long
      def __gdk_window_new(parent, attributes, attributes_mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1new, JNI.env, self.jni_id, parent.to_int, attributes.jni_id, attributes_mask.to_int)
      end
      
      typesig { [::Java::Int, GdkWindowAttr, ::Java::Int] }
      # long
      # long
      def gdk_window_new(parent, attributes, attributes_mask)
        PLATFORM_LOCK.lock
        begin
          return __gdk_window_new(parent, attributes, attributes_mask)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1lower, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gdk_window_lower(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1lower, JNI.env, self.jni_id, window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_window_lower(window)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_lower(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1process_1all_1updates, [:pointer, :long], :void
      typesig { [] }
      def __gdk_window_process_all_updates
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1process_1all_1updates, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gdk_window_process_all_updates
        PLATFORM_LOCK.lock
        begin
          __gdk_window_process_all_updates
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1process_1updates, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gdk_window_process_updates(window, update_children)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1process_1updates, JNI.env, self.jni_id, window.to_int, update_children ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gdk_window_process_updates(window, update_children)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_process_updates(window, update_children)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1raise, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gdk_window_raise(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1raise, JNI.env, self.jni_id, window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_window_raise(window)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_raise(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1resize, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gdk_window_resize(window, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1resize, JNI.env, self.jni_id, window.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gdk_window_resize(window, width, height)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_resize(window, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1scroll, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gdk_window_scroll(window, dx, dy)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1scroll, JNI.env, self.jni_id, window.to_int, dx.to_int, dy.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gdk_window_scroll(window, dx, dy)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_scroll(window, dx, dy)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1accept_1focus, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gdk_window_set_accept_focus(window, accept_focus)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1accept_1focus, JNI.env, self.jni_id, window.to_int, accept_focus ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gdk_window_set_accept_focus(window, accept_focus)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_set_accept_focus(window, accept_focus)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1back_1pixmap, [:pointer, :long, :int32, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def __gdk_window_set_back_pixmap(window, pixmap, parent_relative)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1back_1pixmap, JNI.env, self.jni_id, window.to_int, pixmap.to_int, parent_relative ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def gdk_window_set_back_pixmap(window, pixmap, parent_relative)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_set_back_pixmap(window, pixmap, parent_relative)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1cursor, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_window_set_cursor(window, cursor)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1cursor, JNI.env, self.jni_id, window.to_int, cursor.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_window_set_cursor(window, cursor)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_set_cursor(window, cursor)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1debug_1updates, [:pointer, :long, :int8], :void
      typesig { [::Java::Boolean] }
      def __gdk_window_set_debug_updates(setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1debug_1updates, JNI.env, self.jni_id, setting ? 1 : 0)
      end
      
      typesig { [::Java::Boolean] }
      def gdk_window_set_debug_updates(setting)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_set_debug_updates(setting)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1decorations, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gdk_window_set_decorations(window, decorations)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1decorations, JNI.env, self.jni_id, window.to_int, decorations.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gdk_window_set_decorations(window, decorations)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_set_decorations(window, decorations)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1events, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gdk_window_set_events(window, event_mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1events, JNI.env, self.jni_id, window.to_int, event_mask.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gdk_window_set_events(window, event_mask)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_set_events(window, event_mask)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1icon, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def __gdk_window_set_icon(window, icon_window, pixmap, mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1icon, JNI.env, self.jni_id, window.to_int, icon_window.to_int, pixmap.to_int, mask.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def gdk_window_set_icon(window, icon_window, pixmap, mask)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_set_icon(window, icon_window, pixmap, mask)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1icon_1list, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_window_set_icon_list(window, pixbufs)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1icon_1list, JNI.env, self.jni_id, window.to_int, pixbufs.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_window_set_icon_list(window, pixbufs)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_set_icon_list(window, pixbufs)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1keep_1above, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gdk_window_set_keep_above(window, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1keep_1above, JNI.env, self.jni_id, window.to_int, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gdk_window_set_keep_above(window, setting)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_set_keep_above(window, setting)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1override_1redirect, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gdk_window_set_override_redirect(window, override_redirect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1override_1redirect, JNI.env, self.jni_id, window.to_int, override_redirect ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gdk_window_set_override_redirect(window, override_redirect)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_set_override_redirect(window, override_redirect)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1user_1data, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_window_set_user_data(window, user_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1set_1user_1data, JNI.env, self.jni_id, window.to_int, user_data.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_window_set_user_data(window, user_data)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_set_user_data(window, user_data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1shape_1combine_1region, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gdk_window_shape_combine_region(window, shape_region, offset_x, offset_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1shape_1combine_1region, JNI.env, self.jni_id, window.to_int, shape_region.to_int, offset_x.to_int, offset_y.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gdk_window_shape_combine_region(window, shape_region, offset_x, offset_y)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_shape_combine_region(window, shape_region, offset_x, offset_y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1show, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gdk_window_show(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1show, JNI.env, self.jni_id, window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_window_show(window)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_show(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1show_1unraised, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gdk_window_show_unraised(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1show_1unraised, JNI.env, self.jni_id, window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_window_show_unraised(window)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_show_unraised(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1thaw_1updates, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gdk_window_thaw_updates(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gdk_1window_1thaw_1updates, JNI.env, self.jni_id, window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gdk_window_thaw_updates(window)
        PLATFORM_LOCK.lock
        begin
          __gdk_window_thaw_updates(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1accel_1group_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_accel_group_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1accel_1group_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_accel_group_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_accel_group_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1accel_1groups_1activate, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gtk_accel_groups_activate(accel_group, accel_key, accel_mods)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1accel_1groups_1activate, JNI.env, self.jni_id, accel_group.to_int, accel_key.to_int, accel_mods.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gtk_accel_groups_activate(accel_group, accel_key, accel_mods)
        PLATFORM_LOCK.lock
        begin
          return __gtk_accel_groups_activate(accel_group, accel_key, accel_mods)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1accel_1label_1set_1accel_1widget, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_accel_label_set_accel_widget(accel_label, accel_widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1accel_1label_1set_1accel_1widget, JNI.env, self.jni_id, accel_label.to_int, accel_widget.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_accel_label_set_accel_widget(accel_label, accel_widget)
        PLATFORM_LOCK.lock
        begin
          __gtk_accel_label_set_accel_widget(accel_label, accel_widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1adjustment_1changed, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_adjustment_changed(adjustment)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1adjustment_1changed, JNI.env, self.jni_id, adjustment.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_adjustment_changed(adjustment)
        PLATFORM_LOCK.lock
        begin
          __gtk_adjustment_changed(adjustment)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1adjustment_1new, [:pointer, :long, :double, :double, :double, :double, :double, :double], :int32
      typesig { [::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # long
      def __gtk_adjustment_new(value, lower, upper, step_increment, page_increment, page_size)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1adjustment_1new, JNI.env, self.jni_id, value, lower, upper, step_increment, page_increment, page_size)
      end
      
      typesig { [::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double, ::Java::Double] }
      # long
      def gtk_adjustment_new(value, lower, upper, step_increment, page_increment, page_size)
        PLATFORM_LOCK.lock
        begin
          return __gtk_adjustment_new(value, lower, upper, step_increment, page_increment, page_size)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1adjustment_1set_1value, [:pointer, :long, :int32, :double], :void
      typesig { [::Java::Int, ::Java::Double] }
      # long
      def __gtk_adjustment_set_value(adjustment, value)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1adjustment_1set_1value, JNI.env, self.jni_id, adjustment.to_int, value)
      end
      
      typesig { [::Java::Int, ::Java::Double] }
      # long
      def gtk_adjustment_set_value(adjustment, value)
        PLATFORM_LOCK.lock
        begin
          __gtk_adjustment_set_value(adjustment, value)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1adjustment_1value_1changed, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_adjustment_value_changed(adjustment)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1adjustment_1value_1changed, JNI.env, self.jni_id, adjustment.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_adjustment_value_changed(adjustment)
        PLATFORM_LOCK.lock
        begin
          __gtk_adjustment_value_changed(adjustment)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1arrow_1new, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_arrow_new(arrow_type, shadow_type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1arrow_1new, JNI.env, self.jni_id, arrow_type.to_int, shadow_type.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_arrow_new(arrow_type, shadow_type)
        PLATFORM_LOCK.lock
        begin
          return __gtk_arrow_new(arrow_type, shadow_type)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1arrow_1set, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gtk_arrow_set(arrow, arrow_type, shadow_type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1arrow_1set, JNI.env, self.jni_id, arrow.to_int, arrow_type.to_int, shadow_type.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gtk_arrow_set(arrow, arrow_type, shadow_type)
        PLATFORM_LOCK.lock
        begin
          __gtk_arrow_set(arrow, arrow_type, shadow_type)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1bin_1get_1child, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_bin_get_child(bin)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1bin_1get_1child, JNI.env, self.jni_id, bin.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_bin_get_child(bin)
        PLATFORM_LOCK.lock
        begin
          return __gtk_bin_get_child(bin)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1box_1set_1spacing, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_box_set_spacing(box, spacing)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1box_1set_1spacing, JNI.env, self.jni_id, box.to_int, spacing.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_box_set_spacing(box, spacing)
        PLATFORM_LOCK.lock
        begin
          __gtk_box_set_spacing(box, spacing)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1box_1set_1child_1packing, [:pointer, :long, :int32, :int32, :int8, :int8, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_box_set_child_packing(box, child, expand, fill, padding, pack_type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1box_1set_1child_1packing, JNI.env, self.jni_id, box.to_int, child.to_int, expand ? 1 : 0, fill ? 1 : 0, padding.to_int, pack_type.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_box_set_child_packing(box, child, expand, fill, padding, pack_type)
        PLATFORM_LOCK.lock
        begin
          __gtk_box_set_child_packing(box, child, expand, fill, padding, pack_type)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1button_1clicked, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_button_clicked(button)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1button_1clicked, JNI.env, self.jni_id, button.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_button_clicked(button)
        PLATFORM_LOCK.lock
        begin
          __gtk_button_clicked(button)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1button_1get_1relief, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_button_get_relief(button)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1button_1get_1relief, JNI.env, self.jni_id, button.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_button_get_relief(button)
        PLATFORM_LOCK.lock
        begin
          return __gtk_button_get_relief(button)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1button_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_button_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1button_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_button_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_button_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1button_1set_1relief, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_button_set_relief(button, newstyle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1button_1set_1relief, JNI.env, self.jni_id, button.to_int, newstyle.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_button_set_relief(button, newstyle)
        PLATFORM_LOCK.lock
        begin
          __gtk_button_set_relief(button, newstyle)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_calendar_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_calendar_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_calendar_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1select_1month, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_calendar_select_month(calendar, month, year)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1select_1month, JNI.env, self.jni_id, calendar.to_int, month.to_int, year.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_calendar_select_month(calendar, month, year)
        PLATFORM_LOCK.lock
        begin
          return __gtk_calendar_select_month(calendar, month, year)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1select_1day, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_calendar_select_day(calendar, day)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1select_1day, JNI.env, self.jni_id, calendar.to_int, day.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_calendar_select_day(calendar, day)
        PLATFORM_LOCK.lock
        begin
          __gtk_calendar_select_day(calendar, day)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1set_1display_1options, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_calendar_set_display_options(calendar, flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1set_1display_1options, JNI.env, self.jni_id, calendar.to_int, flags.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_calendar_set_display_options(calendar, flags)
        PLATFORM_LOCK.lock
        begin
          __gtk_calendar_set_display_options(calendar, flags)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1display_1options, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_calendar_display_options(calendar, flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1display_1options, JNI.env, self.jni_id, calendar.to_int, flags.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_calendar_display_options(calendar, flags)
        PLATFORM_LOCK.lock
        begin
          __gtk_calendar_display_options(calendar, flags)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1get_1date, [:pointer, :long, :int32, :long, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def __gtk_calendar_get_date(calendar, year, month, day)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1calendar_1get_1date, JNI.env, self.jni_id, calendar.to_int, year.jni_id, month.jni_id, day.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def gtk_calendar_get_date(calendar, year, month, day)
        PLATFORM_LOCK.lock
        begin
          __gtk_calendar_get_date(calendar, year, month, day)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1layout_1clear, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_cell_layout_clear(cell_layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1layout_1clear, JNI.env, self.jni_id, cell_layout.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_cell_layout_clear(cell_layout)
        PLATFORM_LOCK.lock
        begin
          __gtk_cell_layout_clear(cell_layout)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1layout_1set_1attributes, [:pointer, :long, :int32, :int32, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_cell_layout_set_attributes(cell_layout, cell, attribute, column, sentinel)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1layout_1set_1attributes, JNI.env, self.jni_id, cell_layout.to_int, cell.to_int, attribute.jni_id, column.to_int, sentinel.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_cell_layout_set_attributes(cell_layout, cell, attribute, column, sentinel)
        PLATFORM_LOCK.lock
        begin
          __gtk_cell_layout_set_attributes(cell_layout, cell, attribute, column, sentinel)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1layout_1pack_1start, [:pointer, :long, :int32, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def __gtk_cell_layout_pack_start(cell_layout, cell, expand)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1layout_1pack_1start, JNI.env, self.jni_id, cell_layout.to_int, cell.to_int, expand ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def gtk_cell_layout_pack_start(cell_layout, cell, expand)
        PLATFORM_LOCK.lock
        begin
          __gtk_cell_layout_pack_start(cell_layout, cell, expand)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1renderer_1get_1size, [:pointer, :long, :int32, :int32, :long, :long, :long, :long, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkRectangle, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def __gtk_cell_renderer_get_size(cell, widget, area, x_offset, y_offset, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1renderer_1get_1size, JNI.env, self.jni_id, cell.to_int, widget.to_int, area.jni_id, x_offset.jni_id, y_offset.jni_id, width.jni_id, height.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkRectangle, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def gtk_cell_renderer_get_size(cell, widget, area, x_offset, y_offset, width, height)
        PLATFORM_LOCK.lock
        begin
          __gtk_cell_renderer_get_size(cell, widget, area, x_offset, y_offset, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1renderer_1pixbuf_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_cell_renderer_pixbuf_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1renderer_1pixbuf_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_cell_renderer_pixbuf_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_cell_renderer_pixbuf_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1renderer_1text_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_cell_renderer_text_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1renderer_1text_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_cell_renderer_text_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_cell_renderer_text_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1renderer_1toggle_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_cell_renderer_toggle_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1cell_1renderer_1toggle_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_cell_renderer_toggle_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_cell_renderer_toggle_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1check_1button_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_check_button_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1check_1button_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_check_button_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_check_button_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1check_1menu_1item_1get_1active, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_check_menu_item_get_active(check_menu_item)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1check_1menu_1item_1get_1active, JNI.env, self.jni_id, check_menu_item.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_check_menu_item_get_active(check_menu_item)
        PLATFORM_LOCK.lock
        begin
          return __gtk_check_menu_item_get_active(check_menu_item)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1check_1menu_1item_1new_1with_1label, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def __gtk_check_menu_item_new_with_label(label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1check_1menu_1item_1new_1with_1label, JNI.env, self.jni_id, label.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def gtk_check_menu_item_new_with_label(label)
        PLATFORM_LOCK.lock
        begin
          return __gtk_check_menu_item_new_with_label(label)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1check_1menu_1item_1set_1active, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_check_menu_item_set_active(wid, active)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1check_1menu_1item_1set_1active, JNI.env, self.jni_id, wid.to_int, active ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_check_menu_item_set_active(wid, active)
        PLATFORM_LOCK.lock
        begin
          __gtk_check_menu_item_set_active(wid, active)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1check_1version, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gtk_check_version(required_major, required_minor, required_micro)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1check_1version, JNI.env, self.jni_id, required_major.to_int, required_minor.to_int, required_micro.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gtk_check_version(required_major, required_minor, required_micro)
        PLATFORM_LOCK.lock
        begin
          return __gtk_check_version(required_major, required_minor, required_micro)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1clipboard_1clear, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_clipboard_clear(clipboard)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1clipboard_1clear, JNI.env, self.jni_id, clipboard.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_clipboard_clear(clipboard)
        PLATFORM_LOCK.lock
        begin
          __gtk_clipboard_clear(clipboard)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1clipboard_1get, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_clipboard_get(selection)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1clipboard_1get, JNI.env, self.jni_id, selection.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_clipboard_get(selection)
        PLATFORM_LOCK.lock
        begin
          return __gtk_clipboard_get(selection)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1clipboard_1set_1with_1data, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def __gtk_clipboard_set_with_data(clipboard, target, n_targets, get_func, clear_func, user_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1clipboard_1set_1with_1data, JNI.env, self.jni_id, clipboard.to_int, target.to_int, n_targets.to_int, get_func.to_int, clear_func.to_int, user_data.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def gtk_clipboard_set_with_data(clipboard, target, n_targets, get_func, clear_func, user_data)
        PLATFORM_LOCK.lock
        begin
          return __gtk_clipboard_set_with_data(clipboard, target, n_targets, get_func, clear_func, user_data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1clipboard_1wait_1for_1contents, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_clipboard_wait_for_contents(clipboard, target)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1clipboard_1wait_1for_1contents, JNI.env, self.jni_id, clipboard.to_int, target.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_clipboard_wait_for_contents(clipboard, target)
        PLATFORM_LOCK.lock
        begin
          return __gtk_clipboard_wait_for_contents(clipboard, target)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1color_1selection_1dialog_1new, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def __gtk_color_selection_dialog_new(title)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1color_1selection_1dialog_1new, JNI.env, self.jni_id, title.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def gtk_color_selection_dialog_new(title)
        PLATFORM_LOCK.lock
        begin
          return __gtk_color_selection_dialog_new(title)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1color_1selection_1get_1current_1color, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkColor] }
      # long
      def __gtk_color_selection_get_current_color(colorsel, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1color_1selection_1get_1current_1color, JNI.env, self.jni_id, colorsel.to_int, color.jni_id)
      end
      
      typesig { [::Java::Int, GdkColor] }
      # long
      def gtk_color_selection_get_current_color(colorsel, color)
        PLATFORM_LOCK.lock
        begin
          __gtk_color_selection_get_current_color(colorsel, color)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1color_1selection_1set_1current_1color, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkColor] }
      # long
      def __gtk_color_selection_set_current_color(colorsel, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1color_1selection_1set_1current_1color, JNI.env, self.jni_id, colorsel.to_int, color.jni_id)
      end
      
      typesig { [::Java::Int, GdkColor] }
      # long
      def gtk_color_selection_set_current_color(colorsel, color)
        PLATFORM_LOCK.lock
        begin
          __gtk_color_selection_set_current_color(colorsel, color)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1color_1selection_1set_1has_1palette, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_color_selection_set_has_palette(colorsel, has_palette)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1color_1selection_1set_1has_1palette, JNI.env, self.jni_id, colorsel.to_int, has_palette ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_color_selection_set_has_palette(colorsel, has_palette)
        PLATFORM_LOCK.lock
        begin
          __gtk_color_selection_set_has_palette(colorsel, has_palette)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1disable_1activate, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_combo_disable_activate(combo)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1disable_1activate, JNI.env, self.jni_id, combo.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_combo_disable_activate(combo)
        PLATFORM_LOCK.lock
        begin
          __gtk_combo_disable_activate(combo)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_combo_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_combo_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_combo_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1set_1case_1sensitive, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_combo_set_case_sensitive(combo, val)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1set_1case_1sensitive, JNI.env, self.jni_id, combo.to_int, val ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_combo_set_case_sensitive(combo, val)
        PLATFORM_LOCK.lock
        begin
          __gtk_combo_set_case_sensitive(combo, val)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1set_1focus_1on_1click, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_combo_box_set_focus_on_click(combo, val)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1set_1focus_1on_1click, JNI.env, self.jni_id, combo.to_int, val ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_combo_box_set_focus_on_click(combo, val)
        PLATFORM_LOCK.lock
        begin
          __gtk_combo_box_set_focus_on_click(combo, val)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1set_1popdown_1strings, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_combo_set_popdown_strings(combo, strings)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1set_1popdown_1strings, JNI.env, self.jni_id, combo.to_int, strings.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_combo_set_popdown_strings(combo, strings)
        PLATFORM_LOCK.lock
        begin
          __gtk_combo_set_popdown_strings(combo, strings)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1entry_1new_1text, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_combo_box_entry_new_text
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1entry_1new_1text, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_combo_box_entry_new_text
        PLATFORM_LOCK.lock
        begin
          return __gtk_combo_box_entry_new_text
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1new_1text, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_combo_box_new_text
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1new_1text, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_combo_box_new_text
        PLATFORM_LOCK.lock
        begin
          return __gtk_combo_box_new_text
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1insert_1text, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def __gtk_combo_box_insert_text(combo_box, position, text)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1insert_1text, JNI.env, self.jni_id, combo_box.to_int, position.to_int, text.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def gtk_combo_box_insert_text(combo_box, position, text)
        PLATFORM_LOCK.lock
        begin
          __gtk_combo_box_insert_text(combo_box, position, text)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1remove_1text, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_combo_box_remove_text(combo_box, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1remove_1text, JNI.env, self.jni_id, combo_box.to_int, position.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_combo_box_remove_text(combo_box, position)
        PLATFORM_LOCK.lock
        begin
          __gtk_combo_box_remove_text(combo_box, position)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1get_1active, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_combo_box_get_active(combo_box)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1get_1active, JNI.env, self.jni_id, combo_box.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_combo_box_get_active(combo_box)
        PLATFORM_LOCK.lock
        begin
          return __gtk_combo_box_get_active(combo_box)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1get_1model, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_combo_box_get_model(combo_box)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1get_1model, JNI.env, self.jni_id, combo_box.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_combo_box_get_model(combo_box)
        PLATFORM_LOCK.lock
        begin
          return __gtk_combo_box_get_model(combo_box)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1set_1active, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_combo_box_set_active(combo_box, index)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1set_1active, JNI.env, self.jni_id, combo_box.to_int, index.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_combo_box_set_active(combo_box, index)
        PLATFORM_LOCK.lock
        begin
          __gtk_combo_box_set_active(combo_box, index)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1popup, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_combo_box_popup(combo_box)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1popup, JNI.env, self.jni_id, combo_box.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_combo_box_popup(combo_box)
        PLATFORM_LOCK.lock
        begin
          __gtk_combo_box_popup(combo_box)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1popdown, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_combo_box_popdown(combo_box)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1combo_1box_1popdown, JNI.env, self.jni_id, combo_box.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_combo_box_popdown(combo_box)
        PLATFORM_LOCK.lock
        begin
          __gtk_combo_box_popdown(combo_box)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1add, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_container_add(container, widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1add, JNI.env, self.jni_id, container.to_int, widget.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_container_add(container, widget)
        PLATFORM_LOCK.lock
        begin
          __gtk_container_add(container, widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1forall, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_container_forall(container, callback, callback_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1forall, JNI.env, self.jni_id, container.to_int, callback.to_int, callback_data.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_container_forall(container, callback, callback_data)
        PLATFORM_LOCK.lock
        begin
          __gtk_container_forall(container, callback, callback_data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1get_1border_1width, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_container_get_border_width(container)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1get_1border_1width, JNI.env, self.jni_id, container.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_container_get_border_width(container)
        PLATFORM_LOCK.lock
        begin
          return __gtk_container_get_border_width(container)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1get_1children, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_container_get_children(container)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1get_1children, JNI.env, self.jni_id, container.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_container_get_children(container)
        PLATFORM_LOCK.lock
        begin
          return __gtk_container_get_children(container)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1remove, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_container_remove(container, widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1remove, JNI.env, self.jni_id, container.to_int, widget.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_container_remove(container, widget)
        PLATFORM_LOCK.lock
        begin
          __gtk_container_remove(container, widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1resize_1children, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_container_resize_children(container)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1resize_1children, JNI.env, self.jni_id, container.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_container_resize_children(container)
        PLATFORM_LOCK.lock
        begin
          __gtk_container_resize_children(container)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1set_1border_1width, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_container_set_border_width(container, border_width)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1container_1set_1border_1width, JNI.env, self.jni_id, container.to_int, border_width.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_container_set_border_width(container, border_width)
        PLATFORM_LOCK.lock
        begin
          __gtk_container_set_border_width(container, border_width)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1dialog_1add_1button, [:pointer, :long, :int32, :long, :int32], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      # long
      def __gtk_dialog_add_button(dialog, button_text, response_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1dialog_1add_1button, JNI.env, self.jni_id, dialog.to_int, button_text.jni_id, response_id.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      # long
      def gtk_dialog_add_button(dialog, button_text, response_id)
        PLATFORM_LOCK.lock
        begin
          return __gtk_dialog_add_button(dialog, button_text, response_id)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1dialog_1run, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_dialog_run(dialog)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1dialog_1run, JNI.env, self.jni_id, dialog.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_dialog_run(dialog)
        PLATFORM_LOCK.lock
        begin
          return __gtk_dialog_run(dialog)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1begin, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def __gtk_drag_begin(widget, targets, actions, button, event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1begin, JNI.env, self.jni_id, widget.to_int, targets.to_int, actions.to_int, button.to_int, event.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def gtk_drag_begin(widget, targets, actions, button, event)
        PLATFORM_LOCK.lock
        begin
          return __gtk_drag_begin(widget, targets, actions, button, event)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1check_1threshold, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gtk_drag_check_threshold(widget, start_x, start_y, current_x, current_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1check_1threshold, JNI.env, self.jni_id, widget.to_int, start_x.to_int, start_y.to_int, current_x.to_int, current_y.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gtk_drag_check_threshold(widget, start_x, start_y, current_x, current_y)
        PLATFORM_LOCK.lock
        begin
          return __gtk_drag_check_threshold(widget, start_x, start_y, current_x, current_y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1dest_1find_1target, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def __gtk_drag_dest_find_target(widget, context, target_list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1dest_1find_1target, JNI.env, self.jni_id, widget.to_int, context.to_int, target_list.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def gtk_drag_dest_find_target(widget, context, target_list)
        PLATFORM_LOCK.lock
        begin
          return __gtk_drag_dest_find_target(widget, context, target_list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1dest_1set, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_drag_dest_set(widget, flags, targets, n_targets, actions)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1dest_1set, JNI.env, self.jni_id, widget.to_int, flags.to_int, targets.to_int, n_targets.to_int, actions.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_drag_dest_set(widget, flags, targets, n_targets, actions)
        PLATFORM_LOCK.lock
        begin
          __gtk_drag_dest_set(widget, flags, targets, n_targets, actions)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1dest_1unset, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_drag_dest_unset(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1dest_1unset, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_drag_dest_unset(widget)
        PLATFORM_LOCK.lock
        begin
          __gtk_drag_dest_unset(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1finish, [:pointer, :long, :int32, :int8, :int8, :int32], :void
      typesig { [::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Int] }
      # long
      def __gtk_drag_finish(context, success, delete, time)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1finish, JNI.env, self.jni_id, context.to_int, success ? 1 : 0, delete ? 1 : 0, time.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Int] }
      # long
      def gtk_drag_finish(context, success, delete, time)
        PLATFORM_LOCK.lock
        begin
          __gtk_drag_finish(context, success, delete, time)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1get_1data, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_drag_get_data(widget, context, target, time)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1get_1data, JNI.env, self.jni_id, widget.to_int, context.to_int, target.to_int, time.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_drag_get_data(widget, context, target, time)
        PLATFORM_LOCK.lock
        begin
          __gtk_drag_get_data(widget, context, target, time)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1set_1icon_1pixbuf, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_drag_set_icon_pixbuf(context, pixbuf, hot_x, hot_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drag_1set_1icon_1pixbuf, JNI.env, self.jni_id, context.to_int, pixbuf.to_int, hot_x.to_int, hot_y.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_drag_set_icon_pixbuf(context, pixbuf, hot_x, hot_y)
        PLATFORM_LOCK.lock
        begin
          __gtk_drag_set_icon_pixbuf(context, pixbuf, hot_x, hot_y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drawing_1area_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_drawing_area_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1drawing_1area_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_drawing_area_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_drawing_area_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1copy_1clipboard, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_editable_copy_clipboard(editable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1copy_1clipboard, JNI.env, self.jni_id, editable.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_editable_copy_clipboard(editable)
        PLATFORM_LOCK.lock
        begin
          __gtk_editable_copy_clipboard(editable)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1cut_1clipboard, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_editable_cut_clipboard(editable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1cut_1clipboard, JNI.env, self.jni_id, editable.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_editable_cut_clipboard(editable)
        PLATFORM_LOCK.lock
        begin
          __gtk_editable_cut_clipboard(editable)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1delete_1selection, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_editable_delete_selection(editable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1delete_1selection, JNI.env, self.jni_id, editable.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_editable_delete_selection(editable)
        PLATFORM_LOCK.lock
        begin
          __gtk_editable_delete_selection(editable)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1delete_1text, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gtk_editable_delete_text(editable, start_pos, end_pos)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1delete_1text, JNI.env, self.jni_id, editable.to_int, start_pos.to_int, end_pos.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gtk_editable_delete_text(editable, start_pos, end_pos)
        PLATFORM_LOCK.lock
        begin
          __gtk_editable_delete_text(editable, start_pos, end_pos)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1get_1chars, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_editable_get_chars(editable, start_pos, end_pos)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1get_1chars, JNI.env, self.jni_id, editable.to_int, start_pos.to_int, end_pos.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_editable_get_chars(editable, start_pos, end_pos)
        PLATFORM_LOCK.lock
        begin
          return __gtk_editable_get_chars(editable, start_pos, end_pos)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1get_1editable, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_editable_get_editable(editable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1get_1editable, JNI.env, self.jni_id, editable.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_editable_get_editable(editable)
        PLATFORM_LOCK.lock
        begin
          return __gtk_editable_get_editable(editable)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1get_1position, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_editable_get_position(editable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1get_1position, JNI.env, self.jni_id, editable.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_editable_get_position(editable)
        PLATFORM_LOCK.lock
        begin
          return __gtk_editable_get_position(editable)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1get_1selection_1bounds, [:pointer, :long, :int32, :long, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def __gtk_editable_get_selection_bounds(editable, start, end_)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1get_1selection_1bounds, JNI.env, self.jni_id, editable.to_int, start.jni_id, end_.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def gtk_editable_get_selection_bounds(editable, start, end_)
        PLATFORM_LOCK.lock
        begin
          return __gtk_editable_get_selection_bounds(editable, start, end_)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1insert_1text, [:pointer, :long, :int32, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def __gtk_editable_insert_text(editable, new_text, new_text_length, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1insert_1text, JNI.env, self.jni_id, editable.to_int, new_text.jni_id, new_text_length.to_int, position.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def gtk_editable_insert_text(editable, new_text, new_text_length, position)
        PLATFORM_LOCK.lock
        begin
          __gtk_editable_insert_text(editable, new_text, new_text_length, position)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1paste_1clipboard, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_editable_paste_clipboard(editable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1paste_1clipboard, JNI.env, self.jni_id, editable.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_editable_paste_clipboard(editable)
        PLATFORM_LOCK.lock
        begin
          __gtk_editable_paste_clipboard(editable)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1select_1region, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gtk_editable_select_region(editable, start, end_)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1select_1region, JNI.env, self.jni_id, editable.to_int, start.to_int, end_.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gtk_editable_select_region(editable, start, end_)
        PLATFORM_LOCK.lock
        begin
          __gtk_editable_select_region(editable, start, end_)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1set_1editable, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_editable_set_editable(entry, editable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1set_1editable, JNI.env, self.jni_id, entry.to_int, editable ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_editable_set_editable(entry, editable)
        PLATFORM_LOCK.lock
        begin
          __gtk_editable_set_editable(entry, editable)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1set_1position, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_editable_set_position(editable, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1editable_1set_1position, JNI.env, self.jni_id, editable.to_int, position.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_editable_set_position(editable, position)
        PLATFORM_LOCK.lock
        begin
          __gtk_editable_set_position(editable, position)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1invisible_1char, [:pointer, :long, :int32], :unknown
      typesig { [::Java::Int] }
      # long
      def __gtk_entry_get_invisible_char(entry)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1invisible_1char, JNI.env, self.jni_id, entry.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_entry_get_invisible_char(entry)
        PLATFORM_LOCK.lock
        begin
          return __gtk_entry_get_invisible_char(entry)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1layout, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_entry_get_layout(entry)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1layout, JNI.env, self.jni_id, entry.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_entry_get_layout(entry)
        PLATFORM_LOCK.lock
        begin
          return __gtk_entry_get_layout(entry)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1layout_1offsets, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def __gtk_entry_get_layout_offsets(layout, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1layout_1offsets, JNI.env, self.jni_id, layout.to_int, x.jni_id, y.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def gtk_entry_get_layout_offsets(layout, x, y)
        PLATFORM_LOCK.lock
        begin
          __gtk_entry_get_layout_offsets(layout, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1text_1index_1to_1layout_1index, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_entry_text_index_to_layout_index(entry, index)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1text_1index_1to_1layout_1index, JNI.env, self.jni_id, entry.to_int, index.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_entry_text_index_to_layout_index(entry, index)
        PLATFORM_LOCK.lock
        begin
          return __gtk_entry_text_index_to_layout_index(entry, index)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1max_1length, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_entry_get_max_length(entry)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1max_1length, JNI.env, self.jni_id, entry.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_entry_get_max_length(entry)
        PLATFORM_LOCK.lock
        begin
          return __gtk_entry_get_max_length(entry)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1text, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_entry_get_text(entry)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1text, JNI.env, self.jni_id, entry.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_entry_get_text(entry)
        PLATFORM_LOCK.lock
        begin
          return __gtk_entry_get_text(entry)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1FcConfigAppFontAddFile, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def ___fc_config_app_font_add_file(config, file)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1FcConfigAppFontAddFile, JNI.env, self.jni_id, config.to_int, file.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def _fc_config_app_font_add_file(config, file)
        PLATFORM_LOCK.lock
        begin
          return ___fc_config_app_font_add_file(config, file)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1visibility, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_entry_get_visibility(entry)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1get_1visibility, JNI.env, self.jni_id, entry.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_entry_get_visibility(entry)
        PLATFORM_LOCK.lock
        begin
          return __gtk_entry_get_visibility(entry)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_entry_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_entry_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_entry_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1activates_1default, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_entry_set_activates_default(entry, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1activates_1default, JNI.env, self.jni_id, entry.to_int, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_entry_set_activates_default(entry, setting)
        PLATFORM_LOCK.lock
        begin
          __gtk_entry_set_activates_default(entry, setting)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1alignment, [:pointer, :long, :int32, :float], :void
      typesig { [::Java::Int, ::Java::Float] }
      # long
      def __gtk_entry_set_alignment(entry, xalign)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1alignment, JNI.env, self.jni_id, entry.to_int, xalign)
      end
      
      typesig { [::Java::Int, ::Java::Float] }
      # long
      def gtk_entry_set_alignment(entry, xalign)
        PLATFORM_LOCK.lock
        begin
          __gtk_entry_set_alignment(entry, xalign)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1has_1frame, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_entry_set_has_frame(entry, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1has_1frame, JNI.env, self.jni_id, entry.to_int, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_entry_set_has_frame(entry, setting)
        PLATFORM_LOCK.lock
        begin
          __gtk_entry_set_has_frame(entry, setting)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1invisible_1char, [:pointer, :long, :int32, :unknown], :void
      typesig { [::Java::Int, ::Java::Char] }
      # long
      def __gtk_entry_set_invisible_char(entry, ch)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1invisible_1char, JNI.env, self.jni_id, entry.to_int, ch.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Char] }
      # long
      def gtk_entry_set_invisible_char(entry, ch)
        PLATFORM_LOCK.lock
        begin
          __gtk_entry_set_invisible_char(entry, ch)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1max_1length, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_entry_set_max_length(entry, max)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1max_1length, JNI.env, self.jni_id, entry.to_int, max.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_entry_set_max_length(entry, max)
        PLATFORM_LOCK.lock
        begin
          __gtk_entry_set_max_length(entry, max)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1text, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def __gtk_entry_set_text(entry, text)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1text, JNI.env, self.jni_id, entry.to_int, text.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def gtk_entry_set_text(entry, text)
        PLATFORM_LOCK.lock
        begin
          __gtk_entry_set_text(entry, text)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1visibility, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_entry_set_visibility(entry, visible)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1entry_1set_1visibility, JNI.env, self.jni_id, entry.to_int, visible ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_entry_set_visibility(entry, visible)
        PLATFORM_LOCK.lock
        begin
          __gtk_entry_set_visibility(entry, visible)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1events_1pending, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_events_pending
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1events_1pending, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_events_pending
        PLATFORM_LOCK.lock
        begin
          return __gtk_events_pending
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1get_1expanded, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_expander_get_expanded(expander)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1get_1expanded, JNI.env, self.jni_id, expander.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_expander_get_expanded(expander)
        PLATFORM_LOCK.lock
        begin
          return __gtk_expander_get_expanded(expander)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1get_1label_1widget, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_expander_get_label_widget(expander)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1get_1label_1widget, JNI.env, self.jni_id, expander.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_expander_get_label_widget(expander)
        PLATFORM_LOCK.lock
        begin
          return __gtk_expander_get_label_widget(expander)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1new, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def __gtk_expander_new(label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1new, JNI.env, self.jni_id, label.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def gtk_expander_new(label)
        PLATFORM_LOCK.lock
        begin
          return __gtk_expander_new(label)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1set_1expanded, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_expander_set_expanded(expander, expanded)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1set_1expanded, JNI.env, self.jni_id, expander.to_int, expanded ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_expander_set_expanded(expander, expanded)
        PLATFORM_LOCK.lock
        begin
          __gtk_expander_set_expanded(expander, expanded)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1set_1label, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def __gtk_expander_set_label(expander, label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1set_1label, JNI.env, self.jni_id, expander.to_int, label.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def gtk_expander_set_label(expander, label)
        PLATFORM_LOCK.lock
        begin
          __gtk_expander_set_label(expander, label)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1set_1label_1widget, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_expander_set_label_widget(expander, label_widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1expander_1set_1label_1widget, JNI.env, self.jni_id, expander.to_int, label_widget.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_expander_set_label_widget(expander, label_widget)
        PLATFORM_LOCK.lock
        begin
          __gtk_expander_set_label_widget(expander, label_widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1add_1filter, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_file_chooser_add_filter(chooser, filter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1add_1filter, JNI.env, self.jni_id, chooser.to_int, filter.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_file_chooser_add_filter(chooser, filter)
        PLATFORM_LOCK.lock
        begin
          __gtk_file_chooser_add_filter(chooser, filter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1dialog_1new, [:pointer, :long, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def __gtk_file_chooser_dialog_new(title, parent, action, first_button_text, first_button_id, second_button_text, second_button_id, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1dialog_1new, JNI.env, self.jni_id, title.jni_id, parent.to_int, action.to_int, first_button_text.to_int, first_button_id.to_int, second_button_text.to_int, second_button_id.to_int, terminator.to_int)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def gtk_file_chooser_dialog_new(title, parent, action, first_button_text, first_button_id, second_button_text, second_button_id, terminator)
        PLATFORM_LOCK.lock
        begin
          return __gtk_file_chooser_dialog_new(title, parent, action, first_button_text, first_button_id, second_button_text, second_button_id, terminator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1get_1current_1folder, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_file_chooser_get_current_folder(chooser)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1get_1current_1folder, JNI.env, self.jni_id, chooser.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_file_chooser_get_current_folder(chooser)
        PLATFORM_LOCK.lock
        begin
          return __gtk_file_chooser_get_current_folder(chooser)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1get_1filename, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_file_chooser_get_filename(chooser)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1get_1filename, JNI.env, self.jni_id, chooser.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_file_chooser_get_filename(chooser)
        PLATFORM_LOCK.lock
        begin
          return __gtk_file_chooser_get_filename(chooser)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1get_1filenames, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_file_chooser_get_filenames(chooser)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1get_1filenames, JNI.env, self.jni_id, chooser.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_file_chooser_get_filenames(chooser)
        PLATFORM_LOCK.lock
        begin
          return __gtk_file_chooser_get_filenames(chooser)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1get_1filter, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_file_chooser_get_filter(chooser)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1get_1filter, JNI.env, self.jni_id, chooser.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_file_chooser_get_filter(chooser)
        PLATFORM_LOCK.lock
        begin
          return __gtk_file_chooser_get_filter(chooser)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1current_1folder, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_file_chooser_set_current_folder(chooser, filename)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1current_1folder, JNI.env, self.jni_id, chooser.to_int, filename.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_file_chooser_set_current_folder(chooser, filename)
        PLATFORM_LOCK.lock
        begin
          __gtk_file_chooser_set_current_folder(chooser, filename)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1current_1name, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def __gtk_file_chooser_set_current_name(chooser, name)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1current_1name, JNI.env, self.jni_id, chooser.to_int, name.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def gtk_file_chooser_set_current_name(chooser, name)
        PLATFORM_LOCK.lock
        begin
          __gtk_file_chooser_set_current_name(chooser, name)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1do_1overwrite_1confirmation, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_file_chooser_set_do_overwrite_confirmation(chooser, do_overwrite_confirmation)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1do_1overwrite_1confirmation, JNI.env, self.jni_id, chooser.to_int, do_overwrite_confirmation ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_file_chooser_set_do_overwrite_confirmation(chooser, do_overwrite_confirmation)
        PLATFORM_LOCK.lock
        begin
          __gtk_file_chooser_set_do_overwrite_confirmation(chooser, do_overwrite_confirmation)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1extra_1widget, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_file_chooser_set_extra_widget(chooser, extra_widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1extra_1widget, JNI.env, self.jni_id, chooser.to_int, extra_widget.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_file_chooser_set_extra_widget(chooser, extra_widget)
        PLATFORM_LOCK.lock
        begin
          __gtk_file_chooser_set_extra_widget(chooser, extra_widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1filename, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_file_chooser_set_filename(chooser, name)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1filename, JNI.env, self.jni_id, chooser.to_int, name.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_file_chooser_set_filename(chooser, name)
        PLATFORM_LOCK.lock
        begin
          __gtk_file_chooser_set_filename(chooser, name)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1filter, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_file_chooser_set_filter(chooser, filter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1filter, JNI.env, self.jni_id, chooser.to_int, filter.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_file_chooser_set_filter(chooser, filter)
        PLATFORM_LOCK.lock
        begin
          __gtk_file_chooser_set_filter(chooser, filter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1select_1multiple, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_file_chooser_set_select_multiple(chooser, select_multiple)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1chooser_1set_1select_1multiple, JNI.env, self.jni_id, chooser.to_int, select_multiple ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_file_chooser_set_select_multiple(chooser, select_multiple)
        PLATFORM_LOCK.lock
        begin
          __gtk_file_chooser_set_select_multiple(chooser, select_multiple)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1filter_1add_1pattern, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def __gtk_file_filter_add_pattern(filter, pattern)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1filter_1add_1pattern, JNI.env, self.jni_id, filter.to_int, pattern.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def gtk_file_filter_add_pattern(filter, pattern)
        PLATFORM_LOCK.lock
        begin
          __gtk_file_filter_add_pattern(filter, pattern)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1filter_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_file_filter_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1filter_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_file_filter_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_file_filter_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1filter_1get_1name, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_file_filter_get_name(filter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1filter_1get_1name, JNI.env, self.jni_id, filter.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_file_filter_get_name(filter)
        PLATFORM_LOCK.lock
        begin
          return __gtk_file_filter_get_name(filter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1filter_1set_1name, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def __gtk_file_filter_set_name(filter, name)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1filter_1set_1name, JNI.env, self.jni_id, filter.to_int, name.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def gtk_file_filter_set_name(filter, name)
        PLATFORM_LOCK.lock
        begin
          __gtk_file_filter_set_name(filter, name)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1get_1filename, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_file_selection_get_filename(filesel)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1get_1filename, JNI.env, self.jni_id, filesel.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_file_selection_get_filename(filesel)
        PLATFORM_LOCK.lock
        begin
          return __gtk_file_selection_get_filename(filesel)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1get_1selections, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_file_selection_get_selections(filesel)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1get_1selections, JNI.env, self.jni_id, filesel.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_file_selection_get_selections(filesel)
        PLATFORM_LOCK.lock
        begin
          return __gtk_file_selection_get_selections(filesel)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1hide_1fileop_1buttons, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_file_selection_hide_fileop_buttons(filesel)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1hide_1fileop_1buttons, JNI.env, self.jni_id, filesel.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_file_selection_hide_fileop_buttons(filesel)
        PLATFORM_LOCK.lock
        begin
          __gtk_file_selection_hide_fileop_buttons(filesel)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1new, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def __gtk_file_selection_new(title)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1new, JNI.env, self.jni_id, title.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def gtk_file_selection_new(title)
        PLATFORM_LOCK.lock
        begin
          return __gtk_file_selection_new(title)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1set_1filename, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_file_selection_set_filename(filesel, filename)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1set_1filename, JNI.env, self.jni_id, filesel.to_int, filename.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_file_selection_set_filename(filesel, filename)
        PLATFORM_LOCK.lock
        begin
          __gtk_file_selection_set_filename(filesel, filename)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1set_1select_1multiple, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_file_selection_set_select_multiple(filesel, select_multiple)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1file_1selection_1set_1select_1multiple, JNI.env, self.jni_id, filesel.to_int, select_multiple ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_file_selection_set_select_multiple(filesel, select_multiple)
        PLATFORM_LOCK.lock
        begin
          __gtk_file_selection_set_select_multiple(filesel, select_multiple)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1fixed_1move, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_fixed_move(fixed, widget, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1fixed_1move, JNI.env, self.jni_id, fixed.to_int, widget.to_int, x.to_int, y.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_fixed_move(fixed, widget, x, y)
        PLATFORM_LOCK.lock
        begin
          __gtk_fixed_move(fixed, widget, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1fixed_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_fixed_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1fixed_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_fixed_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_fixed_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1fixed_1set_1has_1window, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_fixed_set_has_window(fixed, has_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1fixed_1set_1has_1window, JNI.env, self.jni_id, fixed.to_int, has_window ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_fixed_set_has_window(fixed, has_window)
        PLATFORM_LOCK.lock
        begin
          __gtk_fixed_set_has_window(fixed, has_window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1font_1selection_1dialog_1get_1font_1name, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_font_selection_dialog_get_font_name(fsd)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1font_1selection_1dialog_1get_1font_1name, JNI.env, self.jni_id, fsd.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_font_selection_dialog_get_font_name(fsd)
        PLATFORM_LOCK.lock
        begin
          return __gtk_font_selection_dialog_get_font_name(fsd)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1font_1selection_1dialog_1new, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def __gtk_font_selection_dialog_new(title)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1font_1selection_1dialog_1new, JNI.env, self.jni_id, title.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def gtk_font_selection_dialog_new(title)
        PLATFORM_LOCK.lock
        begin
          return __gtk_font_selection_dialog_new(title)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1font_1selection_1dialog_1set_1font_1name, [:pointer, :long, :int32, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def __gtk_font_selection_dialog_set_font_name(fsd, fontname)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1font_1selection_1dialog_1set_1font_1name, JNI.env, self.jni_id, fsd.to_int, fontname.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def gtk_font_selection_dialog_set_font_name(fsd, fontname)
        PLATFORM_LOCK.lock
        begin
          return __gtk_font_selection_dialog_set_font_name(fsd, fontname)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1frame_1new, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def __gtk_frame_new(label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1frame_1new, JNI.env, self.jni_id, label.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def gtk_frame_new(label)
        PLATFORM_LOCK.lock
        begin
          return __gtk_frame_new(label)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1frame_1get_1label_1widget, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_frame_get_label_widget(frame)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1frame_1get_1label_1widget, JNI.env, self.jni_id, frame.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_frame_get_label_widget(frame)
        PLATFORM_LOCK.lock
        begin
          return __gtk_frame_get_label_widget(frame)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1frame_1set_1label, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def __gtk_frame_set_label(frame, label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1frame_1set_1label, JNI.env, self.jni_id, frame.to_int, label.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def gtk_frame_set_label(frame, label)
        PLATFORM_LOCK.lock
        begin
          __gtk_frame_set_label(frame, label)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1frame_1set_1label_1widget, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_frame_set_label_widget(frame, label_widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1frame_1set_1label_1widget, JNI.env, self.jni_id, frame.to_int, label_widget.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_frame_set_label_widget(frame, label_widget)
        PLATFORM_LOCK.lock
        begin
          __gtk_frame_set_label_widget(frame, label_widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1frame_1set_1shadow_1type, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_frame_set_shadow_type(frame, type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1frame_1set_1shadow_1type, JNI.env, self.jni_id, frame.to_int, type.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_frame_set_shadow_type(frame, type)
        PLATFORM_LOCK.lock
        begin
          __gtk_frame_set_shadow_type(frame, type)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1get_1current_1event, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_get_current_event
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1get_1current_1event, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_get_current_event
        PLATFORM_LOCK.lock
        begin
          return __gtk_get_current_event
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1get_1current_1event_1state, [:pointer, :long, :long], :int8
      typesig { [Array.typed(::Java::Int)] }
      def __gtk_get_current_event_state(state)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1get_1current_1event_1state, JNI.env, self.jni_id, state.jni_id) != 0
      end
      
      typesig { [Array.typed(::Java::Int)] }
      def gtk_get_current_event_state(state)
        PLATFORM_LOCK.lock
        begin
          return __gtk_get_current_event_state(state)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1get_1current_1event_1time, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_get_current_event_time
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1get_1current_1event_1time, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_get_current_event_time
        PLATFORM_LOCK.lock
        begin
          return __gtk_get_current_event_time
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1get_1default_1language, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_get_default_language
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1get_1default_1language, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_get_default_language
        PLATFORM_LOCK.lock
        begin
          return __gtk_get_default_language
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1get_1event_1widget, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_get_event_widget(event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1get_1event_1widget, JNI.env, self.jni_id, event.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_get_event_widget(event)
        PLATFORM_LOCK.lock
        begin
          return __gtk_get_event_widget(event)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1grab_1add, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_grab_add(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1grab_1add, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_grab_add(widget)
        PLATFORM_LOCK.lock
        begin
          __gtk_grab_add(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1grab_1get_1current, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_grab_get_current
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1grab_1get_1current, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_grab_get_current
        PLATFORM_LOCK.lock
        begin
          return __gtk_grab_get_current
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1grab_1remove, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_grab_remove(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1grab_1remove, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_grab_remove(widget)
        PLATFORM_LOCK.lock
        begin
          __gtk_grab_remove(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1hbox_1new, [:pointer, :long, :int8, :int32], :int32
      typesig { [::Java::Boolean, ::Java::Int] }
      # long
      def __gtk_hbox_new(homogeneous, spacing)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1hbox_1new, JNI.env, self.jni_id, homogeneous ? 1 : 0, spacing.to_int)
      end
      
      typesig { [::Java::Boolean, ::Java::Int] }
      # long
      def gtk_hbox_new(homogeneous, spacing)
        PLATFORM_LOCK.lock
        begin
          return __gtk_hbox_new(homogeneous, spacing)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1hscale_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_hscale_new(adjustment)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1hscale_1new, JNI.env, self.jni_id, adjustment.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_hscale_new(adjustment)
        PLATFORM_LOCK.lock
        begin
          return __gtk_hscale_new(adjustment)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1hscrollbar_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_hscrollbar_new(adjustment)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1hscrollbar_1new, JNI.env, self.jni_id, adjustment.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_hscrollbar_new(adjustment)
        PLATFORM_LOCK.lock
        begin
          return __gtk_hscrollbar_new(adjustment)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1hseparator_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_hseparator_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1hseparator_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_hseparator_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_hseparator_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1icon_1factory_1lookup_1default, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def __gtk_icon_factory_lookup_default(stock_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1icon_1factory_1lookup_1default, JNI.env, self.jni_id, stock_id.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def gtk_icon_factory_lookup_default(stock_id)
        PLATFORM_LOCK.lock
        begin
          return __gtk_icon_factory_lookup_default(stock_id)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1icon_1source_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_icon_source_free(source)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1icon_1source_1free, JNI.env, self.jni_id, source.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_icon_source_free(source)
        PLATFORM_LOCK.lock
        begin
          __gtk_icon_source_free(source)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1icon_1source_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_icon_source_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1icon_1source_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_icon_source_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_icon_source_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1icon_1source_1set_1pixbuf, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_icon_source_set_pixbuf(source, pixbuf)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1icon_1source_1set_1pixbuf, JNI.env, self.jni_id, source.to_int, pixbuf.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_icon_source_set_pixbuf(source, pixbuf)
        PLATFORM_LOCK.lock
        begin
          __gtk_icon_source_set_pixbuf(source, pixbuf)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1icon_1set_1render_1icon, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def __gtk_icon_set_render_icon(icon_set, style, direction, state, size, widget, detail)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1icon_1set_1render_1icon, JNI.env, self.jni_id, icon_set.to_int, style.to_int, direction.to_int, state.to_int, size.to_int, widget.to_int, detail.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def gtk_icon_set_render_icon(icon_set, style, direction, state, size, widget, detail)
        PLATFORM_LOCK.lock
        begin
          return __gtk_icon_set_render_icon(icon_set, style, direction, state, size, widget, detail)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1filter_1keypress, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_im_context_filter_keypress(context, event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1filter_1keypress, JNI.env, self.jni_id, context.to_int, event.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_im_context_filter_keypress(context, event)
        PLATFORM_LOCK.lock
        begin
          return __gtk_im_context_filter_keypress(context, event)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1focus_1in, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_im_context_focus_in(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1focus_1in, JNI.env, self.jni_id, context.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_im_context_focus_in(context)
        PLATFORM_LOCK.lock
        begin
          __gtk_im_context_focus_in(context)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1focus_1out, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_im_context_focus_out(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1focus_1out, JNI.env, self.jni_id, context.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_im_context_focus_out(context)
        PLATFORM_LOCK.lock
        begin
          __gtk_im_context_focus_out(context)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1get_1preedit_1string, [:pointer, :long, :int32, :long, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def __gtk_im_context_get_preedit_string(context, str, attrs, cursor_pos)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1get_1preedit_1string, JNI.env, self.jni_id, context.to_int, str.jni_id, attrs.jni_id, cursor_pos.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def gtk_im_context_get_preedit_string(context, str, attrs, cursor_pos)
        PLATFORM_LOCK.lock
        begin
          __gtk_im_context_get_preedit_string(context, str, attrs, cursor_pos)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1get_1type, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_im_context_get_type
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1get_1type, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_im_context_get_type
        PLATFORM_LOCK.lock
        begin
          return __gtk_im_context_get_type
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1reset, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_im_context_reset(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1reset, JNI.env, self.jni_id, context.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_im_context_reset(context)
        PLATFORM_LOCK.lock
        begin
          __gtk_im_context_reset(context)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1set_1client_1window, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_im_context_set_client_window(context, window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1set_1client_1window, JNI.env, self.jni_id, context.to_int, window.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_im_context_set_client_window(context, window)
        PLATFORM_LOCK.lock
        begin
          __gtk_im_context_set_client_window(context, window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1set_1cursor_1location, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkRectangle] }
      # long
      def __gtk_im_context_set_cursor_location(context, area)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1context_1set_1cursor_1location, JNI.env, self.jni_id, context.to_int, area.jni_id)
      end
      
      typesig { [::Java::Int, GdkRectangle] }
      # long
      def gtk_im_context_set_cursor_location(context, area)
        PLATFORM_LOCK.lock
        begin
          __gtk_im_context_set_cursor_location(context, area)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1multicontext_1append_1menuitems, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_im_multicontext_append_menuitems(context, menushell)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1multicontext_1append_1menuitems, JNI.env, self.jni_id, context.to_int, menushell.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_im_multicontext_append_menuitems(context, menushell)
        PLATFORM_LOCK.lock
        begin
          __gtk_im_multicontext_append_menuitems(context, menushell)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1multicontext_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_im_multicontext_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1im_1multicontext_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_im_multicontext_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_im_multicontext_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1menu_1item_1new_1with_1label, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def __gtk_image_menu_item_new_with_label(label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1menu_1item_1new_1with_1label, JNI.env, self.jni_id, label.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def gtk_image_menu_item_new_with_label(label)
        PLATFORM_LOCK.lock
        begin
          return __gtk_image_menu_item_new_with_label(label)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1menu_1item_1set_1image, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_image_menu_item_set_image(menu_item, image)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1menu_1item_1set_1image, JNI.env, self.jni_id, menu_item.to_int, image.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_image_menu_item_set_image(menu_item, image)
        PLATFORM_LOCK.lock
        begin
          __gtk_image_menu_item_set_image(menu_item, image)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_image_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_image_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_image_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1new_1from_1pixbuf, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_image_new_from_pixbuf(pixbuf)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1new_1from_1pixbuf, JNI.env, self.jni_id, pixbuf.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_image_new_from_pixbuf(pixbuf)
        PLATFORM_LOCK.lock
        begin
          return __gtk_image_new_from_pixbuf(pixbuf)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1new_1from_1pixmap, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_image_new_from_pixmap(pixmap, mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1new_1from_1pixmap, JNI.env, self.jni_id, pixmap.to_int, mask.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_image_new_from_pixmap(pixmap, mask)
        PLATFORM_LOCK.lock
        begin
          return __gtk_image_new_from_pixmap(pixmap, mask)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1set_1from_1pixbuf, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_image_set_from_pixbuf(image, pixbuf)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1set_1from_1pixbuf, JNI.env, self.jni_id, image.to_int, pixbuf.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_image_set_from_pixbuf(image, pixbuf)
        PLATFORM_LOCK.lock
        begin
          __gtk_image_set_from_pixbuf(image, pixbuf)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1set_1from_1pixmap, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_image_set_from_pixmap(image, pixmap, mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1image_1set_1from_1pixmap, JNI.env, self.jni_id, image.to_int, pixmap.to_int, mask.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_image_set_from_pixmap(image, pixmap, mask)
        PLATFORM_LOCK.lock
        begin
          __gtk_image_set_from_pixmap(image, pixmap, mask)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1init_1check, [:pointer, :long, :long, :long], :int8
      typesig { [Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def __gtk_init_check(argc, argv)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1init_1check, JNI.env, self.jni_id, argc.jni_id, argv.jni_id) != 0
      end
      
      typesig { [Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def gtk_init_check(argc, argv)
        PLATFORM_LOCK.lock
        begin
          return __gtk_init_check(argc, argv)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1get_1layout, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_label_get_layout(label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1get_1layout, JNI.env, self.jni_id, label.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_label_get_layout(label)
        PLATFORM_LOCK.lock
        begin
          return __gtk_label_get_layout(label)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1get_1mnemonic_1keyval, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_label_get_mnemonic_keyval(label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1get_1mnemonic_1keyval, JNI.env, self.jni_id, label.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_label_get_mnemonic_keyval(label)
        PLATFORM_LOCK.lock
        begin
          return __gtk_label_get_mnemonic_keyval(label)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1new, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def __gtk_label_new(label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1new, JNI.env, self.jni_id, label.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def gtk_label_new(label)
        PLATFORM_LOCK.lock
        begin
          return __gtk_label_new(label)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1new_1with_1mnemonic, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def __gtk_label_new_with_mnemonic(str)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1new_1with_1mnemonic, JNI.env, self.jni_id, str.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def gtk_label_new_with_mnemonic(str)
        PLATFORM_LOCK.lock
        begin
          return __gtk_label_new_with_mnemonic(str)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1attributes, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_label_set_attributes(label, attrs)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1attributes, JNI.env, self.jni_id, label.to_int, attrs.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_label_set_attributes(label, attrs)
        PLATFORM_LOCK.lock
        begin
          __gtk_label_set_attributes(label, attrs)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1justify, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_label_set_justify(label, jtype)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1justify, JNI.env, self.jni_id, label.to_int, jtype.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_label_set_justify(label, jtype)
        PLATFORM_LOCK.lock
        begin
          __gtk_label_set_justify(label, jtype)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1line_1wrap, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_label_set_line_wrap(label, wrap)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1line_1wrap, JNI.env, self.jni_id, label.to_int, wrap ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_label_set_line_wrap(label, wrap)
        PLATFORM_LOCK.lock
        begin
          __gtk_label_set_line_wrap(label, wrap)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1line_1wrap_1mode, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_label_set_line_wrap_mode(label, wrap_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1line_1wrap_1mode, JNI.env, self.jni_id, label.to_int, wrap_mode.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_label_set_line_wrap_mode(label, wrap_mode)
        PLATFORM_LOCK.lock
        begin
          __gtk_label_set_line_wrap_mode(label, wrap_mode)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1text__II, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_label_set_text(label, str)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1text__II, JNI.env, self.jni_id, label.to_int, str.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_label_set_text(label, str)
        PLATFORM_LOCK.lock
        begin
          __gtk_label_set_text(label, str)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1text__I_3B, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def __gtk_label_set_text(label, str)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1text__I_3B, JNI.env, self.jni_id, label.to_int, str.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def gtk_label_set_text(label, str)
        PLATFORM_LOCK.lock
        begin
          __gtk_label_set_text(label, str)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1text_1with_1mnemonic, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def __gtk_label_set_text_with_mnemonic(label, str)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1label_1set_1text_1with_1mnemonic, JNI.env, self.jni_id, label.to_int, str.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def gtk_label_set_text_with_mnemonic(label, str)
        PLATFORM_LOCK.lock
        begin
          __gtk_label_set_text_with_mnemonic(label, str)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1append_1items, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_list_append_items(list, items)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1append_1items, JNI.env, self.jni_id, list.to_int, items.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_list_append_items(list, items)
        PLATFORM_LOCK.lock
        begin
          __gtk_list_append_items(list, items)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1clear_1items, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gtk_list_clear_items(list, start, end_)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1clear_1items, JNI.env, self.jni_id, list.to_int, start.to_int, end_.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gtk_list_clear_items(list, start, end_)
        PLATFORM_LOCK.lock
        begin
          __gtk_list_clear_items(list, start, end_)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1insert_1items, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_list_insert_items(list, items, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1insert_1items, JNI.env, self.jni_id, list.to_int, items.to_int, position.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_list_insert_items(list, items, position)
        PLATFORM_LOCK.lock
        begin
          __gtk_list_insert_items(list, items, position)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1item_1new_1with_1label, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def __gtk_list_item_new_with_label(label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1item_1new_1with_1label, JNI.env, self.jni_id, label.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def gtk_list_item_new_with_label(label)
        PLATFORM_LOCK.lock
        begin
          return __gtk_list_item_new_with_label(label)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1remove_1items, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_list_remove_items(list, items)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1remove_1items, JNI.env, self.jni_id, list.to_int, items.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_list_remove_items(list, items)
        PLATFORM_LOCK.lock
        begin
          __gtk_list_remove_items(list, items)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1select_1item, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_list_select_item(list, item)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1select_1item, JNI.env, self.jni_id, list.to_int, item.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_list_select_item(list, item)
        PLATFORM_LOCK.lock
        begin
          __gtk_list_select_item(list, item)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1unselect_1all, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_list_unselect_all(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1unselect_1all, JNI.env, self.jni_id, list.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_list_unselect_all(list)
        PLATFORM_LOCK.lock
        begin
          __gtk_list_unselect_all(list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1unselect_1item, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_list_unselect_item(list, item)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1unselect_1item, JNI.env, self.jni_id, list.to_int, item.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_list_unselect_item(list, item)
        PLATFORM_LOCK.lock
        begin
          __gtk_list_unselect_item(list, item)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1append, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_list_store_append(list_store, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1append, JNI.env, self.jni_id, list_store.to_int, iter.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_list_store_append(list_store, iter)
        PLATFORM_LOCK.lock
        begin
          __gtk_list_store_append(list_store, iter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1clear, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_list_store_clear(store)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1clear, JNI.env, self.jni_id, store.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_list_store_clear(store)
        PLATFORM_LOCK.lock
        begin
          __gtk_list_store_clear(store)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1insert, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_list_store_insert(list_store, iter, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1insert, JNI.env, self.jni_id, list_store.to_int, iter.to_int, position.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_list_store_insert(list_store, iter, position)
        PLATFORM_LOCK.lock
        begin
          __gtk_list_store_insert(list_store, iter, position)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1newv, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def __gtk_list_store_newv(num_columns, types)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1newv, JNI.env, self.jni_id, num_columns.to_int, types.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def gtk_list_store_newv(num_columns, types)
        PLATFORM_LOCK.lock
        begin
          return __gtk_list_store_newv(num_columns, types)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1remove, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_list_store_remove(list_store, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1remove, JNI.env, self.jni_id, list_store.to_int, iter.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_list_store_remove(list_store, iter)
        PLATFORM_LOCK.lock
        begin
          __gtk_list_store_remove(list_store, iter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1set__III_3BI, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      # long
      # long
      def __gtk_list_store_set(store, iter, column, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1set__III_3BI, JNI.env, self.jni_id, store.to_int, iter.to_int, column.to_int, value.jni_id, terminator.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      # long
      # long
      def gtk_list_store_set(store, iter, column, value, terminator)
        PLATFORM_LOCK.lock
        begin
          __gtk_list_store_set(store, iter, column, value, terminator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1set__IIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_list_store_set(store, iter, column, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1set__IIIII, JNI.env, self.jni_id, store.to_int, iter.to_int, column.to_int, value.to_int, terminator.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_list_store_set(store, iter, column, value, terminator)
        PLATFORM_LOCK.lock
        begin
          __gtk_list_store_set(store, iter, column, value, terminator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1set__IIIJI, [:pointer, :long, :int32, :int32, :int32, :int64, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_list_store_set(store, iter, column, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1set__IIIJI, JNI.env, self.jni_id, store.to_int, iter.to_int, column.to_int, value.to_int, terminator.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int] }
      # long
      # long
      # long
      def gtk_list_store_set(store, iter, column, value, terminator)
        PLATFORM_LOCK.lock
        begin
          __gtk_list_store_set(store, iter, column, value, terminator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1set__IIIL#{GdkColor.jni_name}_2I".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkColor, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_list_store_set(store, iter, column, value, terminator)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1set__IIIL#{GdkColor.jni_name}_2I".to_sym, JNI.env, self.jni_id, store.to_int, iter.to_int, column.to_int, value.jni_id, terminator.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkColor, ::Java::Int] }
      # long
      # long
      # long
      def gtk_list_store_set(store, iter, column, value, terminator)
        PLATFORM_LOCK.lock
        begin
          __gtk_list_store_set(store, iter, column, value, terminator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1set__IIIZI, [:pointer, :long, :int32, :int32, :int32, :int8, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_list_store_set(store, iter, column, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1list_1store_1set__IIIZI, JNI.env, self.jni_id, store.to_int, iter.to_int, column.to_int, value ? 1 : 0, terminator.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int] }
      # long
      # long
      # long
      def gtk_list_store_set(store, iter, column, value, terminator)
        PLATFORM_LOCK.lock
        begin
          __gtk_list_store_set(store, iter, column, value, terminator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1major_1version, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_major_version
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1major_1version, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_major_version
        PLATFORM_LOCK.lock
        begin
          return __gtk_major_version
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1minor_1version, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_minor_version
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1minor_1version, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_minor_version
        PLATFORM_LOCK.lock
        begin
          return __gtk_minor_version
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1micro_1version, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_micro_version
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1micro_1version, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_micro_version
        PLATFORM_LOCK.lock
        begin
          return __gtk_micro_version
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1main, [:pointer, :long], :void
      typesig { [] }
      def __gtk_main
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1main, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_main
        PLATFORM_LOCK.lock
        begin
          __gtk_main
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1main_1iteration, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_main_iteration
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1main_1iteration, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_main_iteration
        PLATFORM_LOCK.lock
        begin
          return __gtk_main_iteration
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1main_1do_1event, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_main_do_event(event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1main_1do_1event, JNI.env, self.jni_id, event.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_main_do_event(event)
        PLATFORM_LOCK.lock
        begin
          __gtk_main_do_event(event)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1bar_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_menu_bar_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1bar_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_menu_bar_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_menu_bar_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1item_1remove_1submenu, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_menu_item_remove_submenu(menu_item)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1item_1remove_1submenu, JNI.env, self.jni_id, menu_item.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_menu_item_remove_submenu(menu_item)
        PLATFORM_LOCK.lock
        begin
          __gtk_menu_item_remove_submenu(menu_item)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1item_1get_1submenu, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_menu_item_get_submenu(menu_item)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1item_1get_1submenu, JNI.env, self.jni_id, menu_item.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_menu_item_get_submenu(menu_item)
        PLATFORM_LOCK.lock
        begin
          return __gtk_menu_item_get_submenu(menu_item)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1item_1set_1submenu, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_menu_item_set_submenu(menu_item, submenu)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1item_1set_1submenu, JNI.env, self.jni_id, menu_item.to_int, submenu.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_menu_item_set_submenu(menu_item, submenu)
        PLATFORM_LOCK.lock
        begin
          __gtk_menu_item_set_submenu(menu_item, submenu)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_menu_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_menu_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_menu_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1popdown, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_menu_popdown(menu)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1popdown, JNI.env, self.jni_id, menu.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_menu_popdown(menu)
        PLATFORM_LOCK.lock
        begin
          __gtk_menu_popdown(menu)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1popup, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def __gtk_menu_popup(menu, parent_menu_shell, parent_menu_item, func, data, button, activate_time)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1popup, JNI.env, self.jni_id, menu.to_int, parent_menu_shell.to_int, parent_menu_item.to_int, func.to_int, data.to_int, button.to_int, activate_time.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def gtk_menu_popup(menu, parent_menu_shell, parent_menu_item, func, data, button, activate_time)
        PLATFORM_LOCK.lock
        begin
          __gtk_menu_popup(menu, parent_menu_shell, parent_menu_item, func, data, button, activate_time)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1shell_1deactivate, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_menu_shell_deactivate(menu_shell)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1shell_1deactivate, JNI.env, self.jni_id, menu_shell.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_menu_shell_deactivate(menu_shell)
        PLATFORM_LOCK.lock
        begin
          __gtk_menu_shell_deactivate(menu_shell)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1shell_1insert, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_menu_shell_insert(menu_shell, child, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1shell_1insert, JNI.env, self.jni_id, menu_shell.to_int, child.to_int, position.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_menu_shell_insert(menu_shell, child, position)
        PLATFORM_LOCK.lock
        begin
          __gtk_menu_shell_insert(menu_shell, child, position)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1shell_1select_1item, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_menu_shell_select_item(menu_shell, menu_item)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1shell_1select_1item, JNI.env, self.jni_id, menu_shell.to_int, menu_item.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_menu_shell_select_item(menu_shell, menu_item)
        PLATFORM_LOCK.lock
        begin
          __gtk_menu_shell_select_item(menu_shell, menu_item)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1shell_1set_1take_1focus, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_menu_shell_set_take_focus(menu_shell, take_focus)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1menu_1shell_1set_1take_1focus, JNI.env, self.jni_id, menu_shell.to_int, take_focus ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_menu_shell_set_take_focus(menu_shell, take_focus)
        PLATFORM_LOCK.lock
        begin
          __gtk_menu_shell_set_take_focus(menu_shell, take_focus)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1message_1dialog_1new, [:pointer, :long, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # long
      # long
      def __gtk_message_dialog_new(parent, flags, type, buttons, message_format)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1message_1dialog_1new, JNI.env, self.jni_id, parent.to_int, flags.to_int, type.to_int, buttons.to_int, message_format.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # long
      # long
      def gtk_message_dialog_new(parent, flags, type, buttons, message_format)
        PLATFORM_LOCK.lock
        begin
          return __gtk_message_dialog_new(parent, flags, type, buttons, message_format)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1misc_1set_1alignment, [:pointer, :long, :int32, :float, :float], :void
      typesig { [::Java::Int, ::Java::Float, ::Java::Float] }
      # long
      def __gtk_misc_set_alignment(misc, xalign, yalign)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1misc_1set_1alignment, JNI.env, self.jni_id, misc.to_int, xalign, yalign)
      end
      
      typesig { [::Java::Int, ::Java::Float, ::Java::Float] }
      # long
      def gtk_misc_set_alignment(misc, xalign, yalign)
        PLATFORM_LOCK.lock
        begin
          __gtk_misc_set_alignment(misc, xalign, yalign)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1get_1current_1page, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_notebook_get_current_page(notebook)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1get_1current_1page, JNI.env, self.jni_id, notebook.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_notebook_get_current_page(notebook)
        PLATFORM_LOCK.lock
        begin
          return __gtk_notebook_get_current_page(notebook)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1get_1scrollable, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_notebook_get_scrollable(notebook)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1get_1scrollable, JNI.env, self.jni_id, notebook.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_notebook_get_scrollable(notebook)
        PLATFORM_LOCK.lock
        begin
          return __gtk_notebook_get_scrollable(notebook)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1insert_1page, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_notebook_insert_page(notebook, child, tab_label, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1insert_1page, JNI.env, self.jni_id, notebook.to_int, child.to_int, tab_label.to_int, position.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_notebook_insert_page(notebook, child, tab_label, position)
        PLATFORM_LOCK.lock
        begin
          __gtk_notebook_insert_page(notebook, child, tab_label, position)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_notebook_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_notebook_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_notebook_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1next_1page, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_notebook_next_page(notebook)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1next_1page, JNI.env, self.jni_id, notebook.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_notebook_next_page(notebook)
        PLATFORM_LOCK.lock
        begin
          __gtk_notebook_next_page(notebook)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1prev_1page, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_notebook_prev_page(notebook)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1prev_1page, JNI.env, self.jni_id, notebook.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_notebook_prev_page(notebook)
        PLATFORM_LOCK.lock
        begin
          __gtk_notebook_prev_page(notebook)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1remove_1page, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_notebook_remove_page(notebook, page_num)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1remove_1page, JNI.env, self.jni_id, notebook.to_int, page_num.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_notebook_remove_page(notebook, page_num)
        PLATFORM_LOCK.lock
        begin
          __gtk_notebook_remove_page(notebook, page_num)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1set_1current_1page, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_notebook_set_current_page(notebook, page_num)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1set_1current_1page, JNI.env, self.jni_id, notebook.to_int, page_num.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_notebook_set_current_page(notebook, page_num)
        PLATFORM_LOCK.lock
        begin
          __gtk_notebook_set_current_page(notebook, page_num)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1set_1scrollable, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_notebook_set_scrollable(notebook, scrollable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1set_1scrollable, JNI.env, self.jni_id, notebook.to_int, scrollable ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_notebook_set_scrollable(notebook, scrollable)
        PLATFORM_LOCK.lock
        begin
          __gtk_notebook_set_scrollable(notebook, scrollable)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1set_1show_1tabs, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_notebook_set_show_tabs(notebook, show_tabs)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1set_1show_1tabs, JNI.env, self.jni_id, notebook.to_int, show_tabs ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_notebook_set_show_tabs(notebook, show_tabs)
        PLATFORM_LOCK.lock
        begin
          __gtk_notebook_set_show_tabs(notebook, show_tabs)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1set_1tab_1pos, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_notebook_set_tab_pos(notebook, pos)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1notebook_1set_1tab_1pos, JNI.env, self.jni_id, notebook.to_int, pos.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_notebook_set_tab_pos(notebook, pos)
        PLATFORM_LOCK.lock
        begin
          __gtk_notebook_set_tab_pos(notebook, pos)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1object_1sink, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_object_sink(object)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1object_1sink, JNI.env, self.jni_id, object.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_object_sink(object)
        PLATFORM_LOCK.lock
        begin
          __gtk_object_sink(object)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_page_setup_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_page_setup_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_page_setup_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1orientation, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_page_setup_get_orientation(setup)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1orientation, JNI.env, self.jni_id, setup.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_page_setup_get_orientation(setup)
        PLATFORM_LOCK.lock
        begin
          return __gtk_page_setup_get_orientation(setup)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1orientation, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_page_setup_set_orientation(setup, orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1orientation, JNI.env, self.jni_id, setup.to_int, orientation.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_page_setup_set_orientation(setup, orientation)
        PLATFORM_LOCK.lock
        begin
          __gtk_page_setup_set_orientation(setup, orientation)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1paper_1size, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_page_setup_get_paper_size(setup)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1paper_1size, JNI.env, self.jni_id, setup.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_page_setup_get_paper_size(setup)
        PLATFORM_LOCK.lock
        begin
          return __gtk_page_setup_get_paper_size(setup)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1paper_1size, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_page_setup_set_paper_size(setup, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1paper_1size, JNI.env, self.jni_id, setup.to_int, size.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_page_setup_set_paper_size(setup, size)
        PLATFORM_LOCK.lock
        begin
          __gtk_page_setup_set_paper_size(setup, size)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1top_1margin, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_page_setup_get_top_margin(setup, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1top_1margin, JNI.env, self.jni_id, setup.to_int, unit.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_page_setup_get_top_margin(setup, unit)
        PLATFORM_LOCK.lock
        begin
          return __gtk_page_setup_get_top_margin(setup, unit)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1top_1margin, [:pointer, :long, :int32, :double, :int32], :void
      typesig { [::Java::Int, ::Java::Double, ::Java::Int] }
      # long
      def __gtk_page_setup_set_top_margin(setup, margin, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1top_1margin, JNI.env, self.jni_id, setup.to_int, margin, unit.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Double, ::Java::Int] }
      # long
      def gtk_page_setup_set_top_margin(setup, margin, unit)
        PLATFORM_LOCK.lock
        begin
          __gtk_page_setup_set_top_margin(setup, margin, unit)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1bottom_1margin, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_page_setup_get_bottom_margin(setup, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1bottom_1margin, JNI.env, self.jni_id, setup.to_int, unit.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_page_setup_get_bottom_margin(setup, unit)
        PLATFORM_LOCK.lock
        begin
          return __gtk_page_setup_get_bottom_margin(setup, unit)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1bottom_1margin, [:pointer, :long, :int32, :double, :int32], :void
      typesig { [::Java::Int, ::Java::Double, ::Java::Int] }
      # long
      def __gtk_page_setup_set_bottom_margin(setup, margin, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1bottom_1margin, JNI.env, self.jni_id, setup.to_int, margin, unit.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Double, ::Java::Int] }
      # long
      def gtk_page_setup_set_bottom_margin(setup, margin, unit)
        PLATFORM_LOCK.lock
        begin
          __gtk_page_setup_set_bottom_margin(setup, margin, unit)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1left_1margin, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_page_setup_get_left_margin(setup, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1left_1margin, JNI.env, self.jni_id, setup.to_int, unit.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_page_setup_get_left_margin(setup, unit)
        PLATFORM_LOCK.lock
        begin
          return __gtk_page_setup_get_left_margin(setup, unit)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1left_1margin, [:pointer, :long, :int32, :double, :int32], :void
      typesig { [::Java::Int, ::Java::Double, ::Java::Int] }
      # long
      def __gtk_page_setup_set_left_margin(setup, margin, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1left_1margin, JNI.env, self.jni_id, setup.to_int, margin, unit.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Double, ::Java::Int] }
      # long
      def gtk_page_setup_set_left_margin(setup, margin, unit)
        PLATFORM_LOCK.lock
        begin
          __gtk_page_setup_set_left_margin(setup, margin, unit)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1right_1margin, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_page_setup_get_right_margin(setup, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1right_1margin, JNI.env, self.jni_id, setup.to_int, unit.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_page_setup_get_right_margin(setup, unit)
        PLATFORM_LOCK.lock
        begin
          return __gtk_page_setup_get_right_margin(setup, unit)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1right_1margin, [:pointer, :long, :int32, :double, :int32], :void
      typesig { [::Java::Int, ::Java::Double, ::Java::Int] }
      # long
      def __gtk_page_setup_set_right_margin(setup, margin, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1set_1right_1margin, JNI.env, self.jni_id, setup.to_int, margin, unit.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Double, ::Java::Int] }
      # long
      def gtk_page_setup_set_right_margin(setup, margin, unit)
        PLATFORM_LOCK.lock
        begin
          __gtk_page_setup_set_right_margin(setup, margin, unit)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1paper_1width, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_page_setup_get_paper_width(setup, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1paper_1width, JNI.env, self.jni_id, setup.to_int, unit.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_page_setup_get_paper_width(setup, unit)
        PLATFORM_LOCK.lock
        begin
          return __gtk_page_setup_get_paper_width(setup, unit)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1paper_1height, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_page_setup_get_paper_height(setup, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1paper_1height, JNI.env, self.jni_id, setup.to_int, unit.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_page_setup_get_paper_height(setup, unit)
        PLATFORM_LOCK.lock
        begin
          return __gtk_page_setup_get_paper_height(setup, unit)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1page_1width, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_page_setup_get_page_width(setup, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1page_1width, JNI.env, self.jni_id, setup.to_int, unit.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_page_setup_get_page_width(setup, unit)
        PLATFORM_LOCK.lock
        begin
          return __gtk_page_setup_get_page_width(setup, unit)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1page_1height, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_page_setup_get_page_height(setup, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1page_1setup_1get_1page_1height, JNI.env, self.jni_id, setup.to_int, unit.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_page_setup_get_page_height(setup, unit)
        PLATFORM_LOCK.lock
        begin
          return __gtk_page_setup_get_page_height(setup, unit)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1handle, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_paint_handle(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1handle, JNI.env, self.jni_id, style.to_int, window.to_int, state_type.to_int, shadow_type.to_int, area.jni_id, widget.to_int, detail.jni_id, x.to_int, y.to_int, width.to_int, height.to_int, orientation.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_paint_handle(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, orientation)
        PLATFORM_LOCK.lock
        begin
          __gtk_paint_handle(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, orientation)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1flat_1box, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_paint_flat_box(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1flat_1box, JNI.env, self.jni_id, style.to_int, window.to_int, state_type.to_int, shadow_type.to_int, area.jni_id, widget.to_int, detail.jni_id, x.to_int, y.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_paint_flat_box(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        PLATFORM_LOCK.lock
        begin
          __gtk_paint_flat_box(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1focus, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_paint_focus(style, window, state_type, area, widget, detail, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1focus, JNI.env, self.jni_id, style.to_int, window.to_int, state_type.to_int, area.jni_id, widget.to_int, detail.jni_id, x.to_int, y.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_paint_focus(style, window, state_type, area, widget, detail, x, y, width, height)
        PLATFORM_LOCK.lock
        begin
          __gtk_paint_focus(style, window, state_type, area, widget, detail, x, y, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1option, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_paint_option(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1option, JNI.env, self.jni_id, style.to_int, window.to_int, state_type.to_int, shadow_type.to_int, area.jni_id, widget.to_int, detail.jni_id, x.to_int, y.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_paint_option(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        PLATFORM_LOCK.lock
        begin
          __gtk_paint_option(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1slider, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_paint_slider(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1slider, JNI.env, self.jni_id, style.to_int, window.to_int, state_type.to_int, shadow_type.to_int, area.jni_id, widget.to_int, detail.jni_id, x.to_int, y.to_int, width.to_int, height.to_int, orientation.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_paint_slider(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, orientation)
        PLATFORM_LOCK.lock
        begin
          __gtk_paint_slider(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, orientation)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1tab, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_paint_tab(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1tab, JNI.env, self.jni_id, style.to_int, window.to_int, state_type.to_int, shadow_type.to_int, area.jni_id, widget.to_int, detail.jni_id, x.to_int, y.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_paint_tab(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        PLATFORM_LOCK.lock
        begin
          __gtk_paint_tab(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1arrow, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int8, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_paint_arrow(style, window, state_type, shadow_type, area, widget, detail, arrow_type, fill, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1arrow, JNI.env, self.jni_id, style.to_int, window.to_int, state_type.to_int, shadow_type.to_int, area.jni_id, widget.to_int, detail.jni_id, arrow_type.to_int, fill ? 1 : 0, x.to_int, y.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_paint_arrow(style, window, state_type, shadow_type, area, widget, detail, arrow_type, fill, x, y, width, height)
        PLATFORM_LOCK.lock
        begin
          __gtk_paint_arrow(style, window, state_type, shadow_type, area, widget, detail, arrow_type, fill, x, y, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1box, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_paint_box(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1box, JNI.env, self.jni_id, style.to_int, window.to_int, state_type.to_int, shadow_type.to_int, area.jni_id, widget.to_int, detail.jni_id, x.to_int, y.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_paint_box(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        PLATFORM_LOCK.lock
        begin
          __gtk_paint_box(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1box_1gap, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_paint_box_gap(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, gap_side, gap_x, gap_width)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1box_1gap, JNI.env, self.jni_id, style.to_int, window.to_int, state_type.to_int, shadow_type.to_int, area.jni_id, widget.to_int, detail.jni_id, x.to_int, y.to_int, width.to_int, height.to_int, gap_side.to_int, gap_x.to_int, gap_width.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_paint_box_gap(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, gap_side, gap_x, gap_width)
        PLATFORM_LOCK.lock
        begin
          __gtk_paint_box_gap(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, gap_side, gap_x, gap_width)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1check, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_paint_check(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1check, JNI.env, self.jni_id, style.to_int, window.to_int, state_type.to_int, shadow_type.to_int, area.jni_id, widget.to_int, detail.jni_id, x.to_int, y.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_paint_check(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        PLATFORM_LOCK.lock
        begin
          __gtk_paint_check(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1expander, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_paint_expander(style, window, state_type, area, widget, detail, x, y, expander_style)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1expander, JNI.env, self.jni_id, style.to_int, window.to_int, state_type.to_int, area.jni_id, widget.to_int, detail.jni_id, x.to_int, y.to_int, expander_style.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_paint_expander(style, window, state_type, area, widget, detail, x, y, expander_style)
        PLATFORM_LOCK.lock
        begin
          __gtk_paint_expander(style, window, state_type, area, widget, detail, x, y, expander_style)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1extension, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_paint_extension(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, gap_side)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1extension, JNI.env, self.jni_id, style.to_int, window.to_int, state_type.to_int, shadow_type.to_int, area.jni_id, widget.to_int, detail.jni_id, x.to_int, y.to_int, width.to_int, height.to_int, gap_side.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_paint_extension(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, gap_side)
        PLATFORM_LOCK.lock
        begin
          __gtk_paint_extension(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, gap_side)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1hline, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_paint_hline(style, window, state_type, area, widget, detail, x1, x2, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1hline, JNI.env, self.jni_id, style.to_int, window.to_int, state_type.to_int, area.jni_id, widget.to_int, detail.jni_id, x1.to_int, x2.to_int, y.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_paint_hline(style, window, state_type, area, widget, detail, x1, x2, y)
        PLATFORM_LOCK.lock
        begin
          __gtk_paint_hline(style, window, state_type, area, widget, detail, x1, x2, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1layout, [:pointer, :long, :int32, :int32, :int32, :int8, :long, :int32, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def __gtk_paint_layout(style, window, state_type, use_text, area, widget, detail, x, y, layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1layout, JNI.env, self.jni_id, style.to_int, window.to_int, state_type.to_int, use_text ? 1 : 0, area.jni_id, widget.to_int, detail.jni_id, x.to_int, y.to_int, layout.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def gtk_paint_layout(style, window, state_type, use_text, area, widget, detail, x, y, layout)
        PLATFORM_LOCK.lock
        begin
          __gtk_paint_layout(style, window, state_type, use_text, area, widget, detail, x, y, layout)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1shadow_1gap, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_paint_shadow_gap(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, gap_side, gap_x, gap_width)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1shadow_1gap, JNI.env, self.jni_id, style.to_int, window.to_int, state_type.to_int, shadow_type.to_int, area.jni_id, widget.to_int, detail.jni_id, x.to_int, y.to_int, width.to_int, height.to_int, gap_side.to_int, gap_x.to_int, gap_width.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_paint_shadow_gap(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, gap_side, gap_x, gap_width)
        PLATFORM_LOCK.lock
        begin
          __gtk_paint_shadow_gap(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height, gap_side, gap_x, gap_width)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1shadow, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_paint_shadow(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1shadow, JNI.env, self.jni_id, style.to_int, window.to_int, state_type.to_int, shadow_type.to_int, area.jni_id, widget.to_int, detail.jni_id, x.to_int, y.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_paint_shadow(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        PLATFORM_LOCK.lock
        begin
          __gtk_paint_shadow(style, window, state_type, shadow_type, area, widget, detail, x, y, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1vline, [:pointer, :long, :int32, :int32, :int32, :long, :int32, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_paint_vline(style, window, state_type, area, widget, detail, y1, y2, x)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paint_1vline, JNI.env, self.jni_id, style.to_int, window.to_int, state_type.to_int, area.jni_id, widget.to_int, detail.jni_id, y1.to_int, y2.to_int, x.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_paint_vline(style, window, state_type, area, widget, detail, y1, y2, x)
        PLATFORM_LOCK.lock
        begin
          __gtk_paint_vline(style, window, state_type, area, widget, detail, y1, y2, x)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_paper_size_free(size)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1free, JNI.env, self.jni_id, size.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_paper_size_free(size)
        PLATFORM_LOCK.lock
        begin
          __gtk_paper_size_free(size)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1new, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def __gtk_paper_size_new(name)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1new, JNI.env, self.jni_id, name.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def gtk_paper_size_new(name)
        PLATFORM_LOCK.lock
        begin
          return __gtk_paper_size_new(name)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1new_1from_1ppd, [:pointer, :long, :long, :long, :double, :double], :int32
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Double, ::Java::Double] }
      # long
      def __gtk_paper_size_new_from_ppd(ppd_name, ppd_display_name, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1new_1from_1ppd, JNI.env, self.jni_id, ppd_name.jni_id, ppd_display_name.jni_id, width, height)
      end
      
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Double, ::Java::Double] }
      # long
      def gtk_paper_size_new_from_ppd(ppd_name, ppd_display_name, width, height)
        PLATFORM_LOCK.lock
        begin
          return __gtk_paper_size_new_from_ppd(ppd_name, ppd_display_name, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1new_1custom, [:pointer, :long, :long, :long, :double, :double, :int32], :int32
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Double, ::Java::Double, ::Java::Int] }
      # long
      def __gtk_paper_size_new_custom(name, display_name, width, height, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1new_1custom, JNI.env, self.jni_id, name.jni_id, display_name.jni_id, width, height, unit.to_int)
      end
      
      typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Double, ::Java::Double, ::Java::Int] }
      # long
      def gtk_paper_size_new_custom(name, display_name, width, height, unit)
        PLATFORM_LOCK.lock
        begin
          return __gtk_paper_size_new_custom(name, display_name, width, height, unit)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1get_1name, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_paper_size_get_name(size)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1get_1name, JNI.env, self.jni_id, size.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_paper_size_get_name(size)
        PLATFORM_LOCK.lock
        begin
          return __gtk_paper_size_get_name(size)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1get_1display_1name, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_paper_size_get_display_name(size)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1get_1display_1name, JNI.env, self.jni_id, size.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_paper_size_get_display_name(size)
        PLATFORM_LOCK.lock
        begin
          return __gtk_paper_size_get_display_name(size)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1get_1ppd_1name, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_paper_size_get_ppd_name(size)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1get_1ppd_1name, JNI.env, self.jni_id, size.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_paper_size_get_ppd_name(size)
        PLATFORM_LOCK.lock
        begin
          return __gtk_paper_size_get_ppd_name(size)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1get_1width, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_paper_size_get_width(size, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1get_1width, JNI.env, self.jni_id, size.to_int, unit.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_paper_size_get_width(size, unit)
        PLATFORM_LOCK.lock
        begin
          return __gtk_paper_size_get_width(size, unit)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1get_1height, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_paper_size_get_height(size, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1get_1height, JNI.env, self.jni_id, size.to_int, unit.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_paper_size_get_height(size, unit)
        PLATFORM_LOCK.lock
        begin
          return __gtk_paper_size_get_height(size, unit)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1is_1custom, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_paper_size_is_custom(size)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1paper_1size_1is_1custom, JNI.env, self.jni_id, size.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_paper_size_is_custom(size)
        PLATFORM_LOCK.lock
        begin
          return __gtk_paper_size_is_custom(size)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1plug_1get_1id, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_plug_get_id(plug)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1plug_1get_1id, JNI.env, self.jni_id, plug.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_plug_get_id(plug)
        PLATFORM_LOCK.lock
        begin
          return __gtk_plug_get_id(plug)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1plug_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_plug_new(socket_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1plug_1new, JNI.env, self.jni_id, socket_id.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_plug_new(socket_id)
        PLATFORM_LOCK.lock
        begin
          return __gtk_plug_new(socket_id)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1printer_1get_1backend, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_printer_get_backend(printer)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1printer_1get_1backend, JNI.env, self.jni_id, printer.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_printer_get_backend(printer)
        PLATFORM_LOCK.lock
        begin
          return __gtk_printer_get_backend(printer)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1printer_1get_1name, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_printer_get_name(printer)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1printer_1get_1name, JNI.env, self.jni_id, printer.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_printer_get_name(printer)
        PLATFORM_LOCK.lock
        begin
          return __gtk_printer_get_name(printer)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1printer_1is_1default, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_printer_is_default(printer)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1printer_1is_1default, JNI.env, self.jni_id, printer.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_printer_is_default(printer)
        PLATFORM_LOCK.lock
        begin
          return __gtk_printer_is_default(printer)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1enumerate_1printers, [:pointer, :long, :int32, :int32, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      # long
      def __gtk_enumerate_printers(func, data, destroy, wait)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1enumerate_1printers, JNI.env, self.jni_id, func.to_int, data.to_int, destroy.to_int, wait ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      # long
      def gtk_enumerate_printers(func, data, destroy, wait)
        PLATFORM_LOCK.lock
        begin
          __gtk_enumerate_printers(func, data, destroy, wait)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1new, [:pointer, :long, :long, :int32, :int32, :int32], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def __gtk_print_job_new(title, printer, settings, page_setup)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1new, JNI.env, self.jni_id, title.jni_id, printer.to_int, settings.to_int, page_setup.to_int)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def gtk_print_job_new(title, printer, settings, page_setup)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_job_new(title, printer, settings, page_setup)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1get_1settings, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_print_job_get_settings(job)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1get_1settings, JNI.env, self.jni_id, job.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_print_job_get_settings(job)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_job_get_settings(job)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1get_1printer, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_print_job_get_printer(job)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1get_1printer, JNI.env, self.jni_id, job.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_print_job_get_printer(job)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_job_get_printer(job)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1get_1title, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_print_job_get_title(job)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1get_1title, JNI.env, self.jni_id, job.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_print_job_get_title(job)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_job_get_title(job)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1get_1status, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_print_job_get_status(job)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1get_1status, JNI.env, self.jni_id, job.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_print_job_get_status(job)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_job_get_status(job)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1set_1source_1file, [:pointer, :long, :int32, :long, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      # long
      # long
      def __gtk_print_job_set_source_file(job, filename, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1set_1source_1file, JNI.env, self.jni_id, job.to_int, filename.jni_id, error.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
      # long
      # long
      def gtk_print_job_set_source_file(job, filename, error)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_job_set_source_file(job, filename, error)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1get_1surface, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def __gtk_print_job_get_surface(job, error)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1get_1surface, JNI.env, self.jni_id, job.to_int, error.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def gtk_print_job_get_surface(job, error)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_job_get_surface(job, error)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1send, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def __gtk_print_job_send(job, callback, user_data, dnotify)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1job_1send, JNI.env, self.jni_id, job.to_int, callback.to_int, user_data.to_int, dnotify.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def gtk_print_job_send(job, callback, user_data, dnotify)
        PLATFORM_LOCK.lock
        begin
          __gtk_print_job_send(job, callback, user_data, dnotify)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_print_settings_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_print_settings_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_settings_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1foreach, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_print_settings_foreach(settings, func, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1foreach, JNI.env, self.jni_id, settings.to_int, func.to_int, data.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_print_settings_foreach(settings, func, data)
        PLATFORM_LOCK.lock
        begin
          __gtk_print_settings_foreach(settings, func, data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      # long
      def __gtk_print_settings_get(settings, key)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get, JNI.env, self.jni_id, settings.to_int, key.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      # long
      def gtk_print_settings_get(settings, key)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_settings_get(settings, key)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def __gtk_print_settings_set(settings, key, value)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set, JNI.env, self.jni_id, settings.to_int, key.jni_id, value.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def gtk_print_settings_set(settings, key, value)
        PLATFORM_LOCK.lock
        begin
          __gtk_print_settings_set(settings, key, value)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1printer, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_print_settings_get_printer(settings)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1printer, JNI.env, self.jni_id, settings.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_print_settings_get_printer(settings)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_settings_get_printer(settings)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1printer, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def __gtk_print_settings_set_printer(settings, printer)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1printer, JNI.env, self.jni_id, settings.to_int, printer.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def gtk_print_settings_set_printer(settings, printer)
        PLATFORM_LOCK.lock
        begin
          __gtk_print_settings_set_printer(settings, printer)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1orientation, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_print_settings_get_orientation(settings)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1orientation, JNI.env, self.jni_id, settings.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_print_settings_get_orientation(settings)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_settings_get_orientation(settings)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1orientation, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_print_settings_set_orientation(settings, orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1orientation, JNI.env, self.jni_id, settings.to_int, orientation.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_print_settings_set_orientation(settings, orientation)
        PLATFORM_LOCK.lock
        begin
          __gtk_print_settings_set_orientation(settings, orientation)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1collate, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_print_settings_get_collate(settings)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1collate, JNI.env, self.jni_id, settings.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_print_settings_get_collate(settings)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_settings_get_collate(settings)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1collate, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_print_settings_set_collate(settings, collate)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1collate, JNI.env, self.jni_id, settings.to_int, collate ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_print_settings_set_collate(settings, collate)
        PLATFORM_LOCK.lock
        begin
          __gtk_print_settings_set_collate(settings, collate)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1n_1copies, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_print_settings_get_n_copies(settings)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1n_1copies, JNI.env, self.jni_id, settings.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_print_settings_get_n_copies(settings)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_settings_get_n_copies(settings)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1n_1copies, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_print_settings_set_n_copies(settings, num_copies)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1n_1copies, JNI.env, self.jni_id, settings.to_int, num_copies.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_print_settings_set_n_copies(settings, num_copies)
        PLATFORM_LOCK.lock
        begin
          __gtk_print_settings_set_n_copies(settings, num_copies)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1print_1pages, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_print_settings_get_print_pages(settings)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1print_1pages, JNI.env, self.jni_id, settings.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_print_settings_get_print_pages(settings)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_settings_get_print_pages(settings)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1print_1pages, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_print_settings_set_print_pages(settings, pages)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1print_1pages, JNI.env, self.jni_id, settings.to_int, pages.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_print_settings_set_print_pages(settings, pages)
        PLATFORM_LOCK.lock
        begin
          __gtk_print_settings_set_print_pages(settings, pages)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1page_1ranges, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def __gtk_print_settings_get_page_ranges(settings, num_ranges)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1page_1ranges, JNI.env, self.jni_id, settings.to_int, num_ranges.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def gtk_print_settings_get_page_ranges(settings, num_ranges)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_settings_get_page_ranges(settings, num_ranges)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1page_1ranges, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # long
      def __gtk_print_settings_set_page_ranges(settings, page_ranges, num_ranges)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1set_1page_1ranges, JNI.env, self.jni_id, settings.to_int, page_ranges.jni_id, num_ranges.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # long
      def gtk_print_settings_set_page_ranges(settings, page_ranges, num_ranges)
        PLATFORM_LOCK.lock
        begin
          __gtk_print_settings_set_page_ranges(settings, page_ranges, num_ranges)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1paper_1width, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_print_settings_get_paper_width(settings, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1paper_1width, JNI.env, self.jni_id, settings.to_int, unit.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_print_settings_get_paper_width(settings, unit)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_settings_get_paper_width(settings, unit)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1paper_1height, [:pointer, :long, :int32, :int32], :double
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_print_settings_get_paper_height(settings, unit)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1paper_1height, JNI.env, self.jni_id, settings.to_int, unit.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_print_settings_get_paper_height(settings, unit)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_settings_get_paper_height(settings, unit)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1resolution, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_print_settings_get_resolution(settings)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1settings_1get_1resolution, JNI.env, self.jni_id, settings.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_print_settings_get_resolution(settings)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_settings_get_resolution(settings)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1new, [:pointer, :long, :long, :int32], :int32
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      # long
      # long
      def __gtk_print_unix_dialog_new(title, parent)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1new, JNI.env, self.jni_id, title.jni_id, parent.to_int)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int] }
      # long
      # long
      def gtk_print_unix_dialog_new(title, parent)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_unix_dialog_new(title, parent)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1set_1page_1setup, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_print_unix_dialog_set_page_setup(dialog, page_setup)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1set_1page_1setup, JNI.env, self.jni_id, dialog.to_int, page_setup.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_print_unix_dialog_set_page_setup(dialog, page_setup)
        PLATFORM_LOCK.lock
        begin
          __gtk_print_unix_dialog_set_page_setup(dialog, page_setup)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1get_1page_1setup, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_print_unix_dialog_get_page_setup(dialog)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1get_1page_1setup, JNI.env, self.jni_id, dialog.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_print_unix_dialog_get_page_setup(dialog)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_unix_dialog_get_page_setup(dialog)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1set_1current_1page, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_print_unix_dialog_set_current_page(dialog, current_page)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1set_1current_1page, JNI.env, self.jni_id, dialog.to_int, current_page.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_print_unix_dialog_set_current_page(dialog, current_page)
        PLATFORM_LOCK.lock
        begin
          __gtk_print_unix_dialog_set_current_page(dialog, current_page)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1get_1current_1page, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_print_unix_dialog_get_current_page(dialog)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1get_1current_1page, JNI.env, self.jni_id, dialog.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_print_unix_dialog_get_current_page(dialog)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_unix_dialog_get_current_page(dialog)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1set_1settings, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_print_unix_dialog_set_settings(dialog, settings)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1set_1settings, JNI.env, self.jni_id, dialog.to_int, settings.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_print_unix_dialog_set_settings(dialog, settings)
        PLATFORM_LOCK.lock
        begin
          __gtk_print_unix_dialog_set_settings(dialog, settings)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1get_1settings, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_print_unix_dialog_get_settings(dialog)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1get_1settings, JNI.env, self.jni_id, dialog.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_print_unix_dialog_get_settings(dialog)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_unix_dialog_get_settings(dialog)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1get_1selected_1printer, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_print_unix_dialog_get_selected_printer(dialog)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1get_1selected_1printer, JNI.env, self.jni_id, dialog.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_print_unix_dialog_get_selected_printer(dialog)
        PLATFORM_LOCK.lock
        begin
          return __gtk_print_unix_dialog_get_selected_printer(dialog)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1set_1manual_1capabilities, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_print_unix_dialog_set_manual_capabilities(dialog, capabilities)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1print_1unix_1dialog_1set_1manual_1capabilities, JNI.env, self.jni_id, dialog.to_int, capabilities.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_print_unix_dialog_set_manual_capabilities(dialog, capabilities)
        PLATFORM_LOCK.lock
        begin
          __gtk_print_unix_dialog_set_manual_capabilities(dialog, capabilities)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1progress_1bar_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_progress_bar_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1progress_1bar_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_progress_bar_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_progress_bar_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1progress_1bar_1pulse, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_progress_bar_pulse(pbar)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1progress_1bar_1pulse, JNI.env, self.jni_id, pbar.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_progress_bar_pulse(pbar)
        PLATFORM_LOCK.lock
        begin
          __gtk_progress_bar_pulse(pbar)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1progress_1bar_1set_1fraction, [:pointer, :long, :int32, :double], :void
      typesig { [::Java::Int, ::Java::Double] }
      # long
      def __gtk_progress_bar_set_fraction(pbar, fraction)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1progress_1bar_1set_1fraction, JNI.env, self.jni_id, pbar.to_int, fraction)
      end
      
      typesig { [::Java::Int, ::Java::Double] }
      # long
      def gtk_progress_bar_set_fraction(pbar, fraction)
        PLATFORM_LOCK.lock
        begin
          __gtk_progress_bar_set_fraction(pbar, fraction)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1progress_1bar_1set_1orientation, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_progress_bar_set_orientation(pbar, orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1progress_1bar_1set_1orientation, JNI.env, self.jni_id, pbar.to_int, orientation.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_progress_bar_set_orientation(pbar, orientation)
        PLATFORM_LOCK.lock
        begin
          __gtk_progress_bar_set_orientation(pbar, orientation)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1radio_1button_1get_1group, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_radio_button_get_group(radio_button)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1radio_1button_1get_1group, JNI.env, self.jni_id, radio_button.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_radio_button_get_group(radio_button)
        PLATFORM_LOCK.lock
        begin
          return __gtk_radio_button_get_group(radio_button)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1radio_1button_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_radio_button_new(group)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1radio_1button_1new, JNI.env, self.jni_id, group.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_radio_button_new(group)
        PLATFORM_LOCK.lock
        begin
          return __gtk_radio_button_new(group)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1radio_1menu_1item_1get_1group, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_radio_menu_item_get_group(radio_menu_item)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1radio_1menu_1item_1get_1group, JNI.env, self.jni_id, radio_menu_item.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_radio_menu_item_get_group(radio_menu_item)
        PLATFORM_LOCK.lock
        begin
          return __gtk_radio_menu_item_get_group(radio_menu_item)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1radio_1menu_1item_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_radio_menu_item_new(group)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1radio_1menu_1item_1new, JNI.env, self.jni_id, group.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_radio_menu_item_new(group)
        PLATFORM_LOCK.lock
        begin
          return __gtk_radio_menu_item_new(group)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1radio_1menu_1item_1new_1with_1label, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      # long
      def __gtk_radio_menu_item_new_with_label(group, label)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1radio_1menu_1item_1new_1with_1label, JNI.env, self.jni_id, group.to_int, label.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      # long
      def gtk_radio_menu_item_new_with_label(group, label)
        PLATFORM_LOCK.lock
        begin
          return __gtk_radio_menu_item_new_with_label(group, label)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1range_1get_1adjustment, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_range_get_adjustment(range)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1range_1get_1adjustment, JNI.env, self.jni_id, range.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_range_get_adjustment(range)
        PLATFORM_LOCK.lock
        begin
          return __gtk_range_get_adjustment(range)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1range_1set_1increments, [:pointer, :long, :int32, :double, :double], :void
      typesig { [::Java::Int, ::Java::Double, ::Java::Double] }
      # long
      def __gtk_range_set_increments(range, step, page)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1range_1set_1increments, JNI.env, self.jni_id, range.to_int, step, page)
      end
      
      typesig { [::Java::Int, ::Java::Double, ::Java::Double] }
      # long
      def gtk_range_set_increments(range, step, page)
        PLATFORM_LOCK.lock
        begin
          __gtk_range_set_increments(range, step, page)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1range_1set_1inverted, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_range_set_inverted(range, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1range_1set_1inverted, JNI.env, self.jni_id, range.to_int, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_range_set_inverted(range, setting)
        PLATFORM_LOCK.lock
        begin
          __gtk_range_set_inverted(range, setting)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1range_1set_1range, [:pointer, :long, :int32, :double, :double], :void
      typesig { [::Java::Int, ::Java::Double, ::Java::Double] }
      # long
      def __gtk_range_set_range(range, min, max)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1range_1set_1range, JNI.env, self.jni_id, range.to_int, min, max)
      end
      
      typesig { [::Java::Int, ::Java::Double, ::Java::Double] }
      # long
      def gtk_range_set_range(range, min, max)
        PLATFORM_LOCK.lock
        begin
          __gtk_range_set_range(range, min, max)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1range_1set_1value, [:pointer, :long, :int32, :double], :void
      typesig { [::Java::Int, ::Java::Double] }
      # long
      def __gtk_range_set_value(range, value)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1range_1set_1value, JNI.env, self.jni_id, range.to_int, value)
      end
      
      typesig { [::Java::Int, ::Java::Double] }
      # long
      def gtk_range_set_value(range, value)
        PLATFORM_LOCK.lock
        begin
          __gtk_range_set_value(range, value)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1parse_1string, [:pointer, :long, :long], :void
      typesig { [Array.typed(::Java::Byte)] }
      def __gtk_rc_parse_string(rc_string)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1parse_1string, JNI.env, self.jni_id, rc_string.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gtk_rc_parse_string(rc_string)
        PLATFORM_LOCK.lock
        begin
          __gtk_rc_parse_string(rc_string)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1get_1bg_1pixmap_1name, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_rc_style_get_bg_pixmap_name(style, index)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1get_1bg_1pixmap_1name, JNI.env, self.jni_id, style.to_int, index.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_rc_style_get_bg_pixmap_name(style, index)
        PLATFORM_LOCK.lock
        begin
          return __gtk_rc_style_get_bg_pixmap_name(style, index)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1get_1color_1flags, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_rc_style_get_color_flags(style, index)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1get_1color_1flags, JNI.env, self.jni_id, style.to_int, index.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_rc_style_get_color_flags(style, index)
        PLATFORM_LOCK.lock
        begin
          return __gtk_rc_style_get_color_flags(style, index)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1set_1bg, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def __gtk_rc_style_set_bg(style, index, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1set_1bg, JNI.env, self.jni_id, style.to_int, index.to_int, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def gtk_rc_style_set_bg(style, index, color)
        PLATFORM_LOCK.lock
        begin
          __gtk_rc_style_set_bg(style, index, color)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1set_1bg_1pixmap_1name, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_rc_style_set_bg_pixmap_name(style, index, name)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1set_1bg_1pixmap_1name, JNI.env, self.jni_id, style.to_int, index.to_int, name.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_rc_style_set_bg_pixmap_name(style, index, name)
        PLATFORM_LOCK.lock
        begin
          __gtk_rc_style_set_bg_pixmap_name(style, index, name)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1set_1color_1flags, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gtk_rc_style_set_color_flags(style, index, flag)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1set_1color_1flags, JNI.env, self.jni_id, style.to_int, index.to_int, flag.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gtk_rc_style_set_color_flags(style, index, flag)
        PLATFORM_LOCK.lock
        begin
          __gtk_rc_style_set_color_flags(style, index, flag)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scale_1set_1digits, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_scale_set_digits(scale, digits)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scale_1set_1digits, JNI.env, self.jni_id, scale.to_int, digits.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_scale_set_digits(scale, digits)
        PLATFORM_LOCK.lock
        begin
          __gtk_scale_set_digits(scale, digits)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scale_1set_1draw_1value, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_scale_set_draw_value(scale, draw_value)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scale_1set_1draw_1value, JNI.env, self.jni_id, scale.to_int, draw_value ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_scale_set_draw_value(scale, draw_value)
        PLATFORM_LOCK.lock
        begin
          __gtk_scale_set_draw_value(scale, draw_value)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1set_1fg, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def __gtk_rc_style_set_fg(style, index, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1set_1fg, JNI.env, self.jni_id, style.to_int, index.to_int, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def gtk_rc_style_set_fg(style, index, color)
        PLATFORM_LOCK.lock
        begin
          __gtk_rc_style_set_fg(style, index, color)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1set_1text, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def __gtk_rc_style_set_text(style, index, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1rc_1style_1set_1text, JNI.env, self.jni_id, style.to_int, index.to_int, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def gtk_rc_style_set_text(style, index, color)
        PLATFORM_LOCK.lock
        begin
          __gtk_rc_style_set_text(style, index, color)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1add_1with_1viewport, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_scrolled_window_add_with_viewport(scrolled_window, child)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1add_1with_1viewport, JNI.env, self.jni_id, scrolled_window.to_int, child.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_scrolled_window_add_with_viewport(scrolled_window, child)
        PLATFORM_LOCK.lock
        begin
          __gtk_scrolled_window_add_with_viewport(scrolled_window, child)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1get_1hadjustment, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_scrolled_window_get_hadjustment(scrolled_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1get_1hadjustment, JNI.env, self.jni_id, scrolled_window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_scrolled_window_get_hadjustment(scrolled_window)
        PLATFORM_LOCK.lock
        begin
          return __gtk_scrolled_window_get_hadjustment(scrolled_window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1get_1policy, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def __gtk_scrolled_window_get_policy(scrolled_window, hscrollbar_policy, vscrollbar_policy)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1get_1policy, JNI.env, self.jni_id, scrolled_window.to_int, hscrollbar_policy.jni_id, vscrollbar_policy.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def gtk_scrolled_window_get_policy(scrolled_window, hscrollbar_policy, vscrollbar_policy)
        PLATFORM_LOCK.lock
        begin
          __gtk_scrolled_window_get_policy(scrolled_window, hscrollbar_policy, vscrollbar_policy)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1get_1shadow_1type, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_scrolled_window_get_shadow_type(scrolled_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1get_1shadow_1type, JNI.env, self.jni_id, scrolled_window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_scrolled_window_get_shadow_type(scrolled_window)
        PLATFORM_LOCK.lock
        begin
          return __gtk_scrolled_window_get_shadow_type(scrolled_window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1get_1vadjustment, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_scrolled_window_get_vadjustment(scrolled_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1get_1vadjustment, JNI.env, self.jni_id, scrolled_window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_scrolled_window_get_vadjustment(scrolled_window)
        PLATFORM_LOCK.lock
        begin
          return __gtk_scrolled_window_get_vadjustment(scrolled_window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1new, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_scrolled_window_new(hadjustment, vadjustment)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1new, JNI.env, self.jni_id, hadjustment.to_int, vadjustment.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_scrolled_window_new(hadjustment, vadjustment)
        PLATFORM_LOCK.lock
        begin
          return __gtk_scrolled_window_new(hadjustment, vadjustment)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1set_1placement, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_scrolled_window_set_placement(scrolled_window, placement)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1set_1placement, JNI.env, self.jni_id, scrolled_window.to_int, placement.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_scrolled_window_set_placement(scrolled_window, placement)
        PLATFORM_LOCK.lock
        begin
          __gtk_scrolled_window_set_placement(scrolled_window, placement)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1set_1policy, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gtk_scrolled_window_set_policy(scrolled_window, hscrollbar_policy, vscrollbar_policy)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1set_1policy, JNI.env, self.jni_id, scrolled_window.to_int, hscrollbar_policy.to_int, vscrollbar_policy.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gtk_scrolled_window_set_policy(scrolled_window, hscrollbar_policy, vscrollbar_policy)
        PLATFORM_LOCK.lock
        begin
          __gtk_scrolled_window_set_policy(scrolled_window, hscrollbar_policy, vscrollbar_policy)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1set_1shadow_1type, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_scrolled_window_set_shadow_type(scrolled_window, type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1scrolled_1window_1set_1shadow_1type, JNI.env, self.jni_id, scrolled_window.to_int, type.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_scrolled_window_set_shadow_type(scrolled_window, type)
        PLATFORM_LOCK.lock
        begin
          __gtk_scrolled_window_set_shadow_type(scrolled_window, type)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1settings_1get_1default, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_settings_get_default
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1settings_1get_1default, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_settings_get_default
        PLATFORM_LOCK.lock
        begin
          return __gtk_settings_get_default
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1selection_1data_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_selection_data_free(selection_data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1selection_1data_1free, JNI.env, self.jni_id, selection_data.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_selection_data_free(selection_data)
        PLATFORM_LOCK.lock
        begin
          __gtk_selection_data_free(selection_data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1selection_1data_1set, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_selection_data_set(selection_data, type, format, data, length_)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1selection_1data_1set, JNI.env, self.jni_id, selection_data.to_int, type.to_int, format.to_int, data.to_int, length_.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_selection_data_set(selection_data, type, format, data, length_)
        PLATFORM_LOCK.lock
        begin
          __gtk_selection_data_set(selection_data, type, format, data, length_)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1separator_1menu_1item_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_separator_menu_item_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1separator_1menu_1item_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_separator_menu_item_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_separator_menu_item_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1set_1locale, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_set_locale
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1set_1locale, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_set_locale
        PLATFORM_LOCK.lock
        begin
          return __gtk_set_locale
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1socket_1get_1id, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_socket_get_id(socket)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1socket_1get_1id, JNI.env, self.jni_id, socket.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_socket_get_id(socket)
        PLATFORM_LOCK.lock
        begin
          return __gtk_socket_get_id(socket)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1socket_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_socket_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1socket_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_socket_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_socket_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1new, [:pointer, :long, :int32, :double, :int32], :int32
      typesig { [::Java::Int, ::Java::Double, ::Java::Int] }
      # long
      # long
      def __gtk_spin_button_new(adjustment, climb_rate, digits)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1new, JNI.env, self.jni_id, adjustment.to_int, climb_rate, digits.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Double, ::Java::Int] }
      # long
      # long
      def gtk_spin_button_new(adjustment, climb_rate, digits)
        PLATFORM_LOCK.lock
        begin
          return __gtk_spin_button_new(adjustment, climb_rate, digits)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1get_1adjustment, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_spin_button_get_adjustment(spin_button)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1get_1adjustment, JNI.env, self.jni_id, spin_button.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_spin_button_get_adjustment(spin_button)
        PLATFORM_LOCK.lock
        begin
          return __gtk_spin_button_get_adjustment(spin_button)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1get_1digits, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_spin_button_get_digits(spin_button)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1get_1digits, JNI.env, self.jni_id, spin_button.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_spin_button_get_digits(spin_button)
        PLATFORM_LOCK.lock
        begin
          return __gtk_spin_button_get_digits(spin_button)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1set_1digits, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_spin_button_set_digits(spin_button, digits)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1set_1digits, JNI.env, self.jni_id, spin_button.to_int, digits.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_spin_button_set_digits(spin_button, digits)
        PLATFORM_LOCK.lock
        begin
          __gtk_spin_button_set_digits(spin_button, digits)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1set_1increments, [:pointer, :long, :int32, :double, :double], :void
      typesig { [::Java::Int, ::Java::Double, ::Java::Double] }
      # long
      def __gtk_spin_button_set_increments(spin_button, step, page)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1set_1increments, JNI.env, self.jni_id, spin_button.to_int, step, page)
      end
      
      typesig { [::Java::Int, ::Java::Double, ::Java::Double] }
      # long
      def gtk_spin_button_set_increments(spin_button, step, page)
        PLATFORM_LOCK.lock
        begin
          __gtk_spin_button_set_increments(spin_button, step, page)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1set_1range, [:pointer, :long, :int32, :double, :double], :void
      typesig { [::Java::Int, ::Java::Double, ::Java::Double] }
      # long
      def __gtk_spin_button_set_range(spin_button, max, min)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1set_1range, JNI.env, self.jni_id, spin_button.to_int, max, min)
      end
      
      typesig { [::Java::Int, ::Java::Double, ::Java::Double] }
      # long
      def gtk_spin_button_set_range(spin_button, max, min)
        PLATFORM_LOCK.lock
        begin
          __gtk_spin_button_set_range(spin_button, max, min)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1set_1value, [:pointer, :long, :int32, :double], :void
      typesig { [::Java::Int, ::Java::Double] }
      # long
      def __gtk_spin_button_set_value(spin_button, value)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1set_1value, JNI.env, self.jni_id, spin_button.to_int, value)
      end
      
      typesig { [::Java::Int, ::Java::Double] }
      # long
      def gtk_spin_button_set_value(spin_button, value)
        PLATFORM_LOCK.lock
        begin
          __gtk_spin_button_set_value(spin_button, value)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1set_1wrap, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_spin_button_set_wrap(spin_button, wrap)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1set_1wrap, JNI.env, self.jni_id, spin_button.to_int, wrap ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_spin_button_set_wrap(spin_button, wrap)
        PLATFORM_LOCK.lock
        begin
          __gtk_spin_button_set_wrap(spin_button, wrap)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1update, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_spin_button_update(spin_button)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1spin_1button_1update, JNI.env, self.jni_id, spin_button.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_spin_button_update(spin_button)
        PLATFORM_LOCK.lock
        begin
          __gtk_spin_button_update(spin_button)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1base, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def __gtk_style_get_base(style, index, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1base, JNI.env, self.jni_id, style.to_int, index.to_int, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def gtk_style_get_base(style, index, color)
        PLATFORM_LOCK.lock
        begin
          __gtk_style_get_base(style, index, color)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1black, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkColor] }
      # long
      def __gtk_style_get_black(style, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1black, JNI.env, self.jni_id, style.to_int, color.jni_id)
      end
      
      typesig { [::Java::Int, GdkColor] }
      # long
      def gtk_style_get_black(style, color)
        PLATFORM_LOCK.lock
        begin
          __gtk_style_get_black(style, color)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1bg, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def __gtk_style_get_bg(style, index, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1bg, JNI.env, self.jni_id, style.to_int, index.to_int, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def gtk_style_get_bg(style, index, color)
        PLATFORM_LOCK.lock
        begin
          __gtk_style_get_bg(style, index, color)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1dark, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def __gtk_style_get_dark(style, index, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1dark, JNI.env, self.jni_id, style.to_int, index.to_int, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def gtk_style_get_dark(style, index, color)
        PLATFORM_LOCK.lock
        begin
          __gtk_style_get_dark(style, index, color)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1fg, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def __gtk_style_get_fg(style, index, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1fg, JNI.env, self.jni_id, style.to_int, index.to_int, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def gtk_style_get_fg(style, index, color)
        PLATFORM_LOCK.lock
        begin
          __gtk_style_get_fg(style, index, color)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1fg_1gc, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def __gtk_style_get_fg_gc(style, index, gc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1fg_1gc, JNI.env, self.jni_id, style.to_int, index.to_int, gc.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def gtk_style_get_fg_gc(style, index, gc)
        PLATFORM_LOCK.lock
        begin
          __gtk_style_get_fg_gc(style, index, gc)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1bg_1gc, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def __gtk_style_get_bg_gc(style, index, gc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1bg_1gc, JNI.env, self.jni_id, style.to_int, index.to_int, gc.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def gtk_style_get_bg_gc(style, index, gc)
        PLATFORM_LOCK.lock
        begin
          __gtk_style_get_bg_gc(style, index, gc)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1light_1gc, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def __gtk_style_get_light_gc(style, index, gc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1light_1gc, JNI.env, self.jni_id, style.to_int, index.to_int, gc.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def gtk_style_get_light_gc(style, index, gc)
        PLATFORM_LOCK.lock
        begin
          __gtk_style_get_light_gc(style, index, gc)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1dark_1gc, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def __gtk_style_get_dark_gc(style, index, gc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1dark_1gc, JNI.env, self.jni_id, style.to_int, index.to_int, gc.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def gtk_style_get_dark_gc(style, index, gc)
        PLATFORM_LOCK.lock
        begin
          __gtk_style_get_dark_gc(style, index, gc)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1mid_1gc, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def __gtk_style_get_mid_gc(style, index, gc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1mid_1gc, JNI.env, self.jni_id, style.to_int, index.to_int, gc.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def gtk_style_get_mid_gc(style, index, gc)
        PLATFORM_LOCK.lock
        begin
          __gtk_style_get_mid_gc(style, index, gc)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1text_1gc, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def __gtk_style_get_text_gc(style, index, gc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1text_1gc, JNI.env, self.jni_id, style.to_int, index.to_int, gc.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def gtk_style_get_text_gc(style, index, gc)
        PLATFORM_LOCK.lock
        begin
          __gtk_style_get_text_gc(style, index, gc)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1text_1aa_1gc, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def __gtk_style_get_text_aa_gc(style, index, gc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1text_1aa_1gc, JNI.env, self.jni_id, style.to_int, index.to_int, gc.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def gtk_style_get_text_aa_gc(style, index, gc)
        PLATFORM_LOCK.lock
        begin
          __gtk_style_get_text_aa_gc(style, index, gc)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1black_1gc, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def __gtk_style_get_black_gc(style, gc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1black_1gc, JNI.env, self.jni_id, style.to_int, gc.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def gtk_style_get_black_gc(style, gc)
        PLATFORM_LOCK.lock
        begin
          __gtk_style_get_black_gc(style, gc)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1white_1gc, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def __gtk_style_get_white_gc(style, gc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1white_1gc, JNI.env, self.jni_id, style.to_int, gc.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def gtk_style_get_white_gc(style, gc)
        PLATFORM_LOCK.lock
        begin
          __gtk_style_get_white_gc(style, gc)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1font_1desc, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_style_get_font_desc(style)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1font_1desc, JNI.env, self.jni_id, style.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_style_get_font_desc(style)
        PLATFORM_LOCK.lock
        begin
          return __gtk_style_get_font_desc(style)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1light, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def __gtk_style_get_light(style, index, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1light, JNI.env, self.jni_id, style.to_int, index.to_int, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def gtk_style_get_light(style, index, color)
        PLATFORM_LOCK.lock
        begin
          __gtk_style_get_light(style, index, color)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1text, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def __gtk_style_get_text(style, index, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1text, JNI.env, self.jni_id, style.to_int, index.to_int, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def gtk_style_get_text(style, index, color)
        PLATFORM_LOCK.lock
        begin
          __gtk_style_get_text(style, index, color)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1xthickness, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_style_get_xthickness(style)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1xthickness, JNI.env, self.jni_id, style.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_style_get_xthickness(style)
        PLATFORM_LOCK.lock
        begin
          return __gtk_style_get_xthickness(style)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1ythickness, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_style_get_ythickness(style)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1get_1ythickness, JNI.env, self.jni_id, style.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_style_get_ythickness(style)
        PLATFORM_LOCK.lock
        begin
          return __gtk_style_get_ythickness(style)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1render_1icon, [:pointer, :long, :int32, :int32, :int32, :int32, :int32, :int32, :long], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # long
      # long
      # long
      # long
      def __gtk_style_render_icon(style, source, direction, state, size, widget, detail)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1style_1render_1icon, JNI.env, self.jni_id, style.to_int, source.to_int, direction.to_int, state.to_int, size.to_int, widget.to_int, detail.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # long
      # long
      # long
      # long
      def gtk_style_render_icon(style, source, direction, state, size, widget, detail)
        PLATFORM_LOCK.lock
        begin
          return __gtk_style_render_icon(style, source, direction, state, size, widget, detail)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1target_1list_1new, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_target_list_new(targets, ntargets)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1target_1list_1new, JNI.env, self.jni_id, targets.to_int, ntargets.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_target_list_new(targets, ntargets)
        PLATFORM_LOCK.lock
        begin
          return __gtk_target_list_new(targets, ntargets)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1target_1list_1unref, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_target_list_unref(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1target_1list_1unref, JNI.env, self.jni_id, list.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_target_list_unref(list)
        PLATFORM_LOCK.lock
        begin
          __gtk_target_list_unref(list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1copy_1clipboard, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_text_buffer_copy_clipboard(buffer, clipboard)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1copy_1clipboard, JNI.env, self.jni_id, buffer.to_int, clipboard.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_text_buffer_copy_clipboard(buffer, clipboard)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_buffer_copy_clipboard(buffer, clipboard)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1cut_1clipboard, [:pointer, :long, :int32, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def __gtk_text_buffer_cut_clipboard(buffer, clipboard, default_editable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1cut_1clipboard, JNI.env, self.jni_id, buffer.to_int, clipboard.to_int, default_editable ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def gtk_text_buffer_cut_clipboard(buffer, clipboard, default_editable)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_buffer_cut_clipboard(buffer, clipboard, default_editable)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1delete, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def __gtk_text_buffer_delete(buffer, start, end_)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1delete, JNI.env, self.jni_id, buffer.to_int, start.jni_id, end_.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def gtk_text_buffer_delete(buffer, start, end_)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_buffer_delete(buffer, start, end_)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1bounds, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def __gtk_text_buffer_get_bounds(buffer, start, end_)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1bounds, JNI.env, self.jni_id, buffer.to_int, start.jni_id, end_.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def gtk_text_buffer_get_bounds(buffer, start, end_)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_buffer_get_bounds(buffer, start, end_)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1char_1count, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_text_buffer_get_char_count(buffer)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1char_1count, JNI.env, self.jni_id, buffer.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_text_buffer_get_char_count(buffer)
        PLATFORM_LOCK.lock
        begin
          return __gtk_text_buffer_get_char_count(buffer)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1end_1iter, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def __gtk_text_buffer_get_end_iter(buffer, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1end_1iter, JNI.env, self.jni_id, buffer.to_int, iter.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def gtk_text_buffer_get_end_iter(buffer, iter)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_buffer_get_end_iter(buffer, iter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1insert, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_text_buffer_get_insert(buffer)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1insert, JNI.env, self.jni_id, buffer.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_text_buffer_get_insert(buffer)
        PLATFORM_LOCK.lock
        begin
          return __gtk_text_buffer_get_insert(buffer)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1iter_1at_1line, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def __gtk_text_buffer_get_iter_at_line(buffer, iter, line_number)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1iter_1at_1line, JNI.env, self.jni_id, buffer.to_int, iter.jni_id, line_number.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def gtk_text_buffer_get_iter_at_line(buffer, iter, line_number)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_buffer_get_iter_at_line(buffer, iter, line_number)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1iter_1at_1mark, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      # long
      def __gtk_text_buffer_get_iter_at_mark(buffer, iter, mark)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1iter_1at_1mark, JNI.env, self.jni_id, buffer.to_int, iter.jni_id, mark.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      # long
      def gtk_text_buffer_get_iter_at_mark(buffer, iter, mark)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_buffer_get_iter_at_mark(buffer, iter, mark)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1iter_1at_1offset, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def __gtk_text_buffer_get_iter_at_offset(buffer, iter, char_offset)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1iter_1at_1offset, JNI.env, self.jni_id, buffer.to_int, iter.jni_id, char_offset.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def gtk_text_buffer_get_iter_at_offset(buffer, iter, char_offset)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_buffer_get_iter_at_offset(buffer, iter, char_offset)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1line_1count, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_text_buffer_get_line_count(buffer)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1line_1count, JNI.env, self.jni_id, buffer.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_text_buffer_get_line_count(buffer)
        PLATFORM_LOCK.lock
        begin
          return __gtk_text_buffer_get_line_count(buffer)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1selection_1bound, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_text_buffer_get_selection_bound(buffer)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1selection_1bound, JNI.env, self.jni_id, buffer.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_text_buffer_get_selection_bound(buffer)
        PLATFORM_LOCK.lock
        begin
          return __gtk_text_buffer_get_selection_bound(buffer)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1selection_1bounds, [:pointer, :long, :int32, :long, :long], :int8
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def __gtk_text_buffer_get_selection_bounds(buffer, start, end_)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1selection_1bounds, JNI.env, self.jni_id, buffer.to_int, start.jni_id, end_.jni_id) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      def gtk_text_buffer_get_selection_bounds(buffer, start, end_)
        PLATFORM_LOCK.lock
        begin
          return __gtk_text_buffer_get_selection_bounds(buffer, start, end_)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1text, [:pointer, :long, :int32, :long, :long, :int8], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Boolean] }
      # long
      # long
      def __gtk_text_buffer_get_text(buffer, start, end_, include_hidden_chars)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1get_1text, JNI.env, self.jni_id, buffer.to_int, start.jni_id, end_.jni_id, include_hidden_chars ? 1 : 0)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Boolean] }
      # long
      # long
      def gtk_text_buffer_get_text(buffer, start, end_, include_hidden_chars)
        PLATFORM_LOCK.lock
        begin
          return __gtk_text_buffer_get_text(buffer, start, end_, include_hidden_chars)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1insert__I_3B_3BI, [:pointer, :long, :int32, :long, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def __gtk_text_buffer_insert(buffer, iter, text, len)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1insert__I_3B_3BI, JNI.env, self.jni_id, buffer.to_int, iter.jni_id, text.jni_id, len.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def gtk_text_buffer_insert(buffer, iter, text, len)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_buffer_insert(buffer, iter, text, len)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1insert__II_3BI, [:pointer, :long, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      # long
      def __gtk_text_buffer_insert(buffer, iter, text, len)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1insert__II_3BI, JNI.env, self.jni_id, buffer.to_int, iter.to_int, text.jni_id, len.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      # long
      def gtk_text_buffer_insert(buffer, iter, text, len)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_buffer_insert(buffer, iter, text, len)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1move_1mark, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # long
      # long
      def __gtk_text_buffer_move_mark(buffer, mark, where)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1move_1mark, JNI.env, self.jni_id, buffer.to_int, mark.to_int, where.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte)] }
      # long
      # long
      def gtk_text_buffer_move_mark(buffer, mark, where)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_buffer_move_mark(buffer, mark, where)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1paste_1clipboard, [:pointer, :long, :int32, :int32, :long, :int8], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Boolean] }
      # long
      # long
      def __gtk_text_buffer_paste_clipboard(buffer, clipboard, override_location, default_editable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1paste_1clipboard, JNI.env, self.jni_id, buffer.to_int, clipboard.to_int, override_location.jni_id, default_editable ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Boolean] }
      # long
      # long
      def gtk_text_buffer_paste_clipboard(buffer, clipboard, override_location, default_editable)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_buffer_paste_clipboard(buffer, clipboard, override_location, default_editable)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1place_1cursor, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def __gtk_text_buffer_place_cursor(buffer, where)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1place_1cursor, JNI.env, self.jni_id, buffer.to_int, where.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def gtk_text_buffer_place_cursor(buffer, where)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_buffer_place_cursor(buffer, where)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1set_1text, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def __gtk_text_buffer_set_text(buffer, text, len)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1buffer_1set_1text, JNI.env, self.jni_id, buffer.to_int, text.jni_id, len.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def gtk_text_buffer_set_text(buffer, text, len)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_buffer_set_text(buffer, text, len)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1iter_1get_1line, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __gtk_text_iter_get_line(iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1iter_1get_1line, JNI.env, self.jni_id, iter.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gtk_text_iter_get_line(iter)
        PLATFORM_LOCK.lock
        begin
          return __gtk_text_iter_get_line(iter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1iter_1get_1offset, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      def __gtk_text_iter_get_offset(iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1iter_1get_1offset, JNI.env, self.jni_id, iter.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      def gtk_text_iter_get_offset(iter)
        PLATFORM_LOCK.lock
        begin
          return __gtk_text_iter_get_offset(iter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1buffer_1to_1window_1coords, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :long], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def __gtk_text_view_buffer_to_window_coords(text_view, win, buffer_x, buffer_y, window_x, window_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1buffer_1to_1window_1coords, JNI.env, self.jni_id, text_view.to_int, win.to_int, buffer_x.to_int, buffer_y.to_int, window_x.jni_id, window_y.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def gtk_text_view_buffer_to_window_coords(text_view, win, buffer_x, buffer_y, window_x, window_y)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_view_buffer_to_window_coords(text_view, win, buffer_x, buffer_y, window_x, window_y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1buffer, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_text_view_get_buffer(text_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1buffer, JNI.env, self.jni_id, text_view.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_text_view_get_buffer(text_view)
        PLATFORM_LOCK.lock
        begin
          return __gtk_text_view_get_buffer(text_view)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1editable, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_text_view_get_editable(text_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1editable, JNI.env, self.jni_id, text_view.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_text_view_get_editable(text_view)
        PLATFORM_LOCK.lock
        begin
          return __gtk_text_view_get_editable(text_view)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1iter_1at_1location, [:pointer, :long, :int32, :long, :int32, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # long
      def __gtk_text_view_get_iter_at_location(text_view, iter, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1iter_1at_1location, JNI.env, self.jni_id, text_view.to_int, iter.jni_id, x.to_int, y.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # long
      def gtk_text_view_get_iter_at_location(text_view, iter, x, y)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_view_get_iter_at_location(text_view, iter, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1iter_1location, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), GdkRectangle] }
      # long
      def __gtk_text_view_get_iter_location(text_view, iter, location)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1iter_1location, JNI.env, self.jni_id, text_view.to_int, iter.jni_id, location.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), GdkRectangle] }
      # long
      def gtk_text_view_get_iter_location(text_view, iter, location)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_view_get_iter_location(text_view, iter, location)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1line_1at_1y, [:pointer, :long, :int32, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def __gtk_text_view_get_line_at_y(text_view, target_iter, y, line_top)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1line_1at_1y, JNI.env, self.jni_id, text_view.to_int, target_iter.jni_id, y.to_int, line_top.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
      # long
      def gtk_text_view_get_line_at_y(text_view, target_iter, y, line_top)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_view_get_line_at_y(text_view, target_iter, y, line_top)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1visible_1rect, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkRectangle] }
      # long
      def __gtk_text_view_get_visible_rect(text_view, visible_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1visible_1rect, JNI.env, self.jni_id, text_view.to_int, visible_rect.jni_id)
      end
      
      typesig { [::Java::Int, GdkRectangle] }
      # long
      def gtk_text_view_get_visible_rect(text_view, visible_rect)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_view_get_visible_rect(text_view, visible_rect)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1window, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_text_view_get_window(text_view, win)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1get_1window, JNI.env, self.jni_id, text_view.to_int, win.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_text_view_get_window(text_view, win)
        PLATFORM_LOCK.lock
        begin
          return __gtk_text_view_get_window(text_view, win)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_text_view_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_text_view_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_text_view_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1scroll_1mark_1onscreen, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_text_view_scroll_mark_onscreen(text_view, mark)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1scroll_1mark_1onscreen, JNI.env, self.jni_id, text_view.to_int, mark.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_text_view_scroll_mark_onscreen(text_view, mark)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_view_scroll_mark_onscreen(text_view, mark)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1scroll_1to_1iter, [:pointer, :long, :int32, :long, :double, :int8, :double, :double], :int8
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Double, ::Java::Boolean, ::Java::Double, ::Java::Double] }
      # long
      def __gtk_text_view_scroll_to_iter(text_view, iter, within_margin, use_align, xalign, yalign)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1scroll_1to_1iter, JNI.env, self.jni_id, text_view.to_int, iter.jni_id, within_margin, use_align ? 1 : 0, xalign, yalign) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Double, ::Java::Boolean, ::Java::Double, ::Java::Double] }
      # long
      def gtk_text_view_scroll_to_iter(text_view, iter, within_margin, use_align, xalign, yalign)
        PLATFORM_LOCK.lock
        begin
          return __gtk_text_view_scroll_to_iter(text_view, iter, within_margin, use_align, xalign, yalign)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1set_1editable, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_text_view_set_editable(text_view, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1set_1editable, JNI.env, self.jni_id, text_view.to_int, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_text_view_set_editable(text_view, setting)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_view_set_editable(text_view, setting)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1set_1justification, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_text_view_set_justification(text_view, justification)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1set_1justification, JNI.env, self.jni_id, text_view.to_int, justification.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_text_view_set_justification(text_view, justification)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_view_set_justification(text_view, justification)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1set_1tabs, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_text_view_set_tabs(text_view, tabs)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1set_1tabs, JNI.env, self.jni_id, text_view.to_int, tabs.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_text_view_set_tabs(text_view, tabs)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_view_set_tabs(text_view, tabs)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1set_1wrap_1mode, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_text_view_set_wrap_mode(text_view, wrap_mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1set_1wrap_1mode, JNI.env, self.jni_id, text_view.to_int, wrap_mode.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_text_view_set_wrap_mode(text_view, wrap_mode)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_view_set_wrap_mode(text_view, wrap_mode)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1window_1to_1buffer_1coords, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :long], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def __gtk_text_view_window_to_buffer_coords(text_view, win, window_x, window_y, buffer_x, buffer_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1text_1view_1window_1to_1buffer_1coords, JNI.env, self.jni_id, text_view.to_int, win.to_int, window_x.to_int, window_y.to_int, buffer_x.jni_id, buffer_y.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def gtk_text_view_window_to_buffer_coords(text_view, win, window_x, window_y, buffer_x, buffer_y)
        PLATFORM_LOCK.lock
        begin
          __gtk_text_view_window_to_buffer_coords(text_view, win, window_x, window_y, buffer_x, buffer_y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1timeout_1add, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_timeout_add(interval, function, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1timeout_1add, JNI.env, self.jni_id, interval.to_int, function.to_int, data.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_timeout_add(interval, function, data)
        PLATFORM_LOCK.lock
        begin
          return __gtk_timeout_add(interval, function, data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1timeout_1remove, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_timeout_remove(timeout_handler_id)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1timeout_1remove, JNI.env, self.jni_id, timeout_handler_id.to_int)
      end
      
      typesig { [::Java::Int] }
      def gtk_timeout_remove(timeout_handler_id)
        PLATFORM_LOCK.lock
        begin
          __gtk_timeout_remove(timeout_handler_id)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1get_1active, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_toggle_button_get_active(toggle_button)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1get_1active, JNI.env, self.jni_id, toggle_button.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_toggle_button_get_active(toggle_button)
        PLATFORM_LOCK.lock
        begin
          return __gtk_toggle_button_get_active(toggle_button)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_toggle_button_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_toggle_button_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_toggle_button_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1get_1inconsistent, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_toggle_button_get_inconsistent(toggle_button)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1get_1inconsistent, JNI.env, self.jni_id, toggle_button.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_toggle_button_get_inconsistent(toggle_button)
        PLATFORM_LOCK.lock
        begin
          return __gtk_toggle_button_get_inconsistent(toggle_button)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1set_1active, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_toggle_button_set_active(toggle_button, is_active)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1set_1active, JNI.env, self.jni_id, toggle_button.to_int, is_active ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_toggle_button_set_active(toggle_button, is_active)
        PLATFORM_LOCK.lock
        begin
          __gtk_toggle_button_set_active(toggle_button, is_active)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1set_1inconsistent, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_toggle_button_set_inconsistent(toggle_button, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1set_1inconsistent, JNI.env, self.jni_id, toggle_button.to_int, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_toggle_button_set_inconsistent(toggle_button, setting)
        PLATFORM_LOCK.lock
        begin
          __gtk_toggle_button_set_inconsistent(toggle_button, setting)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1set_1mode, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_toggle_button_set_mode(toggle_button, draw_indicator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toggle_1button_1set_1mode, JNI.env, self.jni_id, toggle_button.to_int, draw_indicator ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_toggle_button_set_mode(toggle_button, draw_indicator)
        PLATFORM_LOCK.lock
        begin
          __gtk_toggle_button_set_mode(toggle_button, draw_indicator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toolbar_1insert_1widget, [:pointer, :long, :int32, :int32, :long, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
      # long
      # long
      def __gtk_toolbar_insert_widget(toolbar, widget, tooltip_text, tooltip_private_text, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toolbar_1insert_1widget, JNI.env, self.jni_id, toolbar.to_int, widget.to_int, tooltip_text.jni_id, tooltip_private_text.jni_id, position.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
      # long
      # long
      def gtk_toolbar_insert_widget(toolbar, widget, tooltip_text, tooltip_private_text, position)
        PLATFORM_LOCK.lock
        begin
          __gtk_toolbar_insert_widget(toolbar, widget, tooltip_text, tooltip_private_text, position)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toolbar_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_toolbar_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toolbar_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_toolbar_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_toolbar_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toolbar_1set_1orientation, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_toolbar_set_orientation(toolbar, orientation)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1toolbar_1set_1orientation, JNI.env, self.jni_id, toolbar.to_int, orientation.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_toolbar_set_orientation(toolbar, orientation)
        PLATFORM_LOCK.lock
        begin
          __gtk_toolbar_set_orientation(toolbar, orientation)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1data_1get, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_tooltips_data_get(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1data_1get, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_tooltips_data_get(widget)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tooltips_data_get(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1disable, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_tooltips_disable(tooltips)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1disable, JNI.env, self.jni_id, tooltips.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tooltips_disable(tooltips)
        PLATFORM_LOCK.lock
        begin
          __gtk_tooltips_disable(tooltips)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1enable, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_tooltips_enable(tooltips)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1enable, JNI.env, self.jni_id, tooltips.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tooltips_enable(tooltips)
        PLATFORM_LOCK.lock
        begin
          __gtk_tooltips_enable(tooltips)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_tooltips_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_tooltips_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_tooltips_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1force_1window, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_tooltips_force_window(tooltips)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1force_1window, JNI.env, self.jni_id, tooltips.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tooltips_force_window(tooltips)
        PLATFORM_LOCK.lock
        begin
          __gtk_tooltips_force_window(tooltips)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1set_1tip, [:pointer, :long, :int32, :int32, :long, :long], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      # long
      def __gtk_tooltips_set_tip(tooltips, widget, tip_text, tip_private)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tooltips_1set_1tip, JNI.env, self.jni_id, tooltips.to_int, widget.to_int, tip_text.jni_id, tip_private.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
      # long
      # long
      def gtk_tooltips_set_tip(tooltips, widget, tip_text, tip_private)
        PLATFORM_LOCK.lock
        begin
          __gtk_tooltips_set_tip(tooltips, widget, tip_text, tip_private)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get__III_3II, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # long
      # long
      # long
      def __gtk_tree_model_get(tree_model, iter, column, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get__III_3II, JNI.env, self.jni_id, tree_model.to_int, iter.to_int, column.to_int, value.jni_id, terminator.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # long
      # long
      # long
      def gtk_tree_model_get(tree_model, iter, column, value, terminator)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_model_get(tree_model, iter, column, value, terminator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get__III_3JI, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Long), ::Java::Int] }
      # long
      # long
      # long
      def __gtk_tree_model_get(tree_model, iter, column, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get__III_3JI, JNI.env, self.jni_id, tree_model.to_int, iter.to_int, column.to_int, value.jni_id, terminator.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Long), ::Java::Int] }
      # long
      # long
      # long
      def gtk_tree_model_get(tree_model, iter, column, value, terminator)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_model_get(tree_model, iter, column, value, terminator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get_1iter, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_tree_model_get_iter(tree_model, iter, path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get_1iter, JNI.env, self.jni_id, tree_model.to_int, iter.to_int, path.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_tree_model_get_iter(tree_model, iter, path)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_model_get_iter(tree_model, iter, path)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get_1iter_1first, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_tree_model_get_iter_first(tree_model, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get_1iter_1first, JNI.env, self.jni_id, tree_model.to_int, iter.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_tree_model_get_iter_first(tree_model, iter)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_model_get_iter_first(tree_model, iter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get_1n_1columns, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_model_get_n_columns(tree_model)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get_1n_1columns, JNI.env, self.jni_id, tree_model.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_model_get_n_columns(tree_model)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_model_get_n_columns(tree_model)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get_1path, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_tree_model_get_path(tree_model, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get_1path, JNI.env, self.jni_id, tree_model.to_int, iter.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_tree_model_get_path(tree_model, iter)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_model_get_path(tree_model, iter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get_1type, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_tree_model_get_type
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1get_1type, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_tree_model_get_type
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_model_get_type
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1iter_1children, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_tree_model_iter_children(model, iter, parent)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1iter_1children, JNI.env, self.jni_id, model.to_int, iter.to_int, parent.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_tree_model_iter_children(model, iter, parent)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_model_iter_children(model, iter, parent)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1iter_1n_1children, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_tree_model_iter_n_children(model, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1iter_1n_1children, JNI.env, self.jni_id, model.to_int, iter.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_tree_model_iter_n_children(model, iter)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_model_iter_n_children(model, iter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1iter_1next, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_tree_model_iter_next(model, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1iter_1next, JNI.env, self.jni_id, model.to_int, iter.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_tree_model_iter_next(model, iter)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_model_iter_next(model, iter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1iter_1nth_1child, [:pointer, :long, :int32, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_tree_model_iter_nth_child(tree_model, iter, parent, n)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1model_1iter_1nth_1child, JNI.env, self.jni_id, tree_model.to_int, iter.to_int, parent.to_int, n.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_tree_model_iter_nth_child(tree_model, iter, parent, n)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_model_iter_nth_child(tree_model, iter, parent, n)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1append_1index, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_tree_path_append_index(path, index)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1append_1index, JNI.env, self.jni_id, path.to_int, index.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_tree_path_append_index(path, index)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_path_append_index(path, index)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1compare, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_tree_path_compare(a, b)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1compare, JNI.env, self.jni_id, a.to_int, b.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_tree_path_compare(a, b)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_path_compare(a, b)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1down, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_path_down(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1down, JNI.env, self.jni_id, path.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_path_down(path)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_path_down(path)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_path_free(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1free, JNI.env, self.jni_id, path.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_path_free(path)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_path_free(path)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1get_1depth, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_path_get_depth(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1get_1depth, JNI.env, self.jni_id, path.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_path_get_depth(path)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_path_get_depth(path)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1get_1indices, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_tree_path_get_indices(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1get_1indices, JNI.env, self.jni_id, path.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_tree_path_get_indices(path)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_path_get_indices(path)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_tree_path_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_tree_path_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_path_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1new_1first, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_tree_path_new_first
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1new_1first, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_tree_path_new_first
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_path_new_first
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1new_1from_1string___3B, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def __gtk_tree_path_new_from_string(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1new_1from_1string___3B, JNI.env, self.jni_id, path.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def gtk_tree_path_new_from_string(path)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_path_new_from_string(path)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1new_1from_1string__I, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_tree_path_new_from_string(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1new_1from_1string__I, JNI.env, self.jni_id, path.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_tree_path_new_from_string(path)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_path_new_from_string(path)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1next, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_path_next(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1next, JNI.env, self.jni_id, path.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_path_next(path)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_path_next(path)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1prev, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_path_prev(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1prev, JNI.env, self.jni_id, path.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_path_prev(path)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_path_prev(path)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1up, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_path_up(path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1path_1up, JNI.env, self.jni_id, path.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_path_up(path)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_path_up(path)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1count_1selected_1rows, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_selection_count_selected_rows(selection)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1count_1selected_1rows, JNI.env, self.jni_id, selection.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_selection_count_selected_rows(selection)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_selection_count_selected_rows(selection)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1get_1selected, [:pointer, :long, :int32, :long, :int32], :int8
      typesig { [::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # long
      # long
      # long
      def __gtk_tree_selection_get_selected(selection, model, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1get_1selected, JNI.env, self.jni_id, selection.to_int, model.jni_id, iter.to_int) != 0
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
      # long
      # long
      # long
      def gtk_tree_selection_get_selected(selection, model, iter)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_selection_get_selected(selection, model, iter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1get_1selected_1rows, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def __gtk_tree_selection_get_selected_rows(selection, model)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1get_1selected_1rows, JNI.env, self.jni_id, selection.to_int, model.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def gtk_tree_selection_get_selected_rows(selection, model)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_selection_get_selected_rows(selection, model)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1path_1is_1selected, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_tree_selection_path_is_selected(selection, path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1path_1is_1selected, JNI.env, self.jni_id, selection.to_int, path.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_tree_selection_path_is_selected(selection, path)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_selection_path_is_selected(selection, path)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1select_1all, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_selection_select_all(selection)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1select_1all, JNI.env, self.jni_id, selection.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_selection_select_all(selection)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_selection_select_all(selection)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1select_1iter, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_tree_selection_select_iter(selection, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1select_1iter, JNI.env, self.jni_id, selection.to_int, iter.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_tree_selection_select_iter(selection, iter)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_selection_select_iter(selection, iter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1selected_1foreach, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_tree_selection_selected_foreach(selection, func, data)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1selected_1foreach, JNI.env, self.jni_id, selection.to_int, func.to_int, data.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_tree_selection_selected_foreach(selection, func, data)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_selection_selected_foreach(selection, func, data)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1set_1mode, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_tree_selection_set_mode(selection, mode)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1set_1mode, JNI.env, self.jni_id, selection.to_int, mode.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_tree_selection_set_mode(selection, mode)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_selection_set_mode(selection, mode)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1unselect_1all, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_selection_unselect_all(selection)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1unselect_1all, JNI.env, self.jni_id, selection.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_selection_unselect_all(selection)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_selection_unselect_all(selection)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1unselect_1iter, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_tree_selection_unselect_iter(selection, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1selection_1unselect_1iter, JNI.env, self.jni_id, selection.to_int, iter.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_tree_selection_unselect_iter(selection, iter)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_selection_unselect_iter(selection, iter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1append, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_tree_store_append(store, iter, parent)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1append, JNI.env, self.jni_id, store.to_int, iter.to_int, parent.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_tree_store_append(store, iter, parent)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_store_append(store, iter, parent)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1clear, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_store_clear(store)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1clear, JNI.env, self.jni_id, store.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_store_clear(store)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_store_clear(store)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1insert, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_tree_store_insert(store, iter, parent, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1insert, JNI.env, self.jni_id, store.to_int, iter.to_int, parent.to_int, position.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_tree_store_insert(store, iter, parent, position)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_store_insert(store, iter, parent, position)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1newv, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def __gtk_tree_store_newv(num_columns, types)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1newv, JNI.env, self.jni_id, num_columns.to_int, types.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int)] }
      # long
      # long
      def gtk_tree_store_newv(num_columns, types)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_store_newv(num_columns, types)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1remove, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_tree_store_remove(store, iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1remove, JNI.env, self.jni_id, store.to_int, iter.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_tree_store_remove(store, iter)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_store_remove(store, iter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1set__III_3BI, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      # long
      # long
      def __gtk_tree_store_set(store, iter, column, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1set__III_3BI, JNI.env, self.jni_id, store.to_int, iter.to_int, column.to_int, value.jni_id, terminator.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      # long
      # long
      def gtk_tree_store_set(store, iter, column, value, terminator)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_store_set(store, iter, column, value, terminator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1set__IIIII, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_tree_store_set(store, iter, column, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1set__IIIII, JNI.env, self.jni_id, store.to_int, iter.to_int, column.to_int, value.to_int, terminator.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_tree_store_set(store, iter, column, value, terminator)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_store_set(store, iter, column, value, terminator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1set__IIIJI, [:pointer, :long, :int32, :int32, :int32, :int64, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_tree_store_set(store, iter, column, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1set__IIIJI, JNI.env, self.jni_id, store.to_int, iter.to_int, column.to_int, value.to_int, terminator.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int] }
      # long
      # long
      # long
      def gtk_tree_store_set(store, iter, column, value, terminator)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_store_set(store, iter, column, value, terminator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1set__IIIL#{GdkColor.jni_name}_2I".to_sym, [:pointer, :long, :int32, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkColor, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_tree_store_set(store, iter, column, value, terminator)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1set__IIIL#{GdkColor.jni_name}_2I".to_sym, JNI.env, self.jni_id, store.to_int, iter.to_int, column.to_int, value.jni_id, terminator.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkColor, ::Java::Int] }
      # long
      # long
      # long
      def gtk_tree_store_set(store, iter, column, value, terminator)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_store_set(store, iter, column, value, terminator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1set__IIIZI, [:pointer, :long, :int32, :int32, :int32, :int8, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_tree_store_set(store, iter, column, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1store_1set__IIIZI, JNI.env, self.jni_id, store.to_int, iter.to_int, column.to_int, value ? 1 : 0, terminator.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int] }
      # long
      # long
      # long
      def gtk_tree_store_set(store, iter, column, value, terminator)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_store_set(store, iter, column, value, terminator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1create_1row_1drag_1icon, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_tree_view_create_row_drag_icon(view, path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1create_1row_1drag_1icon, JNI.env, self.jni_id, view.to_int, path.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_tree_view_create_row_drag_icon(view, path)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_create_row_drag_icon(view, path)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1collapse_1row, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_tree_view_collapse_row(view, path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1collapse_1row, JNI.env, self.jni_id, view.to_int, path.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_tree_view_collapse_row(view, path)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_collapse_row(view, path)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1add_1attribute, [:pointer, :long, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      # long
      def __gtk_tree_view_column_add_attribute(tree_column, cell_renderer, attribute, column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1add_1attribute, JNI.env, self.jni_id, tree_column.to_int, cell_renderer.to_int, attribute.jni_id, column.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      # long
      def gtk_tree_view_column_add_attribute(tree_column, cell_renderer, attribute, column)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_column_add_attribute(tree_column, cell_renderer, attribute, column)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1cell_1get_1position, [:pointer, :long, :int32, :int32, :long, :long], :int8
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def __gtk_tree_view_column_cell_get_position(tree_column, cell_renderer, start_pos, width)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1cell_1get_1position, JNI.env, self.jni_id, tree_column.to_int, cell_renderer.to_int, start_pos.jni_id, width.jni_id) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def gtk_tree_view_column_cell_get_position(tree_column, cell_renderer, start_pos, width)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_column_cell_get_position(tree_column, cell_renderer, start_pos, width)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1cell_1get_1size, [:pointer, :long, :int32, :long, :long, :long, :long, :long], :void
      typesig { [::Java::Int, GdkRectangle, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def __gtk_tree_view_column_cell_get_size(tree_column, cell_area, x_offset, y_offset, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1cell_1get_1size, JNI.env, self.jni_id, tree_column.to_int, cell_area.jni_id, x_offset.jni_id, y_offset.jni_id, width.jni_id, height.jni_id)
      end
      
      typesig { [::Java::Int, GdkRectangle, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def gtk_tree_view_column_cell_get_size(tree_column, cell_area, x_offset, y_offset, width, height)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_column_cell_get_size(tree_column, cell_area, x_offset, y_offset, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1cell_1set_1cell_1data, [:pointer, :long, :int32, :int32, :int32, :int8, :int8], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
      # long
      # long
      # long
      def __gtk_tree_view_column_cell_set_cell_data(tree_column, tree_model, iter, is_expander, is_expanded)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1cell_1set_1cell_1data, JNI.env, self.jni_id, tree_column.to_int, tree_model.to_int, iter.to_int, is_expander ? 1 : 0, is_expanded ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
      # long
      # long
      # long
      def gtk_tree_view_column_cell_set_cell_data(tree_column, tree_model, iter, is_expander, is_expanded)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_column_cell_set_cell_data(tree_column, tree_model, iter, is_expander, is_expanded)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1clear, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_view_column_clear(tree_column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1clear, JNI.env, self.jni_id, tree_column.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_view_column_clear(tree_column)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_column_clear(tree_column)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1cell_1renderers, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_tree_view_column_get_cell_renderers(tree_column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1cell_1renderers, JNI.env, self.jni_id, tree_column.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_tree_view_column_get_cell_renderers(tree_column)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_column_get_cell_renderers(tree_column)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1fixed_1width, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_view_column_get_fixed_width(column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1fixed_1width, JNI.env, self.jni_id, column.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_view_column_get_fixed_width(column)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_column_get_fixed_width(column)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1reorderable, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_view_column_get_reorderable(column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1reorderable, JNI.env, self.jni_id, column.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_view_column_get_reorderable(column)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_column_get_reorderable(column)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1resizable, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_view_column_get_resizable(column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1resizable, JNI.env, self.jni_id, column.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_view_column_get_resizable(column)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_column_get_resizable(column)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1sizing, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_view_column_get_sizing(tree_column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1sizing, JNI.env, self.jni_id, tree_column.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_view_column_get_sizing(tree_column)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_column_get_sizing(tree_column)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1spacing, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_view_column_get_spacing(tree_column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1spacing, JNI.env, self.jni_id, tree_column.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_view_column_get_spacing(tree_column)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_column_get_spacing(tree_column)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1visible, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_view_column_get_visible(column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1visible, JNI.env, self.jni_id, column.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_view_column_get_visible(column)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_column_get_visible(column)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1sort_1indicator, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_view_column_get_sort_indicator(tree_column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1sort_1indicator, JNI.env, self.jni_id, tree_column.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_view_column_get_sort_indicator(tree_column)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_column_get_sort_indicator(tree_column)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1sort_1order, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_view_column_get_sort_order(tree_column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1sort_1order, JNI.env, self.jni_id, tree_column.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_view_column_get_sort_order(tree_column)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_column_get_sort_order(tree_column)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1width, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_view_column_get_width(column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1get_1width, JNI.env, self.jni_id, column.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_view_column_get_width(column)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_column_get_width(column)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_tree_view_column_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_tree_view_column_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_column_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1pack_1start, [:pointer, :long, :int32, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def __gtk_tree_view_column_pack_start(tree_column, cell_renderer, expand)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1pack_1start, JNI.env, self.jni_id, tree_column.to_int, cell_renderer.to_int, expand ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def gtk_tree_view_column_pack_start(tree_column, cell_renderer, expand)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_column_pack_start(tree_column, cell_renderer, expand)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1pack_1end, [:pointer, :long, :int32, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def __gtk_tree_view_column_pack_end(tree_column, cell_renderer, expand)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1pack_1end, JNI.env, self.jni_id, tree_column.to_int, cell_renderer.to_int, expand ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def gtk_tree_view_column_pack_end(tree_column, cell_renderer, expand)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_column_pack_end(tree_column, cell_renderer, expand)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1alignment, [:pointer, :long, :int32, :float], :void
      typesig { [::Java::Int, ::Java::Float] }
      # long
      def __gtk_tree_view_column_set_alignment(tree_column, xalign)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1alignment, JNI.env, self.jni_id, tree_column.to_int, xalign)
      end
      
      typesig { [::Java::Int, ::Java::Float] }
      # long
      def gtk_tree_view_column_set_alignment(tree_column, xalign)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_column_set_alignment(tree_column, xalign)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1cell_1data_1func, [:pointer, :long, :int32, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def __gtk_tree_view_column_set_cell_data_func(tree_column, cell_renderer, func, func_data, destroy)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1cell_1data_1func, JNI.env, self.jni_id, tree_column.to_int, cell_renderer.to_int, func.to_int, func_data.to_int, destroy.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def gtk_tree_view_column_set_cell_data_func(tree_column, cell_renderer, func, func_data, destroy)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_column_set_cell_data_func(tree_column, cell_renderer, func, func_data, destroy)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1clickable, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_tree_view_column_set_clickable(column, clickable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1clickable, JNI.env, self.jni_id, column.to_int, clickable ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_tree_view_column_set_clickable(column, clickable)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_column_set_clickable(column, clickable)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1fixed_1width, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_tree_view_column_set_fixed_width(column, fixed_width)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1fixed_1width, JNI.env, self.jni_id, column.to_int, fixed_width.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_tree_view_column_set_fixed_width(column, fixed_width)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_column_set_fixed_width(column, fixed_width)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1min_1width, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_tree_view_column_set_min_width(tree_column, min_width)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1min_1width, JNI.env, self.jni_id, tree_column.to_int, min_width.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_tree_view_column_set_min_width(tree_column, min_width)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_column_set_min_width(tree_column, min_width)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1reorderable, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_tree_view_column_set_reorderable(column, reorderable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1reorderable, JNI.env, self.jni_id, column.to_int, reorderable ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_tree_view_column_set_reorderable(column, reorderable)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_column_set_reorderable(column, reorderable)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1resizable, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_tree_view_column_set_resizable(column, resizable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1resizable, JNI.env, self.jni_id, column.to_int, resizable ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_tree_view_column_set_resizable(column, resizable)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_column_set_resizable(column, resizable)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1sizing, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_tree_view_column_set_sizing(column, type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1sizing, JNI.env, self.jni_id, column.to_int, type.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_tree_view_column_set_sizing(column, type)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_column_set_sizing(column, type)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1sort_1indicator, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_tree_view_column_set_sort_indicator(tree_column, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1sort_1indicator, JNI.env, self.jni_id, tree_column.to_int, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_tree_view_column_set_sort_indicator(tree_column, setting)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_column_set_sort_indicator(tree_column, setting)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1sort_1order, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_tree_view_column_set_sort_order(tree_column, order)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1sort_1order, JNI.env, self.jni_id, tree_column.to_int, order.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_tree_view_column_set_sort_order(tree_column, order)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_column_set_sort_order(tree_column, order)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1title, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def __gtk_tree_view_column_set_title(tree_column, title)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1title, JNI.env, self.jni_id, tree_column.to_int, title.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def gtk_tree_view_column_set_title(tree_column, title)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_column_set_title(tree_column, title)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1visible, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_tree_view_column_set_visible(tree_column, visible)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1visible, JNI.env, self.jni_id, tree_column.to_int, visible ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_tree_view_column_set_visible(tree_column, visible)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_column_set_visible(tree_column, visible)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1widget, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_tree_view_column_set_widget(tree_column, widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1column_1set_1widget, JNI.env, self.jni_id, tree_column.to_int, widget.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_tree_view_column_set_widget(tree_column, widget)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_column_set_widget(tree_column, widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1drag_1dest_1row, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_tree_view_set_drag_dest_row(view, path, pos)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1drag_1dest_1row, JNI.env, self.jni_id, view.to_int, path.to_int, pos.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_tree_view_set_drag_dest_row(view, path, pos)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_set_drag_dest_row(view, path, pos)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1enable_1search, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_tree_view_set_enable_search(view, enable_search)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1enable_1search, JNI.env, self.jni_id, view.to_int, enable_search ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_tree_view_set_enable_search(view, enable_search)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_set_enable_search(view, enable_search)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1expand_1row, [:pointer, :long, :int32, :int32, :int8], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def __gtk_tree_view_expand_row(view, path, open_all)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1expand_1row, JNI.env, self.jni_id, view.to_int, path.to_int, open_all ? 1 : 0) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      def gtk_tree_view_expand_row(view, path, open_all)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_expand_row(view, path, open_all)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1background_1area, [:pointer, :long, :int32, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle] }
      # long
      # long
      # long
      def __gtk_tree_view_get_background_area(tree_view, path, column, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1background_1area, JNI.env, self.jni_id, tree_view.to_int, path.to_int, column.to_int, rect.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle] }
      # long
      # long
      # long
      def gtk_tree_view_get_background_area(tree_view, path, column, rect)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_get_background_area(tree_view, path, column, rect)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1bin_1window, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_tree_view_get_bin_window(tree_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1bin_1window, JNI.env, self.jni_id, tree_view.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_tree_view_get_bin_window(tree_view)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_get_bin_window(tree_view)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1cell_1area, [:pointer, :long, :int32, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle] }
      # long
      # long
      # long
      def __gtk_tree_view_get_cell_area(tree_view, path, column, rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1cell_1area, JNI.env, self.jni_id, tree_view.to_int, path.to_int, column.to_int, rect.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, GdkRectangle] }
      # long
      # long
      # long
      def gtk_tree_view_get_cell_area(tree_view, path, column, rect)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_get_cell_area(tree_view, path, column, rect)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1expander_1column, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_tree_view_get_expander_column(tree_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1expander_1column, JNI.env, self.jni_id, tree_view.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_tree_view_get_expander_column(tree_view)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_get_expander_column(tree_view)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1column, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_tree_view_get_column(tree_view, n)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1column, JNI.env, self.jni_id, tree_view.to_int, n.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_tree_view_get_column(tree_view, n)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_get_column(tree_view, n)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1columns, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_tree_view_get_columns(tree_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1columns, JNI.env, self.jni_id, tree_view.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_tree_view_get_columns(tree_view)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_get_columns(tree_view)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1cursor, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def __gtk_tree_view_get_cursor(tree_view, path, focus_column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1cursor, JNI.env, self.jni_id, tree_view.to_int, path.jni_id, focus_column.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def gtk_tree_view_get_cursor(tree_view, path, focus_column)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_get_cursor(tree_view, path, focus_column)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1headers_1visible, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_view_get_headers_visible(tree_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1headers_1visible, JNI.env, self.jni_id, tree_view.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_view_get_headers_visible(tree_view)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_get_headers_visible(tree_view)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1path_1at_1pos, [:pointer, :long, :int32, :int32, :int32, :long, :long, :long, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def __gtk_tree_view_get_path_at_pos(tree_view, x, y, path, column, cell_x, cell_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1path_1at_1pos, JNI.env, self.jni_id, tree_view.to_int, x.to_int, y.to_int, path.jni_id, column.jni_id, cell_x.jni_id, cell_y.jni_id) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def gtk_tree_view_get_path_at_pos(tree_view, x, y, path, column, cell_x, cell_y)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_get_path_at_pos(tree_view, x, y, path, column, cell_x, cell_y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1rules_1hint, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_view_get_rules_hint(tree_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1rules_1hint, JNI.env, self.jni_id, tree_view.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_view_get_rules_hint(tree_view)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_get_rules_hint(tree_view)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1selection, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_tree_view_get_selection(tree_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1selection, JNI.env, self.jni_id, tree_view.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_tree_view_get_selection(tree_view)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_get_selection(tree_view)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1visible_1rect, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GdkRectangle] }
      # long
      def __gtk_tree_view_get_visible_rect(tree_view, visible_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1get_1visible_1rect, JNI.env, self.jni_id, tree_view.to_int, visible_rect.jni_id)
      end
      
      typesig { [::Java::Int, GdkRectangle] }
      # long
      def gtk_tree_view_get_visible_rect(tree_view, visible_rect)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_get_visible_rect(tree_view, visible_rect)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1insert_1column, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_tree_view_insert_column(tree_view, column, position)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1insert_1column, JNI.env, self.jni_id, tree_view.to_int, column.to_int, position.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_tree_view_insert_column(tree_view, column, position)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_insert_column(tree_view, column, position)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1move_1column_1after, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_tree_view_move_column_after(tree_view, column, base_column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1move_1column_1after, JNI.env, self.jni_id, tree_view.to_int, column.to_int, base_column.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_tree_view_move_column_after(tree_view, column, base_column)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_move_column_after(tree_view, column, base_column)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1new_1with_1model, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_tree_view_new_with_model(model)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1new_1with_1model, JNI.env, self.jni_id, model.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_tree_view_new_with_model(model)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_new_with_model(model)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1remove_1column, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_tree_view_remove_column(tree_view, column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1remove_1column, JNI.env, self.jni_id, tree_view.to_int, column.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_tree_view_remove_column(tree_view, column)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_remove_column(tree_view, column)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1row_1expanded, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_tree_view_row_expanded(view, path)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1row_1expanded, JNI.env, self.jni_id, view.to_int, path.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_tree_view_row_expanded(view, path)
        PLATFORM_LOCK.lock
        begin
          return __gtk_tree_view_row_expanded(view, path)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1scroll_1to_1cell, [:pointer, :long, :int32, :int32, :int32, :int8, :float, :float], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Float, ::Java::Float] }
      # long
      # long
      # long
      def __gtk_tree_view_scroll_to_cell(tree_view, path, column, use_align, row_aligh, column_align)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1scroll_1to_1cell, JNI.env, self.jni_id, tree_view.to_int, path.to_int, column.to_int, use_align ? 1 : 0, row_aligh, column_align)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Float, ::Java::Float] }
      # long
      # long
      # long
      def gtk_tree_view_scroll_to_cell(tree_view, path, column, use_align, row_aligh, column_align)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_scroll_to_cell(tree_view, path, column, use_align, row_aligh, column_align)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1scroll_1to_1point, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gtk_tree_view_scroll_to_point(tree_view, tree_x, tree_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1scroll_1to_1point, JNI.env, self.jni_id, tree_view.to_int, tree_x.to_int, tree_y.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gtk_tree_view_scroll_to_point(tree_view, tree_x, tree_y)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_scroll_to_point(tree_view, tree_x, tree_y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1cursor, [:pointer, :long, :int32, :int32, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      # long
      def __gtk_tree_view_set_cursor(tree_view, path, focus_column, start_editing)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1cursor, JNI.env, self.jni_id, tree_view.to_int, path.to_int, focus_column.to_int, start_editing ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
      # long
      # long
      # long
      def gtk_tree_view_set_cursor(tree_view, path, focus_column, start_editing)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_set_cursor(tree_view, path, focus_column, start_editing)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1headers_1visible, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_tree_view_set_headers_visible(tree_view, visible)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1headers_1visible, JNI.env, self.jni_id, tree_view.to_int, visible ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_tree_view_set_headers_visible(tree_view, visible)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_set_headers_visible(tree_view, visible)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1model, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_tree_view_set_model(tree_view, model)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1model, JNI.env, self.jni_id, tree_view.to_int, model.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_tree_view_set_model(tree_view, model)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_set_model(tree_view, model)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1rules_1hint, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_tree_view_set_rules_hint(tree_view, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1rules_1hint, JNI.env, self.jni_id, tree_view.to_int, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_tree_view_set_rules_hint(tree_view, setting)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_set_rules_hint(tree_view, setting)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1search_1column, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_tree_view_set_search_column(tree_view, column)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1set_1search_1column, JNI.env, self.jni_id, tree_view.to_int, column.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_tree_view_set_search_column(tree_view, column)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_set_search_column(tree_view, column)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1tree_1to_1widget_1coords, [:pointer, :long, :int32, :int32, :int32, :long, :long], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def __gtk_tree_view_tree_to_widget_coords(tree_view, tx, ty, wx, wy)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1tree_1to_1widget_1coords, JNI.env, self.jni_id, tree_view.to_int, tx.to_int, ty.to_int, wx.jni_id, wy.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def gtk_tree_view_tree_to_widget_coords(tree_view, tx, ty, wx, wy)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_tree_to_widget_coords(tree_view, tx, ty, wx, wy)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1unset_1rows_1drag_1dest, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_tree_view_unset_rows_drag_dest(tree_view)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1unset_1rows_1drag_1dest, JNI.env, self.jni_id, tree_view.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_tree_view_unset_rows_drag_dest(tree_view)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_unset_rows_drag_dest(tree_view)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1widget_1to_1tree_1coords, [:pointer, :long, :int32, :int32, :int32, :long, :long], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def __gtk_tree_view_widget_to_tree_coords(tree_view, wx, wy, tx, ty)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1tree_1view_1widget_1to_1tree_1coords, JNI.env, self.jni_id, tree_view.to_int, wx.to_int, wy.to_int, tx.jni_id, ty.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def gtk_tree_view_widget_to_tree_coords(tree_view, wx, wy, tx, ty)
        PLATFORM_LOCK.lock
        begin
          __gtk_tree_view_widget_to_tree_coords(tree_view, wx, wy, tx, ty)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1vbox_1new, [:pointer, :long, :int8, :int32], :int32
      typesig { [::Java::Boolean, ::Java::Int] }
      # long
      def __gtk_vbox_new(homogeneous, spacing)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1vbox_1new, JNI.env, self.jni_id, homogeneous ? 1 : 0, spacing.to_int)
      end
      
      typesig { [::Java::Boolean, ::Java::Int] }
      # long
      def gtk_vbox_new(homogeneous, spacing)
        PLATFORM_LOCK.lock
        begin
          return __gtk_vbox_new(homogeneous, spacing)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1vscale_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_vscale_new(adjustment)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1vscale_1new, JNI.env, self.jni_id, adjustment.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_vscale_new(adjustment)
        PLATFORM_LOCK.lock
        begin
          return __gtk_vscale_new(adjustment)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1vscrollbar_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_vscrollbar_new(adjustment)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1vscrollbar_1new, JNI.env, self.jni_id, adjustment.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_vscrollbar_new(adjustment)
        PLATFORM_LOCK.lock
        begin
          return __gtk_vscrollbar_new(adjustment)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1vseparator_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_vseparator_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1vseparator_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_vseparator_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_vseparator_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1add_1accelerator, [:pointer, :long, :int32, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_widget_add_accelerator(widget, accel_signal, accel_group, accel_key, accel_mods, accel_flags)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1add_1accelerator, JNI.env, self.jni_id, widget.to_int, accel_signal.jni_id, accel_group.to_int, accel_key.to_int, accel_mods.to_int, accel_flags.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_widget_add_accelerator(widget, accel_signal, accel_group, accel_key, accel_mods, accel_flags)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_add_accelerator(widget, accel_signal, accel_group, accel_key, accel_mods, accel_flags)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1add_1events, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_widget_add_events(widget, events)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1add_1events, JNI.env, self.jni_id, widget.to_int, events.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_widget_add_events(widget, events)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_add_events(widget, events)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1child_1focus, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_widget_child_focus(widget, direction)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1child_1focus, JNI.env, self.jni_id, widget.to_int, direction.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_widget_child_focus(widget, direction)
        PLATFORM_LOCK.lock
        begin
          return __gtk_widget_child_focus(widget, direction)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1create_1pango_1layout__I_3B, [:pointer, :long, :int32, :long], :int32
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      # long
      def __gtk_widget_create_pango_layout(widget, text)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1create_1pango_1layout__I_3B, JNI.env, self.jni_id, widget.to_int, text.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      # long
      def gtk_widget_create_pango_layout(widget, text)
        PLATFORM_LOCK.lock
        begin
          return __gtk_widget_create_pango_layout(widget, text)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1create_1pango_1layout__II, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __gtk_widget_create_pango_layout(widget, text)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1create_1pango_1layout__II, JNI.env, self.jni_id, widget.to_int, text.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def gtk_widget_create_pango_layout(widget, text)
        PLATFORM_LOCK.lock
        begin
          return __gtk_widget_create_pango_layout(widget, text)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1destroy, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_widget_destroy(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1destroy, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_widget_destroy(widget)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_destroy(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1event, [:pointer, :long, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_widget_event(widget, event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1event, JNI.env, self.jni_id, widget.to_int, event.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_widget_event(widget, event)
        PLATFORM_LOCK.lock
        begin
          return __gtk_widget_event(widget, event)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1accessible, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_widget_get_accessible(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1accessible, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_widget_get_accessible(widget)
        PLATFORM_LOCK.lock
        begin
          return __gtk_widget_get_accessible(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1child_1visible, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_widget_get_child_visible(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1child_1visible, JNI.env, self.jni_id, widget.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_widget_get_child_visible(widget)
        PLATFORM_LOCK.lock
        begin
          return __gtk_widget_get_child_visible(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1default_1direction, [:pointer, :long], :int32
      typesig { [] }
      def __gtk_widget_get_default_direction
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1default_1direction, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      def gtk_widget_get_default_direction
        PLATFORM_LOCK.lock
        begin
          return __gtk_widget_get_default_direction
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1default_1style, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_widget_get_default_style
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1default_1style, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_widget_get_default_style
        PLATFORM_LOCK.lock
        begin
          return __gtk_widget_get_default_style
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1direction, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_widget_get_direction(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1direction, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_widget_get_direction(widget)
        PLATFORM_LOCK.lock
        begin
          return __gtk_widget_get_direction(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1events, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_widget_get_events(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1events, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_widget_get_events(widget)
        PLATFORM_LOCK.lock
        begin
          return __gtk_widget_get_events(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1modifier_1style, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_widget_get_modifier_style(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1modifier_1style, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_widget_get_modifier_style(widget)
        PLATFORM_LOCK.lock
        begin
          return __gtk_widget_get_modifier_style(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1pango_1context, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_widget_get_pango_context(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1pango_1context, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_widget_get_pango_context(widget)
        PLATFORM_LOCK.lock
        begin
          return __gtk_widget_get_pango_context(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1parent, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_widget_get_parent(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1parent, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_widget_get_parent(widget)
        PLATFORM_LOCK.lock
        begin
          return __gtk_widget_get_parent(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1style, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_widget_get_style(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1style, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_widget_get_style(widget)
        PLATFORM_LOCK.lock
        begin
          return __gtk_widget_get_style(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1size_1request, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def __gtk_widget_get_size_request(widget, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1size_1request, JNI.env, self.jni_id, widget.to_int, width.jni_id, height.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def gtk_widget_get_size_request(widget, width, height)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_get_size_request(widget, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1toplevel, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_widget_get_toplevel(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1get_1toplevel, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_widget_get_toplevel(widget)
        PLATFORM_LOCK.lock
        begin
          return __gtk_widget_get_toplevel(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1grab_1focus, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_widget_grab_focus(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1grab_1focus, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_widget_grab_focus(widget)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_grab_focus(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1hide, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_widget_hide(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1hide, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_widget_hide(widget)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_hide(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1is_1composited, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_widget_is_composited(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1is_1composited, JNI.env, self.jni_id, widget.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_widget_is_composited(widget)
        PLATFORM_LOCK.lock
        begin
          return __gtk_widget_is_composited(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1is_1focus, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_widget_is_focus(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1is_1focus, JNI.env, self.jni_id, widget.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_widget_is_focus(widget)
        PLATFORM_LOCK.lock
        begin
          return __gtk_widget_is_focus(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1map, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_widget_map(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1map, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_widget_map(widget)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_map(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1mnemonic_1activate, [:pointer, :long, :int32, :int8], :int8
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_widget_mnemonic_activate(widget, group_cycling)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1mnemonic_1activate, JNI.env, self.jni_id, widget.to_int, group_cycling ? 1 : 0) != 0
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_widget_mnemonic_activate(widget, group_cycling)
        PLATFORM_LOCK.lock
        begin
          return __gtk_widget_mnemonic_activate(widget, group_cycling)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1base, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def __gtk_widget_modify_base(widget, state, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1base, JNI.env, self.jni_id, widget.to_int, state.to_int, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def gtk_widget_modify_base(widget, state, color)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_modify_base(widget, state, color)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1bg, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def __gtk_widget_modify_bg(widget, state, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1bg, JNI.env, self.jni_id, widget.to_int, state.to_int, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def gtk_widget_modify_bg(widget, state, color)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_modify_bg(widget, state, color)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1fg, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def __gtk_widget_modify_fg(widget, state, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1fg, JNI.env, self.jni_id, widget.to_int, state.to_int, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def gtk_widget_modify_fg(widget, state, color)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_modify_fg(widget, state, color)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1font, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_widget_modify_font(widget, pango_font_descr)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1font, JNI.env, self.jni_id, widget.to_int, pango_font_descr.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_widget_modify_font(widget, pango_font_descr)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_modify_font(widget, pango_font_descr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1style, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_widget_modify_style(widget, style)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1style, JNI.env, self.jni_id, widget.to_int, style.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_widget_modify_style(widget, style)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_modify_style(widget, style)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1text, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def __gtk_widget_modify_text(widget, state, color)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1modify_1text, JNI.env, self.jni_id, widget.to_int, state.to_int, color.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkColor] }
      # long
      def gtk_widget_modify_text(widget, state, color)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_modify_text(widget, state, color)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1queue_1resize, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_widget_queue_resize(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1queue_1resize, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_widget_queue_resize(widget)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_queue_resize(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1realize, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_widget_realize(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1realize, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_widget_realize(widget)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_realize(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1remove_1accelerator, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_widget_remove_accelerator(widget, accel_group, accel_key, accel_mods)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1remove_1accelerator, JNI.env, self.jni_id, widget.to_int, accel_group.to_int, accel_key.to_int, accel_mods.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_widget_remove_accelerator(widget, accel_group, accel_key, accel_mods)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_remove_accelerator(widget, accel_group, accel_key, accel_mods)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1reparent, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_widget_reparent(widget, new_parent)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1reparent, JNI.env, self.jni_id, widget.to_int, new_parent.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_widget_reparent(widget, new_parent)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_reparent(widget, new_parent)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1send_1expose, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_widget_send_expose(widget, event)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1send_1expose, JNI.env, self.jni_id, widget.to_int, event.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_widget_send_expose(widget, event)
        PLATFORM_LOCK.lock
        begin
          return __gtk_widget_send_expose(widget, event)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1app_1paintable, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_widget_set_app_paintable(widget, app_paintable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1app_1paintable, JNI.env, self.jni_id, widget.to_int, app_paintable ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_widget_set_app_paintable(widget, app_paintable)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_set_app_paintable(widget, app_paintable)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1default_1direction, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      def __gtk_widget_set_default_direction(dir)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1default_1direction, JNI.env, self.jni_id, dir.to_int)
      end
      
      typesig { [::Java::Int] }
      def gtk_widget_set_default_direction(dir)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_set_default_direction(dir)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1direction, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_widget_set_direction(widget, dir)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1direction, JNI.env, self.jni_id, widget.to_int, dir.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_widget_set_direction(widget, dir)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_set_direction(widget, dir)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1double_1buffered, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_widget_set_double_buffered(widget, double_buffered)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1double_1buffered, JNI.env, self.jni_id, widget.to_int, double_buffered ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_widget_set_double_buffered(widget, double_buffered)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_set_double_buffered(widget, double_buffered)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1name, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def __gtk_widget_set_name(widget, name)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1name, JNI.env, self.jni_id, widget.to_int, name.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def gtk_widget_set_name(widget, name)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_set_name(widget, name)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1redraw_1on_1allocate, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_widget_set_redraw_on_allocate(widget, redraw)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1redraw_1on_1allocate, JNI.env, self.jni_id, widget.to_int, redraw ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_widget_set_redraw_on_allocate(widget, redraw)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_set_redraw_on_allocate(widget, redraw)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1sensitive, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_widget_set_sensitive(widget, sensitive)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1sensitive, JNI.env, self.jni_id, widget.to_int, sensitive ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_widget_set_sensitive(widget, sensitive)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_set_sensitive(widget, sensitive)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1size_1request, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gtk_widget_set_size_request(widget, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1size_1request, JNI.env, self.jni_id, widget.to_int, width.to_int, height.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gtk_widget_set_size_request(widget, width, height)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_set_size_request(widget, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1state, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_widget_set_state(widget, state)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1state, JNI.env, self.jni_id, widget.to_int, state.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_widget_set_state(widget, state)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_set_state(widget, state)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1style, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_widget_set_style(widget, style)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1style, JNI.env, self.jni_id, widget.to_int, style.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_widget_set_style(widget, style)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_set_style(widget, style)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1shape_1combine_1mask, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_widget_shape_combine_mask(widget, shape_mask, offset_x, offset_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1shape_1combine_1mask, JNI.env, self.jni_id, widget.to_int, shape_mask.to_int, offset_x.to_int, offset_y.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_widget_shape_combine_mask(widget, shape_mask, offset_x, offset_y)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_shape_combine_mask(widget, shape_mask, offset_x, offset_y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1show, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_widget_show(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1show, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_widget_show(widget)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_show(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1show_1now, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_widget_show_now(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1show_1now, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_widget_show_now(widget)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_show_now(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1size_1allocate, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GtkAllocation] }
      # long
      def __gtk_widget_size_allocate(widget, allocation)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1size_1allocate, JNI.env, self.jni_id, widget.to_int, allocation.jni_id)
      end
      
      typesig { [::Java::Int, GtkAllocation] }
      # long
      def gtk_widget_size_allocate(widget, allocation)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_size_allocate(widget, allocation)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1size_1request, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GtkRequisition] }
      # long
      def __gtk_widget_size_request(widget, requisition)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1size_1request, JNI.env, self.jni_id, widget.to_int, requisition.jni_id)
      end
      
      typesig { [::Java::Int, GtkRequisition] }
      # long
      def gtk_widget_size_request(widget, requisition)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_size_request(widget, requisition)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1style_1get__I_3B_3II, [:pointer, :long, :int32, :long, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int), ::Java::Int] }
      # long
      # long
      def __gtk_widget_style_get(widget, property_name, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1style_1get__I_3B_3II, JNI.env, self.jni_id, widget.to_int, property_name.jni_id, value.jni_id, terminator.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Int), ::Java::Int] }
      # long
      # long
      def gtk_widget_style_get(widget, property_name, value, terminator)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_style_get(widget, property_name, value, terminator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1style_1get__I_3B_3JI, [:pointer, :long, :int32, :long, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Long), ::Java::Int] }
      # long
      # long
      def __gtk_widget_style_get(widget, property_name, value, terminator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1style_1get__I_3B_3JI, JNI.env, self.jni_id, widget.to_int, property_name.jni_id, value.jni_id, terminator.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Long), ::Java::Int] }
      # long
      # long
      def gtk_widget_style_get(widget, property_name, value, terminator)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_style_get(widget, property_name, value, terminator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1translate_1coordinates, [:pointer, :long, :int32, :int32, :int32, :int32, :long, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def __gtk_widget_translate_coordinates(src_widget, dest_widget, src_x, src_y, dest_x, dest_y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1translate_1coordinates, JNI.env, self.jni_id, src_widget.to_int, dest_widget.to_int, src_x.to_int, src_y.to_int, dest_x.jni_id, dest_y.jni_id) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def gtk_widget_translate_coordinates(src_widget, dest_widget, src_x, src_y, dest_x, dest_y)
        PLATFORM_LOCK.lock
        begin
          return __gtk_widget_translate_coordinates(src_widget, dest_widget, src_x, src_y, dest_x, dest_y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1unrealize, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_widget_unrealize(widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1unrealize, JNI.env, self.jni_id, widget.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_widget_unrealize(widget)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_unrealize(widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1activate_1default, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_window_activate_default(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1activate_1default, JNI.env, self.jni_id, window.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_window_activate_default(window)
        PLATFORM_LOCK.lock
        begin
          return __gtk_window_activate_default(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1add_1accel_1group, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_window_add_accel_group(window, accel_group)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1add_1accel_1group, JNI.env, self.jni_id, window.to_int, accel_group.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_window_add_accel_group(window, accel_group)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_add_accel_group(window, accel_group)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1deiconify, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_window_deiconify(handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1deiconify, JNI.env, self.jni_id, handle.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_window_deiconify(handle)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_deiconify(handle)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1focus, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_window_get_focus(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1focus, JNI.env, self.jni_id, window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_window_get_focus(window)
        PLATFORM_LOCK.lock
        begin
          return __gtk_window_get_focus(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1group, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_window_get_group(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1group, JNI.env, self.jni_id, window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_window_get_group(window)
        PLATFORM_LOCK.lock
        begin
          return __gtk_window_get_group(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1icon_1list, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __gtk_window_get_icon_list(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1icon_1list, JNI.env, self.jni_id, window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def gtk_window_get_icon_list(window)
        PLATFORM_LOCK.lock
        begin
          return __gtk_window_get_icon_list(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1modal, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __gtk_window_get_modal(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1modal, JNI.env, self.jni_id, window.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_window_get_modal(window)
        PLATFORM_LOCK.lock
        begin
          return __gtk_window_get_modal(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1mnemonic_1modifier, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_window_get_mnemonic_modifier(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1mnemonic_1modifier, JNI.env, self.jni_id, window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_window_get_mnemonic_modifier(window)
        PLATFORM_LOCK.lock
        begin
          return __gtk_window_get_mnemonic_modifier(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1opacity, [:pointer, :long, :int32], :double
      typesig { [::Java::Int] }
      # long
      def __gtk_window_get_opacity(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1opacity, JNI.env, self.jni_id, window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_window_get_opacity(window)
        PLATFORM_LOCK.lock
        begin
          return __gtk_window_get_opacity(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1position, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def __gtk_window_get_position(handle, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1position, JNI.env, self.jni_id, handle.to_int, x.jni_id, y.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def gtk_window_get_position(handle, x, y)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_get_position(handle, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1size, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def __gtk_window_get_size(handle, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1get_1size, JNI.env, self.jni_id, handle.to_int, x.jni_id, y.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def gtk_window_get_size(handle, x, y)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_get_size(handle, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1group_1add_1window, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_window_group_add_window(group, window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1group_1add_1window, JNI.env, self.jni_id, group.to_int, window.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_window_group_add_window(group, window)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_group_add_window(group, window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1group_1remove_1window, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_window_group_remove_window(group, window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1group_1remove_1window, JNI.env, self.jni_id, group.to_int, window.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_window_group_remove_window(group, window)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_group_remove_window(group, window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1group_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_window_group_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1group_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_window_group_new
        PLATFORM_LOCK.lock
        begin
          return __gtk_window_group_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1iconify, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_window_iconify(handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1iconify, JNI.env, self.jni_id, handle.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_window_iconify(handle)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_iconify(handle)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1list_1toplevels, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __gtk_window_list_toplevels
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1list_1toplevels, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def gtk_window_list_toplevels
        PLATFORM_LOCK.lock
        begin
          return __gtk_window_list_toplevels
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1maximize, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_window_maximize(handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1maximize, JNI.env, self.jni_id, handle.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_window_maximize(handle)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_maximize(handle)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1fullscreen, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_window_fullscreen(handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1fullscreen, JNI.env, self.jni_id, handle.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_window_fullscreen(handle)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_fullscreen(handle)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1unfullscreen, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_window_unfullscreen(handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1unfullscreen, JNI.env, self.jni_id, handle.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_window_unfullscreen(handle)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_unfullscreen(handle)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1move, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gtk_window_move(handle, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1move, JNI.env, self.jni_id, handle.to_int, x.to_int, y.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gtk_window_move(handle, x, y)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_move(handle, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __gtk_window_new(type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1new, JNI.env, self.jni_id, type.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_window_new(type)
        PLATFORM_LOCK.lock
        begin
          return __gtk_window_new(type)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1present, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_window_present(window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1present, JNI.env, self.jni_id, window.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_window_present(window)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_present(window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1remove_1accel_1group, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_window_remove_accel_group(window, accel_group)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1remove_1accel_1group, JNI.env, self.jni_id, window.to_int, accel_group.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_window_remove_accel_group(window, accel_group)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_remove_accel_group(window, accel_group)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1resize, [:pointer, :long, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def __gtk_window_resize(handle, x, y)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1resize, JNI.env, self.jni_id, handle.to_int, x.to_int, y.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      def gtk_window_resize(handle, x, y)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_resize(handle, x, y)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1default, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_window_set_default(window, widget)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1default, JNI.env, self.jni_id, window.to_int, widget.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_window_set_default(window, widget)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_set_default(window, widget)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1destroy_1with_1parent, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_window_set_destroy_with_parent(window, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1destroy_1with_1parent, JNI.env, self.jni_id, window.to_int, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_window_set_destroy_with_parent(window, setting)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_set_destroy_with_parent(window, setting)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1keep_1below, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_window_set_keep_below(window, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1keep_1below, JNI.env, self.jni_id, window.to_int, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_window_set_keep_below(window, setting)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_set_keep_below(window, setting)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1geometry_1hints, [:pointer, :long, :int32, :int32, :long, :int32], :void
      typesig { [::Java::Int, ::Java::Int, GdkGeometry, ::Java::Int] }
      # long
      # long
      def __gtk_window_set_geometry_hints(window, geometry_widget, geometry, geom_mask)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1geometry_1hints, JNI.env, self.jni_id, window.to_int, geometry_widget.to_int, geometry.jni_id, geom_mask.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, GdkGeometry, ::Java::Int] }
      # long
      # long
      def gtk_window_set_geometry_hints(window, geometry_widget, geometry, geom_mask)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_set_geometry_hints(window, geometry_widget, geometry, geom_mask)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1icon_1list, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_window_set_icon_list(window, list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1icon_1list, JNI.env, self.jni_id, window.to_int, list.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_window_set_icon_list(window, list)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_set_icon_list(window, list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1modal, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_window_set_modal(window, modal)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1modal, JNI.env, self.jni_id, window.to_int, modal ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_window_set_modal(window, modal)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_set_modal(window, modal)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1opacity, [:pointer, :long, :int32, :double], :void
      typesig { [::Java::Int, ::Java::Double] }
      # long
      def __gtk_window_set_opacity(window, opacity)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1opacity, JNI.env, self.jni_id, window.to_int, opacity)
      end
      
      typesig { [::Java::Int, ::Java::Double] }
      # long
      def gtk_window_set_opacity(window, opacity)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_set_opacity(window, opacity)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1tooltip_1text, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def __gtk_widget_set_tooltip_text(widget, tip_text)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1tooltip_1text, JNI.env, self.jni_id, widget.to_int, tip_text.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def gtk_widget_set_tooltip_text(widget, tip_text)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_set_tooltip_text(widget, tip_text)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1parent_1window, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_widget_set_parent_window(widget, parent_window)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1widget_1set_1parent_1window, JNI.env, self.jni_id, widget.to_int, parent_window.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_widget_set_parent_window(widget, parent_window)
        PLATFORM_LOCK.lock
        begin
          __gtk_widget_set_parent_window(widget, parent_window)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1resizable, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_window_set_resizable(window, resizable)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1resizable, JNI.env, self.jni_id, window.to_int, resizable ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_window_set_resizable(window, resizable)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_set_resizable(window, resizable)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1title, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def __gtk_window_set_title(window, title)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1title, JNI.env, self.jni_id, window.to_int, title.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def gtk_window_set_title(window, title)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_set_title(window, title)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1skip_1taskbar_1hint, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __gtk_window_set_skip_taskbar_hint(window, skips_taskbar)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1skip_1taskbar_1hint, JNI.env, self.jni_id, window.to_int, skips_taskbar ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def gtk_window_set_skip_taskbar_hint(window, skips_taskbar)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_set_skip_taskbar_hint(window, skips_taskbar)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1type_1hint, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __gtk_window_set_type_hint(window, hint)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1type_1hint, JNI.env, self.jni_id, window.to_int, hint.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def gtk_window_set_type_hint(window, hint)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_set_type_hint(window, hint)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1transient_1for, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __gtk_window_set_transient_for(window, parent)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1set_1transient_1for, JNI.env, self.jni_id, window.to_int, parent.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def gtk_window_set_transient_for(window, parent)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_set_transient_for(window, parent)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1unmaximize, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __gtk_window_unmaximize(handle)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1gtk_1window_1unmaximize, JNI.env, self.jni_id, handle.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def gtk_window_unmaximize(handle)
        PLATFORM_LOCK.lock
        begin
          __gtk_window_unmaximize(handle)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GInterfaceInfo.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, GInterfaceInfo, ::Java::Int] }
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GInterfaceInfo.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GObjectClass.jni_name}_2".to_sym, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GObjectClass] }
      # long
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GObjectClass.jni_name}_2".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GTypeInfo.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, GTypeInfo, ::Java::Int] }
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GTypeInfo.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GtkTargetEntry.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, GtkTargetEntry, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GtkTargetEntry.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GtkAdjustment.jni_name}_2".to_sym, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GtkAdjustment] }
      # long
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GtkAdjustment.jni_name}_2".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GdkEventButton.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, GdkEventButton, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GdkEventButton.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GdkEventExpose.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, GdkEventExpose, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GdkEventExpose.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GdkEventMotion.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, GdkEventMotion, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GdkEventMotion.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GtkWidgetClass.jni_name}_2".to_sym, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GtkWidgetClass] }
      # long
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GtkWidgetClass.jni_name}_2".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{PangoAttribute.jni_name}_2I".to_sym, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, PangoAttribute, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{PangoAttribute.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GObjectClass.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32], :void
      typesig { [GObjectClass, ::Java::Int] }
      # long
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GObjectClass.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GTypeQuery.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GTypeQuery, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GTypeQuery.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkColorSelectionDialog.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32], :void
      typesig { [GtkColorSelectionDialog, ::Java::Int] }
      # long
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkColorSelectionDialog.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkFileSelection.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32], :void
      typesig { [GtkFileSelection, ::Java::Int] }
      # long
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkFileSelection.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkDragContext.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkDragContext, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkDragContext.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkSelectionData.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GtkSelectionData, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkSelectionData.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkWidgetClass.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32], :void
      typesig { [GtkWidgetClass, ::Java::Int] }
      # long
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkWidgetClass.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkTargetPair.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GtkTargetPair, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkTargetPair.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkCombo.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32], :void
      typesig { [GtkCombo, ::Java::Int] }
      # long
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkCombo.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkAdjustment.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32], :void
      typesig { [GtkAdjustment, ::Java::Int] }
      # long
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkAdjustment.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkBorder.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GtkBorder, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkBorder.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkColor.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkColor, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkColor.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEvent.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEvent, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEvent.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventAny.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEventAny, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventAny.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventButton.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEventButton, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventButton.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventCrossing.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEventCrossing, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventCrossing.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventExpose.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEventExpose, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventExpose.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventFocus.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEventFocus, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventFocus.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventKey.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEventKey, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventKey.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventMotion.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEventMotion, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventMotion.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventScroll.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEventScroll, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventScroll.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventVisibility.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEventVisibility, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventVisibility.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventWindowState.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkEventWindowState, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkEventWindowState.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GtkCellRendererClass.jni_name}_2".to_sym, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GtkCellRendererClass] }
      # long
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GtkCellRendererClass.jni_name}_2".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkCellRendererClass.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32], :void
      typesig { [GtkCellRendererClass, ::Java::Int] }
      # long
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkCellRendererClass.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkFixed.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32], :void
      typesig { [GtkFixed, ::Java::Int] }
      # long
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GtkFixed.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GtkFixed.jni_name}_2".to_sym, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, GtkFixed] }
      # long
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__IL#{GtkFixed.jni_name}_2".to_sym, JNI.env, self.jni_id, dest.to_int, src.jni_id)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkVisual.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32], :void
      typesig { [GdkVisual, ::Java::Int] }
      # long
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkVisual.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkImage.jni_name}_2I".to_sym, [:pointer, :long, :long, :int32], :void
      typesig { [GdkImage, ::Java::Int] }
      # long
      def memmove(dest, src)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkImage.jni_name}_2I".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkRectangle.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [GdkRectangle, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{GdkRectangle.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoAttribute.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [PangoAttribute, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoAttribute.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoAttrColor.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [PangoAttrColor, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoAttrColor.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoAttrInt.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [PangoAttrInt, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoAttrInt.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoItem.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [PangoItem, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoItem.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoLayoutLine.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [PangoLayoutLine, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoLayoutLine.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoLayoutRun.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [PangoLayoutRun, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoLayoutRun.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method "Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoLogAttr.jni_name}_2II".to_sym, [:pointer, :long, :long, :int32, :int32], :void
      typesig { [PangoLogAttr, ::Java::Int, ::Java::Int] }
      # long
      # long
      def memmove(dest, src, size)
        JNI.__send__("Java_org_eclipse_swt_internal_gtk_OS_memmove__L#{PangoLogAttr.jni_name}_2II".to_sym, JNI.env, self.jni_id, dest.jni_id, src.to_int, size.to_int)
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1background_1new, [:pointer, :long, :int16, :int16, :int16], :int32
      typesig { [::Java::Short, ::Java::Short, ::Java::Short] }
      # long
      def __pango_attr_background_new(red, green, blue)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1background_1new, JNI.env, self.jni_id, red.to_int, green.to_int, blue.to_int)
      end
      
      typesig { [::Java::Short, ::Java::Short, ::Java::Short] }
      # long
      def pango_attr_background_new(red, green, blue)
        PLATFORM_LOCK.lock
        begin
          return __pango_attr_background_new(red, green, blue)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1font_1desc_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __pango_attr_font_desc_new(desc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1font_1desc_1new, JNI.env, self.jni_id, desc.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def pango_attr_font_desc_new(desc)
        PLATFORM_LOCK.lock
        begin
          return __pango_attr_font_desc_new(desc)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1foreground_1new, [:pointer, :long, :int16, :int16, :int16], :int32
      typesig { [::Java::Short, ::Java::Short, ::Java::Short] }
      # long
      def __pango_attr_foreground_new(red, green, blue)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1foreground_1new, JNI.env, self.jni_id, red.to_int, green.to_int, blue.to_int)
      end
      
      typesig { [::Java::Short, ::Java::Short, ::Java::Short] }
      # long
      def pango_attr_foreground_new(red, green, blue)
        PLATFORM_LOCK.lock
        begin
          return __pango_attr_foreground_new(red, green, blue)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1rise_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_attr_rise_new(rise)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1rise_1new, JNI.env, self.jni_id, rise.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_attr_rise_new(rise)
        PLATFORM_LOCK.lock
        begin
          return __pango_attr_rise_new(rise)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1shape_1new, [:pointer, :long, :long, :long], :int32
      typesig { [PangoRectangle, PangoRectangle] }
      # long
      def __pango_attr_shape_new(ink_rect, logical_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1shape_1new, JNI.env, self.jni_id, ink_rect.jni_id, logical_rect.jni_id)
      end
      
      typesig { [PangoRectangle, PangoRectangle] }
      # long
      def pango_attr_shape_new(ink_rect, logical_rect)
        PLATFORM_LOCK.lock
        begin
          return __pango_attr_shape_new(ink_rect, logical_rect)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1list_1insert, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __pango_attr_list_insert(list, attr)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1list_1insert, JNI.env, self.jni_id, list.to_int, attr.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def pango_attr_list_insert(list, attr)
        PLATFORM_LOCK.lock
        begin
          __pango_attr_list_insert(list, attr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1list_1change, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __pango_attr_list_change(list, attr)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1list_1change, JNI.env, self.jni_id, list.to_int, attr.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def pango_attr_list_change(list, attr)
        PLATFORM_LOCK.lock
        begin
          __pango_attr_list_change(list, attr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1list_1get_1iterator, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __pango_attr_list_get_iterator(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1list_1get_1iterator, JNI.env, self.jni_id, list.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def pango_attr_list_get_iterator(list)
        PLATFORM_LOCK.lock
        begin
          return __pango_attr_list_get_iterator(list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1iterator_1next, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __pango_attr_iterator_next(iterator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1iterator_1next, JNI.env, self.jni_id, iterator.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_attr_iterator_next(iterator)
        PLATFORM_LOCK.lock
        begin
          return __pango_attr_iterator_next(iterator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1iterator_1range, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def __pango_attr_iterator_range(iterator, start, end_)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1iterator_1range, JNI.env, self.jni_id, iterator.to_int, start.jni_id, end_.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def pango_attr_iterator_range(iterator, start, end_)
        PLATFORM_LOCK.lock
        begin
          __pango_attr_iterator_range(iterator, start, end_)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1iterator_1get, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __pango_attr_iterator_get(iterator, type)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1iterator_1get, JNI.env, self.jni_id, iterator.to_int, type.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def pango_attr_iterator_get(iterator, type)
        PLATFORM_LOCK.lock
        begin
          return __pango_attr_iterator_get(iterator, type)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1iterator_1get_1attrs, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __pango_attr_iterator_get_attrs(iterator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1iterator_1get_1attrs, JNI.env, self.jni_id, iterator.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def pango_attr_iterator_get_attrs(iterator)
        PLATFORM_LOCK.lock
        begin
          return __pango_attr_iterator_get_attrs(iterator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1iterator_1destroy, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __pango_attr_iterator_destroy(iterator)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1iterator_1destroy, JNI.env, self.jni_id, iterator.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_attr_iterator_destroy(iterator)
        PLATFORM_LOCK.lock
        begin
          __pango_attr_iterator_destroy(iterator)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1list_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __pango_attr_list_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1list_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def pango_attr_list_new
        PLATFORM_LOCK.lock
        begin
          return __pango_attr_list_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1list_1unref, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __pango_attr_list_unref(list)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1list_1unref, JNI.env, self.jni_id, list.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_attr_list_unref(list)
        PLATFORM_LOCK.lock
        begin
          __pango_attr_list_unref(list)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1strikethrough_1color_1new, [:pointer, :long, :int16, :int16, :int16], :int32
      typesig { [::Java::Short, ::Java::Short, ::Java::Short] }
      # long
      def __pango_attr_strikethrough_color_new(red, green, blue)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1strikethrough_1color_1new, JNI.env, self.jni_id, red.to_int, green.to_int, blue.to_int)
      end
      
      typesig { [::Java::Short, ::Java::Short, ::Java::Short] }
      # long
      def pango_attr_strikethrough_color_new(red, green, blue)
        PLATFORM_LOCK.lock
        begin
          return __pango_attr_strikethrough_color_new(red, green, blue)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1strikethrough_1new, [:pointer, :long, :int8], :int32
      typesig { [::Java::Boolean] }
      # long
      def __pango_attr_strikethrough_new(strikethrough)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1strikethrough_1new, JNI.env, self.jni_id, strikethrough ? 1 : 0)
      end
      
      typesig { [::Java::Boolean] }
      # long
      def pango_attr_strikethrough_new(strikethrough)
        PLATFORM_LOCK.lock
        begin
          return __pango_attr_strikethrough_new(strikethrough)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1underline_1color_1new, [:pointer, :long, :int16, :int16, :int16], :int32
      typesig { [::Java::Short, ::Java::Short, ::Java::Short] }
      # long
      def __pango_attr_underline_color_new(red, green, blue)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1underline_1color_1new, JNI.env, self.jni_id, red.to_int, green.to_int, blue.to_int)
      end
      
      typesig { [::Java::Short, ::Java::Short, ::Java::Short] }
      # long
      def pango_attr_underline_color_new(red, green, blue)
        PLATFORM_LOCK.lock
        begin
          return __pango_attr_underline_color_new(red, green, blue)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1underline_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_attr_underline_new(underline)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1underline_1new, JNI.env, self.jni_id, underline.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_attr_underline_new(underline)
        PLATFORM_LOCK.lock
        begin
          return __pango_attr_underline_new(underline)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1weight_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_attr_weight_new(weight)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1attr_1weight_1new, JNI.env, self.jni_id, weight.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_attr_weight_new(weight)
        PLATFORM_LOCK.lock
        begin
          return __pango_attr_weight_new(weight)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1font_1map_1get_1default, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __pango_cairo_font_map_get_default
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1font_1map_1get_1default, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def pango_cairo_font_map_get_default
        PLATFORM_LOCK.lock
        begin
          return __pango_cairo_font_map_get_default
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1font_1map_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __pango_cairo_font_map_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1font_1map_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def pango_cairo_font_map_new
        PLATFORM_LOCK.lock
        begin
          return __pango_cairo_font_map_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1font_1map_1create_1context, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __pango_cairo_font_map_create_context(fontmap)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1font_1map_1create_1context, JNI.env, self.jni_id, fontmap.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def pango_cairo_font_map_create_context(fontmap)
        PLATFORM_LOCK.lock
        begin
          return __pango_cairo_font_map_create_context(fontmap)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1create_1layout, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __pango_cairo_create_layout(cairo)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1create_1layout, JNI.env, self.jni_id, cairo.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def pango_cairo_create_layout(cairo)
        PLATFORM_LOCK.lock
        begin
          return __pango_cairo_create_layout(cairo)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1context_1get_1font_1options, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __pango_cairo_context_get_font_options(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1context_1get_1font_1options, JNI.env, self.jni_id, context.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def pango_cairo_context_get_font_options(context)
        PLATFORM_LOCK.lock
        begin
          return __pango_cairo_context_get_font_options(context)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1context_1set_1font_1options, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __pango_cairo_context_set_font_options(context, options)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1context_1set_1font_1options, JNI.env, self.jni_id, context.to_int, options.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def pango_cairo_context_set_font_options(context, options)
        PLATFORM_LOCK.lock
        begin
          __pango_cairo_context_set_font_options(context, options)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1font_1map_1set_1resolution, [:pointer, :long, :int32, :double], :void
      typesig { [::Java::Int, ::Java::Double] }
      # long
      def __pango_cairo_font_map_set_resolution(fontmap, dpi)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1font_1map_1set_1resolution, JNI.env, self.jni_id, fontmap.to_int, dpi)
      end
      
      typesig { [::Java::Int, ::Java::Double] }
      # long
      def pango_cairo_font_map_set_resolution(fontmap, dpi)
        PLATFORM_LOCK.lock
        begin
          __pango_cairo_font_map_set_resolution(fontmap, dpi)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1layout_1path, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __pango_cairo_layout_path(cairo, layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1layout_1path, JNI.env, self.jni_id, cairo.to_int, layout.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def pango_cairo_layout_path(cairo, layout)
        PLATFORM_LOCK.lock
        begin
          __pango_cairo_layout_path(cairo, layout)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1show_1layout, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __pango_cairo_show_layout(cairo, layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1cairo_1show_1layout, JNI.env, self.jni_id, cairo.to_int, layout.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def pango_cairo_show_layout(cairo, layout)
        PLATFORM_LOCK.lock
        begin
          __pango_cairo_show_layout(cairo, layout)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1get_1base_1dir, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_context_get_base_dir(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1get_1base_1dir, JNI.env, self.jni_id, context.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_context_get_base_dir(context)
        PLATFORM_LOCK.lock
        begin
          return __pango_context_get_base_dir(context)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1get_1language, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __pango_context_get_language(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1get_1language, JNI.env, self.jni_id, context.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def pango_context_get_language(context)
        PLATFORM_LOCK.lock
        begin
          return __pango_context_get_language(context)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1get_1metrics, [:pointer, :long, :int32, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def __pango_context_get_metrics(context, desc, language)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1get_1metrics, JNI.env, self.jni_id, context.to_int, desc.to_int, language.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def pango_context_get_metrics(context, desc, language)
        PLATFORM_LOCK.lock
        begin
          return __pango_context_get_metrics(context, desc, language)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1list_1families, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def __pango_context_list_families(context, families, n_families)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1list_1families, JNI.env, self.jni_id, context.to_int, families.jni_id, n_families.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def pango_context_list_families(context, families, n_families)
        PLATFORM_LOCK.lock
        begin
          __pango_context_list_families(context, families, n_families)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1set_1base_1dir, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __pango_context_set_base_dir(context, direction)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1set_1base_1dir, JNI.env, self.jni_id, context.to_int, direction.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def pango_context_set_base_dir(context, direction)
        PLATFORM_LOCK.lock
        begin
          __pango_context_set_base_dir(context, direction)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1set_1language, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __pango_context_set_language(context, language)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1context_1set_1language, JNI.env, self.jni_id, context.to_int, language.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def pango_context_set_language(context, language)
        PLATFORM_LOCK.lock
        begin
          __pango_context_set_language(context, language)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1copy, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __pango_font_description_copy(desc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1copy, JNI.env, self.jni_id, desc.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def pango_font_description_copy(desc)
        PLATFORM_LOCK.lock
        begin
          return __pango_font_description_copy(desc)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __pango_font_description_free(desc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1free, JNI.env, self.jni_id, desc.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_font_description_free(desc)
        PLATFORM_LOCK.lock
        begin
          __pango_font_description_free(desc)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1from_1string, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def __pango_font_description_from_string(str)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1from_1string, JNI.env, self.jni_id, str.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def pango_font_description_from_string(str)
        PLATFORM_LOCK.lock
        begin
          return __pango_font_description_from_string(str)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1get_1family, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __pango_font_description_get_family(desc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1get_1family, JNI.env, self.jni_id, desc.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def pango_font_description_get_family(desc)
        PLATFORM_LOCK.lock
        begin
          return __pango_font_description_get_family(desc)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1get_1size, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_font_description_get_size(desc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1get_1size, JNI.env, self.jni_id, desc.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_font_description_get_size(desc)
        PLATFORM_LOCK.lock
        begin
          return __pango_font_description_get_size(desc)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1get_1style, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_font_description_get_style(desc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1get_1style, JNI.env, self.jni_id, desc.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_font_description_get_style(desc)
        PLATFORM_LOCK.lock
        begin
          return __pango_font_description_get_style(desc)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1get_1weight, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_font_description_get_weight(desc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1get_1weight, JNI.env, self.jni_id, desc.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_font_description_get_weight(desc)
        PLATFORM_LOCK.lock
        begin
          return __pango_font_description_get_weight(desc)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1new, [:pointer, :long], :int32
      typesig { [] }
      # long
      def __pango_font_description_new
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1new, JNI.env, self.jni_id)
      end
      
      typesig { [] }
      # long
      def pango_font_description_new
        PLATFORM_LOCK.lock
        begin
          return __pango_font_description_new
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1set_1family, [:pointer, :long, :int32, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def __pango_font_description_set_family(desc, family)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1set_1family, JNI.env, self.jni_id, desc.to_int, family.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte)] }
      # long
      def pango_font_description_set_family(desc, family)
        PLATFORM_LOCK.lock
        begin
          __pango_font_description_set_family(desc, family)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1set_1size, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __pango_font_description_set_size(desc, size)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1set_1size, JNI.env, self.jni_id, desc.to_int, size.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def pango_font_description_set_size(desc, size)
        PLATFORM_LOCK.lock
        begin
          __pango_font_description_set_size(desc, size)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1set_1stretch, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __pango_font_description_set_stretch(desc, stretch)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1set_1stretch, JNI.env, self.jni_id, desc.to_int, stretch.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def pango_font_description_set_stretch(desc, stretch)
        PLATFORM_LOCK.lock
        begin
          __pango_font_description_set_stretch(desc, stretch)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1set_1style, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __pango_font_description_set_style(desc, weight)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1set_1style, JNI.env, self.jni_id, desc.to_int, weight.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def pango_font_description_set_style(desc, weight)
        PLATFORM_LOCK.lock
        begin
          __pango_font_description_set_style(desc, weight)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1set_1weight, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __pango_font_description_set_weight(desc, weight)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1set_1weight, JNI.env, self.jni_id, desc.to_int, weight.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def pango_font_description_set_weight(desc, weight)
        PLATFORM_LOCK.lock
        begin
          __pango_font_description_set_weight(desc, weight)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1to_1string, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __pango_font_description_to_string(desc)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1description_1to_1string, JNI.env, self.jni_id, desc.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def pango_font_description_to_string(desc)
        PLATFORM_LOCK.lock
        begin
          return __pango_font_description_to_string(desc)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1face_1describe, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __pango_font_face_describe(face)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1face_1describe, JNI.env, self.jni_id, face.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def pango_font_face_describe(face)
        PLATFORM_LOCK.lock
        begin
          return __pango_font_face_describe(face)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1family_1get_1name, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __pango_font_family_get_name(family)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1family_1get_1name, JNI.env, self.jni_id, family.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def pango_font_family_get_name(family)
        PLATFORM_LOCK.lock
        begin
          return __pango_font_family_get_name(family)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1family_1list_1faces, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def __pango_font_family_list_faces(family, faces, n_faces)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1family_1list_1faces, JNI.env, self.jni_id, family.to_int, faces.jni_id, n_faces.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def pango_font_family_list_faces(family, faces, n_faces)
        PLATFORM_LOCK.lock
        begin
          __pango_font_family_list_faces(family, faces, n_faces)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1get_1metrics, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def __pango_font_get_metrics(font, language)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1get_1metrics, JNI.env, self.jni_id, font.to_int, language.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def pango_font_get_metrics(font, language)
        PLATFORM_LOCK.lock
        begin
          return __pango_font_get_metrics(font, language)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1approximate_1char_1width, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_font_metrics_get_approximate_char_width(metrics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1approximate_1char_1width, JNI.env, self.jni_id, metrics.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_font_metrics_get_approximate_char_width(metrics)
        PLATFORM_LOCK.lock
        begin
          return __pango_font_metrics_get_approximate_char_width(metrics)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1ascent, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_font_metrics_get_ascent(metrics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1ascent, JNI.env, self.jni_id, metrics.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_font_metrics_get_ascent(metrics)
        PLATFORM_LOCK.lock
        begin
          return __pango_font_metrics_get_ascent(metrics)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1descent, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_font_metrics_get_descent(metrics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1descent, JNI.env, self.jni_id, metrics.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_font_metrics_get_descent(metrics)
        PLATFORM_LOCK.lock
        begin
          return __pango_font_metrics_get_descent(metrics)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1underline_1thickness, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_font_metrics_get_underline_thickness(metrics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1underline_1thickness, JNI.env, self.jni_id, metrics.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_font_metrics_get_underline_thickness(metrics)
        PLATFORM_LOCK.lock
        begin
          return __pango_font_metrics_get_underline_thickness(metrics)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1underline_1position, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_font_metrics_get_underline_position(metrics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1underline_1position, JNI.env, self.jni_id, metrics.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_font_metrics_get_underline_position(metrics)
        PLATFORM_LOCK.lock
        begin
          return __pango_font_metrics_get_underline_position(metrics)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1strikethrough_1thickness, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_font_metrics_get_strikethrough_thickness(metrics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1strikethrough_1thickness, JNI.env, self.jni_id, metrics.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_font_metrics_get_strikethrough_thickness(metrics)
        PLATFORM_LOCK.lock
        begin
          return __pango_font_metrics_get_strikethrough_thickness(metrics)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1strikethrough_1position, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_font_metrics_get_strikethrough_position(metrics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1get_1strikethrough_1position, JNI.env, self.jni_id, metrics.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_font_metrics_get_strikethrough_position(metrics)
        PLATFORM_LOCK.lock
        begin
          return __pango_font_metrics_get_strikethrough_position(metrics)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1unref, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __pango_font_metrics_unref(metrics)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1font_1metrics_1unref, JNI.env, self.jni_id, metrics.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_font_metrics_unref(metrics)
        PLATFORM_LOCK.lock
        begin
          __pango_font_metrics_unref(metrics)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1language_1from_1string, [:pointer, :long, :long], :int32
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def __pango_language_from_string(language)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1language_1from_1string, JNI.env, self.jni_id, language.jni_id)
      end
      
      typesig { [Array.typed(::Java::Byte)] }
      # long
      def pango_language_from_string(language)
        PLATFORM_LOCK.lock
        begin
          return __pango_language_from_string(language)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1context_1changed, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __pango_layout_context_changed(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1context_1changed, JNI.env, self.jni_id, layout.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_layout_context_changed(layout)
        PLATFORM_LOCK.lock
        begin
          __pango_layout_context_changed(layout)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1alignment, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_layout_get_alignment(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1alignment, JNI.env, self.jni_id, layout.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_layout_get_alignment(layout)
        PLATFORM_LOCK.lock
        begin
          return __pango_layout_get_alignment(layout)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1context, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __pango_layout_get_context(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1context, JNI.env, self.jni_id, layout.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def pango_layout_get_context(layout)
        PLATFORM_LOCK.lock
        begin
          return __pango_layout_get_context(layout)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1attributes, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __pango_layout_get_attributes(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1attributes, JNI.env, self.jni_id, layout.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def pango_layout_get_attributes(layout)
        PLATFORM_LOCK.lock
        begin
          return __pango_layout_get_attributes(layout)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1indent, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_layout_get_indent(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1indent, JNI.env, self.jni_id, layout.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_layout_get_indent(layout)
        PLATFORM_LOCK.lock
        begin
          return __pango_layout_get_indent(layout)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1iter, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __pango_layout_get_iter(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1iter, JNI.env, self.jni_id, layout.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def pango_layout_get_iter(layout)
        PLATFORM_LOCK.lock
        begin
          return __pango_layout_get_iter(layout)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1justify, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __pango_layout_get_justify(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1justify, JNI.env, self.jni_id, layout.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_layout_get_justify(layout)
        PLATFORM_LOCK.lock
        begin
          return __pango_layout_get_justify(layout)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1line, [:pointer, :long, :int32, :int32], :int32
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __pango_layout_get_line(layout, line)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1line, JNI.env, self.jni_id, layout.to_int, line.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def pango_layout_get_line(layout, line)
        PLATFORM_LOCK.lock
        begin
          return __pango_layout_get_line(layout, line)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1line_1count, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_layout_get_line_count(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1line_1count, JNI.env, self.jni_id, layout.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_layout_get_line_count(layout)
        PLATFORM_LOCK.lock
        begin
          return __pango_layout_get_line_count(layout)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1log_1attrs, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def __pango_layout_get_log_attrs(layout, attrs, n_attrs)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1log_1attrs, JNI.env, self.jni_id, layout.to_int, attrs.jni_id, n_attrs.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      def pango_layout_get_log_attrs(layout, attrs, n_attrs)
        PLATFORM_LOCK.lock
        begin
          __pango_layout_get_log_attrs(layout, attrs, n_attrs)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1size, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def __pango_layout_get_size(layout, width, height)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1size, JNI.env, self.jni_id, layout.to_int, width.jni_id, height.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def pango_layout_get_size(layout, width, height)
        PLATFORM_LOCK.lock
        begin
          __pango_layout_get_size(layout, width, height)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1spacing, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_layout_get_spacing(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1spacing, JNI.env, self.jni_id, layout.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_layout_get_spacing(layout)
        PLATFORM_LOCK.lock
        begin
          return __pango_layout_get_spacing(layout)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1tabs, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __pango_layout_get_tabs(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1tabs, JNI.env, self.jni_id, layout.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def pango_layout_get_tabs(layout)
        PLATFORM_LOCK.lock
        begin
          return __pango_layout_get_tabs(layout)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1text, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __pango_layout_get_text(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1text, JNI.env, self.jni_id, layout.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def pango_layout_get_text(layout)
        PLATFORM_LOCK.lock
        begin
          return __pango_layout_get_text(layout)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1width, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_layout_get_width(layout)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1get_1width, JNI.env, self.jni_id, layout.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_layout_get_width(layout)
        PLATFORM_LOCK.lock
        begin
          return __pango_layout_get_width(layout)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1index_1to_1pos, [:pointer, :long, :int32, :int32, :long], :void
      typesig { [::Java::Int, ::Java::Int, PangoRectangle] }
      # long
      def __pango_layout_index_to_pos(layout, index, pos)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1index_1to_1pos, JNI.env, self.jni_id, layout.to_int, index.to_int, pos.jni_id)
      end
      
      typesig { [::Java::Int, ::Java::Int, PangoRectangle] }
      # long
      def pango_layout_index_to_pos(layout, index, pos)
        PLATFORM_LOCK.lock
        begin
          __pango_layout_index_to_pos(layout, index, pos)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __pango_layout_iter_free(iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1free, JNI.env, self.jni_id, iter.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_layout_iter_free(iter)
        PLATFORM_LOCK.lock
        begin
          __pango_layout_iter_free(iter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1get_1line_1extents, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, PangoRectangle, PangoRectangle] }
      # long
      def __pango_layout_iter_get_line_extents(iter, ink_rect, logical_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1get_1line_1extents, JNI.env, self.jni_id, iter.to_int, ink_rect.jni_id, logical_rect.jni_id)
      end
      
      typesig { [::Java::Int, PangoRectangle, PangoRectangle] }
      # long
      def pango_layout_iter_get_line_extents(iter, ink_rect, logical_rect)
        PLATFORM_LOCK.lock
        begin
          __pango_layout_iter_get_line_extents(iter, ink_rect, logical_rect)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1get_1index, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_layout_iter_get_index(iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1get_1index, JNI.env, self.jni_id, iter.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_layout_iter_get_index(iter)
        PLATFORM_LOCK.lock
        begin
          return __pango_layout_iter_get_index(iter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1get_1run, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __pango_layout_iter_get_run(iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1get_1run, JNI.env, self.jni_id, iter.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def pango_layout_iter_get_run(iter)
        PLATFORM_LOCK.lock
        begin
          return __pango_layout_iter_get_run(iter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1next_1line, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __pango_layout_iter_next_line(iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1next_1line, JNI.env, self.jni_id, iter.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_layout_iter_next_line(iter)
        PLATFORM_LOCK.lock
        begin
          return __pango_layout_iter_next_line(iter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1next_1run, [:pointer, :long, :int32], :int8
      typesig { [::Java::Int] }
      # long
      def __pango_layout_iter_next_run(iter)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1iter_1next_1run, JNI.env, self.jni_id, iter.to_int) != 0
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_layout_iter_next_run(iter)
        PLATFORM_LOCK.lock
        begin
          return __pango_layout_iter_next_run(iter)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1line_1get_1extents, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, PangoRectangle, PangoRectangle] }
      # long
      def __pango_layout_line_get_extents(line, ink_rect, logical_rect)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1line_1get_1extents, JNI.env, self.jni_id, line.to_int, ink_rect.jni_id, logical_rect.jni_id)
      end
      
      typesig { [::Java::Int, PangoRectangle, PangoRectangle] }
      # long
      def pango_layout_line_get_extents(line, ink_rect, logical_rect)
        PLATFORM_LOCK.lock
        begin
          __pango_layout_line_get_extents(line, ink_rect, logical_rect)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1line_1x_1to_1index, [:pointer, :long, :int32, :int32, :long, :long], :int8
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def __pango_layout_line_x_to_index(line, x_pos, index_, trailing)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1line_1x_1to_1index, JNI.env, self.jni_id, line.to_int, x_pos.to_int, index_.jni_id, trailing.jni_id) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def pango_layout_line_x_to_index(line, x_pos, index_, trailing)
        PLATFORM_LOCK.lock
        begin
          return __pango_layout_line_x_to_index(line, x_pos, index_, trailing)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1line_1get_1resolved_1dir, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_layout_line_get_resolved_dir(line)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1line_1get_1resolved_1dir, JNI.env, self.jni_id, line.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_layout_line_get_resolved_dir(line)
        PLATFORM_LOCK.lock
        begin
          return __pango_layout_line_get_resolved_dir(line)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1new, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      # long
      def __pango_layout_new(context)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1new, JNI.env, self.jni_id, context.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      # long
      def pango_layout_new(context)
        PLATFORM_LOCK.lock
        begin
          return __pango_layout_new(context)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1alignment, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __pango_layout_set_alignment(layout, alignment)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1alignment, JNI.env, self.jni_id, layout.to_int, alignment.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def pango_layout_set_alignment(layout, alignment)
        PLATFORM_LOCK.lock
        begin
          __pango_layout_set_alignment(layout, alignment)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1attributes, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __pango_layout_set_attributes(layout, attrs)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1attributes, JNI.env, self.jni_id, layout.to_int, attrs.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def pango_layout_set_attributes(layout, attrs)
        PLATFORM_LOCK.lock
        begin
          __pango_layout_set_attributes(layout, attrs)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1auto_1dir, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __pango_layout_set_auto_dir(layout, auto_dir)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1auto_1dir, JNI.env, self.jni_id, layout.to_int, auto_dir ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def pango_layout_set_auto_dir(layout, auto_dir)
        PLATFORM_LOCK.lock
        begin
          __pango_layout_set_auto_dir(layout, auto_dir)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1font_1description, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __pango_layout_set_font_description(context, descr)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1font_1description, JNI.env, self.jni_id, context.to_int, descr.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def pango_layout_set_font_description(context, descr)
        PLATFORM_LOCK.lock
        begin
          __pango_layout_set_font_description(context, descr)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1indent, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __pango_layout_set_indent(layout, indent)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1indent, JNI.env, self.jni_id, layout.to_int, indent.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def pango_layout_set_indent(layout, indent)
        PLATFORM_LOCK.lock
        begin
          __pango_layout_set_indent(layout, indent)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1justify, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __pango_layout_set_justify(layout, justify)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1justify, JNI.env, self.jni_id, layout.to_int, justify ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def pango_layout_set_justify(layout, justify)
        PLATFORM_LOCK.lock
        begin
          __pango_layout_set_justify(layout, justify)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1single_1paragraph_1mode, [:pointer, :long, :int32, :int8], :void
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __pango_layout_set_single_paragraph_mode(context, setting)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1single_1paragraph_1mode, JNI.env, self.jni_id, context.to_int, setting ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def pango_layout_set_single_paragraph_mode(context, setting)
        PLATFORM_LOCK.lock
        begin
          __pango_layout_set_single_paragraph_mode(context, setting)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1spacing, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __pango_layout_set_spacing(layout, spacing)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1spacing, JNI.env, self.jni_id, layout.to_int, spacing.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def pango_layout_set_spacing(layout, spacing)
        PLATFORM_LOCK.lock
        begin
          __pango_layout_set_spacing(layout, spacing)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1tabs, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def __pango_layout_set_tabs(layout, tabs)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1tabs, JNI.env, self.jni_id, layout.to_int, tabs.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      def pango_layout_set_tabs(layout, tabs)
        PLATFORM_LOCK.lock
        begin
          __pango_layout_set_tabs(layout, tabs)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1text, [:pointer, :long, :int32, :long, :int32], :void
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def __pango_layout_set_text(layout, text, length_)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1text, JNI.env, self.jni_id, layout.to_int, text.jni_id, length_.to_int)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      # long
      def pango_layout_set_text(layout, text, length_)
        PLATFORM_LOCK.lock
        begin
          __pango_layout_set_text(layout, text, length_)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1width, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __pango_layout_set_width(layout, width)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1width, JNI.env, self.jni_id, layout.to_int, width.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def pango_layout_set_width(layout, width)
        PLATFORM_LOCK.lock
        begin
          __pango_layout_set_width(layout, width)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1wrap, [:pointer, :long, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def __pango_layout_set_wrap(layout, wrap)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1set_1wrap, JNI.env, self.jni_id, layout.to_int, wrap.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      def pango_layout_set_wrap(layout, wrap)
        PLATFORM_LOCK.lock
        begin
          __pango_layout_set_wrap(layout, wrap)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1xy_1to_1index, [:pointer, :long, :int32, :int32, :int32, :long, :long], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def __pango_layout_xy_to_index(layout, x, y, index, trailing)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1layout_1xy_1to_1index, JNI.env, self.jni_id, layout.to_int, x.to_int, y.to_int, index.jni_id, trailing.jni_id) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      def pango_layout_xy_to_index(layout, x, y, index, trailing)
        PLATFORM_LOCK.lock
        begin
          return __pango_layout_xy_to_index(layout, x, y, index, trailing)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1tab_1array_1get_1size, [:pointer, :long, :int32], :int32
      typesig { [::Java::Int] }
      # long
      def __pango_tab_array_get_size(tab_array)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1tab_1array_1get_1size, JNI.env, self.jni_id, tab_array.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_tab_array_get_size(tab_array)
        PLATFORM_LOCK.lock
        begin
          return __pango_tab_array_get_size(tab_array)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1tab_1array_1get_1tabs, [:pointer, :long, :int32, :long, :long], :void
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def __pango_tab_array_get_tabs(tab_array, alignments, locations)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1tab_1array_1get_1tabs, JNI.env, self.jni_id, tab_array.to_int, alignments.jni_id, locations.jni_id)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Int), Array.typed(::Java::Int)] }
      # long
      # long
      # long
      def pango_tab_array_get_tabs(tab_array, alignments, locations)
        PLATFORM_LOCK.lock
        begin
          __pango_tab_array_get_tabs(tab_array, alignments, locations)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1tab_1array_1free, [:pointer, :long, :int32], :void
      typesig { [::Java::Int] }
      # long
      def __pango_tab_array_free(tab_array)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1tab_1array_1free, JNI.env, self.jni_id, tab_array.to_int)
      end
      
      typesig { [::Java::Int] }
      # long
      def pango_tab_array_free(tab_array)
        PLATFORM_LOCK.lock
        begin
          __pango_tab_array_free(tab_array)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1tab_1array_1new, [:pointer, :long, :int32, :int8], :int32
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def __pango_tab_array_new(initial_size, positions_in_pixels)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1tab_1array_1new, JNI.env, self.jni_id, initial_size.to_int, positions_in_pixels ? 1 : 0)
      end
      
      typesig { [::Java::Int, ::Java::Boolean] }
      # long
      def pango_tab_array_new(initial_size, positions_in_pixels)
        PLATFORM_LOCK.lock
        begin
          return __pango_tab_array_new(initial_size, positions_in_pixels)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1pango_1tab_1array_1set_1tab, [:pointer, :long, :int32, :int32, :int32, :int32], :void
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __pango_tab_array_set_tab(tab_array, tab_index, alignment, location)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1pango_1tab_1array_1set_1tab, JNI.env, self.jni_id, tab_array.to_int, tab_index.to_int, alignment.to_int, location.to_int)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def pango_tab_array_set_tab(tab_array, tab_index, alignment, location)
        PLATFORM_LOCK.lock
        begin
          __pango_tab_array_set_tab(tab_array, tab_index, alignment, location)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
      
      JNI.native_method :Java_org_eclipse_swt_internal_gtk_OS__1atk_1object_1add_1relationship, [:pointer, :long, :int32, :int32, :int32], :int8
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def __atk_object_add_relationship(object, relationship, target)
        JNI.__send__(:Java_org_eclipse_swt_internal_gtk_OS__1atk_1object_1add_1relationship, JNI.env, self.jni_id, object.to_int, relationship.to_int, target.to_int) != 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      def atk_object_add_relationship(object, relationship, target)
        PLATFORM_LOCK.lock
        begin
          return __atk_object_add_relationship(object, relationship, target)
        ensure
          PLATFORM_LOCK.unlock
        end
      end
    }
    
    typesig { [] }
    def initialize
      super()
    end
    
    private
    alias_method :initialize__os, :initialize
  end
  
end
