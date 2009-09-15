require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Graphics
  module GCImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
  # The result of drawing on an image that was created with an indexed
  # palette using a color that is not in the palette is platform specific.
  # Some platforms will match to the nearest color while other will draw
  # the color itself. This happens because the allocated image might use
  # a direct palette on platforms that do not support indexed palette.
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
    
    attr_accessor :element
    alias_method :attr_element, :element
    undef_method :element
    alias_method :attr_element=, :element=
    undef_method :element=
    
    attr_accessor :count
    alias_method :attr_count, :count
    undef_method :count
    alias_method :attr_count=, :count=
    undef_method :count=
    
    attr_accessor :type_count
    alias_method :attr_type_count, :type_count
    undef_method :type_count
    alias_method :attr_type_count=, :type_count=
    undef_method :type_count=
    
    attr_accessor :types
    alias_method :attr_types, :types
    undef_method :types
    alias_method :attr_types=, :types=
    undef_method :types=
    
    # double
    attr_accessor :points
    alias_method :attr_points, :points
    undef_method :points
    alias_method :attr_points=, :points=
    undef_method :points=
    
    # double
    attr_accessor :point
    alias_method :attr_point, :point
    undef_method :point
    alias_method :attr_point=, :point=
    undef_method :point=
    
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
      
      const_set_lazy(:CLIPPING) { 1 << 10 }
      const_attr_reader  :CLIPPING
      
      const_set_lazy(:TRANSFORM) { 1 << 11 }
      const_attr_reader  :TRANSFORM
      
      const_set_lazy(:VISIBLE_REGION) { 1 << 12 }
      const_attr_reader  :VISIBLE_REGION
      
      const_set_lazy(:DRAW) { CLIPPING | TRANSFORM | FOREGROUND | LINE_WIDTH | LINE_STYLE | LINE_CAP | LINE_JOIN | LINE_MITERLIMIT | DRAW_OFFSET }
      const_attr_reader  :DRAW
      
      const_set_lazy(:FILL) { CLIPPING | TRANSFORM | BACKGROUND }
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
      @handle = nil
      @drawable = nil
      @data = nil
      @element = nil
      @count = 0
      @type_count = 0
      @types = nil
      @points = nil
      @point = nil
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
      @handle = nil
      @drawable = nil
      @data = nil
      @element = nil
      @count = 0
      @type_count = 0
      @types = nil
      @points = nil
      @point = nil
      super()
      if ((drawable).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        data = SwtGCData.new
        data.attr_style = check_style(style)
        # long
        context_id = drawable.internal_new__gc(data)
        device = data.attr_device
        if ((device).nil?)
          device = Device.get_device
        end
        if ((device).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        self.attr_device = data.attr_device = device
        init(drawable, data, context_id)
        init
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      def cocoa_new(drawable, data)
        gc = SwtGC.new
        # long
        context = drawable.internal_new__gc(data)
        gc.attr_device = data.attr_device
        gc.init(drawable, data, context)
        return gc
      end
    }
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def applier_func(info, element_ptr)
      OS.memmove___org_eclipse_swt_graphics_gc_1(@element, element_ptr, CGPathElement.attr_sizeof)
      type = 0
      length = 1
      case (@element.attr_type)
      when OS.attr_k_cgpath_element_move_to_point
        type = SWT::PATH_MOVE_TO
      when OS.attr_k_cgpath_element_add_line_to_point
        type = SWT::PATH_LINE_TO
      when OS.attr_k_cgpath_element_add_quad_curve_to_point
        type = SWT::PATH_QUAD_TO
        length = 2
      when OS.attr_k_cgpath_element_add_curve_to_point
        type = SWT::PATH_CUBIC_TO
        length = 3
      when OS.attr_k_cgpath_element_close_subpath
        type = SWT::PATH_CLOSE
        length = 0
      end
      if (!(@types).nil?)
        @types[@type_count] = type
        if (length > 0)
          OS.memmove___org_eclipse_swt_graphics_gc_3(@point, @element.attr_points, length * CGPoint.attr_sizeof)
          System.arraycopy(@point, 0, @points, @count, length * 2)
        end
      end
      @type_count += 1
      @count += length * 2
      return 0
    end
    
    typesig { [::Java::Int] }
    def check_gc(mask)
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      if (!(@data.attr_flipped_context).nil? && !@handle.is_equal(NSGraphicsContext.current_context))
        @data.attr_restore_context = true
        NSGraphicsContext.static_save_graphics_state
        NSGraphicsContext.set_current_context(@handle)
      end
      if (!((mask & (CLIPPING | TRANSFORM))).equal?(0))
        view = @data.attr_view
        if (((@data.attr_state & CLIPPING)).equal?(0) || ((@data.attr_state & TRANSFORM)).equal?(0) || ((@data.attr_state & VISIBLE_REGION)).equal?(0))
          antialias = @handle.should_antialias
          @handle.restore_graphics_state
          @handle.save_graphics_state
          @handle.set_should_antialias(antialias)
          if (!(view).nil? && ((@data.attr_paint_rect).nil? || !view.is_flipped))
            transform_ = NSAffineTransform.transform
            rect = view.convert_rect_to_view_(view.bounds, nil)
            if ((@data.attr_paint_rect).nil?)
              transform_.translate_xby(rect.attr_x, rect.attr_y + rect.attr_height)
            else
              transform_.translate_xby(0, rect.attr_height)
            end
            transform_.scale_xby(1, -1)
            transform_.concat
            if (!(@data.attr_visible_rgn).equal?(0))
              if ((@data.attr_visible_path).nil? || ((@data.attr_state & VISIBLE_REGION)).equal?(0))
                if (!(@data.attr_visible_path).nil?)
                  @data.attr_visible_path.release
                end
                @data.attr_visible_path = Region.cocoa_new(self.attr_device, @data.attr_visible_rgn).get_path
              end
              @data.attr_visible_path.add_clip
              @data.attr_state |= VISIBLE_REGION
            end
          end
          if (!(@data.attr_clip_path).nil?)
            @data.attr_clip_path.add_clip
          end
          if (!(@data.attr_transform).nil?)
            @data.attr_transform.concat
          end
          mask &= ~(TRANSFORM | CLIPPING)
          @data.attr_state |= TRANSFORM | CLIPPING
          @data.attr_state &= ~(BACKGROUND | FOREGROUND)
        end
      end
      state = @data.attr_state
      if (((state & mask)).equal?(mask))
        return pool
      end
      state = (state ^ mask) & mask
      @data.attr_state |= mask
      if (!((state & FOREGROUND)).equal?(0))
        pattern = @data.attr_foreground_pattern
        if (!(pattern).nil?)
          if (!(pattern.attr_color).nil?)
            pattern.attr_color.set_stroke
          end
        else
          # double
          color = @data.attr_foreground
          if (!(@data.attr_fg).nil?)
            @data.attr_fg.release
          end
          fg = @data.attr_fg = NSColor.color_with_device_red(color[0], color[1], color[2], @data.attr_alpha / 255)
          fg.retain
          fg.set_stroke
        end
      end
      if (!((state & FOREGROUND_FILL)).equal?(0))
        pattern = @data.attr_foreground_pattern
        if (!(pattern).nil?)
          if (!(pattern.attr_color).nil?)
            pattern.attr_color.set_fill
          end
        else
          # double
          color = @data.attr_foreground
          if (!(@data.attr_fg).nil?)
            @data.attr_fg.release
          end
          fg = @data.attr_fg = NSColor.color_with_device_red(color[0], color[1], color[2], @data.attr_alpha / 255)
          fg.retain
          fg.set_fill
        end
        @data.attr_state &= ~BACKGROUND
      end
      if (!((state & BACKGROUND)).equal?(0))
        pattern = @data.attr_background_pattern
        if (!(pattern).nil?)
          if (!(pattern.attr_color).nil?)
            pattern.attr_color.set_fill
          end
        else
          # double
          color = @data.attr_background
          if (!(@data.attr_bg).nil?)
            @data.attr_bg.release
          end
          bg = @data.attr_bg = NSColor.color_with_device_red(color[0], color[1], color[2], @data.attr_alpha / 255)
          bg.retain
          bg.set_fill
        end
        @data.attr_state &= ~FOREGROUND_FILL
      end
      path = @data.attr_path
      if (!((state & LINE_WIDTH)).equal?(0))
        path.set_line_width((@data.attr_line_width).equal?(0) ? 1 : @data.attr_line_width)
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
          # double
          # double
          lengths = Array.typed(::Java::Float).new(dashes.attr_length) { 0.0 }
          i = 0
          while i < lengths.attr_length
            lengths[i] = (width).equal?(0) || (@data.attr_line_style).equal?(SWT::LINE_CUSTOM) ? dashes[i] : dashes[i] * width
            i += 1
          end
          path.set_line_dash(lengths, lengths.attr_length, @data.attr_line_dashes_offset)
        else
          path.set_line_dash(nil, 0, 0)
        end
      end
      if (!((state & LINE_MITERLIMIT)).equal?(0))
        path.set_miter_limit(@data.attr_line_miter_limit)
      end
      if (!((state & LINE_JOIN)).equal?(0))
        join_style = 0
        case (@data.attr_line_join)
        when SWT::JOIN_MITER
          join_style = OS::NSMiterLineJoinStyle
        when SWT::JOIN_ROUND
          join_style = OS::NSRoundLineJoinStyle
        when SWT::JOIN_BEVEL
          join_style = OS::NSBevelLineJoinStyle
        end
        path.set_line_join_style(join_style)
      end
      if (!((state & LINE_CAP)).equal?(0))
        cap_style = 0
        case (@data.attr_line_cap)
        when SWT::CAP_ROUND
          cap_style = OS::NSRoundLineCapStyle
        when SWT::CAP_FLAT
          cap_style = OS::NSButtLineCapStyle
        when SWT::CAP_SQUARE
          cap_style = OS::NSSquareLineCapStyle
        end
        path.set_line_cap_style(cap_style)
      end
      if (!((state & DRAW_OFFSET)).equal?(0))
        @data.attr_draw_xoffset = @data.attr_draw_yoffset = 0
        size = NSSize.new
        size.attr_width = size.attr_height = 1
        if (!(@data.attr_transform).nil?)
          size = @data.attr_transform.transform_size(size)
        end
        # double
        scaling = size.attr_width
        if (scaling < 0)
          scaling = -scaling
        end
        # double
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
      return pool
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((image).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (!(image.attr_type).equal?(SWT::BITMAP) || image.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      pool = check_gc(TRANSFORM | CLIPPING)
      begin
        if (!(@data.attr_image).nil?)
          src_x = x
          src_y = y
          dest_x = 0
          dest_y = 0
          src_size = @data.attr_image.attr_handle.size
          img_height = RJava.cast_to_int(src_size.attr_height)
          dest_width = RJava.cast_to_int(src_size.attr_width) - x
          dest_height = RJava.cast_to_int(src_size.attr_height) - y
          src_width = dest_width
          src_height = dest_height
          context = NSGraphicsContext.graphics_context_with_bitmap_image_rep(image.get_representation)
          NSGraphicsContext.static_save_graphics_state
          NSGraphicsContext.set_current_context(context)
          transform_ = NSAffineTransform.transform
          size_ = image.attr_handle.size
          transform_.translate_xby(0, size_.attr_height - (dest_height + 2 * dest_y))
          transform_.concat
          src_rect = NSRect.new
          src_rect.attr_x = src_x
          src_rect.attr_y = img_height - (src_y + src_height)
          src_rect.attr_width = src_width
          src_rect.attr_height = src_height
          dest_rect = NSRect.new
          dest_rect.attr_x = dest_x
          dest_rect.attr_y = dest_y
          dest_rect.attr_width = dest_width
          dest_rect.attr_height = dest_height
          @data.attr_image.attr_handle.draw_in_rect(dest_rect, src_rect, OS::NSCompositeCopy, 1)
          NSGraphicsContext.static_restore_graphics_state
          return
        end
        if (!(@data.attr_view).nil?)
          pt = NSPoint.new
          pt.attr_x = x
          pt.attr_y = y
          window = @data.attr_view.window___org_eclipse_swt_graphics_gc_5
          pt = @data.attr_view.convert_point_to_view_(pt, window.content_view.superview)
          frame_ = window.frame
          pt.attr_y = frame_.attr_height - pt.attr_y
          size_ = image.attr_handle.size
          dest_rect = CGRect.new
          dest_rect.attr_size.attr_width = size_.attr_width
          dest_rect.attr_size.attr_height = size_.attr_height
          src_rect = CGRect.new
          src_rect.attr_origin.attr_x = pt.attr_x
          src_rect.attr_origin.attr_y = pt.attr_y
          src_rect.attr_size.attr_width = size_.attr_width
          src_rect.attr_size.attr_height = size_.attr_height
          image_rep = image.get_representation
          context = NSGraphicsContext.graphics_context_with_bitmap_image_rep(image_rep)
          NSGraphicsContext.static_save_graphics_state
          NSGraphicsContext.set_current_context(context)
          # long
          context_id = OS.objc_msg_send(NSApplication.shared_application.attr_id, OS.attr_sel_context_id)
          OS._cgcontext_copy_window_contents_to_rect(context.graphics_port, dest_rect, context_id, window.window_number, src_rect)
          NSGraphicsContext.static_restore_graphics_state
          return
        end
        if (@handle.is_drawing_to_screen)
          image_handle = image.attr_handle
          size_ = image_handle.size
          rect = CGRect.new
          rect.attr_origin.attr_x = x
          rect.attr_origin.attr_y = y
          rect.attr_size.attr_width = size_.attr_width
          rect.attr_size.attr_height = size_.attr_height
          display_count = 16
          # long
          displays = OS.malloc(4 * display_count)
          count_ptr = OS.malloc(4)
          if (!(OS._cgget_displays_with_rect(rect, display_count, displays, count_ptr)).equal?(0))
            return
          end
          count = Array.typed(::Java::Int).new(1) { 0 }
          display = Array.typed(::Java::Int).new(1) { 0 }
          OS.memmove___org_eclipse_swt_graphics_gc_7(count, count_ptr, OS::PTR_SIZEOF)
          i = 0
          while i < count[0]
            OS.memmove___org_eclipse_swt_graphics_gc_9(display, displays + (i * 4), 4)
            OS._cgdisplay_bounds(display[0], rect)
            # long
            address = OS._cgdisplay_base_address(display[0])
            if (!(address).equal?(0))
              # long
              width = OS._cgdisplay_pixels_wide(display[0])
              # long
              height = OS._cgdisplay_pixels_high(display[0])
              # long
              bpr = OS._cgdisplay_bytes_per_row(display[0])
              # long
              bpp = OS._cgdisplay_bits_per_pixel(display[0])
              # long
              bps = OS._cgdisplay_bits_per_sample(display[0])
              bitmap_info = OS.attr_k_cgimage_alpha_none_skip_first
              # 63
              case (RJava.cast_to_int(bpp))
              when 16
                bitmap_info |= OS.attr_k_cgbitmap_byte_order16host
              when 32
                bitmap_info |= OS.attr_k_cgbitmap_byte_order32host
              end
              # long
              src_image = 0
              if (OS.____big_endian__ && OS::VERSION >= 0x1040)
                # long
                colorspace = OS._cgcolor_space_create_device_rgb
                # long
                context = OS._cgbitmap_context_create(address, width, height, bps, bpr, colorspace, bitmap_info)
                OS._cgcolor_space_release(colorspace)
                src_image = OS._cgbitmap_context_create_image(context)
                OS._cgcontext_release(context)
              else
                # long
                provider = OS._cgdata_provider_create_with_data(0, address, bpr * height, 0)
                # long
                colorspace = OS._cgcolor_space_create_device_rgb
                src_image = OS._cgimage_create(width, height, bps, bpp, bpr, colorspace, bitmap_info, provider, 0, true, 0)
                OS._cgcolor_space_release(colorspace)
                OS._cgdata_provider_release(provider)
              end
              copy_area(image, x - RJava.cast_to_int(rect.attr_origin.attr_x), y - RJava.cast_to_int(rect.attr_origin.attr_y), src_image)
              if (!(src_image).equal?(0))
                OS._cgimage_release(src_image)
              end
            end
            i += 1
          end
          OS.free(displays)
          OS.free(count_ptr)
        end
      ensure
        uncheck_gc(pool)
      end
    end
    
    typesig { [Image, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    def copy_area(image, x, y, src_image)
      if ((src_image).equal?(0))
        return
      end
      rep = image.get_representation
      # long
      bpc = rep.bits_per_sample
      # long
      width = rep.pixels_wide
      # long
      height = rep.pixels_high
      # long
      bpr = rep.bytes_per_row
      alpha_info = rep.has_alpha ? OS.attr_k_cgimage_alpha_first : OS.attr_k_cgimage_alpha_none_skip_first
      # long
      colorspace = OS._cgcolor_space_create_device_rgb
      # long
      context = OS._cgbitmap_context_create(rep.bitmap_data, width, height, bpc, bpr, colorspace, alpha_info)
      OS._cgcolor_space_release(colorspace)
      if (!(context).equal?(0))
        rect = CGRect.new
        rect.attr_origin.attr_x = -x
        rect.attr_origin.attr_y = y
        rect.attr_size.attr_width = OS._cgimage_get_width(src_image)
        rect.attr_size.attr_height = OS._cgimage_get_height(src_image)
        OS._cgcontext_translate_ctm(context, 0, -(rect.attr_size.attr_height - height))
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
      if ((@handle).nil?)
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
      pool = check_gc(TRANSFORM | CLIPPING)
      begin
        image = @data.attr_image
        if (!(image).nil?)
          image_handle = image.attr_handle
          size_ = image_handle.size
          img_height = RJava.cast_to_int(size_.attr_height)
          @handle.save_graphics_state
          transform_ = NSAffineTransform.transform
          transform_.scale_xby(1, -1)
          transform_.translate_xby(0, -(height + 2 * dest_y))
          transform_.concat
          src_rect = NSRect.new
          src_rect.attr_x = src_x
          src_rect.attr_y = img_height - (src_y + height)
          src_rect.attr_width = width
          src_rect.attr_height = height
          dest_rect = NSRect.new
          dest_rect.attr_x = dest_x
          dest_rect.attr_y = dest_y
          dest_rect.attr_width = width
          dest_rect.attr_height = height
          image_handle.draw_in_rect(dest_rect, src_rect, OS::NSCompositeCopy, 1)
          @handle.restore_graphics_state
          return
        end
        if (!(@data.attr_view).nil?)
          view = @data.attr_view
          visible_rect_ = view.visible_rect
          if (visible_rect_.attr_width <= 0 || visible_rect_.attr_height <= 0)
            return
          end
          damage = NSRect.new
          damage.attr_x = src_x
          damage.attr_y = src_y
          damage.attr_width = width
          damage.attr_height = height
          dest = NSPoint.new
          dest.attr_x = dest_x
          dest.attr_y = dest_y
          view.lock_focus
          OS._nscopy_bits(0, damage, dest)
          view.unlock_focus
          if (paint)
            disjoint = (dest_x + width < src_x) || (src_x + width < dest_x) || (dest_y + height < src_y) || (src_y + height < dest_y)
            if (disjoint)
              view.set_needs_display_in_rect(damage)
            else
              if (!(delta_x).equal?(0))
                new_x = dest_x - delta_x
                if (delta_x < 0)
                  new_x = dest_x + width
                end
                damage.attr_x = new_x
                damage.attr_width = Math.abs(delta_x)
                view.set_needs_display_in_rect(damage)
              end
              if (!(delta_y).equal?(0))
                new_y = dest_y - delta_y
                if (delta_y < 0)
                  new_y = dest_y + height
                end
                damage.attr_x = src_x
                damage.attr_y = new_y
                damage.attr_width = width
                damage.attr_height = Math.abs(delta_y)
                view.set_needs_display_in_rect(damage)
              end
            end
            src_rect = NSRect.new
            src_rect.attr_x = src_x
            src_rect.attr_y = src_y
            src_rect.attr_width = width
            src_rect.attr_height = height
            OS._nsintersection_rect(visible_rect_, visible_rect_, src_rect)
            if (!OS._nsequal_rects(visible_rect_, src_rect))
              if (!(src_rect.attr_x).equal?(visible_rect_.attr_x))
                damage.attr_x = src_rect.attr_x + delta_x
                damage.attr_y = src_rect.attr_y + delta_y
                damage.attr_width = visible_rect_.attr_x - src_rect.attr_x
                damage.attr_height = src_rect.attr_height
                view.set_needs_display_in_rect(damage)
              end
              if (!(visible_rect_.attr_x + visible_rect_.attr_width).equal?(src_rect.attr_x + src_rect.attr_width))
                damage.attr_x = src_rect.attr_x + visible_rect_.attr_width + delta_x
                damage.attr_y = src_rect.attr_y + delta_y
                damage.attr_width = src_rect.attr_width - visible_rect_.attr_width
                damage.attr_height = src_rect.attr_height
                view.set_needs_display_in_rect(damage)
              end
              if (!(visible_rect_.attr_y).equal?(src_rect.attr_y))
                damage.attr_x = visible_rect_.attr_x + delta_x
                damage.attr_y = src_rect.attr_y + delta_y
                damage.attr_width = visible_rect_.attr_width
                damage.attr_height = visible_rect_.attr_y - src_rect.attr_y
                view.set_needs_display_in_rect(damage)
              end
              if (!(visible_rect_.attr_y + visible_rect_.attr_height).equal?(src_rect.attr_y + src_rect.attr_height))
                damage.attr_x = visible_rect_.attr_x + delta_x
                damage.attr_y = visible_rect_.attr_y + visible_rect_.attr_height + delta_y
                damage.attr_width = visible_rect_.attr_width
                damage.attr_height = src_rect.attr_y + src_rect.attr_height - (visible_rect_.attr_y + visible_rect_.attr_height)
                view.set_needs_display_in_rect(damage)
              end
            end
          end
          return
        end
      ensure
        uncheck_gc(pool)
      end
    end
    
    class_module.module_eval {
      typesig { [NSBezierPath] }
      # long
      def create_cgpath_ref(ns_path)
        # long
        count = ns_path.element_count
        if (count > 0)
          # long
          cg_path = OS._cgpath_create_mutable
          if ((cg_path).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          # long
          points = OS.malloc(NSPoint.attr_sizeof * 3)
          if ((points).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          # double
          # double
          pt = Array.typed(::Java::Float).new(6) { 0.0 }
          i = 0
          while i < count
            # 64
            element = RJava.cast_to_int(ns_path.element_at_index(i, points))
            case (element)
            when OS::NSMoveToBezierPathElement
              OS.memmove___org_eclipse_swt_graphics_gc_11(pt, points, NSPoint.attr_sizeof)
              OS._cgpath_move_to_point(cg_path, 0, pt[0], pt[1])
            when OS::NSLineToBezierPathElement
              OS.memmove___org_eclipse_swt_graphics_gc_13(pt, points, NSPoint.attr_sizeof)
              OS._cgpath_add_line_to_point(cg_path, 0, pt[0], pt[1])
            when OS::NSCurveToBezierPathElement
              OS.memmove___org_eclipse_swt_graphics_gc_15(pt, points, NSPoint.attr_sizeof * 3)
              OS._cgpath_add_curve_to_point(cg_path, 0, pt[0], pt[1], pt[2], pt[3], pt[4], pt[5])
            when OS::NSClosePathBezierPathElement
              OS._cgpath_close_subpath(cg_path)
            end
            i += 1
          end
          OS.free(points)
          return cg_path
        end
        return 0
      end
    }
    
    typesig { [::Java::Int] }
    # long
    def create_nsbezier_path(cg_path)
      callback = Callback.new(self, "applierFunc", 2)
      # long
      proc = callback.get_address
      if ((proc).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @count = @type_count = 0
      @element = CGPathElement.new
      OS._cgpath_apply(cg_path, 0, proc)
      @types = Array.typed(::Java::Byte).new(@type_count) { 0 }
      # double
      @points = Array.typed(::Java::Float).new(@count) { 0.0 }
      # double
      @point = Array.typed(::Java::Float).new(6) { 0.0 }
      @count = @type_count = 0
      OS._cgpath_apply(cg_path, 0, proc)
      callback.dispose
      bezier_path_ = NSBezierPath.bezier_path
      ns_point = NSPoint.new
      ns_point2 = NSPoint.new
      ns_point3 = NSPoint.new
      i = 0
      j = 0
      while i < @types.attr_length
        case (@types[i])
        when SWT::PATH_MOVE_TO
          ns_point.attr_x = @points[((j += 1) - 1)]
          ns_point.attr_y = @points[((j += 1) - 1)]
          bezier_path_.move_to_point(ns_point)
        when SWT::PATH_LINE_TO
          ns_point.attr_x = @points[((j += 1) - 1)]
          ns_point.attr_y = @points[((j += 1) - 1)]
          bezier_path_.line_to_point(ns_point)
        when SWT::PATH_CUBIC_TO
          ns_point2.attr_x = @points[((j += 1) - 1)]
          ns_point2.attr_y = @points[((j += 1) - 1)]
          ns_point3.attr_x = @points[((j += 1) - 1)]
          ns_point3.attr_y = @points[((j += 1) - 1)]
          ns_point.attr_x = @points[((j += 1) - 1)]
          ns_point.attr_y = @points[((j += 1) - 1)]
          bezier_path_.curve_to_point(ns_point, ns_point2, ns_point3)
        when SWT::PATH_QUAD_TO
          # double
          current_x = ns_point.attr_x
          # double
          current_y = ns_point.attr_y
          ns_point2.attr_x = @points[((j += 1) - 1)]
          ns_point2.attr_y = @points[((j += 1) - 1)]
          ns_point.attr_x = @points[((j += 1) - 1)]
          ns_point.attr_y = @points[((j += 1) - 1)]
          # double
          x0 = current_x
          # double
          y0 = current_y
          # double
          cx1 = x0 + 2 * (ns_point2.attr_x - x0) / 3
          # double
          cy1 = y0 + 2 * (ns_point2.attr_y - y0) / 3
          # double
          cx2 = cx1 + (ns_point.attr_x - x0) / 3
          # double
          cy2 = cy1 + (ns_point.attr_y - y0) / 3
          ns_point2.attr_x = cx1
          ns_point2.attr_y = cy1
          ns_point3.attr_x = cx2
          ns_point3.attr_y = cy2
          bezier_path_.curve_to_point(ns_point, ns_point2, ns_point3)
        when SWT::PATH_CLOSE
          bezier_path_.close_path
        else
          dispose
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        i += 1
      end
      @element = nil
      @types = nil
      @points = nil
      ns_point = nil
      return bezier_path_
    end
    
    typesig { [String, ::Java::Int, ::Java::Boolean] }
    def create_string(string, flags, draw)
      dict = (NSMutableDictionary.new.alloc).init_with_capacity(5)
      font = @data.attr_font
      dict.set_object(font.attr_handle, OS::NSFontAttributeName)
      font.add_traits(dict)
      if (draw)
        pattern = @data.attr_foreground_pattern
        if (!(pattern).nil?)
          if (!(pattern.attr_color).nil?)
            dict.set_object(pattern.attr_color, OS::NSForegroundColorAttributeName)
          end
        else
          fg = @data.attr_fg
          if ((fg).nil?)
            # double
            color = @data.attr_foreground
            fg = @data.attr_fg = NSColor.color_with_device_red(color[0], color[1], color[2], @data.attr_alpha / 255)
            fg.retain
          end
          dict.set_object(fg, OS::NSForegroundColorAttributeName)
        end
      end
      if (((flags & SWT::DRAW_TAB)).equal?(0))
        dict.set_object(self.attr_device.attr_paragraph_style, OS::NSParagraphStyleAttributeName)
      end
      length_ = string.length
      chars = CharArray.new(length_)
      string.get_chars(0, length_, chars, 0)
      break_count = 0
      breaks = nil
      if (!((flags & SWT::DRAW_MNEMONIC)).equal?(0) || ((flags & SWT::DRAW_DELIMITER)).equal?(0))
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
                i += 1
                next
              end
              j -= 1
            end
          when Character.new(?\r.ord), Character.new(?\n.ord)
            if (((flags & SWT::DRAW_DELIMITER)).equal?(0))
              if ((c).equal?(Character.new(?\r.ord)) && !(i).equal?(chars.attr_length) && (chars[i]).equal?(Character.new(?\n.ord)))
                i += 1
              end
              j -= 1
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
      str = (NSString.new.alloc).init_with_characters(chars, length_)
      attrib_str = (NSAttributedString.new.alloc).init_with_string(str, dict)
      dict.release
      str.release
      return attrib_str
    end
    
    typesig { [] }
    def destroy
      # Free resources
      image = @data.attr_image
      if (!(image).nil?)
        image.attr_mem_gc = nil
        image.create_alpha
      end
      if (!(@data.attr_fg).nil?)
        @data.attr_fg.release
      end
      if (!(@data.attr_bg).nil?)
        @data.attr_bg.release
      end
      if (!(@data.attr_path).nil?)
        @data.attr_path.release
      end
      if (!(@data.attr_clip_path).nil?)
        @data.attr_clip_path.release
      end
      if (!(@data.attr_visible_path).nil?)
        @data.attr_visible_path.release
      end
      if (!(@data.attr_transform).nil?)
        @data.attr_transform.release
      end
      if (!(@data.attr_inverse_transform).nil?)
        @data.attr_inverse_transform.release
      end
      @data.attr_path = @data.attr_clip_path = @data.attr_visible_path = nil
      @data.attr_transform = @data.attr_inverse_transform = nil
      @data.attr_fg = @data.attr_bg = nil
      # Dispose the GC
      if (!(@drawable).nil?)
        @drawable.internal_dispose__gc(@handle.attr_id, @data)
      end
      @handle.restore_graphics_state
      @handle.release
      @drawable = nil
      @data.attr_image = nil
      @data = nil
      @handle = nil
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
      if ((@handle).nil?)
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
      if ((width).equal?(0) || (height).equal?(0) || (arc_angle).equal?(0))
        return
      end
      pool = check_gc(DRAW)
      begin
        @handle.save_graphics_state
        transform_ = NSAffineTransform.transform
        # double
        x_offset = @data.attr_draw_xoffset
        y_offset = @data.attr_draw_yoffset
        transform_.translate_xby(x + x_offset + width / 2, y + y_offset + height / 2)
        transform_.scale_xby(width / 2, height / 2)
        path = @data.attr_path
        center = NSPoint.new
        s_angle = -start_angle
        e_angle = -(start_angle + arc_angle)
        path.append_bezier_path_with_arc_with_center(center, 1, s_angle, e_angle, arc_angle > 0)
        path.transform_using_affine_transform(transform_)
        pattern = @data.attr_foreground_pattern
        if (!(pattern).nil? && !(pattern.attr_gradient).nil?)
          stroke_pattern(path, pattern)
        else
          path.stroke
        end
        path.remove_all_points
        @handle.restore_graphics_state
      ensure
        uncheck_gc(pool)
      end
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = check_gc(CLIPPING | TRANSFORM)
      begin
        metric = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_theme_metric(OS.attr_k_theme_metric_focus_rect_outset, metric)
        rect = CGRect.new
        rect.attr_origin.attr_x = x + metric[0]
        rect.attr_origin.attr_y = y + metric[0]
        rect.attr_size.attr_width = width - metric[0] * 2
        rect.attr_size.attr_height = height - metric[0] * 2
        OS._hitheme_draw_focus_rect(rect, true, @handle.graphics_port, OS.attr_k_hitheme_orientation_normal)
      ensure
        uncheck_gc(pool)
      end
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
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
      image_handle = src_image.attr_handle
      size_ = image_handle.size
      img_width = RJava.cast_to_int(size_.attr_width)
      img_height = RJava.cast_to_int(size_.attr_height)
      if (simple)
        src_width = dest_width = img_width
        src_height = dest_height = img_height
      else
        simple = (src_x).equal?(0) && (src_y).equal?(0) && (src_width).equal?(dest_width) && (dest_width).equal?(img_width) && (src_height).equal?(dest_height) && (dest_height).equal?(img_height)
        if (src_x + src_width > img_width || src_y + src_height > img_height)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
      end
      pool = check_gc(CLIPPING | TRANSFORM)
      begin
        if (!(src_image.attr_mem_gc).nil?)
          src_image.create_alpha
        end
        @handle.save_graphics_state
        transform_ = NSAffineTransform.transform
        transform_.scale_xby(1, -1)
        transform_.translate_xby(0, -(dest_height + 2 * dest_y))
        transform_.concat
        src_rect = NSRect.new
        src_rect.attr_x = src_x
        src_rect.attr_y = img_height - (src_y + src_height)
        src_rect.attr_width = src_width
        src_rect.attr_height = src_height
        dest_rect = NSRect.new
        dest_rect.attr_x = dest_x
        dest_rect.attr_y = dest_y
        dest_rect.attr_width = dest_width
        dest_rect.attr_height = dest_height
        image_handle.draw_in_rect(dest_rect, src_rect, OS::NSCompositeSourceOver, 1)
        @handle.restore_graphics_state
      ensure
        uncheck_gc(pool)
      end
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = check_gc(DRAW)
      begin
        path = @data.attr_path
        pt = NSPoint.new
        pt.attr_x = x1 + @data.attr_draw_xoffset
        pt.attr_y = y1 + @data.attr_draw_yoffset
        path.move_to_point(pt)
        pt.attr_x = x2 + @data.attr_draw_xoffset
        pt.attr_y = y2 + @data.attr_draw_yoffset
        path.line_to_point(pt)
        pattern = @data.attr_foreground_pattern
        if (!(pattern).nil? && !(pattern.attr_gradient).nil?)
          stroke_pattern(path, pattern)
        else
          path.stroke
        end
        path.remove_all_points
      ensure
        uncheck_gc(pool)
      end
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = check_gc(DRAW)
      begin
        if (width < 0)
          x = x + width
          width = -width
        end
        if (height < 0)
          y = y + height
          height = -height
        end
        path = @data.attr_path
        rect = NSRect.new
        rect.attr_x = x + @data.attr_draw_xoffset
        rect.attr_y = y + @data.attr_draw_xoffset
        rect.attr_width = width
        rect.attr_height = height
        path.append_bezier_path_with_oval_in_rect(rect)
        pattern = @data.attr_foreground_pattern
        if (!(pattern).nil? && !(pattern.attr_gradient).nil?)
          stroke_pattern(path, pattern)
        else
          path.stroke
        end
        path.remove_all_points
      ensure
        uncheck_gc(pool)
      end
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((path).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((path.attr_handle).nil?)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      pool = check_gc(DRAW)
      begin
        @handle.save_graphics_state
        transform_ = NSAffineTransform.transform
        transform_.translate_xby(@data.attr_draw_xoffset, @data.attr_draw_yoffset)
        transform_.concat
        draw_path = @data.attr_path
        draw_path.append_bezier_path(path.attr_handle)
        pattern = @data.attr_foreground_pattern
        if (!(pattern).nil? && !(pattern.attr_gradient).nil?)
          stroke_pattern(draw_path, pattern)
        else
          draw_path.stroke
        end
        draw_path.remove_all_points
        @handle.restore_graphics_state
      ensure
        uncheck_gc(pool)
      end
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = check_gc(FOREGROUND_FILL | CLIPPING | TRANSFORM)
      begin
        rect = NSRect.new
        rect.attr_x = x
        rect.attr_y = y
        rect.attr_width = 1
        rect.attr_height = 1
        path = @data.attr_path
        path.append_bezier_path_with_rect(rect)
        path.fill
        path.remove_all_points
      ensure
        uncheck_gc(pool)
      end
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((point_array).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (point_array.attr_length < 4)
        return
      end
      pool = check_gc(DRAW)
      begin
        # double
        x_offset = @data.attr_draw_xoffset
        y_offset = @data.attr_draw_yoffset
        path = @data.attr_path
        pt = NSPoint.new
        pt.attr_x = point_array[0] + x_offset
        pt.attr_y = point_array[1] + y_offset
        path.move_to_point(pt)
        end_ = point_array.attr_length / 2 * 2
        i = 2
        while i < end_
          pt.attr_x = point_array[i] + x_offset
          pt.attr_y = point_array[i + 1] + y_offset
          path.line_to_point(pt)
          i += 2
        end
        path.close_path
        pattern = @data.attr_foreground_pattern
        if (!(pattern).nil? && !(pattern.attr_gradient).nil?)
          stroke_pattern(path, pattern)
        else
          path.stroke
        end
        path.remove_all_points
      ensure
        uncheck_gc(pool)
      end
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((point_array).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (point_array.attr_length < 4)
        return
      end
      pool = check_gc(DRAW)
      begin
        # double
        x_offset = @data.attr_draw_xoffset
        y_offset = @data.attr_draw_yoffset
        path = @data.attr_path
        pt = NSPoint.new
        pt.attr_x = point_array[0] + x_offset
        pt.attr_y = point_array[1] + y_offset
        path.move_to_point(pt)
        end_ = point_array.attr_length / 2 * 2
        i = 2
        while i < end_
          pt.attr_x = point_array[i] + x_offset
          pt.attr_y = point_array[i + 1] + y_offset
          path.line_to_point(pt)
          i += 2
        end
        pattern = @data.attr_foreground_pattern
        if (!(pattern).nil? && !(pattern.attr_gradient).nil?)
          stroke_pattern(path, pattern)
        else
          path.stroke
        end
        path.remove_all_points
      ensure
        uncheck_gc(pool)
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = check_gc(DRAW)
      begin
        if (width < 0)
          x = x + width
          width = -width
        end
        if (height < 0)
          y = y + height
          height = -height
        end
        rect = NSRect.new
        rect.attr_x = x + @data.attr_draw_xoffset
        rect.attr_y = y + @data.attr_draw_yoffset
        rect.attr_width = width
        rect.attr_height = height
        path = @data.attr_path
        path.append_bezier_path_with_rect(rect)
        pattern = @data.attr_foreground_pattern
        if (!(pattern).nil? && !(pattern.attr_gradient).nil?)
          stroke_pattern(path, pattern)
        else
          path.stroke
        end
        path.remove_all_points
      ensure
        uncheck_gc(pool)
      end
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((arc_width).equal?(0) || (arc_height).equal?(0))
        draw_rectangle(x, y, width, height)
        return
      end
      pool = check_gc(DRAW)
      begin
        path = @data.attr_path
        rect = NSRect.new
        rect.attr_x = x + @data.attr_draw_xoffset
        rect.attr_y = y + @data.attr_draw_yoffset
        rect.attr_width = width
        rect.attr_height = height
        path.append_bezier_path_with_rounded_rect(rect, arc_width / 2, arc_height / 2)
        pattern = @data.attr_foreground_pattern
        if (!(pattern).nil? && !(pattern.attr_gradient).nil?)
          stroke_pattern(path, pattern)
        else
          path.stroke
        end
        path.remove_all_points
      ensure
        uncheck_gc(pool)
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((string).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      pool = check_gc(CLIPPING | TRANSFORM | FONT)
      begin
        @handle.save_graphics_state
        mode = true
        case (@data.attr_text_antialias)
        when SWT::DEFAULT
          # Printer is off by default
          if (!@handle.is_drawing_to_screen)
            mode = false
          end
        when SWT::OFF
          mode = false
        when SWT::ON
          mode = true
        end
        @handle.set_should_antialias(mode)
        str = create_string(string, flags, true)
        if (((flags & SWT::DRAW_TRANSPARENT)).equal?(0))
          size_ = str.size
          rect = NSRect.new
          rect.attr_x = x
          rect.attr_y = y
          rect.attr_width = size_.attr_width
          rect.attr_height = size_.attr_height
          bg = @data.attr_bg
          if ((bg).nil?)
            # double
            color = @data.attr_background
            bg = @data.attr_bg = NSColor.color_with_device_red(color[0], color[1], color[2], @data.attr_alpha / 255)
            bg.retain
          end
          bg.set_fill
          NSBezierPath.fill_rect(rect)
          str.draw_in_rect(rect)
        else
          pt = NSPoint.new
          pt.attr_x = x
          pt.attr_y = y
          str.draw_at_point(pt)
        end
        str.release
        @handle.restore_graphics_state
      ensure
        uncheck_gc(pool)
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
    def ==(object)
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
      if ((@handle).nil?)
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
      if ((width).equal?(0) || (height).equal?(0) || (arc_angle).equal?(0))
        return
      end
      pool = check_gc(FILL)
      begin
        @handle.save_graphics_state
        transform_ = NSAffineTransform.transform
        # double
        x_offset = @data.attr_draw_xoffset
        y_offset = @data.attr_draw_yoffset
        transform_.translate_xby(x + x_offset + width / 2, y + y_offset + height / 2)
        transform_.scale_xby(width / 2, height / 2)
        path = @data.attr_path
        center = NSPoint.new
        path.move_to_point(center)
        s_angle = -start_angle
        e_angle = -(start_angle + arc_angle)
        path.append_bezier_path_with_arc_with_center(center, 1, s_angle, e_angle, arc_angle > 0)
        path.close_path
        path.transform_using_affine_transform(transform_)
        pattern = @data.attr_background_pattern
        if (!(pattern).nil? && !(pattern.attr_gradient).nil?)
          fill_pattern(path, pattern)
        else
          path.fill
        end
        path.remove_all_points
        @handle.restore_graphics_state
      ensure
        uncheck_gc(pool)
      end
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (((width).equal?(0)) || ((height).equal?(0)))
        return
      end
      pool = check_gc(CLIPPING | TRANSFORM)
      begin
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
        else
          starting_color = NSColor.color_with_device_red(from_rgb.attr_red / 255, from_rgb.attr_green / 255, from_rgb.attr_blue / 255, @data.attr_alpha / 255)
          ending_color = NSColor.color_with_device_red(to_rgb.attr_red / 255, to_rgb.attr_green / 255, to_rgb.attr_blue / 255, @data.attr_alpha / 255)
          gradient = (NSGradient.new.alloc).init_with_starting_color(starting_color, ending_color)
          rect = NSRect.new
          rect.attr_x = x
          rect.attr_y = y
          rect.attr_width = width
          rect.attr_height = height
          gradient.draw_in_rect(rect, vertical ? 90 : 0)
          gradient.release
        end
      ensure
        uncheck_gc(pool)
      end
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = check_gc(FILL)
      begin
        if (width < 0)
          x = x + width
          width = -width
        end
        if (height < 0)
          y = y + height
          height = -height
        end
        path = @data.attr_path
        rect = NSRect.new
        rect.attr_x = x
        rect.attr_y = y
        rect.attr_width = width
        rect.attr_height = height
        path.append_bezier_path_with_oval_in_rect(rect)
        pattern = @data.attr_background_pattern
        if (!(pattern).nil? && !(pattern.attr_gradient).nil?)
          fill_pattern(path, pattern)
        else
          path.fill
        end
        path.remove_all_points
      ensure
        uncheck_gc(pool)
      end
    end
    
    typesig { [NSBezierPath, Pattern] }
    def fill_pattern(path, pattern)
      @handle.save_graphics_state
      path.add_clip
      bounds_ = path.bounds
      start = NSPoint.new
      start.attr_x = pattern.attr_pt1.attr_x
      start.attr_y = pattern.attr_pt1.attr_y
      end_ = NSPoint.new
      end_.attr_x = pattern.attr_pt2.attr_x
      end_.attr_y = pattern.attr_pt2.attr_y
      # double
      difx = end_.attr_x - start.attr_x
      # double
      dify = end_.attr_y - start.attr_y
      if ((difx).equal?(0) && (dify).equal?(0))
        # double
        color = pattern.attr_color1
        NSColor.color_with_device_red(color[0], color[1], color[2], @data.attr_alpha / 255).set_fill
        path.fill
        @handle.restore_graphics_state
        return
      end
      # double
      startx = 0.0
      starty = 0.0
      endx = 0.0
      endy = 0.0
      if ((difx).equal?(0) || (dify).equal?(0))
        startx = bounds_.attr_x
        starty = bounds_.attr_y
        endx = bounds_.attr_x + bounds_.attr_width
        endy = bounds_.attr_y + bounds_.attr_height
        if (difx < 0 || dify < 0)
          startx = endx
          starty = endy
          endx = bounds_.attr_x
          endy = bounds_.attr_y
        end
      else
        # double
        m = (end_.attr_y - start.attr_y) / (end_.attr_x - start.attr_x)
        # double
        b = end_.attr_y - (m * end_.attr_x)
        # double
        m2 = -1 / m # perpendicular slope
        # double
        b2 = bounds_.attr_y - (m2 * bounds_.attr_x)
        startx = endx = (b - b2) / (m2 - m)
        b2 = (bounds_.attr_y + bounds_.attr_height) - (m2 * bounds_.attr_x)
        # double
        x2 = (b - b2) / (m2 - m)
        startx = difx > 0 ? Math.min(startx, x2) : Math.max(startx, x2)
        endx = difx < 0 ? Math.min(endx, x2) : Math.max(endx, x2)
        b2 = bounds_.attr_y - (m2 * (bounds_.attr_x + bounds_.attr_width))
        x2 = (b - b2) / (m2 - m)
        startx = difx > 0 ? Math.min(startx, x2) : Math.max(startx, x2)
        endx = difx < 0 ? Math.min(endx, x2) : Math.max(endx, x2)
        b2 = (bounds_.attr_y + bounds_.attr_height) - (m2 * (bounds_.attr_x + bounds_.attr_width))
        x2 = (b - b2) / (m2 - m)
        startx = difx > 0 ? Math.min(startx, x2) : Math.max(startx, x2)
        endx = difx < 0 ? Math.min(endx, x2) : Math.max(endx, x2)
        starty = (m * startx) + b
        endy = (m * endx) + b
      end
      if (!(difx).equal?(0))
        while ((difx > 0 && start.attr_x >= startx) || (difx < 0 && start.attr_x <= startx))
          start.attr_x -= difx
          start.attr_y -= dify
        end
      else
        while ((dify > 0 && start.attr_y >= starty) || (dify < 0 && start.attr_y <= starty))
          start.attr_x -= difx
          start.attr_y -= dify
        end
      end
      end_.attr_x = start.attr_x
      end_.attr_y = start.attr_y
      begin
        end_.attr_x += difx
        end_.attr_y += dify
        pattern.attr_gradient.draw_from_point(start, end_, 0)
        start.attr_x = end_.attr_x
        start.attr_y = end_.attr_y
      end while ((difx > 0 && end_.attr_x <= endx) || (difx < 0 && end_.attr_x >= endx) || ((difx).equal?(0) && ((dify > 0 && end_.attr_y <= endy) || (dify < 0 && end_.attr_y >= endy))))
      @handle.restore_graphics_state
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((path).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((path.attr_handle).nil?)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      pool = check_gc(FILL)
      begin
        draw_path = @data.attr_path
        draw_path.append_bezier_path(path.attr_handle)
        pattern = @data.attr_background_pattern
        if (!(pattern).nil? && !(pattern.attr_gradient).nil?)
          fill_pattern(draw_path, pattern)
        else
          draw_path.fill
        end
        draw_path.remove_all_points
      ensure
        uncheck_gc(pool)
      end
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((point_array).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (point_array.attr_length < 4)
        return
      end
      pool = check_gc(FILL)
      begin
        path = @data.attr_path
        pt = NSPoint.new
        pt.attr_x = point_array[0]
        pt.attr_y = point_array[1]
        path.move_to_point(pt)
        end_ = point_array.attr_length / 2 * 2
        i = 2
        while i < end_
          pt.attr_x = point_array[i]
          pt.attr_y = point_array[i + 1]
          path.line_to_point(pt)
          i += 2
        end
        path.close_path
        pattern = @data.attr_background_pattern
        if (!(pattern).nil? && !(pattern.attr_gradient).nil?)
          fill_pattern(path, pattern)
        else
          path.fill
        end
        path.remove_all_points
      ensure
        uncheck_gc(pool)
      end
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = check_gc(FILL)
      begin
        if (width < 0)
          x = x + width
          width = -width
        end
        if (height < 0)
          y = y + height
          height = -height
        end
        rect = NSRect.new
        rect.attr_x = x
        rect.attr_y = y
        rect.attr_width = width
        rect.attr_height = height
        path = @data.attr_path
        path.append_bezier_path_with_rect(rect)
        pattern = @data.attr_background_pattern
        if (!(pattern).nil? && !(pattern.attr_gradient).nil?)
          fill_pattern(path, pattern)
        else
          path.fill
        end
        path.remove_all_points
      ensure
        uncheck_gc(pool)
      end
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((arc_width).equal?(0) || (arc_height).equal?(0))
        fill_rectangle(x, y, width, height)
        return
      end
      pool = check_gc(FILL)
      begin
        path = @data.attr_path
        rect = NSRect.new
        rect.attr_x = x
        rect.attr_y = y
        rect.attr_width = width
        rect.attr_height = height
        path.append_bezier_path_with_rounded_rect(rect, arc_width / 2, arc_height / 2)
        pattern = @data.attr_background_pattern
        if (!(pattern).nil? && !(pattern.attr_gradient).nil?)
          fill_pattern(path, pattern)
        else
          path.fill
        end
        path.remove_all_points
      ensure
        uncheck_gc(pool)
      end
    end
    
    typesig { [NSBezierPath, Pattern] }
    def stroke_pattern(path, pattern)
      @handle.save_graphics_state
      # long
      cg_path = create_cgpath_ref(path)
      # long
      cg_context = @handle.graphics_port
      OS._cgcontext_save_gstate(cg_context)
      init_cgcontext(cg_context)
      OS._cgcontext_add_path(cg_context, cg_path)
      OS._cgcontext_replace_path_with_stroked_path(cg_context)
      OS._cgpath_release(cg_path)
      cg_path = 0
      cg_path = OS._cgcontext_copy_path(cg_context)
      if ((cg_path).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS._cgcontext_restore_gstate(cg_context)
      stroke_path = create_nsbezier_path(cg_path)
      OS._cgpath_release(cg_path)
      fill_pattern(stroke_path, pattern)
      @handle.restore_graphics_state
    end
    
    typesig { [] }
    def flush
      @handle.flush_graphics
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return Color.cocoa_new(@data.attr_device, @data.attr_background)
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        rect = nil
        if (!(@data.attr_view).nil?)
          rect = @data.attr_view.visible_rect
        else
          rect = NSRect.new
          if (!(@data.attr_image).nil?)
            size_ = @data.attr_image.attr_handle.size
            rect.attr_width = size_.attr_width
            rect.attr_height = size_.attr_height
          else
            if (!(@data.attr_size).nil?)
              rect.attr_width = @data.attr_size.attr_width
              rect.attr_height = @data.attr_size.attr_height
            end
          end
        end
        if (!(@data.attr_paint_rect).nil? || !(@data.attr_clip_path).nil? || !(@data.attr_inverse_transform).nil?)
          if (!(@data.attr_paint_rect).nil?)
            OS._nsintersection_rect(rect, rect, @data.attr_paint_rect)
          end
          if (!(@data.attr_clip_path).nil?)
            clip = @data.attr_clip_path.bounds
            OS._nsintersection_rect(rect, rect, clip)
          end
          if (!(@data.attr_inverse_transform).nil? && rect.attr_width > 0 && rect.attr_height > 0)
            pt = NSPoint.new
            pt.attr_x = rect.attr_x
            pt.attr_y = rect.attr_y
            size_ = NSSize.new
            size_.attr_width = rect.attr_width
            size_.attr_height = rect.attr_height
            pt = @data.attr_inverse_transform.transform_point(pt)
            size_ = @data.attr_inverse_transform.transform_size(size_)
            rect.attr_x = pt.attr_x
            rect.attr_y = pt.attr_y
            rect.attr_width = size_.attr_width
            rect.attr_height = size_.attr_height
          end
        end
        return Rectangle.new(RJava.cast_to_int(rect.attr_x), RJava.cast_to_int(rect.attr_y), RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height))
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((region).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (region.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        region.subtract(region)
        rect = nil
        if (!(@data.attr_view).nil?)
          rect = @data.attr_view.visible_rect
        else
          rect = NSRect.new
          if (!(@data.attr_image).nil?)
            size_ = @data.attr_image.attr_handle.size
            rect.attr_width = size_.attr_width
            rect.attr_height = size_.attr_height
          else
            if (!(@data.attr_size).nil?)
              rect.attr_width = @data.attr_size.attr_width
              rect.attr_height = @data.attr_size.attr_height
            end
          end
        end
        region.add(RJava.cast_to_int(rect.attr_x), RJava.cast_to_int(rect.attr_y), RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height))
        paint_rect = @data.attr_paint_rect
        if (!(paint_rect).nil?)
          region.intersect(RJava.cast_to_int(paint_rect.attr_x), RJava.cast_to_int(paint_rect.attr_y), RJava.cast_to_int(paint_rect.attr_width), RJava.cast_to_int(paint_rect.attr_height))
        end
        if (!(@data.attr_clip_path).nil?)
          clip = @data.attr_clip_path.bezier_path_by_flattening_path
          # 64
          count = RJava.cast_to_int(clip.element_count)
          point_count = 0
          clip_rgn = Region.new(self.attr_device)
          point_array = Array.typed(::Java::Int).new(count * 2) { 0 }
          # long
          points = OS.malloc(NSPoint.attr_sizeof)
          if ((points).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          pt = NSPoint.new
          i = 0
          while i < count
            # 64
            element = RJava.cast_to_int(clip.element_at_index(i, points))
            case (element)
            when OS::NSMoveToBezierPathElement
              if (!(point_count).equal?(0))
                clip_rgn.add(point_array, point_count)
              end
              point_count = 0
              OS.memmove___org_eclipse_swt_graphics_gc_17(pt, points, NSPoint.attr_sizeof)
              point_array[((point_count += 1) - 1)] = RJava.cast_to_int(pt.attr_x)
              point_array[((point_count += 1) - 1)] = RJava.cast_to_int(pt.attr_y)
            when OS::NSLineToBezierPathElement
              OS.memmove___org_eclipse_swt_graphics_gc_19(pt, points, NSPoint.attr_sizeof)
              point_array[((point_count += 1) - 1)] = RJava.cast_to_int(pt.attr_x)
              point_array[((point_count += 1) - 1)] = RJava.cast_to_int(pt.attr_y)
            when OS::NSClosePathBezierPathElement
              if (!(point_count).equal?(0))
                clip_rgn.add(point_array, point_count)
              end
              point_count = 0
            end
            i += 1
          end
          if (!(point_count).equal?(0))
            clip_rgn.add(point_array, point_count)
          end
          OS.free(points)
          region.intersect(clip_rgn)
          clip_rgn.dispose
        end
        if (!(@data.attr_inverse_transform).nil?)
          region.convert_rgn(@data.attr_inverse_transform)
        end
      ensure
        if (!(pool).nil?)
          pool.release
        end
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = check_gc(FONT)
      begin
        font = @data.attr_font.attr_handle
        ascent = RJava.cast_to_int((0.5 + font.ascender))
        descent = RJava.cast_to_int((0.5 + (-font.descender + font.leading)))
        s = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
        average_char_width = string_extent(s).attr_x / s.length
        return FontMetrics.cocoa_new(ascent, descent, average_char_width, 0, ascent + descent)
      ensure
        uncheck_gc(pool)
      end
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return Color.cocoa_new(@data.attr_device, @data.attr_foreground)
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
      if ((@handle).nil?)
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
    # @noreference This method is not intended to be referenced by clients.
    def get_gcdata
      if ((@handle).nil?)
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      # 64
      interpolation = RJava.cast_to_int(@handle.image_interpolation)
      case (interpolation)
      when OS::NSImageInterpolationDefault
        return SWT::DEFAULT
      when OS::NSImageInterpolationNone
        return SWT::NONE
      when OS::NSImageInterpolationLow
        return SWT::LOW
      when OS::NSImageInterpolationHigh
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
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
    def get_transform(transform_)
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((transform_).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (transform_.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      cmt = @data.attr_transform
      if (!(cmt).nil?)
        struct = cmt.transform_struct
        transform_.attr_handle.set_transform_struct(struct)
      else
        transform_.set_elements(1, 0, 0, 1, 0, 0)
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
      if ((@handle).nil?)
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
      return !(@handle).nil? ? RJava.cast_to_int(@handle.attr_id) : 0
    end
    
    typesig { [Drawable, SwtGCData, ::Java::Int] }
    # long
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
      @handle = NSGraphicsContext.new(context)
      @handle.retain
      @handle.save_graphics_state
      data.attr_path = NSBezierPath.bezier_path
      data.attr_path.set_winding_rule((data.attr_fill_rule).equal?(SWT::FILL_WINDING) ? OS::NSNonZeroWindingRule : OS::NSEvenOddWindingRule)
      data.attr_path.retain
    end
    
    typesig { [::Java::Int] }
    # long
    def init_cgcontext(cg_context)
      state = @data.attr_state
      if (!((state & LINE_WIDTH)).equal?(0))
        OS._cgcontext_set_line_width(cg_context, (@data.attr_line_width).equal?(0) ? 1 : @data.attr_line_width)
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
            i += 1
          end
          OS._cgcontext_set_line_dash(cg_context, @data.attr_line_dashes_offset, lengths, lengths.attr_length)
        else
          OS._cgcontext_set_line_dash(cg_context, 0, nil, 0)
        end
      end
      if (!((state & LINE_MITERLIMIT)).equal?(0))
        OS._cgcontext_set_miter_limit(cg_context, @data.attr_line_miter_limit)
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
        OS._cgcontext_set_line_join(cg_context, join_style)
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
        OS._cgcontext_set_line_cap(cg_context, cap_style)
      end
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return !(@data.attr_clip_path).nil?
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
      return (@handle).nil?
    end
    
    typesig { [Array.typed(::Java::Float)] }
    def is_identity(transform_)
      return (transform_[0]).equal?(1) && (transform_[1]).equal?(0) && (transform_[2]).equal?(0) && (transform_[3]).equal?(1) && (transform_[4]).equal?(0) && (transform_[5]).equal?(0)
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (!advanced)
        set_alpha(0xff)
        set_antialias(SWT::DEFAULT)
        set_background_pattern(nil)
        set_clipping(nil)
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      @data.attr_alpha = alpha & 0xff
      @data.attr_state &= ~(BACKGROUND | FOREGROUND | FOREGROUND_FILL)
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      mode = true
      case (antialias)
      when SWT::DEFAULT
        # Printer is off by default
        if (!@handle.is_drawing_to_screen)
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
      @handle.set_should_antialias(mode)
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
      if ((@handle).nil?)
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
      if (!(@data.attr_bg).nil?)
        @data.attr_bg.release
      end
      @data.attr_bg = nil
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (!(pattern).nil? && pattern.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((@data.attr_background_pattern).equal?(pattern))
        return
      end
      @data.attr_background_pattern = pattern
      @data.attr_state &= ~BACKGROUND
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        if (width < 0)
          x = x + width
          width = -width
        end
        if (height < 0)
          y = y + height
          height = -height
        end
        rect = NSRect.new
        rect.attr_x = x
        rect.attr_y = y
        rect.attr_width = width
        rect.attr_height = height
        path = NSBezierPath.bezier_path_with_rect(rect)
        path.retain
        set_clipping(path)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (!(path).nil? && path.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        set_clipping(NSBezierPath.new(path.attr_handle.copy.attr_id))
      ensure
        if (!(pool).nil?)
          pool.release
        end
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((rect).nil?)
        set_clipping(nil)
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (!(region).nil? && region.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        set_clipping(!(region).nil? ? region.get_path : nil)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [NSBezierPath] }
    def set_clipping(path)
      if (!(@data.attr_clip_path).nil?)
        @data.attr_clip_path.release
        @data.attr_clip_path = nil
      end
      if (!(path).nil?)
        @data.attr_clip_path = path
        if (!(@data.attr_transform).nil?)
          @data.attr_clip_path.transform_using_affine_transform(@data.attr_transform)
        end
      end
      @data.attr_state &= ~CLIPPING
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      case (rule)
      when SWT::FILL_WINDING, SWT::FILL_EVEN_ODD
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @data.attr_fill_rule = rule
      @data.attr_path.set_winding_rule((rule).equal?(SWT::FILL_WINDING) ? OS::NSNonZeroWindingRule : OS::NSEvenOddWindingRule)
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
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
      if (!(@data.attr_fg).nil?)
        @data.attr_fg.release
      end
      @data.attr_fg = nil
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (!(pattern).nil? && pattern.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((@data.attr_foreground_pattern).equal?(pattern))
        return
      end
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      quality = 0
      case (interpolation)
      when SWT::DEFAULT
        quality = OS::NSImageInterpolationDefault
      when SWT::NONE
        quality = OS::NSImageInterpolationNone
      when SWT::LOW
        quality = OS::NSImageInterpolationLow
      when SWT::HIGH
        quality = OS::NSImageInterpolationHigh
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @handle.set_image_interpolation(quality)
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((@data.attr_line_width).equal?(line_width))
        return
      end
      @data.attr_line_width = line_width
      @data.attr_state &= ~(LINE_WIDTH | DRAW_OFFSET)
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
      if ((@handle).nil?)
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
      if ((@handle).nil?)
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
    def set_transform(transform_)
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (!(transform_).nil? && transform_.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(transform_).nil?)
        if (!(@data.attr_transform).nil?)
          @data.attr_transform.release
        end
        if (!(@data.attr_inverse_transform).nil?)
          @data.attr_inverse_transform.release
        end
        @data.attr_transform = (NSAffineTransform.new.alloc).init_with_transform(transform_.attr_handle)
        @data.attr_inverse_transform = (NSAffineTransform.new.alloc).init_with_transform(transform_.attr_handle)
        struct = @data.attr_inverse_transform.transform_struct
        if (!((struct.attr_m11 * struct.attr_m22 - struct.attr_m12 * struct.attr_m21)).equal?(0))
          @data.attr_inverse_transform.invert
        end
      else
        @data.attr_transform = @data.attr_inverse_transform = nil
      end
      @data.attr_state &= ~(TRANSFORM | DRAW_OFFSET)
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
      if ((@handle).nil?)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((string).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      pool = check_gc(FONT)
      begin
        str = create_string(string, flags, false)
        size_ = str.size
        str.release
        return Point.new(RJava.cast_to_int(size_.attr_width), RJava.cast_to_int(size_.attr_height))
      ensure
        uncheck_gc(pool)
      end
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
      return "GC {" + RJava.cast_to_string(@handle) + "}"
    end
    
    typesig { [NSAutoreleasePool] }
    def uncheck_gc(pool)
      if (!(@data.attr_flipped_context).nil? && @data.attr_restore_context)
        NSGraphicsContext.static_restore_graphics_state
        @data.attr_restore_context = false
      end
      view = @data.attr_view
      if (!(view).nil? && (@data.attr_paint_rect).nil?)
        if (!(@data.attr_thread).equal?(JavaThread.current_thread))
          flush
        end
      end
      if (!(pool).nil?)
        pool.release
      end
    end
    
    private
    alias_method :initialize__gc, :initialize
  end
  
end
