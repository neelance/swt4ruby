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
  module NsICookieImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsICookie < NsICookieImports.const_get :NsISupports
    include_class_members NsICookieImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 9 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_ICOOKIE_IID_STR) { "e9fcb9a4-d376-458f-b720-e65e7df593bc" }
      const_attr_reader  :NS_ICOOKIE_IID_STR
      
      const_set_lazy(:NS_ICOOKIE_IID) { NsID.new(NS_ICOOKIE_IID_STR) }
      const_attr_reader  :NS_ICOOKIE_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_name(a_name)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_name)
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_value(a_value)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_value)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_is_domain(a_is_domain)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_is_domain)
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_host(a_host)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_host)
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_path(a_path)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_path)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_is_secure(a_is_secure)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, a_is_secure)
    end
    
    typesig { [Array.typed(::Java::Long)] }
    def _get_expires(a_expires)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, a_expires)
    end
    
    class_module.module_eval {
      const_set_lazy(:STATUS_UNKNOWN) { 0 }
      const_attr_reader  :STATUS_UNKNOWN
      
      const_set_lazy(:STATUS_ACCEPTED) { 1 }
      const_attr_reader  :STATUS_ACCEPTED
      
      const_set_lazy(:STATUS_DOWNGRADED) { 2 }
      const_attr_reader  :STATUS_DOWNGRADED
      
      const_set_lazy(:STATUS_FLAGGED) { 3 }
      const_attr_reader  :STATUS_FLAGGED
      
      const_set_lazy(:STATUS_REJECTED) { 4 }
      const_attr_reader  :STATUS_REJECTED
    }
    
    typesig { [::Java::Int] }
    # long
    def _get_status(a_status)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address, a_status)
    end
    
    class_module.module_eval {
      const_set_lazy(:POLICY_UNKNOWN) { 0 }
      const_attr_reader  :POLICY_UNKNOWN
      
      const_set_lazy(:POLICY_NONE) { 1 }
      const_attr_reader  :POLICY_NONE
      
      const_set_lazy(:POLICY_NO_CONSENT) { 2 }
      const_attr_reader  :POLICY_NO_CONSENT
      
      const_set_lazy(:POLICY_IMPLICIT_CONSENT) { 3 }
      const_attr_reader  :POLICY_IMPLICIT_CONSENT
      
      const_set_lazy(:POLICY_EXPLICIT_CONSENT) { 4 }
      const_attr_reader  :POLICY_EXPLICIT_CONSENT
      
      const_set_lazy(:POLICY_NO_II) { 5 }
      const_attr_reader  :POLICY_NO_II
    }
    
    typesig { [::Java::Int] }
    # long
    def _get_policy(a_policy)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 9, get_address, a_policy)
    end
    
    private
    alias_method :initialize_ns_icookie, :initialize
  end
  
end
