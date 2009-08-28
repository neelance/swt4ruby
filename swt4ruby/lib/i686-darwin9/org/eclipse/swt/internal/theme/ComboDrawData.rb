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
  module ComboDrawDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGRect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HIThemeButtonDrawInfo
    }
  end
  
  class ComboDrawData < ComboDrawDataImports.const_get :DrawData
    include_class_members ComboDrawDataImports
    
    typesig { [] }
    def initialize
      super()
      self.attr_state = Array.typed(::Java::Int).new(2) { 0 }
    end
    
    typesig { [] }
    def get_info
      state = self.attr_state[DrawData::WIDGET_WHOLE]
      info = HIThemeButtonDrawInfo.new
      info.attr_version = 0
      info.attr_kind = OS.attr_k_theme_combo_box
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        info.attr_kind = OS.attr_k_theme_popup_button
      end
      if (!((state & DrawData::DISABLED)).equal?(0))
        info.attr_state = !((state & DrawData::ACTIVE)).equal?(0) ? OS.attr_k_theme_state_unavailable : OS.attr_k_theme_state_unavailable_inactive
      else
        if ((!((self.attr_style & SWT::READ_ONLY)).equal?(0) && !((state & DrawData::PRESSED)).equal?(0)) || (((self.attr_style & SWT::READ_ONLY)).equal?(0) && !((self.attr_state[DrawData::COMBO_ARROW] & DrawData::PRESSED)).equal?(0)))
          info.attr_state = OS.attr_k_theme_state_pressed
        else
          info.attr_state = !((state & DrawData::ACTIVE)).equal?(0) ? OS.attr_k_theme_state_active : OS.attr_k_theme_state_inactive
        end
      end
      if (!((state & DrawData::FOCUSED)).equal?(0))
        info.attr_adornment |= OS.attr_k_theme_adornment_focus
      end
      return info
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      info = get_info
      rect = CGRect.new
      rect.attr_x = bounds.attr_x
      rect.attr_y = bounds.attr_y
      rect.attr_width = bounds.attr_width
      rect.attr_height = bounds.attr_height
      inset = 0
      arrow_width = 0
      if (((self.attr_style & SWT::READ_ONLY)).equal?(0))
        metric = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_theme_metric(OS.attr_k_theme_metric_focus_rect_outset, metric)
        inset = metric[0]
        OS._get_theme_metric(OS.attr_k_theme_metric_combo_box_large_disclosure_width, metric)
        arrow_width = metric[0]
        rect.attr_x += inset
        rect.attr_y += inset
        rect.attr_width -= 2 * inset
        rect.attr_height -= 2 * inset
      else
        back_rect = CGRect.new
        OS._hitheme_get_button_background_bounds(rect, info, back_rect)
        rect.attr_x += (rect.attr_x - back_rect.attr_x)
        rect.attr_y += (rect.attr_y - back_rect.attr_y)
        rect.attr_width -= (back_rect.attr_width - rect.attr_width)
        rect.attr_height -= (back_rect.attr_height - rect.attr_height)
      end
      label_rect = !(self.attr_client_area).nil? && !((self.attr_style & SWT::READ_ONLY)).equal?(0) ? CGRect.new : nil
      OS._hitheme_draw_button(rect, info, gc.attr_handle, OS.attr_k_hitheme_orientation_normal, label_rect)
      if (!(self.attr_client_area).nil?)
        if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
          self.attr_client_area.attr_x = RJava.cast_to_int(label_rect.attr_x)
          self.attr_client_area.attr_y = RJava.cast_to_int(label_rect.attr_y)
          self.attr_client_area.attr_width = RJava.cast_to_int(label_rect.attr_width)
          self.attr_client_area.attr_height = RJava.cast_to_int(label_rect.attr_height)
        else
          self.attr_client_area.attr_x = RJava.cast_to_int(bounds.attr_x) + inset
          self.attr_client_area.attr_y = RJava.cast_to_int(bounds.attr_y) + inset
          self.attr_client_area.attr_width = RJava.cast_to_int(bounds.attr_width) - (2 * inset) - arrow_width
          self.attr_client_area.attr_height = RJava.cast_to_int(bounds.attr_height) - (2 * inset)
        end
      end
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      if (!bounds.contains(position))
        return DrawData::WIDGET_NOWHERE
      end
      if (((self.attr_style & SWT::READ_ONLY)).equal?(0))
        metric = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_theme_metric(OS.attr_k_theme_metric_focus_rect_outset, metric)
        inset = metric[0]
        OS._get_theme_metric(OS.attr_k_theme_metric_combo_box_large_disclosure_width, metric)
        arrow_width = metric[0]
        arrow_rect = Rectangle.new(bounds.attr_x + bounds.attr_width - inset - arrow_width, bounds.attr_y - inset, arrow_width, bounds.attr_height - inset * 2)
        if (arrow_rect.contains(position))
          return DrawData::COMBO_ARROW
        end
      end
      return DrawData::WIDGET_WHOLE
    end
    
    private
    alias_method :initialize__combo_draw_data, :initialize
  end
  
end
