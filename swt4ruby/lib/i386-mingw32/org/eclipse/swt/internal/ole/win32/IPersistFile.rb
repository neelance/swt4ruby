require "rjava"

# Copyright (c) 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Ole::Win32
  module IPersistFileImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class IPersistFile < IPersistFileImports.const_get :IPersist
    include_class_members IPersistFileImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [] }
    def _is_dirty
      return COM._vtbl_call(4, self.attr_address)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    def _load(psz_file_name, dw_mode)
      return COM._vtbl_call(5, self.attr_address, psz_file_name, dw_mode)
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    # long
    def _save(psz_file_name, f_remember)
      return COM._vtbl_call(6, self.attr_address, psz_file_name, f_remember)
    end
    
    typesig { [::Java::Int] }
    # long
    def _save_completed(psz_file_name)
      return COM._vtbl_call(7, self.attr_address, psz_file_name)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    def _get_cur_file(ppsz_file_name)
      return COM._vtbl_call(8, self.attr_address, ppsz_file_name)
    end
    
    private
    alias_method :initialize__ipersist_file, :initialize
  end
  
end
