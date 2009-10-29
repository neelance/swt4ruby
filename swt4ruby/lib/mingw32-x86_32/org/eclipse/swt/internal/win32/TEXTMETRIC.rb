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
  module TEXTMETRICImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class TEXTMETRIC 
    include_class_members TEXTMETRICImports
    
    attr_accessor :tm_height
    alias_method :attr_tm_height, :tm_height
    undef_method :tm_height
    alias_method :attr_tm_height=, :tm_height=
    undef_method :tm_height=
    
    attr_accessor :tm_ascent
    alias_method :attr_tm_ascent, :tm_ascent
    undef_method :tm_ascent
    alias_method :attr_tm_ascent=, :tm_ascent=
    undef_method :tm_ascent=
    
    attr_accessor :tm_descent
    alias_method :attr_tm_descent, :tm_descent
    undef_method :tm_descent
    alias_method :attr_tm_descent=, :tm_descent=
    undef_method :tm_descent=
    
    attr_accessor :tm_internal_leading
    alias_method :attr_tm_internal_leading, :tm_internal_leading
    undef_method :tm_internal_leading
    alias_method :attr_tm_internal_leading=, :tm_internal_leading=
    undef_method :tm_internal_leading=
    
    attr_accessor :tm_external_leading
    alias_method :attr_tm_external_leading, :tm_external_leading
    undef_method :tm_external_leading
    alias_method :attr_tm_external_leading=, :tm_external_leading=
    undef_method :tm_external_leading=
    
    attr_accessor :tm_ave_char_width
    alias_method :attr_tm_ave_char_width, :tm_ave_char_width
    undef_method :tm_ave_char_width
    alias_method :attr_tm_ave_char_width=, :tm_ave_char_width=
    undef_method :tm_ave_char_width=
    
    attr_accessor :tm_max_char_width
    alias_method :attr_tm_max_char_width, :tm_max_char_width
    undef_method :tm_max_char_width
    alias_method :attr_tm_max_char_width=, :tm_max_char_width=
    undef_method :tm_max_char_width=
    
    attr_accessor :tm_weight
    alias_method :attr_tm_weight, :tm_weight
    undef_method :tm_weight
    alias_method :attr_tm_weight=, :tm_weight=
    undef_method :tm_weight=
    
    attr_accessor :tm_overhang
    alias_method :attr_tm_overhang, :tm_overhang
    undef_method :tm_overhang
    alias_method :attr_tm_overhang=, :tm_overhang=
    undef_method :tm_overhang=
    
    attr_accessor :tm_digitized_aspect_x
    alias_method :attr_tm_digitized_aspect_x, :tm_digitized_aspect_x
    undef_method :tm_digitized_aspect_x
    alias_method :attr_tm_digitized_aspect_x=, :tm_digitized_aspect_x=
    undef_method :tm_digitized_aspect_x=
    
    attr_accessor :tm_digitized_aspect_y
    alias_method :attr_tm_digitized_aspect_y, :tm_digitized_aspect_y
    undef_method :tm_digitized_aspect_y
    alias_method :attr_tm_digitized_aspect_y=, :tm_digitized_aspect_y=
    undef_method :tm_digitized_aspect_y=
    
    attr_accessor :tm_italic
    alias_method :attr_tm_italic, :tm_italic
    undef_method :tm_italic
    alias_method :attr_tm_italic=, :tm_italic=
    undef_method :tm_italic=
    
    attr_accessor :tm_underlined
    alias_method :attr_tm_underlined, :tm_underlined
    undef_method :tm_underlined
    alias_method :attr_tm_underlined=, :tm_underlined=
    undef_method :tm_underlined=
    
    attr_accessor :tm_struck_out
    alias_method :attr_tm_struck_out, :tm_struck_out
    undef_method :tm_struck_out
    alias_method :attr_tm_struck_out=, :tm_struck_out=
    undef_method :tm_struck_out=
    
    attr_accessor :tm_pitch_and_family
    alias_method :attr_tm_pitch_and_family, :tm_pitch_and_family
    undef_method :tm_pitch_and_family
    alias_method :attr_tm_pitch_and_family=, :tm_pitch_and_family=
    undef_method :tm_pitch_and_family=
    
    attr_accessor :tm_char_set
    alias_method :attr_tm_char_set, :tm_char_set
    undef_method :tm_char_set
    alias_method :attr_tm_char_set=, :tm_char_set=
    undef_method :tm_char_set=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { OS::IsUnicode ? OS._textmetricw_sizeof : OS._textmetrica_sizeof }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @tm_height = 0
      @tm_ascent = 0
      @tm_descent = 0
      @tm_internal_leading = 0
      @tm_external_leading = 0
      @tm_ave_char_width = 0
      @tm_max_char_width = 0
      @tm_weight = 0
      @tm_overhang = 0
      @tm_digitized_aspect_x = 0
      @tm_digitized_aspect_y = 0
      @tm_italic = 0
      @tm_underlined = 0
      @tm_struck_out = 0
      @tm_pitch_and_family = 0
      @tm_char_set = 0
    end
    
    private
    alias_method :initialize__textmetric, :initialize
  end
  
end
