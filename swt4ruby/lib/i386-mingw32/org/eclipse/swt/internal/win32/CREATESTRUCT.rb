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
  module CREATESTRUCTImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class CREATESTRUCT 
    include_class_members CREATESTRUCTImports
    
    # long
    attr_accessor :lp_create_params
    alias_method :attr_lp_create_params, :lp_create_params
    undef_method :lp_create_params
    alias_method :attr_lp_create_params=, :lp_create_params=
    undef_method :lp_create_params=
    
    # long
    attr_accessor :h_instance
    alias_method :attr_h_instance, :h_instance
    undef_method :h_instance
    alias_method :attr_h_instance=, :h_instance=
    undef_method :h_instance=
    
    # long
    attr_accessor :h_menu
    alias_method :attr_h_menu, :h_menu
    undef_method :h_menu
    alias_method :attr_h_menu=, :h_menu=
    undef_method :h_menu=
    
    # long
    attr_accessor :hwnd_parent
    alias_method :attr_hwnd_parent, :hwnd_parent
    undef_method :hwnd_parent
    alias_method :attr_hwnd_parent=, :hwnd_parent=
    undef_method :hwnd_parent=
    
    attr_accessor :cy
    alias_method :attr_cy, :cy
    undef_method :cy
    alias_method :attr_cy=, :cy=
    undef_method :cy=
    
    attr_accessor :cx
    alias_method :attr_cx, :cx
    undef_method :cx
    alias_method :attr_cx=, :cx=
    undef_method :cx=
    
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    attr_accessor :style
    alias_method :attr_style, :style
    undef_method :style
    alias_method :attr_style=, :style=
    undef_method :style=
    
    # long
    attr_accessor :lpsz_name
    alias_method :attr_lpsz_name, :lpsz_name
    undef_method :lpsz_name
    alias_method :attr_lpsz_name=, :lpsz_name=
    undef_method :lpsz_name=
    
    # long
    attr_accessor :lpsz_class
    alias_method :attr_lpsz_class, :lpsz_class
    undef_method :lpsz_class
    alias_method :attr_lpsz_class=, :lpsz_class=
    undef_method :lpsz_class=
    
    attr_accessor :dw_ex_style
    alias_method :attr_dw_ex_style, :dw_ex_style
    undef_method :dw_ex_style
    alias_method :attr_dw_ex_style=, :dw_ex_style=
    undef_method :dw_ex_style=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._createstruct_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @lp_create_params = 0
      @h_instance = 0
      @h_menu = 0
      @hwnd_parent = 0
      @cy = 0
      @cx = 0
      @y = 0
      @x = 0
      @style = 0
      @lpsz_name = 0
      @lpsz_class = 0
      @dw_ex_style = 0
    end
    
    private
    alias_method :initialize__createstruct, :initialize
  end
  
end
