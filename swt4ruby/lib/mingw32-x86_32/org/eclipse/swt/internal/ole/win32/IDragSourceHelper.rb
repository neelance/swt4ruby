require "rjava"

# Copyright (c) 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module IDragSourceHelperImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class IDragSourceHelper < IDragSourceHelperImports.const_get :IUnknown
    include_class_members IDragSourceHelperImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [SHDRAGIMAGE, ::Java::Int] }
    # long
    def _initialize_from_bitmap(pshdi, p_data_object)
      return COM._vtbl_call(3, self.attr_address, pshdi, p_data_object)
    end
    
    typesig { [::Java::Int, POINT, ::Java::Int] }
    # long
    # long
    def _initialize_from_window(hwnd, ppt, p_data_object)
      return COM._vtbl_call(4, self.attr_address, hwnd, ppt, p_data_object)
    end
    
    private
    alias_method :initialize__idrag_source_helper, :initialize
  end
  
end
