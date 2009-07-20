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
  module ComboDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class ComboDrawData < ComboDrawDataImports.const_get :DrawData
    include_class_members ComboDrawDataImports
    
    typesig { [] }
    def initialize
      super()
      self.attr_state = Array.typed(::Java::Int).new(2) { 0 }
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        # long
        h_theme = OS._open_theme_data(0, EDIT)
        rect = RECT.new
        rect.attr_left = bounds.attr_x
        rect.attr_right = bounds.attr_x + bounds.attr_width
        rect.attr_top = bounds.attr_y
        rect.attr_bottom = bounds.attr_y + bounds.attr_height
        part = get_part_id(DrawData::WIDGET_WHOLE)
        OS._draw_theme_background(h_theme, gc.attr_handle, part[0], part[1], rect, nil)
        content_rect = RECT.new
        OS._get_theme_background_content_rect(h_theme, gc.attr_handle, part[0], part[1], rect, content_rect)
        client_area = self.attr_client_area
        if (!(client_area).nil?)
          client_area.attr_x = content_rect.attr_left
          client_area.attr_y = content_rect.attr_top
          client_area.attr_width = content_rect.attr_right - content_rect.attr_left
          client_area.attr_height = content_rect.attr_bottom - content_rect.attr_top
        end
        OS._close_theme_data(h_theme)
        h_theme = OS._open_theme_data(0, get_class_id)
        width = OS._get_theme_sys_size(h_theme, OS::SM_CXVSCROLL)
        rect.attr_left = content_rect.attr_right - width
        rect.attr_top = content_rect.attr_top
        rect.attr_right = content_rect.attr_right
        rect.attr_bottom = content_rect.attr_bottom
        part = get_part_id(DrawData::COMBO_ARROW)
        OS._draw_theme_background(h_theme, gc.attr_handle, part[0], part[1], rect, nil)
        OS._close_theme_data(h_theme)
        if (!(client_area).nil?)
          client_area.attr_width -= width
        end
      end
    end
    
    typesig { [] }
    def get_class_id
      return COMBOBOX
    end
    
    typesig { [::Java::Int] }
    def get_part_id(part)
      state = self.attr_state[part]
      i_part_id = 0
      i_state_id = 0
      case (part)
      when DrawData::WIDGET_WHOLE
        i_part_id = OS::EP_EDITTEXT
        i_state_id = OS::ETS_NORMAL
        if (!((state & DrawData::DISABLED)).equal?(0))
          i_state_id = OS::ETS_DISABLED
        end
      when DrawData::COMBO_ARROW
        i_part_id = OS::CP_DROPDOWNBUTTON
        i_state_id = OS::CBXS_NORMAL
        if (!((state & DrawData::DISABLED)).equal?(0))
          i_state_id = OS::CBXS_DISABLED
        end
        if (!((state & DrawData::HOT)).equal?(0))
          i_state_id = OS::CBXS_HOT
        end
        if (!((state & DrawData::PRESSED)).equal?(0))
          i_state_id = OS::CBXS_PRESSED
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
      h_theme = OS._open_theme_data(0, EDIT)
      part = get_part_id(DrawData::WIDGET_WHOLE)
      i_part_id = part[0]
      i_state_id = part[1]
      rect = RECT.new
      rect.attr_left = bounds.attr_x
      rect.attr_right = bounds.attr_x + bounds.attr_width
      rect.attr_top = bounds.attr_y
      rect.attr_bottom = bounds.attr_y + bounds.attr_height
      content_rect = RECT.new
      OS._get_theme_background_content_rect(h_theme, 0, i_part_id, i_state_id, rect, content_rect)
      OS._close_theme_data(h_theme)
      h_theme = OS._open_theme_data(0, get_class_id)
      width = OS._get_theme_sys_size(h_theme, OS::SM_CXVSCROLL)
      OS._close_theme_data(h_theme)
      arrow_rect = Rectangle.new(content_rect.attr_right - width, content_rect.attr_top, content_rect.attr_bottom - content_rect.attr_top, width)
      if (arrow_rect.contains(position))
        return DrawData::COMBO_ARROW
      end
      return DrawData::WIDGET_WHOLE
    end
    
    private
    alias_method :initialize__combo_draw_data, :initialize
  end
  
end
