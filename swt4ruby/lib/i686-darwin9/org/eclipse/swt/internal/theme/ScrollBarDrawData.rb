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
  module ScrollBarDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGPoint
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGRect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HIThemeTrackDrawInfo
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :ScrollBarTrackInfo
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HIScrollBarTrackInfo
    }
  end
  
  class ScrollBarDrawData < ScrollBarDrawDataImports.const_get :RangeDrawData
    include_class_members ScrollBarDrawDataImports
    
    attr_accessor :thumb
    alias_method :attr_thumb, :thumb
    undef_method :thumb
    alias_method :attr_thumb=, :thumb=
    undef_method :thumb=
    
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
      @thumb = 0
      @increment = 0
      @page_increment = 0
      super()
      self.attr_state = Array.typed(::Java::Int).new(6) { 0 }
    end
    
    typesig { [] }
    def get_arrows_info
      up_arrow_state = self.attr_state[DrawData::SCROLLBAR_UP_ARROW]
      down_arrow_state = self.attr_state[DrawData::SCROLLBAR_DOWN_ARROW]
      up_track_state = self.attr_state[DrawData::SCROLLBAR_UP_TRACK]
      down_track_state = self.attr_state[DrawData::SCROLLBAR_DOWN_TRACK]
      thumb_state = self.attr_state[DrawData::SCROLLBAR_THUMB]
      state = 0
      if (!((up_arrow_state & DrawData::PRESSED)).equal?(0))
        state |= OS.attr_k_theme_left_outside_arrow_pressed
      end
      if (!((down_arrow_state & DrawData::PRESSED)).equal?(0))
        state |= OS.attr_k_theme_right_outside_arrow_pressed
      end
      if (!((up_track_state & DrawData::PRESSED)).equal?(0))
        state |= OS.attr_k_theme_left_inside_arrow_pressed
      end
      if (!((down_track_state & DrawData::PRESSED)).equal?(0))
        state |= OS.attr_k_theme_right_inside_arrow_pressed
      end
      if (!((thumb_state & DrawData::PRESSED)).equal?(0))
        state |= OS.attr_k_theme_thumb_pressed
      end
      enable_state = OS.attr_k_theme_track_inactive
      if (!((self.attr_state[DrawData::WIDGET_WHOLE] & DrawData::ACTIVE)).equal?(0))
        enable_state = OS.attr_k_theme_track_active
      end
      if (!((self.attr_state[DrawData::WIDGET_WHOLE] & DrawData::DISABLED)).equal?(0))
        enable_state = OS.attr_k_theme_track_disabled
      end
      scroll_info = HIScrollBarTrackInfo.new
      scroll_info.attr_press_state = state
      scroll_info.attr_enable_state = enable_state
      scroll_info.attr_viewsize = @thumb
      return scroll_info
    end
    
    typesig { [] }
    def get_info
      up_arrow_state = self.attr_state[DrawData::SCROLLBAR_UP_ARROW]
      down_arrow_state = self.attr_state[DrawData::SCROLLBAR_DOWN_ARROW]
      up_track_state = self.attr_state[DrawData::SCROLLBAR_UP_TRACK]
      down_track_state = self.attr_state[DrawData::SCROLLBAR_DOWN_TRACK]
      thumb_state = self.attr_state[DrawData::SCROLLBAR_THUMB]
      info = HIThemeTrackDrawInfo.new
      info.attr_min = self.attr_minimum
      info.attr_max = Math.max(self.attr_minimum, self.attr_maximum - @thumb)
      info.attr_value = self.attr_selection
      info.attr_kind = OS.attr_k_theme_scroll_bar_medium
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
      info.attr_scrollbar = ScrollBarTrackInfo.new
      state = 0
      if (!((up_arrow_state & DrawData::PRESSED)).equal?(0))
        state |= OS.attr_k_theme_left_outside_arrow_pressed
      end
      if (!((down_arrow_state & DrawData::PRESSED)).equal?(0))
        state |= OS.attr_k_theme_right_outside_arrow_pressed
      end
      if (!((up_track_state & DrawData::PRESSED)).equal?(0))
        state |= OS.attr_k_theme_left_inside_arrow_pressed
      end
      if (!((down_track_state & DrawData::PRESSED)).equal?(0))
        state |= OS.attr_k_theme_right_inside_arrow_pressed
      end
      if (!((thumb_state & DrawData::PRESSED)).equal?(0))
        state |= OS.attr_k_theme_thumb_pressed
      end
      info.attr_scrollbar.attr_press_state = state
      info.attr_scrollbar.attr_viewsize = @thumb
      return info
    end
    
    typesig { [::Java::Int, Rectangle] }
    def get_bounds(part, bounds)
      info = get_info
      info.attr_bounds_x = bounds.attr_x
      info.attr_bounds_y = bounds.attr_y
      info.attr_bounds_width = bounds.attr_width
      info.attr_bounds_height = bounds.attr_height
      rect = CGRect.new
      part_code = 0
      case (part)
      when DrawData::SCROLLBAR_UP_ARROW
        part_code = 20
      when DrawData::SCROLLBAR_DOWN_ARROW
        part_code = 21
      when DrawData::SCROLLBAR_UP_TRACK
        part_code = 22
      when DrawData::SCROLLBAR_THUMB
        part_code = 129
      when DrawData::SCROLLBAR_DOWN_TRACK
        part_code = 23
      end
      OS._hitheme_get_track_part_bounds(info, part_code, rect)
      return Rectangle.new(RJava.cast_to_int(rect.attr_x), RJava.cast_to_int(rect.attr_y), RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height))
    end
    
    typesig { [Point, Rectangle] }
    def get_selection(position, bounds)
      info = get_info
      info.attr_bounds_x = bounds.attr_x
      info.attr_bounds_y = bounds.attr_y
      info.attr_bounds_width = bounds.attr_width
      info.attr_bounds_height = bounds.attr_height
      pt = CGPoint.new
      pt.attr_x = position.attr_x
      pt.attr_y = position.attr_y
      relative_position = Array.typed(::Java::Float).new(1) { 0.0 }
      OS._hitheme_get_track_thumb_position_from_offset(info, pt, relative_position)
      selection = Array.typed(::Java::Int).new(1) { 0 }
      OS._hitheme_get_track_live_value(info, relative_position[0], selection)
      return RJava.cast_to_int(selection[0])
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
      pt = CGPoint.new
      pt.attr_x = position.attr_x
      pt.attr_y = position.attr_y
      rect = CGRect.new
      rect.attr_x = bounds.attr_x
      rect.attr_y = bounds.attr_y
      rect.attr_width = bounds.attr_width
      rect.attr_height = bounds.attr_height
      part = Array.typed(::Java::Short).new(1) { 0 }
      scroll_info = get_arrows_info
      OS._hitheme_hit_test_scroll_bar_arrows(rect, scroll_info, !((self.attr_style & SWT::HORIZONTAL)).equal?(0), pt, nil, part)
      case (part[0])
      when 20
        return DrawData::SCROLLBAR_UP_ARROW
      when 21
        return DrawData::SCROLLBAR_DOWN_ARROW
      end
      info = get_info
      info.attr_bounds_x = bounds.attr_x
      info.attr_bounds_y = bounds.attr_y
      info.attr_bounds_width = bounds.attr_width
      info.attr_bounds_height = bounds.attr_height
      if (OS._hitheme_hit_test_track(info, pt, part))
        case (part[0])
        when 22
          return DrawData::SCROLLBAR_UP_TRACK
        when 23
          return DrawData::SCROLLBAR_DOWN_TRACK
        when 129
          return DrawData::SCROLLBAR_THUMB
        end
      end
      return DrawData::WIDGET_NOWHERE
    end
    
    private
    alias_method :initialize__scroll_bar_draw_data, :initialize
  end
  
end
