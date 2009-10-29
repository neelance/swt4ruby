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
  module IPersistStorageImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class IPersistStorage < IPersistStorageImports.const_get :IPersist
    include_class_members IPersistStorageImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [] }
    def _is_dirty
      return COM._vtbl_call(4, self.attr_address)
    end
    
    typesig { [::Java::Int] }
    # long
    def _init_new(p_stg)
      return COM._vtbl_call(5, self.attr_address, p_stg)
    end
    
    typesig { [::Java::Int] }
    # long
    def _load(p_stg)
      return COM._vtbl_call(6, self.attr_address, p_stg)
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    # long
    def _save(p_stg_save, f_same_as_load)
      return COM._vtbl_call(7, self.attr_address, p_stg_save, f_same_as_load)
    end
    
    typesig { [::Java::Int] }
    # long
    def _save_completed(p_stg_new)
      return COM._vtbl_call(8, self.attr_address, p_stg_new)
    end
    
    typesig { [] }
    def _hands_off_storage
      return COM._vtbl_call(9, self.attr_address)
    end
    
    private
    alias_method :initialize__ipersist_storage, :initialize
  end
  
end
