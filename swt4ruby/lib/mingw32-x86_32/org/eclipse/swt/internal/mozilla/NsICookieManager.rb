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
  module NsICookieManagerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsICookieManager < NsICookieManagerImports.const_get :NsISupports
    include_class_members NsICookieManagerImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 3 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_ICOOKIEMANAGER_IID_STR) { "aaab6710-0f2c-11d5-a53b-0010a401eb10" }
      const_attr_reader  :NS_ICOOKIEMANAGER_IID_STR
      
      const_set_lazy(:NS_ICOOKIEMANAGER_IID) { NsID.new(NS_ICOOKIEMANAGER_IID_STR) }
      const_attr_reader  :NS_ICOOKIEMANAGER_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [] }
    def _remove_all
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_enumerator(a_enumerator)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_enumerator)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def _remove(a_domain, a_name, a_path, a_blocked)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_domain, a_name, a_path, a_blocked)
    end
    
    private
    alias_method :initialize_ns_icookie_manager, :initialize
  end
  
end
