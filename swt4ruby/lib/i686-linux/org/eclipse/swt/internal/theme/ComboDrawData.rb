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
  module ComboDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class ComboDrawData < ComboDrawDataImports.const_get :DrawData
    include_class_members ComboDrawDataImports
    
    class_module.module_eval {
      const_set_lazy(:ARROW_HEIGHT) { 6 }
      const_attr_reader  :ARROW_HEIGHT
      
      const_set_lazy(:MIN_ARROW_SIZE) { 15 }
      const_attr_reader  :MIN_ARROW_SIZE
    }
    
    typesig { [] }
    def initialize
      super()
      self.attr_state = Array.typed(::Java::Int).new(2) { 0 }
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      # long
      button_handle = theme.attr_button_handle
      # long
      gtk_style = OS.gtk_widget_get_style(button_handle)
      # long
      drawable = gc.get_gcdata.attr_drawable
      theme.transfer_clipping(gc, gtk_style)
      x = bounds.attr_x
      y = bounds.attr_y
      width = bounds.attr_width
      height = bounds.attr_height
      shadow_type = OS::GTK_SHADOW_OUT
      if (!((self.attr_state[DrawData::COMBO_ARROW] & DrawData::PRESSED)).equal?(0))
        shadow_type = OS::GTK_SHADOW_IN
      end
      state_type = get_state_type(DrawData::COMBO_ARROW)
      relief = OS.gtk_button_get_relief(button_handle)
      interior_focus = theme.get_widget_property(button_handle, "interior-focus")
      focus_line_width = theme.get_widget_property(button_handle, "focus-line-width")
      focus_padding = theme.get_widget_property(button_handle, "focus-padding")
      xthickness = OS.gtk_style_get_xthickness(gtk_style)
      ythickness = OS.gtk_style_get_xthickness(gtk_style)
      arrow_width = MIN_ARROW_SIZE
      arrow_height = ARROW_HEIGHT
      x_border = xthickness + focus_padding
      y_border = ythickness + focus_padding
      if ((interior_focus).equal?(0))
        x_border += focus_line_width
        y_border += focus_line_width
      end
      arrow_button_width = arrow_width + x_border * 2
      arrow_button_x = x + width - arrow_button_width
      arrow_x = arrow_button_x + (arrow_button_width - arrow_width) / 2
      arrow_y = y + (height - arrow_height) / 2 + 1
      if (!(relief).equal?(OS::GTK_RELIEF_NONE) || (!((self.attr_state[DrawData::COMBO_ARROW] & (DrawData::PRESSED | DrawData::HOT))).equal?(0)))
        detail = Converter.wcs_to_mbcs(nil, "button", true)
        OS.gtk_paint_box(gtk_style, drawable, state_type, shadow_type, nil, button_handle, detail, arrow_button_x, y, arrow_button_width, height)
      end
      arrow_detail = Converter.wcs_to_mbcs(nil, "arrow", true)
      # long
      arrow_handle = theme.attr_arrow_handle
      OS.gtk_paint_arrow(gtk_style, drawable, state_type, OS::GTK_SHADOW_OUT, nil, arrow_handle, arrow_detail, OS::GTK_ARROW_DOWN, true, arrow_x, arrow_y, arrow_width, arrow_height)
      # long
      entry_handle = theme.attr_entry_handle
      gtk_style = OS.gtk_widget_get_style(entry_handle)
      theme.transfer_clipping(gc, gtk_style)
      state_type = get_state_type(DrawData::WIDGET_WHOLE)
      detail = Converter.wcs_to_mbcs(nil, "entry", true)
      OS.gtk_paint_shadow(gtk_style, drawable, OS::GTK_STATE_NORMAL, OS::GTK_SHADOW_IN, nil, entry_handle, detail, x, y, width - arrow_button_width, height)
      xthickness = OS.gtk_style_get_xthickness(gtk_style)
      ythickness = OS.gtk_style_get_xthickness(gtk_style)
      x += xthickness
      y += ythickness
      width -= 2 * xthickness
      height -= 2 * ythickness
      detail = Converter.wcs_to_mbcs(nil, "entry_bg", true)
      OS.gtk_paint_flat_box(gtk_style, drawable, state_type, OS::GTK_SHADOW_NONE, nil, entry_handle, detail, x, y, width - arrow_button_width, height)
      if (!(self.attr_client_area).nil?)
        self.attr_client_area.attr_x = x
        self.attr_client_area.attr_y = y
        self.attr_client_area.attr_width = width - arrow_button_width
        self.attr_client_area.attr_height = height
      end
    end
    
    typesig { [::Java::Int] }
    def get_state_type(part)
      if ((part).equal?(DrawData::WIDGET_WHOLE))
        state_type = OS::GTK_STATE_NORMAL
        if (!((self.attr_state[DrawData::WIDGET_WHOLE] & DrawData::DISABLED)).equal?(0))
          state_type = OS::GTK_STATE_INSENSITIVE
        end
        return state_type
      end
      return super(part)
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      if (!bounds.contains(position))
        return DrawData::WIDGET_NOWHERE
      end
      # long
      button_handle = theme.attr_button_handle
      # long
      gtk_style = OS.gtk_widget_get_style(button_handle)
      interior_focus = theme.get_widget_property(button_handle, "interior-focus")
      focus_line_width = theme.get_widget_property(button_handle, "focus-line-width")
      focus_padding = theme.get_widget_property(button_handle, "focus-padding")
      xthickness = OS.gtk_style_get_xthickness(gtk_style)
      ythickness = OS.gtk_style_get_xthickness(gtk_style)
      arrow_width = MIN_ARROW_SIZE
      x_border = xthickness + focus_padding
      y_border = ythickness + focus_padding
      if ((interior_focus).equal?(0))
        x_border += focus_line_width
        y_border += focus_line_width
      end
      arrow_button_width = arrow_width + x_border * 2
      arrow_button_x = bounds.attr_x + bounds.attr_width - arrow_button_width
      arrow_rect = Rectangle.new(arrow_button_x, bounds.attr_y, arrow_button_width, bounds.attr_height)
      if (arrow_rect.contains(position))
        return DrawData::COMBO_ARROW
      end
      return DrawData::WIDGET_WHOLE
    end
    
    private
    alias_method :initialize__combo_draw_data, :initialize
  end
  
end
