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
  module NsIComponentRegistrarImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Mozilla
    }
  end
  
  class NsIComponentRegistrar < NsIComponentRegistrarImports.const_get :NsISupports
    include_class_members NsIComponentRegistrarImports
    
    class_module.module_eval {
      const_set_lazy(:LAST_METHOD_ID) { NsISupports::LAST_METHOD_ID + 12 }
      const_attr_reader  :LAST_METHOD_ID
      
      const_set_lazy(:NS_ICOMPONENTREGISTRAR_IID_STR) { "2417cbfe-65ad-48a6-b4b6-eb84db174392" }
      const_attr_reader  :NS_ICOMPONENTREGISTRAR_IID_STR
      
      const_set_lazy(:NS_ICOMPONENTREGISTRAR_IID) { NsID.new(NS_ICOMPONENTREGISTRAR_IID_STR) }
      const_attr_reader  :NS_ICOMPONENTREGISTRAR_IID
    }
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int] }
    # long
    def _auto_register(a_spec)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 1, get_address, a_spec)
    end
    
    typesig { [::Java::Int] }
    # long
    def _auto_unregister(a_spec)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 2, get_address, a_spec)
    end
    
    typesig { [NsID, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int] }
    # long
    def _register_factory(a_class, a_class_name, a_contract_id, a_factory)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 3, get_address, a_class, a_class_name, a_contract_id, a_factory)
    end
    
    typesig { [NsID, ::Java::Int] }
    # long
    def _unregister_factory(a_class, a_factory)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 4, get_address, a_class, a_factory)
    end
    
    typesig { [NsID, Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int, Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
    # long
    def _register_factory_location(a_class, a_class_name, a_contract_id, a_file, a_loader_str, a_type)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 5, get_address, a_class, a_class_name, a_contract_id, a_file, a_loader_str, a_type)
    end
    
    typesig { [NsID, ::Java::Int] }
    # long
    def _unregister_factory_location(a_class, a_file)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 6, get_address, a_class, a_file)
    end
    
    typesig { [NsID, Array.typed(::Java::Int)] }
    def _is_cidregistered(a_class, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 7, get_address, a_class, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Int)] }
    def _is_contract_idregistered(a_contract_id, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 8, get_address, a_contract_id, _retval)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _enumerate_cids(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 9, get_address, _retval)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _enumerate_contract_ids(_retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 10, get_address, _retval)
    end
    
    typesig { [NsID, Array.typed(::Java::Int)] }
    # long
    def _cidto_contract_id(a_class, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 11, get_address, a_class, _retval)
    end
    
    typesig { [Array.typed(::Java::Byte), ::Java::Int] }
    # long
    def _contract_idto_cid(a_contract_id, _retval)
      return XPCOM._vtbl_call(NsISupports::LAST_METHOD_ID + 12, get_address, a_contract_id, _retval)
    end
    
    private
    alias_method :initialize_ns_icomponent_registrar, :initialize
  end
  
end
