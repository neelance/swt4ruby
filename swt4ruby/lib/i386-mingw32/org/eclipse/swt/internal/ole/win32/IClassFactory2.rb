require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module IClassFactory2Imports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class IClassFactory2 < IClassFactory2Imports.const_get :IUnknown
    include_class_members IClassFactory2Imports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int, ::Java::Int, GUID, ::Java::Int, Array.typed(::Java::Int)] }
    # long
    # long
    # long
    # long
    def _create_instance_lic(p_unk_outer, p_unk_reserved, riid, bstr_key, ppv_object)
      return COM._vtbl_call(7, self.attr_address, p_unk_outer, p_unk_reserved, riid, bstr_key, ppv_object)
    end
    
    typesig { [LICINFO] }
    def _get_lic_info(lic_info)
      return COM._vtbl_call(5, self.attr_address, lic_info)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Int)] }
    # long
    def _request_lic_key(dw_reserved, p_bstr_key)
      return COM._vtbl_call(6, self.attr_address, dw_reserved, p_bstr_key)
    end
    
    private
    alias_method :initialize__iclass_factory2, :initialize
  end
  
end
