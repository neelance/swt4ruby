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
  module NsIDOMMouseEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIDOMMouseEvent < NsIDOMMouseEventImports.const_get :NsIDOMUIEvent
    include_class_members NsIDOMMouseEventImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsIDOMUIEvent::LAST_METHOD_ID + 11 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IDOMMOUSEEVENT_IID_STR) { "ff751edc-8b02-aae7-0010-8301838a3123" }
      const_attr_reader  :NS_IDOMMOUSEEVENT_IID_STR
      
      const_set_lazy(:NS_IDOMMOUSEEVENT_IID) { NsID.new(NS_IDOMMOUSEEVENT_IID_STR) }
      const_attr_reader  :NS_IDOMMOUSEEVENT_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_screen_x(a_screen_x)
      return XPCOM._vtbl_call(NsIDOMUIEvent::LAST_METHOD_ID + 1, get_address, a_screen_x)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_screen_y(a_screen_y)
      return XPCOM._vtbl_call(NsIDOMUIEvent::LAST_METHOD_ID + 2, get_address, a_screen_y)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_client_x(a_client_x)
      return XPCOM._vtbl_call(NsIDOMUIEvent::LAST_METHOD_ID + 3, get_address, a_client_x)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_client_y(a_client_y)
      return XPCOM._vtbl_call(NsIDOMUIEvent::LAST_METHOD_ID + 4, get_address, a_client_y)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_ctrl_key(a_ctrl_key)
      return XPCOM._vtbl_call(NsIDOMUIEvent::LAST_METHOD_ID + 5, get_address, a_ctrl_key)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_shift_key(a_shift_key)
      return XPCOM._vtbl_call(NsIDOMUIEvent::LAST_METHOD_ID + 6, get_address, a_shift_key)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_alt_key(a_alt_key)
      return XPCOM._vtbl_call(NsIDOMUIEvent::LAST_METHOD_ID + 7, get_address, a_alt_key)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_meta_key(a_meta_key)
      return XPCOM._vtbl_call(NsIDOMUIEvent::LAST_METHOD_ID + 8, get_address, a_meta_key)
    end
    
    typesig { [Array.typed(::Java::Short)] }
    def _get_button(a_button)
      return XPCOM._vtbl_call(NsIDOMUIEvent::LAST_METHOD_ID + 9, get_address, a_button)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_related_target(a_related_target)
      return XPCOM._vtbl_call(NsIDOMUIEvent::LAST_METHOD_ID + 10, get_address, a_related_target)
    end
    
    typesig { [::Java::Long, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Short, ::Java::Long] }
    # int
    # int
    # int
    def _init_mouse_event(type_arg, can_bubble_arg, cancelable_arg, view_arg, detail_arg, screen_xarg, screen_yarg, client_xarg, client_yarg, ctrl_key_arg, alt_key_arg, shift_key_arg, meta_key_arg, button_arg, related_target_arg)
      return XPCOM._vtbl_call(NsIDOMUIEvent::LAST_METHOD_ID + 11, get_address, type_arg, can_bubble_arg, cancelable_arg, view_arg, detail_arg, screen_xarg, screen_yarg, client_xarg, client_yarg, ctrl_key_arg, alt_key_arg, shift_key_arg, meta_key_arg, button_arg, related_target_arg)
    end
    
    private
    alias_method :initialize_ns_idommouse_event, :initialize
  end
  
end
