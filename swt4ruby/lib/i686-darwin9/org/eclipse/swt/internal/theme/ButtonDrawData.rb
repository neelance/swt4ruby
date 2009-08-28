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
  module ButtonDrawDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HIThemeButtonDrawInfo
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGRect
    }
  end
  
  class ButtonDrawData < ButtonDrawDataImports.const_get :DrawData
    include_class_members ButtonDrawDataImports
    
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
      if (!((self.attr_style & SWT::PUSH)).equal?(0))
        info.attr_kind = OS.attr_k_theme_push_button
      end
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        info.attr_kind = OS.attr_k_theme_check_box
      end
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        info.attr_kind = OS.attr_k_theme_radio_button
      end
      if (!((state & DrawData::SELECTED)).equal?(0))
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
      if (!((state & DrawData::DEFAULTED)).equal?(0))
        info.attr_adornment |= OS.attr_k_theme_adornment_default
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
      back_rect = CGRect.new
      OS._hitheme_get_button_background_bounds(rect, info, back_rect)
      rect.attr_x += (rect.attr_x - back_rect.attr_x)
      rect.attr_y += (rect.attr_y - back_rect.attr_y)
      rect.attr_width -= (back_rect.attr_width - rect.attr_width)
      rect.attr_height -= (back_rect.attr_height - rect.attr_height)
      label_rect = !(self.attr_client_area).nil? ? CGRect.new : nil
      OS._hitheme_draw_button(rect, info, gc.attr_handle, OS.attr_k_hitheme_orientation_normal, label_rect)
      if (!(self.attr_client_area).nil?)
        self.attr_client_area.attr_x = RJava.cast_to_int(label_rect.attr_x)
        self.attr_client_area.attr_y = RJava.cast_to_int(label_rect.attr_y)
        self.attr_client_area.attr_width = RJava.cast_to_int(label_rect.attr_width)
        self.attr_client_area.attr_height = RJava.cast_to_int(label_rect.attr_height)
      end
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
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
      rect.attr_width -= (back_rect.attr_width - rect.attr_width)
      rect.attr_height -= (back_rect.attr_height - rect.attr_height)
      return Rectangle.new(RJava.cast_to_int(rect.attr_x), RJava.cast_to_int(rect.attr_y), RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height)).contains(position) ? DrawData::WIDGET_WHOLE : DrawData::WIDGET_NOWHERE
    end
    
    private
    alias_method :initialize__button_draw_data, :initialize
  end
  
end
