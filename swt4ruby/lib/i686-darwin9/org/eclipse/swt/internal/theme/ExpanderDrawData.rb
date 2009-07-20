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
  module ExpanderDrawDataImports
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
  
  class ExpanderDrawData < ExpanderDrawDataImports.const_get :DrawData
    include_class_members ExpanderDrawDataImports
    
    typesig { [] }
    def initialize
      super()
      self.attr_state = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    typesig { [] }
    def get_info
      state = self.attr_state[DrawData::WIDGET_WHOLE]
      info = HIThemeButtonDrawInfo.new
      info.attr_version = 0
      info.attr_kind = OS.attr_k_theme_disclosure_triangle
      if (!((self.attr_style & SWT::DOWN)).equal?(0))
        info.attr_value = OS.attr_k_theme_button_on
      else
        info.attr_value = OS.attr_k_theme_button_off
      end
      if (!((state & DrawData::PRESSED)).equal?(0))
        info.attr_state = OS.attr_k_theme_state_pressed
      else
        if (!((state & DrawData::ACTIVE)).equal?(0))
          info.attr_state = ((state & DrawData::DISABLED)).equal?(0) ? OS.attr_k_theme_state_active : OS.attr_k_theme_state_unavailable
        else
          info.attr_state = ((state & DrawData::DISABLED)).equal?(0) ? OS.attr_k_theme_state_inactive : OS.attr_k_theme_state_unavailable_inactive
        end
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
      back_rect = CGRect.new
      OS._hitheme_get_button_background_bounds(rect, info, back_rect)
      rect.attr_x += (rect.attr_x - back_rect.attr_x)
      rect.attr_y += (rect.attr_y - back_rect.attr_y)
      metric = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_theme_metric(OS.attr_k_theme_metric_disclosure_triangle_width, metric)
      rect.attr_width = metric[0]
      OS._get_theme_metric(OS.attr_k_theme_metric_disclosure_triangle_height, metric)
      rect.attr_height = metric[0]
      OS._hitheme_draw_button(rect, info, gc.attr_handle, OS.attr_k_hitheme_orientation_normal, nil)
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      if (!bounds.contains(position))
        return DrawData::WIDGET_NOWHERE
      end
      metric = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_theme_metric(OS.attr_k_theme_metric_disclosure_triangle_width, metric)
      width = metric[0]
      OS._get_theme_metric(OS.attr_k_theme_metric_disclosure_triangle_height, metric)
      height = metric[0]
      if (Rectangle.new(bounds.attr_x, bounds.attr_y, width, height).contains(position))
        return DrawData::WIDGET_WHOLE
      end
      return DrawData::WIDGET_NOWHERE
    end
    
    private
    alias_method :initialize__expander_draw_data, :initialize
  end
  
end
