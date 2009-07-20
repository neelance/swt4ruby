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
  module IOleLinkImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class IOleLink < IOleLinkImports.const_get :IUnknown
    include_class_members IOleLinkImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [] }
    def _bind_if_running
      return COM._vtbl_call(10, self.attr_address)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_source_moniker(ppmk)
      return COM._vtbl_call(6, self.attr_address, ppmk)
    end
    
    private
    alias_method :initialize__iole_link, :initialize
  end
  
end
