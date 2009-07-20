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
  module LOGFONTImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class LOGFONT 
    include_class_members LOGFONTImports
    
    attr_accessor :lf_height
    alias_method :attr_lf_height, :lf_height
    undef_method :lf_height
    alias_method :attr_lf_height=, :lf_height=
    undef_method :lf_height=
    
    attr_accessor :lf_width
    alias_method :attr_lf_width, :lf_width
    undef_method :lf_width
    alias_method :attr_lf_width=, :lf_width=
    undef_method :lf_width=
    
    attr_accessor :lf_escapement
    alias_method :attr_lf_escapement, :lf_escapement
    undef_method :lf_escapement
    alias_method :attr_lf_escapement=, :lf_escapement=
    undef_method :lf_escapement=
    
    attr_accessor :lf_orientation
    alias_method :attr_lf_orientation, :lf_orientation
    undef_method :lf_orientation
    alias_method :attr_lf_orientation=, :lf_orientation=
    undef_method :lf_orientation=
    
    attr_accessor :lf_weight
    alias_method :attr_lf_weight, :lf_weight
    undef_method :lf_weight
    alias_method :attr_lf_weight=, :lf_weight=
    undef_method :lf_weight=
    
    attr_accessor :lf_italic
    alias_method :attr_lf_italic, :lf_italic
    undef_method :lf_italic
    alias_method :attr_lf_italic=, :lf_italic=
    undef_method :lf_italic=
    
    attr_accessor :lf_underline
    alias_method :attr_lf_underline, :lf_underline
    undef_method :lf_underline
    alias_method :attr_lf_underline=, :lf_underline=
    undef_method :lf_underline=
    
    attr_accessor :lf_strike_out
    alias_method :attr_lf_strike_out, :lf_strike_out
    undef_method :lf_strike_out
    alias_method :attr_lf_strike_out=, :lf_strike_out=
    undef_method :lf_strike_out=
    
    attr_accessor :lf_char_set
    alias_method :attr_lf_char_set, :lf_char_set
    undef_method :lf_char_set
    alias_method :attr_lf_char_set=, :lf_char_set=
    undef_method :lf_char_set=
    
    attr_accessor :lf_out_precision
    alias_method :attr_lf_out_precision, :lf_out_precision
    undef_method :lf_out_precision
    alias_method :attr_lf_out_precision=, :lf_out_precision=
    undef_method :lf_out_precision=
    
    attr_accessor :lf_clip_precision
    alias_method :attr_lf_clip_precision, :lf_clip_precision
    undef_method :lf_clip_precision
    alias_method :attr_lf_clip_precision=, :lf_clip_precision=
    undef_method :lf_clip_precision=
    
    attr_accessor :lf_quality
    alias_method :attr_lf_quality, :lf_quality
    undef_method :lf_quality
    alias_method :attr_lf_quality=, :lf_quality=
    undef_method :lf_quality=
    
    attr_accessor :lf_pitch_and_family
    alias_method :attr_lf_pitch_and_family, :lf_pitch_and_family
    undef_method :lf_pitch_and_family
    alias_method :attr_lf_pitch_and_family=, :lf_pitch_and_family=
    undef_method :lf_pitch_and_family=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS::IsUnicode ? OS._logfontw_sizeof : OS._logfonta_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @lf_height = 0
      @lf_width = 0
      @lf_escapement = 0
      @lf_orientation = 0
      @lf_weight = 0
      @lf_italic = 0
      @lf_underline = 0
      @lf_strike_out = 0
      @lf_char_set = 0
      @lf_out_precision = 0
      @lf_clip_precision = 0
      @lf_quality = 0
      @lf_pitch_and_family = 0
    end
    
    private
    alias_method :initialize__logfont, :initialize
  end
  
end
