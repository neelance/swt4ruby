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
  module NMLVFINDITEMImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NMLVFINDITEM < NMLVFINDITEMImports.const_get :NMHDR
    include_class_members NMLVFINDITEMImports
    
    attr_accessor :i_start
    alias_method :attr_i_start, :i_start
    undef_method :i_start
    alias_method :attr_i_start=, :i_start=
    undef_method :i_start=
    
    # LVFINDINFO lvfi;
    attr_accessor :flags
    alias_method :attr_flags, :flags
    undef_method :flags
    alias_method :attr_flags=, :flags=
    undef_method :flags=
    
    # long
    attr_accessor :psz
    alias_method :attr_psz, :psz
    undef_method :psz
    alias_method :attr_psz=, :psz=
    undef_method :psz=
    
    # long
    attr_accessor :l_param
    alias_method :attr_l_param, :l_param
    undef_method :l_param
    alias_method :attr_l_param=, :l_param=
    undef_method :l_param=
    
    # POINT pt;
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    attr_accessor :vk_direction
    alias_method :attr_vk_direction, :vk_direction
    undef_method :vk_direction
    alias_method :attr_vk_direction=, :vk_direction=
    undef_method :vk_direction=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._nmlvfinditem_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @i_start = 0
      @flags = 0
      @psz = 0
      @l_param = 0
      @x = 0
      @y = 0
      @vk_direction = 0
      super()
    end
    
    private
    alias_method :initialize__nmlvfinditem, :initialize
  end
  
end
