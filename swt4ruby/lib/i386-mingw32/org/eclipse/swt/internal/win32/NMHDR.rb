require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module NMHDRImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NMHDR 
    include_class_members NMHDRImports
    
    # @field cast=(HWND)
    # long
    attr_accessor :hwnd_from
    alias_method :attr_hwnd_from, :hwnd_from
    undef_method :hwnd_from
    alias_method :attr_hwnd_from=, :hwnd_from=
    undef_method :hwnd_from=
    
    # long
    attr_accessor :id_from
    alias_method :attr_id_from, :id_from
    undef_method :id_from
    alias_method :attr_id_from=, :id_from=
    undef_method :id_from=
    
    attr_accessor :code
    alias_method :attr_code, :code
    undef_method :code
    alias_method :attr_code=, :code=
    undef_method :code=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._nmhdr_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @hwnd_from = 0
      @id_from = 0
      @code = 0
    end
    
    private
    alias_method :initialize__nmhdr, :initialize
  end
  
end
