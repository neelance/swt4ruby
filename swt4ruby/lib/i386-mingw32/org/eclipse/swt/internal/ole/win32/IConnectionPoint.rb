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
  module IConnectionPointImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class IConnectionPoint < IConnectionPointImports.const_get :IUnknown
    include_class_members IConnectionPointImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Int)] }
    # long
    def _advise(p_unk, pdw_cookie)
      return COM._vtbl_call(5, self.attr_address, p_unk, pdw_cookie)
    end
    
    typesig { [::Java::Int] }
    def _unadvise(dw_cookie)
      return COM._vtbl_call(6, self.attr_address, dw_cookie)
    end
    
    private
    alias_method :initialize__iconnection_point, :initialize
  end
  
end
