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
  module TabItemDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class TabItemDrawData < TabItemDrawDataImports.const_get :DrawData
    include_class_members TabItemDrawDataImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :position
    alias_method :attr_position, :position
    undef_method :position
    alias_method :attr_position=, :position=
    undef_method :position=
    
    class_module.module_eval {
      const_set_lazy(:TABITEM_INSET) { 2 }
      const_attr_reader  :TABITEM_INSET
      
      const_set_lazy(:TABITEM_INSET2) { 6 }
      const_attr_reader  :TABITEM_INSET2
    }
    
    typesig { [] }
    def initialize
      @parent = nil
      @position = 0
      super()
      self.attr_state = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    typesig { [Theme, SwtGC] }
    def compute_trim(theme, gc)
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        # long
        h_theme = OS._open_theme_data(0, get_class_id)
        x = self.attr_client_area.attr_x
        y = self.attr_client_area.attr_y
        width = self.attr_client_area.attr_width
        height = self.attr_client_area.attr_height
        if (!((self.attr_style & SWT::LEFT)).equal?(0))
          x -= TABITEM_INSET
          width += TABITEM_INSET
        end
        y -= TABITEM_INSET
        height += TABITEM_INSET
        rect = RECT.new
        rect.attr_left = x
        rect.attr_right = x + width
        rect.attr_top = y
        rect.attr_bottom = y + height
        extent = RECT.new
        part = get_part_id(DrawData::WIDGET_WHOLE)
        OS._get_theme_background_extent(h_theme, gc.attr_handle, part[0], part[1], rect, extent)
        extent.attr_left -= TABITEM_INSET2
        extent.attr_top -= TABITEM_INSET2
        extent.attr_right += TABITEM_INSET2
        OS._close_theme_data(h_theme)
        return Rectangle.new(extent.attr_left, extent.attr_top, extent.attr_right - extent.attr_left, extent.attr_bottom - extent.attr_top)
      end
      return Rectangle.new(0, 0, 0, 0)
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        state = self.attr_state[DrawData::WIDGET_WHOLE]
        # long
        h_theme = OS._open_theme_data(0, get_class_id)
        x = bounds.attr_x
        y = bounds.attr_y
        width = bounds.attr_width
        height = bounds.attr_height
        if (!((@position & SWT::LEFT)).equal?(0))
          x += TABITEM_INSET
          width -= TABITEM_INSET
        end
        y += TABITEM_INSET
        height -= TABITEM_INSET
        if (!((state & DrawData::SELECTED)).equal?(0))
          # TODO - draws outside of bounds
          x -= TABITEM_INSET
          y -= TABITEM_INSET
          width += TABITEM_INSET * 2
          height += TABITEM_INSET * 2
        end
        rect = RECT.new
        rect.attr_left = x
        rect.attr_right = x + width
        rect.attr_top = y
        rect.attr_bottom = y + height
        part = get_part_id(DrawData::WIDGET_WHOLE)
        OS._draw_theme_background(h_theme, gc.attr_handle, part[0], part[1], rect, nil)
        OS._close_theme_data(h_theme)
        client_area = self.attr_client_area
        if (!(client_area).nil?)
          content_rect = RECT.new
          OS._get_theme_background_content_rect(h_theme, gc.attr_handle, part[0], part[1], rect, content_rect)
          client_area.attr_x = content_rect.attr_left
          client_area.attr_y = content_rect.attr_top
          client_area.attr_width = content_rect.attr_right - content_rect.attr_left
          client_area.attr_height = content_rect.attr_bottom - content_rect.attr_top
        end
      end
    end
    
    typesig { [] }
    def get_class_id
      return TAB
    end
    
    typesig { [::Java::Int] }
    def get_part_id(part)
      state = self.attr_state[part]
      i_part_id = OS::TABP_TABITEM
      i_state_id = OS::TIS_NORMAL
      if (!((self.attr_style & SWT::LEFT)).equal?(0) && !((self.attr_style & SWT::RIGHT)).equal?(0))
        i_part_id = OS::TABP_TABITEMLEFTEDGE
      else
        if (!((self.attr_style & SWT::LEFT)).equal?(0))
          i_part_id = OS::TABP_TABITEMLEFTEDGE
        else
          if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          end
        end
      end
      if (!((state & DrawData::HOT)).equal?(0))
        i_state_id = OS::TIS_HOT
      end
      if (!((state & DrawData::FOCUSED)).equal?(0))
        i_state_id = OS::TIS_FOCUSED
      end
      if (!((state & DrawData::SELECTED)).equal?(0))
        i_state_id = OS::TIS_SELECTED
      end
      if (!((state & DrawData::DISABLED)).equal?(0))
        i_state_id = OS::TIS_DISABLED
      end
      return Array.typed(::Java::Int).new([i_part_id, i_state_id])
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      if (!bounds.contains(position))
        return DrawData::WIDGET_NOWHERE
      end
      style = self.attr_style
      x = bounds.attr_x
      y = bounds.attr_y
      width = bounds.attr_width
      height = bounds.attr_height
      if (!((style & SWT::LEFT)).equal?(0))
        x += TABITEM_INSET
        width -= TABITEM_INSET
      end
      y += TABITEM_INSET
      height -= TABITEM_INSET
      content = Rectangle.new(x, y, width, height)
      if (!content.contains(position))
        return DrawData::WIDGET_NOWHERE
      end
      return DrawData::WIDGET_WHOLE
    end
    
    private
    alias_method :initialize__tab_item_draw_data, :initialize
  end
  
end
