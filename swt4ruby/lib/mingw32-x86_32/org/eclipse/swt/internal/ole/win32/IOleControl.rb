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
  module IOleControlImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class IOleControl < IOleControlImports.const_get :IUnknown
    include_class_members IOleControlImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [CONTROLINFO] }
    def _get_control_info(p_ci)
      return COM._vtbl_call(3, self.attr_address, p_ci)
    end
    
    private
    alias_method :initialize__iole_control, :initialize
  end
  
end
