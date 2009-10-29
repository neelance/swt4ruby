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
  module IProvideClassInfo2Imports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class IProvideClassInfo2 < IProvideClassInfo2Imports.const_get :IProvideClassInfo
    include_class_members IProvideClassInfo2Imports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [::Java::Int, GUID] }
    def _get_guid(dw_guid_kind, p_guid)
      return COM._vtbl_call(4, self.attr_address, dw_guid_kind, p_guid)
    end
    
    private
    alias_method :initialize__iprovide_class_info2, :initialize
  end
  
end
