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
  module ToolItemDrawDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class ToolItemDrawData < ToolItemDrawDataImports.const_get :DrawData
    include_class_members ToolItemDrawDataImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    class_module.module_eval {
      const_set_lazy(:ARROW_WIDTH) { 8 }
      const_attr_reader  :ARROW_WIDTH
      
      const_set_lazy(:ARROW_HEIGHT) { 6 }
      const_attr_reader  :ARROW_HEIGHT
    }
    
    typesig { [] }
    def initialize
      @parent = nil
      super()
      self.attr_state = Array.typed(::Java::Int).new(2) { 0 }
    end
    
    typesig { [Theme, SwtGC] }
    def compute_trim(theme, gc)
      # int
      button_handle = theme.attr_button_handle
      # int
      gtk_style = OS.gtk_widget_get_style(button_handle)
      focus_width = theme.get_widget_property(button_handle, "focus-line-width")
      focus_padding = theme.get_widget_property(button_handle, "focus-padding")
      xthickness = OS.gtk_style_get_xthickness(gtk_style)
      ythickness = OS.gtk_style_get_ythickness(gtk_style)
      border_x = xthickness + focus_width + focus_padding
      border_y = ythickness + focus_width + focus_padding
      x = self.attr_client_area.attr_x - border_x
      y = self.attr_client_area.attr_y - border_y
      width = self.attr_client_area.attr_width + 2 * border_x
      height = self.attr_client_area.attr_height + 2 * border_y
      if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
        width += ARROW_WIDTH
      end
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      state = self.attr_state[DrawData::WIDGET_WHOLE]
      # int
      drawable = gc.get_gcdata.attr_drawable
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        state_type = get_state_type(DrawData::WIDGET_WHOLE)
        # int
        separator_handle = theme.attr_separator_handle
        detail = Converter.wcs_to_mbcs(nil, "vseparator", true)
        # int
        gtk_style = OS.gtk_widget_get_style(separator_handle)
        theme.transfer_clipping(gc, gtk_style)
        if (!((@parent.attr_style & SWT::VERTICAL)).equal?(0))
          OS.gtk_paint_hline(gtk_style, drawable, state_type, nil, separator_handle, detail, bounds.attr_x, bounds.attr_x + bounds.attr_width, bounds.attr_y + bounds.attr_height / 2)
        else
          OS.gtk_paint_vline(gtk_style, drawable, state_type, nil, separator_handle, detail, bounds.attr_y, bounds.attr_y + bounds.attr_height, bounds.attr_x + bounds.attr_width / 2)
        end
        return
      end
      # int
      button_handle = theme.attr_button_handle
      # int
      gtk_style = OS.gtk_widget_get_style(button_handle)
      theme.transfer_clipping(gc, gtk_style)
      focus_line_width = theme.get_widget_property(button_handle, "focus-line-width")
      focus_padding = theme.get_widget_property(button_handle, "focus-padding")
      border_width = OS.gtk_container_get_border_width(button_handle)
      x = bounds.attr_x + border_width
      y = bounds.attr_y + border_width
      width = bounds.attr_width - border_width * 2
      height = bounds.attr_height - border_width * 2
      detail = nil
      if (!((self.attr_style & (SWT::PUSH | SWT::DROP_DOWN))).equal?(0))
        detail = Converter.wcs_to_mbcs(nil, "button", true)
      else
        if (!((self.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0))
          detail = Converter.wcs_to_mbcs(nil, "togglebutton", true)
        end
      end
      relief = Array.typed(::Java::Int).new(1) { 0 }
      # int
      toolbar_handle = theme.attr_toolbar_handle
      OS.gtk_widget_style_get(toolbar_handle, OS.attr_button_relief, relief, 0)
      shadow_type = OS::GTK_SHADOW_OUT
      if (!((state & (DrawData::SELECTED | DrawData::PRESSED))).equal?(0))
        shadow_type = OS::GTK_SHADOW_IN
      end
      state_type = get_state_type(DrawData::WIDGET_WHOLE)
      if (!(relief[0]).equal?(OS::GTK_RELIEF_NONE) || (!((state & (DrawData::PRESSED | DrawData::HOT | DrawData::SELECTED))).equal?(0)))
        OS.gtk_paint_box(gtk_style, drawable, state_type, shadow_type, nil, button_handle, detail, x, y, width, height)
      end
      if (!(self.attr_client_area).nil?)
        self.attr_client_area.attr_x = bounds.attr_x + border_width
        self.attr_client_area.attr_y = bounds.attr_y + border_width
        self.attr_client_area.attr_width = bounds.attr_width - 2 * border_width
        self.attr_client_area.attr_height = bounds.attr_height - 2 * border_width
      end
      xthickness = OS.gtk_style_get_xthickness(gtk_style)
      interior_focus = theme.get_widget_property(button_handle, "interior-focus")
      if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
        arrow_width = ARROW_WIDTH
        arrow_height = ARROW_HEIGHT
        arrow_x = x + width - arrow_width - xthickness - focus_padding
        if ((interior_focus).equal?(0))
          arrow_x -= focus_line_width
        end
        arrow_y = y + (height - arrow_height) / 2
        arrow_detail = Converter.wcs_to_mbcs(nil, "arrow", true)
        OS.gtk_paint_arrow(gtk_style, drawable, state_type, OS::GTK_SHADOW_NONE, nil, theme.attr_arrow_handle, arrow_detail, OS::GTK_ARROW_DOWN, true, arrow_x, arrow_y, arrow_width, arrow_height)
        if (!(self.attr_client_area).nil?)
          self.attr_client_area.attr_width -= bounds.attr_x + bounds.attr_width - arrow_x
        end
      end
      if (!((state & DrawData::FOCUSED)).equal?(0))
        child_displacement_y = theme.get_widget_property(button_handle, "child-displacement-y")
        child_displacement_x = theme.get_widget_property(button_handle, "child-displacement-x")
        displace_focus = 0
        if (OS::GTK_VERSION >= OS._version(2, 6, 0))
          displace_focus = theme.get_widget_property(button_handle, "displace-focus")
        end
        if (!(interior_focus).equal?(0))
          ythickness = OS.gtk_style_get_ythickness(gtk_style)
          x += xthickness + focus_padding
          y += ythickness + focus_padding
          width -= 2 * (xthickness + focus_padding)
          height -= 2 * (ythickness + focus_padding)
        else
          x -= focus_line_width + focus_padding
          y -= focus_line_width + focus_padding
          width += 2 * (focus_line_width + focus_padding)
          height += 2 * (focus_line_width + focus_padding)
        end
        if (!((state & (DrawData::PRESSED | DrawData::SELECTED))).equal?(0) && !(displace_focus).equal?(0))
          x += child_displacement_x
          y += child_displacement_y
        end
        OS.gtk_paint_focus(gtk_style, drawable, state_type, nil, button_handle, detail, x, y, width, height)
      end
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      if (!bounds.contains(position))
        return DrawData::WIDGET_NOWHERE
      end
      if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
        # int
        button_handle = theme.attr_button_handle
        # int
        gtk_style = OS.gtk_widget_get_style(button_handle)
        xthickness = OS.gtk_style_get_xthickness(gtk_style)
        interior_focus = theme.get_widget_property(button_handle, "interior-focus")
        focus_line_width = theme.get_widget_property(button_handle, "focus-line-width")
        focus_padding = theme.get_widget_property(button_handle, "focus-padding")
        arrow_width = ARROW_WIDTH
        arrow_x = bounds.attr_x + bounds.attr_width - arrow_width - xthickness - focus_padding
        if ((interior_focus).equal?(0))
          arrow_x -= focus_line_width
        end
        if (arrow_x <= position.attr_x)
          return DrawData::TOOLITEM_ARROW
        end
      end
      return DrawData::WIDGET_WHOLE
    end
    
    private
    alias_method :initialize__tool_item_draw_data, :initialize
  end
  
end
