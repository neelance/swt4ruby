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
  module ScaleDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  class ScaleDrawData < ScaleDrawDataImports.const_get :RangeDrawData
    include_class_members ScaleDrawDataImports
    
    attr_accessor :increment
    alias_method :attr_increment, :increment
    undef_method :increment
    alias_method :attr_increment=, :increment=
    undef_method :increment=
    
    attr_accessor :page_increment
    alias_method :attr_page_increment, :page_increment
    undef_method :page_increment
    alias_method :attr_page_increment=, :page_increment=
    undef_method :page_increment=
    
    class_module.module_eval {
      const_set_lazy(:TICS_MARGIN) { 10 }
      const_attr_reader  :TICS_MARGIN
    }
    
    typesig { [] }
    def initialize
      @increment = 0
      @page_increment = 0
      super()
      self.attr_state = Array.typed(::Java::Int).new(4) { 0 }
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        # TODO - drawScale not done
        style = self.attr_style
        minimum = self.attr_minimum
        maximum = self.attr_maximum
        selection = self.attr_selection
        page_increment = @page_increment
        # long
        h_theme = OS._open_theme_data(0, get_class_id)
        rect = RECT.new
        rect.attr_left = bounds.attr_x
        rect.attr_right = rect.attr_left + bounds.attr_width
        rect.attr_top = bounds.attr_y
        rect.attr_bottom = rect.attr_top + bounds.attr_height
        size = SIZE.new
        if (!((style & SWT::VERTICAL)).equal?(0))
          OS._get_theme_part_size(h_theme, gc.attr_handle, OS::TKP_TRACKVERT, 0, nil, OS::TS_TRUE, size)
          track_width = size.attr_cx - 1
          OS._get_theme_part_size(h_theme, gc.attr_handle, OS::TKP_THUMBVERT, 0, nil, OS::TS_TRUE, size)
          thumb_width = size.attr_cx
          thumb_height = size.attr_cy
          OS._get_theme_part_size(h_theme, gc.attr_handle, OS::TKP_TICS, 0, rect, OS::TS_TRUE, size)
          tic_width = size.attr_cx
          margin_x = (thumb_width - track_width) / 2
          margin_y = margin_x
          margin_x += TICS_MARGIN
          rect.attr_left += margin_x
          rect.attr_top += margin_y
          rect.attr_right = rect.attr_left + track_width
          rect.attr_bottom -= margin_y
          track_height = rect.attr_bottom - rect.attr_top
          OS._draw_theme_background(h_theme, gc.attr_handle, OS::TKP_TRACKVERT, 0, rect, nil)
          rect.attr_top += ((track_height - thumb_height) * (selection - minimum)) / Math.max(1, maximum - minimum)
          rect.attr_left -= (thumb_width - track_width) / 2
          rect.attr_right = rect.attr_left + thumb_width
          rect.attr_bottom = rect.attr_top + thumb_height
          OS._draw_theme_background(h_theme, gc.attr_handle, OS::TKP_THUMBVERT, 0, rect, nil)
          rect.attr_top = bounds.attr_y + margin_y + thumb_height / 2
          rect.attr_bottom = rect.attr_top + 1
          sel = minimum
          while sel <= maximum
            rect.attr_left = bounds.attr_x + TICS_MARGIN / 2
            rect.attr_right = rect.attr_left + tic_width
            if (!(sel).equal?(minimum) && !(sel).equal?(maximum))
              ((rect.attr_left += 1) - 1)
            end
            rect.attr_top = bounds.attr_y + margin_y + thumb_height / 2
            rect.attr_top += ((track_height - thumb_height) * (sel - minimum)) / Math.max(1, maximum - minimum)
            rect.attr_bottom = rect.attr_top + 1
            # TODO - why tics are ot drawn
            OS._draw_theme_background(h_theme, gc.attr_handle, OS::TKP_TICSVERT, 1, rect, nil)
            gc.draw_line(rect.attr_left, rect.attr_top, rect.attr_right, rect.attr_top)
            rect.attr_left = bounds.attr_x + TICS_MARGIN + thumb_width + 1
            rect.attr_right = rect.attr_left + tic_width
            if (!(sel).equal?(minimum) && !(sel).equal?(maximum))
              ((rect.attr_right -= 1) + 1)
            end
            # TODO - why tics are ot drawn
            OS._draw_theme_background(h_theme, gc.attr_handle, OS::TKP_TICSVERT, 1, rect, nil)
            gc.draw_line(rect.attr_left, rect.attr_top, rect.attr_right, rect.attr_top)
            sel += page_increment
          end
        else
        end
        OS._close_theme_data(h_theme)
      end
    end
    
    typesig { [] }
    def get_class_id
      return TRACKBAR
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      return bounds.contains(position) ? DrawData::WIDGET_WHOLE : DrawData::WIDGET_NOWHERE
    end
    
    private
    alias_method :initialize__scale_draw_data, :initialize
  end
  
end
