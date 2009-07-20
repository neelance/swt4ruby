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
  module IEnumImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class IEnum < IEnumImports.const_get :IUnknown
    include_class_members IEnumImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _clone(ppenum)
      return COM._vtbl_call(6, self.attr_address, ppenum)
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
    # long
    def _next(celt, rgelt, pcelt_fetched)
      return COM._vtbl_call(3, self.attr_address, celt, rgelt, pcelt_fetched)
    end
    
    typesig { [] }
    def _reset
      return COM._vtbl_call(5, self.attr_address)
    end
    
    typesig { [::Java::Int] }
    def _skip(celt)
      return COM._vtbl_call(4, self.attr_address, celt)
    end
    
    private
    alias_method :initialize__ienum, :initialize
  end
  
end
