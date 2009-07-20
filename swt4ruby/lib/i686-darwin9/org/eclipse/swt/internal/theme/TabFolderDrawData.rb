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
  module TabFolderDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include_const ::Org::Eclipse::Swt, :SWT
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HIThemeTabPaneDrawInfo
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGRect
    }
  end
  
  class TabFolderDrawData < TabFolderDrawDataImports.const_get :DrawData
    include_class_members TabFolderDrawDataImports
    
    attr_accessor :tabs_width
    alias_method :attr_tabs_width, :tabs_width
    undef_method :tabs_width
    alias_method :attr_tabs_width=, :tabs_width=
    undef_method :tabs_width=
    
    attr_accessor :tabs_height
    alias_method :attr_tabs_height, :tabs_height
    undef_method :tabs_height
    alias_method :attr_tabs_height=, :tabs_height=
    undef_method :tabs_height=
    
    attr_accessor :tabs_area
    alias_method :attr_tabs_area, :tabs_area
    undef_method :tabs_area
    alias_method :attr_tabs_area=, :tabs_area=
    undef_method :tabs_area=
    
    attr_accessor :selected_x
    alias_method :attr_selected_x, :selected_x
    undef_method :selected_x
    alias_method :attr_selected_x=, :selected_x=
    undef_method :selected_x=
    
    attr_accessor :selected_width
    alias_method :attr_selected_width, :selected_width
    undef_method :selected_width
    alias_method :attr_selected_width=, :selected_width=
    undef_method :selected_width=
    
    attr_accessor :spacing
    alias_method :attr_spacing, :spacing
    undef_method :spacing
    alias_method :attr_spacing=, :spacing=
    undef_method :spacing=
    
    typesig { [] }
    def initialize
      @tabs_width = 0
      @tabs_height = 0
      @tabs_area = nil
      @selected_x = 0
      @selected_width = 0
      @spacing = 0
      super()
      self.attr_state = Array.typed(::Java::Int).new(1) { 0 }
      if ((SWT.get_platform == "gtk"))
        @spacing = -2
      end
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      metric = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_theme_metric(OS.attr_k_theme_metric_large_tab_height, metric)
      tab_height = metric[0]
      OS._get_theme_metric(OS.attr_k_theme_metric_large_tab_caps_width, metric)
      caps_width = metric[0]
      rect = CGRect.new
      rect.attr_x = bounds.attr_x
      rect.attr_y = bounds.attr_y
      rect.attr_width = bounds.attr_width
      rect.attr_height = bounds.attr_height
      if (!((self.attr_style & SWT::BOTTOM)).equal?(0))
        rect.attr_height -= tab_height / 2
      else
        rect.attr_y += (caps_width + tab_height) / 2
        rect.attr_height -= (caps_width + tab_height) / 2
      end
      info = get_info
      OS._hitheme_draw_tab_pane(rect, info, gc.attr_handle, OS.attr_k_hitheme_orientation_normal)
      if (!(@tabs_area).nil?)
        @tabs_area.attr_x = bounds.attr_x + caps_width + ((bounds.attr_width - caps_width * 2) - @tabs_width) / 2
        @tabs_area.attr_y = bounds.attr_y
        @tabs_area.attr_width = bounds.attr_width - caps_width * 2
        @tabs_area.attr_height = tab_height
        if (!((self.attr_style & SWT::BOTTOM)).equal?(0))
          @tabs_area.attr_y += bounds.attr_height - tab_height
        else
          @tabs_area.attr_y += caps_width / 2
        end
      end
    end
    
    typesig { [] }
    def get_info
      state = self.attr_state[DrawData::WIDGET_WHOLE]
      info = HIThemeTabPaneDrawInfo.new
      info.attr_version = 1
      info.attr_direction = OS.attr_k_theme_tab_north
      if (!((self.attr_style & SWT::BOTTOM)).equal?(0))
        info.attr_direction = OS.attr_k_theme_tab_south
      end
      if (!((self.attr_style & SWT::TOP)).equal?(0))
        info.attr_direction = OS.attr_k_theme_tab_north
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
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      if (!bounds.contains(position))
        return DrawData::WIDGET_NOWHERE
      end
      return DrawData::WIDGET_WHOLE
    end
    
    private
    alias_method :initialize__tab_folder_draw_data, :initialize
  end
  
end
