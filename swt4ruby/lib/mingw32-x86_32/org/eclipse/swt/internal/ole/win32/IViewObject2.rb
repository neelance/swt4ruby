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
  module IViewObject2Imports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class IViewObject2 < IViewObject2Imports.const_get :IUnknown
    include_class_members IViewObject2Imports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int, ::Java::Int, DVTARGETDEVICE, SIZE] }
    def _get_extent(dw_aspect, lindex, ptd, lpsizel)
      return COM._vtbl_call(9, self.attr_address, dw_aspect, lindex, ptd, lpsizel)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    def _set_advise(dw_aspects, dw_advf, p_iadvise_sink)
      return COM._vtbl_call(7, self.attr_address, dw_aspects, dw_advf, p_iadvise_sink)
    end
    
    private
    alias_method :initialize__iview_object2, :initialize
  end
  
end
