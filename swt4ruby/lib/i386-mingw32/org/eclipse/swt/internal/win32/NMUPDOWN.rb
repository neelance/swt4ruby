require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module NMUPDOWNImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NMUPDOWN < NMUPDOWNImports.const_get :NMHDR
    include_class_members NMUPDOWNImports
    
    attr_accessor :i_pos
    alias_method :attr_i_pos, :i_pos
    undef_method :i_pos
    alias_method :attr_i_pos=, :i_pos=
    undef_method :i_pos=
    
    attr_accessor :i_delta
    alias_method :attr_i_delta, :i_delta
    undef_method :i_delta
    alias_method :attr_i_delta=, :i_delta=
    undef_method :i_delta=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._nmupdown_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @i_pos = 0
      @i_delta = 0
      super()
    end
    
    private
    alias_method :initialize__nmupdown, :initialize
  end
  
end
