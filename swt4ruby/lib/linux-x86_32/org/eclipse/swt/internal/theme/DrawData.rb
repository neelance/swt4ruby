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
  module DrawDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class DrawData 
    include_class_members DrawDataImports
    
    attr_accessor :style
    alias_method :attr_style, :style
    undef_method :style
    alias_method :attr_style=, :style=
    undef_method :style=
    
    attr_accessor :state
    alias_method :attr_state, :state
    undef_method :state
    alias_method :attr_state=, :state=
    undef_method :state=
    
    attr_accessor :client_area
    alias_method :attr_client_area, :client_area
    undef_method :client_area
    alias_method :attr_client_area=, :client_area=
    undef_method :client_area=
    
    class_module.module_eval {
      # Part states
      const_set_lazy(:SELECTED) { 1 << 1 }
      const_attr_reader  :SELECTED
      
      const_set_lazy(:FOCUSED) { 1 << 2 }
      const_attr_reader  :FOCUSED
      
      const_set_lazy(:PRESSED) { 1 << 3 }
      const_attr_reader  :PRESSED
      
      const_set_lazy(:ACTIVE) { 1 << 4 }
      const_attr_reader  :ACTIVE
      
      const_set_lazy(:DISABLED) { 1 << 5 }
      const_attr_reader  :DISABLED
      
      const_set_lazy(:HOT) { 1 << 6 }
      const_attr_reader  :HOT
      
      const_set_lazy(:DEFAULTED) { 1 << 7 }
      const_attr_reader  :DEFAULTED
      
      const_set_lazy(:GRAYED) { 1 << 8 }
      const_attr_reader  :GRAYED
      
      # Text and Image drawing flags
      const_set_lazy(:DRAW_LEFT) { 1 << 4 }
      const_attr_reader  :DRAW_LEFT
      
      const_set_lazy(:DRAW_TOP) { 1 << 5 }
      const_attr_reader  :DRAW_TOP
      
      const_set_lazy(:DRAW_RIGHT) { 1 << 6 }
      const_attr_reader  :DRAW_RIGHT
      
      const_set_lazy(:DRAW_BOTTOM) { 1 << 7 }
      const_attr_reader  :DRAW_BOTTOM
      
      const_set_lazy(:DRAW_HCENTER) { 1 << 8 }
      const_attr_reader  :DRAW_HCENTER
      
      const_set_lazy(:DRAW_VCENTER) { 1 << 9 }
      const_attr_reader  :DRAW_VCENTER
      
      # Widget parts
      const_set_lazy(:WIDGET_NOWHERE) { -1 }
      const_attr_reader  :WIDGET_NOWHERE
      
      const_set_lazy(:WIDGET_WHOLE) { 0 }
      const_attr_reader  :WIDGET_WHOLE
      
      # Scrollbar parts
      const_set_lazy(:SCROLLBAR_UP_ARROW) { 1 }
      const_attr_reader  :SCROLLBAR_UP_ARROW
      
      const_set_lazy(:SCROLLBAR_DOWN_ARROW) { 2 }
      const_attr_reader  :SCROLLBAR_DOWN_ARROW
      
      const_set_lazy(:SCROLLBAR_LEFT_ARROW) { SCROLLBAR_UP_ARROW }
      const_attr_reader  :SCROLLBAR_LEFT_ARROW
      
      const_set_lazy(:SCROLLBAR_RIGHT_ARROW) { SCROLLBAR_DOWN_ARROW }
      const_attr_reader  :SCROLLBAR_RIGHT_ARROW
      
      const_set_lazy(:SCROLLBAR_UP_TRACK) { 3 }
      const_attr_reader  :SCROLLBAR_UP_TRACK
      
      const_set_lazy(:SCROLLBAR_DOWN_TRACK) { 4 }
      const_attr_reader  :SCROLLBAR_DOWN_TRACK
      
      const_set_lazy(:SCROLLBAR_LEFT_TRACK) { SCROLLBAR_UP_TRACK }
      const_attr_reader  :SCROLLBAR_LEFT_TRACK
      
      const_set_lazy(:SCROLLBAR_RIGHT_TRACK) { SCROLLBAR_DOWN_TRACK }
      const_attr_reader  :SCROLLBAR_RIGHT_TRACK
      
      const_set_lazy(:SCROLLBAR_THUMB) { 5 }
      const_attr_reader  :SCROLLBAR_THUMB
      
      # Scale parts
      const_set_lazy(:SCALE_UP_TRACK) { 1 }
      const_attr_reader  :SCALE_UP_TRACK
      
      const_set_lazy(:SCALE_LEFT_TRACK) { SCALE_UP_TRACK }
      const_attr_reader  :SCALE_LEFT_TRACK
      
      const_set_lazy(:SCALE_DOWN_TRACK) { 2 }
      const_attr_reader  :SCALE_DOWN_TRACK
      
      const_set_lazy(:SCALE_RIGHT_TRACK) { SCALE_DOWN_TRACK }
      const_attr_reader  :SCALE_RIGHT_TRACK
      
      const_set_lazy(:SCALE_THUMB) { 3 }
      const_attr_reader  :SCALE_THUMB
      
      # ToolItem parts
      const_set_lazy(:TOOLITEM_ARROW) { 1 }
      const_attr_reader  :TOOLITEM_ARROW
      
      # Combo parts
      const_set_lazy(:COMBO_ARROW) { 1 }
      const_attr_reader  :COMBO_ARROW
    }
    
    typesig { [] }
    def initialize
      @style = 0
      @state = nil
      @client_area = nil
      @state = Array.typed(::Java::Int).new(1) { 0 }
    end
    
    typesig { [Theme, SwtGC] }
    def compute_trim(theme, gc)
      return Rectangle.new(@client_area.attr_x, @client_area.attr_y, @client_area.attr_width, @client_area.attr_height)
    end
    
    typesig { [Theme, SwtGC, Rectangle] }
    def draw(theme, gc, bounds)
    end
    
    typesig { [Theme, Image, SwtGC, Rectangle] }
    def draw_image(theme, image, gc, bounds)
      # long
      drawable = gc.get_gcdata.attr_drawable
      rect = image.get_bounds
      state_type = get_state_type(DrawData::WIDGET_WHOLE)
      if ((state_type).equal?(OS::GTK_STATE_NORMAL))
        gc.draw_image(image, 0, 0, rect.attr_width, rect.attr_height, bounds.attr_x, bounds.attr_y, bounds.attr_width, bounds.attr_height)
      else
        # long
        pixbuf = Theme.create_pixbuf(image)
        # long
        source = OS.gtk_icon_source_new
        if (!(source).equal?(0))
          OS.gtk_icon_source_set_pixbuf(source, pixbuf)
          # TODO - always uses buttonHandle
          # long
          button_handle = theme.attr_button_handle
          # long
          gtk_style = OS.gtk_widget_get_style(button_handle)
          theme.transfer_clipping(gc, gtk_style)
          # long
          rendered = OS.gtk_style_render_icon(gtk_style, source, OS::GTK_TEXT_DIR_NONE, state_type, -1, button_handle, nil)
          OS.g_object_unref(pixbuf)
          # TODO - stretching
          if (!(rendered).equal?(0))
            OS.gdk_draw_pixbuf(drawable, gc.attr_handle, rendered, 0, 0, bounds.attr_x, bounds.attr_y, bounds.attr_width, bounds.attr_height, OS::GDK_RGB_DITHER_NORMAL, 0, 0)
            OS.g_object_unref(rendered)
          end
          OS.gtk_icon_source_free(source)
        end
      end
    end
    
    typesig { [Theme, String, ::Java::Int, SwtGC, Rectangle] }
    def draw_text(theme, text, flags, gc, bounds)
      # long
      widget = get_text_handle(theme)
      # long
      gtk_style = OS.gtk_widget_get_style(widget)
      # long
      drawable = gc.get_gcdata.attr_drawable
      theme.transfer_clipping(gc, gtk_style)
      buffer = Converter.wcs_to_mbcs(nil, text, true)
      # long
      layout = OS.gtk_widget_create_pango_layout(widget, buffer)
      width = Array.typed(::Java::Int).new(1) { 0 }
      height = Array.typed(::Java::Int).new(1) { 0 }
      OS.pango_layout_get_size(layout, width, height)
      OS.pango_layout_set_width(layout, bounds.attr_width * OS::PANGO_SCALE)
      x = bounds.attr_x
      y = bounds.attr_y
      if (!((flags & DrawData::DRAW_LEFT)).equal?(0))
        OS.pango_layout_set_alignment(layout, OS::PANGO_ALIGN_LEFT)
      end
      if (!((flags & DrawData::DRAW_HCENTER)).equal?(0))
        OS.pango_layout_set_alignment(layout, OS::PANGO_ALIGN_CENTER)
      end
      if (!((flags & DrawData::DRAW_RIGHT)).equal?(0))
        OS.pango_layout_set_alignment(layout, OS::PANGO_ALIGN_RIGHT)
      end
      if (!((flags & DrawData::DRAW_VCENTER)).equal?(0))
        y += (bounds.attr_height - OS._pango_pixels(height[0])) / 2
      end
      if (!((flags & DrawData::DRAW_BOTTOM)).equal?(0))
        y += bounds.attr_height - OS._pango_pixels(height[0])
      end
      state_type = get_state_type(DrawData::WIDGET_WHOLE)
      detail = Converter.wcs_to_mbcs(nil, "label", true)
      OS.gtk_paint_layout(gtk_style, drawable, state_type, false, nil, widget, detail, x, y, layout)
      OS.g_object_unref(layout)
    end
    
    typesig { [::Java::Int, Rectangle] }
    def get_bounds(part, bounds)
      return Rectangle.new(bounds.attr_x, bounds.attr_y, bounds.attr_width, bounds.attr_height)
    end
    
    typesig { [::Java::Int] }
    def get_state_type(part)
      state = @state[part]
      state_type = OS::GTK_STATE_NORMAL
      if (!((state & DrawData::DISABLED)).equal?(0))
        state_type = OS::GTK_STATE_INSENSITIVE
      else
        if (!((state & DrawData::SELECTED)).equal?(0))
          state_type = OS::GTK_STATE_ACTIVE
        end
        if (!((state & DrawData::HOT)).equal?(0))
          if (!((state & DrawData::PRESSED)).equal?(0))
            state_type = OS::GTK_STATE_ACTIVE
          else
            state_type = OS::GTK_STATE_PRELIGHT
          end
        end
      end
      return state_type
    end
    
    typesig { [Theme] }
    # long
    def get_text_handle(theme)
      return theme.attr_label_handle
    end
    
    typesig { [Theme, Point, Rectangle] }
    def hit(theme, position, bounds)
      return -1
    end
    
    typesig { [Theme, String, ::Java::Int, SwtGC, Rectangle] }
    def measure_text(theme, text, flags, gc, bounds)
      # long
      widget = get_text_handle(theme)
      buffer = Converter.wcs_to_mbcs(nil, text, true)
      # long
      layout = OS.gtk_widget_create_pango_layout(widget, buffer)
      if (!(bounds).nil?)
        OS.pango_layout_set_width(layout, bounds.attr_width)
      end
      if (!((flags & DrawData::DRAW_LEFT)).equal?(0))
        OS.pango_layout_set_alignment(layout, OS::PANGO_ALIGN_LEFT)
      end
      if (!((flags & DrawData::DRAW_HCENTER)).equal?(0))
        OS.pango_layout_set_alignment(layout, OS::PANGO_ALIGN_CENTER)
      end
      if (!((flags & DrawData::DRAW_RIGHT)).equal?(0))
        OS.pango_layout_set_alignment(layout, OS::PANGO_ALIGN_RIGHT)
      end
      width = Array.typed(::Java::Int).new(1) { 0 }
      height = Array.typed(::Java::Int).new(1) { 0 }
      OS.pango_layout_get_size(layout, width, height)
      OS.g_object_unref(layout)
      return Rectangle.new(0, 0, OS._pango_pixels(width[0]), OS._pango_pixels(height[0]))
    end
    
    private
    alias_method :initialize__draw_data, :initialize
  end
  
end
