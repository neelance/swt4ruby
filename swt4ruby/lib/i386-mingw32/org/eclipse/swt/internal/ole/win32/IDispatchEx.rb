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
  module IDispatchExImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class IDispatchEx < IDispatchExImports.const_get :IDispatch
    include_class_members IDispatchExImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
    # long
    def _get_disp_id(bstr_name, grfdex, pid)
      return COM._vtbl_call(7, self.attr_address, bstr_name, grfdex, pid)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, DISPPARAMS, ::Java::Int, EXCEPINFO, ::Java::Int] }
    # long
    # long
    def _invoke_ex(id, lcid, w_flags, pdp, pvar_res, pei, psp_caller)
      return COM._vtbl_call(8, self.attr_address, id, lcid, w_flags, pdp, pvar_res, pei, psp_caller)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    def _delete_member_by_name(bstr_name, grfdex)
      return COM._vtbl_call(9, self.attr_address, bstr_name, grfdex)
    end
    
    typesig { [::Java::Int] }
    def _delete_member_by_disp_id(id)
      return COM._vtbl_call(10, self.attr_address, id)
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
    def _get_member_properties(id, grfdex_fetch, pgrfdex)
      return COM._vtbl_call(11, self.attr_address, id, grfdex_fetch, pgrfdex)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Int)] }
    # long
    def _get_member_name(id, pbstr_name)
      return COM._vtbl_call(12, self.attr_address, id, pbstr_name)
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
    def _get_next_disp_id(grfdex, id, pid)
      return COM._vtbl_call(13, self.attr_address, grfdex, id, pid)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_name_space_parent(ppunk)
      return COM._vtbl_call(14, self.attr_address, ppunk)
    end
    
    private
    alias_method :initialize__idispatch_ex, :initialize
  end
  
end
