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
  module IDataObjectImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class IDataObject < IDataObjectImports.const_get :IUnknown
    include_class_members IDataObjectImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Int)] }
    # long
    def _enum_format_etc(dw_direction, ppenum_formatetc)
      return COM._vtbl_call(8, self.attr_address, dw_direction, ppenum_formatetc)
    end
    
    typesig { [FORMATETC, STGMEDIUM] }
    def _get_data(p_formatetc, pmedium)
      # Called by a data consumer to obtain data from a source data object.
      # The GetData method renders the data described in the specified FORMATETC
      # structure and transfers it through the specified STGMEDIUM structure.
      # The caller then assumes responsibility for releasing the STGMEDIUM structure.
      return COM._vtbl_call(3, self.attr_address, p_formatetc, pmedium)
    end
    
    typesig { [FORMATETC, STGMEDIUM] }
    def _get_data_here(p_formatetc, pmedium)
      # Called by a data consumer to obtain data from a source data object.
      # This method differs from the GetData method in that the caller must
      # allocate and free the specified storage medium.
      return COM._vtbl_call(4, self.attr_address, p_formatetc, pmedium)
    end
    
    typesig { [FORMATETC] }
    def _query_get_data(p_formatetc)
      return COM._vtbl_call(5, self.attr_address, p_formatetc)
    end
    
    typesig { [FORMATETC, STGMEDIUM, ::Java::Boolean] }
    # Pointer to the FORMATETC structure
    # Pointer to STGMEDIUM structure
    # Indicates which object owns the storage medium after the call is completed
    def _set_data(p_formatetc, pmedium, f_release)
      return COM._vtbl_call(7, self.attr_address, p_formatetc, pmedium, f_release)
    end
    
    private
    alias_method :initialize__idata_object, :initialize
  end
  
end
