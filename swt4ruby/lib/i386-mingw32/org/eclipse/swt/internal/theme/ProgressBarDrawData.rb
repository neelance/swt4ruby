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
  module ProgressBarDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class ProgressBarDrawData < ProgressBarDrawDataImports.const_get :RangeDrawData
    include_class_members ProgressBarDrawDataImports
    
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
        rect = RECT.new
        rect.attr_left = bounds.attr_x
        rect.attr_right = rect.attr_left + bounds.attr_width
        rect.attr_top = bounds.attr_y
        rect.attr_bottom = rect.attr_top + bounds.attr_height
        buffer = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_theme_int(h_theme, 0, 0, OS::PROGRESSCHUNKSIZE, buffer)
        chunk_size = buffer[0]
        OS._get_theme_int(h_theme, 0, 0, OS::PROGRESSSPACESIZE, buffer)
        space_size = buffer[0]
        content = RECT.new
        part = get_part_id(DrawData::WIDGET_WHOLE)
        if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
          OS._get_theme_background_content_rect(h_theme, gc.attr_handle, part[0], part[1], rect, content)
          OS._draw_theme_background(h_theme, gc.attr_handle, part[0], part[1], rect, nil)
          top = content.attr_bottom - (((content.attr_bottom - content.attr_top) * (self.attr_selection - self.attr_minimum)) / (self.attr_maximum - self.attr_minimum))
          content.attr_top = content.attr_bottom - chunk_size
          while (content.attr_top >= top)
            OS._draw_theme_background(h_theme, gc.attr_handle, OS::PP_CHUNKVERT, 0, content, nil)
            content.attr_bottom -= chunk_size + space_size
            content.attr_top = content.attr_bottom - chunk_size
          end
          if (!(self.attr_selection).equal?(0))
            OS._draw_theme_background(h_theme, gc.attr_handle, OS::PP_CHUNKVERT, 0, content, nil)
          end
        else
          OS._get_theme_background_content_rect(h_theme, gc.attr_handle, part[0], part[1], rect, content)
          OS._draw_theme_background(h_theme, gc.attr_handle, part[0], part[1], rect, nil)
          right = content.attr_left + (((content.attr_right - content.attr_left) * (self.attr_selection - self.attr_minimum)) / (self.attr_maximum - self.attr_minimum))
          content.attr_right = content.attr_left + chunk_size
          while (content.attr_right <= right)
            OS._draw_theme_background(h_theme, gc.attr_handle, OS::PP_CHUNK, 0, content, nil)
            content.attr_left += chunk_size + space_size
            content.attr_right = content.attr_left + chunk_size
          end
          if (!(self.attr_selection).equal?(0))
            OS._draw_theme_background(h_theme, gc.attr_handle, OS::PP_CHUNK, 0, content, nil)
          end
        end
        OS._close_theme_data(h_theme)
      end
    end
    
    typesig { [] }
    def get_class_id
      return PROGRESS
    end
    
    typesig { [::Java::Int] }
    def get_part_id(part)
      i_part_id = 0
      i_state_id = 0
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        i_part_id = OS::PP_BARVERT
      else
        i_part_id = OS::PP_BAR
      end
      return Array.typed(::Java::Int).new([i_part_id, i_state_id])
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      return bounds.contains(position) ? DrawData::WIDGET_WHOLE : DrawData::WIDGET_NOWHERE
    end
    
    private
    alias_method :initialize__progress_bar_draw_data, :initialize
  end
  
end
