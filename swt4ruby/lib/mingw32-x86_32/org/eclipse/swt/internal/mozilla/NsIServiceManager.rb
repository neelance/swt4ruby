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
  module NsIServiceManagerImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIServiceManager < NsIServiceManagerImports.const_get :NsISupports
    include_class_members NsIServiceManagerImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 4 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_ISERVICEMANAGER_IID_STR) { "8bb35ed9-e332-462d-9155-4a002ab5c958" }
      const_attr_reader  :NS_ISERVICEMANAGER_IID_STR
      
      const_set_lazy(:NS_ISERVICEMANAGER_IID) { NsID.new(NS_ISERVICEMANAGER_IID_STR) }
      const_attr_reader  :NS_ISERVICEMANAGER_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [NsID, NsID, Array.typed(::Java::Int)] }
    # long
    def _get_service(a_class, a_iid, result)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_class, a_iid, result)
    end
    
    typesig { [Array.typed(::Java::Byte), NsID, Array.typed(::Java::Int)] }
    # long
    def _get_service_by_contract_id(a_contract_id, a_iid, result)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_contract_id, a_iid, result)
    end
    
    typesig { [NsID, NsID, Array.typed(::Java::Int)] }
    def _is_service_instantiated(a_class, a_iid, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_class, a_iid, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte), NsID, Array.typed(::Java::Int)] }
    def _is_service_instantiated_by_contract_id(a_contract_id, a_iid, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_contract_id, a_iid, _retval)
    end
    
    private
    alias_method :initialize_ns_iservice_manager, :initialize
  end
  
end
