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
  module TabItemDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HIThemeTabDrawInfo
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGRect
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
    
    typesig { [] }
    def initialize
      @parent = nil
      @position = 0
      super()
      self.attr_state = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    typesig { [Theme, SwtGC] }
    def compute_trim(theme, gc)
      metric = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_theme_metric(OS.attr_k_theme_metric_large_tab_caps_width, metric)
      x = self.attr_client_area.attr_x - metric[0]
      y = self.attr_client_area.attr_y - metric[0]
      width = self.attr_client_area.attr_width + metric[0] * 2
      height = self.attr_client_area.attr_height + metric[0] * 2
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      rect = CGRect.new
      rect.attr_x = bounds.attr_x
      rect.attr_y = bounds.attr_y
      rect.attr_width = bounds.attr_width
      rect.attr_height = bounds.attr_height
      label_rect = !(self.attr_client_area).nil? ? CGRect.new : nil
      info = get_info
      OS._hitheme_draw_tab(rect, info, gc.attr_handle, OS.attr_k_hitheme_orientation_normal, label_rect)
      if (!(self.attr_client_area).nil?)
        self.attr_client_area.attr_x = RJava.cast_to_int(label_rect.attr_x)
        self.attr_client_area.attr_y = RJava.cast_to_int(label_rect.attr_y)
        self.attr_client_area.attr_width = RJava.cast_to_int(label_rect.attr_width)
        self.attr_client_area.attr_height = RJava.cast_to_int(label_rect.attr_height)
      end
    end
    
    typesig { [] }
    def get_info
      state = self.attr_state[DrawData::WIDGET_WHOLE]
      info = HIThemeTabDrawInfo.new
      info.attr_version = 1
      if (((state & DrawData::DISABLED)).equal?(0))
        if (!((state & DrawData::ACTIVE)).equal?(0))
          if (!((state & DrawData::SELECTED)).equal?(0))
            info.attr_style = OS.attr_k_theme_tab_front
          else
            if (!((state & DrawData::PRESSED)).equal?(0))
              info.attr_style = OS.attr_k_theme_tab_non_front_pressed
            else
              info.attr_style = OS.attr_k_theme_tab_non_front
            end
          end
        else
          if (!((state & DrawData::SELECTED)).equal?(0))
            info.attr_style = OS.attr_k_theme_tab_front_inactive
          else
            info.attr_style = OS.attr_k_theme_tab_non_front_inactive
          end
        end
      else
        if (!((state & DrawData::ACTIVE)).equal?(0))
          info.attr_style = OS.attr_k_theme_tab_front_unavailable
        else
          info.attr_style = OS.attr_k_theme_tab_non_front_unavailable
        end
      end
      info.attr_direction = OS.attr_k_theme_tab_north
      if (!((@parent.attr_style & SWT::BOTTOM)).equal?(0))
        info.attr_direction = OS.attr_k_theme_tab_south
      end
      if (!((@parent.attr_style & SWT::TOP)).equal?(0))
        info.attr_direction = OS.attr_k_theme_tab_north
      end
      info.attr_size = 0
      if (!((state & DrawData::FOCUSED)).equal?(0))
        info.attr_adornment = OS.attr_k_hitheme_tab_adornment_focus
      end
      info.attr_adornment |= OS.attr_k_hitheme_tab_adornment_trailing_separator
      info.attr_position = OS.attr_k_hitheme_tab_position_middle
      if (!((@position & SWT::RIGHT)).equal?(0) && !((@position & SWT::LEFT)).equal?(0))
        info.attr_position = OS.attr_k_hitheme_tab_position_only
      else
        if (!((@position & SWT::LEFT)).equal?(0))
          info.attr_position = OS.attr_k_hitheme_tab_position_first
          info.attr_adornment |= OS.attr_k_hitheme_tab_adornment_trailing_separator
        else
          if (!((@position & SWT::RIGHT)).equal?(0))
            info.attr_position = OS.attr_k_hitheme_tab_position_last
          end
        end
      end
      return info
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      if (!bounds.contains(position))
        return DrawData::WIDGET_NOWHERE
      end
      return DrawData::WIDGET_WHOLE
    end
    
    private
    alias_method :initialize__tab_item_draw_data, :initialize
  end
  
end
