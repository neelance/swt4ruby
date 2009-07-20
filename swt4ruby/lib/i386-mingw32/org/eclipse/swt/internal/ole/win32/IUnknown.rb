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
  module IUnknownImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class IUnknown 
    include_class_members IUnknownImports
    
    # long
    attr_accessor :address
    alias_method :attr_address, :address
    undef_method :address
    alias_method :attr_address=, :address=
    undef_method :address=
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      @address = 0
      @address = address
    end
    
    typesig { [] }
    def _add_ref
      return COM._vtbl_call(1, @address)
    end
    
    typesig { [] }
    # long
    def get_address
      return @address
    end
    
    typesig { [GUID, Array.typed(::Java::Int)] }
    # long
    def _query_interface(riid, ppv_object)
      return COM._vtbl_call(0, @address, riid, ppv_object)
    end
    
    typesig { [] }
    def _release
      return COM._vtbl_call(2, @address)
    end
    
    private
    alias_method :initialize__iunknown, :initialize
  end
  
end
