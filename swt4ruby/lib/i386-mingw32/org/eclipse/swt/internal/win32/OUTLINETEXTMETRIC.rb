require "rjava"

# Copyright (c) 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Win32
  module OUTLINETEXTMETRICImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class OUTLINETEXTMETRIC 
    include_class_members OUTLINETEXTMETRICImports
    
    attr_accessor :otm_size
    alias_method :attr_otm_size, :otm_size
    undef_method :otm_size
    alias_method :attr_otm_size=, :otm_size=
    undef_method :otm_size=
    
    attr_accessor :otm_filler
    alias_method :attr_otm_filler, :otm_filler
    undef_method :otm_filler
    alias_method :attr_otm_filler=, :otm_filler=
    undef_method :otm_filler=
    
    attr_accessor :otm_panose_number_b_family_type
    alias_method :attr_otm_panose_number_b_family_type, :otm_panose_number_b_family_type
    undef_method :otm_panose_number_b_family_type
    alias_method :attr_otm_panose_number_b_family_type=, :otm_panose_number_b_family_type=
    undef_method :otm_panose_number_b_family_type=
    
    attr_accessor :otm_panose_number_b_serif_style
    alias_method :attr_otm_panose_number_b_serif_style, :otm_panose_number_b_serif_style
    undef_method :otm_panose_number_b_serif_style
    alias_method :attr_otm_panose_number_b_serif_style=, :otm_panose_number_b_serif_style=
    undef_method :otm_panose_number_b_serif_style=
    
    attr_accessor :otm_panose_number_b_weight
    alias_method :attr_otm_panose_number_b_weight, :otm_panose_number_b_weight
    undef_method :otm_panose_number_b_weight
    alias_method :attr_otm_panose_number_b_weight=, :otm_panose_number_b_weight=
    undef_method :otm_panose_number_b_weight=
    
    attr_accessor :otm_panose_number_b_proportion
    alias_method :attr_otm_panose_number_b_proportion, :otm_panose_number_b_proportion
    undef_method :otm_panose_number_b_proportion
    alias_method :attr_otm_panose_number_b_proportion=, :otm_panose_number_b_proportion=
    undef_method :otm_panose_number_b_proportion=
    
    attr_accessor :otm_panose_number_b_contrast
    alias_method :attr_otm_panose_number_b_contrast, :otm_panose_number_b_contrast
    undef_method :otm_panose_number_b_contrast
    alias_method :attr_otm_panose_number_b_contrast=, :otm_panose_number_b_contrast=
    undef_method :otm_panose_number_b_contrast=
    
    attr_accessor :otm_panose_number_b_stroke_variation
    alias_method :attr_otm_panose_number_b_stroke_variation, :otm_panose_number_b_stroke_variation
    undef_method :otm_panose_number_b_stroke_variation
    alias_method :attr_otm_panose_number_b_stroke_variation=, :otm_panose_number_b_stroke_variation=
    undef_method :otm_panose_number_b_stroke_variation=
    
    attr_accessor :otm_panose_number_b_arm_style
    alias_method :attr_otm_panose_number_b_arm_style, :otm_panose_number_b_arm_style
    undef_method :otm_panose_number_b_arm_style
    alias_method :attr_otm_panose_number_b_arm_style=, :otm_panose_number_b_arm_style=
    undef_method :otm_panose_number_b_arm_style=
    
    attr_accessor :otm_panose_number_b_letterform
    alias_method :attr_otm_panose_number_b_letterform, :otm_panose_number_b_letterform
    undef_method :otm_panose_number_b_letterform
    alias_method :attr_otm_panose_number_b_letterform=, :otm_panose_number_b_letterform=
    undef_method :otm_panose_number_b_letterform=
    
    attr_accessor :otm_panose_number_b_midline
    alias_method :attr_otm_panose_number_b_midline, :otm_panose_number_b_midline
    undef_method :otm_panose_number_b_midline
    alias_method :attr_otm_panose_number_b_midline=, :otm_panose_number_b_midline=
    undef_method :otm_panose_number_b_midline=
    
    attr_accessor :otm_panose_number_b_xheight
    alias_method :attr_otm_panose_number_b_xheight, :otm_panose_number_b_xheight
    undef_method :otm_panose_number_b_xheight
    alias_method :attr_otm_panose_number_b_xheight=, :otm_panose_number_b_xheight=
    undef_method :otm_panose_number_b_xheight=
    
    attr_accessor :otmfs_selection
    alias_method :attr_otmfs_selection, :otmfs_selection
    undef_method :otmfs_selection
    alias_method :attr_otmfs_selection=, :otmfs_selection=
    undef_method :otmfs_selection=
    
    attr_accessor :otmfs_type
    alias_method :attr_otmfs_type, :otmfs_type
    undef_method :otmfs_type
    alias_method :attr_otmfs_type=, :otmfs_type=
    undef_method :otmfs_type=
    
    attr_accessor :otms_char_slope_rise
    alias_method :attr_otms_char_slope_rise, :otms_char_slope_rise
    undef_method :otms_char_slope_rise
    alias_method :attr_otms_char_slope_rise=, :otms_char_slope_rise=
    undef_method :otms_char_slope_rise=
    
    attr_accessor :otms_char_slope_run
    alias_method :attr_otms_char_slope_run, :otms_char_slope_run
    undef_method :otms_char_slope_run
    alias_method :attr_otms_char_slope_run=, :otms_char_slope_run=
    undef_method :otms_char_slope_run=
    
    attr_accessor :otm_italic_angle
    alias_method :attr_otm_italic_angle, :otm_italic_angle
    undef_method :otm_italic_angle
    alias_method :attr_otm_italic_angle=, :otm_italic_angle=
    undef_method :otm_italic_angle=
    
    attr_accessor :otm_emsquare
    alias_method :attr_otm_emsquare, :otm_emsquare
    undef_method :otm_emsquare
    alias_method :attr_otm_emsquare=, :otm_emsquare=
    undef_method :otm_emsquare=
    
    attr_accessor :otm_ascent
    alias_method :attr_otm_ascent, :otm_ascent
    undef_method :otm_ascent
    alias_method :attr_otm_ascent=, :otm_ascent=
    undef_method :otm_ascent=
    
    attr_accessor :otm_descent
    alias_method :attr_otm_descent, :otm_descent
    undef_method :otm_descent
    alias_method :attr_otm_descent=, :otm_descent=
    undef_method :otm_descent=
    
    attr_accessor :otm_line_gap
    alias_method :attr_otm_line_gap, :otm_line_gap
    undef_method :otm_line_gap
    alias_method :attr_otm_line_gap=, :otm_line_gap=
    undef_method :otm_line_gap=
    
    attr_accessor :otms_cap_em_height
    alias_method :attr_otms_cap_em_height, :otms_cap_em_height
    undef_method :otms_cap_em_height
    alias_method :attr_otms_cap_em_height=, :otms_cap_em_height=
    undef_method :otms_cap_em_height=
    
    attr_accessor :otms_xheight
    alias_method :attr_otms_xheight, :otms_xheight
    undef_method :otms_xheight
    alias_method :attr_otms_xheight=, :otms_xheight=
    undef_method :otms_xheight=
    
    attr_accessor :otmrc_font_box
    alias_method :attr_otmrc_font_box, :otmrc_font_box
    undef_method :otmrc_font_box
    alias_method :attr_otmrc_font_box=, :otmrc_font_box=
    undef_method :otmrc_font_box=
    
    attr_accessor :otm_mac_ascent
    alias_method :attr_otm_mac_ascent, :otm_mac_ascent
    undef_method :otm_mac_ascent
    alias_method :attr_otm_mac_ascent=, :otm_mac_ascent=
    undef_method :otm_mac_ascent=
    
    attr_accessor :otm_mac_descent
    alias_method :attr_otm_mac_descent, :otm_mac_descent
    undef_method :otm_mac_descent
    alias_method :attr_otm_mac_descent=, :otm_mac_descent=
    undef_method :otm_mac_descent=
    
    attr_accessor :otm_mac_line_gap
    alias_method :attr_otm_mac_line_gap, :otm_mac_line_gap
    undef_method :otm_mac_line_gap
    alias_method :attr_otm_mac_line_gap=, :otm_mac_line_gap=
    undef_method :otm_mac_line_gap=
    
    attr_accessor :otmus_minimum_ppem
    alias_method :attr_otmus_minimum_ppem, :otmus_minimum_ppem
    undef_method :otmus_minimum_ppem
    alias_method :attr_otmus_minimum_ppem=, :otmus_minimum_ppem=
    undef_method :otmus_minimum_ppem=
    
    attr_accessor :otmpt_subscript_size
    alias_method :attr_otmpt_subscript_size, :otmpt_subscript_size
    undef_method :otmpt_subscript_size
    alias_method :attr_otmpt_subscript_size=, :otmpt_subscript_size=
    undef_method :otmpt_subscript_size=
    
    attr_accessor :otmpt_subscript_offset
    alias_method :attr_otmpt_subscript_offset, :otmpt_subscript_offset
    undef_method :otmpt_subscript_offset
    alias_method :attr_otmpt_subscript_offset=, :otmpt_subscript_offset=
    undef_method :otmpt_subscript_offset=
    
    attr_accessor :otmpt_superscript_size
    alias_method :attr_otmpt_superscript_size, :otmpt_superscript_size
    undef_method :otmpt_superscript_size
    alias_method :attr_otmpt_superscript_size=, :otmpt_superscript_size=
    undef_method :otmpt_superscript_size=
    
    attr_accessor :otmpt_superscript_offset
    alias_method :attr_otmpt_superscript_offset, :otmpt_superscript_offset
    undef_method :otmpt_superscript_offset
    alias_method :attr_otmpt_superscript_offset=, :otmpt_superscript_offset=
    undef_method :otmpt_superscript_offset=
    
    attr_accessor :otms_strikeout_size
    alias_method :attr_otms_strikeout_size, :otms_strikeout_size
    undef_method :otms_strikeout_size
    alias_method :attr_otms_strikeout_size=, :otms_strikeout_size=
    undef_method :otms_strikeout_size=
    
    attr_accessor :otms_strikeout_position
    alias_method :attr_otms_strikeout_position, :otms_strikeout_position
    undef_method :otms_strikeout_position
    alias_method :attr_otms_strikeout_position=, :otms_strikeout_position=
    undef_method :otms_strikeout_position=
    
    attr_accessor :otms_underscore_size
    alias_method :attr_otms_underscore_size, :otms_underscore_size
    undef_method :otms_underscore_size
    alias_method :attr_otms_underscore_size=, :otms_underscore_size=
    undef_method :otms_underscore_size=
    
    attr_accessor :otms_underscore_position
    alias_method :attr_otms_underscore_position, :otms_underscore_position
    undef_method :otms_underscore_position
    alias_method :attr_otms_underscore_position=, :otms_underscore_position=
    undef_method :otms_underscore_position=
    
    # long
    attr_accessor :otmp_family_name
    alias_method :attr_otmp_family_name, :otmp_family_name
    undef_method :otmp_family_name
    alias_method :attr_otmp_family_name=, :otmp_family_name=
    undef_method :otmp_family_name=
    
    # long
    attr_accessor :otmp_face_name
    alias_method :attr_otmp_face_name, :otmp_face_name
    undef_method :otmp_face_name
    alias_method :attr_otmp_face_name=, :otmp_face_name=
    undef_method :otmp_face_name=
    
    # long
    attr_accessor :otmp_style_name
    alias_method :attr_otmp_style_name, :otmp_style_name
    undef_method :otmp_style_name
    alias_method :attr_otmp_style_name=, :otmp_style_name=
    undef_method :otmp_style_name=
    
    # long
    attr_accessor :otmp_full_name
    alias_method :attr_otmp_full_name, :otmp_full_name
    undef_method :otmp_full_name
    alias_method :attr_otmp_full_name=, :otmp_full_name=
    undef_method :otmp_full_name=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS::IsUnicode ? OS._outlinetextmetricw_sizeof : OS._outlinetextmetrica_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @otm_size = 0
      @otm_filler = 0
      @otm_panose_number_b_family_type = 0
      @otm_panose_number_b_serif_style = 0
      @otm_panose_number_b_weight = 0
      @otm_panose_number_b_proportion = 0
      @otm_panose_number_b_contrast = 0
      @otm_panose_number_b_stroke_variation = 0
      @otm_panose_number_b_arm_style = 0
      @otm_panose_number_b_letterform = 0
      @otm_panose_number_b_midline = 0
      @otm_panose_number_b_xheight = 0
      @otmfs_selection = 0
      @otmfs_type = 0
      @otms_char_slope_rise = 0
      @otms_char_slope_run = 0
      @otm_italic_angle = 0
      @otm_emsquare = 0
      @otm_ascent = 0
      @otm_descent = 0
      @otm_line_gap = 0
      @otms_cap_em_height = 0
      @otms_xheight = 0
      @otmrc_font_box = RECT.new
      @otm_mac_ascent = 0
      @otm_mac_descent = 0
      @otm_mac_line_gap = 0
      @otmus_minimum_ppem = 0
      @otmpt_subscript_size = POINT.new
      @otmpt_subscript_offset = POINT.new
      @otmpt_superscript_size = POINT.new
      @otmpt_superscript_offset = POINT.new
      @otms_strikeout_size = 0
      @otms_strikeout_position = 0
      @otms_underscore_size = 0
      @otms_underscore_position = 0
      @otmp_family_name = 0
      @otmp_face_name = 0
      @otmp_style_name = 0
      @otmp_full_name = 0
    end
    
    private
    alias_method :initialize__outlinetextmetric, :initialize
  end
  
end
