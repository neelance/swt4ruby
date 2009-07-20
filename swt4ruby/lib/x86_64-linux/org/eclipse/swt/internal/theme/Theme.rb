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
  module ThemeImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Internal::Theme
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  class Theme 
    include_class_members ThemeImports
    
    attr_accessor :device
    alias_method :attr_device, :device
    undef_method :device
    alias_method :attr_device=, :device=
    undef_method :device=
    
    # int
    attr_accessor :shell_handle
    alias_method :attr_shell_handle, :shell_handle
    undef_method :shell_handle
    alias_method :attr_shell_handle=, :shell_handle=
    undef_method :shell_handle=
    
    attr_accessor :fixed_handle
    alias_method :attr_fixed_handle, :fixed_handle
    undef_method :fixed_handle
    alias_method :attr_fixed_handle=, :fixed_handle=
    undef_method :fixed_handle=
    
    attr_accessor :button_handle
    alias_method :attr_button_handle, :button_handle
    undef_method :button_handle
    alias_method :attr_button_handle=, :button_handle=
    undef_method :button_handle=
    
    attr_accessor :arrow_handle
    alias_method :attr_arrow_handle, :arrow_handle
    undef_method :arrow_handle
    alias_method :attr_arrow_handle=, :arrow_handle=
    undef_method :arrow_handle=
    
    attr_accessor :frame_handle
    alias_method :attr_frame_handle, :frame_handle
    undef_method :frame_handle
    alias_method :attr_frame_handle=, :frame_handle=
    undef_method :frame_handle=
    
    attr_accessor :entry_handle
    alias_method :attr_entry_handle, :entry_handle
    undef_method :entry_handle
    alias_method :attr_entry_handle=, :entry_handle=
    undef_method :entry_handle=
    
    attr_accessor :check_button_handle
    alias_method :attr_check_button_handle, :check_button_handle
    undef_method :check_button_handle
    alias_method :attr_check_button_handle=, :check_button_handle=
    undef_method :check_button_handle=
    
    attr_accessor :radio_button_handle
    alias_method :attr_radio_button_handle, :radio_button_handle
    undef_method :radio_button_handle
    alias_method :attr_radio_button_handle=, :radio_button_handle=
    undef_method :radio_button_handle=
    
    attr_accessor :notebook_handle
    alias_method :attr_notebook_handle, :notebook_handle
    undef_method :notebook_handle
    alias_method :attr_notebook_handle=, :notebook_handle=
    undef_method :notebook_handle=
    
    attr_accessor :tree_handle
    alias_method :attr_tree_handle, :tree_handle
    undef_method :tree_handle
    alias_method :attr_tree_handle=, :tree_handle=
    undef_method :tree_handle=
    
    attr_accessor :progress_handle
    alias_method :attr_progress_handle, :progress_handle
    undef_method :progress_handle
    alias_method :attr_progress_handle=, :progress_handle=
    undef_method :progress_handle=
    
    attr_accessor :toolbar_handle
    alias_method :attr_toolbar_handle, :toolbar_handle
    undef_method :toolbar_handle
    alias_method :attr_toolbar_handle=, :toolbar_handle=
    undef_method :toolbar_handle=
    
    attr_accessor :label_handle
    alias_method :attr_label_handle, :label_handle
    undef_method :label_handle
    alias_method :attr_label_handle=, :label_handle=
    undef_method :label_handle=
    
    attr_accessor :separator_handle
    alias_method :attr_separator_handle, :separator_handle
    undef_method :separator_handle
    alias_method :attr_separator_handle=, :separator_handle=
    undef_method :separator_handle=
    
    typesig { [Device] }
    def initialize(device)
      @device = nil
      @shell_handle = 0
      @fixed_handle = 0
      @button_handle = 0
      @arrow_handle = 0
      @frame_handle = 0
      @entry_handle = 0
      @check_button_handle = 0
      @radio_button_handle = 0
      @notebook_handle = 0
      @tree_handle = 0
      @progress_handle = 0
      @toolbar_handle = 0
      @label_handle = 0
      @separator_handle = 0
      @device = device
      @shell_handle = OS.gtk_window_new(OS::GTK_WINDOW_TOPLEVEL)
      @fixed_handle = OS.gtk_fixed_new
      @button_handle = OS.gtk_button_new
      @arrow_handle = OS.gtk_arrow_new(OS::GTK_ARROW_DOWN, OS::GTK_SHADOW_NONE)
      @check_button_handle = OS.gtk_check_button_new
      @frame_handle = OS.gtk_check_button_new
      @entry_handle = OS.gtk_entry_new
      @radio_button_handle = OS.gtk_radio_button_new(0)
      @notebook_handle = OS.gtk_notebook_new
      @progress_handle = OS.gtk_progress_bar_new
      @toolbar_handle = OS.gtk_toolbar_new
      @tree_handle = OS.gtk_tree_view_new_with_model(0)
      @separator_handle = OS.gtk_vseparator_new
      @label_handle = OS.gtk_label_new(nil)
      OS.gtk_container_add(@fixed_handle, @label_handle)
      OS.gtk_container_add(@fixed_handle, @frame_handle)
      OS.gtk_container_add(@fixed_handle, @entry_handle)
      OS.gtk_container_add(@fixed_handle, @separator_handle)
      OS.gtk_container_add(@fixed_handle, @arrow_handle)
      OS.gtk_container_add(@fixed_handle, @toolbar_handle)
      OS.gtk_container_add(@fixed_handle, @progress_handle)
      OS.gtk_container_add(@fixed_handle, @check_button_handle)
      OS.gtk_container_add(@fixed_handle, @radio_button_handle)
      OS.gtk_container_add(@fixed_handle, @button_handle)
      OS.gtk_container_add(@fixed_handle, @tree_handle)
      OS.gtk_container_add(@fixed_handle, @notebook_handle)
      OS.gtk_container_add(@shell_handle, @fixed_handle)
      OS.gtk_widget_realize(@separator_handle)
      OS.gtk_widget_realize(@label_handle)
      OS.gtk_widget_realize(@frame_handle)
      OS.gtk_widget_realize(@entry_handle)
      OS.gtk_widget_realize(@arrow_handle)
      OS.gtk_widget_realize(@button_handle)
      OS.gtk_widget_realize(@tree_handle)
      OS.gtk_widget_realize(@notebook_handle)
      OS.gtk_widget_realize(@check_button_handle)
      OS.gtk_widget_realize(@radio_button_handle)
      OS.gtk_widget_realize(@progress_handle)
      OS.gtk_widget_realize(@toolbar_handle)
      OS.gtk_widget_realize(@shell_handle)
    end
    
    class_module.module_eval {
      typesig { [Image] }
      # TODO - share this code
      # int
      def create_pixbuf(image)
        w = Array.typed(::Java::Int).new(1) { 0 }
        h = Array.typed(::Java::Int).new(1) { 0 }
        OS.gdk_drawable_get_size(image.attr_pixmap, w, h)
        # int
        colormap = OS.gdk_colormap_get_system
        # int
        pixbuf = 0
        has_mask = !(image.attr_mask).equal?(0) && (OS.gdk_drawable_get_depth(image.attr_mask)).equal?(1)
        if (has_mask)
          pixbuf = OS.gdk_pixbuf_new(OS::GDK_COLORSPACE_RGB, true, 8, w[0], h[0])
          if ((pixbuf).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          OS.gdk_pixbuf_get_from_drawable(pixbuf, image.attr_pixmap, colormap, 0, 0, 0, 0, w[0], h[0])
          # int
          mask_pixbuf = OS.gdk_pixbuf_new(OS::GDK_COLORSPACE_RGB, false, 8, w[0], h[0])
          if ((mask_pixbuf).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          OS.gdk_pixbuf_get_from_drawable(mask_pixbuf, image.attr_mask, 0, 0, 0, 0, 0, w[0], h[0])
          stride = OS.gdk_pixbuf_get_rowstride(pixbuf)
          # int
          pixels = OS.gdk_pixbuf_get_pixels(pixbuf)
          line = Array.typed(::Java::Byte).new(stride) { 0 }
          mask_stride = OS.gdk_pixbuf_get_rowstride(mask_pixbuf)
          # int
          mask_pixels = OS.gdk_pixbuf_get_pixels(mask_pixbuf)
          mask_line = Array.typed(::Java::Byte).new(mask_stride) { 0 }
          y = 0
          while y < h[0]
            # int
            offset = pixels + (y * stride)
            OS.memmove(line, offset, stride)
            # int
            mask_offset = mask_pixels + (y * mask_stride)
            OS.memmove(mask_line, mask_offset, mask_stride)
            x = 0
            while x < w[0]
              if ((mask_line[x * 3]).equal?(0))
                line[x * 4 + 3] = 0
              end
              ((x += 1) - 1)
            end
            OS.memmove(offset, line, stride)
            ((y += 1) - 1)
          end
          OS.g_object_unref(mask_pixbuf)
        else
          data = image.get_image_data
          has_alpha = (data.get_transparency_type).equal?(SWT::TRANSPARENCY_ALPHA)
          pixbuf = OS.gdk_pixbuf_new(OS::GDK_COLORSPACE_RGB, has_alpha, 8, w[0], h[0])
          if ((pixbuf).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          OS.gdk_pixbuf_get_from_drawable(pixbuf, image.attr_pixmap, colormap, 0, 0, 0, 0, w[0], h[0])
          if (has_alpha)
            alpha = data.attr_alpha_data
            stride = OS.gdk_pixbuf_get_rowstride(pixbuf)
            # int
            pixels = OS.gdk_pixbuf_get_pixels(pixbuf)
            line = Array.typed(::Java::Byte).new(stride) { 0 }
            y = 0
            while y < h[0]
              # int
              offset = pixels + (y * stride)
              OS.memmove(line, offset, stride)
              x = 0
              while x < w[0]
                line[x * 4 + 3] = alpha[y * w[0] + x]
                ((x += 1) - 1)
              end
              OS.memmove(offset, line, stride)
              ((y += 1) - 1)
            end
          end
        end
        return pixbuf
      end
    }
    
    typesig { [] }
    def check_theme
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
    end
    
    typesig { [SwtGC, DrawData] }
    def compute_trim(gc, data)
      if ((gc).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (gc.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      return data.compute_trim(self, gc)
    end
    
    typesig { [] }
    def dispose
      if ((@shell_handle).equal?(0))
        return
      end
      OS.gtk_widget_destroy(@shell_handle)
      @shell_handle = @fixed_handle = @button_handle = @arrow_handle = @frame_handle = @entry_handle = @check_button_handle = @radio_button_handle = @notebook_handle = @tree_handle = @progress_handle = @toolbar_handle = @label_handle = @separator_handle = 0
    end
    
    typesig { [SwtGC, Rectangle, DrawData] }
    def draw_background(gc, bounds, data)
      check_theme
      if ((gc).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((bounds).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (gc.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      data.draw(self, gc, bounds)
    end
    
    typesig { [SwtGC, Rectangle, DrawData] }
    def draw_focus(gc, bounds, data)
      check_theme
      if ((gc).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((bounds).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (gc.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      gc.draw_focus(bounds.attr_x, bounds.attr_y, bounds.attr_width, bounds.attr_height)
    end
    
    typesig { [SwtGC, Rectangle, DrawData, Image, ::Java::Int] }
    def draw_image(gc, bounds, data, image, flags)
      check_theme
      if ((gc).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((bounds).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((image).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (gc.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      data.draw_image(self, image, gc, bounds)
    end
    
    typesig { [SwtGC, Rectangle, DrawData, String, ::Java::Int] }
    def draw_text(gc, bounds, data, text, flags)
      check_theme
      if ((gc).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((bounds).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((text).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (gc.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      data.draw_text(self, text, flags, gc, bounds)
    end
    
    typesig { [::Java::Int, Rectangle, DrawData] }
    def get_bounds(part, bounds, data)
      check_theme
      if ((bounds).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      return data.get_bounds(part, bounds)
    end
    
    typesig { [Point, Rectangle, RangeDrawData] }
    def get_selection(offset, bounds, data)
      check_theme
      if ((offset).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((bounds).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      return data.get_selection(offset, bounds)
    end
    
    typesig { [Point, Rectangle, DrawData] }
    def hit_background(position, bounds, data)
      check_theme
      if ((position).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((bounds).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      return data.hit(self, position, bounds)
    end
    
    typesig { [] }
    def is_disposed
      return (@device).nil?
    end
    
    typesig { [SwtGC, Rectangle, DrawData, String, ::Java::Int] }
    def measure_text(gc, bounds, data, text, flags)
      check_theme
      if ((gc).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((data).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((text).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (gc.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      return data.measure_text(self, text, flags, gc, bounds)
    end
    
    typesig { [::Java::Long, String] }
    # int
    def get_widget_property(handle, name)
      property_name = Converter.wcs_to_mbcs(nil, name, true)
      result = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_widget_style_get(handle, property_name, result, 0)
      return result[0]
    end
    
    typesig { [SwtGC, ::Java::Long] }
    # int
    def transfer_clipping(gc, style)
      data = gc.get_gcdata
      # int
      clip_rgn = data.attr_clip_rgn
      # int
      damage_rgn = data.attr_damage_rgn
      # int
      clipping = clip_rgn
      if (!(damage_rgn).equal?(0))
        if (!(clipping).equal?(0))
          clipping = OS.gdk_region_new
          OS.gdk_region_union(clipping, clip_rgn)
          OS.gdk_region_intersect(clipping, damage_rgn)
        else
          clipping = damage_rgn
        end
      end
      # int
      # int
      cur_gc = Array.typed(::Java::Long).new(1) { 0 }
      i = 0
      while i < 5
        OS.gtk_style_get_fg_gc(style, i, cur_gc)
        if (!(cur_gc[0]).equal?(0))
          OS.gdk_gc_set_clip_region(cur_gc[0], clipping)
        end
        OS.gtk_style_get_bg_gc(style, i, cur_gc)
        if (!(cur_gc[0]).equal?(0))
          OS.gdk_gc_set_clip_region(cur_gc[0], clipping)
        end
        OS.gtk_style_get_light_gc(style, i, cur_gc)
        if (!(cur_gc[0]).equal?(0))
          OS.gdk_gc_set_clip_region(cur_gc[0], clipping)
        end
        OS.gtk_style_get_dark_gc(style, i, cur_gc)
        if (!(cur_gc[0]).equal?(0))
          OS.gdk_gc_set_clip_region(cur_gc[0], clipping)
        end
        OS.gtk_style_get_mid_gc(style, i, cur_gc)
        if (!(cur_gc[0]).equal?(0))
          OS.gdk_gc_set_clip_region(cur_gc[0], clipping)
        end
        OS.gtk_style_get_text_gc(style, i, cur_gc)
        if (!(cur_gc[0]).equal?(0))
          OS.gdk_gc_set_clip_region(cur_gc[0], clipping)
        end
        OS.gtk_style_get_text_aa_gc(style, i, cur_gc)
        if (!(cur_gc[0]).equal?(0))
          OS.gdk_gc_set_clip_region(cur_gc[0], clipping)
        end
        ((i += 1) - 1)
      end
      OS.gtk_style_get_black_gc(style, cur_gc)
      if (!(cur_gc[0]).equal?(0))
        OS.gdk_gc_set_clip_region(cur_gc[0], clipping)
      end
      OS.gtk_style_get_white_gc(style, cur_gc)
      if (!(cur_gc[0]).equal?(0))
        OS.gdk_gc_set_clip_region(cur_gc[0], clipping)
      end
      if (!(clipping).equal?(clip_rgn) && !(clipping).equal?(damage_rgn))
        OS.gdk_region_destroy(clipping)
      end
    end
    
    private
    alias_method :initialize__theme, :initialize
  end
  
end
