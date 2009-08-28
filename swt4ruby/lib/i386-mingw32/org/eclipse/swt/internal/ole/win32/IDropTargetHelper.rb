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
  module IDropTargetHelperImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class IDropTargetHelper < IDropTargetHelperImports.const_get :IUnknown
    include_class_members IDropTargetHelperImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int, ::Java::Int, POINT, ::Java::Int] }
    # long
    # long
    def _drag_enter(hwnd_target, p_data_object, ppt, dw_effect)
      return COM._vtbl_call(3, self.attr_address, hwnd_target, p_data_object, ppt, dw_effect)
    end
    
    typesig { [] }
    def _drag_leave
      return COM._vtbl_call(4, self.attr_address)
    end
    
    typesig { [POINT, ::Java::Int] }
    def _drag_over(ppt, dw_effect)
      return COM._vtbl_call(5, self.attr_address, ppt, dw_effect)
    end
    
    typesig { [::Java::Int, POINT, ::Java::Int] }
    # long
    def _drop(p_data_object, ppt, dw_effect)
      return COM._vtbl_call(6, self.attr_address, p_data_object, ppt, dw_effect)
    end
    
    typesig { [::Java::Boolean] }
    def _show(f_show)
      return COM._vtbl_call(7, self.attr_address, f_show)
    end
    
    private
    alias_method :initialize__idrop_target_helper, :initialize
  end
  
end
