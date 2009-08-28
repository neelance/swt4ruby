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
  module IStreamImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class IStream < IStreamImports.const_get :IUnknown
    include_class_members IStreamImports
    
    typesig { [::Java::Int] }
    # long
    def initialize(address)
      super(address)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # long
    # Pointer to location for pointer to the new stream object
    def _clone(ppstm)
      return COM._vtbl_call(13, self.attr_address, ppstm)
    end
    
    typesig { [::Java::Int] }
    # Specifies how changes are committed
    def _commit(grf_commit_flags)
      return COM._vtbl_call(8, self.attr_address, grf_commit_flags)
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
    # long
    def _read(pv, cb, pcb_written)
      return COM._vtbl_call(3, self.attr_address, pv, cb, pcb_written)
    end
    
    typesig { [] }
    def _revert
      return COM._vtbl_call(9, self.attr_address)
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Int)] }
    # long
    def _write(pv, cb, pcb_written)
      return COM._vtbl_call(4, self.attr_address, pv, cb, pcb_written)
    end
    
    private
    alias_method :initialize__istream, :initialize
  end
  
end
