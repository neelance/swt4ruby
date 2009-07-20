require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Graphics
  module GCImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Cairo
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt
    }
  end
  
  # Class <code>GC</code> is where all of the drawing capabilities that are
  # supported by SWT are located. Instances are used to draw on either an
  # <code>Image</code>, a <code>Control</code>, or directly on a <code>Display</code>.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>LEFT_TO_RIGHT, RIGHT_TO_LEFT</dd>
  # </dl>
  # 
  # <p>
  # The SWT drawing coordinate system is the two-dimensional space with the origin
  # (0,0) at the top left corner of the drawing area and with (x,y) values increasing
  # to the right and downward respectively.
  # </p>
  # 
  # <p>
  # Application code must explicitly invoke the <code>GC.dispose()</code>
  # method to release the operating system resources managed by each instance
  # when those instances are no longer required. This is <em>particularly</em>
  # important on Windows95 and Windows98 where the operating system has a limited
  # number of device contexts available.
  # </p>
  # 
  # <p>
  # Note: Only one of LEFT_TO_RIGHT and RIGHT_TO_LEFT may be specified.
  # </p>
  # 
  # @see org.eclipse.swt.events.PaintEvent
  # @see <a href="http://www.eclipse.org/swt/snippets/#gc">GC snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Examples: GraphicsExample, PaintExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class SwtGC < GCImports.const_get :Resource
    include_class_members GCImports
    
    # the handle to the OS device context
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    # 
    # int
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
    attr_accessor :drawable
    alias_method :attr_drawable, :drawable
    undef_method :drawable
    alias_method :attr_drawable=, :drawable=
    undef_method :drawable=
    
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    class_module.module_eval {
      const_set_lazy(:FOREGROUND) { 1 << 0 }
      const_attr_reader  :FOREGROUND
      
      const_set_lazy(:BACKGROUND) { 1 << 1 }
      const_attr_reader  :BACKGROUND
      
      const_set_lazy(:FONT) { 1 << 2 }
      const_attr_reader  :FONT
      
      const_set_lazy(:LINE_STYLE) { 1 << 3 }
      const_attr_reader  :LINE_STYLE
      
      const_set_lazy(:LINE_CAP) { 1 << 4 }
      const_attr_reader  :LINE_CAP
      
      const_set_lazy(:LINE_JOIN) { 1 << 5 }
      const_attr_reader  :LINE_JOIN
      
      const_set_lazy(:LINE_WIDTH) { 1 << 6 }
      const_attr_reader  :LINE_WIDTH
      
      const_set_lazy(:LINE_MITERLIMIT) { 1 << 7 }
      const_attr_reader  :LINE_MITERLIMIT
      
      const_set_lazy(:BACKGROUND_BG) { 1 << 8 }
      const_attr_reader  :BACKGROUND_BG
      
      const_set_lazy(:DRAW_OFFSET) { 1 << 9 }
      const_attr_reader  :DRAW_OFFSET
      
      const_set_lazy(:DRAW) { FOREGROUND | LINE_WIDTH | LINE_STYLE | LINE_CAP | LINE_JOIN | LINE_MITERLIMIT | DRAW_OFFSET }
      const_attr_reader  :DRAW
      
      const_set_lazy(:FILL) { BACKGROUND }
      const_attr_reader  :FILL
      
      const_set_lazy(:LINE_DOT) { Array.typed(::Java::Float).new([1, 1]) }
      const_attr_reader  :LINE_DOT
      
      const_set_lazy(:LINE_DASH) { Array.typed(::Java::Float).new([3, 1]) }
      const_attr_reader  :LINE_DASH
      
      const_set_lazy(:LINE_DASHDOT) { Array.typed(::Java::Float).new([3, 1, 1, 1]) }
      const_attr_reader  :LINE_DASHDOT
      
      const_set_lazy(:LINE_DASHDOTDOT) { Array.typed(::Java::Float).new([3, 1, 1, 1, 1, 1]) }
      const_attr_reader  :LINE_DASHDOTDOT
      
      const_set_lazy(:LINE_DOT_ZERO) { Array.typed(::Java::Float).new([3, 3]) }
      const_attr_reader  :LINE_DOT_ZERO
      
      const_set_lazy(:LINE_DASH_ZERO) { Array.typed(::Java::Float).new([18, 6]) }
      const_attr_reader  :LINE_DASH_ZERO
      
      const_set_lazy(:LINE_DASHDOT_ZERO) { Array.typed(::Java::Float).new([9, 6, 3, 6]) }
      const_attr_reader  :LINE_DASHDOT_ZERO
      
      const_set_lazy(:LINE_DASHDOTDOT_ZERO) { Array.typed(::Java::Float).new([9, 3, 3, 3, 3, 3]) }
      const_attr_reader  :LINE_DASHDOTDOT_ZERO
    }
    
    typesig { [] }
    def initialize
      @handle = 0
      @drawable = nil
      @data = nil
      super()
    end
    
    typesig { [Drawable] }
    # Constructs a new instance of this class which has been
    # configured to draw on the specified drawable. Sets the
    # foreground color, background color and font in the GC
    # to match those in the drawable.
    # <p>
    # You must dispose the graphics context when it is no longer required.
    # </p>
    # @param drawable the drawable to draw on
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the drawable is null</li>
    # <li>ERROR_NULL_ARGUMENT - if there is no current device</li>
    # <li>ERROR_INVALID_ARGUMENT
    # - if the drawable is an image that is not a bitmap or an icon
    # - if the drawable is an image or printer that is already selected
    # into another graphics context</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle could not be obtained for GC creation</li>
    # <li>ERROR_THREAD_INVALID_ACCESS if not called from the thread that created the drawable</li>
    # </ul>
    def initialize(drawable)
      initialize__gc(drawable, 0)
    end
    
    typesig { [Drawable, ::Java::Int] }
    # Constructs a new instance of this class which has been
    # configured to draw on the specified drawable. Sets the
    # foreground color, background color and font in the GC
    # to match those in the drawable.
    # <p>
    # You must dispose the graphics context when it is no longer required.
    # </p>
    # 
    # @param drawable the drawable to draw on
    # @param style the style of GC to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the drawable is null</li>
    # <li>ERROR_NULL_ARGUMENT - if there is no current device</li>
    # <li>ERROR_INVALID_ARGUMENT
    # - if the drawable is an image that is not a bitmap or an icon
    # - if the drawable is an image or printer that is already selected
    # into another graphics context</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES if a handle could not be obtained for GC creation</li>
    # <li>ERROR_THREAD_INVALID_ACCESS if not called from the thread that created the drawable</li>
    # </ul>
    # 
    # @since 2.1.2
    def initialize(drawable, style)
      @handle = 0
      @drawable = nil
      @data = nil
      super()
      if ((drawable).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      data = SwtGCData.new
      data.attr_style = check_style(style)
      # int
      gdk_gc = drawable.internal_new__gc(data)
      device = data.attr_device
      if ((device).nil?)
        device = Device.get_device
      end
      if ((device).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      self.attr_device = data.attr_device = device
      init(drawable, data, gdk_gc)
      init
    end
    
    class_module.module_eval {
      typesig { [::Java::Long, String, ::Java::Float, ::Java::Float, Font] }
      # int
      def add_cairo_string(cairo, string, x, y, font)
        buffer = Converter.wcs_to_mbcs(nil, string, true)
        if (OS::GTK_VERSION >= OS._version(2, 8, 0))
          # int
          layout = OS.pango_cairo_create_layout(cairo)
          if ((layout).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          OS.pango_layout_set_text(layout, buffer, -1)
          OS.pango_layout_set_font_description(layout, font.attr_handle)
          current_x = Array.typed(::Java::Double).new(1) { 0.0 }
          current_y = Array.typed(::Java::Double).new(1) { 0.0 }
          Cairo.cairo_get_current_point(cairo, current_x, current_y)
          if (!(current_x[0]).equal?(x) || !(current_y[0]).equal?(y))
            Cairo.cairo_move_to(cairo, x, y)
          end
          OS.pango_cairo_layout_path(cairo, layout)
          OS.g_object_unref(layout)
        else
          SwtGC.set_cairo_font(cairo, font)
          extents = Cairo_font_extents_t.new
          Cairo.cairo_font_extents(cairo, extents)
          baseline = y + extents.attr_ascent
          Cairo.cairo_move_to(cairo, x, baseline)
          Cairo.cairo_text_path(cairo, buffer)
        end
      end
      
      typesig { [::Java::Int] }
      def check_style(style)
        if (!((style & SWT::LEFT_TO_RIGHT)).equal?(0))
          style &= ~SWT::RIGHT_TO_LEFT
        end
        return style & (SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT)
      end
      
      typesig { [::Java::Long, SwtGCData] }
      # int
      def gtk_new(handle, data)
        gc = SwtGC.new
        gc.attr_device = data.attr_device
        gc.init(nil, data, handle)
        return gc
      end
      
      typesig { [Drawable, SwtGCData] }
      def gtk_new(drawable, data)
        gc = SwtGC.new
        # int
        gdk_gc = drawable.internal_new__gc(data)
        gc.attr_device = data.attr_device
        gc.init(drawable, data, gdk_gc)
        return gc
      end
    }
    
    typesig { [::Java::Int] }
    def check_gc(mask)
      state = @data.attr_state
      if (((state & mask)).equal?(mask))
        return
      end
      state = (state ^ mask) & mask
      @data.attr_state |= mask
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        if (!((state & (BACKGROUND | FOREGROUND))).equal?(0))
          color = nil
          pattern = nil
          if (!((state & FOREGROUND)).equal?(0))
            color = @data.attr_foreground
            pattern = @data.attr_foreground_pattern
            @data.attr_state &= ~BACKGROUND
          else
            color = @data.attr_background
            pattern = @data.attr_background_pattern
            @data.attr_state &= ~FOREGROUND
          end
          if (!(pattern).nil?)
            if (!((@data.attr_style & SWT::MIRRORED)).equal?(0) && !(pattern.attr_surface).equal?(0))
              # int
              new_pattern = Cairo.cairo_pattern_create_for_surface(pattern.attr_surface)
              if ((new_pattern).equal?(0))
                SWT.error(SWT::ERROR_NO_HANDLES)
              end
              Cairo.cairo_pattern_set_extend(new_pattern, Cairo::CAIRO_EXTEND_REPEAT)
              matrix = Array.typed(::Java::Double).new([-1, 0, 0, 1, 0, 0])
              Cairo.cairo_pattern_set_matrix(new_pattern, matrix)
              Cairo.cairo_set_source(cairo, new_pattern)
              Cairo.cairo_pattern_destroy(new_pattern)
            else
              Cairo.cairo_set_source(cairo, pattern.attr_handle)
            end
          else
            Cairo.cairo_set_source_rgba(cairo, (color.attr_red & 0xffff) / (0xffff).to_f, (color.attr_green & 0xffff) / (0xffff).to_f, (color.attr_blue & 0xffff) / (0xffff).to_f, @data.attr_alpha / (0xff).to_f)
          end
        end
        if (!((state & FONT)).equal?(0))
          if (!(@data.attr_layout).equal?(0))
            font = @data.attr_font
            OS.pango_layout_set_font_description(@data.attr_layout, font.attr_handle)
          end
          if (OS::GTK_VERSION < OS._version(2, 8, 0))
            set_cairo_font(cairo, @data.attr_font)
          end
        end
        if (!((state & LINE_CAP)).equal?(0))
          cap_style = 0
          case (@data.attr_line_cap)
          when SWT::CAP_ROUND
            cap_style = Cairo::CAIRO_LINE_CAP_ROUND
          when SWT::CAP_FLAT
            cap_style = Cairo::CAIRO_LINE_CAP_BUTT
          when SWT::CAP_SQUARE
            cap_style = Cairo::CAIRO_LINE_CAP_SQUARE
          end
          Cairo.cairo_set_line_cap(cairo, cap_style)
        end
        if (!((state & LINE_JOIN)).equal?(0))
          join_style = 0
          case (@data.attr_line_join)
          when SWT::JOIN_MITER
            join_style = Cairo::CAIRO_LINE_JOIN_MITER
          when SWT::JOIN_ROUND
            join_style = Cairo::CAIRO_LINE_JOIN_ROUND
          when SWT::JOIN_BEVEL
            join_style = Cairo::CAIRO_LINE_JOIN_BEVEL
          end
          Cairo.cairo_set_line_join(cairo, join_style)
        end
        if (!((state & LINE_WIDTH)).equal?(0))
          Cairo.cairo_set_line_width(cairo, (@data.attr_line_width).equal?(0) ? 1 : @data.attr_line_width)
          case (@data.attr_line_style)
          when SWT::LINE_DOT, SWT::LINE_DASH, SWT::LINE_DASHDOT, SWT::LINE_DASHDOTDOT
            state |= LINE_STYLE
          end
        end
        if (!((state & LINE_STYLE)).equal?(0))
          dashes_offset = 0
          dashes = nil
          width = @data.attr_line_width
          case (@data.attr_line_style)
          when SWT::LINE_SOLID
          when SWT::LINE_DASH
            dashes = !(width).equal?(0) ? LINE_DASH : LINE_DASH_ZERO
          when SWT::LINE_DOT
            dashes = !(width).equal?(0) ? LINE_DOT : LINE_DOT_ZERO
          when SWT::LINE_DASHDOT
            dashes = !(width).equal?(0) ? LINE_DASHDOT : LINE_DASHDOT_ZERO
          when SWT::LINE_DASHDOTDOT
            dashes = !(width).equal?(0) ? LINE_DASHDOTDOT : LINE_DASHDOTDOT_ZERO
          when SWT::LINE_CUSTOM
            dashes = @data.attr_line_dashes
          end
          if (!(dashes).nil?)
            dashes_offset = @data.attr_line_dashes_offset
            cairo_dashes = Array.typed(::Java::Double).new(dashes.attr_length) { 0.0 }
            i = 0
            while i < cairo_dashes.attr_length
              cairo_dashes[i] = (width).equal?(0) || (@data.attr_line_style).equal?(SWT::LINE_CUSTOM) ? dashes[i] : dashes[i] * width
              i += 1
            end
            Cairo.cairo_set_dash(cairo, cairo_dashes, cairo_dashes.attr_length, dashes_offset)
          else
            Cairo.cairo_set_dash(cairo, nil, 0, 0)
          end
        end
        if (!((state & LINE_MITERLIMIT)).equal?(0))
          Cairo.cairo_set_miter_limit(cairo, @data.attr_line_miter_limit)
        end
        if (!((state & DRAW_OFFSET)).equal?(0))
          @data.attr_cairo_xoffset = @data.attr_cairo_yoffset = 0
          matrix = Array.typed(::Java::Double).new(6) { 0.0 }
          Cairo.cairo_get_matrix(cairo, matrix)
          dx = Array.typed(::Java::Double).new([1])
          dy = Array.typed(::Java::Double).new([1])
          Cairo.cairo_user_to_device_distance(cairo, dx, dy)
          scaling = dx[0]
          if (scaling < 0)
            scaling = -scaling
          end
          stroke_width = @data.attr_line_width * scaling
          if ((stroke_width).equal?(0) || ((RJava.cast_to_int(stroke_width) % 2)).equal?(1))
            @data.attr_cairo_xoffset = 0.5 / scaling
          end
          scaling = dy[0]
          if (scaling < 0)
            scaling = -scaling
          end
          stroke_width = @data.attr_line_width * scaling
          if ((stroke_width).equal?(0) || ((RJava.cast_to_int(stroke_width) % 2)).equal?(1))
            @data.attr_cairo_yoffset = 0.5 / scaling
          end
        end
        return
      end
      if (!((state & (BACKGROUND | FOREGROUND))).equal?(0))
        foreground = nil
        if (!((state & FOREGROUND)).equal?(0))
          foreground = @data.attr_foreground
          @data.attr_state &= ~BACKGROUND
        else
          foreground = @data.attr_background
          @data.attr_state &= ~FOREGROUND
        end
        OS.gdk_gc_set_foreground(@handle, foreground)
      end
      if (!((state & BACKGROUND_BG)).equal?(0))
        background = @data.attr_background
        OS.gdk_gc_set_background(@handle, background)
      end
      if (!((state & FONT)).equal?(0))
        if (!(@data.attr_layout).equal?(0))
          font = @data.attr_font
          OS.pango_layout_set_font_description(@data.attr_layout, font.attr_handle)
        end
      end
      if (!((state & (LINE_CAP | LINE_JOIN | LINE_STYLE | LINE_WIDTH))).equal?(0))
        cap_style = 0
        join_style = 0
        width = RJava.cast_to_int(@data.attr_line_width)
        line_style = 0
        dashes = nil
        case (@data.attr_line_cap)
        when SWT::CAP_ROUND
          cap_style = OS::GDK_CAP_ROUND
        when SWT::CAP_FLAT
          cap_style = OS::GDK_CAP_BUTT
        when SWT::CAP_SQUARE
          cap_style = OS::GDK_CAP_PROJECTING
        end
        case (@data.attr_line_join)
        when SWT::JOIN_ROUND
          join_style = OS::GDK_JOIN_ROUND
        when SWT::JOIN_MITER
          join_style = OS::GDK_JOIN_MITER
        when SWT::JOIN_BEVEL
          join_style = OS::GDK_JOIN_BEVEL
        end
        case (@data.attr_line_style)
        when SWT::LINE_SOLID
        when SWT::LINE_DASH
          dashes = !(width).equal?(0) ? LINE_DASH : LINE_DASH_ZERO
        when SWT::LINE_DOT
          dashes = !(width).equal?(0) ? LINE_DOT : LINE_DOT_ZERO
        when SWT::LINE_DASHDOT
          dashes = !(width).equal?(0) ? LINE_DASHDOT : LINE_DASHDOT_ZERO
        when SWT::LINE_DASHDOTDOT
          dashes = !(width).equal?(0) ? LINE_DASHDOTDOT : LINE_DASHDOTDOT_ZERO
        when SWT::LINE_CUSTOM
          dashes = @data.attr_line_dashes
        end
        if (!(dashes).nil?)
          if (!((state & LINE_STYLE)).equal?(0))
            dash_list = Array.typed(::Java::Byte).new(dashes.attr_length) { 0 }
            i = 0
            while i < dash_list.attr_length
              dash_list[i] = ((width).equal?(0) || (@data.attr_line_style).equal?(SWT::LINE_CUSTOM) ? dashes[i] : dashes[i] * width)
              i += 1
            end
            OS.gdk_gc_set_dashes(@handle, 0, dash_list, dash_list.attr_length)
          end
          line_style = OS::GDK_LINE_ON_OFF_DASH
        else
          line_style = OS::GDK_LINE_SOLID
        end
        OS.gdk_gc_set_line_attributes(@handle, width, line_style, cap_style, join_style)
      end
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Double)] }
    # int
    # int
    def convert_rgn(rgn, matrix)
      # int
      new_rgn = OS.gdk_region_new
      n_rects = Array.typed(::Java::Int).new(1) { 0 }
      # int
      # int
      rects = Array.typed(::Java::Long).new(1) { 0 }
      OS.gdk_region_get_rectangles(rgn, rects, n_rects)
      rect = GdkRectangle.new
      point_array = Array.typed(::Java::Int).new(8) { 0 }
      x = Array.typed(::Java::Double).new(1) { 0.0 }
      y = Array.typed(::Java::Double).new(1) { 0.0 }
      i = 0
      while i < n_rects[0]
        OS.memmove(rect, rects[0] + (i * GdkRectangle.attr_sizeof), GdkRectangle.attr_sizeof)
        x[0] = rect.attr_x
        y[0] = rect.attr_y
        Cairo.cairo_matrix_transform_point(matrix, x, y)
        point_array[0] = RJava.cast_to_int(x[0])
        point_array[1] = RJava.cast_to_int(y[0])
        x[0] = rect.attr_x + rect.attr_width
        y[0] = rect.attr_y
        Cairo.cairo_matrix_transform_point(matrix, x, y)
        point_array[2] = RJava.cast_to_int(Math.round(x[0]))
        point_array[3] = RJava.cast_to_int(y[0])
        x[0] = rect.attr_x + rect.attr_width
        y[0] = rect.attr_y + rect.attr_height
        Cairo.cairo_matrix_transform_point(matrix, x, y)
        point_array[4] = RJava.cast_to_int(Math.round(x[0]))
        point_array[5] = RJava.cast_to_int(Math.round(y[0]))
        x[0] = rect.attr_x
        y[0] = rect.attr_y + rect.attr_height
        Cairo.cairo_matrix_transform_point(matrix, x, y)
        point_array[6] = RJava.cast_to_int(x[0])
        point_array[7] = RJava.cast_to_int(Math.round(y[0]))
        # int
        poly_rgn = OS.gdk_region_polygon(point_array, point_array.attr_length / 2, OS::GDK_EVEN_ODD_RULE)
        OS.gdk_region_union(new_rgn, poly_rgn)
        OS.gdk_region_destroy(poly_rgn)
        i += 1
      end
      if (!(rects[0]).equal?(0))
        OS.g_free(rects[0])
      end
      return new_rgn
    end
    
    typesig { [Image, ::Java::Int, ::Java::Int] }
    # Copies a rectangular area of the receiver at the specified
    # position into the image, which must be of type <code>SWT.BITMAP</code>.
    # 
    # @param image the image to copy into
    # @param x the x coordinate in the receiver of the area to be copied
    # @param y the y coordinate in the receiver of the area to be copied
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the image is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the image is not a bitmap or has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def copy_area(image, x, y)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((image).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (!(image.attr_type).equal?(SWT::BITMAP) || image.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      rect = image.get_bounds
      # int
      gdk_gc = OS.gdk_gc_new(image.attr_pixmap)
      if ((gdk_gc).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS.gdk_gc_set_subwindow(gdk_gc, OS::GDK_INCLUDE_INFERIORS)
      OS.gdk_draw_drawable(image.attr_pixmap, gdk_gc, @data.attr_drawable, x, y, 0, 0, rect.attr_width, rect.attr_height)
      OS.g_object_unref(gdk_gc)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Copies a rectangular area of the receiver at the source
    # position onto the receiver at the destination position.
    # 
    # @param srcX the x coordinate in the receiver of the area to be copied
    # @param srcY the y coordinate in the receiver of the area to be copied
    # @param width the width of the area to copy
    # @param height the height of the area to copy
    # @param destX the x coordinate in the receiver of the area to copy to
    # @param destY the y coordinate in the receiver of the area to copy to
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def copy_area(src_x, src_y, width, height, dest_x, dest_y)
      copy_area(src_x, src_y, width, height, dest_x, dest_y, true)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    # Copies a rectangular area of the receiver at the source
    # position onto the receiver at the destination position.
    # 
    # @param srcX the x coordinate in the receiver of the area to be copied
    # @param srcY the y coordinate in the receiver of the area to be copied
    # @param width the width of the area to copy
    # @param height the height of the area to copy
    # @param destX the x coordinate in the receiver of the area to copy to
    # @param destY the y coordinate in the receiver of the area to copy to
    # @param paint if <code>true</code> paint events will be generated for old and obscured areas
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.1
    def copy_area(src_x, src_y, width, height, dest_x, dest_y, paint)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (width <= 0 || height <= 0)
        return
      end
      delta_x = dest_x - src_x
      delta_y = dest_y - src_y
      if ((delta_x).equal?(0) && (delta_y).equal?(0))
        return
      end
      # int
      drawable = @data.attr_drawable
      if ((@data.attr_image).nil? && paint)
        OS.gdk_gc_set_exposures(@handle, true)
      end
      OS.gdk_draw_drawable(drawable, @handle, drawable, src_x, src_y, dest_x, dest_y, width, height)
      if ((@data.attr_image).nil? & paint)
        OS.gdk_gc_set_exposures(@handle, false)
        disjoint = (dest_x + width < src_x) || (src_x + width < dest_x) || (dest_y + height < src_y) || (src_y + height < dest_y)
        rect = GdkRectangle.new
        if (disjoint)
          rect.attr_x = src_x
          rect.attr_y = src_y
          rect.attr_width = width
          rect.attr_height = height
          OS.gdk_window_invalidate_rect(drawable, rect, false)
          # OS.gdk_window_clear_area_e(drawable, srcX, srcY, width, height);
        else
          if (!(delta_x).equal?(0))
            new_x = dest_x - delta_x
            if (delta_x < 0)
              new_x = dest_x + width
            end
            rect.attr_x = new_x
            rect.attr_y = src_y
            rect.attr_width = Math.abs(delta_x)
            rect.attr_height = height
            OS.gdk_window_invalidate_rect(drawable, rect, false)
            # OS.gdk_window_clear_area_e(drawable, newX, srcY, Math.abs(deltaX), height);
          end
          if (!(delta_y).equal?(0))
            new_y = dest_y - delta_y
            if (delta_y < 0)
              new_y = dest_y + height
            end
            rect.attr_x = src_x
            rect.attr_y = new_y
            rect.attr_width = width
            rect.attr_height = Math.abs(delta_y)
            OS.gdk_window_invalidate_rect(drawable, rect, false)
            # OS.gdk_window_clear_area_e(drawable, srcX, newY, width, Math.abs(deltaY));
          end
        end
      end
    end
    
    typesig { [] }
    def create_layout
      # int
      context = OS.gdk_pango_context_get
      if ((context).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      @data.attr_context = context
      # int
      layout = OS.pango_layout_new(context)
      if ((layout).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      @data.attr_layout = layout
      OS.pango_context_set_language(context, OS.gtk_get_default_language)
      OS.pango_context_set_base_dir(context, !((@data.attr_style & SWT::MIRRORED)).equal?(0) ? OS::PANGO_DIRECTION_RTL : OS::PANGO_DIRECTION_LTR)
      OS.gdk_pango_context_set_colormap(context, OS.gdk_colormap_get_system)
      if (OS::GTK_VERSION >= OS._version(2, 4, 0))
        OS.pango_layout_set_auto_dir(layout, false)
      end
    end
    
    typesig { [] }
    def dispose_layout
      @data.attr_string = nil
      if (!(@data.attr_context).equal?(0))
        OS.g_object_unref(@data.attr_context)
      end
      if (!(@data.attr_layout).equal?(0))
        OS.g_object_unref(@data.attr_layout)
      end
      @data.attr_layout = @data.attr_context = 0
    end
    
    typesig { [] }
    def destroy
      if (@data.attr_dispose_cairo)
        # int
        cairo = @data.attr_cairo
        if (!(cairo).equal?(0))
          Cairo.cairo_destroy(cairo)
        end
        @data.attr_cairo = 0
      end
      # Free resources
      # int
      clip_rgn = @data.attr_clip_rgn
      if (!(clip_rgn).equal?(0))
        OS.gdk_region_destroy(clip_rgn)
      end
      image = @data.attr_image
      if (!(image).nil?)
        image.attr_mem_gc = nil
        if (!(image.attr_transparent_pixel).equal?(-1))
          image.create_mask
        end
      end
      dispose_layout
      # Dispose the GC
      if (!(@drawable).nil?)
        @drawable.internal_dispose__gc(@handle, @data)
      end
      @data.attr_drawable = @data.attr_clip_rgn = 0
      @drawable = nil
      @handle = 0
      @data.attr_image = nil
      @data.attr_string = nil
      @data = nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Draws the outline of a circular or elliptical arc
    # within the specified rectangular area.
    # <p>
    # The resulting arc begins at <code>startAngle</code> and extends
    # for <code>arcAngle</code> degrees, using the current color.
    # Angles are interpreted such that 0 degrees is at the 3 o'clock
    # position. A positive value indicates a counter-clockwise rotation
    # while a negative value indicates a clockwise rotation.
    # </p><p>
    # The center of the arc is the center of the rectangle whose origin
    # is (<code>x</code>, <code>y</code>) and whose size is specified by the
    # <code>width</code> and <code>height</code> arguments.
    # </p><p>
    # The resulting arc covers an area <code>width + 1</code> pixels wide
    # by <code>height + 1</code> pixels tall.
    # </p>
    # 
    # @param x the x coordinate of the upper-left corner of the arc to be drawn
    # @param y the y coordinate of the upper-left corner of the arc to be drawn
    # @param width the width of the arc to be drawn
    # @param height the height of the arc to be drawn
    # @param startAngle the beginning angle
    # @param arcAngle the angular extent of the arc, relative to the start angle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def draw_arc(x, y, width, height, start_angle, arc_angle)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      check_gc(DRAW)
      if (width < 0)
        x = x + width
        width = -width
      end
      if (height < 0)
        y = y + height
        height = -height
      end
      if ((width).equal?(0) || (height).equal?(0) || (arc_angle).equal?(0))
        return
      end
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        x_offset = @data.attr_cairo_xoffset
        y_offset = @data.attr_cairo_yoffset
        if ((width).equal?(height))
          if (arc_angle >= 0)
            Cairo.cairo_arc_negative(cairo, x + x_offset + width / 2, y + y_offset + height / 2, width / 2, -start_angle * (Compatibility::PI).to_f / 180, -(start_angle + arc_angle) * (Compatibility::PI).to_f / 180)
          else
            Cairo.cairo_arc(cairo, x + x_offset + width / 2, y + y_offset + height / 2, width / 2, -start_angle * (Compatibility::PI).to_f / 180, -(start_angle + arc_angle) * (Compatibility::PI).to_f / 180)
          end
        else
          Cairo.cairo_save(cairo)
          Cairo.cairo_translate(cairo, x + x_offset + width / 2, y + y_offset + height / 2)
          Cairo.cairo_scale(cairo, width / 2, height / 2)
          if (arc_angle >= 0)
            Cairo.cairo_arc_negative(cairo, 0, 0, 1, -start_angle * (Compatibility::PI).to_f / 180, -(start_angle + arc_angle) * (Compatibility::PI).to_f / 180)
          else
            Cairo.cairo_arc(cairo, 0, 0, 1, -start_angle * (Compatibility::PI).to_f / 180, -(start_angle + arc_angle) * (Compatibility::PI).to_f / 180)
          end
          Cairo.cairo_restore(cairo)
        end
        Cairo.cairo_stroke(cairo)
        return
      end
      OS.gdk_draw_arc(@data.attr_drawable, @handle, 0, x, y, width, height, start_angle * 64, arc_angle * 64)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Draws a rectangle, based on the specified arguments, which has
    # the appearance of the platform's <em>focus rectangle</em> if the
    # platform supports such a notion, and otherwise draws a simple
    # rectangle in the receiver's foreground color.
    # 
    # @param x the x coordinate of the rectangle
    # @param y the y coordinate of the rectangle
    # @param width the width of the rectangle
    # @param height the height of the rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #drawRectangle(int, int, int, int)
    def draw_focus(x, y, width, height)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      # Feature in GTK.  The function gtk_widget_get_default_style()
      # can't be used here because gtk_paint_focus() uses GCs, which
      # are not valid in the default style. The fix is to use a style
      # from a widget.
      # 
      # int
      style = OS.gtk_widget_get_style(@data.attr_device.attr_shell_handle)
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        check_gc(FOREGROUND)
        line_width = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_widget_style_get(@data.attr_device.attr_shell_handle, OS.attr_focus_line_width, line_width, 0)
        Cairo.cairo_save(cairo)
        Cairo.cairo_set_line_width(cairo, line_width[0])
        dashes = Array.typed(::Java::Double).new([1, 1])
        dash_offset = -line_width[0] / 2
        while (dash_offset < 0)
          dash_offset += 2
        end
        Cairo.cairo_set_dash(cairo, dashes, dashes.attr_length, dash_offset)
        Cairo.cairo_rectangle(cairo, x + line_width[0] / 2, y + line_width[0] / 2, width, height)
        Cairo.cairo_stroke(cairo)
        Cairo.cairo_restore(cairo)
        return
      end
      OS.gtk_paint_focus(style, @data.attr_drawable, OS::GTK_STATE_NORMAL, nil, @data.attr_device.attr_shell_handle, Array.typed(::Java::Byte).new(1) { 0 }, x, y, width, height)
    end
    
    typesig { [Image, ::Java::Int, ::Java::Int] }
    # Draws the given image in the receiver at the specified
    # coordinates.
    # 
    # @param image the image to draw
    # @param x the x coordinate of where to draw
    # @param y the y coordinate of where to draw
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the image is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the image has been disposed</li>
    # <li>ERROR_INVALID_ARGUMENT - if the given coordinates are outside the bounds of the image</li>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES - if no handles are available to perform the operation</li>
    # </ul>
    def draw_image(image, x, y)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((image).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (image.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      draw_image(image, 0, 0, -1, -1, x, y, -1, -1, true)
    end
    
    typesig { [Image, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Copies a rectangular area from the source image into a (potentially
    # different sized) rectangular area in the receiver. If the source
    # and destination areas are of differing sizes, then the source
    # area will be stretched or shrunk to fit the destination area
    # as it is copied. The copy fails if any part of the source rectangle
    # lies outside the bounds of the source image, or if any of the width
    # or height arguments are negative.
    # 
    # @param image the source image
    # @param srcX the x coordinate in the source image to copy from
    # @param srcY the y coordinate in the source image to copy from
    # @param srcWidth the width in pixels to copy from the source
    # @param srcHeight the height in pixels to copy from the source
    # @param destX the x coordinate in the destination to copy to
    # @param destY the y coordinate in the destination to copy to
    # @param destWidth the width in pixels of the destination rectangle
    # @param destHeight the height in pixels of the destination rectangle
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the image is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the image has been disposed</li>
    # <li>ERROR_INVALID_ARGUMENT - if any of the width or height arguments are negative.
    # <li>ERROR_INVALID_ARGUMENT - if the source rectangle is not contained within the bounds of the source image</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES - if no handles are available to perform the operation</li>
    # </ul>
    def draw_image(image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((src_width).equal?(0) || (src_height).equal?(0) || (dest_width).equal?(0) || (dest_height).equal?(0))
        return
      end
      if (src_x < 0 || src_y < 0 || src_width < 0 || src_height < 0 || dest_width < 0 || dest_height < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((image).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (image.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      draw_image(image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, false)
    end
    
    typesig { [Image, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def draw_image(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple)
      width = Array.typed(::Java::Int).new(1) { 0 }
      height = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_drawable_get_size(src_image.attr_pixmap, width, height)
      img_width = width[0]
      img_height = height[0]
      if (simple)
        src_width = dest_width = img_width
        src_height = dest_height = img_height
      else
        simple = (src_x).equal?(0) && (src_y).equal?(0) && (src_width).equal?(dest_width) && (dest_width).equal?(img_width) && (src_height).equal?(dest_height) && (dest_height).equal?(img_height)
        if (src_x + src_width > img_width || src_y + src_height > img_height)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
      end
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        if (!(@data.attr_alpha).equal?(0))
          src_image.create_surface
          Cairo.cairo_save(cairo)
          if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
            Cairo.cairo_scale(cairo, -1, 1)
            Cairo.cairo_translate(cairo, -2 * dest_x - dest_width, 0)
          end
          Cairo.cairo_rectangle(cairo, dest_x, dest_y, dest_width, dest_height)
          Cairo.cairo_clip(cairo)
          Cairo.cairo_translate(cairo, dest_x - src_x, dest_y - src_y)
          if (!(src_width).equal?(dest_width) || !(src_height).equal?(dest_height))
            Cairo.cairo_scale(cairo, dest_width / (src_width).to_f, dest_height / (src_height).to_f)
          end
          filter = Cairo::CAIRO_FILTER_GOOD
          case (@data.attr_interpolation)
          when SWT::DEFAULT
            filter = Cairo::CAIRO_FILTER_GOOD
          when SWT::NONE
            filter = Cairo::CAIRO_FILTER_NEAREST
          when SWT::LOW
            filter = Cairo::CAIRO_FILTER_FAST
          when SWT::HIGH
            filter = Cairo::CAIRO_FILTER_BEST
          end
          # int
          pattern = Cairo.cairo_pattern_create_for_surface(src_image.attr_surface)
          if ((pattern).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          if (!(src_width).equal?(dest_width) || !(src_height).equal?(dest_height))
            # Bug in Cairo.  When drawing the image streched with an interpolation
            # alghorithm, the edges of the image are faded.  This is not a bug, but
            # it is not desired.  To avoid the faded edges, it should be possible to
            # use cairo_pattern_set_extend() to set the pattern extend to either
            # CAIRO_EXTEND_REFLECT or CAIRO_EXTEND_PAD, but these are not implemented
            # in some versions of cairo (1.2.x) and have bugs in others (in 1.4.2 it
            # draws with black edges).  The fix is to implement CAIRO_EXTEND_REFLECT
            # by creating an image that is 3 times bigger than the original, drawing
            # the original image in every quadrant (with an appropriate transform) and
            # use this image as the pattern.
            # 
            # NOTE: For some reaons, it is necessary to use CAIRO_EXTEND_PAD with
            # the image that was created or the edges are still faded.
            if (Cairo.cairo_version >= Cairo._cairo_version_encode(1, 4, 0))
              # int
              surface = Cairo.cairo_image_surface_create(Cairo::CAIRO_FORMAT_ARGB32, img_width * 3, img_height * 3)
              # int
              cr = Cairo.cairo_create(surface)
              Cairo.cairo_set_source_surface(cr, src_image.attr_surface, img_width, img_height)
              Cairo.cairo_paint(cr)
              Cairo.cairo_scale(cr, -1, -1)
              Cairo.cairo_set_source_surface(cr, src_image.attr_surface, -img_width, -img_height)
              Cairo.cairo_paint(cr)
              Cairo.cairo_set_source_surface(cr, src_image.attr_surface, -img_width * 3, -img_height)
              Cairo.cairo_paint(cr)
              Cairo.cairo_set_source_surface(cr, src_image.attr_surface, -img_width, -img_height * 3)
              Cairo.cairo_paint(cr)
              Cairo.cairo_set_source_surface(cr, src_image.attr_surface, -img_width * 3, -img_height * 3)
              Cairo.cairo_paint(cr)
              Cairo.cairo_scale(cr, 1, -1)
              Cairo.cairo_set_source_surface(cr, src_image.attr_surface, -img_width, img_height)
              Cairo.cairo_paint(cr)
              Cairo.cairo_set_source_surface(cr, src_image.attr_surface, -img_width * 3, img_height)
              Cairo.cairo_paint(cr)
              Cairo.cairo_scale(cr, -1, -1)
              Cairo.cairo_set_source_surface(cr, src_image.attr_surface, img_width, -img_height)
              Cairo.cairo_paint(cr)
              Cairo.cairo_set_source_surface(cr, src_image.attr_surface, img_width, -img_height * 3)
              Cairo.cairo_paint(cr)
              Cairo.cairo_destroy(cr)
              # int
              new_pattern = Cairo.cairo_pattern_create_for_surface(surface)
              Cairo.cairo_surface_destroy(surface)
              if ((new_pattern).equal?(0))
                SWT.error(SWT::ERROR_NO_HANDLES)
              end
              Cairo.cairo_pattern_destroy(pattern)
              pattern = new_pattern
              Cairo.cairo_pattern_set_extend(pattern, Cairo::CAIRO_EXTEND_PAD)
              matrix = Array.typed(::Java::Double).new(6) { 0.0 }
              Cairo.cairo_matrix_init_translate(matrix, img_width, img_height)
              Cairo.cairo_pattern_set_matrix(pattern, matrix)
            end
            # Cairo.cairo_pattern_set_extend(pattern, Cairo.CAIRO_EXTEND_REFLECT);
          end
          Cairo.cairo_pattern_set_filter(pattern, filter)
          Cairo.cairo_set_source(cairo, pattern)
          if (!(@data.attr_alpha).equal?(0xff))
            Cairo.cairo_paint_with_alpha(cairo, @data.attr_alpha / (0xff).to_f)
          else
            Cairo.cairo_paint(cairo)
          end
          Cairo.cairo_restore(cairo)
          Cairo.cairo_pattern_destroy(pattern)
        end
        return
      end
      if (!(src_image.attr_alpha).equal?(-1) || !(src_image.attr_alpha_data).nil?)
        draw_image_alpha(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, img_width, img_height)
      else
        if (!(src_image.attr_transparent_pixel).equal?(-1) || !(src_image.attr_mask).equal?(0))
          draw_image_mask(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, img_width, img_height)
        else
          draw_image(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, img_width, img_height)
        end
      end
    end
    
    typesig { [Image, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int] }
    def draw_image(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, img_width, img_height)
      if ((src_width).equal?(dest_width) && (src_height).equal?(dest_height))
        OS.gdk_draw_drawable(@data.attr_drawable, @handle, src_image.attr_pixmap, src_x, src_y, dest_x, dest_y, dest_width, dest_height)
      else
        if (self.attr_device.attr_use_xrender)
          draw_image_xrender(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, img_width, img_height, 0, -1)
          return
        end
        # int
        pixbuf = scale(src_image.attr_pixmap, src_x, src_y, src_width, src_height, dest_width, dest_height)
        if (!(pixbuf).equal?(0))
          OS.gdk_pixbuf_render_to_drawable(pixbuf, @data.attr_drawable, @handle, 0, 0, dest_x, dest_y, dest_width, dest_height, OS::GDK_RGB_DITHER_NORMAL, 0, 0)
          OS.g_object_unref(pixbuf)
        end
      end
    end
    
    typesig { [Image, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int] }
    def draw_image_alpha(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, img_width, img_height)
      if ((src_image.attr_alpha).equal?(0))
        return
      end
      if ((src_image.attr_alpha).equal?(255))
        draw_image(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, img_width, img_height)
        return
      end
      if (self.attr_device.attr_use_xrender)
        draw_image_xrender(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, img_width, img_height, src_image.attr_mask, OS::PictStandardA8)
        return
      end
      # int
      pixbuf = OS.gdk_pixbuf_new(OS::GDK_COLORSPACE_RGB, true, 8, src_width, src_height)
      if ((pixbuf).equal?(0))
        return
      end
      # int
      colormap = OS.gdk_colormap_get_system
      OS.gdk_pixbuf_get_from_drawable(pixbuf, src_image.attr_pixmap, colormap, src_x, src_y, 0, 0, src_width, src_height)
      stride = OS.gdk_pixbuf_get_rowstride(pixbuf)
      # int
      pixels = OS.gdk_pixbuf_get_pixels(pixbuf)
      line = Array.typed(::Java::Byte).new(stride) { 0 }
      alpha = src_image.attr_alpha
      alpha_data = src_image.attr_alpha_data
      y = 0
      while y < src_height
        alpha_index = (y + src_y) * img_width + src_x
        OS.memmove(line, pixels + (y * stride), stride)
        x = 3
        while x < stride
          line[x] = (alpha_data).nil? ? alpha : alpha_data[((alpha_index += 1) - 1)]
          x += 4
        end
        OS.memmove(pixels + (y * stride), line, stride)
        y += 1
      end
      if (!(src_width).equal?(dest_width) || !(src_height).equal?(dest_height))
        # int
        scaled_pixbuf = OS.gdk_pixbuf_scale_simple(pixbuf, dest_width, dest_height, OS::GDK_INTERP_BILINEAR)
        OS.g_object_unref(pixbuf)
        if ((scaled_pixbuf).equal?(0))
          return
        end
        pixbuf = scaled_pixbuf
      end
      # Feature in GTK.  gdk_draw_pixbuf was introduced in GTK+ 2.2.0 and
      # supports clipping.
      if (OS::GTK_VERSION >= OS._version(2, 2, 0))
        OS.gdk_draw_pixbuf(@data.attr_drawable, @handle, pixbuf, 0, 0, dest_x, dest_y, dest_width, dest_height, OS::GDK_RGB_DITHER_NORMAL, 0, 0)
      else
        OS.gdk_pixbuf_render_to_drawable_alpha(pixbuf, @data.attr_drawable, 0, 0, dest_x, dest_y, dest_width, dest_height, OS::GDK_PIXBUF_ALPHA_BILEVEL, 128, OS::GDK_RGB_DITHER_NORMAL, 0, 0)
      end
      OS.g_object_unref(pixbuf)
    end
    
    typesig { [Image, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int] }
    def draw_image_mask(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, img_width, img_height)
      # int
      drawable = @data.attr_drawable
      # int
      color_pixmap = src_image.attr_pixmap
      # Generate the mask if necessary.
      if (!(src_image.attr_transparent_pixel).equal?(-1))
        src_image.create_mask
      end
      # int
      mask_pixmap = src_image.attr_mask
      if (self.attr_device.attr_use_xrender)
        draw_image_xrender(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, img_width, img_height, mask_pixmap, OS::PictStandardA1)
      else
        if (!(src_width).equal?(dest_width) || !(src_height).equal?(dest_height))
          # int
          pixbuf = OS.gdk_pixbuf_new(OS::GDK_COLORSPACE_RGB, true, 8, src_width, src_height)
          if (!(pixbuf).equal?(0))
            # int
            colormap = OS.gdk_colormap_get_system
            OS.gdk_pixbuf_get_from_drawable(pixbuf, color_pixmap, colormap, src_x, src_y, 0, 0, src_width, src_height)
            # int
            mask_pixbuf = OS.gdk_pixbuf_new(OS::GDK_COLORSPACE_RGB, false, 8, src_width, src_height)
            if (!(mask_pixbuf).equal?(0))
              OS.gdk_pixbuf_get_from_drawable(mask_pixbuf, mask_pixmap, 0, src_x, src_y, 0, 0, src_width, src_height)
              stride = OS.gdk_pixbuf_get_rowstride(pixbuf)
              # int
              pixels = OS.gdk_pixbuf_get_pixels(pixbuf)
              line = Array.typed(::Java::Byte).new(stride) { 0 }
              mask_stride = OS.gdk_pixbuf_get_rowstride(mask_pixbuf)
              # int
              mask_pixels = OS.gdk_pixbuf_get_pixels(mask_pixbuf)
              mask_line = Array.typed(::Java::Byte).new(mask_stride) { 0 }
              y = 0
              while y < src_height
                # int
                offset = pixels + (y * stride)
                OS.memmove(line, offset, stride)
                # int
                mask_offset = mask_pixels + (y * mask_stride)
                OS.memmove(mask_line, mask_offset, mask_stride)
                x = 0
                while x < src_width
                  if ((mask_line[x * 3]).equal?(0))
                    line[x * 4 + 3] = 0
                  end
                  x += 1
                end
                OS.memmove(offset, line, stride)
                y += 1
              end
              OS.g_object_unref(mask_pixbuf)
              # int
              scaled_pixbuf = OS.gdk_pixbuf_scale_simple(pixbuf, dest_width, dest_height, OS::GDK_INTERP_BILINEAR)
              if (!(scaled_pixbuf).equal?(0))
                # int
                # int
                color_buffer = Array.typed(::Java::Long).new(1) { 0 }
                # int
                # int
                mask_buffer = Array.typed(::Java::Long).new(1) { 0 }
                OS.gdk_pixbuf_render_pixmap_and_mask(scaled_pixbuf, color_buffer, mask_buffer, 128)
                color_pixmap = color_buffer[0]
                mask_pixmap = mask_buffer[0]
                OS.g_object_unref(scaled_pixbuf)
              end
            end
            OS.g_object_unref(pixbuf)
          end
          src_x = 0
          src_y = 0
          src_width = dest_width
          src_height = dest_height
        end
        # Merge clipping with mask if necessary
        if (!(@data.attr_clip_rgn).equal?(0))
          new_width = src_x + src_width
          new_height = src_y + src_height
          bytes_per_line = (new_width + 7) / 8
          mask_data = Array.typed(::Java::Byte).new(bytes_per_line * new_height) { 0 }
          # int
          mask = OS.gdk_bitmap_create_from_data(0, mask_data, new_width, new_height)
          if (!(mask).equal?(0))
            # int
            gc = OS.gdk_gc_new(mask)
            OS.gdk_region_offset(@data.attr_clip_rgn, -dest_x + src_x, -dest_y + src_y)
            OS.gdk_gc_set_clip_region(gc, @data.attr_clip_rgn)
            OS.gdk_region_offset(@data.attr_clip_rgn, dest_x - src_x, dest_y - src_y)
            color = GdkColor.new
            color.attr_pixel = 1
            OS.gdk_gc_set_foreground(gc, color)
            OS.gdk_draw_rectangle(mask, gc, 1, 0, 0, new_width, new_height)
            OS.gdk_gc_set_function(gc, OS::GDK_AND)
            OS.gdk_draw_drawable(mask, gc, mask_pixmap, 0, 0, 0, 0, new_width, new_height)
            OS.g_object_unref(gc)
            if (!(mask_pixmap).equal?(0) && !(src_image.attr_mask).equal?(mask_pixmap))
              OS.g_object_unref(mask_pixmap)
            end
            mask_pixmap = mask
          end
        end
        # Blit cliping the mask
        values = GdkGCValues.new
        OS.gdk_gc_get_values(@handle, values)
        OS.gdk_gc_set_clip_mask(@handle, mask_pixmap)
        OS.gdk_gc_set_clip_origin(@handle, dest_x - src_x, dest_y - src_y)
        OS.gdk_draw_drawable(drawable, @handle, color_pixmap, src_x, src_y, dest_x, dest_y, src_width, src_height)
        OS.gdk_gc_set_values(@handle, values, OS::GDK_GC_CLIP_MASK | OS::GDK_GC_CLIP_X_ORIGIN | OS::GDK_GC_CLIP_Y_ORIGIN)
        if (!(@data.attr_clip_rgn).equal?(0))
          OS.gdk_gc_set_clip_region(@handle, @data.attr_clip_rgn)
        end
      end
      # Destroy scaled pixmaps
      if (!(color_pixmap).equal?(0) && !(src_image.attr_pixmap).equal?(color_pixmap))
        OS.g_object_unref(color_pixmap)
      end
      if (!(mask_pixmap).equal?(0) && !(src_image.attr_mask).equal?(mask_pixmap))
        OS.g_object_unref(mask_pixmap)
      end
      # Destroy the image mask if the there is a GC created on the image
      if (!(src_image.attr_transparent_pixel).equal?(-1) && !(src_image.attr_mem_gc).nil?)
        src_image.destroy_mask
      end
    end
    
    typesig { [Image, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int] }
    # int
    def draw_image_xrender(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, img_width, img_height, mask_pixmap, mask_type)
      translate_x = 0
      translate_y = 0
      # int
      drawable = @data.attr_drawable
      if ((@data.attr_image).nil? && !@data.attr_real_drawable)
        x = Array.typed(::Java::Int).new(1) { 0 }
        y = Array.typed(::Java::Int).new(1) { 0 }
        # int
        # int
        real_drawable = Array.typed(::Java::Long).new(1) { 0 }
        OS.gdk_window_get_internal_paint_info(drawable, real_drawable, x, y)
        drawable = real_drawable[0]
        translate_x = -x[0]
        translate_y = -y[0]
      end
      # int
      x_display = OS._gdk_display
      # int
      mask_pict = 0
      if (!(mask_pixmap).equal?(0))
        attrib_count = 0
        attrib = nil
        if (!(src_image.attr_alpha).equal?(-1))
          attrib_count = 1
          attrib = XRenderPictureAttributes.new
          attrib.attr_repeat = true
        end
        mask_pict = OS._xrender_create_picture(x_display, OS.gdk_x11_drawable_get_xid(mask_pixmap), OS._xrender_find_standard_format(x_display, mask_type), attrib_count, attrib)
        if ((mask_pict).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
      end
      # int
      format = OS._xrender_find_visual_format(x_display, OS.gdk_x11_visual_get_xvisual(OS.gdk_visual_get_system))
      # int
      dest_pict = OS._xrender_create_picture(x_display, OS.gdk_x11_drawable_get_xid(drawable), format, 0, nil)
      if ((dest_pict).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      # int
      src_pict = OS._xrender_create_picture(x_display, OS.gdk_x11_drawable_get_xid(src_image.attr_pixmap), format, 0, nil)
      if ((src_pict).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      if (!(src_width).equal?(dest_width) || !(src_height).equal?(dest_height))
        transform = Array.typed(::Java::Int).new([RJava.cast_to_int((((src_width).to_f / dest_width) * 65536)), 0, 0, 0, RJava.cast_to_int((((src_height).to_f / dest_height) * 65536)), 0, 0, 0, 65536])
        OS._xrender_set_picture_transform(x_display, src_pict, transform)
        if (!(mask_pict).equal?(0))
          OS._xrender_set_picture_transform(x_display, mask_pict, transform)
        end
        src_x *= dest_width / (src_width).to_f
        src_y *= dest_height / (src_height).to_f
      end
      # int
      clipping = @data.attr_clip_rgn
      if (!(@data.attr_damage_rgn).equal?(0))
        if ((clipping).equal?(0))
          clipping = @data.attr_damage_rgn
        else
          clipping = OS.gdk_region_new
          OS.gdk_region_union(clipping, @data.attr_clip_rgn)
          OS.gdk_region_intersect(clipping, @data.attr_damage_rgn)
        end
      end
      if (!(clipping).equal?(0))
        n_rects = Array.typed(::Java::Int).new(1) { 0 }
        # int
        # int
        rects = Array.typed(::Java::Long).new(1) { 0 }
        OS.gdk_region_get_rectangles(clipping, rects, n_rects)
        rect = GdkRectangle.new
        x_rects = Array.typed(::Java::Short).new(n_rects[0] * 4) { 0 }
        i = 0
        j = 0
        while i < n_rects[0]
          OS.memmove(rect, rects[0] + (i * GdkRectangle.attr_sizeof), GdkRectangle.attr_sizeof)
          x_rects[j] = RJava.cast_to_short(rect.attr_x)
          x_rects[j + 1] = RJava.cast_to_short(rect.attr_y)
          x_rects[j + 2] = RJava.cast_to_short(rect.attr_width)
          x_rects[j + 3] = RJava.cast_to_short(rect.attr_height)
          i += 1
          j += 4
        end
        OS._xrender_set_picture_clip_rectangles(x_display, dest_pict, translate_x, translate_y, x_rects, n_rects[0])
        if (!(clipping).equal?(@data.attr_clip_rgn) && !(clipping).equal?(@data.attr_damage_rgn))
          OS.gdk_region_destroy(clipping)
        end
        if (!(rects[0]).equal?(0))
          OS.g_free(rects[0])
        end
      end
      OS._xrender_composite(x_display, !(mask_pict).equal?(0) ? OS::PictOpOver : OS::PictOpSrc, src_pict, mask_pict, dest_pict, src_x, src_y, src_x, src_y, dest_x + translate_x, dest_y + translate_y, dest_width, dest_height)
      OS._xrender_free_picture(x_display, dest_pict)
      OS._xrender_free_picture(x_display, src_pict)
      if (!(mask_pict).equal?(0))
        OS._xrender_free_picture(x_display, mask_pict)
      end
    end
    
    typesig { [::Java::Long, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # int
    # int
    def scale(src, src_x, src_y, src_width, src_height, dest_width, dest_height)
      # int
      pixbuf = OS.gdk_pixbuf_new(OS::GDK_COLORSPACE_RGB, false, 8, src_width, src_height)
      if ((pixbuf).equal?(0))
        return 0
      end
      # int
      colormap = OS.gdk_colormap_get_system
      OS.gdk_pixbuf_get_from_drawable(pixbuf, src, colormap, src_x, src_y, 0, 0, src_width, src_height)
      # int
      scaled_pixbuf = OS.gdk_pixbuf_scale_simple(pixbuf, dest_width, dest_height, OS::GDK_INTERP_BILINEAR)
      OS.g_object_unref(pixbuf)
      return scaled_pixbuf
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Draws a line, using the foreground color, between the points
    # (<code>x1</code>, <code>y1</code>) and (<code>x2</code>, <code>y2</code>).
    # 
    # @param x1 the first point's x coordinate
    # @param y1 the first point's y coordinate
    # @param x2 the second point's x coordinate
    # @param y2 the second point's y coordinate
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def draw_line(x1, y1, x2, y2)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      check_gc(DRAW)
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        x_offset = @data.attr_cairo_xoffset
        y_offset = @data.attr_cairo_yoffset
        Cairo.cairo_move_to(cairo, x1 + x_offset, y1 + y_offset)
        Cairo.cairo_line_to(cairo, x2 + x_offset, y2 + y_offset)
        Cairo.cairo_stroke(cairo)
        return
      end
      OS.gdk_draw_line(@data.attr_drawable, @handle, x1, y1, x2, y2)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Draws the outline of an oval, using the foreground color,
    # within the specified rectangular area.
    # <p>
    # The result is a circle or ellipse that fits within the
    # rectangle specified by the <code>x</code>, <code>y</code>,
    # <code>width</code>, and <code>height</code> arguments.
    # </p><p>
    # The oval covers an area that is <code>width + 1</code>
    # pixels wide and <code>height + 1</code> pixels tall.
    # </p>
    # 
    # @param x the x coordinate of the upper left corner of the oval to be drawn
    # @param y the y coordinate of the upper left corner of the oval to be drawn
    # @param width the width of the oval to be drawn
    # @param height the height of the oval to be drawn
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def draw_oval(x, y, width, height)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      check_gc(DRAW)
      if (width < 0)
        x = x + width
        width = -width
      end
      if (height < 0)
        y = y + height
        height = -height
      end
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        x_offset = @data.attr_cairo_xoffset
        y_offset = @data.attr_cairo_yoffset
        if ((width).equal?(height))
          Cairo.cairo_arc_negative(cairo, x + x_offset + width / 2, y + y_offset + height / 2, width / 2, 0, -2 * (Compatibility::PI).to_f)
        else
          Cairo.cairo_save(cairo)
          Cairo.cairo_translate(cairo, x + x_offset + width / 2, y + y_offset + height / 2)
          Cairo.cairo_scale(cairo, width / 2, height / 2)
          Cairo.cairo_arc_negative(cairo, 0, 0, 1, 0, -2 * (Compatibility::PI).to_f)
          Cairo.cairo_restore(cairo)
        end
        Cairo.cairo_stroke(cairo)
        return
      end
      OS.gdk_draw_arc(@data.attr_drawable, @handle, 0, x, y, width, height, 0, 23040)
    end
    
    typesig { [Path] }
    # Draws the path described by the parameter.
    # <p>
    # This operation requires the operating system's advanced
    # graphics subsystem which may not be available on some
    # platforms.
    # </p>
    # 
    # @param path the path to draw
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parameter is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the parameter has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_NO_GRAPHICS_LIBRARY - if advanced graphics are not available</li>
    # </ul>
    # 
    # @see Path
    # 
    # @since 3.1
    def draw_path(path)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((path).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((path.attr_handle).equal?(0))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      init_cairo
      check_gc(DRAW)
      # int
      cairo = @data.attr_cairo
      Cairo.cairo_save(cairo)
      x_offset = @data.attr_cairo_xoffset
      y_offset = @data.attr_cairo_yoffset
      Cairo.cairo_translate(cairo, x_offset, y_offset)
      # int
      copy = Cairo.cairo_copy_path(path.attr_handle)
      if ((copy).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      Cairo.cairo_append_path(cairo, copy)
      Cairo.cairo_path_destroy(copy)
      Cairo.cairo_stroke(cairo)
      Cairo.cairo_restore(cairo)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Draws a pixel, using the foreground color, at the specified
    # point (<code>x</code>, <code>y</code>).
    # <p>
    # Note that the receiver's line attributes do not affect this
    # operation.
    # </p>
    # 
    # @param x the point's x coordinate
    # @param y the point's y coordinate
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.0
    def draw_point(x, y)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      check_gc(DRAW)
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        Cairo.cairo_rectangle(cairo, x, y, 1, 1)
        Cairo.cairo_fill(cairo)
        return
      end
      OS.gdk_draw_point(@data.attr_drawable, @handle, x, y)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Draws the closed polygon which is defined by the specified array
    # of integer coordinates, using the receiver's foreground color. The array
    # contains alternating x and y values which are considered to represent
    # points which are the vertices of the polygon. Lines are drawn between
    # each consecutive pair, and between the first pair and last pair in the
    # array.
    # 
    # @param pointArray an array of alternating x and y values which are the vertices of the polygon
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT if pointArray is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def draw_polygon(point_array)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((point_array).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      check_gc(DRAW)
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        draw_polyline(cairo, point_array, true)
        Cairo.cairo_stroke(cairo)
        return
      end
      OS.gdk_draw_polygon(@data.attr_drawable, @handle, 0, point_array, point_array.attr_length / 2)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Draws the polyline which is defined by the specified array
    # of integer coordinates, using the receiver's foreground color. The array
    # contains alternating x and y values which are considered to represent
    # points which are the corners of the polyline. Lines are drawn between
    # each consecutive pair, but not between the first pair and last pair in
    # the array.
    # 
    # @param pointArray an array of alternating x and y values which are the corners of the polyline
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point array is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def draw_polyline(point_array)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((point_array).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      check_gc(DRAW)
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        draw_polyline(cairo, point_array, false)
        Cairo.cairo_stroke(cairo)
        return
      end
      OS.gdk_draw_lines(@data.attr_drawable, @handle, point_array, point_array.attr_length / 2)
    end
    
    typesig { [::Java::Long, Array.typed(::Java::Int), ::Java::Boolean] }
    # int
    def draw_polyline(cairo, point_array, close)
      count = point_array.attr_length / 2
      if ((count).equal?(0))
        return
      end
      x_offset = @data.attr_cairo_xoffset
      y_offset = @data.attr_cairo_yoffset
      Cairo.cairo_move_to(cairo, point_array[0] + x_offset, point_array[1] + y_offset)
      i = 1
      j = 2
      while i < count
        Cairo.cairo_line_to(cairo, point_array[j] + x_offset, point_array[j + 1] + y_offset)
        i += 1
        j += 2
      end
      if (close)
        Cairo.cairo_close_path(cairo)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Draws the outline of the rectangle specified by the arguments,
    # using the receiver's foreground color. The left and right edges
    # of the rectangle are at <code>x</code> and <code>x + width</code>.
    # The top and bottom edges are at <code>y</code> and <code>y + height</code>.
    # 
    # @param x the x coordinate of the rectangle to be drawn
    # @param y the y coordinate of the rectangle to be drawn
    # @param width the width of the rectangle to be drawn
    # @param height the height of the rectangle to be drawn
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def draw_rectangle(x, y, width, height)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      check_gc(DRAW)
      if (width < 0)
        x = x + width
        width = -width
      end
      if (height < 0)
        y = y + height
        height = -height
      end
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        x_offset = @data.attr_cairo_xoffset
        y_offset = @data.attr_cairo_yoffset
        Cairo.cairo_rectangle(cairo, x + x_offset, y + y_offset, width, height)
        Cairo.cairo_stroke(cairo)
        return
      end
      OS.gdk_draw_rectangle(@data.attr_drawable, @handle, 0, x, y, width, height)
    end
    
    typesig { [Rectangle] }
    # Draws the outline of the specified rectangle, using the receiver's
    # foreground color. The left and right edges of the rectangle are at
    # <code>rect.x</code> and <code>rect.x + rect.width</code>. The top
    # and bottom edges are at <code>rect.y</code> and
    # <code>rect.y + rect.height</code>.
    # 
    # @param rect the rectangle to draw
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the rectangle is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def draw_rectangle(rect)
      if ((rect).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      draw_rectangle(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Draws the outline of the round-cornered rectangle specified by
    # the arguments, using the receiver's foreground color. The left and
    # right edges of the rectangle are at <code>x</code> and <code>x + width</code>.
    # The top and bottom edges are at <code>y</code> and <code>y + height</code>.
    # The <em>roundness</em> of the corners is specified by the
    # <code>arcWidth</code> and <code>arcHeight</code> arguments, which
    # are respectively the width and height of the ellipse used to draw
    # the corners.
    # 
    # @param x the x coordinate of the rectangle to be drawn
    # @param y the y coordinate of the rectangle to be drawn
    # @param width the width of the rectangle to be drawn
    # @param height the height of the rectangle to be drawn
    # @param arcWidth the width of the arc
    # @param arcHeight the height of the arc
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def draw_round_rectangle(x, y, width, height, arc_width, arc_height)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      check_gc(DRAW)
      nx = x
      ny = y
      nw = width
      nh = height
      naw = arc_width
      nah = arc_height
      if (nw < 0)
        nw = 0 - nw
        nx = nx - nw
      end
      if (nh < 0)
        nh = 0 - nh
        ny = ny - nh
      end
      if (naw < 0)
        naw = 0 - naw
      end
      if (nah < 0)
        nah = 0 - nah
      end
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        x_offset = @data.attr_cairo_xoffset
        y_offset = @data.attr_cairo_yoffset
        if ((naw).equal?(0) || (nah).equal?(0))
          Cairo.cairo_rectangle(cairo, x + x_offset, y + y_offset, width, height)
        else
          naw2 = naw / 2
          nah2 = nah / 2
          fw = nw / naw2
          fh = nh / nah2
          Cairo.cairo_save(cairo)
          Cairo.cairo_translate(cairo, nx + x_offset, ny + y_offset)
          Cairo.cairo_scale(cairo, naw2, nah2)
          Cairo.cairo_move_to(cairo, fw - 1, 0)
          Cairo.cairo_arc(cairo, fw - 1, 1, 1, Compatibility::PI + Compatibility::PI / 2.0, Compatibility::PI * 2.0)
          Cairo.cairo_arc(cairo, fw - 1, fh - 1, 1, 0, Compatibility::PI / 2.0)
          Cairo.cairo_arc(cairo, 1, fh - 1, 1, Compatibility::PI / 2, Compatibility::PI)
          Cairo.cairo_arc(cairo, 1, 1, 1, Compatibility::PI, 270.0 * Compatibility::PI / 180.0)
          Cairo.cairo_close_path(cairo)
          Cairo.cairo_restore(cairo)
        end
        Cairo.cairo_stroke(cairo)
        return
      end
      naw2 = naw / 2
      nah2 = nah / 2
      # int
      drawable = @data.attr_drawable
      if (nw > naw)
        if (nh > nah)
          OS.gdk_draw_arc(drawable, @handle, 0, nx, ny, naw, nah, 5760, 5760)
          OS.gdk_draw_line(drawable, @handle, nx + naw2, ny, nx + nw - naw2, ny)
          OS.gdk_draw_arc(drawable, @handle, 0, nx + nw - naw, ny, naw, nah, 0, 5760)
          OS.gdk_draw_line(drawable, @handle, nx + nw, ny + nah2, nx + nw, ny + nh - nah2)
          OS.gdk_draw_arc(drawable, @handle, 0, nx + nw - naw, ny + nh - nah, naw, nah, 17280, 5760)
          OS.gdk_draw_line(drawable, @handle, nx + naw2, ny + nh, nx + nw - naw2, ny + nh)
          OS.gdk_draw_arc(drawable, @handle, 0, nx, ny + nh - nah, naw, nah, 11520, 5760)
          OS.gdk_draw_line(drawable, @handle, nx, ny + nah2, nx, ny + nh - nah2)
        else
          OS.gdk_draw_arc(drawable, @handle, 0, nx, ny, naw, nh, 5760, 11520)
          OS.gdk_draw_line(drawable, @handle, nx + naw2, ny, nx + nw - naw2, ny)
          OS.gdk_draw_arc(drawable, @handle, 0, nx + nw - naw, ny, naw, nh, 17280, 11520)
          OS.gdk_draw_line(drawable, @handle, nx + naw2, ny + nh, nx + nw - naw2, ny + nh)
        end
      else
        if (nh > nah)
          OS.gdk_draw_arc(drawable, @handle, 0, nx, ny, nw, nah, 0, 11520)
          OS.gdk_draw_line(drawable, @handle, nx + nw, ny + nah2, nx + nw, ny + nh - nah2)
          OS.gdk_draw_arc(drawable, @handle, 0, nx, ny + nh - nah, nw, nah, 11520, 11520)
          OS.gdk_draw_line(drawable, @handle, nx, ny + nah2, nx, ny + nh - nah2)
        else
          OS.gdk_draw_arc(drawable, @handle, 0, nx, ny, nw, nh, 0, 23040)
        end
      end
    end
    
    typesig { [String, ::Java::Int, ::Java::Int] }
    # Draws the given string, using the receiver's current font and
    # foreground color. No tab expansion or carriage return processing
    # will be performed. The background of the rectangular area where
    # the string is being drawn will be filled with the receiver's
    # background color.
    # 
    # @param string the string to be drawn
    # @param x the x coordinate of the top left corner of the rectangular area where the string is to be drawn
    # @param y the y coordinate of the top left corner of the rectangular area where the string is to be drawn
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def draw_string(string, x, y)
      draw_string(string, x, y, false)
    end
    
    typesig { [String, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    # Draws the given string, using the receiver's current font and
    # foreground color. No tab expansion or carriage return processing
    # will be performed. If <code>isTransparent</code> is <code>true</code>,
    # then the background of the rectangular area where the string is being
    # drawn will not be modified, otherwise it will be filled with the
    # receiver's background color.
    # 
    # @param string the string to be drawn
    # @param x the x coordinate of the top left corner of the rectangular area where the string is to be drawn
    # @param y the y coordinate of the top left corner of the rectangular area where the string is to be drawn
    # @param isTransparent if <code>true</code> the background will be transparent, otherwise it will be opaque
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def draw_string(string, x, y, is_transparent)
      draw_text(string, x, y, is_transparent ? SWT::DRAW_TRANSPARENT : 0)
    end
    
    typesig { [String, ::Java::Int, ::Java::Int] }
    # Draws the given string, using the receiver's current font and
    # foreground color. Tab expansion and carriage return processing
    # are performed. The background of the rectangular area where
    # the text is being drawn will be filled with the receiver's
    # background color.
    # 
    # @param string the string to be drawn
    # @param x the x coordinate of the top left corner of the rectangular area where the text is to be drawn
    # @param y the y coordinate of the top left corner of the rectangular area where the text is to be drawn
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def draw_text(string, x, y)
      draw_text(string, x, y, SWT::DRAW_DELIMITER | SWT::DRAW_TAB)
    end
    
    typesig { [String, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    # Draws the given string, using the receiver's current font and
    # foreground color. Tab expansion and carriage return processing
    # are performed. If <code>isTransparent</code> is <code>true</code>,
    # then the background of the rectangular area where the text is being
    # drawn will not be modified, otherwise it will be filled with the
    # receiver's background color.
    # 
    # @param string the string to be drawn
    # @param x the x coordinate of the top left corner of the rectangular area where the text is to be drawn
    # @param y the y coordinate of the top left corner of the rectangular area where the text is to be drawn
    # @param isTransparent if <code>true</code> the background will be transparent, otherwise it will be opaque
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def draw_text(string, x, y, is_transparent)
      flags = SWT::DRAW_DELIMITER | SWT::DRAW_TAB
      if (is_transparent)
        flags |= SWT::DRAW_TRANSPARENT
      end
      draw_text(string, x, y, flags)
    end
    
    typesig { [String, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Draws the given string, using the receiver's current font and
    # foreground color. Tab expansion, line delimiter and mnemonic
    # processing are performed according to the specified flags. If
    # <code>flags</code> includes <code>DRAW_TRANSPARENT</code>,
    # then the background of the rectangular area where the text is being
    # drawn will not be modified, otherwise it will be filled with the
    # receiver's background color.
    # <p>
    # The parameter <code>flags</code> may be a combination of:
    # <dl>
    # <dt><b>DRAW_DELIMITER</b></dt>
    # <dd>draw multiple lines</dd>
    # <dt><b>DRAW_TAB</b></dt>
    # <dd>expand tabs</dd>
    # <dt><b>DRAW_MNEMONIC</b></dt>
    # <dd>underline the mnemonic character</dd>
    # <dt><b>DRAW_TRANSPARENT</b></dt>
    # <dd>transparent background</dd>
    # </dl>
    # </p>
    # 
    # @param string the string to be drawn
    # @param x the x coordinate of the top left corner of the rectangular area where the text is to be drawn
    # @param y the y coordinate of the top left corner of the rectangular area where the text is to be drawn
    # @param flags the flags specifying how to process the text
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def draw_text(string, x, y, flags)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((string).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((string.length).equal?(0))
        return
      end
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        if (OS::GTK_VERSION < OS._version(2, 8, 0))
          # TODO - honor flags
          check_gc(FOREGROUND | FONT)
          extents = Cairo_font_extents_t.new
          Cairo.cairo_font_extents(cairo, extents)
          baseline = y + extents.attr_ascent
          Cairo.cairo_move_to(cairo, x, baseline)
          buffer = Converter.wcs_to_mbcs(nil, string, true)
          Cairo.cairo_show_text(cairo, buffer)
          Cairo.cairo_new_path(cairo)
          return
        end
      end
      set_string(string, flags)
      if (!(cairo).equal?(0))
        if (((flags & SWT::DRAW_TRANSPARENT)).equal?(0))
          check_gc(BACKGROUND)
          width = Array.typed(::Java::Int).new(1) { 0 }
          height = Array.typed(::Java::Int).new(1) { 0 }
          OS.pango_layout_get_size(@data.attr_layout, width, height)
          Cairo.cairo_rectangle(cairo, x, y, OS._pango_pixels(width[0]), OS._pango_pixels(height[0]))
          Cairo.cairo_fill(cairo)
        end
        check_gc(FOREGROUND | FONT)
        if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
          Cairo.cairo_save(cairo)
          width = Array.typed(::Java::Int).new(1) { 0 }
          height = Array.typed(::Java::Int).new(1) { 0 }
          OS.pango_layout_get_size(@data.attr_layout, width, height)
          Cairo.cairo_scale(cairo, -1, 1)
          Cairo.cairo_translate(cairo, -2 * x - OS._pango_pixels(width[0]), 0)
        end
        Cairo.cairo_move_to(cairo, x, y)
        OS.pango_cairo_show_layout(cairo, @data.attr_layout)
        if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
          Cairo.cairo_restore(cairo)
        end
        Cairo.cairo_new_path(cairo)
        return
      end
      check_gc(FOREGROUND | FONT | BACKGROUND_BG)
      background = nil
      if (((flags & SWT::DRAW_TRANSPARENT)).equal?(0))
        background = @data.attr_background
      end
      if (!@data.attr_xor_mode)
        OS.gdk_draw_layout_with_colors(@data.attr_drawable, @handle, x, y, @data.attr_layout, nil, background)
      else
        # int
        layout = @data.attr_layout
        w = Array.typed(::Java::Int).new(1) { 0 }
        h = Array.typed(::Java::Int).new(1) { 0 }
        OS.pango_layout_get_size(layout, w, h)
        width = OS._pango_pixels(w[0])
        height = OS._pango_pixels(h[0])
        # int
        pixmap = OS.gdk_pixmap_new(OS._gdk_root_parent, width, height, -1)
        if ((pixmap).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        # int
        gdk_gc = OS.gdk_gc_new(pixmap)
        if ((gdk_gc).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        black = GdkColor.new
        OS.gdk_gc_set_foreground(gdk_gc, black)
        OS.gdk_draw_rectangle(pixmap, gdk_gc, 1, 0, 0, width, height)
        OS.gdk_gc_set_foreground(gdk_gc, @data.attr_foreground)
        OS.gdk_draw_layout_with_colors(pixmap, gdk_gc, 0, 0, layout, nil, background)
        OS.g_object_unref(gdk_gc)
        OS.gdk_draw_drawable(@data.attr_drawable, @handle, pixmap, 0, 0, x, y, width, height)
        OS.g_object_unref(pixmap)
      end
    end
    
    typesig { [Object] }
    # Compares the argument to the receiver, and returns true
    # if they represent the <em>same</em> object using a class
    # specific comparison.
    # 
    # @param object the object to compare with this object
    # @return <code>true</code> if the object is the same as this object and <code>false</code> otherwise
    # 
    # @see #hashCode
    def equals(object)
      if ((object).equal?(self))
        return true
      end
      if (!(object.is_a?(SwtGC)))
        return false
      end
      return (@handle).equal?((object).attr_handle)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Fills the interior of a circular or elliptical arc within
    # the specified rectangular area, with the receiver's background
    # color.
    # <p>
    # The resulting arc begins at <code>startAngle</code> and extends
    # for <code>arcAngle</code> degrees, using the current color.
    # Angles are interpreted such that 0 degrees is at the 3 o'clock
    # position. A positive value indicates a counter-clockwise rotation
    # while a negative value indicates a clockwise rotation.
    # </p><p>
    # The center of the arc is the center of the rectangle whose origin
    # is (<code>x</code>, <code>y</code>) and whose size is specified by the
    # <code>width</code> and <code>height</code> arguments.
    # </p><p>
    # The resulting arc covers an area <code>width + 1</code> pixels wide
    # by <code>height + 1</code> pixels tall.
    # </p>
    # 
    # @param x the x coordinate of the upper-left corner of the arc to be filled
    # @param y the y coordinate of the upper-left corner of the arc to be filled
    # @param width the width of the arc to be filled
    # @param height the height of the arc to be filled
    # @param startAngle the beginning angle
    # @param arcAngle the angular extent of the arc, relative to the start angle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #drawArc
    def fill_arc(x, y, width, height, start_angle, arc_angle)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      check_gc(FILL)
      if (width < 0)
        x = x + width
        width = -width
      end
      if (height < 0)
        y = y + height
        height = -height
      end
      if ((width).equal?(0) || (height).equal?(0) || (arc_angle).equal?(0))
        return
      end
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        if ((width).equal?(height))
          if (arc_angle >= 0)
            Cairo.cairo_arc_negative(cairo, x + width / 2, y + height / 2, width / 2, -start_angle * (Compatibility::PI).to_f / 180, -(start_angle + arc_angle) * (Compatibility::PI).to_f / 180)
          else
            Cairo.cairo_arc(cairo, x + width / 2, y + height / 2, width / 2, -start_angle * (Compatibility::PI).to_f / 180, -(start_angle + arc_angle) * (Compatibility::PI).to_f / 180)
          end
          Cairo.cairo_line_to(cairo, x + width / 2, y + height / 2)
        else
          Cairo.cairo_save(cairo)
          Cairo.cairo_translate(cairo, x + width / 2, y + height / 2)
          Cairo.cairo_scale(cairo, width / 2, height / 2)
          if (arc_angle >= 0)
            Cairo.cairo_arc_negative(cairo, 0, 0, 1, -start_angle * (Compatibility::PI).to_f / 180, -(start_angle + arc_angle) * (Compatibility::PI).to_f / 180)
          else
            Cairo.cairo_arc(cairo, 0, 0, 1, -start_angle * (Compatibility::PI).to_f / 180, -(start_angle + arc_angle) * (Compatibility::PI).to_f / 180)
          end
          Cairo.cairo_line_to(cairo, 0, 0)
          Cairo.cairo_restore(cairo)
        end
        Cairo.cairo_fill(cairo)
        return
      end
      OS.gdk_draw_arc(@data.attr_drawable, @handle, 1, x, y, width, height, start_angle * 64, arc_angle * 64)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    # Fills the interior of the specified rectangle with a gradient
    # sweeping from left to right or top to bottom progressing
    # from the receiver's foreground color to its background color.
    # 
    # @param x the x coordinate of the rectangle to be filled
    # @param y the y coordinate of the rectangle to be filled
    # @param width the width of the rectangle to be filled, may be negative
    # (inverts direction of gradient if horizontal)
    # @param height the height of the rectangle to be filled, may be negative
    # (inverts direction of gradient if vertical)
    # @param vertical if true sweeps from top to bottom, else
    # sweeps from left to right
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #drawRectangle(int, int, int, int)
    def fill_gradient_rectangle(x, y, width, height, vertical)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (((width).equal?(0)) || ((height).equal?(0)))
        return
      end
      # Rewrite this to use GdkPixbuf
      background_rgb = nil
      foreground_rgb = nil
      background_rgb = get_background.get_rgb
      foreground_rgb = get_foreground.get_rgb
      from_rgb = nil
      to_rgb = nil
      from_rgb = foreground_rgb
      to_rgb = background_rgb
      swap_colors = false
      if (width < 0)
        x += width
        width = -width
        if (!vertical)
          swap_colors = true
        end
      end
      if (height < 0)
        y += height
        height = -height
        if (vertical)
          swap_colors = true
        end
      end
      if (swap_colors)
        from_rgb = background_rgb
        to_rgb = foreground_rgb
      end
      if ((from_rgb == to_rgb))
        fill_rectangle(x, y, width, height)
        return
      end
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        # int
        pattern = 0
        if (vertical)
          pattern = Cairo.cairo_pattern_create_linear(0.0, 0.0, 0.0, 1.0)
        else
          pattern = Cairo.cairo_pattern_create_linear(0.0, 0.0, 1.0, 0.0)
        end
        Cairo.cairo_pattern_add_color_stop_rgba(pattern, 0, from_rgb.attr_red / 255, from_rgb.attr_green / 255, from_rgb.attr_blue / 255, @data.attr_alpha / 255)
        Cairo.cairo_pattern_add_color_stop_rgba(pattern, 1, to_rgb.attr_red / 255, to_rgb.attr_green / 255, to_rgb.attr_blue / 255, @data.attr_alpha / 255)
        Cairo.cairo_save(cairo)
        Cairo.cairo_translate(cairo, x, y)
        Cairo.cairo_scale(cairo, width, height)
        Cairo.cairo_rectangle(cairo, 0, 0, 1, 1)
        Cairo.cairo_set_source(cairo, pattern)
        Cairo.cairo_fill(cairo)
        Cairo.cairo_restore(cairo)
        Cairo.cairo_pattern_destroy(pattern)
        return
      end
      ImageData.fill_gradient_rectangle(self, @data.attr_device, x, y, width, height, vertical, from_rgb, to_rgb, 8, 8, 8)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Fills the interior of an oval, within the specified
    # rectangular area, with the receiver's background
    # color.
    # 
    # @param x the x coordinate of the upper left corner of the oval to be filled
    # @param y the y coordinate of the upper left corner of the oval to be filled
    # @param width the width of the oval to be filled
    # @param height the height of the oval to be filled
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #drawOval
    def fill_oval(x, y, width, height)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      check_gc(FILL)
      if (width < 0)
        x = x + width
        width = -width
      end
      if (height < 0)
        y = y + height
        height = -height
      end
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        if ((width).equal?(height))
          Cairo.cairo_arc_negative(cairo, x + width / 2, y + height / 2, width / 2, 0, 2 * (Compatibility::PI).to_f)
        else
          Cairo.cairo_save(cairo)
          Cairo.cairo_translate(cairo, x + width / 2, y + height / 2)
          Cairo.cairo_scale(cairo, width / 2, height / 2)
          Cairo.cairo_arc_negative(cairo, 0, 0, 1, 0, 2 * (Compatibility::PI).to_f)
          Cairo.cairo_restore(cairo)
        end
        Cairo.cairo_fill(cairo)
        return
      end
      OS.gdk_draw_arc(@data.attr_drawable, @handle, 1, x, y, width, height, 0, 23040)
    end
    
    typesig { [Path] }
    # Fills the path described by the parameter.
    # <p>
    # This operation requires the operating system's advanced
    # graphics subsystem which may not be available on some
    # platforms.
    # </p>
    # 
    # @param path the path to fill
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parameter is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the parameter has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_NO_GRAPHICS_LIBRARY - if advanced graphics are not available</li>
    # </ul>
    # 
    # @see Path
    # 
    # @since 3.1
    def fill_path(path)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((path).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((path.attr_handle).equal?(0))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      init_cairo
      check_gc(FILL)
      # int
      cairo = @data.attr_cairo
      # int
      copy = Cairo.cairo_copy_path(path.attr_handle)
      if ((copy).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      Cairo.cairo_append_path(cairo, copy)
      Cairo.cairo_path_destroy(copy)
      Cairo.cairo_fill(cairo)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Fills the interior of the closed polygon which is defined by the
    # specified array of integer coordinates, using the receiver's
    # background color. The array contains alternating x and y values
    # which are considered to represent points which are the vertices of
    # the polygon. Lines are drawn between each consecutive pair, and
    # between the first pair and last pair in the array.
    # 
    # @param pointArray an array of alternating x and y values which are the vertices of the polygon
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT if pointArray is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #drawPolygon
    def fill_polygon(point_array)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((point_array).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      check_gc(FILL)
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        draw_polyline(cairo, point_array, true)
        Cairo.cairo_fill(cairo)
        return
      end
      OS.gdk_draw_polygon(@data.attr_drawable, @handle, 1, point_array, point_array.attr_length / 2)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Fills the interior of the rectangle specified by the arguments,
    # using the receiver's background color.
    # 
    # @param x the x coordinate of the rectangle to be filled
    # @param y the y coordinate of the rectangle to be filled
    # @param width the width of the rectangle to be filled
    # @param height the height of the rectangle to be filled
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #drawRectangle(int, int, int, int)
    def fill_rectangle(x, y, width, height)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      check_gc(FILL)
      if (width < 0)
        x = x + width
        width = -width
      end
      if (height < 0)
        y = y + height
        height = -height
      end
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        Cairo.cairo_rectangle(cairo, x, y, width, height)
        Cairo.cairo_fill(cairo)
        return
      end
      OS.gdk_draw_rectangle(@data.attr_drawable, @handle, 1, x, y, width, height)
    end
    
    typesig { [Rectangle] }
    # Fills the interior of the specified rectangle, using the receiver's
    # background color.
    # 
    # @param rect the rectangle to be filled
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the rectangle is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #drawRectangle(int, int, int, int)
    def fill_rectangle(rect)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((rect).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      fill_rectangle(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Fills the interior of the round-cornered rectangle specified by
    # the arguments, using the receiver's background color.
    # 
    # @param x the x coordinate of the rectangle to be filled
    # @param y the y coordinate of the rectangle to be filled
    # @param width the width of the rectangle to be filled
    # @param height the height of the rectangle to be filled
    # @param arcWidth the width of the arc
    # @param arcHeight the height of the arc
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #drawRoundRectangle
    def fill_round_rectangle(x, y, width, height, arc_width, arc_height)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      check_gc(FILL)
      nx = x
      ny = y
      nw = width
      nh = height
      naw = arc_width
      nah = arc_height
      if (nw < 0)
        nw = 0 - nw
        nx = nx - nw
      end
      if (nh < 0)
        nh = 0 - nh
        ny = ny - nh
      end
      if (naw < 0)
        naw = 0 - naw
      end
      if (nah < 0)
        nah = 0 - nah
      end
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        if ((naw).equal?(0) || (nah).equal?(0))
          Cairo.cairo_rectangle(cairo, x, y, width, height)
        else
          naw2 = naw / 2
          nah2 = nah / 2
          fw = nw / naw2
          fh = nh / nah2
          Cairo.cairo_save(cairo)
          Cairo.cairo_translate(cairo, nx, ny)
          Cairo.cairo_scale(cairo, naw2, nah2)
          Cairo.cairo_move_to(cairo, fw - 1, 0)
          Cairo.cairo_arc(cairo, fw - 1, 1, 1, Compatibility::PI + Compatibility::PI / 2.0, Compatibility::PI * 2.0)
          Cairo.cairo_arc(cairo, fw - 1, fh - 1, 1, 0, Compatibility::PI / 2.0)
          Cairo.cairo_arc(cairo, 1, fh - 1, 1, Compatibility::PI / 2, Compatibility::PI)
          Cairo.cairo_arc(cairo, 1, 1, 1, Compatibility::PI, 270.0 * Compatibility::PI / 180.0)
          Cairo.cairo_close_path(cairo)
          Cairo.cairo_restore(cairo)
        end
        Cairo.cairo_fill(cairo)
        return
      end
      naw2 = naw / 2
      nah2 = nah / 2
      # int
      drawable = @data.attr_drawable
      if (nw > naw)
        if (nh > nah)
          OS.gdk_draw_arc(drawable, @handle, 1, nx, ny, naw, nah, 5760, 5760)
          OS.gdk_draw_rectangle(drawable, @handle, 1, nx + naw2, ny, nw - naw2 * 2, nh)
          OS.gdk_draw_arc(drawable, @handle, 1, nx + nw - naw, ny, naw, nah, 0, 5760)
          OS.gdk_draw_rectangle(drawable, @handle, 1, nx, ny + nah2, naw2, nh - nah2 * 2)
          OS.gdk_draw_arc(drawable, @handle, 1, nx + nw - naw, ny + nh - nah, naw, nah, 17280, 5760)
          OS.gdk_draw_rectangle(drawable, @handle, 1, nx + nw - naw2, ny + nah2, naw2, nh - nah2 * 2)
          OS.gdk_draw_arc(drawable, @handle, 1, nx, ny + nh - nah, naw, nah, 11520, 5760)
        else
          OS.gdk_draw_arc(drawable, @handle, 1, nx, ny, naw, nh, 5760, 11520)
          OS.gdk_draw_rectangle(drawable, @handle, 1, nx + naw2, ny, nw - naw2 * 2, nh)
          OS.gdk_draw_arc(drawable, @handle, 1, nx + nw - naw, ny, naw, nh, 17280, 11520)
        end
      else
        if (nh > nah)
          OS.gdk_draw_arc(drawable, @handle, 1, nx, ny, nw, nah, 0, 11520)
          OS.gdk_draw_rectangle(drawable, @handle, 1, nx, ny + nah2, nw, nh - nah2 * 2)
          OS.gdk_draw_arc(drawable, @handle, 1, nx, ny + nh - nah, nw, nah, 11520, 11520)
        else
          OS.gdk_draw_arc(drawable, @handle, 1, nx, ny, nw, nh, 0, 23040)
        end
      end
    end
    
    typesig { [Array.typed(::Java::Char)] }
    def fix_mnemonic(buffer)
      i = 0
      j = 0
      mnemonic = -1
      while (i < buffer.attr_length)
        if (((buffer[((j += 1) - 1)] = buffer[((i += 1) - 1)])).equal?(Character.new(?&.ord)))
          if ((i).equal?(buffer.attr_length))
            next
          end
          if ((buffer[i]).equal?(Character.new(?&.ord)))
            i += 1
            next
          end
          if ((mnemonic).equal?(-1))
            mnemonic = j
          end
          j -= 1
        end
      end
      while (j < buffer.attr_length)
        buffer[((j += 1) - 1)] = 0
      end
      return mnemonic
    end
    
    typesig { [::Java::Char] }
    # Returns the <em>advance width</em> of the specified character in
    # the font which is currently selected into the receiver.
    # <p>
    # The advance width is defined as the horizontal distance the cursor
    # should move after printing the character in the selected font.
    # </p>
    # 
    # @param ch the character to measure
    # @return the distance in the x direction to move past the character before painting the next
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_advance_width(ch)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      # BOGUS
      return string_extent(String.new(Array.typed(::Java::Char).new([ch]))).attr_x
    end
    
    typesig { [] }
    # Returns <code>true</code> if receiver is using the operating system's
    # advanced graphics subsystem.  Otherwise, <code>false</code> is returned
    # to indicate that normal graphics are in use.
    # <p>
    # Advanced graphics may not be installed for the operating system.  In this
    # case, <code>false</code> is always returned.  Some operating system have
    # only one graphics subsystem.  If this subsystem supports advanced graphics,
    # then <code>true</code> is always returned.  If any graphics operation such
    # as alpha, antialias, patterns, interpolation, paths, clipping or transformation
    # has caused the receiver to switch from regular to advanced graphics mode,
    # <code>true</code> is returned.  If the receiver has been explicitly switched
    # to advanced mode and this mode is supported, <code>true</code> is returned.
    # </p>
    # 
    # @return the advanced value
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #setAdvanced
    # 
    # @since 3.1
    def get_advanced
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return !(@data.attr_cairo).equal?(0)
    end
    
    typesig { [] }
    # Returns the receiver's alpha value. The alpha value
    # is between 0 (transparent) and 255 (opaque).
    # 
    # @return the alpha value
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.1
    def get_alpha
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return @data.attr_alpha
    end
    
    typesig { [] }
    # Returns the receiver's anti-aliasing setting value, which will be
    # one of <code>SWT.DEFAULT</code>, <code>SWT.OFF</code> or
    # <code>SWT.ON</code>. Note that this controls anti-aliasing for all
    # <em>non-text drawing</em> operations.
    # 
    # @return the anti-aliasing setting
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #getTextAntialias
    # 
    # @since 3.1
    def get_antialias
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((@data.attr_cairo).equal?(0))
        return SWT::DEFAULT
      end
      antialias = Cairo.cairo_get_antialias(@data.attr_cairo)
      case (antialias)
      when Cairo::CAIRO_ANTIALIAS_DEFAULT
        return SWT::DEFAULT
      when Cairo::CAIRO_ANTIALIAS_NONE
        return SWT::OFF
      when Cairo::CAIRO_ANTIALIAS_GRAY, Cairo::CAIRO_ANTIALIAS_SUBPIXEL
        return SWT::ON
      end
      return SWT::DEFAULT
    end
    
    typesig { [] }
    # Returns the background color.
    # 
    # @return the receiver's background color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_background
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return Color.gtk_new(@data.attr_device, @data.attr_background)
    end
    
    typesig { [] }
    # Returns the background pattern. The default value is
    # <code>null</code>.
    # 
    # @return the receiver's background pattern
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see Pattern
    # 
    # @since 3.1
    def get_background_pattern
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return @data.attr_background_pattern
    end
    
    typesig { [::Java::Char] }
    # Returns the width of the specified character in the font
    # selected into the receiver.
    # <p>
    # The width is defined as the space taken up by the actual
    # character, not including the leading and tailing whitespace
    # or overhang.
    # </p>
    # 
    # @param ch the character to measure
    # @return the width of the character
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_char_width(ch)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      # BOGUS
      return string_extent(String.new(Array.typed(::Java::Char).new([ch]))).attr_x
    end
    
    typesig { [] }
    # Returns the bounding rectangle of the receiver's clipping
    # region. If no clipping region is set, the return value
    # will be a rectangle which covers the entire bounds of the
    # object the receiver is drawing on.
    # 
    # @return the bounding rectangle of the clipping region
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_clipping
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      # Calculate visible bounds in device space
      x = 0
      y = 0
      width = 0
      height = 0
      if (!(@data.attr_width).equal?(-1) && !(@data.attr_height).equal?(-1))
        width = @data.attr_width
        height = @data.attr_height
      else
        w = Array.typed(::Java::Int).new(1) { 0 }
        h = Array.typed(::Java::Int).new(1) { 0 }
        OS.gdk_drawable_get_size(@data.attr_drawable, w, h)
        width = w[0]
        height = h[0]
      end
      # Intersect visible bounds with clipping in device space and then convert then to user space
      # int
      cairo = @data.attr_cairo
      # int
      clip_rgn = @data.attr_clip_rgn
      # int
      damage_rgn = @data.attr_damage_rgn
      if (!(clip_rgn).equal?(0) || !(damage_rgn).equal?(0) || !(cairo).equal?(0))
        # int
        rgn = OS.gdk_region_new
        rect = GdkRectangle.new
        rect.attr_width = width
        rect.attr_height = height
        OS.gdk_region_union_with_rect(rgn, rect)
        if (!(damage_rgn).equal?(0))
          OS.gdk_region_intersect(rgn, damage_rgn)
        end
        # Intersect visible bounds with clipping
        if (!(clip_rgn).equal?(0))
          # Convert clipping to device space if needed
          if (!(@data.attr_clipping_transform).nil?)
            clip_rgn = convert_rgn(clip_rgn, @data.attr_clipping_transform)
            OS.gdk_region_intersect(rgn, clip_rgn)
            OS.gdk_region_destroy(clip_rgn)
          else
            OS.gdk_region_intersect(rgn, clip_rgn)
          end
        end
        # Convert to user space
        if (!(cairo).equal?(0))
          matrix = Array.typed(::Java::Double).new(6) { 0.0 }
          Cairo.cairo_get_matrix(cairo, matrix)
          Cairo.cairo_matrix_invert(matrix)
          clip_rgn = convert_rgn(rgn, matrix)
          OS.gdk_region_destroy(rgn)
          rgn = clip_rgn
        end
        OS.gdk_region_get_clipbox(rgn, rect)
        OS.gdk_region_destroy(rgn)
        x = rect.attr_x
        y = rect.attr_y
        width = rect.attr_width
        height = rect.attr_height
      end
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [Region] }
    # Sets the region managed by the argument to the current
    # clipping region of the receiver.
    # 
    # @param region the region to fill with the clipping region
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the region is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the region is disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_clipping(region)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((region).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (region.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      # int
      clipping = region.attr_handle
      OS.gdk_region_subtract(clipping, clipping)
      # int
      cairo = @data.attr_cairo
      # int
      clip_rgn = @data.attr_clip_rgn
      if ((clip_rgn).equal?(0))
        rect = GdkRectangle.new
        if (!(@data.attr_width).equal?(-1) && !(@data.attr_height).equal?(-1))
          rect.attr_width = @data.attr_width
          rect.attr_height = @data.attr_height
        else
          width = Array.typed(::Java::Int).new(1) { 0 }
          height = Array.typed(::Java::Int).new(1) { 0 }
          OS.gdk_drawable_get_size(@data.attr_drawable, width, height)
          rect.attr_width = width[0]
          rect.attr_height = height[0]
        end
        OS.gdk_region_union_with_rect(clipping, rect)
      else
        # Convert clipping to device space if needed
        if (!(@data.attr_clipping_transform).nil?)
          # int
          rgn = convert_rgn(clip_rgn, @data.attr_clipping_transform)
          OS.gdk_region_union(clipping, rgn)
          OS.gdk_region_destroy(rgn)
        else
          OS.gdk_region_union(clipping, clip_rgn)
        end
      end
      if (!(@data.attr_damage_rgn).equal?(0))
        OS.gdk_region_intersect(clipping, @data.attr_damage_rgn)
      end
      # Convert to user space
      if (!(cairo).equal?(0))
        matrix = Array.typed(::Java::Double).new(6) { 0.0 }
        Cairo.cairo_get_matrix(cairo, matrix)
        Cairo.cairo_matrix_invert(matrix)
        # int
        rgn = convert_rgn(clipping, matrix)
        OS.gdk_region_subtract(clipping, clipping)
        OS.gdk_region_union(clipping, rgn)
        OS.gdk_region_destroy(rgn)
      end
    end
    
    typesig { [] }
    # Returns the receiver's fill rule, which will be one of
    # <code>SWT.FILL_EVEN_ODD</code> or <code>SWT.FILL_WINDING</code>.
    # 
    # @return the receiver's fill rule
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.1
    def get_fill_rule
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      # int
      cairo = @data.attr_cairo
      if ((cairo).equal?(0))
        return SWT::FILL_EVEN_ODD
      end
      return (Cairo.cairo_get_fill_rule(cairo)).equal?(Cairo::CAIRO_FILL_RULE_WINDING) ? SWT::FILL_WINDING : SWT::FILL_EVEN_ODD
    end
    
    typesig { [] }
    # Returns the font currently being used by the receiver
    # to draw and measure text.
    # 
    # @return the receiver's font
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_font
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return @data.attr_font
    end
    
    typesig { [] }
    # Returns a FontMetrics which contains information
    # about the font currently being used by the receiver
    # to draw and measure text.
    # 
    # @return font metrics for the receiver's font
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_font_metrics
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((@data.attr_context).equal?(0))
        create_layout
      end
      check_gc(FONT)
      font = @data.attr_font
      # int
      context = @data.attr_context
      # int
      lang = OS.pango_context_get_language(context)
      # int
      metrics = OS.pango_context_get_metrics(context, font.attr_handle, lang)
      fm = FontMetrics.new
      fm.attr_ascent = OS._pango_pixels(OS.pango_font_metrics_get_ascent(metrics))
      fm.attr_descent = OS._pango_pixels(OS.pango_font_metrics_get_descent(metrics))
      fm.attr_average_char_width = OS._pango_pixels(OS.pango_font_metrics_get_approximate_char_width(metrics))
      fm.attr_height = fm.attr_ascent + fm.attr_descent
      OS.pango_font_metrics_unref(metrics)
      return fm
    end
    
    typesig { [] }
    # Returns the receiver's foreground color.
    # 
    # @return the color used for drawing foreground things
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_foreground
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return Color.gtk_new(@data.attr_device, @data.attr_foreground)
    end
    
    typesig { [] }
    # Returns the foreground pattern. The default value is
    # <code>null</code>.
    # 
    # @return the receiver's foreground pattern
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see Pattern
    # 
    # @since 3.1
    def get_foreground_pattern
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return @data.attr_foreground_pattern
    end
    
    typesig { [] }
    # Returns the GCData.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>GC</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    # 
    # @return the receiver's GCData
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see GCData
    # 
    # @since 3.2
    def get_gcdata
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return @data
    end
    
    typesig { [] }
    # Returns the receiver's interpolation setting, which will be one of
    # <code>SWT.DEFAULT</code>, <code>SWT.NONE</code>,
    # <code>SWT.LOW</code> or <code>SWT.HIGH</code>.
    # 
    # @return the receiver's interpolation setting
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.1
    def get_interpolation
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return @data.attr_interpolation
    end
    
    typesig { [] }
    # Returns the receiver's line attributes.
    # 
    # @return the line attributes used for drawing lines
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.3
    def get_line_attributes
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      dashes = nil
      if (!(@data.attr_line_dashes).nil?)
        dashes = Array.typed(::Java::Float).new(@data.attr_line_dashes.attr_length) { 0.0 }
        System.arraycopy(@data.attr_line_dashes, 0, dashes, 0, dashes.attr_length)
      end
      return LineAttributes.new(@data.attr_line_width, @data.attr_line_cap, @data.attr_line_join, @data.attr_line_style, dashes, @data.attr_line_dashes_offset, @data.attr_line_miter_limit)
    end
    
    typesig { [] }
    # Returns the receiver's line cap style, which will be one
    # of the constants <code>SWT.CAP_FLAT</code>, <code>SWT.CAP_ROUND</code>,
    # or <code>SWT.CAP_SQUARE</code>.
    # 
    # @return the cap style used for drawing lines
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.1
    def get_line_cap
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return @data.attr_line_cap
    end
    
    typesig { [] }
    # Returns the receiver's line dash style. The default value is
    # <code>null</code>.
    # 
    # @return the line dash style used for drawing lines
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.1
    def get_line_dash
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((@data.attr_line_dashes).nil?)
        return nil
      end
      line_dashes = Array.typed(::Java::Int).new(@data.attr_line_dashes.attr_length) { 0 }
      i = 0
      while i < line_dashes.attr_length
        line_dashes[i] = RJava.cast_to_int(@data.attr_line_dashes[i])
        i += 1
      end
      return line_dashes
    end
    
    typesig { [] }
    # Returns the receiver's line join style, which will be one
    # of the constants <code>SWT.JOIN_MITER</code>, <code>SWT.JOIN_ROUND</code>,
    # or <code>SWT.JOIN_BEVEL</code>.
    # 
    # @return the join style used for drawing lines
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.1
    def get_line_join
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return @data.attr_line_join
    end
    
    typesig { [] }
    # Returns the receiver's line style, which will be one
    # of the constants <code>SWT.LINE_SOLID</code>, <code>SWT.LINE_DASH</code>,
    # <code>SWT.LINE_DOT</code>, <code>SWT.LINE_DASHDOT</code> or
    # <code>SWT.LINE_DASHDOTDOT</code>.
    # 
    # @return the style used for drawing lines
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_line_style
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return @data.attr_line_style
    end
    
    typesig { [] }
    # Returns the width that will be used when drawing lines
    # for all of the figure drawing operations (that is,
    # <code>drawLine</code>, <code>drawRectangle</code>,
    # <code>drawPolyline</code>, and so forth.
    # 
    # @return the receiver's line width
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_line_width
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return RJava.cast_to_int(@data.attr_line_width)
    end
    
    typesig { [] }
    # Returns the receiver's style information.
    # <p>
    # Note that the value which is returned by this method <em>may
    # not match</em> the value which was provided to the constructor
    # when the receiver was created. This can occur when the underlying
    # operating system does not support a particular combination of
    # requested styles.
    # </p>
    # 
    # @return the style bits
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 2.1.2
    def get_style
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return @data.attr_style
    end
    
    typesig { [] }
    # Returns the receiver's text drawing anti-aliasing setting value,
    # which will be one of <code>SWT.DEFAULT</code>, <code>SWT.OFF</code> or
    # <code>SWT.ON</code>. Note that this controls anti-aliasing
    # <em>only</em> for text drawing operations.
    # 
    # @return the anti-aliasing setting
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #getAntialias
    # 
    # @since 3.1
    def get_text_antialias
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((@data.attr_cairo).equal?(0))
        return SWT::DEFAULT
      end
      antialias = Cairo::CAIRO_ANTIALIAS_DEFAULT
      if (OS::GTK_VERSION < OS._version(2, 8, 0))
        # int
        options = Cairo.cairo_font_options_create
        Cairo.cairo_get_font_options(@data.attr_cairo, options)
        antialias = Cairo.cairo_font_options_get_antialias(options)
        Cairo.cairo_font_options_destroy(options)
      else
        if (!(@data.attr_context).equal?(0))
          # int
          options = OS.pango_cairo_context_get_font_options(@data.attr_context)
          if (!(options).equal?(0))
            antialias = Cairo.cairo_font_options_get_antialias(options)
          end
        end
      end
      case (antialias)
      when Cairo::CAIRO_ANTIALIAS_DEFAULT
        return SWT::DEFAULT
      when Cairo::CAIRO_ANTIALIAS_NONE
        return SWT::OFF
      when Cairo::CAIRO_ANTIALIAS_GRAY, Cairo::CAIRO_ANTIALIAS_SUBPIXEL
        return SWT::ON
      end
      return SWT::DEFAULT
    end
    
    typesig { [Transform] }
    # Sets the parameter to the transform that is currently being
    # used by the receiver.
    # 
    # @param transform the destination to copy the transform into
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parameter is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the parameter has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see Transform
    # 
    # @since 3.1
    def get_transform(transform)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((transform).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (transform.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        Cairo.cairo_get_matrix(cairo, transform.attr_handle)
        identity_ = identity
        Cairo.cairo_matrix_invert(identity_)
        Cairo.cairo_matrix_multiply(transform.attr_handle, transform.attr_handle, identity_)
      else
        transform.set_elements(1, 0, 0, 1, 0, 0)
      end
    end
    
    typesig { [] }
    # Returns <code>true</code> if this GC is drawing in the mode
    # where the resulting color in the destination is the
    # <em>exclusive or</em> of the color values in the source
    # and the destination, and <code>false</code> if it is
    # drawing in the mode where the destination color is being
    # replaced with the source color value.
    # 
    # @return <code>true</code> true if the receiver is in XOR mode, and false otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_xormode
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return @data.attr_xor_mode
    end
    
    typesig { [] }
    # Returns an integer hash code for the receiver. Any two
    # objects that return <code>true</code> when passed to
    # <code>equals</code> must return the same value for this
    # method.
    # 
    # @return the receiver's hash
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #equals
    def hash_code
      # 64
      return RJava.cast_to_int(@handle)
    end
    
    typesig { [] }
    def identity
      identity_ = Array.typed(::Java::Double).new(6) { 0.0 }
      if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
        w = Array.typed(::Java::Int).new(1) { 0 }
        h = Array.typed(::Java::Int).new(1) { 0 }
        OS.gdk_drawable_get_size(@data.attr_drawable, w, h)
        Cairo.cairo_matrix_init(identity_, -1, 0, 0, 1, w[0], 0)
      else
        Cairo.cairo_matrix_init_identity(identity_)
      end
      return identity_
    end
    
    typesig { [Drawable, SwtGCData, ::Java::Long] }
    # int
    def init(drawable, data, gdk_gc)
      if (!(data.attr_foreground).nil?)
        data.attr_state &= ~FOREGROUND
      end
      if (!(data.attr_background).nil?)
        data.attr_state &= ~(BACKGROUND | BACKGROUND_BG)
      end
      if (!(data.attr_font).nil?)
        data.attr_state &= ~FONT
      end
      image = data.attr_image
      if (!(image).nil?)
        image.attr_mem_gc = self
        # The transparent pixel mask might change when drawing on
        # the image.  Destroy it so that it is regenerated when
        # necessary.
        if (!(image.attr_transparent_pixel).equal?(-1))
          image.destroy_mask
        end
      end
      @drawable = drawable
      @data = data
      @handle = gdk_gc
      if (!((data.attr_style & SWT::MIRRORED)).equal?(0))
        init_cairo
        # int
        cairo = data.attr_cairo
        Cairo.cairo_set_matrix(cairo, identity)
      end
    end
    
    typesig { [] }
    def init_cairo
      @data.attr_device.check_cairo
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        return
      end
      # int
      x_display = OS._gdk_display
      # int
      x_visual = OS.gdk_x11_visual_get_xvisual(OS.gdk_visual_get_system)
      # int
      x_drawable = 0
      translate_x = 0
      translate_y = 0
      # int
      drawable = @data.attr_drawable
      if (!(@data.attr_image).nil?)
        x_drawable = OS._gdk_pixmap_xid(drawable)
      else
        if (!@data.attr_real_drawable)
          x = Array.typed(::Java::Int).new(1) { 0 }
          y = Array.typed(::Java::Int).new(1) { 0 }
          # int
          # int
          real_drawable = Array.typed(::Java::Long).new(1) { 0 }
          OS.gdk_window_get_internal_paint_info(drawable, real_drawable, x, y)
          x_drawable = OS.gdk_x11_drawable_get_xid(real_drawable[0])
          translate_x = -x[0]
          translate_y = -y[0]
        end
      end
      w = Array.typed(::Java::Int).new(1) { 0 }
      h = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_drawable_get_size(drawable, w, h)
      width = w[0]
      height = h[0]
      # int
      surface = Cairo.cairo_xlib_surface_create(x_display, x_drawable, x_visual, width, height)
      if ((surface).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      Cairo.cairo_surface_set_device_offset(surface, translate_x, translate_y)
      @data.attr_cairo = cairo = Cairo.cairo_create(surface)
      Cairo.cairo_surface_destroy(surface)
      if ((cairo).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      @data.attr_dispose_cairo = true
      Cairo.cairo_set_fill_rule(cairo, Cairo::CAIRO_FILL_RULE_EVEN_ODD)
      @data.attr_state &= ~(BACKGROUND | FOREGROUND | FONT | LINE_WIDTH | LINE_CAP | LINE_JOIN | LINE_STYLE | DRAW_OFFSET)
      set_cairo_clip(cairo, @data.attr_clip_rgn)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver has a clipping
    # region set into it, and <code>false</code> otherwise.
    # If this method returns false, the receiver will draw on all
    # available space in the destination. If it returns true,
    # it will draw only in the area that is covered by the region
    # that can be accessed with <code>getClipping(region)</code>.
    # 
    # @return <code>true</code> if the GC has a clipping region, and <code>false</code> otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def is_clipped
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return !(@data.attr_clip_rgn).equal?(0)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the GC has been disposed,
    # and <code>false</code> otherwise.
    # <p>
    # This method gets the dispose state for the GC.
    # When a GC has been disposed, it is an error to
    # invoke any other method using the GC.
    # 
    # @return <code>true</code> when the GC is disposed and <code>false</code> otherwise
    def is_disposed
      return (@handle).equal?(0)
    end
    
    typesig { [Array.typed(::Java::Double)] }
    def is_identity(matrix)
      if ((matrix).nil?)
        return true
      end
      return (matrix[0]).equal?(1) && (matrix[1]).equal?(0) && (matrix[2]).equal?(0) && (matrix[3]).equal?(1) && (matrix[4]).equal?(0) && (matrix[5]).equal?(0)
    end
    
    typesig { [::Java::Boolean] }
    # Sets the receiver to always use the operating system's advanced graphics
    # subsystem for all graphics operations if the argument is <code>true</code>.
    # If the argument is <code>false</code>, the advanced graphics subsystem is
    # no longer used, advanced graphics state is cleared and the normal graphics
    # subsystem is used from now on.
    # <p>
    # Normally, the advanced graphics subsystem is invoked automatically when
    # any one of the alpha, antialias, patterns, interpolation, paths, clipping
    # or transformation operations in the receiver is requested.  When the receiver
    # is switched into advanced mode, the advanced graphics subsystem performs both
    # advanced and normal graphics operations.  Because the two subsystems are
    # different, their output may differ.  Switching to advanced graphics before
    # any graphics operations are performed ensures that the output is consistent.
    # </p><p>
    # Advanced graphics may not be installed for the operating system.  In this
    # case, this operation does nothing.  Some operating system have only one
    # graphics subsystem, so switching from normal to advanced graphics does
    # nothing.  However, switching from advanced to normal graphics will always
    # clear the advanced graphics state, even for operating systems that have
    # only one graphics subsystem.
    # </p>
    # 
    # @param advanced the new advanced graphics state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #setAlpha
    # @see #setAntialias
    # @see #setBackgroundPattern
    # @see #setClipping(Path)
    # @see #setForegroundPattern
    # @see #setLineAttributes
    # @see #setInterpolation
    # @see #setTextAntialias
    # @see #setTransform
    # @see #getAdvanced
    # 
    # @since 3.1
    def set_advanced(advanced)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
        if (!advanced)
          set_alpha(0xff)
          set_antialias(SWT::DEFAULT)
          set_background_pattern(nil)
          set_clipping(0)
          set_foreground_pattern(nil)
          set_interpolation(SWT::DEFAULT)
          set_text_antialias(SWT::DEFAULT)
          set_transform(nil)
        end
        return
      end
      if (advanced && !(@data.attr_cairo).equal?(0))
        return
      end
      if (advanced)
        begin
          init_cairo
        rescue SWTException => e
        end
      else
        if (!@data.attr_dispose_cairo)
          return
        end
        # int
        cairo = @data.attr_cairo
        if (!(cairo).equal?(0))
          Cairo.cairo_destroy(cairo)
        end
        @data.attr_cairo = 0
        @data.attr_interpolation = SWT::DEFAULT
        @data.attr_background_pattern = @data.attr_foreground_pattern = nil
        @data.attr_state = 0
        set_clipping(0)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the receiver's alpha value which must be
    # between 0 (transparent) and 255 (opaque).
    # <p>
    # This operation requires the operating system's advanced
    # graphics subsystem which may not be available on some
    # platforms.
    # </p>
    # @param alpha the alpha value
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_NO_GRAPHICS_LIBRARY - if advanced graphics are not available</li>
    # </ul>
    # 
    # @see #getAdvanced
    # @see #setAdvanced
    # 
    # @since 3.1
    def set_alpha(alpha)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((@data.attr_cairo).equal?(0) && ((alpha & 0xff)).equal?(0xff))
        return
      end
      init_cairo
      @data.attr_alpha = alpha & 0xff
      @data.attr_state &= ~(BACKGROUND | FOREGROUND | BACKGROUND_BG)
    end
    
    typesig { [::Java::Int] }
    # Sets the receiver's anti-aliasing value to the parameter,
    # which must be one of <code>SWT.DEFAULT</code>, <code>SWT.OFF</code>
    # or <code>SWT.ON</code>. Note that this controls anti-aliasing for all
    # <em>non-text drawing</em> operations.
    # <p>
    # This operation requires the operating system's advanced
    # graphics subsystem which may not be available on some
    # platforms.
    # </p>
    # 
    # @param antialias the anti-aliasing setting
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the parameter is not one of <code>SWT.DEFAULT</code>,
    # <code>SWT.OFF</code> or <code>SWT.ON</code></li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_NO_GRAPHICS_LIBRARY - if advanced graphics are not available</li>
    # </ul>
    # 
    # @see #getAdvanced
    # @see #setAdvanced
    # @see #setTextAntialias
    # 
    # @since 3.1
    def set_antialias(antialias)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((@data.attr_cairo).equal?(0) && (antialias).equal?(SWT::DEFAULT))
        return
      end
      mode = 0
      case (antialias)
      when SWT::DEFAULT
        mode = Cairo::CAIRO_ANTIALIAS_DEFAULT
      when SWT::OFF
        mode = Cairo::CAIRO_ANTIALIAS_NONE
      when SWT::ON
        mode = Cairo::CAIRO_ANTIALIAS_GRAY
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      init_cairo
      # int
      cairo = @data.attr_cairo
      Cairo.cairo_set_antialias(cairo, mode)
    end
    
    typesig { [Color] }
    # Sets the background color. The background color is used
    # for fill operations and as the background color when text
    # is drawn.
    # 
    # @param color the new background color for the receiver
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the color is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the color has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def set_background(color)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((color).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (color.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @data.attr_background = color.attr_handle
      @data.attr_background_pattern = nil
      @data.attr_state &= ~(BACKGROUND | BACKGROUND_BG)
    end
    
    typesig { [Pattern] }
    # Sets the background pattern. The default value is <code>null</code>.
    # <p>
    # This operation requires the operating system's advanced
    # graphics subsystem which may not be available on some
    # platforms.
    # </p>
    # 
    # @param pattern the new background pattern
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the parameter has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_NO_GRAPHICS_LIBRARY - if advanced graphics are not available</li>
    # </ul>
    # 
    # @see Pattern
    # @see #getAdvanced
    # @see #setAdvanced
    # 
    # @since 3.1
    def set_background_pattern(pattern)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (!(pattern).nil? && pattern.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((@data.attr_cairo).equal?(0) && (pattern).nil?)
        return
      end
      init_cairo
      if ((@data.attr_background_pattern).equal?(pattern))
        return
      end
      @data.attr_background_pattern = pattern
      @data.attr_state &= ~BACKGROUND
    end
    
    class_module.module_eval {
      typesig { [::Java::Long, Font] }
      # int
      def set_cairo_font(cairo, font)
        set_cairo_font(cairo, font.attr_handle)
      end
      
      typesig { [::Java::Long, ::Java::Long] }
      # int
      # int
      def set_cairo_font(cairo, font)
        # int
        family = OS.pango_font_description_get_family(font)
        length_ = OS.strlen(family)
        buffer = Array.typed(::Java::Byte).new(length_ + 1) { 0 }
        OS.memmove(buffer, family, length_)
        # TODO - convert font height from pango to cairo
        height = OS._pango_pixels(OS.pango_font_description_get_size(font)) * 96 / 72
        pango_style = OS.pango_font_description_get_style(font)
        pango_weight = OS.pango_font_description_get_weight(font)
        slant = Cairo::CAIRO_FONT_SLANT_NORMAL
        if ((pango_style).equal?(OS::PANGO_STYLE_ITALIC))
          slant = Cairo::CAIRO_FONT_SLANT_ITALIC
        end
        if ((pango_style).equal?(OS::PANGO_STYLE_OBLIQUE))
          slant = Cairo::CAIRO_FONT_SLANT_OBLIQUE
        end
        weight = Cairo::CAIRO_FONT_WEIGHT_NORMAL
        if ((pango_weight).equal?(OS::PANGO_WEIGHT_BOLD))
          weight = Cairo::CAIRO_FONT_WEIGHT_BOLD
        end
        Cairo.cairo_select_font_face(cairo, buffer, slant, weight)
        Cairo.cairo_set_font_size(cairo, height)
      end
      
      typesig { [::Java::Long, ::Java::Long] }
      # int
      # int
      def set_cairo_clip(cairo, clip_rgn)
        Cairo.cairo_reset_clip(cairo)
        if ((clip_rgn).equal?(0))
          return
        end
        if (OS::GTK_VERSION >= OS._version(2, 8, 0))
          OS.gdk_cairo_region(cairo, clip_rgn)
        else
          n_rects = Array.typed(::Java::Int).new(1) { 0 }
          # int
          # int
          rects = Array.typed(::Java::Long).new(1) { 0 }
          OS.gdk_region_get_rectangles(clip_rgn, rects, n_rects)
          rect = GdkRectangle.new
          i = 0
          while i < n_rects[0]
            OS.memmove(rect, rects[0] + (i * GdkRectangle.attr_sizeof), GdkRectangle.attr_sizeof)
            Cairo.cairo_rectangle(cairo, rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
            i += 1
          end
          if (!(rects[0]).equal?(0))
            OS.g_free(rects[0])
          end
        end
        Cairo.cairo_clip(cairo)
      end
      
      typesig { [::Java::Long, ::Java::Int, Color, ::Java::Int] }
      # int
      def set_cairo_pattern_color(pattern, offset, c, alpha)
        color = c.attr_handle
        aa = (alpha & 0xff) / (0xff).to_f
        red = ((color.attr_red & 0xffff) / (0xffff).to_f)
        green = ((color.attr_green & 0xffff) / (0xffff).to_f)
        blue = ((color.attr_blue & 0xffff) / (0xffff).to_f)
        Cairo.cairo_pattern_add_color_stop_rgba(pattern, offset, red, green, blue, aa)
      end
    }
    
    typesig { [::Java::Long] }
    # int
    def set_clipping(clip_rgn)
      # int
      cairo = @data.attr_cairo
      if ((clip_rgn).equal?(0))
        if (!(@data.attr_clip_rgn).equal?(0))
          OS.gdk_region_destroy(@data.attr_clip_rgn)
          @data.attr_clip_rgn = 0
        end
        if (!(cairo).equal?(0))
          @data.attr_clipping_transform = nil
          set_cairo_clip(cairo, clip_rgn)
        else
          # int
          clipping = !(@data.attr_damage_rgn).equal?(0) ? @data.attr_damage_rgn : 0
          OS.gdk_gc_set_clip_region(@handle, clipping)
        end
      else
        if ((@data.attr_clip_rgn).equal?(0))
          @data.attr_clip_rgn = OS.gdk_region_new
        end
        OS.gdk_region_subtract(@data.attr_clip_rgn, @data.attr_clip_rgn)
        OS.gdk_region_union(@data.attr_clip_rgn, clip_rgn)
        if (!(cairo).equal?(0))
          if ((@data.attr_clipping_transform).nil?)
            @data.attr_clipping_transform = Array.typed(::Java::Double).new(6) { 0.0 }
          end
          Cairo.cairo_get_matrix(cairo, @data.attr_clipping_transform)
          set_cairo_clip(cairo, clip_rgn)
        else
          # int
          clipping = clip_rgn
          if (!(@data.attr_damage_rgn).equal?(0))
            clipping = OS.gdk_region_new
            OS.gdk_region_union(clipping, clip_rgn)
            OS.gdk_region_intersect(clipping, @data.attr_damage_rgn)
          end
          OS.gdk_gc_set_clip_region(@handle, clipping)
          if (!(clipping).equal?(clip_rgn))
            OS.gdk_region_destroy(clipping)
          end
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Sets the area of the receiver which can be changed
    # by drawing operations to the rectangular area specified
    # by the arguments.
    # 
    # @param x the x coordinate of the clipping rectangle
    # @param y the y coordinate of the clipping rectangle
    # @param width the width of the clipping rectangle
    # @param height the height of the clipping rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def set_clipping(x, y, width, height)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (width < 0)
        x = x + width
        width = -width
      end
      if (height < 0)
        y = y + height
        height = -height
      end
      rect = GdkRectangle.new
      rect.attr_x = x
      rect.attr_y = y
      rect.attr_width = width
      rect.attr_height = height
      # int
      clip_rgn = OS.gdk_region_new
      OS.gdk_region_union_with_rect(clip_rgn, rect)
      set_clipping(clip_rgn)
      OS.gdk_region_destroy(clip_rgn)
    end
    
    typesig { [Path] }
    # Sets the area of the receiver which can be changed
    # by drawing operations to the path specified
    # by the argument.
    # <p>
    # This operation requires the operating system's advanced
    # graphics subsystem which may not be available on some
    # platforms.
    # </p>
    # 
    # @param path the clipping path.
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the path has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_NO_GRAPHICS_LIBRARY - if advanced graphics are not available</li>
    # </ul>
    # 
    # @see Path
    # @see #getAdvanced
    # @see #setAdvanced
    # 
    # @since 3.1
    def set_clipping(path)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (!(path).nil? && path.is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      set_clipping(0)
      if (!(path).nil?)
        init_cairo
        # int
        cairo = @data.attr_cairo
        # int
        copy = Cairo.cairo_copy_path(path.attr_handle)
        if ((copy).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        Cairo.cairo_append_path(cairo, copy)
        Cairo.cairo_path_destroy(copy)
        Cairo.cairo_clip(cairo)
      end
    end
    
    typesig { [Rectangle] }
    # Sets the area of the receiver which can be changed
    # by drawing operations to the rectangular area specified
    # by the argument.  Specifying <code>null</code> for the
    # rectangle reverts the receiver's clipping area to its
    # original value.
    # 
    # @param rect the clipping rectangle or <code>null</code>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def set_clipping(rect)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((rect).nil?)
        set_clipping(0)
      else
        set_clipping(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
      end
    end
    
    typesig { [Region] }
    # Sets the area of the receiver which can be changed
    # by drawing operations to the region specified
    # by the argument.  Specifying <code>null</code> for the
    # region reverts the receiver's clipping area to its
    # original value.
    # 
    # @param region the clipping region or <code>null</code>
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the region has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def set_clipping(region)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (!(region).nil? && region.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      set_clipping(!(region).nil? ? region.attr_handle : 0)
    end
    
    typesig { [Font] }
    # Sets the font which will be used by the receiver
    # to draw and measure text to the argument. If the
    # argument is null, then a default font appropriate
    # for the platform will be used instead.
    # 
    # @param font the new font for the receiver, or null to indicate a default font
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the font has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def set_font(font)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (!(font).nil? && font.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @data.attr_font = !(font).nil? ? font : @data.attr_device.attr_system_font
      @data.attr_state &= ~FONT
      @data.attr_string_width = @data.attr_string_height = -1
    end
    
    typesig { [::Java::Int] }
    # Sets the receiver's fill rule to the parameter, which must be one of
    # <code>SWT.FILL_EVEN_ODD</code> or <code>SWT.FILL_WINDING</code>.
    # 
    # @param rule the new fill rule
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the rule is not one of <code>SWT.FILL_EVEN_ODD</code>
    # or <code>SWT.FILL_WINDING</code></li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.1
    def set_fill_rule(rule)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      cairo_mode = Cairo::CAIRO_FILL_RULE_EVEN_ODD
      case (rule)
      when SWT::FILL_WINDING
        cairo_mode = Cairo::CAIRO_FILL_RULE_WINDING
      when SWT::FILL_EVEN_ODD
        cairo_mode = Cairo::CAIRO_FILL_RULE_EVEN_ODD
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      # TODO - need fill rule in X, GDK has no API
      init_cairo
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        Cairo.cairo_set_fill_rule(cairo, cairo_mode)
      end
    end
    
    typesig { [Color] }
    # Sets the foreground color. The foreground color is used
    # for drawing operations including when text is drawn.
    # 
    # @param color the new foreground color for the receiver
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the color is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the color has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def set_foreground(color)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((color).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (color.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @data.attr_foreground = color.attr_handle
      @data.attr_foreground_pattern = nil
      @data.attr_state &= ~FOREGROUND
    end
    
    typesig { [Pattern] }
    # Sets the foreground pattern. The default value is <code>null</code>.
    # <p>
    # This operation requires the operating system's advanced
    # graphics subsystem which may not be available on some
    # platforms.
    # </p>
    # @param pattern the new foreground pattern
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the parameter has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_NO_GRAPHICS_LIBRARY - if advanced graphics are not available</li>
    # </ul>
    # 
    # @see Pattern
    # @see #getAdvanced
    # @see #setAdvanced
    # 
    # @since 3.1
    def set_foreground_pattern(pattern)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (!(pattern).nil? && pattern.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((@data.attr_cairo).equal?(0) && (pattern).nil?)
        return
      end
      init_cairo
      if ((@data.attr_foreground_pattern).equal?(pattern))
        return
      end
      @data.attr_foreground_pattern = pattern
      @data.attr_state &= ~FOREGROUND
    end
    
    typesig { [::Java::Int] }
    # Sets the receiver's interpolation setting to the parameter, which
    # must be one of <code>SWT.DEFAULT</code>, <code>SWT.NONE</code>,
    # <code>SWT.LOW</code> or <code>SWT.HIGH</code>.
    # <p>
    # This operation requires the operating system's advanced
    # graphics subsystem which may not be available on some
    # platforms.
    # </p>
    # 
    # @param interpolation the new interpolation setting
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the rule is not one of <code>SWT.DEFAULT</code>,
    # <code>SWT.NONE</code>, <code>SWT.LOW</code> or <code>SWT.HIGH</code>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_NO_GRAPHICS_LIBRARY - if advanced graphics are not available</li>
    # </ul>
    # 
    # @see #getAdvanced
    # @see #setAdvanced
    # 
    # @since 3.1
    def set_interpolation(interpolation)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((@data.attr_cairo).equal?(0) && (interpolation).equal?(SWT::DEFAULT))
        return
      end
      case (interpolation)
      when SWT::DEFAULT, SWT::NONE, SWT::LOW, SWT::HIGH
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      init_cairo
      @data.attr_interpolation = interpolation
    end
    
    typesig { [LineAttributes] }
    # Sets the receiver's line attributes.
    # <p>
    # This operation requires the operating system's advanced
    # graphics subsystem which may not be available on some
    # platforms.
    # </p>
    # @param attributes the line attributes
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the attributes is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if any of the line attributes is not valid</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_NO_GRAPHICS_LIBRARY - if advanced graphics are not available</li>
    # </ul>
    # 
    # @see LineAttributes
    # @see #getAdvanced
    # @see #setAdvanced
    # 
    # @since 3.3
    def set_line_attributes(attributes)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((attributes).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      mask = 0
      line_width = attributes.attr_width
      if (!(line_width).equal?(@data.attr_line_width))
        mask |= LINE_WIDTH | DRAW_OFFSET
      end
      line_style = attributes.attr_style
      if (!(line_style).equal?(@data.attr_line_style))
        mask |= LINE_STYLE
        case (line_style)
        when SWT::LINE_SOLID, SWT::LINE_DASH, SWT::LINE_DOT, SWT::LINE_DASHDOT, SWT::LINE_DASHDOTDOT
        when SWT::LINE_CUSTOM
          if ((attributes.attr_dash).nil?)
            line_style = SWT::LINE_SOLID
          end
        else
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
      end
      join = attributes.attr_join
      if (!(join).equal?(@data.attr_line_join))
        mask |= LINE_JOIN
        case (join)
        when SWT::CAP_ROUND, SWT::CAP_FLAT, SWT::CAP_SQUARE
        else
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
      end
      cap = attributes.attr_cap
      if (!(cap).equal?(@data.attr_line_cap))
        mask |= LINE_CAP
        case (cap)
        when SWT::JOIN_MITER, SWT::JOIN_ROUND, SWT::JOIN_BEVEL
        else
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
      end
      dashes = attributes.attr_dash
      line_dashes = @data.attr_line_dashes
      if (!(dashes).nil? && dashes.attr_length > 0)
        changed = (line_dashes).nil? || !(line_dashes.attr_length).equal?(dashes.attr_length)
        i = 0
        while i < dashes.attr_length
          dash = dashes[i]
          if (dash <= 0)
            SWT.error(SWT::ERROR_INVALID_ARGUMENT)
          end
          if (!changed && !(line_dashes[i]).equal?(dash))
            changed = true
          end
          i += 1
        end
        if (changed)
          new_dashes = Array.typed(::Java::Float).new(dashes.attr_length) { 0.0 }
          System.arraycopy(dashes, 0, new_dashes, 0, dashes.attr_length)
          dashes = new_dashes
          mask |= LINE_STYLE
        else
          dashes = line_dashes
        end
      else
        if (!(line_dashes).nil? && line_dashes.attr_length > 0)
          mask |= LINE_STYLE
        else
          dashes = line_dashes
        end
      end
      dash_offset = attributes.attr_dash_offset
      if (!(dash_offset).equal?(@data.attr_line_dashes_offset))
        mask |= LINE_STYLE
      end
      miter_limit = attributes.attr_miter_limit
      if (!(miter_limit).equal?(@data.attr_line_miter_limit))
        mask |= LINE_MITERLIMIT
      end
      init_cairo
      if ((mask).equal?(0))
        return
      end
      @data.attr_line_width = line_width
      @data.attr_line_style = line_style
      @data.attr_line_cap = cap
      @data.attr_line_join = join
      @data.attr_line_dashes = dashes
      @data.attr_line_dashes_offset = dash_offset
      @data.attr_line_miter_limit = miter_limit
      @data.attr_state &= ~mask
    end
    
    typesig { [::Java::Int] }
    # Sets the receiver's line cap style to the argument, which must be one
    # of the constants <code>SWT.CAP_FLAT</code>, <code>SWT.CAP_ROUND</code>,
    # or <code>SWT.CAP_SQUARE</code>.
    # 
    # @param cap the cap style to be used for drawing lines
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the style is not valid</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.1
    def set_line_cap(cap)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((@data.attr_line_cap).equal?(cap))
        return
      end
      case (cap)
      when SWT::CAP_ROUND, SWT::CAP_FLAT, SWT::CAP_SQUARE
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @data.attr_line_cap = cap
      @data.attr_state &= ~LINE_CAP
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Sets the receiver's line dash style to the argument. The default
    # value is <code>null</code>. If the argument is not <code>null</code>,
    # the receiver's line style is set to <code>SWT.LINE_CUSTOM</code>, otherwise
    # it is set to <code>SWT.LINE_SOLID</code>.
    # 
    # @param dashes the dash style to be used for drawing lines
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if any of the values in the array is less than or equal 0</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.1
    def set_line_dash(dashes)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      line_dashes = @data.attr_line_dashes
      if (!(dashes).nil? && dashes.attr_length > 0)
        changed = !(@data.attr_line_style).equal?(SWT::LINE_CUSTOM) || (line_dashes).nil? || !(line_dashes.attr_length).equal?(dashes.attr_length)
        i = 0
        while i < dashes.attr_length
          dash = dashes[i]
          if (dash <= 0)
            SWT.error(SWT::ERROR_INVALID_ARGUMENT)
          end
          if (!changed && !(line_dashes[i]).equal?(dash))
            changed = true
          end
          i += 1
        end
        if (!changed)
          return
        end
        @data.attr_line_dashes = Array.typed(::Java::Float).new(dashes.attr_length) { 0.0 }
        i_ = 0
        while i_ < dashes.attr_length
          @data.attr_line_dashes[i_] = dashes[i_]
          i_ += 1
        end
        @data.attr_line_style = SWT::LINE_CUSTOM
      else
        if ((@data.attr_line_style).equal?(SWT::LINE_SOLID) && ((line_dashes).nil? || (line_dashes.attr_length).equal?(0)))
          return
        end
        @data.attr_line_dashes = nil
        @data.attr_line_style = SWT::LINE_SOLID
      end
      @data.attr_state &= ~LINE_STYLE
    end
    
    typesig { [::Java::Int] }
    # Sets the receiver's line join style to the argument, which must be one
    # of the constants <code>SWT.JOIN_MITER</code>, <code>SWT.JOIN_ROUND</code>,
    # or <code>SWT.JOIN_BEVEL</code>.
    # 
    # @param join the join style to be used for drawing lines
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the style is not valid</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @since 3.1
    def set_line_join(join)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((@data.attr_line_join).equal?(join))
        return
      end
      case (join)
      when SWT::JOIN_MITER, SWT::JOIN_ROUND, SWT::JOIN_BEVEL
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @data.attr_line_join = join
      @data.attr_state &= ~LINE_JOIN
    end
    
    typesig { [::Java::Int] }
    # Sets the receiver's line style to the argument, which must be one
    # of the constants <code>SWT.LINE_SOLID</code>, <code>SWT.LINE_DASH</code>,
    # <code>SWT.LINE_DOT</code>, <code>SWT.LINE_DASHDOT</code> or
    # <code>SWT.LINE_DASHDOTDOT</code>.
    # 
    # @param lineStyle the style to be used for drawing lines
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the style is not valid</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def set_line_style(line_style)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((@data.attr_line_style).equal?(line_style))
        return
      end
      case (line_style)
      when SWT::LINE_SOLID, SWT::LINE_DASH, SWT::LINE_DOT, SWT::LINE_DASHDOT, SWT::LINE_DASHDOTDOT
      when SWT::LINE_CUSTOM
        if ((@data.attr_line_dashes).nil?)
          line_style = SWT::LINE_SOLID
        end
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @data.attr_line_style = line_style
      @data.attr_state &= ~LINE_STYLE
    end
    
    typesig { [::Java::Int] }
    # Sets the width that will be used when drawing lines
    # for all of the figure drawing operations (that is,
    # <code>drawLine</code>, <code>drawRectangle</code>,
    # <code>drawPolyline</code>, and so forth.
    # <p>
    # Note that line width of zero is used as a hint to
    # indicate that the fastest possible line drawing
    # algorithms should be used. This means that the
    # output may be different from line width one.
    # </p>
    # 
    # @param lineWidth the width of a line
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def set_line_width(line_width)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((@data.attr_line_width).equal?(line_width))
        return
      end
      @data.attr_line_width = line_width
      @data.attr_state &= ~(LINE_WIDTH | DRAW_OFFSET)
    end
    
    typesig { [String, ::Java::Int] }
    def set_string(string, flags)
      if ((@data.attr_layout).equal?(0))
        create_layout
      end
      if ((string).equal?(@data.attr_string) && ((flags & ~SWT::DRAW_TRANSPARENT)).equal?((@data.attr_draw_flags & ~SWT::DRAW_TRANSPARENT)))
        return
      end
      buffer = nil
      mnemonic = 0
      length_ = string.length
      # int
      layout = @data.attr_layout
      text = CharArray.new(length_)
      string.get_chars(0, length_, text, 0)
      if (!((flags & SWT::DRAW_MNEMONIC)).equal?(0) && !((mnemonic = fix_mnemonic(text))).equal?(-1))
        text1 = CharArray.new(mnemonic - 1)
        System.arraycopy(text, 0, text1, 0, text1.attr_length)
        buffer1 = Converter.wcs_to_mbcs(nil, text1, false)
        text2 = CharArray.new(text.attr_length - mnemonic)
        System.arraycopy(text, mnemonic - 1, text2, 0, text2.attr_length)
        buffer2 = Converter.wcs_to_mbcs(nil, text2, false)
        buffer = Array.typed(::Java::Byte).new(buffer1.attr_length + buffer2.attr_length) { 0 }
        System.arraycopy(buffer1, 0, buffer, 0, buffer1.attr_length)
        System.arraycopy(buffer2, 0, buffer, buffer1.attr_length, buffer2.attr_length)
        # int
        attr_list = OS.pango_attr_list_new
        # int
        attr = OS.pango_attr_underline_new(OS::PANGO_UNDERLINE_LOW)
        attribute = PangoAttribute.new
        OS.memmove(attribute, attr, PangoAttribute.attr_sizeof)
        attribute.attr_start_index = buffer1.attr_length
        attribute.attr_end_index = buffer1.attr_length + 1
        OS.memmove(attr, attribute, PangoAttribute.attr_sizeof)
        OS.pango_attr_list_insert(attr_list, attr)
        OS.pango_layout_set_attributes(layout, attr_list)
        OS.pango_attr_list_unref(attr_list)
      else
        buffer = Converter.wcs_to_mbcs(nil, text, false)
        OS.pango_layout_set_attributes(layout, 0)
      end
      OS.pango_layout_set_text(layout, buffer, buffer.attr_length)
      OS.pango_layout_set_single_paragraph_mode(layout, ((flags & SWT::DRAW_DELIMITER)).equal?(0))
      OS.pango_layout_set_tabs(layout, !((flags & SWT::DRAW_TAB)).equal?(0) ? 0 : @data.attr_device.attr_empty_tab)
      @data.attr_string = string
      @data.attr_string_width = @data.attr_string_height = -1
      @data.attr_draw_flags = flags
    end
    
    typesig { [::Java::Int] }
    # Sets the receiver's text anti-aliasing value to the parameter,
    # which must be one of <code>SWT.DEFAULT</code>, <code>SWT.OFF</code>
    # or <code>SWT.ON</code>. Note that this controls anti-aliasing only
    # for all <em>text drawing</em> operations.
    # <p>
    # This operation requires the operating system's advanced
    # graphics subsystem which may not be available on some
    # platforms.
    # </p>
    # 
    # @param antialias the anti-aliasing setting
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the parameter is not one of <code>SWT.DEFAULT</code>,
    # <code>SWT.OFF</code> or <code>SWT.ON</code></li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_NO_GRAPHICS_LIBRARY - if advanced graphics are not available</li>
    # </ul>
    # 
    # @see #getAdvanced
    # @see #setAdvanced
    # @see #setAntialias
    # 
    # @since 3.1
    def set_text_antialias(antialias)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((@data.attr_cairo).equal?(0) && (antialias).equal?(SWT::DEFAULT))
        return
      end
      mode = 0
      case (antialias)
      when SWT::DEFAULT
        mode = Cairo::CAIRO_ANTIALIAS_DEFAULT
      when SWT::OFF
        mode = Cairo::CAIRO_ANTIALIAS_NONE
      when SWT::ON
        mode = Cairo::CAIRO_ANTIALIAS_GRAY
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      init_cairo
      # int
      options = Cairo.cairo_font_options_create
      Cairo.cairo_font_options_set_antialias(options, mode)
      if (OS::GTK_VERSION < OS._version(2, 8, 0))
        Cairo.cairo_set_font_options(@data.attr_cairo, options)
      else
        if ((@data.attr_context).equal?(0))
          create_layout
        end
        OS.pango_cairo_context_set_font_options(@data.attr_context, options)
      end
      Cairo.cairo_font_options_destroy(options)
    end
    
    typesig { [Transform] }
    # Sets the transform that is currently being used by the receiver. If
    # the argument is <code>null</code>, the current transform is set to
    # the identity transform.
    # <p>
    # This operation requires the operating system's advanced
    # graphics subsystem which may not be available on some
    # platforms.
    # </p>
    # 
    # @param transform the transform to set
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the parameter has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_NO_GRAPHICS_LIBRARY - if advanced graphics are not available</li>
    # </ul>
    # 
    # @see Transform
    # @see #getAdvanced
    # @see #setAdvanced
    # 
    # @since 3.1
    def set_transform(transform)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (!(transform).nil? && transform.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((@data.attr_cairo).equal?(0) && (transform).nil?)
        return
      end
      init_cairo
      # int
      cairo = @data.attr_cairo
      identity_ = identity
      if (!(transform).nil?)
        Cairo.cairo_matrix_multiply(identity_, transform.attr_handle, identity_)
      end
      Cairo.cairo_set_matrix(cairo, identity_)
      @data.attr_state &= ~DRAW_OFFSET
    end
    
    typesig { [::Java::Boolean] }
    # If the argument is <code>true</code>, puts the receiver
    # in a drawing mode where the resulting color in the destination
    # is the <em>exclusive or</em> of the color values in the source
    # and the destination, and if the argument is <code>false</code>,
    # puts the receiver in a drawing mode where the destination color
    # is replaced with the source color value.
    # <p>
    # Note that this mode in fundamentally unsupportable on certain
    # platforms, notably Carbon (Mac OS X). Clients that want their
    # code to run on all platforms need to avoid this method.
    # </p>
    # 
    # @param xor if <code>true</code>, then <em>xor</em> mode is used, otherwise <em>source copy</em> mode is used
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @deprecated this functionality is not supported on some platforms
    def set_xormode(xor)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      OS.gdk_gc_set_function(@handle, xor ? OS::GDK_XOR : OS::GDK_COPY)
      @data.attr_xor_mode = xor
    end
    
    typesig { [String] }
    # Returns the extent of the given string. No tab
    # expansion or carriage return processing will be performed.
    # <p>
    # The <em>extent</em> of a string is the width and height of
    # the rectangular area it would cover if drawn in a particular
    # font (in this case, the current font in the receiver).
    # </p>
    # 
    # @param string the string to measure
    # @return a point containing the extent of the string
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def string_extent(string)
      return text_extent(string, 0)
    end
    
    typesig { [String] }
    # Returns the extent of the given string. Tab expansion and
    # carriage return processing are performed.
    # <p>
    # The <em>extent</em> of a string is the width and height of
    # the rectangular area it would cover if drawn in a particular
    # font (in this case, the current font in the receiver).
    # </p>
    # 
    # @param string the string to measure
    # @return a point containing the extent of the string
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def text_extent(string)
      return text_extent(string, SWT::DRAW_DELIMITER | SWT::DRAW_TAB)
    end
    
    typesig { [String, ::Java::Int] }
    # Returns the extent of the given string. Tab expansion, line
    # delimiter and mnemonic processing are performed according to
    # the specified flags, which can be a combination of:
    # <dl>
    # <dt><b>DRAW_DELIMITER</b></dt>
    # <dd>draw multiple lines</dd>
    # <dt><b>DRAW_TAB</b></dt>
    # <dd>expand tabs</dd>
    # <dt><b>DRAW_MNEMONIC</b></dt>
    # <dd>underline the mnemonic character</dd>
    # <dt><b>DRAW_TRANSPARENT</b></dt>
    # <dd>transparent background</dd>
    # </dl>
    # <p>
    # The <em>extent</em> of a string is the width and height of
    # the rectangular area it would cover if drawn in a particular
    # font (in this case, the current font in the receiver).
    # </p>
    # 
    # @param string the string to measure
    # @param flags the flags specifying how to process the text
    # @return a point containing the extent of the string
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def text_extent(string, flags)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((string).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      # int
      cairo = @data.attr_cairo
      if (!(cairo).equal?(0))
        if (OS::GTK_VERSION < OS._version(2, 8, 0))
          # TODO - honor flags
          check_gc(FONT)
          buffer = Converter.wcs_to_mbcs(nil, string, true)
          font_extents = Cairo_font_extents_t.new
          Cairo.cairo_font_extents(cairo, font_extents)
          extents = Cairo_text_extents_t.new
          Cairo.cairo_text_extents(cairo, buffer, extents)
          return Point.new(RJava.cast_to_int(extents.attr_width), RJava.cast_to_int(font_extents.attr_height))
        end
      end
      set_string(string, flags)
      check_gc(FONT)
      if (!(@data.attr_string_width).equal?(-1))
        return Point.new(@data.attr_string_width, @data.attr_string_height)
      end
      width = Array.typed(::Java::Int).new(1) { 0 }
      height = Array.typed(::Java::Int).new(1) { 0 }
      OS.pango_layout_get_size(@data.attr_layout, width, height)
      return Point.new(@data.attr_string_width = OS._pango_pixels(width[0]), @data.attr_string_height = OS._pango_pixels(height[0]))
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the receiver
    def to_s
      if (is_disposed)
        return "GC {*DISPOSED*}"
      end
      return "GC {" + (@handle).to_s + "}"
    end
    
    private
    alias_method :initialize__gc, :initialize
  end
  
end
