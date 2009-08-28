require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Internal::Theme
  module ScrollBarDrawDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Win32
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
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        # long
        h_theme = OS._open_theme_data(0, get_class_id)
        rect = RECT.new
        if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
          width = OS._get_theme_sys_size(h_theme, OS::SM_CXVSCROLL)
          rect.attr_left = bounds.attr_x
          rect.attr_right = rect.attr_left + bounds.attr_width
          rect.attr_top = bounds.attr_y
          rect.attr_bottom = rect.attr_top + width
          part = get_part_id(DrawData::SCROLLBAR_UP_ARROW)
          OS._draw_theme_background(h_theme, gc.attr_handle, part[0], part[1], rect, nil)
          rect.attr_bottom = bounds.attr_y + bounds.attr_height
          rect.attr_top = rect.attr_bottom - width
          part = get_part_id(DrawData::SCROLLBAR_DOWN_ARROW)
          OS._draw_theme_background(h_theme, gc.attr_handle, part[0], part[1], rect, nil)
          total_width = bounds.attr_height - 2 * width
          thumb_width = Math.max(width / 2, (total_width * @thumb) / Math.max(1, (self.attr_maximum - self.attr_minimum))) # BAD
          thumb_pos = bounds.attr_y + width + Math.max(0, (total_width * self.attr_selection) / Math.max(1, (self.attr_maximum - self.attr_minimum)))
          rect.attr_top = bounds.attr_y + width
          rect.attr_bottom = thumb_pos
          part = get_part_id(DrawData::SCROLLBAR_UP_TRACK)
          OS._draw_theme_background(h_theme, gc.attr_handle, part[0], part[1], rect, nil)
          rect.attr_top = rect.attr_bottom
          rect.attr_bottom = rect.attr_top + thumb_width
          part = get_part_id(DrawData::SCROLLBAR_THUMB)
          OS._draw_theme_background(h_theme, gc.attr_handle, part[0], part[1], rect, nil)
          OS._draw_theme_background(h_theme, gc.attr_handle, OS::SBP_GRIPPERVERT, part[1], rect, nil)
          rect.attr_top = rect.attr_bottom
          rect.attr_bottom = bounds.attr_y + bounds.attr_height - width
          part = get_part_id(DrawData::SCROLLBAR_DOWN_TRACK)
          OS._draw_theme_background(h_theme, gc.attr_handle, part[0], part[1], rect, nil)
        else
          # TODO - why SM_CXHSCROLL = 0?
          height = OS._get_theme_sys_size(h_theme, OS::SM_CXVSCROLL)
          rect.attr_top = bounds.attr_y
          rect.attr_bottom = rect.attr_top + bounds.attr_height
          rect.attr_left = bounds.attr_x
          rect.attr_right = rect.attr_left + height
          part = get_part_id(DrawData::SCROLLBAR_LEFT_ARROW)
          OS._draw_theme_background(h_theme, gc.attr_handle, part[0], part[1], rect, nil)
          rect.attr_right = bounds.attr_x + bounds.attr_width
          rect.attr_left = rect.attr_right - height
          part = get_part_id(DrawData::SCROLLBAR_RIGHT_ARROW)
          OS._draw_theme_background(h_theme, gc.attr_handle, part[0], part[1], rect, nil)
          total_width = bounds.attr_width - 2 * height
          thumb_width = Math.max(height / 2, (total_width * @thumb) / (self.attr_maximum - self.attr_minimum)) # BAD
          thumb_pos = bounds.attr_x + height + Math.max(0, (total_width * self.attr_selection) / Math.max(1, (self.attr_maximum - self.attr_minimum)))
          rect.attr_left = bounds.attr_x + height
          rect.attr_right = thumb_pos
          part = get_part_id(DrawData::SCROLLBAR_UP_TRACK)
          OS._draw_theme_background(h_theme, gc.attr_handle, part[0], part[1], rect, nil)
          rect.attr_left = rect.attr_right
          rect.attr_right = rect.attr_left + thumb_width
          part = get_part_id(DrawData::SCROLLBAR_THUMB)
          OS._draw_theme_background(h_theme, gc.attr_handle, part[0], part[1], rect, nil)
          OS._draw_theme_background(h_theme, gc.attr_handle, OS::SBP_GRIPPERHORZ, part[1], rect, nil)
          rect.attr_left = rect.attr_right
          rect.attr_right = bounds.attr_x + bounds.attr_width - height
          part = get_part_id(DrawData::SCROLLBAR_DOWN_TRACK)
          OS._draw_theme_background(h_theme, gc.attr_handle, part[0], part[1], rect, nil)
        end
        OS._close_theme_data(h_theme)
      end
    end
    
    typesig { [] }
    def get_class_id
      return SCROLLBAR
    end
    
    typesig { [::Java::Int] }
    def get_part_id(part)
      i_part_id = 0
      i_state_id = 0
      state = self.attr_state[part]
      case (part)
      when DrawData::SCROLLBAR_UP_ARROW
        i_part_id = OS::SBP_ARROWBTN
        if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
          i_state_id = OS::ABS_UPNORMAL
          if (!((state & DrawData::HOT)).equal?(0))
            i_state_id = OS::ABS_UPHOT
          end
          if (!((state & DrawData::PRESSED)).equal?(0))
            i_state_id = OS::ABS_UPPRESSED
          end
          if (!((state & DrawData::DISABLED)).equal?(0))
            i_state_id = OS::ABS_UPDISABLED
          end
        else
          i_state_id = OS::ABS_LEFTNORMAL
          if (!((state & DrawData::HOT)).equal?(0))
            i_state_id = OS::ABS_LEFTHOT
          end
          if (!((state & DrawData::PRESSED)).equal?(0))
            i_state_id = OS::ABS_LEFTPRESSED
          end
          if (!((state & DrawData::DISABLED)).equal?(0))
            i_state_id = OS::ABS_LEFTDISABLED
          end
        end
      when DrawData::SCROLLBAR_DOWN_ARROW
        i_part_id = OS::SBP_ARROWBTN
        if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
          i_state_id = OS::ABS_DOWNNORMAL
          if (!((state & DrawData::HOT)).equal?(0))
            i_state_id = OS::ABS_DOWNHOT
          end
          if (!((state & DrawData::PRESSED)).equal?(0))
            i_state_id = OS::ABS_DOWNPRESSED
          end
          if (!((state & DrawData::DISABLED)).equal?(0))
            i_state_id = OS::ABS_DOWNDISABLED
          end
        else
          i_state_id = OS::ABS_RIGHTNORMAL
          if (!((state & DrawData::HOT)).equal?(0))
            i_state_id = OS::ABS_RIGHTHOT
          end
          if (!((state & DrawData::PRESSED)).equal?(0))
            i_state_id = OS::ABS_RIGHTPRESSED
          end
          if (!((state & DrawData::DISABLED)).equal?(0))
            i_state_id = OS::ABS_RIGHTDISABLED
          end
        end
      when DrawData::WIDGET_WHOLE, DrawData::SCROLLBAR_THUMB
        if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
          i_part_id = OS::SBP_THUMBBTNVERT
        else
          i_part_id = OS::SBP_THUMBBTNHORZ
        end
      when DrawData::SCROLLBAR_UP_TRACK
        if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
          i_part_id = OS::SBP_UPPERTRACKVERT
        else
          i_part_id = OS::SBP_UPPERTRACKHORZ
        end
      when DrawData::SCROLLBAR_DOWN_TRACK
        if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
          i_part_id = OS::SBP_LOWERTRACKVERT
        else
          i_part_id = OS::SBP_LOWERTRACKHORZ
        end
      end
      if (!(part).equal?(DrawData::SCROLLBAR_DOWN_ARROW) && !(part).equal?(DrawData::SCROLLBAR_UP_ARROW))
        i_state_id = OS::SCRBS_NORMAL
        if (!((state & DrawData::HOT)).equal?(0))
          i_state_id = OS::SCRBS_HOT
        end
        if (!((state & DrawData::PRESSED)).equal?(0))
          i_state_id = OS::SCRBS_PRESSED
        end
        if (!((state & DrawData::DISABLED)).equal?(0))
          i_state_id = OS::SCRBS_DISABLED
        end
      end
      return Array.typed(::Java::Int).new([i_part_id, i_state_id])
    end
    
    typesig { [::Java::Int, Rectangle] }
    def get_bounds(part, bounds)
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        # long
        h_theme = OS._open_theme_data(0, get_class_id)
        if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
          width = OS._get_theme_sys_size(h_theme, OS::SM_CXVSCROLL)
          total_width = bounds.attr_height - 2 * width
          thumb_width = Math.max(width / 2, (total_width * @thumb) / Math.max(1, (self.attr_maximum - self.attr_minimum))) # BAD
          thumb_pos = bounds.attr_y + width + Math.max(0, (total_width * self.attr_selection) / Math.max(1, (self.attr_maximum - self.attr_minimum)))
          case (part)
          when DrawData::SCROLLBAR_DOWN_ARROW
            return Rectangle.new(bounds.attr_x, bounds.attr_y + bounds.attr_height - width, bounds.attr_width, width)
          when DrawData::SCROLLBAR_UP_ARROW
            return Rectangle.new(bounds.attr_x, bounds.attr_y, bounds.attr_width, width)
          when DrawData::SCROLLBAR_UP_TRACK
            return Rectangle.new(bounds.attr_x, bounds.attr_y + width, bounds.attr_width, thumb_pos - bounds.attr_y - width)
          when DrawData::SCROLLBAR_THUMB
            return Rectangle.new(bounds.attr_x, thumb_pos, bounds.attr_width, thumb_width)
          when DrawData::SCROLLBAR_DOWN_TRACK
            return Rectangle.new(bounds.attr_x, thumb_pos + thumb_width, bounds.attr_width, bounds.attr_y + bounds.attr_height - width - thumb_pos - thumb_width)
          end
        else
        end
        OS._close_theme_data(h_theme)
      end
      return super(part, bounds)
    end
    
    typesig { [Point, Rectangle] }
    def get_selection(position, bounds)
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        # long
        h_theme = OS._open_theme_data(0, get_class_id)
        if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
          width = OS._get_theme_sys_size(h_theme, OS::SM_CXVSCROLL)
          total_width = bounds.attr_height - 2 * width
          thumb_pos = bounds.attr_y + width + Math.max(0, (total_width * self.attr_selection) / Math.max(1, (self.attr_maximum - self.attr_minimum)))
          thumb_pos += position.attr_y
          selection = ((thumb_pos - bounds.attr_y - width) * (self.attr_maximum - self.attr_minimum)) / total_width
          return Math.max(0, Math.min(selection, self.attr_maximum - @thumb))
        else
        end
        OS._close_theme_data(h_theme)
      end
      return 0
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      if (!(OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed))
        return -1
      end
      # long
      h_theme = OS._open_theme_data(0, get_class_id)
      # TODO - should we take a GC?
      h_dc = 0
      rect = RECT.new
      pt = POINT.new
      pt.attr_x = position.attr_x
      pt.attr_y = position.attr_y
      code = Array.typed(::Java::Short).new(1) { 0 }
      begin
        if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
          width = OS._get_theme_sys_size(h_theme, OS::SM_CXVSCROLL)
          rect.attr_left = bounds.attr_x
          rect.attr_right = rect.attr_left + bounds.attr_width
          rect.attr_top = bounds.attr_y
          rect.attr_bottom = rect.attr_top + width
          part = get_part_id(DrawData::SCROLLBAR_UP_ARROW)
          OS._hit_test_theme_background(h_theme, h_dc, part[0], part[1], 0, rect, 0, pt, code)
          if (!(code[0]).equal?(OS::HTNOWHERE))
            return DrawData::SCROLLBAR_UP_ARROW
          end
          rect.attr_bottom = bounds.attr_y + bounds.attr_height
          rect.attr_top = rect.attr_bottom - width
          part = get_part_id(DrawData::SCROLLBAR_DOWN_ARROW)
          OS._hit_test_theme_background(h_theme, h_dc, part[0], part[1], 0, rect, 0, pt, code)
          if (!(code[0]).equal?(OS::HTNOWHERE))
            return DrawData::SCROLLBAR_DOWN_ARROW
          end
          total_width = bounds.attr_height - 2 * width
          thumb_width = Math.max(width / 2, (total_width * @thumb) / Math.max(1, (self.attr_maximum - self.attr_minimum))) # BAD
          thumb_pos = bounds.attr_y + width + Math.max(0, (total_width * self.attr_selection) / Math.max(1, (self.attr_maximum - self.attr_minimum)))
          rect.attr_top = bounds.attr_y + width
          rect.attr_bottom = thumb_pos
          part = get_part_id(DrawData::SCROLLBAR_THUMB)
          OS._hit_test_theme_background(h_theme, h_dc, part[0], part[1], 0, rect, 0, pt, code)
          if (!(code[0]).equal?(OS::HTNOWHERE))
            return DrawData::SCROLLBAR_UP_TRACK
          end
          rect.attr_top = rect.attr_bottom
          rect.attr_bottom = rect.attr_top + thumb_width
          part = get_part_id(DrawData::SCROLLBAR_UP_TRACK)
          OS._hit_test_theme_background(h_theme, h_dc, part[0], part[1], 0, rect, 0, pt, code)
          if (!(code[0]).equal?(OS::HTNOWHERE))
            return DrawData::SCROLLBAR_THUMB
          end
          rect.attr_top = rect.attr_bottom
          rect.attr_bottom = bounds.attr_y + bounds.attr_height - width
          part = get_part_id(DrawData::SCROLLBAR_DOWN_TRACK)
          OS._hit_test_theme_background(h_theme, h_dc, part[0], part[1], 0, rect, 0, pt, code)
          if (!(code[0]).equal?(OS::HTNOWHERE))
            return DrawData::SCROLLBAR_DOWN_TRACK
          end
        else
          height = OS._get_theme_sys_size(h_theme, OS::SM_CXVSCROLL) # BAD - why SM_CXHSCROLL = 0?
          rect.attr_top = bounds.attr_y
          rect.attr_bottom = rect.attr_top + bounds.attr_height
          rect.attr_left = bounds.attr_x
          rect.attr_right = rect.attr_left + height
          part = get_part_id(DrawData::SCROLLBAR_LEFT_ARROW)
          OS._hit_test_theme_background(h_theme, h_dc, part[0], part[1], 0, rect, 0, pt, code)
          if (!(code[0]).equal?(OS::HTNOWHERE))
            return DrawData::SCROLLBAR_UP_ARROW
          end
          rect.attr_right = bounds.attr_x + bounds.attr_width
          rect.attr_left = rect.attr_right - height
          part = get_part_id(DrawData::SCROLLBAR_RIGHT_ARROW)
          OS._hit_test_theme_background(h_theme, h_dc, part[0], part[1], 0, rect, 0, pt, code)
          if (!(code[0]).equal?(OS::HTNOWHERE))
            return DrawData::SCROLLBAR_DOWN_ARROW
          end
          total_width = bounds.attr_width - 2 * height
          thumb_width = Math.max(height / 2, (total_width * @thumb) / (self.attr_maximum - self.attr_minimum)) # BAD
          thumb_pos = bounds.attr_x + height + Math.max(0, (total_width * self.attr_selection) / Math.max(1, (self.attr_maximum - self.attr_minimum)))
          rect.attr_left = bounds.attr_x + height
          rect.attr_right = thumb_pos
          part = get_part_id(DrawData::SCROLLBAR_LEFT_TRACK)
          OS._hit_test_theme_background(h_theme, h_dc, part[0], part[1], 0, rect, 0, pt, code)
          if (!(code[0]).equal?(OS::HTNOWHERE))
            return DrawData::SCROLLBAR_UP_TRACK
          end
          rect.attr_left = rect.attr_right
          rect.attr_right = rect.attr_left + thumb_width
          part = get_part_id(DrawData::SCROLLBAR_THUMB)
          OS._hit_test_theme_background(h_theme, h_dc, part[0], part[1], 0, rect, 0, pt, code)
          if (!(code[0]).equal?(OS::HTNOWHERE))
            return DrawData::SCROLLBAR_THUMB
          end
          rect.attr_left = rect.attr_right
          rect.attr_right = bounds.attr_x + bounds.attr_width - height
          part = get_part_id(DrawData::SCROLLBAR_RIGHT_TRACK)
          OS._hit_test_theme_background(h_theme, h_dc, part[0], part[1], 0, rect, 0, pt, code)
          if (!(code[0]).equal?(OS::HTNOWHERE))
            return DrawData::SCROLLBAR_DOWN_TRACK
          end
        end
      ensure
        OS._close_theme_data(h_theme)
      end
      return DrawData::WIDGET_NOWHERE
    end
    
    private
    alias_method :initialize__scroll_bar_draw_data, :initialize
  end
  
end
