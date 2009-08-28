require "rjava"

# Copyright (c) 2003, 2006 IBM Corp.
# Portions Copyright (c) 1983-2002, Apple Computer, Inc.
# 
# All rights reserved.  This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Carbon
  module ATSFontMetricsImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class ATSFontMetrics 
    include_class_members ATSFontMetricsImports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    attr_accessor :ascent
    alias_method :attr_ascent, :ascent
    undef_method :ascent
    alias_method :attr_ascent=, :ascent=
    undef_method :ascent=
    
    attr_accessor :descent
    alias_method :attr_descent, :descent
    undef_method :descent
    alias_method :attr_descent=, :descent=
    undef_method :descent=
    
    attr_accessor :leading
    alias_method :attr_leading, :leading
    undef_method :leading
    alias_method :attr_leading=, :leading=
    undef_method :leading=
    
    attr_accessor :avg_advance_width
    alias_method :attr_avg_advance_width, :avg_advance_width
    undef_method :avg_advance_width
    alias_method :attr_avg_advance_width=, :avg_advance_width=
    undef_method :avg_advance_width=
    
    attr_accessor :max_advance_width
    alias_method :attr_max_advance_width, :max_advance_width
    undef_method :max_advance_width
    alias_method :attr_max_advance_width=, :max_advance_width=
    undef_method :max_advance_width=
    
    attr_accessor :min_left_side_bearing
    alias_method :attr_min_left_side_bearing, :min_left_side_bearing
    undef_method :min_left_side_bearing
    alias_method :attr_min_left_side_bearing=, :min_left_side_bearing=
    undef_method :min_left_side_bearing=
    
    attr_accessor :min_right_side_bearing
    alias_method :attr_min_right_side_bearing, :min_right_side_bearing
    undef_method :min_right_side_bearing
    alias_method :attr_min_right_side_bearing=, :min_right_side_bearing=
    undef_method :min_right_side_bearing=
    
    attr_accessor :stem_width
    alias_method :attr_stem_width, :stem_width
    undef_method :stem_width
    alias_method :attr_stem_width=, :stem_width=
    undef_method :stem_width=
    
    attr_accessor :stem_height
    alias_method :attr_stem_height, :stem_height
    undef_method :stem_height
    alias_method :attr_stem_height=, :stem_height=
    undef_method :stem_height=
    
    attr_accessor :cap_height
    alias_method :attr_cap_height, :cap_height
    undef_method :cap_height
    alias_method :attr_cap_height=, :cap_height=
    undef_method :cap_height=
    
    attr_accessor :x_height
    alias_method :attr_x_height, :x_height
    undef_method :x_height
    alias_method :attr_x_height=, :x_height=
    undef_method :x_height=
    
    attr_accessor :italic_angle
    alias_method :attr_italic_angle, :italic_angle
    undef_method :italic_angle
    alias_method :attr_italic_angle=, :italic_angle=
    undef_method :italic_angle=
    
    attr_accessor :underline_position
    alias_method :attr_underline_position, :underline_position
    undef_method :underline_position
    alias_method :attr_underline_position=, :underline_position=
    undef_method :underline_position=
    
    attr_accessor :underline_thickness
    alias_method :attr_underline_thickness, :underline_thickness
    undef_method :underline_thickness
    alias_method :attr_underline_thickness=, :underline_thickness=
    undef_method :underline_thickness=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 60 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @ascent = 0.0
      @descent = 0.0
      @leading = 0.0
      @avg_advance_width = 0.0
      @max_advance_width = 0.0
      @min_left_side_bearing = 0.0
      @min_right_side_bearing = 0.0
      @stem_width = 0.0
      @stem_height = 0.0
      @cap_height = 0.0
      @x_height = 0.0
      @italic_angle = 0.0
      @underline_position = 0.0
      @underline_thickness = 0.0
    end
    
    private
    alias_method :initialize__atsfont_metrics, :initialize
  end
  
end
