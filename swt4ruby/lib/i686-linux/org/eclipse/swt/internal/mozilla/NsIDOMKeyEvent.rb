require "rjava"

# ***** BEGIN LICENSE BLOCK *****
# Version: MPL 1.1
# 
# The contents of this file are subject to the Mozilla Public License Version
# 1.1 (the "License"); you may not use this file except in compliance with
# the License. You may obtain a copy of the License at
# http://www.mozilla.org/MPL/
# 
# Software distributed under the License is distributed on an "AS IS" basis,
# WITHOUT WARRANTY OF ANY KIND, either express or implied. See the License
# for the specific language governing rights and limitations under the
# License.
# 
# The Original Code is Mozilla Communicator client code, released March 31, 1998.
# 
# The Initial Developer of the Original Code is
# Netscape Communications Corporation.
# Portions created by Netscape are Copyright (C) 1998-1999
# Netscape Communications Corporation.  All Rights Reserved.
# 
# Contributor(s):
# 
# IBM
# -  Binding to permit interfacing between Mozilla and SWT
# -  Copyright (C) 2003, 2008 IBM Corp.  All Rights Reserved.
# 
# ***** END LICENSE BLOCK *****
module Org::Eclipse::Swt::Internal::Mozilla
  module NsIDOMKeyEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIDOMKeyEvent < NsIDOMUIEvent
    include_class_members NsIDOMKeyEventImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsIDOMUIEvent::LAST_METHOD_ID + 7 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IDOMKEYEVENT_IID_STR) { "028e0e6e-8b01-11d3-aae7-0010838a3123" }
      const_attr_reader  :NS_IDOMKEYEVENT_IID_STR
      
      const_set_lazy(:NS_IDOMKEYEVENT_IID) { NsID.new(NS_IDOMKEYEVENT_IID_STR) }
      const_attr_reader  :NS_IDOMKEYEVENT_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    class_module.module_eval {
      const_set_lazy(:DOM_VK_CANCEL) { 3 }
      const_attr_reader  :DOM_VK_CANCEL
      
      const_set_lazy(:DOM_VK_HELP) { 6 }
      const_attr_reader  :DOM_VK_HELP
      
      const_set_lazy(:DOM_VK_BACK_SPACE) { 8 }
      const_attr_reader  :DOM_VK_BACK_SPACE
      
      const_set_lazy(:DOM_VK_TAB) { 9 }
      const_attr_reader  :DOM_VK_TAB
      
      const_set_lazy(:DOM_VK_CLEAR) { 12 }
      const_attr_reader  :DOM_VK_CLEAR
      
      const_set_lazy(:DOM_VK_RETURN) { 13 }
      const_attr_reader  :DOM_VK_RETURN
      
      const_set_lazy(:DOM_VK_ENTER) { 14 }
      const_attr_reader  :DOM_VK_ENTER
      
      const_set_lazy(:DOM_VK_SHIFT) { 16 }
      const_attr_reader  :DOM_VK_SHIFT
      
      const_set_lazy(:DOM_VK_CONTROL) { 17 }
      const_attr_reader  :DOM_VK_CONTROL
      
      const_set_lazy(:DOM_VK_ALT) { 18 }
      const_attr_reader  :DOM_VK_ALT
      
      const_set_lazy(:DOM_VK_PAUSE) { 19 }
      const_attr_reader  :DOM_VK_PAUSE
      
      const_set_lazy(:DOM_VK_CAPS_LOCK) { 20 }
      const_attr_reader  :DOM_VK_CAPS_LOCK
      
      const_set_lazy(:DOM_VK_ESCAPE) { 27 }
      const_attr_reader  :DOM_VK_ESCAPE
      
      const_set_lazy(:DOM_VK_SPACE) { 32 }
      const_attr_reader  :DOM_VK_SPACE
      
      const_set_lazy(:DOM_VK_PAGE_UP) { 33 }
      const_attr_reader  :DOM_VK_PAGE_UP
      
      const_set_lazy(:DOM_VK_PAGE_DOWN) { 34 }
      const_attr_reader  :DOM_VK_PAGE_DOWN
      
      const_set_lazy(:DOM_VK_END) { 35 }
      const_attr_reader  :DOM_VK_END
      
      const_set_lazy(:DOM_VK_HOME) { 36 }
      const_attr_reader  :DOM_VK_HOME
      
      const_set_lazy(:DOM_VK_LEFT) { 37 }
      const_attr_reader  :DOM_VK_LEFT
      
      const_set_lazy(:DOM_VK_UP) { 38 }
      const_attr_reader  :DOM_VK_UP
      
      const_set_lazy(:DOM_VK_RIGHT) { 39 }
      const_attr_reader  :DOM_VK_RIGHT
      
      const_set_lazy(:DOM_VK_DOWN) { 40 }
      const_attr_reader  :DOM_VK_DOWN
      
      const_set_lazy(:DOM_VK_PRINTSCREEN) { 44 }
      const_attr_reader  :DOM_VK_PRINTSCREEN
      
      const_set_lazy(:DOM_VK_INSERT) { 45 }
      const_attr_reader  :DOM_VK_INSERT
      
      const_set_lazy(:DOM_VK_DELETE) { 46 }
      const_attr_reader  :DOM_VK_DELETE
      
      const_set_lazy(:DOM_VK_0) { 48 }
      const_attr_reader  :DOM_VK_0
      
      const_set_lazy(:DOM_VK_1) { 49 }
      const_attr_reader  :DOM_VK_1
      
      const_set_lazy(:DOM_VK_2) { 50 }
      const_attr_reader  :DOM_VK_2
      
      const_set_lazy(:DOM_VK_3) { 51 }
      const_attr_reader  :DOM_VK_3
      
      const_set_lazy(:DOM_VK_4) { 52 }
      const_attr_reader  :DOM_VK_4
      
      const_set_lazy(:DOM_VK_5) { 53 }
      const_attr_reader  :DOM_VK_5
      
      const_set_lazy(:DOM_VK_6) { 54 }
      const_attr_reader  :DOM_VK_6
      
      const_set_lazy(:DOM_VK_7) { 55 }
      const_attr_reader  :DOM_VK_7
      
      const_set_lazy(:DOM_VK_8) { 56 }
      const_attr_reader  :DOM_VK_8
      
      const_set_lazy(:DOM_VK_9) { 57 }
      const_attr_reader  :DOM_VK_9
      
      const_set_lazy(:DOM_VK_SEMICOLON) { 59 }
      const_attr_reader  :DOM_VK_SEMICOLON
      
      const_set_lazy(:DOM_VK_EQUALS) { 61 }
      const_attr_reader  :DOM_VK_EQUALS
      
      const_set_lazy(:DOM_VK_A) { 65 }
      const_attr_reader  :DOM_VK_A
      
      const_set_lazy(:DOM_VK_B) { 66 }
      const_attr_reader  :DOM_VK_B
      
      const_set_lazy(:DOM_VK_C) { 67 }
      const_attr_reader  :DOM_VK_C
      
      const_set_lazy(:DOM_VK_D) { 68 }
      const_attr_reader  :DOM_VK_D
      
      const_set_lazy(:DOM_VK_E) { 69 }
      const_attr_reader  :DOM_VK_E
      
      const_set_lazy(:DOM_VK_F) { 70 }
      const_attr_reader  :DOM_VK_F
      
      const_set_lazy(:DOM_VK_G) { 71 }
      const_attr_reader  :DOM_VK_G
      
      const_set_lazy(:DOM_VK_H) { 72 }
      const_attr_reader  :DOM_VK_H
      
      const_set_lazy(:DOM_VK_I) { 73 }
      const_attr_reader  :DOM_VK_I
      
      const_set_lazy(:DOM_VK_J) { 74 }
      const_attr_reader  :DOM_VK_J
      
      const_set_lazy(:DOM_VK_K) { 75 }
      const_attr_reader  :DOM_VK_K
      
      const_set_lazy(:DOM_VK_L) { 76 }
      const_attr_reader  :DOM_VK_L
      
      const_set_lazy(:DOM_VK_M) { 77 }
      const_attr_reader  :DOM_VK_M
      
      const_set_lazy(:DOM_VK_N) { 78 }
      const_attr_reader  :DOM_VK_N
      
      const_set_lazy(:DOM_VK_O) { 79 }
      const_attr_reader  :DOM_VK_O
      
      const_set_lazy(:DOM_VK_P) { 80 }
      const_attr_reader  :DOM_VK_P
      
      const_set_lazy(:DOM_VK_Q) { 81 }
      const_attr_reader  :DOM_VK_Q
      
      const_set_lazy(:DOM_VK_R) { 82 }
      const_attr_reader  :DOM_VK_R
      
      const_set_lazy(:DOM_VK_S) { 83 }
      const_attr_reader  :DOM_VK_S
      
      const_set_lazy(:DOM_VK_T) { 84 }
      const_attr_reader  :DOM_VK_T
      
      const_set_lazy(:DOM_VK_U) { 85 }
      const_attr_reader  :DOM_VK_U
      
      const_set_lazy(:DOM_VK_V) { 86 }
      const_attr_reader  :DOM_VK_V
      
      const_set_lazy(:DOM_VK_W) { 87 }
      const_attr_reader  :DOM_VK_W
      
      const_set_lazy(:DOM_VK_X) { 88 }
      const_attr_reader  :DOM_VK_X
      
      const_set_lazy(:DOM_VK_Y) { 89 }
      const_attr_reader  :DOM_VK_Y
      
      const_set_lazy(:DOM_VK_Z) { 90 }
      const_attr_reader  :DOM_VK_Z
      
      const_set_lazy(:DOM_VK_NUMPAD0) { 96 }
      const_attr_reader  :DOM_VK_NUMPAD0
      
      const_set_lazy(:DOM_VK_NUMPAD1) { 97 }
      const_attr_reader  :DOM_VK_NUMPAD1
      
      const_set_lazy(:DOM_VK_NUMPAD2) { 98 }
      const_attr_reader  :DOM_VK_NUMPAD2
      
      const_set_lazy(:DOM_VK_NUMPAD3) { 99 }
      const_attr_reader  :DOM_VK_NUMPAD3
      
      const_set_lazy(:DOM_VK_NUMPAD4) { 100 }
      const_attr_reader  :DOM_VK_NUMPAD4
      
      const_set_lazy(:DOM_VK_NUMPAD5) { 101 }
      const_attr_reader  :DOM_VK_NUMPAD5
      
      const_set_lazy(:DOM_VK_NUMPAD6) { 102 }
      const_attr_reader  :DOM_VK_NUMPAD6
      
      const_set_lazy(:DOM_VK_NUMPAD7) { 103 }
      const_attr_reader  :DOM_VK_NUMPAD7
      
      const_set_lazy(:DOM_VK_NUMPAD8) { 104 }
      const_attr_reader  :DOM_VK_NUMPAD8
      
      const_set_lazy(:DOM_VK_NUMPAD9) { 105 }
      const_attr_reader  :DOM_VK_NUMPAD9
      
      const_set_lazy(:DOM_VK_MULTIPLY) { 106 }
      const_attr_reader  :DOM_VK_MULTIPLY
      
      const_set_lazy(:DOM_VK_ADD) { 107 }
      const_attr_reader  :DOM_VK_ADD
      
      const_set_lazy(:DOM_VK_SEPARATOR) { 108 }
      const_attr_reader  :DOM_VK_SEPARATOR
      
      const_set_lazy(:DOM_VK_SUBTRACT) { 109 }
      const_attr_reader  :DOM_VK_SUBTRACT
      
      const_set_lazy(:DOM_VK_DECIMAL) { 110 }
      const_attr_reader  :DOM_VK_DECIMAL
      
      const_set_lazy(:DOM_VK_DIVIDE) { 111 }
      const_attr_reader  :DOM_VK_DIVIDE
      
      const_set_lazy(:DOM_VK_F1) { 112 }
      const_attr_reader  :DOM_VK_F1
      
      const_set_lazy(:DOM_VK_F2) { 113 }
      const_attr_reader  :DOM_VK_F2
      
      const_set_lazy(:DOM_VK_F3) { 114 }
      const_attr_reader  :DOM_VK_F3
      
      const_set_lazy(:DOM_VK_F4) { 115 }
      const_attr_reader  :DOM_VK_F4
      
      const_set_lazy(:DOM_VK_F5) { 116 }
      const_attr_reader  :DOM_VK_F5
      
      const_set_lazy(:DOM_VK_F6) { 117 }
      const_attr_reader  :DOM_VK_F6
      
      const_set_lazy(:DOM_VK_F7) { 118 }
      const_attr_reader  :DOM_VK_F7
      
      const_set_lazy(:DOM_VK_F8) { 119 }
      const_attr_reader  :DOM_VK_F8
      
      const_set_lazy(:DOM_VK_F9) { 120 }
      const_attr_reader  :DOM_VK_F9
      
      const_set_lazy(:DOM_VK_F10) { 121 }
      const_attr_reader  :DOM_VK_F10
      
      const_set_lazy(:DOM_VK_F11) { 122 }
      const_attr_reader  :DOM_VK_F11
      
      const_set_lazy(:DOM_VK_F12) { 123 }
      const_attr_reader  :DOM_VK_F12
      
      const_set_lazy(:DOM_VK_F13) { 124 }
      const_attr_reader  :DOM_VK_F13
      
      const_set_lazy(:DOM_VK_F14) { 125 }
      const_attr_reader  :DOM_VK_F14
      
      const_set_lazy(:DOM_VK_F15) { 126 }
      const_attr_reader  :DOM_VK_F15
      
      const_set_lazy(:DOM_VK_F16) { 127 }
      const_attr_reader  :DOM_VK_F16
      
      const_set_lazy(:DOM_VK_F17) { 128 }
      const_attr_reader  :DOM_VK_F17
      
      const_set_lazy(:DOM_VK_F18) { 129 }
      const_attr_reader  :DOM_VK_F18
      
      const_set_lazy(:DOM_VK_F19) { 130 }
      const_attr_reader  :DOM_VK_F19
      
      const_set_lazy(:DOM_VK_F20) { 131 }
      const_attr_reader  :DOM_VK_F20
      
      const_set_lazy(:DOM_VK_F21) { 132 }
      const_attr_reader  :DOM_VK_F21
      
      const_set_lazy(:DOM_VK_F22) { 133 }
      const_attr_reader  :DOM_VK_F22
      
      const_set_lazy(:DOM_VK_F23) { 134 }
      const_attr_reader  :DOM_VK_F23
      
      const_set_lazy(:DOM_VK_F24) { 135 }
      const_attr_reader  :DOM_VK_F24
      
      const_set_lazy(:DOM_VK_NUM_LOCK) { 144 }
      const_attr_reader  :DOM_VK_NUM_LOCK
      
      const_set_lazy(:DOM_VK_SCROLL_LOCK) { 145 }
      const_attr_reader  :DOM_VK_SCROLL_LOCK
      
      const_set_lazy(:DOM_VK_COMMA) { 188 }
      const_attr_reader  :DOM_VK_COMMA
      
      const_set_lazy(:DOM_VK_PERIOD) { 190 }
      const_attr_reader  :DOM_VK_PERIOD
      
      const_set_lazy(:DOM_VK_SLASH) { 191 }
      const_attr_reader  :DOM_VK_SLASH
      
      const_set_lazy(:DOM_VK_BACK_QUOTE) { 192 }
      const_attr_reader  :DOM_VK_BACK_QUOTE
      
      const_set_lazy(:DOM_VK_OPEN_BRACKET) { 219 }
      const_attr_reader  :DOM_VK_OPEN_BRACKET
      
      const_set_lazy(:DOM_VK_BACK_SLASH) { 220 }
      const_attr_reader  :DOM_VK_BACK_SLASH
      
      const_set_lazy(:DOM_VK_CLOSE_BRACKET) { 221 }
      const_attr_reader  :DOM_VK_CLOSE_BRACKET
      
      const_set_lazy(:DOM_VK_QUOTE) { 222 }
      const_attr_reader  :DOM_VK_QUOTE
      
      const_set_lazy(:DOM_VK_META) { 224 }
      const_attr_reader  :DOM_VK_META
    }
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_char_code(a_char_code)
      return XPCOM._vtbl_call(NsIDOMUIEvent::LAST_METHOD_ID + 1, get_address, a_char_code)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_key_code(a_key_code)
      return XPCOM._vtbl_call(NsIDOMUIEvent::LAST_METHOD_ID + 2, get_address, a_key_code)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_alt_key(a_alt_key)
      return XPCOM._vtbl_call(NsIDOMUIEvent::LAST_METHOD_ID + 3, get_address, a_alt_key)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_ctrl_key(a_ctrl_key)
      return XPCOM._vtbl_call(NsIDOMUIEvent::LAST_METHOD_ID + 4, get_address, a_ctrl_key)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_shift_key(a_shift_key)
      return XPCOM._vtbl_call(NsIDOMUIEvent::LAST_METHOD_ID + 5, get_address, a_shift_key)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_meta_key(a_meta_key)
      return XPCOM._vtbl_call(NsIDOMUIEvent::LAST_METHOD_ID + 6, get_address, a_meta_key)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _init_key_event(type_arg, can_bubble_arg, cancelable_arg, view_arg, ctrl_key_arg, alt_key_arg, shift_key_arg, meta_key_arg, key_code_arg, char_code_arg)
      return XPCOM._vtbl_call(NsIDOMUIEvent::LAST_METHOD_ID + 7, get_address, type_arg, can_bubble_arg, cancelable_arg, view_arg, ctrl_key_arg, alt_key_arg, shift_key_arg, meta_key_arg, key_code_arg, char_code_arg)
    end
    
    private
    alias_method :initialize_ns_idomkey_event, :initialize
  end
  
end
