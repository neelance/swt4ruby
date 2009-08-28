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
  module NsIDOMEventImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIDOMEvent < NsISupports
    include_class_members NsIDOMEventImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 10 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IDOMEVENT_IID_STR) { "a66b7b80-ff46-bd97-0080-5f8ae38add32" }
      const_attr_reader  :NS_IDOMEVENT_IID_STR
      
      const_set_lazy(:NS_IDOMEVENT_IID) { NsID.new(NS_IDOMEVENT_IID_STR) }
      const_attr_reader  :NS_IDOMEVENT_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    class_module.module_eval {
      const_set_lazy(:CAPTURING_PHASE) { 1 }
      const_attr_reader  :CAPTURING_PHASE
      
      const_set_lazy(:AT_TARGET) { 2 }
      const_attr_reader  :AT_TARGET
      
      const_set_lazy(:BUBBLING_PHASE) { 3 }
      const_attr_reader  :BUBBLING_PHASE
    }
    
    typesig { [::Java::Long] }
    # int
    def _get_type(a_type)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_type)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_target(a_target)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_target)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_current_target(a_current_target)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_current_target)
    end
    
    typesig { [Array.typed(::Java::Short)] }
    def _get_event_phase(a_event_phase)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_event_phase)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_bubbles(a_bubbles)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_bubbles)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_cancelable(a_cancelable)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, a_cancelable)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_time_stamp(a_time_stamp)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, a_time_stamp)
    end
    
    typesig { [] }
    def _stop_propagation
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address)
    end
    
    typesig { [] }
    def _prevent_default
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 9, get_address)
    end
    
    typesig { [::Java::Long, ::Java::Int, ::Java::Int] }
    # int
    def _init_event(event_type_arg, can_bubble_arg, cancelable_arg)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 10, get_address, event_type_arg, can_bubble_arg, cancelable_arg)
    end
    
    private
    alias_method :initialize_ns_idomevent, :initialize
  end
  
end
