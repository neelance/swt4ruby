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
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Carbon
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
      const_set_lazy(:TAB_COUNT) { 32 }
      const_attr_reader  :TAB_COUNT
      
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
      
      const_set_lazy(:FOREGROUND_FILL) { 1 << 8 }
      const_attr_reader  :FOREGROUND_FILL
      
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
      typesig { [::Java::Int] }
      def check_style(style)
        if (!((style & SWT::LEFT_TO_RIGHT)).equal?(0))
          style &= ~SWT::RIGHT_TO_LEFT
        end
        return style & (SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT)
      end
      
      typesig { [Drawable, SwtGCData] }
      # Invokes platform specific functionality to allocate a new graphics context.
      # <p>
      # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
      # API for <code>GC</code>. It is marked public only so that it
      # can be shared within the packages provided by SWT. It is not
      # available on all platforms, and should never be called from
      # application code.
      # </p>
      # 
      # @param drawable the Drawable for the receiver.
      # @param data the data for the receiver.
      # 
      # @return a new <code>GC</code>
      # 
      # @private
      def carbon_new(drawable, data)
        gc = SwtGC.new
        context = drawable.internal_new__gc(data)
        gc.attr_device = data.attr_device
        gc.init(drawable, data, context)
        return gc
      end
      
      typesig { [::Java::Int, SwtGCData] }
      # Invokes platform specific functionality to wrap a graphics context.
      # <p>
      # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
      # API for <code>GC</code>. It is marked public only so that it
      # can be shared within the packages provided by SWT. It is not
      # available on all platforms, and should never be called from
      # application code.
      # </p>
      # 
      # @param context the Quartz context.
      # @param data the data for the receiver.
      # 
      # @return a new <code>GC</code>
      def carbon_new(context, data)
        gc = SwtGC.new
        gc.attr_device = data.attr_device
        gc.init(nil, data, context)
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
      if (!((state & FOREGROUND)).equal?(0))
        pattern = @data.attr_foreground_pattern
        if (!(pattern).nil?)
          colorspace = OS._cgcolor_space_create_pattern(@data.attr_device.attr_colorspace)
          OS._cgcontext_set_stroke_color_space(@handle, colorspace)
          OS._cgcolor_space_release(colorspace)
          if ((@data.attr_fore_pattern).equal?(0))
            @data.attr_fore_pattern = pattern.create_pattern(@handle)
          end
          OS._cgcontext_set_stroke_pattern(@handle, @data.attr_fore_pattern, @data.attr_foreground)
        else
          OS._cgcontext_set_stroke_color_space(@handle, @data.attr_device.attr_colorspace)
          OS._cgcontext_set_stroke_color(@handle, @data.attr_foreground)
        end
      end
      if (!((state & FOREGROUND_FILL)).equal?(0))
        pattern = @data.attr_foreground_pattern
        if (!(pattern).nil?)
          colorspace = OS._cgcolor_space_create_pattern(@data.attr_device.attr_colorspace)
          OS._cgcontext_set_fill_color_space(@handle, colorspace)
          OS._cgcolor_space_release(colorspace)
          if ((@data.attr_fore_pattern).equal?(0))
            @data.attr_fore_pattern = pattern.create_pattern(@handle)
          end
          OS._cgcontext_set_fill_pattern(@handle, @data.attr_fore_pattern, @data.attr_foreground)
        else
          OS._cgcontext_set_fill_color_space(@handle, @data.attr_device.attr_colorspace)
          OS._cgcontext_set_fill_color(@handle, @data.attr_foreground)
        end
        @data.attr_state &= ~BACKGROUND
      end
      if (!((state & BACKGROUND)).equal?(0))
        pattern = @data.attr_background_pattern
        if (!(pattern).nil?)
          colorspace = OS._cgcolor_space_create_pattern(@data.attr_device.attr_colorspace)
          OS._cgcontext_set_fill_color_space(@handle, colorspace)
          OS._cgcolor_space_release(colorspace)
          if ((@data.attr_back_pattern).equal?(0))
            @data.attr_back_pattern = pattern.create_pattern(@handle)
          end
          OS._cgcontext_set_fill_pattern(@handle, @data.attr_back_pattern, @data.attr_background)
        else
          OS._cgcontext_set_fill_color_space(@handle, @data.attr_device.attr_colorspace)
          OS._cgcontext_set_fill_color(@handle, @data.attr_background)
        end
        @data.attr_state &= ~FOREGROUND_FILL
      end
      if (!((state & FONT)).equal?(0))
        set_cgfont
      end
      if (!((state & LINE_WIDTH)).equal?(0))
        OS._cgcontext_set_line_width(@handle, (@data.attr_line_width).equal?(0) ? 1 : @data.attr_line_width)
        case (@data.attr_line_style)
        when SWT::LINE_DOT, SWT::LINE_DASH, SWT::LINE_DASHDOT, SWT::LINE_DASHDOTDOT
          state |= LINE_STYLE
        end
      end
      if (!((state & LINE_STYLE)).equal?(0))
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
          lengths = Array.typed(::Java::Float).new(dashes.attr_length) { 0.0 }
          i = 0
          while i < lengths.attr_length
            lengths[i] = (width).equal?(0) || (@data.attr_line_style).equal?(SWT::LINE_CUSTOM) ? dashes[i] : dashes[i] * width
            ((i += 1) - 1)
          end
          OS._cgcontext_set_line_dash(@handle, @data.attr_line_dashes_offset, lengths, lengths.attr_length)
        else
          OS._cgcontext_set_line_dash(@handle, 0, nil, 0)
        end
      end
      if (!((state & LINE_MITERLIMIT)).equal?(0))
        OS._cgcontext_set_miter_limit(@handle, @data.attr_line_miter_limit)
      end
      if (!((state & LINE_JOIN)).equal?(0))
        join_style = 0
        case (@data.attr_line_join)
        when SWT::JOIN_MITER
          join_style = OS.attr_k_cgline_join_miter
        when SWT::JOIN_ROUND
          join_style = OS.attr_k_cgline_join_round
        when SWT::JOIN_BEVEL
          join_style = OS.attr_k_cgline_join_bevel
        end
        OS._cgcontext_set_line_join(@handle, join_style)
      end
      if (!((state & LINE_CAP)).equal?(0))
        cap_style = 0
        case (@data.attr_line_cap)
        when SWT::CAP_ROUND
          cap_style = OS.attr_k_cgline_cap_round
        when SWT::CAP_FLAT
          cap_style = OS.attr_k_cgline_cap_butt
        when SWT::CAP_SQUARE
          cap_style = OS.attr_k_cgline_cap_square
        end
        OS._cgcontext_set_line_cap(@handle, cap_style)
      end
      if (!((state & DRAW_OFFSET)).equal?(0))
        @data.attr_draw_xoffset = @data.attr_draw_yoffset = 0
        size = CGSize.new
        size.attr_width = size.attr_height = 1
        if (!(@data.attr_transform).nil?)
          OS._cgsize_apply_affine_transform(size, @data.attr_transform, size)
        end
        scaling = size.attr_width
        if (scaling < 0)
          scaling = -scaling
        end
        stroke_width = @data.attr_line_width * scaling
        if ((stroke_width).equal?(0) || ((RJava.cast_to_int(stroke_width) % 2)).equal?(1))
          @data.attr_draw_xoffset = 0.5 / scaling
        end
        scaling = size.attr_height
        if (scaling < 0)
          scaling = -scaling
        end
        stroke_width = @data.attr_line_width * scaling
        if ((stroke_width).equal?(0) || ((RJava.cast_to_int(stroke_width) % 2)).equal?(1))
          @data.attr_draw_yoffset = 0.5 / scaling
        end
      end
    end
    
    typesig { [::Java::Int, Array.typed(::Java::Float)] }
    def convert_rgn(rgn, transform)
      new_rgn = OS._new_rgn
      callback = Callback.new(self, "convertRgn", 4)
      proc = callback.get_address
      if ((proc).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      clipping_tranform = @data.attr_clipping_transform
      @data.attr_clipping_transform = transform
      OS._qdregion_to_rects(rgn, OS.attr_k_qdparse_region_from_top_left, proc, new_rgn)
      @data.attr_clipping_transform = clipping_tranform
      callback.dispose
      return new_rgn
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def convert_rgn(message, rgn, r, new_rgn)
      if ((message).equal?(OS.attr_k_qdregion_to_rects_msg_parse))
        rect = Rect.new
        OS.memmove(rect, r, Rect.attr_sizeof)
        point = CGPoint.new
        poly_rgn = OS._new_rgn
        OS._open_rgn
        point.attr_x = rect.attr_left
        point.attr_y = rect.attr_top
        transform = @data.attr_clipping_transform
        OS._cgpoint_apply_affine_transform(point, transform, point)
        start_x = 0
        start_y = 0
        OS._move_to(start_x = RJava.cast_to_short(point.attr_x), start_y = RJava.cast_to_short(point.attr_y))
        point.attr_x = rect.attr_right
        point.attr_y = rect.attr_top
        OS._cgpoint_apply_affine_transform(point, transform, point)
        OS._line_to(RJava.cast_to_short(Math.round(point.attr_x)), RJava.cast_to_short(point.attr_y))
        point.attr_x = rect.attr_right
        point.attr_y = rect.attr_bottom
        OS._cgpoint_apply_affine_transform(point, transform, point)
        OS._line_to(RJava.cast_to_short(Math.round(point.attr_x)), RJava.cast_to_short(Math.round(point.attr_y)))
        point.attr_x = rect.attr_left
        point.attr_y = rect.attr_bottom
        OS._cgpoint_apply_affine_transform(point, transform, point)
        OS._line_to(RJava.cast_to_short(point.attr_x), RJava.cast_to_short(Math.round(point.attr_y)))
        OS._line_to(start_x, start_y)
        OS._close_rgn(poly_rgn)
        OS._union_rgn(new_rgn, poly_rgn, new_rgn)
        OS._dispose_rgn(poly_rgn)
      end
      return 0
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
      if (!(@data.attr_image).nil?)
        copy_area(image, x, y, @data.attr_image.attr_handle)
      else
        if (!(@data.attr_control).equal?(0))
          image_handle = image.attr_handle
          width = OS._cgimage_get_width(image_handle)
          height = OS._cgimage_get_height(image_handle)
          window = OS._get_control_owner(@data.attr_control)
          src_rect = Rect.new
          pt = CGPoint.new
          content_view = Array.typed(::Java::Int).new(1) { 0 }
          OS._hiview_find_by_id(OS._hiview_get_root(window), OS.k_hiview_window_content_id, content_view)
          OS._hiview_convert_point(pt, @data.attr_control, content_view[0])
          x += RJava.cast_to_int(pt.attr_x)
          y += RJava.cast_to_int(pt.attr_y)
          inset = @data.attr_inset_rect
          x -= inset.attr_left
          y -= inset.attr_top
          src_rect.attr_left = RJava.cast_to_short(x)
          src_rect.attr_top = RJava.cast_to_short(y)
          src_rect.attr_right = RJava.cast_to_short((x + width))
          src_rect.attr_bottom = RJava.cast_to_short((y + height))
          dest_rect = Rect.new
          dest_rect.attr_right = RJava.cast_to_short(width)
          dest_rect.attr_bottom = RJava.cast_to_short(height)
          bpl = width * 4
          g_world = Array.typed(::Java::Int).new(1) { 0 }
          port = OS._get_window_port(window)
          OS._new_gworld_from_ptr(g_world, OS.attr_k32argbpixel_format, dest_rect, 0, 0, 0, image.attr_data, bpl)
          OS._copy_bits(OS._get_port_bit_map_for_copy_bits(port), OS._get_port_bit_map_for_copy_bits(g_world[0]), src_rect, dest_rect, RJava.cast_to_short(OS.attr_src_copy), 0)
          OS._dispose_gworld(g_world[0])
        else
          if (!(@data.attr_window).equal?(0))
            image_handle = image.attr_handle
            rect = CGRect.new
            rect.attr_x = x
            rect.attr_y = y
            rect.attr_width = OS._cgimage_get_width(image_handle)
            rect.attr_height = OS._cgimage_get_height(image_handle)
            displays = Array.typed(::Java::Int).new(16) { 0 }
            count = Array.typed(::Java::Int).new(1) { 0 }
            if (!(OS._cgget_displays_with_rect(rect, displays.attr_length, displays, count)).equal?(0))
              return
            end
            i = 0
            while i < count[0]
              display = displays[i]
              OS._cgdisplay_bounds(display, rect)
              address = OS._cgdisplay_base_address(display)
              if (!(address).equal?(0))
                width = OS._cgdisplay_pixels_wide(display)
                height = OS._cgdisplay_pixels_high(display)
                bpr = OS._cgdisplay_bytes_per_row(display)
                bpp = OS._cgdisplay_bits_per_pixel(display)
                bps = OS._cgdisplay_bits_per_sample(display)
                bitmap_info = OS.attr_k_cgimage_alpha_none_skip_first
                case (bpp)
                when 16
                  bitmap_info |= OS.attr_k_cgbitmap_byte_order16host
                when 32
                  bitmap_info |= OS.attr_k_cgbitmap_byte_order32host
                end
                src_image = 0
                if (OS.____big_endian__ && OS::VERSION >= 0x1040)
                  context = OS._cgbitmap_context_create(address, width, height, bps, bpr, @data.attr_device.attr_colorspace, bitmap_info)
                  src_image = OS._cgbitmap_context_create_image(context)
                  OS._cgcontext_release(context)
                else
                  provider = OS._cgdata_provider_create_with_data(0, address, bpr * height, 0)
                  src_image = OS._cgimage_create(width, height, bps, bpp, bpr, @data.attr_device.attr_colorspace, bitmap_info, provider, nil, true, 0)
                  OS._cgdata_provider_release(provider)
                end
                copy_area(image, x - RJava.cast_to_int(rect.attr_x), y - RJava.cast_to_int(rect.attr_y), src_image)
                if (!(src_image).equal?(0))
                  OS._cgimage_release(src_image)
                end
              end
              ((i += 1) - 1)
            end
          end
        end
      end
    end
    
    typesig { [Image, ::Java::Int, ::Java::Int, ::Java::Int] }
    def copy_area(image, x, y, src_image)
      if ((src_image).equal?(0))
        return
      end
      image_handle = image.attr_handle
      bpc = OS._cgimage_get_bits_per_component(image_handle)
      width = OS._cgimage_get_width(image_handle)
      height = OS._cgimage_get_height(image_handle)
      bpr = OS._cgimage_get_bytes_per_row(image_handle)
      alpha_info = OS._cgimage_get_alpha_info(image_handle)
      context = OS._cgbitmap_context_create(image.attr_data, width, height, bpc, bpr, @data.attr_device.attr_colorspace, alpha_info)
      if (!(context).equal?(0))
        rect = CGRect.new
        rect.attr_x = -x
        rect.attr_y = y
        rect.attr_width = OS._cgimage_get_width(src_image)
        rect.attr_height = OS._cgimage_get_height(src_image)
        OS._cgcontext_translate_ctm(context, 0, -(rect.attr_height - height))
        OS._cgcontext_draw_image(context, rect, src_image)
        OS._cgcontext_release(context)
      end
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
      if (@data.attr_update_clip)
        set_cgclipping
      end
      if (width <= 0 || height <= 0)
        return
      end
      delta_x = dest_x - src_x
      delta_y = dest_y - src_y
      if ((delta_x).equal?(0) && (delta_y).equal?(0))
        return
      end
      if (!(@data.attr_image).nil?)
        OS._cgcontext_save_gstate(@handle)
        OS._cgcontext_scale_ctm(@handle, 1, -1)
        OS._cgcontext_translate_ctm(@handle, 0, -(height + 2 * dest_y))
        rect = CGRect.new
        rect.attr_x = dest_x
        rect.attr_y = dest_y
        rect.attr_width = width
        rect.attr_height = height
        h = OS._cgimage_get_height(@data.attr_image.attr_handle)
        bpr = OS._cgimage_get_bytes_per_row(@data.attr_image.attr_handle)
        provider = OS._cgdata_provider_create_with_data(0, @data.attr_image.attr_data, bpr * h, 0)
        if (!(provider).equal?(0))
          colorspace = self.attr_device.attr_colorspace
          img = OS._cgimage_create(width, height, 8, 32, bpr, colorspace, OS.attr_k_cgimage_alpha_none_skip_first, provider, nil, true, 0)
          OS._cgdata_provider_release(provider)
          OS._cgcontext_draw_image(@handle, rect, img)
          OS._cgimage_release(img)
        end
        OS._cgcontext_restore_gstate(@handle)
        return
      end
      if (!(@data.attr_control).equal?(0))
        port = @data.attr_port
        window = OS._get_control_owner(@data.attr_control)
        if ((port).equal?(0))
          port = OS._get_window_port(window)
        end
        # Calculate src and dest rectangles/regions
        rect = Rect.new
        OS._get_control_bounds(@data.attr_control, rect)
        convert_x = 0
        convert_y = 0
        pt = CGPoint.new
        content_view = Array.typed(::Java::Int).new(1) { 0 }
        OS._hiview_find_by_id(OS._hiview_get_root(window), OS.k_hiview_window_content_id, content_view)
        OS._hiview_convert_point(pt, OS._hiview_get_superview(@data.attr_control), content_view[0])
        convert_x = rect.attr_left + RJava.cast_to_int(pt.attr_x)
        convert_y = rect.attr_top + RJava.cast_to_int(pt.attr_y)
        rect.attr_left += RJava.cast_to_int(pt.attr_x)
        rect.attr_top += RJava.cast_to_int(pt.attr_y)
        rect.attr_right += RJava.cast_to_int(pt.attr_x)
        rect.attr_bottom += RJava.cast_to_int(pt.attr_y)
        src_rect = Rect.new
        left = rect.attr_left + src_x
        top = rect.attr_top + src_y
        OS._set_rect(src_rect, RJava.cast_to_short(left), RJava.cast_to_short(top), RJava.cast_to_short((left + width)), RJava.cast_to_short((top + height)))
        src_rgn = OS._new_rgn
        OS._rect_rgn(src_rgn, src_rect)
        OS._sect_rect(rect, src_rect, src_rect)
        dest_rect = Rect.new
        OS._set_rect(dest_rect, src_rect.attr_left, src_rect.attr_top, src_rect.attr_right, src_rect.attr_bottom)
        OS._offset_rect(dest_rect, RJava.cast_to_short(delta_x), RJava.cast_to_short(delta_y))
        dest_rgn = OS._new_rgn
        OS._rect_rgn(dest_rgn, dest_rect)
        # Copy bits with appropriated clipping region
        if (!OS._empty_rect(src_rect))
          if ((@data.attr_visible_rgn).equal?(0) || OS._rect_in_rgn(src_rect, @data.attr_visible_rgn))
            clip_rgn = @data.attr_visible_rgn
            if (!(@data.attr_clip_rgn).equal?(0))
              clip_rgn = OS._new_rgn
              OS._sect_rgn(@data.attr_clip_rgn, @data.attr_visible_rgn, clip_rgn)
            end
            # Feature in the Macintosh.  ScrollRect() only copies bits
            # that are inside the specified rectangle.  This means that
            # it is not possible to copy non overlaping bits without
            # copying the bits in between the source and destination
            # rectangles.  The fix is to check if the source and
            # destination rectangles are disjoint and use CopyBits()
            # instead.
            if (!OS._empty_rgn(clip_rgn))
              disjoint = (dest_x + width < src_x) || (src_x + width < dest_x) || (dest_y + height < src_y) || (src_y + height < dest_y)
              if (!disjoint && ((delta_x).equal?(0) || (delta_y).equal?(0)))
                current_port = Array.typed(::Java::Int).new(1) { 0 }
                OS._get_port(current_port)
                OS._set_port(port)
                old_clip = OS._new_rgn
                OS._get_clip(old_clip)
                OS._set_clip(clip_rgn)
                OS._union_rect(src_rect, dest_rect, rect)
                OS._scroll_rect(rect, RJava.cast_to_short(delta_x), RJava.cast_to_short(delta_y), 0)
                OS._set_clip(old_clip)
                OS._dispose_rgn(old_clip)
                OS._set_port(current_port[0])
              else
                port_bit_map = OS._get_port_bit_map_for_copy_bits(port)
                OS._copy_bits(port_bit_map, port_bit_map, src_rect, dest_rect, RJava.cast_to_short(OS.attr_src_copy), clip_rgn)
                OS._qdflush_port_buffer(port, dest_rgn)
              end
            end
            if (!(clip_rgn).equal?(@data.attr_visible_rgn))
              OS._dispose_rgn(clip_rgn)
            end
          end
        end
        # Invalidate src and obscured areas
        if (paint)
          inval_rgn = OS._new_rgn
          OS._diff_rgn(src_rgn, @data.attr_visible_rgn, inval_rgn)
          OS._offset_rgn(inval_rgn, RJava.cast_to_short(delta_x), RJava.cast_to_short(delta_y))
          OS._diff_rgn(src_rgn, dest_rgn, src_rgn)
          OS._union_rgn(src_rgn, inval_rgn, inval_rgn)
          OS._sect_rgn(@data.attr_visible_rgn, inval_rgn, inval_rgn)
          OS._offset_rgn(inval_rgn, RJava.cast_to_short(-convert_x), RJava.cast_to_short(-convert_y))
          OS._hiview_set_needs_display_in_region(@data.attr_control, inval_rgn, true)
          OS._dispose_rgn(inval_rgn)
        end
        # Dispose src and dest regions
        OS._dispose_rgn(dest_rgn)
        OS._dispose_rgn(src_rgn)
      end
    end
    
    typesig { [] }
    def create_layout
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      OS._atsucreate_text_layout(buffer)
      if ((buffer[0]).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      @data.attr_layout = buffer[0]
      ptr1 = OS._new_ptr(4)
      buffer[0] = @handle
      OS.memmove(ptr1, buffer, 4)
      ptr2 = OS._new_ptr(4)
      buffer[0] = OS.attr_k_atsline_use_device_metrics
      OS.memmove(ptr2, buffer, 4)
      line_dir = OS.attr_k_atsuleft_to_right_base_direction
      if (!((@data.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        line_dir = OS.attr_k_atsuright_to_left_base_direction
      end
      ptr3 = OS._new_ptr(1)
      OS.memmove(ptr3, Array.typed(::Java::Byte).new([line_dir]), 1)
      tags = Array.typed(::Java::Int).new([OS.attr_k_atsucgcontext_tag, OS.attr_k_atsuline_layout_options_tag, OS.attr_k_atsuline_direction_tag])
      sizes = Array.typed(::Java::Int).new([4, 4, 1])
      values = Array.typed(::Java::Int).new([ptr1, ptr2, ptr3])
      OS._atsuset_layout_controls(@data.attr_layout, tags.attr_length, tags, sizes, values)
      OS._dispose_ptr(ptr1)
      OS._dispose_ptr(ptr2)
      OS._dispose_ptr(ptr3)
    end
    
    typesig { [] }
    def create_tabs
      tabs = ATSUTab.new
      tab_width = get_char_width(Character.new(?\s.ord)) * 8
      ptr = OS._new_ptr(ATSUTab.attr_sizeof * TAB_COUNT)
      i = 0
      offset = ptr
      while i < TAB_COUNT
        tabs.attr_tab_position += OS._long2fix(tab_width)
        OS.memmove(offset, tabs, ATSUTab.attr_sizeof)
        ((i += 1) - 1)
        offset += ATSUTab.attr_sizeof
      end
      @data.attr_tabs = ptr
    end
    
    typesig { [] }
    def destroy
      # Free resources
      clip_rgn = @data.attr_clip_rgn
      if (!(clip_rgn).equal?(0))
        OS._dispose_rgn(clip_rgn)
      end
      image = @data.attr_image
      if (!(image).nil?)
        image.attr_mem_gc = nil
        image.create_alpha
      end
      layout = @data.attr_layout
      if (!(layout).equal?(0))
        OS._atsudispose_text_layout(layout)
      end
      atsui_style = @data.attr_atsui_style
      if (!(atsui_style).equal?(0))
        OS._atsudispose_style(atsui_style)
      end
      string_ptr = @data.attr_string_ptr
      if (!(string_ptr).equal?(0))
        OS._dispose_ptr(string_ptr)
      end
      tabs = @data.attr_tabs
      if (!(tabs).equal?(0))
        OS._dispose_ptr(tabs)
      end
      fore_pattern = @data.attr_fore_pattern
      if (!(fore_pattern).equal?(0))
        OS._cgpattern_release(fore_pattern)
      end
      back_pattern = @data.attr_back_pattern
      if (!(back_pattern).equal?(0))
        OS._cgpattern_release(back_pattern)
      end
      # Dispose the GC
      if (!(@drawable).nil?)
        @drawable.internal_dispose__gc(@handle, @data)
      end
      @data.attr_clip_rgn = @data.attr_atsui_style = @data.attr_string_ptr = @data.attr_layout = @data.attr_tabs = @data.attr_fore_pattern = @data.attr_back_pattern = 0
      @drawable = nil
      @data.attr_image = nil
      @data.attr_string = nil
      @data = nil
      @handle = 0
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
      if (@data.attr_update_clip)
        set_cgclipping
      end
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
      OS._cgcontext_begin_path(@handle)
      OS._cgcontext_save_gstate(@handle)
      x_offset = @data.attr_draw_xoffset
      y_offset = @data.attr_draw_yoffset
      OS._cgcontext_translate_ctm(@handle, x + x_offset + width / 2, y + y_offset + height / 2)
      OS._cgcontext_scale_ctm(@handle, width / 2, height / 2)
      if (arc_angle < 0)
        OS._cgcontext_add_arc(@handle, 0, 0, 1, -(start_angle + arc_angle) * (Compatibility::PI).to_f / 180, -start_angle * (Compatibility::PI).to_f / 180, true)
      else
        OS._cgcontext_add_arc(@handle, 0, 0, 1, -start_angle * (Compatibility::PI).to_f / 180, -(start_angle + arc_angle) * (Compatibility::PI).to_f / 180, true)
      end
      OS._cgcontext_restore_gstate(@handle)
      OS._cgcontext_stroke_path(@handle)
      flush
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
      if (@data.attr_update_clip)
        set_cgclipping
      end
      metric = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_theme_metric(OS.attr_k_theme_metric_focus_rect_outset, metric)
      rect = CGRect.new
      rect.attr_x = x + metric[0]
      rect.attr_y = y + metric[0]
      rect.attr_width = width - metric[0] * 2
      rect.attr_height = height - metric[0] * 2
      OS._hitheme_draw_focus_rect(rect, true, @handle, OS.attr_k_hitheme_orientation_normal)
      flush
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
      if (@data.attr_update_clip)
        set_cgclipping
      end
      image_handle = src_image.attr_handle
      img_width = OS._cgimage_get_width(image_handle)
      img_height = OS._cgimage_get_height(image_handle)
      if (simple)
        src_width = dest_width = img_width
        src_height = dest_height = img_height
      else
        simple = (src_x).equal?(0) && (src_y).equal?(0) && (src_width).equal?(dest_width) && (dest_width).equal?(img_width) && (src_height).equal?(dest_height) && (dest_height).equal?(img_height)
        if (src_x + src_width > img_width || src_y + src_height > img_height)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
      end
      if (!(src_image.attr_mem_gc).nil?)
        src_image.create_alpha
      end
      OS._cgcontext_save_gstate(@handle)
      OS._cgcontext_scale_ctm(@handle, 1, -1)
      OS._cgcontext_translate_ctm(@handle, 0, -(dest_height + 2 * dest_y))
      rect = CGRect.new
      rect.attr_x = dest_x
      rect.attr_y = dest_y
      rect.attr_width = dest_width
      rect.attr_height = dest_height
      if (simple)
        OS._cgcontext_draw_image(@handle, rect, image_handle)
      else
        bpc = OS._cgimage_get_bits_per_component(image_handle)
        bpp = OS._cgimage_get_bits_per_pixel(image_handle)
        bpr = OS._cgimage_get_bytes_per_row(image_handle)
        colorspace = OS._cgimage_get_color_space(image_handle)
        alpha_info = OS._cgimage_get_alpha_info(image_handle)
        data = src_image.attr_data + (src_y * bpr) + src_x * 4
        provider = OS._cgdata_provider_create_with_data(0, data, src_height * bpr, 0)
        if (!(provider).equal?(0))
          sub_image = OS._cgimage_create(src_width, src_height, bpc, bpp, bpr, colorspace, alpha_info, provider, nil, true, 0)
          OS._cgdata_provider_release(provider)
          if (!(sub_image).equal?(0))
            OS._cgcontext_draw_image(@handle, rect, sub_image)
            OS._cgimage_release(sub_image)
          end
        end
      end
      OS._cgcontext_restore_gstate(@handle)
      flush
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
      if (@data.attr_update_clip)
        set_cgclipping
      end
      if ((x1).equal?(x2) && (y1).equal?(y2) && @data.attr_line_width <= 1)
        draw_point(x1, y1)
        return
      end
      OS._cgcontext_begin_path(@handle)
      x_offset = @data.attr_draw_xoffset
      y_offset = @data.attr_draw_yoffset
      OS._cgcontext_move_to_point(@handle, x1 + x_offset, y1 + y_offset)
      OS._cgcontext_add_line_to_point(@handle, x2 + x_offset, y2 + y_offset)
      OS._cgcontext_stroke_path(@handle)
      flush
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
      if (@data.attr_update_clip)
        set_cgclipping
      end
      if (width < 0)
        x = x + width
        width = -width
      end
      if (height < 0)
        y = y + height
        height = -height
      end
      OS._cgcontext_begin_path(@handle)
      OS._cgcontext_save_gstate(@handle)
      x_offset = @data.attr_draw_xoffset
      y_offset = @data.attr_draw_yoffset
      OS._cgcontext_translate_ctm(@handle, x + x_offset + width / 2, y + y_offset + height / 2)
      OS._cgcontext_scale_ctm(@handle, width / 2, height / 2)
      OS._cgcontext_move_to_point(@handle, 1, 0)
      OS._cgcontext_add_arc(@handle, 0, 0, 1, 0, ((2 * Compatibility::PI)).to_f, true)
      OS._cgcontext_restore_gstate(@handle)
      OS._cgcontext_stroke_path(@handle)
      flush
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
      check_gc(DRAW)
      if (@data.attr_update_clip)
        set_cgclipping
      end
      OS._cgcontext_begin_path(@handle)
      OS._cgcontext_save_gstate(@handle)
      x_offset = @data.attr_draw_xoffset
      y_offset = @data.attr_draw_yoffset
      OS._cgcontext_translate_ctm(@handle, x_offset, y_offset)
      OS._cgcontext_add_path(@handle, path.attr_handle)
      OS._cgcontext_restore_gstate(@handle)
      OS._cgcontext_stroke_path(@handle)
      flush
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
      check_gc(FOREGROUND_FILL)
      if (@data.attr_update_clip)
        set_cgclipping
      end
      rect = CGRect.new
      rect.attr_x = x
      rect.attr_y = y
      rect.attr_width = 1
      rect.attr_height = 1
      OS._cgcontext_fill_rect(@handle, rect)
      flush
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
      if (@data.attr_update_clip)
        set_cgclipping
      end
      x_offset = @data.attr_draw_xoffset
      y_offset = @data.attr_draw_yoffset
      points = Array.typed(::Java::Float).new((point_array.attr_length / 2) * 2) { 0.0 }
      i = 0
      while i < points.attr_length
        points[i] = point_array[i] + x_offset
        points[i + 1] = point_array[i + 1] + y_offset
        i += 2
      end
      OS._cgcontext_begin_path(@handle)
      OS._cgcontext_add_lines(@handle, points, points.attr_length / 2)
      OS._cgcontext_close_path(@handle)
      OS._cgcontext_stroke_path(@handle)
      flush
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
      if (@data.attr_update_clip)
        set_cgclipping
      end
      x_offset = @data.attr_draw_xoffset
      y_offset = @data.attr_draw_yoffset
      points = Array.typed(::Java::Float).new((point_array.attr_length / 2) * 2) { 0.0 }
      i = 0
      while i < points.attr_length
        points[i] = point_array[i] + x_offset
        points[i + 1] = point_array[i + 1] + y_offset
        i += 2
      end
      OS._cgcontext_begin_path(@handle)
      OS._cgcontext_add_lines(@handle, points, points.attr_length / 2)
      OS._cgcontext_stroke_path(@handle)
      flush
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
      if (@data.attr_update_clip)
        set_cgclipping
      end
      if (width < 0)
        x = x + width
        width = -width
      end
      if (height < 0)
        y = y + height
        height = -height
      end
      rect = CGRect.new
      x_offset = @data.attr_draw_xoffset
      y_offset = @data.attr_draw_yoffset
      rect.attr_x = x + x_offset
      rect.attr_y = y + y_offset
      rect.attr_width = width
      rect.attr_height = height
      OS._cgcontext_stroke_rect(@handle, rect)
      flush
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
      if (@data.attr_update_clip)
        set_cgclipping
      end
      if ((arc_width).equal?(0) || (arc_height).equal?(0))
        draw_rectangle(x, y, width, height)
        return
      end
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
      if (naw > nw)
        naw = nw
      end
      if (nah > nh)
        nah = nh
      end
      naw2 = naw / 2
      nah2 = nah / 2
      fw = nw / naw2
      fh = nh / nah2
      OS._cgcontext_begin_path(@handle)
      OS._cgcontext_save_gstate(@handle)
      x_offset = @data.attr_draw_xoffset
      y_offset = @data.attr_draw_yoffset
      OS._cgcontext_translate_ctm(@handle, nx + x_offset, ny + y_offset)
      OS._cgcontext_scale_ctm(@handle, naw2, nah2)
      OS._cgcontext_move_to_point(@handle, fw - 1, 0)
      OS._cgcontext_add_arc_to_point(@handle, 0, 0, 0, 1, 1)
      OS._cgcontext_add_arc_to_point(@handle, 0, fh, 1, fh, 1)
      OS._cgcontext_add_arc_to_point(@handle, fw, fh, fw, fh - 1, 1)
      OS._cgcontext_add_arc_to_point(@handle, fw, 0, fw - 1, 0, 1)
      OS._cgcontext_close_path(@handle)
      OS._cgcontext_restore_gstate(@handle)
      OS._cgcontext_stroke_path(@handle)
      flush
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
      check_gc(FONT | FOREGROUND_FILL)
      if (@data.attr_update_clip)
        set_cgclipping
      end
      length_ = string.length
      if ((length_).equal?(0))
        return
      end
      OS._cgcontext_save_gstate(@handle)
      OS._cgcontext_scale_ctm(@handle, 1, -1)
      mode = true
      case (@data.attr_text_antialias)
      when SWT::DEFAULT
        # Printer is off by default
        if ((@data.attr_window).equal?(0) && (@data.attr_control).equal?(0) && (@data.attr_image).nil?)
          mode = false
        end
      when SWT::OFF
        mode = false
      end
      OS._cgcontext_set_should_antialias(@handle, mode)
      length_ = set_string(string, flags)
      if (!((flags & SWT::DRAW_DELIMITER)).equal?(0))
        layout = @data.attr_layout
        break_count = Array.typed(::Java::Int).new(1) { 0 }
        OS._atsuget_soft_line_breaks(layout, 0, length_, 0, nil, break_count)
        breaks = Array.typed(::Java::Int).new(break_count[0] + 1) { 0 }
        OS._atsuget_soft_line_breaks(layout, 0, length_, break_count[0], breaks, break_count)
        breaks[break_count[0]] = length_
        i = 0
        start = 0
        while i < breaks.attr_length
          line_break = breaks[i]
          draw_text(x, y, start, line_break - start, flags)
          y += @data.attr_font_ascent + @data.attr_font_descent
          start = line_break
          ((i += 1) - 1)
        end
      else
        draw_text(x, y, 0, length_, flags)
      end
      OS._cgcontext_restore_gstate(@handle)
      flush
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def draw_text(x, y, start, length_, flags)
      layout = @data.attr_layout
      if (((flags & SWT::DRAW_TRANSPARENT)).equal?(0))
        trapezoid = ATSTrapezoid.new
        OS._atsuget_glyph_bounds(layout, 0, 0, start, length_, RJava.cast_to_short(OS.attr_k_atsuse_device_origins), 1, trapezoid, nil)
        width = OS._fix2long(trapezoid.attr_lower_right_x) - OS._fix2long(trapezoid.attr_lower_left_x)
        height = OS._fix2long(trapezoid.attr_lower_right_y) - OS._fix2long(trapezoid.attr_upper_right_y)
        rect = CGRect.new
        rect.attr_x = x
        rect.attr_y = -(y + height)
        rect.attr_width = width
        rect.attr_height = height
        OS._cgcontext_save_gstate(@handle)
        pattern = @data.attr_background_pattern
        if (!(pattern).nil?)
          colorspace = OS._cgcolor_space_create_pattern(@data.attr_device.attr_colorspace)
          OS._cgcontext_set_fill_color_space(@handle, colorspace)
          OS._cgcolor_space_release(colorspace)
          if ((@data.attr_back_pattern).equal?(0))
            @data.attr_back_pattern = pattern.create_pattern(@handle)
          end
          OS._cgcontext_set_fill_pattern(@handle, @data.attr_back_pattern, @data.attr_background)
        else
          OS._cgcontext_set_fill_color_space(@handle, @data.attr_device.attr_colorspace)
          OS._cgcontext_set_fill_color(@handle, @data.attr_background)
        end
        OS._cgcontext_fill_rect(@handle, rect)
        OS._cgcontext_restore_gstate(@handle)
      end
      OS._atsudraw_text(layout, start, length_, OS._long2fix(x), OS._long2fix(-(y + @data.attr_font_ascent)))
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
      if (@data.attr_update_clip)
        set_cgclipping
      end
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
      OS._cgcontext_begin_path(@handle)
      OS._cgcontext_save_gstate(@handle)
      OS._cgcontext_translate_ctm(@handle, x + width / 2, y + height / 2)
      OS._cgcontext_scale_ctm(@handle, width / 2, height / 2)
      OS._cgcontext_move_to_point(@handle, 0, 0)
      if (arc_angle < 0)
        OS._cgcontext_add_arc(@handle, 0, 0, 1, -(start_angle + arc_angle) * (Compatibility::PI).to_f / 180, -start_angle * (Compatibility::PI).to_f / 180, true)
      else
        OS._cgcontext_add_arc(@handle, 0, 0, 1, -start_angle * (Compatibility::PI).to_f / 180, -(start_angle + arc_angle) * (Compatibility::PI).to_f / 180, true)
      end
      OS._cgcontext_close_path(@handle)
      OS._cgcontext_restore_gstate(@handle)
      OS._cgcontext_fill_path(@handle)
      flush
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
      if (@data.attr_update_clip)
        set_cgclipping
      end
      if (width < 0)
        x = x + width
        width = -width
      end
      if (height < 0)
        y = y + height
        height = -height
      end
      OS._cgcontext_begin_path(@handle)
      OS._cgcontext_save_gstate(@handle)
      OS._cgcontext_translate_ctm(@handle, x + width / 2, y + height / 2)
      OS._cgcontext_scale_ctm(@handle, width / 2, height / 2)
      OS._cgcontext_move_to_point(@handle, 1, 0)
      OS._cgcontext_add_arc(@handle, 0, 0, 1, 0, ((Compatibility::PI * 2)).to_f, false)
      OS._cgcontext_close_path(@handle)
      OS._cgcontext_restore_gstate(@handle)
      OS._cgcontext_fill_path(@handle)
      flush
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
      check_gc(FILL)
      if (@data.attr_update_clip)
        set_cgclipping
      end
      OS._cgcontext_begin_path(@handle)
      OS._cgcontext_add_path(@handle, path.attr_handle)
      if ((@data.attr_fill_rule).equal?(SWT::FILL_WINDING))
        OS._cgcontext_fill_path(@handle)
      else
        OS._cgcontext_eofill_path(@handle)
      end
      flush
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
      if (@data.attr_update_clip)
        set_cgclipping
      end
      points = Array.typed(::Java::Float).new(point_array.attr_length) { 0.0 }
      i = 0
      while i < points.attr_length
        points[i] = point_array[i]
        ((i += 1) - 1)
      end
      OS._cgcontext_begin_path(@handle)
      OS._cgcontext_add_lines(@handle, points, points.attr_length / 2)
      OS._cgcontext_close_path(@handle)
      if ((@data.attr_fill_rule).equal?(SWT::FILL_WINDING))
        OS._cgcontext_fill_path(@handle)
      else
        OS._cgcontext_eofill_path(@handle)
      end
      flush
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
      if (@data.attr_update_clip)
        set_cgclipping
      end
      if (width < 0)
        x = x + width
        width = -width
      end
      if (height < 0)
        y = y + height
        height = -height
      end
      rect = CGRect.new
      rect.attr_x = x
      rect.attr_y = y
      rect.attr_width = width
      rect.attr_height = height
      pattern = @data.attr_background_pattern
      if (!(pattern).nil?)
        pattern.attr_draw_rect = rect
      end
      OS._cgcontext_fill_rect(@handle, rect)
      if (!(pattern).nil?)
        pattern.attr_draw_rect = nil
      end
      flush
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
      if (@data.attr_update_clip)
        set_cgclipping
      end
      if ((arc_width).equal?(0) || (arc_height).equal?(0))
        fill_rectangle(x, y, width, height)
        return
      end
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
      if (naw > nw)
        naw = nw
      end
      if (nah > nh)
        nah = nh
      end
      naw2 = naw / 2
      nah2 = nah / 2
      fw = nw / naw2
      fh = nh / nah2
      OS._cgcontext_begin_path(@handle)
      OS._cgcontext_save_gstate(@handle)
      OS._cgcontext_translate_ctm(@handle, nx, ny)
      OS._cgcontext_scale_ctm(@handle, naw2, nah2)
      OS._cgcontext_move_to_point(@handle, fw - 1, 0)
      OS._cgcontext_add_arc_to_point(@handle, 0, 0, 0, 1, 1)
      OS._cgcontext_add_arc_to_point(@handle, 0, fh, 1, fh, 1)
      OS._cgcontext_add_arc_to_point(@handle, fw, fh, fw, fh - 1, 1)
      OS._cgcontext_add_arc_to_point(@handle, fw, 0, fw - 1, 0, 1)
      OS._cgcontext_close_path(@handle)
      OS._cgcontext_restore_gstate(@handle)
      OS._cgcontext_fill_path(@handle)
      flush
    end
    
    typesig { [] }
    def flush
      if (!(@data.attr_control).equal?(0) && (@data.attr_paint_event).equal?(0))
        if (!(@data.attr_thread).equal?(JavaThread.current_thread))
          OS._cgcontext_flush(@handle)
        else
          OS._cgcontext_synchronize(@handle)
        end
      end
      if ((@data.attr_control).equal?(0) && !(@data.attr_window).equal?(0))
        OS._cgcontext_synchronize(@handle)
      end
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
      # NOT DONE
      return string_extent(String.new(Array.typed(::Java::Char).new([ch]))).attr_x
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
      return Color.carbon_new(@data.attr_device, @data.attr_background)
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
        SWT.error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return @data.attr_background_pattern
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
      return true
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
      return @data.attr_antialias
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
      # NOT DONE
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
      rect = nil
      x = 0
      y = 0
      width = 0
      height = 0
      if (!(@data.attr_control).equal?(0))
        if ((rect).nil?)
          rect = Rect.new
        end
        OS._get_control_bounds(@data.attr_control, rect)
        width = rect.attr_right - rect.attr_left
        height = rect.attr_bottom - rect.attr_top
      else
        if (!(@data.attr_image).nil?)
          image = @data.attr_image.attr_handle
          width = OS._cgimage_get_width(image)
          height = OS._cgimage_get_height(image)
        else
          if (!(@data.attr_port_rect).nil?)
            width = @data.attr_port_rect.attr_right - @data.attr_port_rect.attr_left
            height = @data.attr_port_rect.attr_bottom - @data.attr_port_rect.attr_top
          end
        end
      end
      # Intersect visible bounds with clipping in device space and then convert the user space
      clip_rgn = @data.attr_clip_rgn
      visible_rgn = @data.attr_visible_rgn
      if (!(clip_rgn).equal?(0) || !(visible_rgn).equal?(0) || !(@data.attr_inverse_transform).nil?)
        rgn = OS._new_rgn
        OS._set_rect_rgn(rgn, RJava.cast_to_short(x), RJava.cast_to_short(y), RJava.cast_to_short((x + width)), RJava.cast_to_short((y + height)))
        if (!(visible_rgn).equal?(0))
          OS._sect_rgn(rgn, visible_rgn, rgn)
        end
        # Intersect visible bounds with clipping
        if (!(clip_rgn).equal?(0))
          # Convert clipping to device space if needed
          if (!(@data.attr_clipping_transform).nil?)
            clip_rgn = convert_rgn(clip_rgn, @data.attr_clipping_transform)
            OS._sect_rgn(rgn, clip_rgn, rgn)
            OS._dispose_rgn(clip_rgn)
          else
            OS._sect_rgn(rgn, clip_rgn, rgn)
          end
        end
        # Convert to user space
        if (!(@data.attr_inverse_transform).nil?)
          clip_rgn = convert_rgn(rgn, @data.attr_inverse_transform)
          OS._dispose_rgn(rgn)
          rgn = clip_rgn
        end
        if ((rect).nil?)
          rect = Rect.new
        end
        OS._get_region_bounds(rgn, rect)
        OS._dispose_rgn(rgn)
        x = rect.attr_left
        y = rect.attr_top
        width = rect.attr_right - rect.attr_left
        height = rect.attr_bottom - rect.attr_top
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
      bounds = nil
      clipping = region.attr_handle
      if ((@data.attr_clip_rgn).equal?(0))
        width = 0
        height = 0
        if (!(@data.attr_control).equal?(0))
          if ((bounds).nil?)
            bounds = Rect.new
          end
          OS._get_control_bounds(@data.attr_control, bounds)
          width = bounds.attr_right - bounds.attr_left
          height = bounds.attr_bottom - bounds.attr_top
        else
          if (!(@data.attr_image).nil?)
            image = @data.attr_image.attr_handle
            width = OS._cgimage_get_width(image)
            height = OS._cgimage_get_height(image)
          else
            if (!(@data.attr_port_rect).nil?)
              width = @data.attr_port_rect.attr_right - @data.attr_port_rect.attr_left
              height = @data.attr_port_rect.attr_bottom - @data.attr_port_rect.attr_top
            end
          end
        end
        OS._set_rect_rgn(clipping, RJava.cast_to_short(0), RJava.cast_to_short(0), RJava.cast_to_short(width), RJava.cast_to_short(height))
      else
        # Convert clipping to device space if needed
        if (!(@data.attr_clipping_transform).nil?)
          rgn = convert_rgn(@data.attr_clip_rgn, @data.attr_clipping_transform)
          OS._copy_rgn(rgn, clipping)
          OS._dispose_rgn(rgn)
        else
          OS._copy_rgn(@data.attr_clip_rgn, clipping)
        end
      end
      if (!(@data.attr_paint_event).equal?(0) && !(@data.attr_visible_rgn).equal?(0))
        if ((bounds).nil?)
          bounds = Rect.new
        end
        OS._get_control_bounds(@data.attr_control, bounds)
        if ((@data.attr_paint_event).equal?(0))
          OS._offset_rgn(@data.attr_visible_rgn, RJava.cast_to_short(-bounds.attr_left), RJava.cast_to_short(-bounds.attr_top))
        end
        OS._sect_rgn(@data.attr_visible_rgn, clipping, clipping)
        if ((@data.attr_paint_event).equal?(0))
          OS._offset_rgn(@data.attr_visible_rgn, bounds.attr_left, bounds.attr_top)
        end
      end
      # Convert to user space
      if (!(@data.attr_inverse_transform).nil?)
        rgn = convert_rgn(clipping, @data.attr_inverse_transform)
        OS._copy_rgn(rgn, clipping)
        OS._dispose_rgn(rgn)
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
      return @data.attr_fill_rule
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
      check_gc(FONT)
      font = @data.attr_font
      metrics = ATSFontMetrics.new
      OS._atsfont_get_vertical_metrics(font.attr_handle, OS.attr_k_atsoption_flags_default, metrics)
      OS._atsfont_get_horizontal_metrics(font.attr_handle, OS.attr_k_atsoption_flags_default, metrics)
      ascent = RJava.cast_to_int((0.5 + metrics.attr_ascent * font.attr_size))
      descent = RJava.cast_to_int((0.5 + (-metrics.attr_descent + metrics.attr_leading) * font.attr_size))
      s = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
      average_char_width = string_extent(s).attr_x / s.length
      return FontMetrics.carbon_new(ascent, descent, average_char_width, 0, ascent + descent)
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
      return Color.carbon_new(@data.attr_device, @data.attr_foreground)
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
        SWT.error(SWT::ERROR_WIDGET_DISPOSED)
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
        SWT.error(SWT::ERROR_WIDGET_DISPOSED)
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
      interpolation = OS._cgcontext_get_interpolation_quality(@handle)
      case (interpolation)
      when OS.attr_k_cginterpolation_default
        return SWT::DEFAULT
      when OS.attr_k_cginterpolation_none
        return SWT::NONE
      when OS.attr_k_cginterpolation_low
        return SWT::LOW
      when OS.attr_k_cginterpolation_high
        return SWT::HIGH
      end
      return SWT::DEFAULT
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
        ((i += 1) - 1)
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
      return @data.attr_text_antialias
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
      cmt = @data.attr_transform
      if (!(cmt).nil?)
        transform.set_elements(cmt[0], cmt[1], cmt[2], cmt[3], cmt[4], cmt[5])
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
      return @handle
    end
    
    typesig { [Drawable, SwtGCData, ::Java::Int] }
    def init(drawable, data, context)
      if (!(data.attr_foreground).nil?)
        data.attr_state &= ~(FOREGROUND | FOREGROUND_FILL)
      end
      if (!(data.attr_background).nil?)
        data.attr_state &= ~BACKGROUND
      end
      if (!(data.attr_font).nil?)
        data.attr_state &= ~FONT
      end
      data.attr_state &= ~DRAW_OFFSET
      image = data.attr_image
      if (!(image).nil?)
        image.attr_mem_gc = self
      end
      @drawable = drawable
      @data = data
      @handle = context
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
    
    typesig { [Array.typed(::Java::Float)] }
    def is_identity(transform)
      return (transform[0]).equal?(1) && (transform[1]).equal?(0) && (transform[2]).equal?(0) && (transform[3]).equal?(1) && (transform[4]).equal?(0) && (transform[5]).equal?(0)
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
      @data.attr_alpha = alpha & 0xff
      OS._cgcontext_set_alpha(@handle, @data.attr_alpha / 255)
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
      mode = true
      case (antialias)
      when SWT::DEFAULT
        # Printer is off by default
        if ((@data.attr_window).equal?(0) && (@data.attr_control).equal?(0) && (@data.attr_image).nil?)
          mode = false
        end
      when SWT::OFF
        mode = false
      when SWT::ON
        mode = true
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @data.attr_antialias = antialias
      OS._cgcontext_set_should_antialias(@handle, mode)
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
      if (!(@data.attr_back_pattern).equal?(0))
        OS._cgpattern_release(@data.attr_back_pattern)
      end
      @data.attr_back_pattern = 0
      @data.attr_background_pattern = nil
      @data.attr_state &= ~BACKGROUND
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
      if ((@data.attr_background_pattern).equal?(pattern))
        return
      end
      if (!(@data.attr_back_pattern).equal?(0))
        OS._cgpattern_release(@data.attr_back_pattern)
      end
      @data.attr_back_pattern = 0
      @data.attr_background_pattern = pattern
      @data.attr_state &= ~BACKGROUND
    end
    
    typesig { [::Java::Int] }
    def set_clipping(clip_rgn)
      if ((clip_rgn).equal?(0))
        if (!(@data.attr_clip_rgn).equal?(0))
          OS._dispose_rgn(@data.attr_clip_rgn)
          @data.attr_clip_rgn = 0
        end
        @data.attr_clipping_transform = nil
      else
        if ((@data.attr_clip_rgn).equal?(0))
          @data.attr_clip_rgn = OS._new_rgn
        end
        OS._copy_rgn(clip_rgn, @data.attr_clip_rgn)
        if (!(@data.attr_transform).nil?)
          if ((@data.attr_clipping_transform).nil?)
            @data.attr_clipping_transform = Array.typed(::Java::Float).new(6) { 0.0 }
          end
          System.arraycopy(@data.attr_transform, 0, @data.attr_clipping_transform, 0, @data.attr_transform.attr_length)
        end
      end
      @data.attr_update_clip = true
      set_cgclipping
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
      clip_rgn = OS._new_rgn
      OS._set_rect_rgn(clip_rgn, RJava.cast_to_short(x), RJava.cast_to_short(y), RJava.cast_to_short((x + width)), RJava.cast_to_short((y + height)))
      set_clipping(clip_rgn)
      OS._dispose_rgn(clip_rgn)
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
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      set_clipping(0)
      if (!(path).nil?)
        OS._cgcontext_add_path(@handle, path.attr_handle)
        OS._cgcontext_eoclip(@handle)
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
    
    typesig { [] }
    def set_cgclipping
      @data.attr_update_clip = false
      if ((@data.attr_control).equal?(0))
        if (!(@data.attr_window).equal?(0) && !OS._is_window_visible(@data.attr_window))
          OS._show_window(@data.attr_window)
        end
        OS._cgcontext_scale_ctm(@handle, 1, -1)
        if (!(@data.attr_clip_rgn).equal?(0))
          OS._clip_cgcontext_to_region(@handle, Rect.new, @data.attr_clip_rgn)
        else
          rgn = OS._new_rgn
          OS._set_rect_rgn(rgn, RJava.cast_to_short(-32768), RJava.cast_to_short(-32768), RJava.cast_to_short(32767), RJava.cast_to_short(32767))
          OS._clip_cgcontext_to_region(@handle, Rect.new, rgn)
          OS._dispose_rgn(rgn)
        end
        OS._cgcontext_scale_ctm(@handle, 1, -1)
        return
      end
      port = @data.attr_port
      window = OS._get_control_owner(@data.attr_control)
      if ((port).equal?(0))
        port = OS._get_window_port(window)
      end
      port_rect = @data.attr_port_rect
      rect = @data.attr_control_rect
      OS._cgcontext_translate_ctm(@handle, -rect.attr_left, (port_rect.attr_bottom - port_rect.attr_top) - rect.attr_top)
      OS._cgcontext_scale_ctm(@handle, 1, -1)
      OS._get_port_bounds(port, port_rect)
      OS._get_control_bounds(@data.attr_control, rect)
      is_paint = !(@data.attr_paint_event).equal?(0)
      if (is_paint)
        rect.attr_right += rect.attr_left
        rect.attr_bottom += rect.attr_top
        rect.attr_left = rect.attr_top = 0
      else
        content_view = Array.typed(::Java::Int).new(1) { 0 }
        OS._hiview_find_by_id(OS._hiview_get_root(window), OS.k_hiview_window_content_id, content_view)
        pt = CGPoint.new
        OS._hiview_convert_point(pt, OS._hiview_get_superview(@data.attr_control), content_view[0])
        rect.attr_left += RJava.cast_to_int(pt.attr_x)
        rect.attr_top += RJava.cast_to_int(pt.attr_y)
        rect.attr_right += RJava.cast_to_int(pt.attr_x)
        rect.attr_bottom += RJava.cast_to_int(pt.attr_y)
      end
      if (!(@data.attr_clip_rgn).equal?(0))
        rgn = OS._new_rgn
        OS._copy_rgn(@data.attr_clip_rgn, rgn)
        OS._offset_rgn(rgn, rect.attr_left, rect.attr_top)
        OS._sect_rgn(@data.attr_visible_rgn, rgn, rgn)
        OS._clip_cgcontext_to_region(@handle, port_rect, rgn)
        OS._dispose_rgn(rgn)
      else
        OS._clip_cgcontext_to_region(@handle, port_rect, @data.attr_visible_rgn)
      end
      OS._cgcontext_scale_ctm(@handle, 1, -1)
      OS._cgcontext_translate_ctm(@handle, rect.attr_left, -(port_rect.attr_bottom - port_rect.attr_top) + rect.attr_top)
    end
    
    typesig { [] }
    def set_cgfont
      tabs = @data.attr_tabs
      if (!(tabs).equal?(0))
        OS._dispose_ptr(tabs)
      end
      @data.attr_tabs = 0
      font = @data.attr_font
      metrics = ATSFontMetrics.new
      OS._atsfont_get_vertical_metrics(font.attr_handle, OS.attr_k_atsoption_flags_default, metrics)
      OS._atsfont_get_horizontal_metrics(font.attr_handle, OS.attr_k_atsoption_flags_default, metrics)
      @data.attr_font_ascent = RJava.cast_to_int((0.5 + metrics.attr_ascent * font.attr_size))
      @data.attr_font_descent = RJava.cast_to_int((0.5 + (-metrics.attr_descent + metrics.attr_leading) * font.attr_size))
      if ((font.attr_atsui_style).equal?(0))
        if (!(@data.attr_atsui_style).equal?(0))
          OS._atsudispose_style(@data.attr_atsui_style)
        end
        @data.attr_atsui_style = font.create_style
      end
      @data.attr_string = nil
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
      case (rule)
      when SWT::FILL_WINDING, SWT::FILL_EVEN_ODD
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @data.attr_fill_rule = rule
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
      if (!(@data.attr_fore_pattern).equal?(0))
        OS._cgpattern_release(@data.attr_fore_pattern)
      end
      @data.attr_fore_pattern = 0
      @data.attr_foreground_pattern = nil
      @data.attr_state &= ~(FOREGROUND | FOREGROUND_FILL)
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
      if ((@data.attr_foreground_pattern).equal?(pattern))
        return
      end
      if (!(@data.attr_fore_pattern).equal?(0))
        OS._cgpattern_release(@data.attr_fore_pattern)
      end
      @data.attr_fore_pattern = 0
      @data.attr_foreground_pattern = pattern
      @data.attr_state &= ~(FOREGROUND | FOREGROUND_FILL)
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
      quality = 0
      case (interpolation)
      when SWT::DEFAULT
        quality = OS.attr_k_cginterpolation_default
      when SWT::NONE
        quality = OS.attr_k_cginterpolation_none
      when SWT::LOW
        quality = OS.attr_k_cginterpolation_low
      when SWT::HIGH
        quality = OS.attr_k_cginterpolation_high
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      OS._cgcontext_set_interpolation_quality(@handle, quality)
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
          ((i += 1) - 1)
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
          ((i += 1) - 1)
        end
        if (!changed)
          return
        end
        @data.attr_line_dashes = Array.typed(::Java::Float).new(dashes.attr_length) { 0.0 }
        i_ = 0
        while i_ < dashes.attr_length
          @data.attr_line_dashes[i_] = dashes[i_]
          ((i_ += 1) - 1)
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
        return @data.attr_string_length
      end
      layout = @data.attr_layout
      length_ = string.length
      chars = CharArray.new(length_)
      string.get_chars(0, length_, chars, 0)
      break_count = 0
      breaks = nil
      if (!((flags & (SWT::DRAW_MNEMONIC | SWT::DRAW_DELIMITER))).equal?(0))
        i = 0
        j = 0
        while (i < chars.attr_length)
          c = chars[((j += 1) - 1)] = chars[((i += 1) - 1)]
          case (c)
          when Character.new(?&.ord)
            if (!((flags & SWT::DRAW_MNEMONIC)).equal?(0))
              if ((i).equal?(chars.attr_length))
                next
              end
              if ((chars[i]).equal?(Character.new(?&.ord)))
                ((i += 1) - 1)
                next
              end
              ((j -= 1) + 1)
            end
          when Character.new(?\r.ord), Character.new(?\n.ord)
            if (!((flags & SWT::DRAW_DELIMITER)).equal?(0))
              if ((c).equal?(Character.new(?\r.ord)) && !(i).equal?(chars.attr_length) && (chars[i]).equal?(Character.new(?\n.ord)))
                ((i += 1) - 1)
              end
              ((j -= 1) + 1)
              if ((breaks).nil?)
                breaks = Array.typed(::Java::Int).new(4) { 0 }
              else
                if ((break_count).equal?(breaks.attr_length))
                  new_breaks = Array.typed(::Java::Int).new(breaks.attr_length + 4) { 0 }
                  System.arraycopy(breaks, 0, new_breaks, 0, breaks.attr_length)
                  breaks = new_breaks
                end
              end
              breaks[((break_count += 1) - 1)] = j
            end
          end
        end
        length_ = j
      end
      if (!((flags & SWT::DRAW_TAB)).equal?(0))
        if ((@data.attr_tabs).equal?(0))
          create_tabs
        end
        OS._atsuset_tab_array(layout, @data.attr_tabs, TAB_COUNT)
      else
        OS._atsuset_tab_array(layout, 0, 0)
      end
      ptr = OS._new_ptr(length_ * 2)
      OS.memmove(ptr, chars, length_ * 2)
      OS._atsuset_text_pointer_location(layout, ptr, 0, length_, length_)
      if (!((flags & SWT::DRAW_DELIMITER)).equal?(0) && !(breaks).nil?)
        i = 0
        while i < break_count
          OS._atsuset_soft_line_break(layout, breaks[i])
          ((i += 1) - 1)
        end
      end
      font = @data.attr_font
      atsui_style = !(font.attr_atsui_style).equal?(0) ? font.attr_atsui_style : @data.attr_atsui_style
      OS._atsuset_run_style(layout, atsui_style, 0, length_)
      OS._atsuset_transient_font_matching(layout, true)
      if (!(@data.attr_string_ptr).equal?(0))
        OS._dispose_ptr(@data.attr_string_ptr)
      end
      @data.attr_string_ptr = ptr
      @data.attr_string = string
      @data.attr_string_length = length_
      @data.attr_string_width = @data.attr_string_height = -1
      @data.attr_draw_flags = flags
      return length_
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
      @data.attr_xor_mode = xor
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
      case (antialias)
      when SWT::DEFAULT, SWT::OFF, SWT::ON
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @data.attr_text_antialias = antialias
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
      if (!(@data.attr_inverse_transform).nil?)
        OS._cgcontext_concat_ctm(@handle, @data.attr_inverse_transform)
      end
      if (!(transform).nil?)
        OS._cgcontext_concat_ctm(@handle, transform.attr_handle)
        if ((@data.attr_transform).nil?)
          @data.attr_transform = Array.typed(::Java::Float).new(6) { 0.0 }
        end
        if ((@data.attr_inverse_transform).nil?)
          @data.attr_inverse_transform = Array.typed(::Java::Float).new(6) { 0.0 }
        end
        System.arraycopy(transform.attr_handle, 0, @data.attr_transform, 0, @data.attr_transform.attr_length)
        System.arraycopy(transform.attr_handle, 0, @data.attr_inverse_transform, 0, @data.attr_inverse_transform.attr_length)
        OS._cgaffine_transform_invert(@data.attr_inverse_transform, @data.attr_inverse_transform)
      else
        @data.attr_transform = @data.attr_inverse_transform = nil
      end
      if (!(@data.attr_fore_pattern).equal?(0))
        OS._cgpattern_release(@data.attr_fore_pattern)
        @data.attr_fore_pattern = 0
        @data.attr_state &= ~(FOREGROUND | FOREGROUND_FILL)
      end
      if (!(@data.attr_back_pattern).equal?(0))
        OS._cgpattern_release(@data.attr_back_pattern)
        @data.attr_back_pattern = 0
        @data.attr_state &= ~BACKGROUND
      end
      @data.attr_state &= ~DRAW_OFFSET
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
      check_gc(FONT)
      length_ = set_string(string, flags)
      if (!(@data.attr_string_width).equal?(-1))
        return Point.new(@data.attr_string_width, @data.attr_string_height)
      end
      width = 0
      height = 0
      if ((length_).equal?(0))
        height = @data.attr_font_ascent + @data.attr_font_descent
      else
        trapezoid = ATSTrapezoid.new
        if (!((flags & SWT::DRAW_DELIMITER)).equal?(0))
          height = 0
          layout = @data.attr_layout
          break_count = Array.typed(::Java::Int).new(1) { 0 }
          OS._atsuget_soft_line_breaks(layout, 0, length_, 0, nil, break_count)
          breaks = Array.typed(::Java::Int).new(break_count[0] + 1) { 0 }
          OS._atsuget_soft_line_breaks(layout, 0, length_, break_count[0], breaks, break_count)
          breaks[break_count[0]] = length_
          i = 0
          start = 0
          while i < breaks.attr_length
            line_break = breaks[i]
            OS._atsuget_glyph_bounds(layout, 0, 0, start, line_break - start, RJava.cast_to_short(OS.attr_k_atsuse_device_origins), 1, trapezoid, nil)
            width = Math.max(width, OS._fix2long(trapezoid.attr_lower_right_x) - OS._fix2long(trapezoid.attr_lower_left_x))
            height += OS._fix2long(trapezoid.attr_lower_right_y) - OS._fix2long(trapezoid.attr_upper_right_y)
            start = line_break
            ((i += 1) - 1)
          end
        else
          OS._atsuget_glyph_bounds(@data.attr_layout, 0, 0, 0, length_, RJava.cast_to_short(OS.attr_k_atsuse_device_origins), 1, trapezoid, nil)
          width = OS._fix2long(trapezoid.attr_lower_right_x) - OS._fix2long(trapezoid.attr_lower_left_x)
          height = OS._fix2long(trapezoid.attr_lower_right_y) - OS._fix2long(trapezoid.attr_upper_right_y)
        end
      end
      return Point.new(@data.attr_string_width = width, @data.attr_string_height = height)
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
