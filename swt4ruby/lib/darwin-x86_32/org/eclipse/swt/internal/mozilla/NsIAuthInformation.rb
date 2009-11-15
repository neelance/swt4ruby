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
  module NsIAuthInformationImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIAuthInformation < NsIAuthInformationImports.const_get :NsISupports
    include_class_members NsIAuthInformationImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 9 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_IAUTHINFORMATION_IID_STR) { "0d73639c-2a92-4518-9f92-28f71fea5f20" }
      const_attr_reader  :NS_IAUTHINFORMATION_IID_STR
      
      const_set_lazy(:NS_IAUTHINFORMATION_IID) { NsID.new(NS_IAUTHINFORMATION_IID_STR) }
      const_attr_reader  :NS_IAUTHINFORMATION_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    class_module.module_eval {
      const_set_lazy(:AUTH_HOST) { 1 }
      const_attr_reader  :AUTH_HOST
      
      const_set_lazy(:AUTH_PROXY) { 2 }
      const_attr_reader  :AUTH_PROXY
      
      const_set_lazy(:NEED_DOMAIN) { 4 }
      const_attr_reader  :NEED_DOMAIN
      
      const_set_lazy(:ONLY_PASSWORD) { 8 }
      const_attr_reader  :ONLY_PASSWORD
    }
    
    typesig { [Array.typed(::Java::Int)] }
    def _get_flags(a_flags)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_flags)
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_realm(a_realm)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_realm)
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_authentication_scheme(a_authentication_scheme)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_authentication_scheme)
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_username(a_username)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_username)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_username(a_username)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_username)
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_password(a_password)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, a_password)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_password(a_password)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, a_password)
    end
    
    typesig { [::Java::Int] }
    # long
    def _get_domain(a_domain)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address, a_domain)
    end
    
    typesig { [::Java::Int] }
    # long
    def _set_domain(a_domain)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 9, get_address, a_domain)
    end
    
    private
    alias_method :initialize_ns_iauth_information, :initialize
  end
  
end
