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
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class ButtonDrawData < ButtonDrawDataImports.const_get :DrawData
    include_class_members ButtonDrawDataImports
    
    typesig { [] }
    def initialize
      super()
      self.attr_state = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
      state = self.attr_state[DrawData::WIDGET_WHOLE]
      # long
      drawable = gc.get_gcdata.attr_drawable
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        # long
        radio_button_handle = theme.attr_radio_button_handle
        # long
        gtk_style = OS.gtk_widget_get_style(radio_button_handle)
        theme.transfer_clipping(gc, gtk_style)
        indicator_size = theme.get_widget_property(radio_button_handle, "indicator-size")
        indicator_spacing = theme.get_widget_property(radio_button_handle, "indicator-spacing")
        interior_focus = theme.get_widget_property(radio_button_handle, "interior-focus")
        focus_line_width = theme.get_widget_property(radio_button_handle, "focus-line-width")
        focus_padding = theme.get_widget_property(radio_button_handle, "focus-padding")
        border_width = OS.gtk_container_get_border_width(radio_button_handle)
        x = bounds.attr_x + indicator_spacing + border_width
        y = bounds.attr_y + (bounds.attr_height - indicator_size) / 2
        if ((interior_focus).equal?(0))
          x += focus_line_width + focus_padding
        end
        shadow_type = 0
        if (!((state & DrawData::GRAYED)).equal?(0))
          shadow_type = OS::GTK_SHADOW_ETCHED_IN
        else
          if (!((state & DrawData::SELECTED)).equal?(0))
            shadow_type = OS::GTK_SHADOW_IN
          else
            shadow_type = OS::GTK_SHADOW_OUT
          end
        end
        detail = Converter.wcs_to_mbcs(nil, "radiobutton", true)
        if (!((state & DrawData::HOT)).equal?(0))
          prelight_x = 0
          prelight_y = 0
          prelight_width = 0
          prelight_height = 0
          prelight_x = bounds.attr_x + border_width
          prelight_y = bounds.attr_y + border_width
          prelight_width = bounds.attr_width - (2 * border_width)
          prelight_height = bounds.attr_height - (2 * border_width)
          OS.gtk_paint_flat_box(gtk_style, drawable, OS::GTK_STATE_PRELIGHT, OS::GTK_SHADOW_ETCHED_OUT, nil, radio_button_handle, detail, prelight_x, prelight_y, prelight_width, prelight_height)
        end
        state_type = get_state_type(DrawData::WIDGET_WHOLE)
        OS.gtk_paint_option(gtk_style, drawable, state_type, shadow_type, nil, radio_button_handle, detail, x, y, indicator_size, indicator_size)
        if (!(self.attr_client_area).nil?)
          self.attr_client_area.attr_x = bounds.attr_x + 2 * indicator_spacing + border_width + indicator_size
          self.attr_client_area.attr_y = bounds.attr_y + border_width
          self.attr_client_area.attr_width = bounds.attr_width - (2 * indicator_spacing + 2 * border_width + indicator_size)
          self.attr_client_area.attr_height = bounds.attr_height - 2 * border_width
        end
        return
      end
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        # long
        check_button_handle = theme.attr_check_button_handle
        # long
        gtk_style = OS.gtk_widget_get_style(check_button_handle)
        theme.transfer_clipping(gc, gtk_style)
        indicator_size = theme.get_widget_property(check_button_handle, "indicator-size")
        indicator_spacing = theme.get_widget_property(check_button_handle, "indicator-spacing")
        interior_focus = theme.get_widget_property(check_button_handle, "interior-focus")
        focus_line_width = theme.get_widget_property(check_button_handle, "focus-line-width")
        focus_padding = theme.get_widget_property(check_button_handle, "focus-padding")
        border_width = OS.gtk_container_get_border_width(check_button_handle)
        x = bounds.attr_x + indicator_spacing + border_width
        y = bounds.attr_y + (bounds.attr_height - indicator_size) / 2
        if ((interior_focus).equal?(0))
          x += focus_line_width + focus_padding
        end
        shadow_type = 0
        if (!((state & DrawData::GRAYED)).equal?(0))
          shadow_type = OS::GTK_SHADOW_ETCHED_IN
        else
          if (!((state & DrawData::SELECTED)).equal?(0))
            shadow_type = OS::GTK_SHADOW_IN
          else
            shadow_type = OS::GTK_SHADOW_OUT
          end
        end
        detail = Converter.wcs_to_mbcs(nil, "checkbutton", true)
        if (!((state & DrawData::HOT)).equal?(0))
          prelight_x = 0
          prelight_y = 0
          prelight_width = 0
          prelight_height = 0
          prelight_x = bounds.attr_x + border_width
          prelight_y = bounds.attr_y + border_width
          prelight_width = bounds.attr_width - (2 * border_width)
          prelight_height = bounds.attr_height - (2 * border_width)
          OS.gtk_paint_flat_box(gtk_style, drawable, OS::GTK_STATE_PRELIGHT, OS::GTK_SHADOW_ETCHED_OUT, nil, check_button_handle, detail, prelight_x, prelight_y, prelight_width, prelight_height)
        end
        state_type = get_state_type(DrawData::WIDGET_WHOLE)
        OS.gtk_paint_check(gtk_style, drawable, state_type, shadow_type, nil, check_button_handle, detail, x, y, indicator_size, indicator_size)
        if (!(self.attr_client_area).nil?)
          self.attr_client_area.attr_x = bounds.attr_x + 2 * indicator_spacing + border_width + indicator_size
          self.attr_client_area.attr_y = bounds.attr_y + border_width
          self.attr_client_area.attr_width = bounds.attr_width - (2 * indicator_spacing + 2 * border_width + indicator_size)
          self.attr_client_area.attr_height = bounds.attr_height - 2 * border_width
        end
        return
      end
      if (!((self.attr_style & SWT::PUSH)).equal?(0))
        # long
        button_handle = theme.attr_button_handle
        # long
        gtk_style = OS.gtk_widget_get_style(button_handle)
        theme.transfer_clipping(gc, gtk_style)
        focus_line_width = theme.get_widget_property(button_handle, "focus-line-width")
        focus_padding = theme.get_widget_property(button_handle, "focus-padding")
        border_width = OS.gtk_container_get_border_width(button_handle)
        default_border = GtkBorder.new
        default_border_ptr = theme.get_widget_property(button_handle, "default-border")
        if (!(default_border_ptr).equal?(0))
          OS.memmove___org_eclipse_swt_internal_theme_button_draw_data_1(default_border, default_border_ptr, GdkRectangle.attr_sizeof)
        else
          default_border.attr_left = default_border.attr_right = default_border.attr_top = default_border.attr_bottom = 1
        end
        default_outside_border = GtkBorder.new
        default_outside_border_ptr = theme.get_widget_property(button_handle, "default-outside-border")
        if (!(default_outside_border_ptr).equal?(0))
          OS.memmove___org_eclipse_swt_internal_theme_button_draw_data_3(default_outside_border, default_outside_border_ptr, GdkRectangle.attr_sizeof)
        else
          default_outside_border.attr_left = default_outside_border.attr_right = default_outside_border.attr_top = default_outside_border.attr_bottom = 0
        end
        x = bounds.attr_x + border_width
        y = bounds.attr_y + border_width
        width = bounds.attr_width - border_width * 2
        height = bounds.attr_height - border_width * 2
        relief = OS.gtk_button_get_relief(button_handle)
        detail = Converter.wcs_to_mbcs(nil, !((state & DrawData::DEFAULTED)).equal?(0) ? "buttondefault" : "button", true)
        if (!((state & DrawData::DEFAULTED)).equal?(0) && (relief).equal?(OS::GTK_RELIEF_NORMAL))
          OS.gtk_paint_box(gtk_style, drawable, OS::GTK_STATE_NORMAL, OS::GTK_SHADOW_IN, nil, button_handle, detail, x, y, width, height)
          x += default_border.attr_left
          y += default_border.attr_top
          width -= default_border.attr_left + default_border.attr_right
          height -= default_border.attr_top + default_border.attr_bottom
        else
          if (!((state & DrawData::DEFAULTED)).equal?(0))
            x += default_outside_border.attr_left
            y += default_outside_border.attr_top
            width -= default_outside_border.attr_left + default_outside_border.attr_right
            height -= default_outside_border.attr_top + default_outside_border.attr_bottom
          end
        end
        shadow_type = OS::GTK_SHADOW_OUT
        if (!((state & (DrawData::SELECTED | DrawData::PRESSED))).equal?(0))
          shadow_type = OS::GTK_SHADOW_IN
        end
        state_type = get_state_type(DrawData::WIDGET_WHOLE)
        if (!(relief).equal?(OS::GTK_RELIEF_NONE) || (!((state & (DrawData::PRESSED | DrawData::HOT))).equal?(0)))
          OS.gtk_paint_box(gtk_style, drawable, state_type, shadow_type, nil, button_handle, detail, x, y, width, height)
        end
        if (!((state & DrawData::FOCUSED)).equal?(0))
          child_displacement_y = theme.get_widget_property(button_handle, "child-displacement-y")
          child_displacement_x = theme.get_widget_property(button_handle, "child-displacement-x")
          displace_focus = 0
          if (OS::GTK_VERSION >= OS._version(2, 6, 0))
            displace_focus = theme.get_widget_property(button_handle, "displace-focus")
          end
          interior_focus = theme.get_widget_property(button_handle, "interior-focus")
          if (!(interior_focus).equal?(0))
            xthickness = OS.gtk_style_get_xthickness(gtk_style)
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
          if (!((state & DrawData::PRESSED)).equal?(0) && !(displace_focus).equal?(0))
            x += child_displacement_x
            y += child_displacement_y
          end
          OS.gtk_paint_focus(gtk_style, drawable, state_type, nil, button_handle, detail, x, y, width, height)
        end
        if (!(self.attr_client_area).nil?)
          self.attr_client_area.attr_x = bounds.attr_x + border_width
          self.attr_client_area.attr_y = bounds.attr_y + border_width
          self.attr_client_area.attr_width = bounds.attr_width - 2 * border_width
          self.attr_client_area.attr_height = bounds.attr_height - 2 * border_width
        end
        return
      end
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      return bounds.contains(position) ? DrawData::WIDGET_WHOLE : DrawData::WIDGET_NOWHERE
    end
    
    private
    alias_method :initialize__button_draw_data, :initialize
  end
  
end
