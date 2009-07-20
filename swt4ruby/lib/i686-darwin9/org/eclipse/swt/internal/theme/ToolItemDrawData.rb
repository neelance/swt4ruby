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
  module ToolItemDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGRect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HIThemeSeparatorDrawInfo
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HIThemePopupArrowDrawInfo
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
      const_set_lazy(:ARROW_WIDTH) { 9 }
      const_attr_reader  :ARROW_WIDTH
      
      const_set_lazy(:INSET) { 3 }
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
      x = self.attr_client_area.attr_x - INSET
      y = self.attr_client_area.attr_y - INSET
      width = self.attr_client_area.attr_width + INSET * 2
      height = self.attr_client_area.attr_height + INSET * 2
      if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
        width += ARROW_WIDTH
      end
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      rect = CGRect.new
      rect.attr_x = bounds.attr_x
      rect.attr_y = bounds.attr_y
      rect.attr_width = bounds.attr_width
      rect.attr_height = bounds.attr_height
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        info = get_separator_info
        OS._hitheme_draw_separator(rect, info, gc.attr_handle, OS.attr_k_hitheme_orientation_normal)
      else
        if (!((self.attr_state[DrawData::WIDGET_WHOLE] & DrawData::SELECTED)).equal?(0))
          OS._cgcontext_save_gstate(gc.attr_handle)
          OS._cgcontext_set_fill_color(gc.attr_handle, Array.typed(::Java::Float).new([0.025, 0.025, 0.025, 0.025]))
          OS._cgcontext_fill_rect(gc.attr_handle, rect)
          OS._cgcontext_set_stroke_color(gc.attr_handle, Array.typed(::Java::Float).new([0.2, 0.2, 0.2, 0.2]))
          rect.attr_x += 0.5
          rect.attr_y += 0.5
          rect.attr_width -= 1
          rect.attr_height -= 1
          OS._cgcontext_stroke_rect(gc.attr_handle, rect)
          OS._cgcontext_restore_gstate(gc.attr_handle)
        end
      end
      if (!(self.attr_client_area).nil?)
        self.attr_client_area.attr_x = bounds.attr_x
        self.attr_client_area.attr_y = bounds.attr_y
        self.attr_client_area.attr_width = bounds.attr_width
        self.attr_client_area.attr_height = bounds.attr_height
      end
      if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
        rect.attr_y = bounds.attr_y + rect.attr_height / 2 - 1
        rect.attr_x = bounds.attr_x + rect.attr_width - ARROW_WIDTH
        info = get_arrow_info
        OS._hitheme_draw_popup_arrow(rect, info, gc.attr_handle, OS.attr_k_hitheme_orientation_normal)
        if (!(self.attr_client_area).nil?)
          self.attr_client_area.attr_width -= ARROW_WIDTH
        end
      end
    end
    
    typesig { [] }
    def get_arrow_info
      info = HIThemePopupArrowDrawInfo.new
      state = self.attr_state[DrawData::TOOLITEM_ARROW]
      if (!((state & DrawData::PRESSED)).equal?(0))
        info.attr_state = OS.attr_k_theme_state_pressed
      else
        if (!((state & DrawData::ACTIVE)).equal?(0))
          info.attr_state = ((state & DrawData::DISABLED)).equal?(0) ? OS.attr_k_theme_state_active : OS.attr_k_theme_state_unavailable
        else
          info.attr_state = ((state & DrawData::DISABLED)).equal?(0) ? OS.attr_k_theme_state_inactive : OS.attr_k_theme_state_unavailable_inactive
        end
      end
      info.attr_orientation = RJava.cast_to_short(OS.attr_k_theme_arrow_down)
      info.attr_size = RJava.cast_to_short(OS.attr_k_theme_arrow5pt)
      return info
    end
    
    typesig { [] }
    def get_separator_info
      info = HIThemeSeparatorDrawInfo.new
      state = self.attr_state[DrawData::WIDGET_WHOLE]
      if (!((state & DrawData::ACTIVE)).equal?(0))
        info.attr_state = ((state & DrawData::DISABLED)).equal?(0) ? OS.attr_k_theme_state_active : OS.attr_k_theme_state_unavailable
      else
        info.attr_state = ((state & DrawData::DISABLED)).equal?(0) ? OS.attr_k_theme_state_inactive : OS.attr_k_theme_state_unavailable_inactive
      end
      return info
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      if (!bounds.contains(position))
        return DrawData::WIDGET_NOWHERE
      end
      if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
        if (bounds.attr_x + bounds.attr_width - ARROW_WIDTH <= position.attr_x)
          return DrawData::TOOLITEM_ARROW
        end
      end
      return DrawData::WIDGET_WHOLE
    end
    
    private
    alias_method :initialize__tool_item_draw_data, :initialize
  end
  
end
