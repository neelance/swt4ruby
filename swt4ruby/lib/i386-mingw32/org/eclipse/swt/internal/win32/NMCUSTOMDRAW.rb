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
  module NMCUSTOMDRAWImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NMCUSTOMDRAW < NMCUSTOMDRAWImports.const_get :NMHDR
    include_class_members NMCUSTOMDRAWImports
    
    attr_accessor :dw_draw_stage
    alias_method :attr_dw_draw_stage, :dw_draw_stage
    undef_method :dw_draw_stage
    alias_method :attr_dw_draw_stage=, :dw_draw_stage=
    undef_method :dw_draw_stage=
    
    # long
    attr_accessor :hdc
    alias_method :attr_hdc, :hdc
    undef_method :hdc
    alias_method :attr_hdc=, :hdc=
    undef_method :hdc=
    
    # RECT rc;
    attr_accessor :left
    alias_method :attr_left, :left
    undef_method :left
    alias_method :attr_left=, :left=
    undef_method :left=
    
    attr_accessor :top
    alias_method :attr_top, :top
    undef_method :top
    alias_method :attr_top=, :top=
    undef_method :top=
    
    attr_accessor :right
    alias_method :attr_right, :right
    undef_method :right
    alias_method :attr_right=, :right=
    undef_method :right=
    
    attr_accessor :bottom
    alias_method :attr_bottom, :bottom
    undef_method :bottom
    alias_method :attr_bottom=, :bottom=
    undef_method :bottom=
    
    # long
    attr_accessor :dw_item_spec
    alias_method :attr_dw_item_spec, :dw_item_spec
    undef_method :dw_item_spec
    alias_method :attr_dw_item_spec=, :dw_item_spec=
    undef_method :dw_item_spec=
    
    attr_accessor :u_item_state
    alias_method :attr_u_item_state, :u_item_state
    undef_method :u_item_state
    alias_method :attr_u_item_state=, :u_item_state=
    undef_method :u_item_state=
    
    # long
    attr_accessor :l_iteml_param
    alias_method :attr_l_iteml_param, :l_iteml_param
    undef_method :l_iteml_param
    alias_method :attr_l_iteml_param=, :l_iteml_param=
    undef_method :l_iteml_param=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS._nmcustomdraw_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @dw_draw_stage = 0
      @hdc = 0
      @left = 0
      @top = 0
      @right = 0
      @bottom = 0
      @dw_item_spec = 0
      @u_item_state = 0
      @l_iteml_param = 0
      super()
    end
    
    private
    alias_method :initialize__nmcustomdraw, :initialize
  end
  
end
