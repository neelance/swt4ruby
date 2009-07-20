require "rjava"

# Copyright (c) 2003, 2005 IBM Corp.
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
  module HIThemeTrackDrawInfoImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Carbon
    }
  end
  
  class HIThemeTrackDrawInfo 
    include_class_members HIThemeTrackDrawInfoImports
    
    attr_accessor :version
    alias_method :attr_version, :version
    undef_method :version
    alias_method :attr_version=, :version=
    undef_method :version=
    
    attr_accessor :kind
    alias_method :attr_kind, :kind
    undef_method :kind
    alias_method :attr_kind=, :kind=
    undef_method :kind=
    
    # HIRect bounds
    attr_accessor :bounds_x
    alias_method :attr_bounds_x, :bounds_x
    undef_method :bounds_x
    alias_method :attr_bounds_x=, :bounds_x=
    undef_method :bounds_x=
    
    attr_accessor :bounds_y
    alias_method :attr_bounds_y, :bounds_y
    undef_method :bounds_y
    alias_method :attr_bounds_y=, :bounds_y=
    undef_method :bounds_y=
    
    attr_accessor :bounds_width
    alias_method :attr_bounds_width, :bounds_width
    undef_method :bounds_width
    alias_method :attr_bounds_width=, :bounds_width=
    undef_method :bounds_width=
    
    attr_accessor :bounds_height
    alias_method :attr_bounds_height, :bounds_height
    undef_method :bounds_height
    alias_method :attr_bounds_height=, :bounds_height=
    undef_method :bounds_height=
    
    attr_accessor :min
    alias_method :attr_min, :min
    undef_method :min
    alias_method :attr_min=, :min=
    undef_method :min=
    
    attr_accessor :max
    alias_method :attr_max, :max
    undef_method :max
    alias_method :attr_max=, :max=
    undef_method :max=
    
    attr_accessor :value
    alias_method :attr_value, :value
    undef_method :value
    alias_method :attr_value=, :value=
    undef_method :value=
    
    attr_accessor :reserved
    alias_method :attr_reserved, :reserved
    undef_method :reserved
    alias_method :attr_reserved=, :reserved=
    undef_method :reserved=
    
    attr_accessor :attributes
    alias_method :attr_attributes, :attributes
    undef_method :attributes
    alias_method :attr_attributes=, :attributes=
    undef_method :attributes=
    
    attr_accessor :enable_state
    alias_method :attr_enable_state, :enable_state
    undef_method :enable_state
    alias_method :attr_enable_state=, :enable_state=
    undef_method :enable_state=
    
    attr_accessor :filler1
    alias_method :attr_filler1, :filler1
    undef_method :filler1
    alias_method :attr_filler1=, :filler1=
    undef_method :filler1=
    
    attr_accessor :scrollbar
    alias_method :attr_scrollbar, :scrollbar
    undef_method :scrollbar
    alias_method :attr_scrollbar=, :scrollbar=
    undef_method :scrollbar=
    
    attr_accessor :slider
    alias_method :attr_slider, :slider
    undef_method :slider
    alias_method :attr_slider=, :slider=
    undef_method :slider=
    
    attr_accessor :progress
    alias_method :attr_progress, :progress
    undef_method :progress
    alias_method :attr_progress=, :progress=
    undef_method :progress=
    
    class_module.module_eval {
      const_set_lazy(:Sizeof) { 48 }
      const_attr_reader  :Sizeof
    }
    
    typesig { [] }
    def initialize
      @version = 0
      @kind = 0
      @bounds_x = 0.0
      @bounds_y = 0.0
      @bounds_width = 0.0
      @bounds_height = 0.0
      @min = 0
      @max = 0
      @value = 0
      @reserved = 0
      @attributes = 0
      @enable_state = 0
      @filler1 = 0
      @scrollbar = nil
      @slider = nil
      @progress = nil
    end
    
    private
    alias_method :initialize__hitheme_track_draw_info, :initialize
  end
  
end
