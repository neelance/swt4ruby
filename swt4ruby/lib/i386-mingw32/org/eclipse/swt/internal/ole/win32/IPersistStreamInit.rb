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
  module IPersistStreamInitImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class IPersistStreamInit < IPersistStreamInitImports.const_get :IPersist
    include_class_members IPersistStreamInitImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int] }
    # long
    def _load(p_stm)
      return COM._vtbl_call(5, self.attr_address, p_stm)
    end
    
    typesig { [] }
    def _init_new
      return COM._vtbl_call(8, self.attr_address)
    end
    
    private
    alias_method :initialize__ipersist_stream_init, :initialize
  end
  
end
