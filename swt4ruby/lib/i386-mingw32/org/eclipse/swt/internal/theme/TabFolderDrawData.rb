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
  module TabFolderDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include_const ::Org::Eclipse::Swt, :SWT
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Win32
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
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        # long
        h_theme = OS._open_theme_data(0, get_class_id)
        rect = RECT.new
        rect.attr_left = bounds.attr_x
        rect.attr_right = bounds.attr_x + bounds.attr_width
        rect.attr_top = bounds.attr_y
        if (!((self.attr_style & SWT::BOTTOM)).equal?(0))
          rect.attr_bottom = bounds.attr_y + bounds.attr_height - @tabs_height
        else
          rect.attr_top += @tabs_height
          rect.attr_bottom = bounds.attr_y + bounds.attr_height
        end
        part = get_part_id(DrawData::WIDGET_WHOLE)
        OS._draw_theme_background(h_theme, gc.attr_handle, part[0], part[1], rect, nil)
        OS._close_theme_data(h_theme)
        if (!(@tabs_area).nil?)
          @tabs_area.attr_x = bounds.attr_x
          @tabs_area.attr_y = bounds.attr_y
          @tabs_area.attr_width = bounds.attr_width
          @tabs_area.attr_height = @tabs_height
          if (!((self.attr_style & SWT::BOTTOM)).equal?(0))
            @tabs_area.attr_y += bounds.attr_height - @tabs_height
          end
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
      i_part_id = OS::TABP_PANE
      i_state_id = OS::TIS_NORMAL
      if (!((state & DrawData::DISABLED)).equal?(0))
        i_state_id = OS::TIS_DISABLED
      else
        if (!((state & DrawData::HOT)).equal?(0))
          i_state_id = OS::TIS_HOT
        end
        if (!((state & DrawData::SELECTED)).equal?(0))
          i_state_id = OS::TIS_SELECTED
        end
      end
      return Array.typed(::Java::Int).new([i_part_id, i_state_id])
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
