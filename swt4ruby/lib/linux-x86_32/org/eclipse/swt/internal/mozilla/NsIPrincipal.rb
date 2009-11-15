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
  module NsIPrincipalImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIPrincipal < NsIPrincipalImports.const_get :NsISerializable
    include_class_members NsIPrincipalImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISerializable::LAST_METHOD_ID + 23 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IPRINCIPAL_IID_STR) { "b8268b9a-2403-44ed-81e3-614075c92034" }
      const_attr_reader  :NS_IPRINCIPAL_IID_STR
      
      const_set_lazy(:NS_IPRINCIPAL_IID) { NsID.new(NS_IPRINCIPAL_IID_STR) }
      const_attr_reader  :NS_IPRINCIPAL_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    class_module.module_eval {
      const_set_lazy(:ENABLE_DENIED) { 1 }
      const_attr_reader  :ENABLE_DENIED
      
      const_set_lazy(:ENABLE_UNKNOWN) { 2 }
      const_attr_reader  :ENABLE_UNKNOWN
      
      const_set_lazy(:ENABLE_WITH_USER_PERMISSION) { 3 }
      const_attr_reader  :ENABLE_WITH_USER_PERMISSION
      
      const_set_lazy(:ENABLE_GRANTED) { 4 }
      const_attr_reader  :ENABLE_GRANTED
    }
    
    typesig { [Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(::Java::Int)] }
    # long
    # long
    # long
    # long
    # long
    def _get_preferences(pref_branch, id, subject_name, granted_list, denied_list, is_trusted)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 1, get_address, pref_branch, id, subject_name, granted_list, denied_list, is_trusted)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Int)] }
    # long
    def _equals(other, _retval)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 2, get_address, other, _retval)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_hash_value(a_hash_value)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 3, get_address, a_hash_value)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Int)] }
    # long
    # long
    def _get_jsprincipals(cx, _retval)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 4, get_address, cx, _retval)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_security_policy(a_security_policy)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 5, get_address, a_security_policy)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_security_policy(a_security_policy)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 6, get_address, a_security_policy)
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int] }
    # long
    def _can_enable_capability(capability, _retval)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 7, get_address, capability, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Short] }
    def _set_can_enable_capability(capability, can_enable)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 8, get_address, capability, can_enable)
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Int)] }
    # long
    def _is_capability_enabled(capability, annotation, _retval)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 9, get_address, capability, annotation, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
    # long
    def _enable_capability(capability, annotation)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 10, get_address, capability, annotation)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
    # long
    def _revert_capability(capability, annotation)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 11, get_address, capability, annotation)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
    # long
    def _disable_capability(capability, annotation)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 12, get_address, capability, annotation)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_uri(a_uri)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 13, get_address, a_uri)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_domain(a_domain)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 14, get_address, a_domain)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_domain(a_domain)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 15, get_address, a_domain)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_origin(a_origin)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 16, get_address, a_origin)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_has_certificate(a_has_certificate)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 17, get_address, a_has_certificate)
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_fingerprint(a_fingerprint)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 18, get_address, a_fingerprint)
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_pretty_name(a_pretty_name)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 19, get_address, a_pretty_name)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Int)] }
    # long
    def _subsumes(other, _retval)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 20, get_address, other, _retval)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    def _check_may_load(uri, report)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 21, get_address, uri, report)
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_subject_name(a_subject_name)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 22, get_address, a_subject_name)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_certificate(a_certificate)
      return XPCOM._vtbl_call(NsISerializable::LAST_METHOD_ID + 23, get_address, a_certificate)
    end
    
    private
    alias_method :initialize_ns_iprincipal, :initialize
  end
  
end
