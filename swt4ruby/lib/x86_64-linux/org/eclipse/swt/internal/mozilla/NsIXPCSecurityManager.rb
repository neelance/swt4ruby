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
# -  Copyright (C) 2003, 2009 IBM Corp.  All Rights Reserved.
# 
# ***** END LICENSE BLOCK *****
module Org::Eclipse::Swt::Internal::Mozilla
  module NsIXPCSecurityManagerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIXPCSecurityManager < NsISupports
    include_class_members NsIXPCSecurityManagerImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 4 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IXPCSECURITYMANAGER_IID_STR) { "31431440-f1ce-11d2-985a-006008962422" }
      const_attr_reader  :NS_IXPCSECURITYMANAGER_IID_STR
      
      const_set_lazy(:NS_IXPCSECURITYMANAGER_IID) { NsID.new(NS_IXPCSECURITYMANAGER_IID_STR) }
      const_attr_reader  :NS_IXPCSECURITYMANAGER_IID
    }
    
    typesig { [::Java::Long] }
    # int
    def initialize(address)
      super(address)
    end
    
    class_module.module_eval {
      const_set_lazy(:HOOK_CREATE_WRAPPER) { 1 }
      const_attr_reader  :HOOK_CREATE_WRAPPER
      
      const_set_lazy(:HOOK_CREATE_INSTANCE) { 2 }
      const_attr_reader  :HOOK_CREATE_INSTANCE
      
      const_set_lazy(:HOOK_GET_SERVICE) { 4 }
      const_attr_reader  :HOOK_GET_SERVICE
      
      const_set_lazy(:HOOK_CALL_METHOD) { 8 }
      const_attr_reader  :HOOK_CALL_METHOD
      
      const_set_lazy(:HOOK_GET_PROPERTY) { 16 }
      const_attr_reader  :HOOK_GET_PROPERTY
      
      const_set_lazy(:HOOK_SET_PROPERTY) { 32 }
      const_attr_reader  :HOOK_SET_PROPERTY
      
      const_set_lazy(:HOOK_ALL) { 63 }
      const_attr_reader  :HOOK_ALL
    }
    
    typesig { [::Java::Long, NsID, ::Java::Long, ::Java::Long, Array.typed(::Java::Long)] }
    # int
    # int
    # int
    # int
    def _can_create_wrapper(a_jscontext, a_iid, a_obj, a_class_info, a_policy)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_jscontext, a_iid, a_obj, a_class_info, a_policy)
    end
    
    typesig { [::Java::Long, NsID] }
    # int
    def _can_create_instance(a_jscontext, a_cid)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_jscontext, a_cid)
    end
    
    typesig { [::Java::Long, NsID] }
    # int
    def _can_get_service(a_jscontext, a_cid)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_jscontext, a_cid)
    end
    
    class_module.module_eval {
      const_set_lazy(:ACCESS_CALL_METHOD) { 0 }
      const_attr_reader  :ACCESS_CALL_METHOD
      
      const_set_lazy(:ACCESS_GET_PROPERTY) { 1 }
      const_attr_reader  :ACCESS_GET_PROPERTY
      
      const_set_lazy(:ACCESS_SET_PROPERTY) { 2 }
      const_attr_reader  :ACCESS_SET_PROPERTY
    }
    
    typesig { [::Java::Int, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, Array.typed(::Java::Long)] }
    # int
    # int
    # int
    # int
    # int
    # int
    # int
    def _can_access(a_action, a_call_context, a_jscontext, a_jsobject, a_obj, a_class_info, a_name, a_policy)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_action, a_call_context, a_jscontext, a_jsobject, a_obj, a_class_info, a_name, a_policy)
    end
    
    private
    alias_method :initialize_ns_ixpcsecurity_manager, :initialize
  end
  
end
