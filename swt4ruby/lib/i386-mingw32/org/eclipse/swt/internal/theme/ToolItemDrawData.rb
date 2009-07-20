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
  module ToolItemDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class ToolItemDrawData < ToolItemDrawDataImports.const_get :DrawData
    include_class_members ToolItemDrawDataImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    class_module.module_eval {
      const_set_lazy(:INSET) { 1 }
      const_attr_reader  :INSET
    }
    
    typesig { [] }
    def initialize
      @parent = nil
      super()
      self.attr_state = Array.typed(::Java::Int).new(2) { 0 }
    end
    
    typesig { [Theme, SwtGC] }
    def compute_trim(theme, gc)
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        # long
        h_theme = OS._open_theme_data(0, get_class_id)
        rect = RECT.new
        rect.attr_left = self.attr_client_area.attr_x
        rect.attr_right = self.attr_client_area.attr_x + self.attr_client_area.attr_width
        rect.attr_top = self.attr_client_area.attr_y
        rect.attr_bottom = self.attr_client_area.attr_y + self.attr_client_area.attr_height
        extent = RECT.new
        part = get_part_id(DrawData::WIDGET_WHOLE)
        OS._get_theme_background_extent(h_theme, gc.attr_handle, part[0], part[1], rect, extent)
        OS._close_theme_data(h_theme)
        if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
          size = SIZE.new
          part = get_part_id(DrawData::TOOLITEM_ARROW)
          OS._get_theme_part_size(h_theme, 0, part[0], part[1], nil, OS::TS_TRUE, size)
          extent.attr_right = Math.max(extent.attr_left, extent.attr_right + size.attr_cx)
        else
          extent.attr_left -= INSET
          extent.attr_top -= INSET
          extent.attr_right += INSET
          extent.attr_bottom += INSET
        end
        return Rectangle.new(extent.attr_left, extent.attr_top, extent.attr_right - extent.attr_left, extent.attr_bottom - extent.attr_top)
      end
      return Rectangle.new(0, 0, 0, 0)
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        # long
        h_theme = OS._open_theme_data(0, get_class_id)
        rect = RECT.new
        rect.attr_left = bounds.attr_x
        rect.attr_right = bounds.attr_x + bounds.attr_width
        rect.attr_top = bounds.attr_y
        rect.attr_bottom = bounds.attr_y + bounds.attr_height
        size = nil
        drop_part = nil
        if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
          size = SIZE.new
          drop_part = get_part_id(DrawData::TOOLITEM_ARROW)
          OS._get_theme_part_size(h_theme, gc.attr_handle, drop_part[0], drop_part[1], rect, OS::TS_TRUE, size)
          rect.attr_right -= size.attr_cx
          if (rect.attr_right < rect.attr_left)
            rect.attr_right = rect.attr_left
          end
        end
        part = get_part_id(DrawData::WIDGET_WHOLE)
        OS._draw_theme_background(h_theme, gc.attr_handle, part[0], part[1], rect, nil)
        client_area = self.attr_client_area
        if (!(client_area).nil?)
          content_rect = RECT.new
          OS._get_theme_background_content_rect(h_theme, gc.attr_handle, part[0], part[1], rect, content_rect)
          client_area.attr_x = content_rect.attr_left
          client_area.attr_y = content_rect.attr_top
          client_area.attr_width = content_rect.attr_right - content_rect.attr_left
          client_area.attr_height = content_rect.attr_bottom - content_rect.attr_top
        end
        if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
          rect.attr_left = rect.attr_right
          rect.attr_right = rect.attr_left + size.attr_cx
          OS._draw_theme_background(h_theme, gc.attr_handle, drop_part[0], drop_part[1], rect, nil)
        end
        OS._close_theme_data(h_theme)
      end
    end
    
    typesig { [] }
    def get_class_id
      return TOOLBAR
    end
    
    typesig { [::Java::Int] }
    def get_part_id(part)
      state = self.attr_state[part]
      i_part_id = 0
      i_state_id = 0
      case (part)
      when DrawData::WIDGET_WHOLE
        if (!((self.attr_style & (SWT::PUSH | SWT::CHECK | SWT::RADIO))).equal?(0))
          i_part_id = OS::TP_BUTTON
        else
          if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
            i_part_id = OS::TP_SPLITBUTTON
          else
            if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
              if (!((@parent.attr_style & SWT::VERTICAL)).equal?(0))
                i_part_id = OS::TP_SEPARATORVERT
              else
                i_part_id = OS::TP_SEPARATOR
              end
            end
          end
        end
        if (((self.attr_style & SWT::SEPARATOR)).equal?(0))
          if (!((state & DrawData::HOT)).equal?(0))
            if (!((self.attr_style & (SWT::RADIO | SWT::CHECK))).equal?(0) && !((state & DrawData::SELECTED)).equal?(0))
              i_state_id = OS::TS_HOTCHECKED
            else
              i_state_id = OS::TS_HOT
            end
          end
          if (!((self.attr_style & (SWT::RADIO | SWT::CHECK))).equal?(0) && !((state & DrawData::SELECTED)).equal?(0))
            i_state_id = OS::TS_CHECKED
          end
          if (!((state & DrawData::PRESSED)).equal?(0))
            i_state_id = OS::TS_PRESSED
          end
          if (!((state & DrawData::DISABLED)).equal?(0))
            i_state_id = OS::TS_DISABLED
          end
        end
      when DrawData::TOOLITEM_ARROW
        i_part_id = OS::TP_SPLITBUTTONDROPDOWN
        if (!((state & DrawData::HOT)).equal?(0))
          i_state_id = OS::TS_HOT
        end
        if (!((state & DrawData::PRESSED)).equal?(0))
          i_state_id = OS::TS_PRESSED
        end
        if (!((state & DrawData::DISABLED)).equal?(0))
          i_state_id = OS::TS_DISABLED
        end
      end
      return Array.typed(::Java::Int).new([i_part_id, i_state_id])
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      if (!(OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed))
        return DrawData::WIDGET_NOWHERE
      end
      if (!bounds.contains(position))
        return DrawData::WIDGET_NOWHERE
      end
      # long
      h_theme = OS._open_theme_data(0, get_class_id)
      begin
        rect = RECT.new
        rect.attr_left = bounds.attr_x
        rect.attr_right = bounds.attr_x + bounds.attr_width
        rect.attr_top = bounds.attr_y
        rect.attr_bottom = bounds.attr_y + bounds.attr_height
        pt = POINT.new
        pt.attr_x = position.attr_x
        pt.attr_y = position.attr_y
        code = Array.typed(::Java::Short).new(1) { 0 }
        part = get_part_id(DrawData::WIDGET_WHOLE)
        OS._hit_test_theme_background(h_theme, 0, part[0], part[1], 0, rect, 0, pt, code)
        if ((code[0]).equal?(OS::HTNOWHERE))
          return DrawData::WIDGET_NOWHERE
        end
        style = self.attr_style
        if (!((style & SWT::DROP_DOWN)).equal?(0))
          size = SIZE.new
          part = get_part_id(DrawData::TOOLITEM_ARROW)
          OS._get_theme_part_size(h_theme, 0, part[0], part[1], rect, OS::TS_TRUE, size)
          rect.attr_left = Math.max(rect.attr_left, rect.attr_right - size.attr_cx)
          OS._hit_test_theme_background(h_theme, 0, part[0], part[1], 0, rect, 0, pt, code)
          if (!(code[0]).equal?(OS::HTNOWHERE))
            return DrawData::TOOLITEM_ARROW
          end
        end
      ensure
        OS._close_theme_data(h_theme)
      end
      return DrawData::WIDGET_WHOLE
    end
    
    private
    alias_method :initialize__tool_item_draw_data, :initialize
  end
  
end
