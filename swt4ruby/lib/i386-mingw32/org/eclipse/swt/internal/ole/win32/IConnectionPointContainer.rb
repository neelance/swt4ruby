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
  module IConnectionPointContainerImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class IConnectionPointContainer < IConnectionPointContainerImports.const_get :IUnknown
    include_class_members IConnectionPointContainerImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [GUID, Array.typed(::Java::Int)] }
    # long
    def _find_connection_point(riid, pp_cp)
      return COM._vtbl_call(4, self.attr_address, riid, pp_cp)
    end
    
    private
    alias_method :initialize__iconnection_point_container, :initialize
  end
  
end
