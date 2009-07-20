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
  module GroupDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class GroupDrawData < GroupDrawDataImports.const_get :DrawData
    include_class_members GroupDrawDataImports
    
    attr_accessor :header_width
    alias_method :attr_header_width, :header_width
    undef_method :header_width
    alias_method :attr_header_width=, :header_width=
    undef_method :header_width=
    
    attr_accessor :header_height
    alias_method :attr_header_height, :header_height
    undef_method :header_height
    alias_method :attr_header_height=, :header_height=
    undef_method :header_height=
    
    attr_accessor :header_area
    alias_method :attr_header_area, :header_area
    undef_method :header_area
    alias_method :attr_header_area=, :header_area=
    undef_method :header_area=
    
    typesig { [] }
    def initialize
      @header_width = 0
      @header_height = 0
      @header_area = nil
      super()
      self.attr_state = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    class_module.module_eval {
      const_set_lazy(:GROUP_HEADER_X) { 9 }
      const_attr_reader  :GROUP_HEADER_X
      
      const_set_lazy(:GROUP_HEADER_PAD) { 2 }
      const_attr_reader  :GROUP_HEADER_PAD
    }
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        # long
        h_theme = OS._open_theme_data(0, get_class_id)
        rect = RECT.new
        rect.attr_left = bounds.attr_x
        rect.attr_right = bounds.attr_x + bounds.attr_width
        rect.attr_top = bounds.attr_y + @header_height / 2
        rect.attr_bottom = bounds.attr_y + bounds.attr_height
        header_x = bounds.attr_x + GROUP_HEADER_X
        header_y = bounds.attr_y
        saved_dc = OS._save_dc(gc.attr_handle)
        OS._exclude_clip_rect(gc.attr_handle, header_x - GROUP_HEADER_PAD, header_y, header_x + @header_width + GROUP_HEADER_PAD, header_y + @header_height)
        part = get_part_id(DrawData::WIDGET_WHOLE)
        OS._draw_theme_background(h_theme, gc.attr_handle, part[0], part[1], rect, nil)
        OS._restore_dc(gc.attr_handle, saved_dc)
        header_area = @header_area
        if (!(header_area).nil?)
          header_area.attr_x = header_x
          header_area.attr_y = header_y
          header_area.attr_width = @header_width
          header_area.attr_height = @header_height
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
    
    typesig { [::Java::Int] }
    def get_part_id(part)
      state = self.attr_state[part]
      i_part_id = OS::BP_GROUPBOX
      i_state_id = OS::GBS_NORMAL
      if (!((state & DrawData::DISABLED)).equal?(0))
        i_state_id = OS::GBS_DISABLED
      end
      return Array.typed(::Java::Int).new([i_part_id, i_state_id])
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      return bounds.contains(position) ? DrawData::WIDGET_WHOLE : DrawData::WIDGET_NOWHERE
    end
    
    private
    alias_method :initialize__group_draw_data, :initialize
  end
  
end
