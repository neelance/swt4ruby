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
  module NMLVCUSTOMDRAWImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class NMLVCUSTOMDRAW < NMLVCUSTOMDRAWImports.const_get :NMCUSTOMDRAW
    include_class_members NMLVCUSTOMDRAWImports
    
    attr_accessor :clr_text
    alias_method :attr_clr_text, :clr_text
    undef_method :clr_text
    alias_method :attr_clr_text=, :clr_text=
    undef_method :clr_text=
    
    attr_accessor :clr_text_bk
    alias_method :attr_clr_text_bk, :clr_text_bk
    undef_method :clr_text_bk
    alias_method :attr_clr_text_bk=, :clr_text_bk=
    undef_method :clr_text_bk=
    
    attr_accessor :i_sub_item
    alias_method :attr_i_sub_item, :i_sub_item
    undef_method :i_sub_item
    alias_method :attr_i_sub_item=, :i_sub_item=
    undef_method :i_sub_item=
    
    # @field flags=no_wince
    attr_accessor :dw_item_type
    alias_method :attr_dw_item_type, :dw_item_type
    undef_method :dw_item_type
    alias_method :attr_dw_item_type=, :dw_item_type=
    undef_method :dw_item_type=
    
    # @field flags=no_wince
    attr_accessor :clr_face
    alias_method :attr_clr_face, :clr_face
    undef_method :clr_face
    alias_method :attr_clr_face=, :clr_face=
    undef_method :clr_face=
    
    # @field flags=no_wince
    attr_accessor :i_icon_effect
    alias_method :attr_i_icon_effect, :i_icon_effect
    undef_method :i_icon_effect
    alias_method :attr_i_icon_effect=, :i_icon_effect=
    undef_method :i_icon_effect=
    
    # @field flags=no_wince
    attr_accessor :i_icon_phase
    alias_method :attr_i_icon_phase, :i_icon_phase
    undef_method :i_icon_phase
    alias_method :attr_i_icon_phase=, :i_icon_phase=
    undef_method :i_icon_phase=
    
    # @field flags=no_wince
    attr_accessor :i_part_id
    alias_method :attr_i_part_id, :i_part_id
    undef_method :i_part_id
    alias_method :attr_i_part_id=, :i_part_id=
    undef_method :i_part_id=
    
    # @field flags=no_wince
    attr_accessor :i_state_id
    alias_method :attr_i_state_id, :i_state_id
    undef_method :i_state_id
    alias_method :attr_i_state_id=, :i_state_id=
    undef_method :i_state_id=
    
    # RECT rcText;
    # @field accessor=rcText.left,flags=no_wince
    attr_accessor :rc_text_left
    alias_method :attr_rc_text_left, :rc_text_left
    undef_method :rc_text_left
    alias_method :attr_rc_text_left=, :rc_text_left=
    undef_method :rc_text_left=
    
    # @field accessor=rcText.top,flags=no_wince
    attr_accessor :rc_text_top
    alias_method :attr_rc_text_top, :rc_text_top
    undef_method :rc_text_top
    alias_method :attr_rc_text_top=, :rc_text_top=
    undef_method :rc_text_top=
    
    # @field accessor=rcText.right,flags=no_wince
    attr_accessor :rc_text_right
    alias_method :attr_rc_text_right, :rc_text_right
    undef_method :rc_text_right
    alias_method :attr_rc_text_right=, :rc_text_right=
    undef_method :rc_text_right=
    
    # @field accessor=rcText.bottom,flags=no_wince
    attr_accessor :rc_text_bottom
    alias_method :attr_rc_text_bottom, :rc_text_bottom
    undef_method :rc_text_bottom
    alias_method :attr_rc_text_bottom=, :rc_text_bottom=
    undef_method :rc_text_bottom=
    
    # @field flags=no_wince
    attr_accessor :u_align
    alias_method :attr_u_align, :u_align
    undef_method :u_align
    alias_method :attr_u_align=, :u_align=
    undef_method :u_align=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { !OS::IsWinCE && OS::WIN32_VERSION >= OS._version(5, 1) ? OS._nmlvcustomdraw_sizeof : 60 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @clr_text = 0
      @clr_text_bk = 0
      @i_sub_item = 0
      @dw_item_type = 0
      @clr_face = 0
      @i_icon_effect = 0
      @i_icon_phase = 0
      @i_part_id = 0
      @i_state_id = 0
      @rc_text_left = 0
      @rc_text_top = 0
      @rc_text_right = 0
      @rc_text_bottom = 0
      @u_align = 0
      super()
    end
    
    private
    alias_method :initialize__nmlvcustomdraw, :initialize
  end
  
end
