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
  module ButtonDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class ButtonDrawData < ButtonDrawDataImports.const_get :DrawData
    include_class_members ButtonDrawDataImports
    
    typesig { [] }
    def initialize
      super()
      self.attr_state = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    typesig { [::Java::Int] }
    def get_part_id(part)
      state = self.attr_state[part]
      style = self.attr_style
      i_part_id = 0
      i_state_id = 0
      if (!((style & SWT::PUSH)).equal?(0))
        i_part_id = OS::BP_PUSHBUTTON
        i_state_id = OS::PBS_NORMAL
        if (!((state & DrawData::DEFAULTED)).equal?(0) && !((state & DrawData::ACTIVE)).equal?(0))
          i_state_id = OS::PBS_DEFAULTED
        end
        if (!((state & DrawData::HOT)).equal?(0))
          i_state_id = OS::PBS_HOT
        end
        if (!((state & DrawData::PRESSED)).equal?(0))
          i_state_id = OS::PBS_PRESSED
        end
        if (!((state & DrawData::DISABLED)).equal?(0))
          i_state_id = OS::PBS_DISABLED
        end
      end
      if (!((style & SWT::RADIO)).equal?(0))
        i_part_id = OS::BP_RADIOBUTTON
      end
      if (!((style & SWT::CHECK)).equal?(0))
        i_part_id = OS::BP_CHECKBOX
      end
      if (!((style & (SWT::CHECK | SWT::RADIO))).equal?(0))
        if (!((state & DrawData::SELECTED)).equal?(0))
          i_state_id = OS::CBS_CHECKEDNORMAL
          if (!((state & DrawData::HOT)).equal?(0))
            i_state_id = OS::CBS_CHECKEDHOT
          end
          if (!((state & DrawData::PRESSED)).equal?(0))
            i_state_id = OS::CBS_CHECKEDPRESSED
          end
          if (!((state & DrawData::DISABLED)).equal?(0))
            i_state_id = OS::CBS_CHECKEDDISABLED
          end
        else
          i_state_id = OS::CBS_UNCHECKEDNORMAL
          if (!((state & DrawData::HOT)).equal?(0))
            i_state_id = OS::CBS_UNCHECKEDHOT
          end
          if (!((state & DrawData::PRESSED)).equal?(0))
            i_state_id = OS::CBS_UNCHECKEDPRESSED
          end
          if (!((state & DrawData::DISABLED)).equal?(0))
            i_state_id = OS::CBS_UNCHECKEDDISABLED
          end
        end
      end
      return Array.typed(::Java::Int).new([i_part_id, i_state_id])
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        # TODO - arrow and toggle
        # long
        h_theme = OS._open_theme_data(0, get_class_id)
        rect = RECT.new
        rect.attr_left = bounds.attr_x
        rect.attr_right = bounds.attr_x + bounds.attr_width
        rect.attr_top = bounds.attr_y
        rect.attr_bottom = bounds.attr_y + bounds.attr_height
        part = get_part_id(DrawData::WIDGET_WHOLE)
        if (!((self.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0))
          size = SIZE.new
          OS._get_theme_part_size(h_theme, gc.attr_handle, part[0], part[1], rect, 2, size)
          rect.attr_right = rect.attr_left + size.attr_cx
          OS._draw_theme_background(h_theme, gc.attr_handle, part[0], part[1], rect, nil)
          rect.attr_left = rect.attr_right + 3
          rect.attr_right = rect.attr_left + bounds.attr_width - size.attr_cx - 3
        else
          OS._draw_theme_background(h_theme, gc.attr_handle, part[0], part[1], rect, nil)
        end
        client_area = self.attr_client_area
        if (!(client_area).nil?)
          content_rect = RECT.new
          OS._get_theme_background_content_rect(h_theme, gc.attr_handle, part[0], part[1], rect, content_rect)
          client_area.attr_x = content_rect.attr_left
          client_area.attr_y = content_rect.attr_top
          client_area.attr_width = content_rect.attr_right - content_rect.attr_left
          client_area.attr_height = content_rect.attr_bottom - content_rect.attr_top
        end
        OS._close_theme_data(h_theme)
      end
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
      OS._close_theme_data(h_theme)
      return (code[0]).equal?(OS::HTNOWHERE) ? DrawData::WIDGET_NOWHERE : DrawData::WIDGET_WHOLE
    end
    
    private
    alias_method :initialize__button_draw_data, :initialize
  end
  
end
