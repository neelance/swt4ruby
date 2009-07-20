require "rjava"

# Copyright (c) 2000, 2006 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Theme
  module ScaleDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGPoint
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HIThemeTrackDrawInfo
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :SliderTrackInfo
    }
  end
  
  class ScaleDrawData < ScaleDrawDataImports.const_get :RangeDrawData
    include_class_members ScaleDrawDataImports
    
    attr_accessor :increment
    alias_method :attr_increment, :increment
    undef_method :increment
    alias_method :attr_increment=, :increment=
    undef_method :increment=
    
    attr_accessor :page_increment
    alias_method :attr_page_increment, :page_increment
    undef_method :page_increment
    alias_method :attr_page_increment=, :page_increment=
    undef_method :page_increment=
    
    typesig { [] }
    def initialize
      @increment = 0
      @page_increment = 0
      super()
      self.attr_state = Array.typed(::Java::Int).new(4) { 0 }
    end
    
    typesig { [] }
    def get_info
      up_track_state = self.attr_state[DrawData::SCALE_UP_TRACK]
      down_track_state = self.attr_state[DrawData::SCALE_DOWN_TRACK]
      thumb_state = self.attr_state[DrawData::SCALE_THUMB]
      info = HIThemeTrackDrawInfo.new
      info.attr_min = self.attr_minimum
      info.attr_max = Math.max(self.attr_minimum, self.attr_maximum)
      info.attr_value = self.attr_selection
      info.attr_kind = OS.attr_k_theme_slider_medium
      info.attr_attributes = OS.attr_k_theme_track_show_thumb
      if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
        info.attr_attributes |= OS.attr_k_theme_track_horizontal
      end
      info.attr_enable_state = OS.attr_k_theme_track_inactive
      if (!((self.attr_state[DrawData::WIDGET_WHOLE] & DrawData::ACTIVE)).equal?(0))
        info.attr_enable_state = OS.attr_k_theme_track_active
      end
      if (!((self.attr_state[DrawData::WIDGET_WHOLE] & DrawData::DISABLED)).equal?(0))
        info.attr_enable_state = OS.attr_k_theme_track_disabled
      end
      info.attr_slider = SliderTrackInfo.new
      state = 0
      if (!((up_track_state & DrawData::PRESSED)).equal?(0))
        state |= OS.attr_k_theme_left_inside_arrow_pressed
      end
      if (!((down_track_state & DrawData::PRESSED)).equal?(0))
        state |= OS.attr_k_theme_right_inside_arrow_pressed
      end
      if (!((thumb_state & DrawData::PRESSED)).equal?(0))
        state |= OS.attr_k_theme_thumb_pressed
      end
      info.attr_slider.attr_press_state = state
      return info
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      info = get_info
      info.attr_bounds_x = bounds.attr_x
      info.attr_bounds_y = bounds.attr_y
      info.attr_bounds_width = bounds.attr_width
      info.attr_bounds_height = bounds.attr_height
      OS._hitheme_draw_track(info, nil, gc.attr_handle, OS.attr_k_hitheme_orientation_normal)
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      if (!bounds.contains(position))
        return DrawData::WIDGET_NOWHERE
      end
      pt = CGPoint.new
      pt.attr_x = position.attr_x
      pt.attr_y = position.attr_y
      part = Array.typed(::Java::Short).new(1) { 0 }
      info = get_info
      if (OS._hitheme_hit_test_track(info, pt, part))
        case (part[0])
        when 22
          return DrawData::SCALE_UP_TRACK
        when 23
          return DrawData::SCALE_DOWN_TRACK
        when 129
          return DrawData::SCALE_THUMB
        end
      end
      return DrawData::WIDGET_NOWHERE
    end
    
    private
    alias_method :initialize__scale_draw_data, :initialize
  end
  
end
