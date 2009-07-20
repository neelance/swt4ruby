require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module NMTTCUSTOMDRAWImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NMTTCUSTOMDRAW < NMTTCUSTOMDRAWImports.const_get :NMCUSTOMDRAW
    include_class_members NMTTCUSTOMDRAWImports
    
    attr_accessor :u_draw_flags
    alias_method :attr_u_draw_flags, :u_draw_flags
    undef_method :u_draw_flags
    alias_method :attr_u_draw_flags=, :u_draw_flags=
    undef_method :u_draw_flags=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._nmttcustomdraw_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @u_draw_flags = 0
      super()
    end
    
    private
    alias_method :initialize__nmttcustomdraw, :initialize
  end
  
end
