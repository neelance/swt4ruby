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
  module IDragSourceHelper2Imports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class IDragSourceHelper2 < IDragSourceHelper2Imports.const_get :IDragSourceHelper
    include_class_members IDragSourceHelper2Imports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int] }
    def _set_flags(dw_flags)
      return COM._vtbl_call(5, self.attr_address, dw_flags)
    end
    
    private
    alias_method :initialize__idrag_source_helper2, :initialize
  end
  
end
