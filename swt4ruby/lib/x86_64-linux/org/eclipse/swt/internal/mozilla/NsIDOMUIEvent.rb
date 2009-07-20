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
  module NsIDOMUIEventImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIDOMUIEvent < NsIDOMEvent
    include_class_members NsIDOMUIEventImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsIDOMEvent::LAST_METHOD_ID + 3 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IDOMUIEVENT_IID_STR) { "a6cf90c3-15b3-11d2-932e-00805f8add32" }
      const_attr_reader  :NS_IDOMUIEVENT_IID_STR
      
      const_set_lazy(:NS_IDOMUIEVENT_IID) { NsID.new(NS_IDOMUIEVENT_IID_STR) }
      const_attr_reader  :NS_IDOMUIEVENT_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    # int
    def _get_view(a_view)
      return XPCOM._vtbl_call(NsIDOMEvent::LAST_METHOD_ID + 1, get_address, a_view)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_detail(a_detail)
      return XPCOM._vtbl_call(NsIDOMEvent::LAST_METHOD_ID + 2, get_address, a_detail)
    end
    
    typesig { [::Java::Long, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int] }
    # int
    # int
    def _init_uievent(type_arg, can_bubble_arg, cancelable_arg, view_arg, detail_arg)
      return XPCOM._vtbl_call(NsIDOMEvent::LAST_METHOD_ID + 3, get_address, type_arg, can_bubble_arg, cancelable_arg, view_arg, detail_arg)
    end
    
    private
    alias_method :initialize_ns_idomuievent, :initialize
  end
  
end
