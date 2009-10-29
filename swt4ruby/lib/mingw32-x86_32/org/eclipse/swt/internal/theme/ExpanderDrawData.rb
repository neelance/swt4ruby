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
  module ExpanderDrawDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class ExpanderDrawData < ExpanderDrawDataImports.const_get :DrawData
    include_class_members ExpanderDrawDataImports
    
    typesig { [] }
    def initialize
      super()
      self.attr_state = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        # long
        h_theme = OS._open_theme_data(0, get_class_id)
        i_state_id = OS::GLPS_CLOSED
        if (!((self.attr_style & SWT::DOWN)).equal?(0))
          i_state_id = OS::GLPS_OPENED
        end
        size = SIZE.new
        OS._get_theme_part_size(h_theme, gc.attr_handle, OS::TVP_GLYPH, i_state_id, nil, OS::TS_TRUE, size)
        rect = RECT.new
        rect.attr_left = bounds.attr_x
        rect.attr_right = rect.attr_left + size.attr_cx
        rect.attr_top = bounds.attr_y
        rect.attr_bottom = rect.attr_top + size.attr_cy
        OS._draw_theme_background(h_theme, gc.attr_handle, OS::TVP_GLYPH, i_state_id, rect, nil)
        OS._close_theme_data(h_theme)
      end
    end
    
    typesig { [] }
    def get_class_id
      return TREEVIEW
    end
    
    typesig { [::Java::Int] }
    def get_part_id(part)
      i_part_id = OS::TVP_GLYPH
      i_state_id = OS::GLPS_CLOSED
      if (!((self.attr_style & SWT::DOWN)).equal?(0))
        i_state_id = OS::GLPS_OPENED
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
      size = SIZE.new
      part = get_part_id(DrawData::WIDGET_WHOLE)
      OS._get_theme_part_size(h_theme, 0, part[0], part[1], nil, OS::TS_TRUE, size)
      OS._close_theme_data(h_theme)
      if (Rectangle.new(bounds.attr_x, bounds.attr_y, size.attr_cx, size.attr_cy).contains(position))
        return DrawData::WIDGET_WHOLE
      end
      return DrawData::WIDGET_NOWHERE
    end
    
    private
    alias_method :initialize__expander_draw_data, :initialize
  end
  
end
