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
  module GCImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gdip
      include ::Org::Eclipse::Swt::Internal::Win32
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
    # long
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
      
      const_set_lazy(:LINE_WIDTH) { 1 << 4 }
      const_attr_reader  :LINE_WIDTH
      
      const_set_lazy(:LINE_CAP) { 1 << 5 }
      const_attr_reader  :LINE_CAP
      
      const_set_lazy(:LINE_JOIN) { 1 << 6 }
      const_attr_reader  :LINE_JOIN
      
      const_set_lazy(:LINE_MITERLIMIT) { 1 << 7 }
      const_attr_reader  :LINE_MITERLIMIT
      
      const_set_lazy(:FOREGROUND_TEXT) { 1 << 8 }
      const_attr_reader  :FOREGROUND_TEXT
      
      const_set_lazy(:BACKGROUND_TEXT) { 1 << 9 }
      const_attr_reader  :BACKGROUND_TEXT
      
      const_set_lazy(:BRUSH) { 1 << 10 }
      const_attr_reader  :BRUSH
      
      const_set_lazy(:PEN) { 1 << 11 }
      const_attr_reader  :PEN
      
      const_set_lazy(:NULL_BRUSH) { 1 << 12 }
      const_attr_reader  :NULL_BRUSH
      
      const_set_lazy(:NULL_PEN) { 1 << 13 }
      const_attr_reader  :NULL_PEN
      
      const_set_lazy(:DRAW_OFFSET) { 1 << 14 }
      const_attr_reader  :DRAW_OFFSET
      
      const_set_lazy(:DRAW) { FOREGROUND | LINE_STYLE | LINE_WIDTH | LINE_CAP | LINE_JOIN | LINE_MITERLIMIT | PEN | NULL_BRUSH | DRAW_OFFSET }
      const_attr_reader  :DRAW
      
      const_set_lazy(:FILL) { BACKGROUND | BRUSH | NULL_PEN }
      const_attr_reader  :FILL
      
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
    # Prevents uninitialized instances from being created outside the package.
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
      initialize__gc(drawable, SWT::NONE)
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
      # long
      h_dc = drawable.internal_new__gc(data)
      device = data.attr_device
      if ((device).nil?)
        device = Device.get_device
      end
      if ((device).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      self.attr_device = data.attr_device = device
      init(drawable, data, h_dc)
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
    }
    
    typesig { [::Java::Int] }
    def check_gc(mask)
      state = @data.attr_state
      if (((state & mask)).equal?(mask))
        return
      end
      state = (state ^ mask) & mask
      @data.attr_state |= mask
      # long
      gdip_graphics = @data.attr_gdip_graphics
      if (!(gdip_graphics).equal?(0))
        # long
        pen = @data.attr_gdip_pen
        width = @data.attr_line_width
        if (!((state & FOREGROUND)).equal?(0) || ((pen).equal?(0) && !((state & (LINE_WIDTH | LINE_STYLE | LINE_MITERLIMIT | LINE_JOIN | LINE_CAP))).equal?(0)))
          if (!(@data.attr_gdip_fg_brush).equal?(0))
            Gdip._solid_brush_delete(@data.attr_gdip_fg_brush)
          end
          @data.attr_gdip_fg_brush = 0
          # long
          brush = 0
          pattern = @data.attr_foreground_pattern
          if (!(pattern).nil?)
            brush = pattern.attr_handle
            if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
              case (Gdip._brush_get_type(brush))
              when Gdip::BrushTypeTextureFill
                brush = Gdip._brush_clone(brush)
                if ((brush).equal?(0))
                  SWT.error(SWT::ERROR_NO_HANDLES)
                end
                Gdip._texture_brush_scale_transform(brush, -1, 1, Gdip::MatrixOrderPrepend)
                @data.attr_gdip_fg_brush = brush
              end
            end
          else
            foreground = @data.attr_foreground
            rgb = ((foreground >> 16) & 0xff) | (foreground & 0xff00) | ((foreground & 0xff) << 16)
            # long
            color = Gdip._color_new(@data.attr_alpha << 24 | rgb)
            if ((color).equal?(0))
              SWT.error(SWT::ERROR_NO_HANDLES)
            end
            brush = Gdip._solid_brush_new(color)
            if ((brush).equal?(0))
              SWT.error(SWT::ERROR_NO_HANDLES)
            end
            Gdip._color_delete(color)
            @data.attr_gdip_fg_brush = brush
          end
          if (!(pen).equal?(0))
            Gdip._pen_set_brush(pen, brush)
          else
            pen = @data.attr_gdip_pen = Gdip._pen_new(brush, width)
          end
        end
        if (!((state & LINE_WIDTH)).equal?(0))
          Gdip._pen_set_width(pen, width)
          case (@data.attr_line_style)
          when SWT::LINE_CUSTOM
            state |= LINE_STYLE
          end
        end
        if (!((state & LINE_STYLE)).equal?(0))
          dashes = nil
          dash_offset = 0
          dash_style = Gdip::DashStyleSolid
          case (@data.attr_line_style)
          when SWT::LINE_SOLID
          when SWT::LINE_DOT
            dash_style = Gdip::DashStyleDot
            if ((width).equal?(0))
              dashes = LINE_DOT_ZERO
            end
          when SWT::LINE_DASH
            dash_style = Gdip::DashStyleDash
            if ((width).equal?(0))
              dashes = LINE_DASH_ZERO
            end
          when SWT::LINE_DASHDOT
            dash_style = Gdip::DashStyleDashDot
            if ((width).equal?(0))
              dashes = LINE_DASHDOT_ZERO
            end
          when SWT::LINE_DASHDOTDOT
            dash_style = Gdip::DashStyleDashDotDot
            if ((width).equal?(0))
              dashes = LINE_DASHDOTDOT_ZERO
            end
          when SWT::LINE_CUSTOM
            if (!(@data.attr_line_dashes).nil?)
              dash_offset = @data.attr_line_dashes_offset / Math.max(1, width)
              dashes = Array.typed(::Java::Float).new(@data.attr_line_dashes.attr_length * 2) { 0.0 }
              i = 0
              while i < @data.attr_line_dashes.attr_length
                dash = @data.attr_line_dashes[i] / Math.max(1, width)
                dashes[i] = dash
                dashes[i + @data.attr_line_dashes.attr_length] = dash
                i += 1
              end
            end
          end
          if (!(dashes).nil?)
            Gdip._pen_set_dash_pattern(pen, dashes, dashes.attr_length)
            Gdip._pen_set_dash_style(pen, Gdip::DashStyleCustom)
            Gdip._pen_set_dash_offset(pen, dash_offset)
          else
            Gdip._pen_set_dash_style(pen, dash_style)
          end
        end
        if (!((state & LINE_MITERLIMIT)).equal?(0))
          Gdip._pen_set_miter_limit(pen, @data.attr_line_miter_limit)
        end
        if (!((state & LINE_JOIN)).equal?(0))
          join_style = 0
          case (@data.attr_line_join)
          when SWT::JOIN_MITER
            join_style = Gdip::LineJoinMiter
          when SWT::JOIN_BEVEL
            join_style = Gdip::LineJoinBevel
          when SWT::JOIN_ROUND
            join_style = Gdip::LineJoinRound
          end
          Gdip._pen_set_line_join(pen, join_style)
        end
        if (!((state & LINE_CAP)).equal?(0))
          dash_cap = Gdip::DashCapFlat
          cap_style = 0
          case (@data.attr_line_cap)
          when SWT::CAP_FLAT
            cap_style = Gdip::LineCapFlat
          when SWT::CAP_ROUND
            cap_style = Gdip::LineCapRound
            dash_cap = Gdip::DashCapRound
          when SWT::CAP_SQUARE
            cap_style = Gdip::LineCapSquare
          end
          Gdip._pen_set_line_cap(pen, cap_style, cap_style, dash_cap)
        end
        if (!((state & BACKGROUND)).equal?(0))
          if (!(@data.attr_gdip_bg_brush).equal?(0))
            Gdip._solid_brush_delete(@data.attr_gdip_bg_brush)
          end
          @data.attr_gdip_bg_brush = 0
          pattern = @data.attr_background_pattern
          if (!(pattern).nil?)
            @data.attr_gdip_brush = pattern.attr_handle
            if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
              case (Gdip._brush_get_type(@data.attr_gdip_brush))
              when Gdip::BrushTypeTextureFill
                # long
                brush = Gdip._brush_clone(@data.attr_gdip_brush)
                if ((brush).equal?(0))
                  SWT.error(SWT::ERROR_NO_HANDLES)
                end
                Gdip._texture_brush_scale_transform(brush, -1, 1, Gdip::MatrixOrderPrepend)
                @data.attr_gdip_brush = @data.attr_gdip_bg_brush = brush
              end
            end
          else
            background = @data.attr_background
            rgb = ((background >> 16) & 0xff) | (background & 0xff00) | ((background & 0xff) << 16)
            # long
            color = Gdip._color_new(@data.attr_alpha << 24 | rgb)
            if ((color).equal?(0))
              SWT.error(SWT::ERROR_NO_HANDLES)
            end
            # long
            brush = Gdip._solid_brush_new(color)
            if ((brush).equal?(0))
              SWT.error(SWT::ERROR_NO_HANDLES)
            end
            Gdip._color_delete(color)
            @data.attr_gdip_brush = @data.attr_gdip_bg_brush = brush
          end
        end
        if (!((state & FONT)).equal?(0))
          font = @data.attr_font
          OS._select_object(@handle, font.attr_handle)
          # long
          gdip_font = create_gdip_font(@handle, font.attr_handle)
          if (!(@data.attr_gdip_font).equal?(0))
            Gdip._font_delete(@data.attr_gdip_font)
          end
          @data.attr_gdip_font = gdip_font
        end
        if (!((state & DRAW_OFFSET)).equal?(0))
          @data.attr_gdip_xoffset = @data.attr_gdip_yoffset = 0
          # long
          matrix = Gdip._matrix_new(1, 0, 0, 1, 0, 0)
          point = Array.typed(::Java::Float).new([1, 1])
          Gdip._graphics_get_transform(gdip_graphics, matrix)
          Gdip._matrix_transform_points(matrix, point, 1)
          Gdip._matrix_delete(matrix)
          scaling = point[0]
          if (scaling < 0)
            scaling = -scaling
          end
          pen_width = @data.attr_line_width * scaling
          if ((pen_width).equal?(0) || ((RJava.cast_to_int(pen_width) % 2)).equal?(1))
            @data.attr_gdip_xoffset = 0.5 / scaling
          end
          scaling = point[1]
          if (scaling < 0)
            scaling = -scaling
          end
          pen_width = @data.attr_line_width * scaling
          if ((pen_width).equal?(0) || ((RJava.cast_to_int(pen_width) % 2)).equal?(1))
            @data.attr_gdip_yoffset = 0.5 / scaling
          end
        end
        return
      end
      if (!((state & (FOREGROUND | LINE_CAP | LINE_JOIN | LINE_STYLE | LINE_WIDTH))).equal?(0))
        color = @data.attr_foreground
        width = RJava.cast_to_int(@data.attr_line_width)
        dashes = nil
        line_style = OS::PS_SOLID
        case (@data.attr_line_style)
        when SWT::LINE_SOLID
        when SWT::LINE_DASH
          line_style = OS::PS_DASH
        when SWT::LINE_DOT
          line_style = OS::PS_DOT
        when SWT::LINE_DASHDOT
          line_style = OS::PS_DASHDOT
        when SWT::LINE_DASHDOTDOT
          line_style = OS::PS_DASHDOTDOT
        when SWT::LINE_CUSTOM
          if (!(@data.attr_line_dashes).nil?)
            line_style = OS::PS_USERSTYLE
            dashes = Array.typed(::Java::Int).new(@data.attr_line_dashes.attr_length) { 0 }
            i = 0
            while i < dashes.attr_length
              dashes[i] = RJava.cast_to_int(@data.attr_line_dashes[i])
              i += 1
            end
          end
        end
        if (!((state & LINE_STYLE)).equal?(0))
          OS._set_bk_mode(@handle, (@data.attr_line_style).equal?(SWT::LINE_SOLID) ? OS::OPAQUE : OS::TRANSPARENT)
        end
        join_style = 0
        case (@data.attr_line_join)
        when SWT::JOIN_MITER
          join_style = OS::PS_JOIN_MITER
        when SWT::JOIN_ROUND
          join_style = OS::PS_JOIN_ROUND
        when SWT::JOIN_BEVEL
          join_style = OS::PS_JOIN_BEVEL
        end
        cap_style = 0
        case (@data.attr_line_cap)
        when SWT::CAP_ROUND
          cap_style = OS::PS_ENDCAP_ROUND
        when SWT::CAP_FLAT
          cap_style = OS::PS_ENDCAP_FLAT
        when SWT::CAP_SQUARE
          cap_style = OS::PS_ENDCAP_SQUARE
        end
        style = line_style | join_style | cap_style
        # Feature in Windows.  Windows does not honour line styles other then
        # PS_SOLID for pens wider than 1 pixel created with CreatePen().  The fix
        # is to use ExtCreatePen() instead.
        # 
        # long
        new_pen = 0
        if (OS::IsWinCE || ((width).equal?(0) && !(line_style).equal?(OS::PS_USERSTYLE)) || (style).equal?(0))
          new_pen = OS._create_pen(style & OS::PS_STYLE_MASK, width, color)
        else
          log_brush = LOGBRUSH.new
          log_brush.attr_lb_style = OS::BS_SOLID
          log_brush.attr_lb_color = color
          # Feature in Windows. PS_GEOMETRIC pens cannot have zero width.
          new_pen = OS._ext_create_pen(style | OS::PS_GEOMETRIC, Math.max(1, width), log_brush, !(dashes).nil? ? dashes.attr_length : 0, dashes)
        end
        OS._select_object(@handle, new_pen)
        @data.attr_state |= PEN
        @data.attr_state &= ~NULL_PEN
        if (!(@data.attr_h_pen).equal?(0))
          OS._delete_object(@data.attr_h_pen)
        end
        @data.attr_h_pen = @data.attr_h_old_pen = new_pen
      else
        if (!((state & PEN)).equal?(0))
          OS._select_object(@handle, @data.attr_h_old_pen)
          @data.attr_state &= ~NULL_PEN
        else
          if (!((state & NULL_PEN)).equal?(0))
            @data.attr_h_old_pen = OS._select_object(@handle, OS._get_stock_object(OS::NULL_PEN))
            @data.attr_state &= ~PEN
          end
        end
      end
      if (!((state & BACKGROUND)).equal?(0))
        # long
        new_brush = OS._create_solid_brush(@data.attr_background)
        OS._select_object(@handle, new_brush)
        @data.attr_state |= BRUSH
        @data.attr_state &= ~NULL_BRUSH
        if (!(@data.attr_h_brush).equal?(0))
          OS._delete_object(@data.attr_h_brush)
        end
        @data.attr_h_old_brush = @data.attr_h_brush = new_brush
      else
        if (!((state & BRUSH)).equal?(0))
          OS._select_object(@handle, @data.attr_h_old_brush)
          @data.attr_state &= ~NULL_BRUSH
        else
          if (!((state & NULL_BRUSH)).equal?(0))
            @data.attr_h_old_brush = OS._select_object(@handle, OS._get_stock_object(OS::NULL_BRUSH))
            @data.attr_state &= ~BRUSH
          end
        end
      end
      if (!((state & BACKGROUND_TEXT)).equal?(0))
        OS._set_bk_color(@handle, @data.attr_background)
      end
      if (!((state & FOREGROUND_TEXT)).equal?(0))
        OS._set_text_color(@handle, @data.attr_foreground)
      end
      if (!((state & FONT)).equal?(0))
        font = @data.attr_font
        OS._select_object(@handle, font.attr_handle)
      end
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
      # Copy the bitmap area
      rect = image.get_bounds
      # long
      mem_hdc = OS._create_compatible_dc(@handle)
      # long
      h_old_bitmap = OS._select_object(mem_hdc, image.attr_handle)
      OS._bit_blt(mem_hdc, 0, 0, rect.attr_width, rect.attr_height, @handle, x, y, OS::SRCCOPY)
      OS._select_object(mem_hdc, h_old_bitmap)
      OS._delete_dc(mem_hdc)
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
      # Feature in WinCE.  The function WindowFromDC is not part of the
      # WinCE SDK.  The fix is to remember the HWND.
      # 
      # long
      hwnd = @data.attr_hwnd
      if ((hwnd).equal?(0))
        OS._bit_blt(@handle, dest_x, dest_y, width, height, @handle, src_x, src_y, OS::SRCCOPY)
      else
        lprc_clip = nil
        # long
        hrgn = OS._create_rect_rgn(0, 0, 0, 0)
        if ((OS._get_clip_rgn(@handle, hrgn)).equal?(1))
          lprc_clip = RECT.new
          OS._get_rgn_box(hrgn, lprc_clip)
        end
        OS._delete_object(hrgn)
        lprc_scroll = RECT.new
        OS._set_rect(lprc_scroll, src_x, src_y, src_x + width, src_y + height)
        flags = paint ? OS::SW_INVALIDATE | OS::SW_ERASE : 0
        res = OS._scroll_window_ex(hwnd, dest_x - src_x, dest_y - src_y, lprc_scroll, lprc_clip, 0, nil, flags)
        # Feature in WinCE.  ScrollWindowEx does not accept combined
        # vertical and horizontal scrolling.  The fix is to do a
        # BitBlt and invalidate the appropriate source area.
        if ((res).equal?(0) && OS::IsWinCE)
          OS._bit_blt(@handle, dest_x, dest_y, width, height, @handle, src_x, src_y, OS::SRCCOPY)
          if (paint)
            delta_x = dest_x - src_x
            delta_y = dest_y - src_y
            disjoint = (dest_x + width < src_x) || (src_x + width < dest_x) || (dest_y + height < src_y) || (src_y + height < dest_y)
            if (disjoint)
              OS._invalidate_rect(hwnd, lprc_scroll, true)
            else
              if (!(delta_x).equal?(0))
                new_x = dest_x - delta_x
                if (delta_x < 0)
                  new_x = dest_x + width
                end
                OS._set_rect(lprc_scroll, new_x, src_y, new_x + Math.abs(delta_x), src_y + height)
                OS._invalidate_rect(hwnd, lprc_scroll, true)
              end
              if (!(delta_y).equal?(0))
                new_y = dest_y - delta_y
                if (delta_y < 0)
                  new_y = dest_y + height
                end
                OS._set_rect(lprc_scroll, src_x, new_y, src_x + width, new_y + Math.abs(delta_y))
                OS._invalidate_rect(hwnd, lprc_scroll, true)
              end
            end
          end
        end
      end
    end
    
    class_module.module_eval {
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def create_gdip_font(h_dc, h_font)
        # long
        font = Gdip._font_new(h_dc, h_font)
        if ((font).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        if (!Gdip._font_is_available(font))
          Gdip._font_delete(font)
          log_font = OS::IsUnicode ? LOGFONTW.new : LOGFONTA.new
          OS._get_object(h_font, LOGFONT.attr_sizeof, log_font)
          size = Math.abs(log_font.attr_lf_height)
          style = Gdip::FontStyleRegular
          if ((log_font.attr_lf_weight).equal?(700))
            style |= Gdip::FontStyleBold
          end
          if (!(log_font.attr_lf_italic).equal?(0))
            style |= Gdip::FontStyleItalic
          end
          chars = nil
          if (OS::IsUnicode)
            chars = (log_font).attr_lf_face_name
          else
            chars = CharArray.new(OS::LF_FACESIZE)
            bytes = (log_font).attr_lf_face_name
            OS._multi_byte_to_wide_char(OS::CP_ACP, OS::MB_PRECOMPOSED, bytes, bytes.attr_length, chars, chars.attr_length)
          end
          index = 0
          while (index < chars.attr_length)
            if ((chars[index]).equal?(0))
              break
            end
            index += 1
          end
          name = String.new(chars, 0, index)
          if (Compatibility.equals_ignore_case(name, "Courier"))
            # $NON-NLS-1$
            name = "Courier New" # $NON-NLS-1$
          end
          buffer = CharArray.new(name.length + 1)
          name.get_chars(0, name.length, buffer, 0)
          font = Gdip._font_new(buffer, size, style, Gdip::UnitPixel, 0)
        end
        if ((font).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        return font
      end
      
      typesig { [::Java::Int] }
      # long
      def destroy_gdip_brush(brush)
        type = Gdip._brush_get_type(brush)
        case (type)
        when Gdip::BrushTypeSolidColor
          Gdip._solid_brush_delete(brush)
        when Gdip::BrushTypeHatchFill
          Gdip._hatch_brush_delete(brush)
        when Gdip::BrushTypeLinearGradient
          Gdip._linear_gradient_brush_delete(brush)
        when Gdip::BrushTypeTextureFill
          Gdip._texture_brush_delete(brush)
        end
      end
    }
    
    typesig { [] }
    # Disposes of the operating system resources associated with
    # the graphics context. Applications must dispose of all GCs
    # which they allocate.
    # 
    # @exception SWTError <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS if not called from the thread that created the drawable</li>
    # </ul>
    def destroy
      gdip = !(@data.attr_gdip_graphics).equal?(0)
      dispose_gdip
      if (gdip && !((@data.attr_style & SWT::MIRRORED)).equal?(0))
        OS._set_layout(@handle, OS._get_layout(@handle) | OS::LAYOUT_RTL)
      end
      # Select stock pen and brush objects and free resources
      if (!(@data.attr_h_pen).equal?(0))
        OS._select_object(@handle, OS._get_stock_object(OS::NULL_PEN))
        OS._delete_object(@data.attr_h_pen)
        @data.attr_h_pen = 0
      end
      if (!(@data.attr_h_brush).equal?(0))
        OS._select_object(@handle, OS._get_stock_object(OS::NULL_BRUSH))
        OS._delete_object(@data.attr_h_brush)
        @data.attr_h_brush = 0
      end
      # Put back the original bitmap into the device context.
      # This will ensure that we have not left a bitmap
      # selected in it when we delete the HDC.
      # 
      # long
      h_null_bitmap = @data.attr_h_null_bitmap
      if (!(h_null_bitmap).equal?(0))
        OS._select_object(@handle, h_null_bitmap)
        @data.attr_h_null_bitmap = 0
      end
      image = @data.attr_image
      if (!(image).nil?)
        image.attr_mem_gc = nil
      end
      # Dispose the HDC.
      if (!(@drawable).nil?)
        @drawable.internal_dispose__gc(@handle, @data)
      end
      @drawable = nil
      @handle = 0
      @data.attr_image = nil
      @data.attr_ps = nil
      @data = nil
    end
    
    typesig { [] }
    def dispose_gdip
      if (!(@data.attr_gdip_pen).equal?(0))
        Gdip._pen_delete(@data.attr_gdip_pen)
      end
      if (!(@data.attr_gdip_bg_brush).equal?(0))
        destroy_gdip_brush(@data.attr_gdip_bg_brush)
      end
      if (!(@data.attr_gdip_fg_brush).equal?(0))
        destroy_gdip_brush(@data.attr_gdip_fg_brush)
      end
      if (!(@data.attr_gdip_font).equal?(0))
        Gdip._font_delete(@data.attr_gdip_font)
      end
      if (!(@data.attr_gdip_graphics).equal?(0))
        Gdip._graphics_delete(@data.attr_gdip_graphics)
      end
      @data.attr_gdip_graphics = @data.attr_gdip_brush = @data.attr_gdip_bg_brush = @data.attr_gdip_fg_brush = @data.attr_gdip_font = @data.attr_gdip_pen = 0
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
      # long
      gdip_graphics = @data.attr_gdip_graphics
      if (!(gdip_graphics).equal?(0))
        Gdip._graphics_translate_transform(gdip_graphics, @data.attr_gdip_xoffset, @data.attr_gdip_yoffset, Gdip::MatrixOrderPrepend)
        if ((width).equal?(height))
          Gdip._graphics_draw_arc(gdip_graphics, @data.attr_gdip_pen, x, y, width, height, -start_angle, -arc_angle)
        else
          # long
          path = Gdip._graphics_path_new(Gdip::FillModeAlternate)
          if ((path).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          # long
          matrix = Gdip._matrix_new(width, 0, 0, height, x, y)
          if ((matrix).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          Gdip._graphics_path_add_arc(path, 0, 0, 1, 1, -start_angle, -arc_angle)
          Gdip._graphics_path_transform(path, matrix)
          Gdip._graphics_draw_path(gdip_graphics, @data.attr_gdip_pen, path)
          Gdip._matrix_delete(matrix)
          Gdip._graphics_path_delete(path)
        end
        Gdip._graphics_translate_transform(gdip_graphics, -@data.attr_gdip_xoffset, -@data.attr_gdip_yoffset, Gdip::MatrixOrderPrepend)
        return
      end
      if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
        if (!(@data.attr_line_width).equal?(0) && (@data.attr_line_width % 2).equal?(0))
          x -= 1
        end
      end
      # Feature in WinCE.  The function Arc is not present in the
      # WinCE SDK.  The fix is to emulate arc drawing by using
      # Polyline.
      if (OS::IsWinCE)
        # compute arc with a simple linear interpolation
        if (arc_angle < 0)
          start_angle += arc_angle
          arc_angle = -arc_angle
        end
        if (arc_angle > 360)
          arc_angle = 360
        end
        points = Array.typed(::Java::Int).new((arc_angle + 1) * 2) { 0 }
        cte_x = 2 * x + width
        cte_y = 2 * y + height
        index = 0
        i = 0
        while i <= arc_angle
          points[((index += 1) - 1)] = (Compatibility.cos(start_angle + i, width) + cte_x) >> 1
          points[((index += 1) - 1)] = (cte_y - Compatibility.sin(start_angle + i, height)) >> 1
          i += 1
        end
        OS._polyline(@handle, points, points.attr_length / 2)
      else
        x1 = 0
        y1 = 0
        x2 = 0
        y2 = 0
        tmp = 0
        is_negative = false
        if (arc_angle >= 360 || arc_angle <= -360)
          x1 = x2 = x + width
          y1 = y2 = y + height / 2
        else
          is_negative = arc_angle < 0
          arc_angle = arc_angle + start_angle
          if (is_negative)
            # swap angles
            tmp = start_angle
            start_angle = arc_angle
            arc_angle = tmp
          end
          x1 = Compatibility.cos(start_angle, width) + x + width / 2
          y1 = -1 * Compatibility.sin(start_angle, height) + y + height / 2
          x2 = Compatibility.cos(arc_angle, width) + x + width / 2
          y2 = -1 * Compatibility.sin(arc_angle, height) + y + height / 2
        end
        OS._arc(@handle, x, y, x + width + 1, y + height + 1, x1, y1, x2, y2)
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
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if (!((@data.attr_ui_state & OS::UISF_HIDEFOCUS)).equal?(0))
        return
      end
      @data.attr_focus_drawn = true
      # long
      hdc = @handle
      state = 0
      # long
      gdip_graphics = @data.attr_gdip_graphics
      if (!(gdip_graphics).equal?(0))
        # long
        clip_rgn = 0
        Gdip._graphics_set_pixel_offset_mode(gdip_graphics, Gdip::PixelOffsetModeNone)
        # long
        rgn = Gdip._region_new
        if ((rgn).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        Gdip._graphics_get_clip(gdip_graphics, rgn)
        if (!Gdip._region_is_infinite(rgn, gdip_graphics))
          clip_rgn = Gdip._region_get_hrgn(rgn, gdip_graphics)
        end
        Gdip._region_delete(rgn)
        Gdip._graphics_set_pixel_offset_mode(gdip_graphics, Gdip::PixelOffsetModeHalf)
        lp_xform = nil
        # long
        matrix = Gdip._matrix_new(1, 0, 0, 1, 0, 0)
        if ((matrix).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        Gdip._graphics_get_transform(gdip_graphics, matrix)
        if (!Gdip._matrix_is_identity(matrix))
          lp_xform = Array.typed(::Java::Float).new(6) { 0.0 }
          Gdip._matrix_get_elements(matrix, lp_xform)
        end
        Gdip._matrix_delete(matrix)
        hdc = Gdip._graphics_get_hdc(gdip_graphics)
        state = OS._save_dc(hdc)
        if (!(lp_xform).nil?)
          OS._set_graphics_mode(hdc, OS::GM_ADVANCED)
          OS._set_world_transform(hdc, lp_xform)
        end
        if (!(clip_rgn).equal?(0))
          OS._select_clip_rgn(hdc, clip_rgn)
          OS._delete_object(clip_rgn)
        end
      end
      OS._set_bk_color(hdc, 0xffffff)
      OS._set_text_color(hdc, 0x0)
      rect = RECT.new
      OS._set_rect(rect, x, y, x + width, y + height)
      OS._draw_focus_rect(hdc, rect)
      if (!(gdip_graphics).equal?(0))
        OS._restore_dc(hdc, state)
        Gdip._graphics_release_hdc(gdip_graphics, hdc)
      else
        @data.attr_state &= ~(BACKGROUND_TEXT | FOREGROUND_TEXT)
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
      if (!(@data.attr_gdip_graphics).equal?(0))
        # TODO - cache bitmap
        # long
        gdip_image = src_image.create_gdip_image
        # long
        img = gdip_image[0]
        img_width = Gdip._image_get_width(img)
        img_height = Gdip._image_get_height(img)
        if (simple)
          src_width = dest_width = img_width
          src_height = dest_height = img_height
        else
          if (src_x + src_width > img_width || src_y + src_height > img_height)
            SWT.error(SWT::ERROR_INVALID_ARGUMENT)
          end
          simple = (src_x).equal?(0) && (src_y).equal?(0) && (src_width).equal?(dest_width) && (dest_width).equal?(img_width) && (src_height).equal?(dest_height) && (dest_height).equal?(img_height)
        end
        rect = Rect.new
        rect.attr_x = dest_x
        rect.attr_y = dest_y
        rect.attr_width = dest_width
        rect.attr_height = dest_height
        # Note that if the wrap mode is not WrapModeTileFlipXY, the scaled image
        # is translucent around the borders.
        # 
        # long
        attrib = Gdip._image_attributes_new
        Gdip._image_attributes_set_wrap_mode(attrib, Gdip::WrapModeTileFlipXY)
        if (!(@data.attr_alpha).equal?(0xff))
          matrix = Array.typed(::Java::Float).new([1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, @data.attr_alpha / (0xff).to_f, 0, 0, 0, 0, 0, 1, ])
          Gdip._image_attributes_set_color_matrix(attrib, matrix, Gdip::ColorMatrixFlagsDefault, Gdip::ColorAdjustTypeBitmap)
        end
        gstate = 0
        if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
          gstate = Gdip._graphics_save(@data.attr_gdip_graphics)
          Gdip._graphics_scale_transform(@data.attr_gdip_graphics, -1, 1, Gdip::MatrixOrderPrepend)
          Gdip._graphics_translate_transform(@data.attr_gdip_graphics, -2 * dest_x - dest_width, 0, Gdip::MatrixOrderPrepend)
        end
        Gdip._graphics_draw_image(@data.attr_gdip_graphics, img, rect, src_x, src_y, src_width, src_height, Gdip::UnitPixel, attrib, 0, 0)
        if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
          Gdip._graphics_restore(@data.attr_gdip_graphics, gstate)
        end
        Gdip._image_attributes_delete(attrib)
        Gdip._bitmap_delete(img)
        if (!(gdip_image[1]).equal?(0))
          # long
          h_heap = OS._get_process_heap
          OS._heap_free(h_heap, 0, gdip_image[1])
        end
        return
      end
      case (src_image.attr_type)
      when SWT::BITMAP
        draw_bitmap(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple)
      when SWT::ICON
        draw_icon(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple)
      end
    end
    
    typesig { [Image, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def draw_icon(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple)
      technology = OS._get_device_caps(@handle, OS::TECHNOLOGY)
      draw_icon_ = true
      flags = OS::DI_NORMAL
      offset_x = 0
      offset_y = 0
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(5, 1))
        if (!((OS._get_layout(@handle) & OS::LAYOUT_RTL)).equal?(0))
          flags |= OS::DI_NOMIRROR
          # Bug in Windows.  For some reason, DrawIconEx() does not take
          # into account the window origin when the DI_NOMIRROR and
          # LAYOUT_RTL are set.  The fix is to set the window origin to
          # (0, 0) and offset the drawing ourselves.
          pt = POINT.new
          OS._get_window_org_ex(@handle, pt)
          offset_x = pt.attr_x
          offset_y = pt.attr_y
        end
      else
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(4, 10))
          draw_icon_ = ((OS._get_layout(@handle) & OS::LAYOUT_RTL)).equal?(0)
        end
      end
      # Simple case: no stretching, entire icon
      if (simple && !(technology).equal?(OS::DT_RASPRINTER) && draw_icon_)
        if (!(offset_x).equal?(0) || !(offset_y).equal?(0))
          OS._set_window_org_ex(@handle, 0, 0, nil)
        end
        OS._draw_icon_ex(@handle, dest_x - offset_x, dest_y - offset_y, src_image.attr_handle, 0, 0, 0, 0, flags)
        if (!(offset_x).equal?(0) || !(offset_y).equal?(0))
          OS._set_window_org_ex(@handle, offset_x, offset_y, nil)
        end
        return
      end
      # Get the icon info
      src_icon_info = ICONINFO.new
      if (OS::IsWinCE)
        Image._get_icon_info(src_image, src_icon_info)
      else
        OS._get_icon_info(src_image.attr_handle, src_icon_info)
      end
      # Get the icon width and height
      # long
      h_bitmap = src_icon_info.attr_hbm_color
      if ((h_bitmap).equal?(0))
        h_bitmap = src_icon_info.attr_hbm_mask
      end
      bm = BITMAP.new
      OS._get_object(h_bitmap, BITMAP.attr_sizeof, bm)
      icon_width = bm.attr_bm_width
      icon_height = bm.attr_bm_height
      if ((h_bitmap).equal?(src_icon_info.attr_hbm_mask))
        icon_height /= 2
      end
      if (simple)
        src_width = dest_width = icon_width
        src_height = dest_height = icon_height
      end
      # Draw the icon
      failed = src_x + src_width > icon_width || src_y + src_height > icon_height
      if (!failed)
        simple = (src_x).equal?(0) && (src_y).equal?(0) && (src_width).equal?(dest_width) && (src_height).equal?(dest_height) && (src_width).equal?(icon_width) && (src_height).equal?(icon_height)
        if (!draw_icon_)
          draw_bitmap_mask(src_image, src_icon_info.attr_hbm_color, src_icon_info.attr_hbm_mask, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, icon_width, icon_height, false)
        else
          if (simple && !(technology).equal?(OS::DT_RASPRINTER))
            # Simple case: no stretching, entire icon
            if (!(offset_x).equal?(0) || !(offset_y).equal?(0))
              OS._set_window_org_ex(@handle, 0, 0, nil)
            end
            OS._draw_icon_ex(@handle, dest_x - offset_x, dest_y - offset_y, src_image.attr_handle, 0, 0, 0, 0, flags)
            if (!(offset_x).equal?(0) || !(offset_y).equal?(0))
              OS._set_window_org_ex(@handle, offset_x, offset_y, nil)
            end
          else
            # Create the icon info and HDC's
            new_icon_info = ICONINFO.new
            new_icon_info.attr_f_icon = true
            # long
            src_hdc = OS._create_compatible_dc(@handle)
            # long
            dst_hdc = OS._create_compatible_dc(@handle)
            # Blt the color bitmap
            src_color_y = src_y
            # long
            src_color = src_icon_info.attr_hbm_color
            if ((src_color).equal?(0))
              src_color = src_icon_info.attr_hbm_mask
              src_color_y += icon_height
            end
            # long
            old_src_bitmap = OS._select_object(src_hdc, src_color)
            new_icon_info.attr_hbm_color = OS._create_compatible_bitmap(src_hdc, dest_width, dest_height)
            if ((new_icon_info.attr_hbm_color).equal?(0))
              SWT.error(SWT::ERROR_NO_HANDLES)
            end
            # long
            old_dest_bitmap = OS._select_object(dst_hdc, new_icon_info.attr_hbm_color)
            stretch = !simple && (!(src_width).equal?(dest_width) || !(src_height).equal?(dest_height))
            if (stretch)
              if (!OS::IsWinCE)
                OS._set_stretch_blt_mode(dst_hdc, OS::COLORONCOLOR)
              end
              OS._stretch_blt(dst_hdc, 0, 0, dest_width, dest_height, src_hdc, src_x, src_color_y, src_width, src_height, OS::SRCCOPY)
            else
              OS._bit_blt(dst_hdc, 0, 0, dest_width, dest_height, src_hdc, src_x, src_color_y, OS::SRCCOPY)
            end
            # Blt the mask bitmap
            OS._select_object(src_hdc, src_icon_info.attr_hbm_mask)
            new_icon_info.attr_hbm_mask = OS._create_bitmap(dest_width, dest_height, 1, 1, nil)
            if ((new_icon_info.attr_hbm_mask).equal?(0))
              SWT.error(SWT::ERROR_NO_HANDLES)
            end
            OS._select_object(dst_hdc, new_icon_info.attr_hbm_mask)
            if (stretch)
              OS._stretch_blt(dst_hdc, 0, 0, dest_width, dest_height, src_hdc, src_x, src_y, src_width, src_height, OS::SRCCOPY)
            else
              OS._bit_blt(dst_hdc, 0, 0, dest_width, dest_height, src_hdc, src_x, src_y, OS::SRCCOPY)
            end
            if ((technology).equal?(OS::DT_RASPRINTER))
              OS._select_object(src_hdc, new_icon_info.attr_hbm_color)
              OS._select_object(dst_hdc, new_icon_info.attr_hbm_mask)
              draw_bitmap_transparent_by_clipping(src_hdc, dst_hdc, 0, 0, dest_width, dest_height, dest_x, dest_y, dest_width, dest_height, true, dest_width, dest_height)
              OS._select_object(src_hdc, old_src_bitmap)
              OS._select_object(dst_hdc, old_dest_bitmap)
            else
              OS._select_object(src_hdc, old_src_bitmap)
              OS._select_object(dst_hdc, old_dest_bitmap)
              # long
              h_icon = OS._create_icon_indirect(new_icon_info)
              if ((h_icon).equal?(0))
                SWT.error(SWT::ERROR_NO_HANDLES)
              end
              if (!(offset_x).equal?(0) || !(offset_y).equal?(0))
                OS._set_window_org_ex(@handle, 0, 0, nil)
              end
              OS._draw_icon_ex(@handle, dest_x - offset_x, dest_y - offset_y, h_icon, dest_width, dest_height, 0, 0, flags)
              if (!(offset_x).equal?(0) || !(offset_y).equal?(0))
                OS._set_window_org_ex(@handle, offset_x, offset_y, nil)
              end
              OS._destroy_icon(h_icon)
            end
            # Destroy the new icon src and mask and hdc's
            OS._delete_object(new_icon_info.attr_hbm_mask)
            OS._delete_object(new_icon_info.attr_hbm_color)
            OS._delete_dc(dst_hdc)
            OS._delete_dc(src_hdc)
          end
        end
      end
      # Free icon info
      OS._delete_object(src_icon_info.attr_hbm_mask)
      if (!(src_icon_info.attr_hbm_color).equal?(0))
        OS._delete_object(src_icon_info.attr_hbm_color)
      end
      if (failed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
    end
    
    typesig { [Image, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def draw_bitmap(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple)
      bm = BITMAP.new
      OS._get_object(src_image.attr_handle, BITMAP.attr_sizeof, bm)
      img_width = bm.attr_bm_width
      img_height = bm.attr_bm_height
      if (simple)
        src_width = dest_width = img_width
        src_height = dest_height = img_height
      else
        if (src_x + src_width > img_width || src_y + src_height > img_height)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        simple = (src_x).equal?(0) && (src_y).equal?(0) && (src_width).equal?(dest_width) && (dest_width).equal?(img_width) && (src_height).equal?(dest_height) && (dest_height).equal?(img_height)
      end
      must_restore = false
      mem_gc = src_image.attr_mem_gc
      if (!(mem_gc).nil? && !mem_gc.is_disposed)
        mem_gc.flush
        must_restore = true
        data = mem_gc.attr_data
        if (!(data.attr_h_null_bitmap).equal?(0))
          OS._select_object(mem_gc.attr_handle, data.attr_h_null_bitmap)
          data.attr_h_null_bitmap = 0
        end
      end
      if (!(src_image.attr_alpha).equal?(-1) || !(src_image.attr_alpha_data).nil?)
        draw_bitmap_alpha(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, bm, img_width, img_height)
      else
        if (!(src_image.attr_transparent_pixel).equal?(-1))
          draw_bitmap_transparent(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, bm, img_width, img_height)
        else
          draw_bitmap(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, bm, img_width, img_height)
        end
      end
      if (must_restore)
        # long
        h_old_bitmap = OS._select_object(mem_gc.attr_handle, src_image.attr_handle)
        mem_gc.attr_data.attr_h_null_bitmap = h_old_bitmap
      end
    end
    
    typesig { [Image, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, BITMAP, ::Java::Int, ::Java::Int] }
    def draw_bitmap_alpha(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, bm, img_width, img_height)
      # Simple cases
      if ((src_image.attr_alpha).equal?(0))
        return
      end
      if ((src_image.attr_alpha).equal?(255))
        draw_bitmap(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, bm, img_width, img_height)
        return
      end
      if (OS::IsWinNT && OS::WIN32_VERSION >= OS._version(4, 10))
        blend = BLENDFUNCTION.new
        blend.attr_blend_op = OS::AC_SRC_OVER
        # long
        src_hdc = OS._create_compatible_dc(@handle)
        # long
        old_src_bitmap = OS._select_object(src_hdc, src_image.attr_handle)
        if (!(src_image.attr_alpha).equal?(-1))
          blend.attr_source_constant_alpha = src_image.attr_alpha
          OS._alpha_blend(@handle, dest_x, dest_y, dest_width, dest_height, src_hdc, src_x, src_y, src_width, src_height, blend)
        else
          # long
          mem_dib = Image.create_dib(src_width, src_height, 32)
          if ((mem_dib).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          # long
          mem_hdc = OS._create_compatible_dc(@handle)
          # long
          old_mem_bitmap = OS._select_object(mem_hdc, mem_dib)
          dib_bm = BITMAP.new
          OS._get_object(mem_dib, BITMAP.attr_sizeof, dib_bm)
          OS._bit_blt(mem_hdc, 0, 0, src_width, src_height, src_hdc, src_x, src_y, OS::SRCCOPY)
          src_data = Array.typed(::Java::Byte).new(dib_bm.attr_bm_width_bytes * dib_bm.attr_bm_height) { 0 }
          OS._move_memory(src_data, dib_bm.attr_bm_bits, src_data.attr_length)
          apinc = img_width - src_width
          ap = src_y * img_width + src_x
          sp = 0
          alpha_data = src_image.attr_alpha_data
          y = 0
          while y < src_height
            x = 0
            while x < src_width
              alpha = alpha_data[((ap += 1) - 1)] & 0xff
              r = ((src_data[sp + 0] & 0xff) * alpha) + 128
              r = (r + (r >> 8)) >> 8
              g = ((src_data[sp + 1] & 0xff) * alpha) + 128
              g = (g + (g >> 8)) >> 8
              b = ((src_data[sp + 2] & 0xff) * alpha) + 128
              b = (b + (b >> 8)) >> 8
              src_data[sp + 0] = r
              src_data[sp + 1] = g
              src_data[sp + 2] = b
              src_data[sp + 3] = alpha
              sp += 4
              (x += 1)
            end
            ap += apinc
            (y += 1)
          end
          OS._move_memory(dib_bm.attr_bm_bits, src_data, src_data.attr_length)
          blend.attr_source_constant_alpha = 0xff
          blend.attr_alpha_format = OS::AC_SRC_ALPHA
          OS._alpha_blend(@handle, dest_x, dest_y, dest_width, dest_height, mem_hdc, 0, 0, src_width, src_height, blend)
          OS._select_object(mem_hdc, old_mem_bitmap)
          OS._delete_dc(mem_hdc)
          OS._delete_object(mem_dib)
        end
        OS._select_object(src_hdc, old_src_bitmap)
        OS._delete_dc(src_hdc)
        return
      end
      # Check clipping
      rect = get_clipping
      rect = rect.intersection(Rectangle.new(dest_x, dest_y, dest_width, dest_height))
      if (rect.is_empty)
        return
      end
      # Optimization.  Recalculate src and dest rectangles so that
      # only the clipping area is drawn.
      sx1 = src_x + (((rect.attr_x - dest_x) * src_width) / dest_width)
      sx2 = src_x + ((((rect.attr_x + rect.attr_width) - dest_x) * src_width) / dest_width)
      sy1 = src_y + (((rect.attr_y - dest_y) * src_height) / dest_height)
      sy2 = src_y + ((((rect.attr_y + rect.attr_height) - dest_y) * src_height) / dest_height)
      dest_x = rect.attr_x
      dest_y = rect.attr_y
      dest_width = rect.attr_width
      dest_height = rect.attr_height
      src_x = sx1
      src_y = sy1
      src_width = Math.max(1, sx2 - sx1)
      src_height = Math.max(1, sy2 - sy1)
      # Create resources
      # long
      src_hdc = OS._create_compatible_dc(@handle)
      # long
      old_src_bitmap = OS._select_object(src_hdc, src_image.attr_handle)
      # long
      mem_hdc = OS._create_compatible_dc(@handle)
      # long
      mem_dib = Image.create_dib(Math.max(src_width, dest_width), Math.max(src_height, dest_height), 32)
      if ((mem_dib).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      # long
      old_mem_bitmap = OS._select_object(mem_hdc, mem_dib)
      dib_bm = BITMAP.new
      OS._get_object(mem_dib, BITMAP.attr_sizeof, dib_bm)
      size_in_bytes = dib_bm.attr_bm_width_bytes * dib_bm.attr_bm_height
      # Get the background pixels
      OS._bit_blt(mem_hdc, 0, 0, dest_width, dest_height, @handle, dest_x, dest_y, OS::SRCCOPY)
      dest_data = Array.typed(::Java::Byte).new(size_in_bytes) { 0 }
      OS._move_memory(dest_data, dib_bm.attr_bm_bits, size_in_bytes)
      # Get the foreground pixels
      OS._bit_blt(mem_hdc, 0, 0, src_width, src_height, src_hdc, src_x, src_y, OS::SRCCOPY)
      src_data = Array.typed(::Java::Byte).new(size_in_bytes) { 0 }
      OS._move_memory(src_data, dib_bm.attr_bm_bits, size_in_bytes)
      # Merge the alpha channel in place
      alpha = src_image.attr_alpha
      has_alpha_channel = ((src_image.attr_alpha).equal?(-1))
      if (has_alpha_channel)
        apinc = img_width - src_width
        spinc = dib_bm.attr_bm_width_bytes - src_width * 4
        ap = src_y * img_width + src_x
        sp = 3
        alpha_data = src_image.attr_alpha_data
        y = 0
        while y < src_height
          x = 0
          while x < src_width
            src_data[sp] = alpha_data[((ap += 1) - 1)]
            sp += 4
            (x += 1)
          end
          ap += apinc
          sp += spinc
          (y += 1)
        end
      end
      # Scale the foreground pixels with alpha
      OS._move_memory(dib_bm.attr_bm_bits, src_data, size_in_bytes)
      # Bug in WinCE and Win98.  StretchBlt does not correctly stretch when
      # the source and destination HDCs are the same.  The workaround is to
      # stretch to a temporary HDC and blit back into the original HDC.
      # Note that on WinCE StretchBlt correctly compresses the image when the
      # source and destination HDCs are the same.
      if ((OS::IsWinCE && (dest_width > src_width || dest_height > src_height)) || (!OS::IsWinNT && !OS::IsWinCE))
        # long
        temp_hdc = OS._create_compatible_dc(@handle)
        # long
        temp_dib = Image.create_dib(dest_width, dest_height, 32)
        if ((temp_dib).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        # long
        old_temp_bitmap = OS._select_object(temp_hdc, temp_dib)
        if (!simple && (!(src_width).equal?(dest_width) || !(src_height).equal?(dest_height)))
          if (!OS::IsWinCE)
            OS._set_stretch_blt_mode(mem_hdc, OS::COLORONCOLOR)
          end
          OS._stretch_blt(temp_hdc, 0, 0, dest_width, dest_height, mem_hdc, 0, 0, src_width, src_height, OS::SRCCOPY)
        else
          OS._bit_blt(temp_hdc, 0, 0, dest_width, dest_height, mem_hdc, 0, 0, OS::SRCCOPY)
        end
        OS._bit_blt(mem_hdc, 0, 0, dest_width, dest_height, temp_hdc, 0, 0, OS::SRCCOPY)
        OS._select_object(temp_hdc, old_temp_bitmap)
        OS._delete_object(temp_dib)
        OS._delete_dc(temp_hdc)
      else
        if (!simple && (!(src_width).equal?(dest_width) || !(src_height).equal?(dest_height)))
          if (!OS::IsWinCE)
            OS._set_stretch_blt_mode(mem_hdc, OS::COLORONCOLOR)
          end
          OS._stretch_blt(mem_hdc, 0, 0, dest_width, dest_height, mem_hdc, 0, 0, src_width, src_height, OS::SRCCOPY)
        else
          OS._bit_blt(mem_hdc, 0, 0, dest_width, dest_height, mem_hdc, 0, 0, OS::SRCCOPY)
        end
      end
      OS._move_memory(src_data, dib_bm.attr_bm_bits, size_in_bytes)
      # Compose the pixels
      dpinc = dib_bm.attr_bm_width_bytes - dest_width * 4
      dp = 0
      y = 0
      while y < dest_height
        x = 0
        while x < dest_width
          if (has_alpha_channel)
            alpha = src_data[dp + 3] & 0xff
          end
          dest_data[dp] += ((src_data[dp] & 0xff) - (dest_data[dp] & 0xff)) * alpha / 255
          dest_data[dp + 1] += ((src_data[dp + 1] & 0xff) - (dest_data[dp + 1] & 0xff)) * alpha / 255
          dest_data[dp + 2] += ((src_data[dp + 2] & 0xff) - (dest_data[dp + 2] & 0xff)) * alpha / 255
          dp += 4
          (x += 1)
        end
        dp += dpinc
        (y += 1)
      end
      # Draw the composed pixels
      OS._move_memory(dib_bm.attr_bm_bits, dest_data, size_in_bytes)
      OS._bit_blt(@handle, dest_x, dest_y, dest_width, dest_height, mem_hdc, 0, 0, OS::SRCCOPY)
      # Free resources
      OS._select_object(mem_hdc, old_mem_bitmap)
      OS._delete_dc(mem_hdc)
      OS._delete_object(mem_dib)
      OS._select_object(src_hdc, old_src_bitmap)
      OS._delete_dc(src_hdc)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int] }
    # long
    # long
    def draw_bitmap_transparent_by_clipping(src_hdc, mask_hdc, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, img_width, img_height)
      # Create a clipping region from the mask
      # long
      rgn = OS._create_rect_rgn(0, 0, 0, 0)
      y = 0
      while y < img_height
        x = 0
        while x < img_width
          if ((OS._get_pixel(mask_hdc, x, y)).equal?(0))
            # long
            temp_rgn = OS._create_rect_rgn(x, y, x + 1, y + 1)
            OS._combine_rgn(rgn, rgn, temp_rgn, OS::RGN_OR)
            OS._delete_object(temp_rgn)
          end
          x += 1
        end
        y += 1
      end
      # Stretch the clipping mask if needed
      if (!(dest_width).equal?(src_width) || !(dest_height).equal?(src_height))
        n_bytes = OS._get_region_data(rgn, 0, nil)
        lp_rgn_data = Array.typed(::Java::Int).new(n_bytes / 4) { 0 }
        OS._get_region_data(rgn, n_bytes, lp_rgn_data)
        lp_xform = Array.typed(::Java::Float).new([(dest_width).to_f / src_width, 0, 0, (dest_height).to_f / src_height, 0, 0])
        # long
        tmp_rgn = OS._ext_create_region(lp_xform, n_bytes, lp_rgn_data)
        OS._delete_object(rgn)
        rgn = tmp_rgn
      end
      OS._offset_rgn(rgn, dest_x, dest_y)
      # long
      clip = OS._create_rect_rgn(0, 0, 0, 0)
      result = OS._get_clip_rgn(@handle, clip)
      if ((result).equal?(1))
        OS._combine_rgn(rgn, rgn, clip, OS::RGN_AND)
      end
      OS._select_clip_rgn(@handle, rgn)
      rop2 = 0
      if (!OS::IsWinCE)
        rop2 = OS._get_rop2(@handle)
      else
        rop2 = OS._set_rop2(@handle, OS::R2_COPYPEN)
        OS._set_rop2(@handle, rop2)
      end
      dw_rop = (rop2).equal?(OS::R2_XORPEN) ? OS::SRCINVERT : OS::SRCCOPY
      if (!simple && (!(src_width).equal?(dest_width) || !(src_height).equal?(dest_height)))
        mode = 0
        if (!OS::IsWinCE)
          mode = OS._set_stretch_blt_mode(@handle, OS::COLORONCOLOR)
        end
        OS._stretch_blt(@handle, dest_x, dest_y, dest_width, dest_height, src_hdc, src_x, src_y, src_width, src_height, dw_rop)
        if (!OS::IsWinCE)
          OS._set_stretch_blt_mode(@handle, mode)
        end
      else
        OS._bit_blt(@handle, dest_x, dest_y, dest_width, dest_height, src_hdc, src_x, src_y, dw_rop)
      end
      OS._select_clip_rgn(@handle, (result).equal?(1) ? clip : 0)
      OS._delete_object(clip)
      OS._delete_object(rgn)
    end
    
    typesig { [Image, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    # long
    # long
    def draw_bitmap_mask(src_image, src_color, src_mask, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, img_width, img_height, offscreen)
      src_color_y = src_y
      if ((src_color).equal?(0))
        src_color = src_mask
        src_color_y += img_height
      end
      # long
      src_hdc = OS._create_compatible_dc(@handle)
      # long
      old_src_bitmap = OS._select_object(src_hdc, src_color)
      # long
      dest_hdc = @handle
      x = dest_x
      y = dest_y
      # long
      temp_hdc = 0
      temp_bitmap = 0
      old_temp_bitmap = 0
      old_bk_color = 0
      old_text_color = 0
      if (offscreen)
        temp_hdc = OS._create_compatible_dc(@handle)
        temp_bitmap = OS._create_compatible_bitmap(@handle, dest_width, dest_height)
        old_temp_bitmap = OS._select_object(temp_hdc, temp_bitmap)
        OS._bit_blt(temp_hdc, 0, 0, dest_width, dest_height, @handle, dest_x, dest_y, OS::SRCCOPY)
        dest_hdc = temp_hdc
        x = y = 0
      else
        old_bk_color = OS._set_bk_color(@handle, 0xffffff)
        old_text_color = OS._set_text_color(@handle, 0)
      end
      if (!simple && (!(src_width).equal?(dest_width) || !(src_height).equal?(dest_height)))
        mode = 0
        if (!OS::IsWinCE)
          mode = OS._set_stretch_blt_mode(@handle, OS::COLORONCOLOR)
        end
        OS._stretch_blt(dest_hdc, x, y, dest_width, dest_height, src_hdc, src_x, src_color_y, src_width, src_height, OS::SRCINVERT)
        OS._select_object(src_hdc, src_mask)
        OS._stretch_blt(dest_hdc, x, y, dest_width, dest_height, src_hdc, src_x, src_y, src_width, src_height, OS::SRCAND)
        OS._select_object(src_hdc, src_color)
        OS._stretch_blt(dest_hdc, x, y, dest_width, dest_height, src_hdc, src_x, src_color_y, src_width, src_height, OS::SRCINVERT)
        if (!OS::IsWinCE)
          OS._set_stretch_blt_mode(@handle, mode)
        end
      else
        OS._bit_blt(dest_hdc, x, y, dest_width, dest_height, src_hdc, src_x, src_color_y, OS::SRCINVERT)
        OS._set_text_color(dest_hdc, 0)
        OS._select_object(src_hdc, src_mask)
        OS._bit_blt(dest_hdc, x, y, dest_width, dest_height, src_hdc, src_x, src_y, OS::SRCAND)
        OS._select_object(src_hdc, src_color)
        OS._bit_blt(dest_hdc, x, y, dest_width, dest_height, src_hdc, src_x, src_color_y, OS::SRCINVERT)
      end
      if (offscreen)
        OS._bit_blt(@handle, dest_x, dest_y, dest_width, dest_height, temp_hdc, 0, 0, OS::SRCCOPY)
        OS._select_object(temp_hdc, old_temp_bitmap)
        OS._delete_dc(temp_hdc)
        OS._delete_object(temp_bitmap)
      else
        OS._set_bk_color(@handle, old_bk_color)
        OS._set_text_color(@handle, old_text_color)
      end
      OS._select_object(src_hdc, old_src_bitmap)
      OS._delete_dc(src_hdc)
    end
    
    typesig { [Image, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, BITMAP, ::Java::Int, ::Java::Int] }
    def draw_bitmap_transparent(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, bm, img_width, img_height)
      # Find the RGB values for the transparent pixel.
      is_dib = !(bm.attr_bm_bits).equal?(0)
      # long
      h_bitmap = src_image.attr_handle
      # long
      src_hdc = OS._create_compatible_dc(@handle)
      # long
      old_src_bitmap = OS._select_object(src_hdc, h_bitmap)
      original_colors = nil
      transparent_color = src_image.attr_transparent_color
      if ((transparent_color).equal?(-1))
        trans_blue = 0
        trans_green = 0
        trans_red = 0
        fix_palette = false
        if (bm.attr_bm_bits_pixel <= 8)
          if (is_dib)
            # Palette-based DIBSECTION
            if (OS::IsWinCE)
              p_bits = Array.typed(::Java::Byte).new(1) { 0 }
              OS._move_memory(p_bits, bm.attr_bm_bits, 1)
              old_value = p_bits[0]
              mask = (0xff << (8 - bm.attr_bm_bits_pixel)) & 0xff
              p_bits[0] = ((src_image.attr_transparent_pixel << (8 - bm.attr_bm_bits_pixel)) | (p_bits[0] & ~mask))
              OS._move_memory(bm.attr_bm_bits, p_bits, 1)
              color = OS._get_pixel(src_hdc, 0, 0)
              p_bits[0] = old_value
              OS._move_memory(bm.attr_bm_bits, p_bits, 1)
              trans_blue = (color & 0xff0000) >> 16
              trans_green = (color & 0xff00) >> 8
              trans_red = color & 0xff
            else
              max_colors = 1 << bm.attr_bm_bits_pixel
              old_colors = Array.typed(::Java::Byte).new(max_colors * 4) { 0 }
              OS._get_dibcolor_table(src_hdc, 0, max_colors, old_colors)
              offset = src_image.attr_transparent_pixel * 4
              i = 0
              while i < old_colors.attr_length
                if (!(i).equal?(offset))
                  if ((old_colors[offset]).equal?(old_colors[i]) && (old_colors[offset + 1]).equal?(old_colors[i + 1]) && (old_colors[offset + 2]).equal?(old_colors[i + 2]))
                    fix_palette = true
                    break
                  end
                end
                i += 4
              end
              if (fix_palette)
                new_colors = Array.typed(::Java::Byte).new(old_colors.attr_length) { 0 }
                trans_red = trans_green = trans_blue = 0xff
                new_colors[offset] = trans_blue
                new_colors[offset + 1] = trans_green
                new_colors[offset + 2] = trans_red
                OS._set_dibcolor_table(src_hdc, 0, max_colors, new_colors)
                original_colors = old_colors
              else
                trans_blue = old_colors[offset] & 0xff
                trans_green = old_colors[offset + 1] & 0xff
                trans_red = old_colors[offset + 2] & 0xff
              end
            end
          else
            # Palette-based bitmap
            num_colors = 1 << bm.attr_bm_bits_pixel
            # Set the few fields necessary to get the RGB data out
            bmi_header = BITMAPINFOHEADER.new
            bmi_header.attr_bi_size = BITMAPINFOHEADER.attr_sizeof
            bmi_header.attr_bi_planes = bm.attr_bm_planes
            bmi_header.attr_bi_bit_count = bm.attr_bm_bits_pixel
            bmi = Array.typed(::Java::Byte).new(BITMAPINFOHEADER.attr_sizeof + num_colors * 4) { 0 }
            OS._move_memory(bmi, bmi_header, BITMAPINFOHEADER.attr_sizeof)
            if (OS::IsWinCE)
              SWT.error(SWT::ERROR_NOT_IMPLEMENTED)
            end
            OS._get_dibits(src_hdc, src_image.attr_handle, 0, 0, 0, bmi, OS::DIB_RGB_COLORS)
            offset = BITMAPINFOHEADER.attr_sizeof + 4 * src_image.attr_transparent_pixel
            trans_red = bmi[offset + 2] & 0xff
            trans_green = bmi[offset + 1] & 0xff
            trans_blue = bmi[offset] & 0xff
          end
        else
          # Direct color image
          pixel = src_image.attr_transparent_pixel
          case (bm.attr_bm_bits_pixel)
          when 16
            trans_blue = (pixel & 0x1f) << 3
            trans_green = (pixel & 0x3e0) >> 2
            trans_red = (pixel & 0x7c00) >> 7
          when 24
            trans_blue = (pixel & 0xff0000) >> 16
            trans_green = (pixel & 0xff00) >> 8
            trans_red = pixel & 0xff
          when 32
            trans_blue = (pixel & -0x1000000) >> 24
            trans_green = (pixel & 0xff0000) >> 16
            trans_red = (pixel & 0xff00) >> 8
          end
        end
        transparent_color = trans_blue << 16 | trans_green << 8 | trans_red
        if (!fix_palette)
          src_image.attr_transparent_color = transparent_color
        end
      end
      if (OS::IsWinCE)
        # Note in WinCE. TransparentImage uses the first entry of a palette
        # based image when there are multiple entries that have the same
        # transparent color.
        OS._transparent_image(@handle, dest_x, dest_y, dest_width, dest_height, src_hdc, src_x, src_y, src_width, src_height, transparent_color)
      else
        if ((original_colors).nil? && OS::IsWinNT && OS::WIN32_VERSION >= OS._version(4, 10))
          mode = OS._set_stretch_blt_mode(@handle, OS::COLORONCOLOR)
          OS._transparent_blt(@handle, dest_x, dest_y, dest_width, dest_height, src_hdc, src_x, src_y, src_width, src_height, transparent_color)
          OS._set_stretch_blt_mode(@handle, mode)
        else
          # Create the mask for the source image
          # long
          mask_hdc = OS._create_compatible_dc(@handle)
          # long
          mask_bitmap = OS._create_bitmap(img_width, img_height, 1, 1, nil)
          # long
          old_mask_bitmap = OS._select_object(mask_hdc, mask_bitmap)
          OS._set_bk_color(src_hdc, transparent_color)
          OS._bit_blt(mask_hdc, 0, 0, img_width, img_height, src_hdc, 0, 0, OS::SRCCOPY)
          if (!(original_colors).nil?)
            OS._set_dibcolor_table(src_hdc, 0, 1 << bm.attr_bm_bits_pixel, original_colors)
          end
          if ((OS._get_device_caps(@handle, OS::TECHNOLOGY)).equal?(OS::DT_RASPRINTER))
            # Most printers do not support BitBlt(), draw the source bitmap transparently using clipping
            draw_bitmap_transparent_by_clipping(src_hdc, mask_hdc, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, img_width, img_height)
          else
            # Draw the source bitmap transparently using invert/and mask/invert
            # long
            temp_hdc = OS._create_compatible_dc(@handle)
            # long
            temp_bitmap = OS._create_compatible_bitmap(@handle, dest_width, dest_height)
            # long
            old_temp_bitmap = OS._select_object(temp_hdc, temp_bitmap)
            OS._bit_blt(temp_hdc, 0, 0, dest_width, dest_height, @handle, dest_x, dest_y, OS::SRCCOPY)
            if (!simple && (!(src_width).equal?(dest_width) || !(src_height).equal?(dest_height)))
              if (!OS::IsWinCE)
                OS._set_stretch_blt_mode(temp_hdc, OS::COLORONCOLOR)
              end
              OS._stretch_blt(temp_hdc, 0, 0, dest_width, dest_height, src_hdc, src_x, src_y, src_width, src_height, OS::SRCINVERT)
              OS._stretch_blt(temp_hdc, 0, 0, dest_width, dest_height, mask_hdc, src_x, src_y, src_width, src_height, OS::SRCAND)
              OS._stretch_blt(temp_hdc, 0, 0, dest_width, dest_height, src_hdc, src_x, src_y, src_width, src_height, OS::SRCINVERT)
            else
              OS._bit_blt(temp_hdc, 0, 0, dest_width, dest_height, src_hdc, src_x, src_y, OS::SRCINVERT)
              OS._bit_blt(temp_hdc, 0, 0, dest_width, dest_height, mask_hdc, src_x, src_y, OS::SRCAND)
              OS._bit_blt(temp_hdc, 0, 0, dest_width, dest_height, src_hdc, src_x, src_y, OS::SRCINVERT)
            end
            OS._bit_blt(@handle, dest_x, dest_y, dest_width, dest_height, temp_hdc, 0, 0, OS::SRCCOPY)
            OS._select_object(temp_hdc, old_temp_bitmap)
            OS._delete_dc(temp_hdc)
            OS._delete_object(temp_bitmap)
          end
          OS._select_object(mask_hdc, old_mask_bitmap)
          OS._delete_dc(mask_hdc)
          OS._delete_object(mask_bitmap)
        end
      end
      OS._select_object(src_hdc, old_src_bitmap)
      if (!(h_bitmap).equal?(src_image.attr_handle))
        OS._delete_object(h_bitmap)
      end
      OS._delete_dc(src_hdc)
    end
    
    typesig { [Image, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, BITMAP, ::Java::Int, ::Java::Int] }
    def draw_bitmap(src_image, src_x, src_y, src_width, src_height, dest_x, dest_y, dest_width, dest_height, simple, bm, img_width, img_height)
      # long
      src_hdc = OS._create_compatible_dc(@handle)
      # long
      old_src_bitmap = OS._select_object(src_hdc, src_image.attr_handle)
      rop2 = 0
      if (!OS::IsWinCE)
        rop2 = OS._get_rop2(@handle)
      else
        rop2 = OS._set_rop2(@handle, OS::R2_COPYPEN)
        OS._set_rop2(@handle, rop2)
      end
      dw_rop = (rop2).equal?(OS::R2_XORPEN) ? OS::SRCINVERT : OS::SRCCOPY
      if (!simple && (!(src_width).equal?(dest_width) || !(src_height).equal?(dest_height)))
        mode = 0
        if (!OS::IsWinCE)
          mode = OS._set_stretch_blt_mode(@handle, OS::COLORONCOLOR)
        end
        OS._stretch_blt(@handle, dest_x, dest_y, dest_width, dest_height, src_hdc, src_x, src_y, src_width, src_height, dw_rop)
        if (!OS::IsWinCE)
          OS._set_stretch_blt_mode(@handle, mode)
        end
      else
        OS._bit_blt(@handle, dest_x, dest_y, dest_width, dest_height, src_hdc, src_x, src_y, dw_rop)
      end
      OS._select_object(src_hdc, old_src_bitmap)
      OS._delete_dc(src_hdc)
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
      # long
      gdip_graphics = @data.attr_gdip_graphics
      if (!(gdip_graphics).equal?(0))
        Gdip._graphics_translate_transform(gdip_graphics, @data.attr_gdip_xoffset, @data.attr_gdip_yoffset, Gdip::MatrixOrderPrepend)
        Gdip._graphics_draw_line(gdip_graphics, @data.attr_gdip_pen, x1, y1, x2, y2)
        Gdip._graphics_translate_transform(gdip_graphics, -@data.attr_gdip_xoffset, -@data.attr_gdip_yoffset, Gdip::MatrixOrderPrepend)
        return
      end
      if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
        if (!(@data.attr_line_width).equal?(0) && (@data.attr_line_width % 2).equal?(0))
          x1 -= 1
          x2 -= 1
        end
      end
      if (OS::IsWinCE)
        points = Array.typed(::Java::Int).new([x1, y1, x2, y2])
        OS._polyline(@handle, points, points.attr_length / 2)
      else
        OS._move_to_ex(@handle, x1, y1, 0)
        OS._line_to(@handle, x2, y2)
      end
      if (@data.attr_line_width <= 1)
        OS._set_pixel(@handle, x2, y2, @data.attr_foreground)
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
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      check_gc(DRAW)
      # long
      gdip_graphics = @data.attr_gdip_graphics
      if (!(gdip_graphics).equal?(0))
        Gdip._graphics_translate_transform(gdip_graphics, @data.attr_gdip_xoffset, @data.attr_gdip_yoffset, Gdip::MatrixOrderPrepend)
        Gdip._graphics_draw_ellipse(gdip_graphics, @data.attr_gdip_pen, x, y, width, height)
        Gdip._graphics_translate_transform(gdip_graphics, -@data.attr_gdip_xoffset, -@data.attr_gdip_yoffset, Gdip::MatrixOrderPrepend)
        return
      end
      if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
        if (!(@data.attr_line_width).equal?(0) && (@data.attr_line_width % 2).equal?(0))
          x -= 1
        end
      end
      OS._ellipse(@handle, x, y, x + width + 1, y + height + 1)
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
      init_gdip
      check_gc(DRAW)
      # long
      gdip_graphics = @data.attr_gdip_graphics
      Gdip._graphics_translate_transform(gdip_graphics, @data.attr_gdip_xoffset, @data.attr_gdip_yoffset, Gdip::MatrixOrderPrepend)
      Gdip._graphics_draw_path(gdip_graphics, @data.attr_gdip_pen, path.attr_handle)
      Gdip._graphics_translate_transform(gdip_graphics, -@data.attr_gdip_xoffset, -@data.attr_gdip_yoffset, Gdip::MatrixOrderPrepend)
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
      if (!(@data.attr_gdip_graphics).equal?(0))
        check_gc(DRAW)
        Gdip._graphics_fill_rectangle(@data.attr_gdip_graphics, get_fg_brush, x, y, 1, 1)
        return
      end
      OS._set_pixel(@handle, x, y, @data.attr_foreground)
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
      # long
      gdip_graphics = @data.attr_gdip_graphics
      if (!(gdip_graphics).equal?(0))
        Gdip._graphics_translate_transform(gdip_graphics, @data.attr_gdip_xoffset, @data.attr_gdip_yoffset, Gdip::MatrixOrderPrepend)
        Gdip._graphics_draw_polygon(gdip_graphics, @data.attr_gdip_pen, point_array, point_array.attr_length / 2)
        Gdip._graphics_translate_transform(gdip_graphics, -@data.attr_gdip_xoffset, -@data.attr_gdip_yoffset, Gdip::MatrixOrderPrepend)
        return
      end
      if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
        if (!(@data.attr_line_width).equal?(0) && (@data.attr_line_width % 2).equal?(0))
          i = 0
          while i < point_array.attr_length
            point_array[i] -= 1
            i += 2
          end
        end
      end
      OS._polygon(@handle, point_array, point_array.attr_length / 2)
      if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
        if (!(@data.attr_line_width).equal?(0) && (@data.attr_line_width % 2).equal?(0))
          i = 0
          while i < point_array.attr_length
            point_array[i] += 1
            i += 2
          end
        end
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
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((point_array).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      check_gc(DRAW)
      # long
      gdip_graphics = @data.attr_gdip_graphics
      if (!(gdip_graphics).equal?(0))
        Gdip._graphics_translate_transform(gdip_graphics, @data.attr_gdip_xoffset, @data.attr_gdip_yoffset, Gdip::MatrixOrderPrepend)
        Gdip._graphics_draw_lines(gdip_graphics, @data.attr_gdip_pen, point_array, point_array.attr_length / 2)
        Gdip._graphics_translate_transform(gdip_graphics, -@data.attr_gdip_xoffset, -@data.attr_gdip_yoffset, Gdip::MatrixOrderPrepend)
        return
      end
      if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
        if (!(@data.attr_line_width).equal?(0) && (@data.attr_line_width % 2).equal?(0))
          i = 0
          while i < point_array.attr_length
            point_array[i] -= 1
            i += 2
          end
        end
      end
      OS._polyline(@handle, point_array, point_array.attr_length / 2)
      length_ = point_array.attr_length
      if (length_ >= 2)
        if (@data.attr_line_width <= 1)
          OS._set_pixel(@handle, point_array[length_ - 2], point_array[length_ - 1], @data.attr_foreground)
        end
      end
      if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
        if (!(@data.attr_line_width).equal?(0) && (@data.attr_line_width % 2).equal?(0))
          i = 0
          while i < point_array.attr_length
            point_array[i] += 1
            i += 2
          end
        end
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
      # long
      gdip_graphics = @data.attr_gdip_graphics
      if (!(gdip_graphics).equal?(0))
        if (width < 0)
          x = x + width
          width = -width
        end
        if (height < 0)
          y = y + height
          height = -height
        end
        Gdip._graphics_translate_transform(gdip_graphics, @data.attr_gdip_xoffset, @data.attr_gdip_yoffset, Gdip::MatrixOrderPrepend)
        Gdip._graphics_draw_rectangle(gdip_graphics, @data.attr_gdip_pen, x, y, width, height)
        Gdip._graphics_translate_transform(gdip_graphics, -@data.attr_gdip_xoffset, -@data.attr_gdip_yoffset, Gdip::MatrixOrderPrepend)
        return
      end
      if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
        # Note that Rectangle() subtracts one pixel in MIRRORED mode when
        # the pen was created with CreatePen() and its width is 0 or 1.
        if (@data.attr_line_width > 1)
          if (((@data.attr_line_width % 2)).equal?(1))
            x += 1
          end
        else
          if (!(@data.attr_h_pen).equal?(0) && !(OS._get_object(@data.attr_h_pen, 0, 0)).equal?(LOGPEN.attr_sizeof))
            x += 1
          end
        end
      end
      OS._rectangle(@handle, x, y, x + width + 1, y + height + 1)
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
      if (!(@data.attr_gdip_graphics).equal?(0))
        draw_round_rectangle_gdip(@data.attr_gdip_graphics, @data.attr_gdip_pen, x, y, width, height, arc_width, arc_height)
        return
      end
      if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
        if (!(@data.attr_line_width).equal?(0) && (@data.attr_line_width % 2).equal?(0))
          x -= 1
        end
      end
      if (OS::IsWinCE)
        # Bug in WinCE PPC.  On certain devices, RoundRect does not draw
        # all the pixels.  The workaround is to draw a round rectangle
        # using lines and arcs.
        if ((width).equal?(0) || (height).equal?(0))
          return
        end
        if ((arc_width).equal?(0) || (arc_height).equal?(0))
          draw_rectangle(x, y, width, height)
          return
        end
        if (width < 0)
          x += width
          width = -width
        end
        if (height < 0)
          y += height
          height = -height
        end
        if (arc_width < 0)
          arc_width = -arc_width
        end
        if (arc_height < 0)
          arc_height = -arc_height
        end
        if (arc_width > width)
          arc_width = width
        end
        if (arc_height > height)
          arc_height = height
        end
        if (arc_width < width)
          draw_line(x + arc_width / 2, y, x + width - arc_width / 2, y)
          draw_line(x + arc_width / 2, y + height, x + width - arc_width / 2, y + height)
        end
        if (arc_height < height)
          draw_line(x, y + arc_height / 2, x, y + height - arc_height / 2)
          draw_line(x + width, y + arc_height / 2, x + width, y + height - arc_height / 2)
        end
        if (!(arc_width).equal?(0) && !(arc_height).equal?(0))
          draw_arc(x, y, arc_width, arc_height, 90, 90)
          draw_arc(x + width - arc_width, y, arc_width, arc_height, 0, 90)
          draw_arc(x + width - arc_width, y + height - arc_height, arc_width, arc_height, 0, -90)
          draw_arc(x, y + height - arc_height, arc_width, arc_height, 180, 90)
        end
      else
        OS._round_rect(@handle, x, y, x + width + 1, y + height + 1, arc_width, arc_height)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def draw_round_rectangle_gdip(gdip_graphics, pen, x, y, width, height, arc_width, arc_height)
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
      Gdip._graphics_translate_transform(gdip_graphics, @data.attr_gdip_xoffset, @data.attr_gdip_yoffset, Gdip::MatrixOrderPrepend)
      if ((naw).equal?(0) || (nah).equal?(0))
        Gdip._graphics_draw_rectangle(gdip_graphics, @data.attr_gdip_pen, x, y, width, height)
      else
        # long
        path = Gdip._graphics_path_new(Gdip::FillModeAlternate)
        if ((path).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        if (nw > naw)
          if (nh > nah)
            Gdip._graphics_path_add_arc(path, nx + nw - naw, ny, naw, nah, 0, -90)
            Gdip._graphics_path_add_arc(path, nx, ny, naw, nah, -90, -90)
            Gdip._graphics_path_add_arc(path, nx, ny + nh - nah, naw, nah, -180, -90)
            Gdip._graphics_path_add_arc(path, nx + nw - naw, ny + nh - nah, naw, nah, -270, -90)
          else
            Gdip._graphics_path_add_arc(path, nx + nw - naw, ny, naw, nh, -270, -180)
            Gdip._graphics_path_add_arc(path, nx, ny, naw, nh, -90, -180)
          end
        else
          if (nh > nah)
            Gdip._graphics_path_add_arc(path, nx, ny, nw, nah, 0, -180)
            Gdip._graphics_path_add_arc(path, nx, ny + nh - nah, nw, nah, -180, -180)
          else
            Gdip._graphics_path_add_arc(path, nx, ny, nw, nh, 0, 360)
          end
        end
        Gdip._graphics_path_close_figure(path)
        Gdip._graphics_draw_path(gdip_graphics, pen, path)
        Gdip._graphics_path_delete(path)
      end
      Gdip._graphics_translate_transform(gdip_graphics, -@data.attr_gdip_xoffset, -@data.attr_gdip_yoffset, Gdip::MatrixOrderPrepend)
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
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((string).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      # TCHAR buffer = new TCHAR (getCodePage(), string, false);
      length_ = string.length
      if ((length_).equal?(0))
        return
      end
      buffer = CharArray.new(length_)
      string.get_chars(0, length_, buffer, 0)
      # long
      gdip_graphics = @data.attr_gdip_graphics
      if (!(gdip_graphics).equal?(0))
        check_gc(FONT | FOREGROUND | (is_transparent ? 0 : BACKGROUND))
        pt = PointF.new
        # long
        format = Gdip._string_format_clone(Gdip._string_format_generic_typographic)
        format_flags = Gdip._string_format_get_format_flags(format) | Gdip::StringFormatFlagsMeasureTrailingSpaces
        if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
          format_flags |= Gdip::StringFormatFlagsDirectionRightToLeft
        end
        Gdip._string_format_set_format_flags(format, format_flags)
        if (!is_transparent)
          bounds = RectF.new
          Gdip._graphics_measure_string(gdip_graphics, buffer, length_, @data.attr_gdip_font, pt, format, bounds)
          Gdip._graphics_fill_rectangle(gdip_graphics, @data.attr_gdip_brush, x, y, Math.round(bounds.attr_width), Math.round(bounds.attr_height))
        end
        gstate = 0
        # long
        brush = get_fg_brush
        if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
          case (Gdip._brush_get_type(brush))
          when Gdip::BrushTypeLinearGradient
            Gdip._linear_gradient_brush_scale_transform(brush, -1, 1, Gdip::MatrixOrderPrepend)
            Gdip._linear_gradient_brush_translate_transform(brush, -2 * x, 0, Gdip::MatrixOrderPrepend)
          when Gdip::BrushTypeTextureFill
            Gdip._texture_brush_scale_transform(brush, -1, 1, Gdip::MatrixOrderPrepend)
            Gdip._texture_brush_translate_transform(brush, -2 * x, 0, Gdip::MatrixOrderPrepend)
          end
          gstate = Gdip._graphics_save(gdip_graphics)
          Gdip._graphics_scale_transform(gdip_graphics, -1, 1, Gdip::MatrixOrderPrepend)
          Gdip._graphics_translate_transform(gdip_graphics, -2 * x, 0, Gdip::MatrixOrderPrepend)
        end
        pt.attr_x = x
        pt.attr_y = y
        Gdip._graphics_draw_string(gdip_graphics, buffer, length_, @data.attr_gdip_font, pt, format, brush)
        if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
          case (Gdip._brush_get_type(brush))
          when Gdip::BrushTypeLinearGradient
            Gdip._linear_gradient_brush_reset_transform(brush)
          when Gdip::BrushTypeTextureFill
            Gdip._texture_brush_reset_transform(brush)
          end
          Gdip._graphics_restore(gdip_graphics, gstate)
        end
        Gdip._string_format_delete(format)
        return
      end
      rop2 = 0
      if (OS::IsWinCE)
        rop2 = OS._set_rop2(@handle, OS::R2_COPYPEN)
        OS._set_rop2(@handle, rop2)
      else
        rop2 = OS._get_rop2(@handle)
      end
      check_gc(FONT | FOREGROUND_TEXT | BACKGROUND_TEXT)
      old_bk_mode = OS._set_bk_mode(@handle, is_transparent ? OS::TRANSPARENT : OS::OPAQUE)
      rect = nil
      size = nil
      flags = 0
      if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
        if (!is_transparent)
          size = SIZE.new
          OS._get_text_extent_point32w(@handle, buffer, length_, size)
          rect = RECT.new
          rect.attr_left = x
          rect.attr_right = x + size.attr_cx
          rect.attr_top = y
          rect.attr_bottom = y + size.attr_cy
          flags = OS::ETO_CLIPPED
        end
        x -= 1
      end
      if (!(rop2).equal?(OS::R2_XORPEN))
        OS._ext_text_out_w(@handle, x, y, flags, rect, buffer, length_, nil)
      else
        foreground = OS._get_text_color(@handle)
        if (is_transparent)
          if ((size).nil?)
            size = SIZE.new
            OS._get_text_extent_point32w(@handle, buffer, length_, size)
          end
          width = size.attr_cx
          height = size.attr_cy
          # long
          h_bitmap = OS._create_compatible_bitmap(@handle, width, height)
          if ((h_bitmap).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          # long
          mem_dc = OS._create_compatible_dc(@handle)
          # long
          h_old_bitmap = OS._select_object(mem_dc, h_bitmap)
          OS._pat_blt(mem_dc, 0, 0, width, height, OS::BLACKNESS)
          OS._set_bk_mode(mem_dc, OS::TRANSPARENT)
          OS._set_text_color(mem_dc, foreground)
          OS._select_object(mem_dc, OS._get_current_object(@handle, OS::OBJ_FONT))
          OS._ext_text_out_w(mem_dc, 0, 0, 0, nil, buffer, length_, nil)
          OS._bit_blt(@handle, x, y, width, height, mem_dc, 0, 0, OS::SRCINVERT)
          OS._select_object(mem_dc, h_old_bitmap)
          OS._delete_dc(mem_dc)
          OS._delete_object(h_bitmap)
        else
          background = OS._get_bk_color(@handle)
          OS._set_text_color(@handle, foreground ^ background)
          OS._ext_text_out_w(@handle, x, y, flags, rect, buffer, length_, nil)
          OS._set_text_color(@handle, foreground)
        end
      end
      OS._set_bk_mode(@handle, old_bk_mode)
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
      # long
      gdip_graphics = @data.attr_gdip_graphics
      if (!(gdip_graphics).equal?(0))
        check_gc(FONT | FOREGROUND | (!((flags & SWT::DRAW_TRANSPARENT)).equal?(0) ? 0 : BACKGROUND))
        length_ = string.length
        buffer = CharArray.new(length_)
        string.get_chars(0, length_, buffer, 0)
        pt = PointF.new
        # long
        format = Gdip._string_format_clone(Gdip._string_format_generic_typographic)
        format_flags = Gdip._string_format_get_format_flags(format) | Gdip::StringFormatFlagsMeasureTrailingSpaces
        if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
          format_flags |= Gdip::StringFormatFlagsDirectionRightToLeft
        end
        Gdip._string_format_set_format_flags(format, format_flags)
        tabs = !((flags & SWT::DRAW_TAB)).equal?(0) ? Array.typed(::Java::Float).new([measure_space(@data.attr_gdip_font, format) * 8]) : Array.typed(::Java::Float).new(1) { 0.0 }
        Gdip._string_format_set_tab_stops(format, 0, tabs.attr_length, tabs)
        hotkey_prefix = !((flags & SWT::DRAW_MNEMONIC)).equal?(0) ? Gdip::HotkeyPrefixShow : Gdip::HotkeyPrefixNone
        if (!((flags & SWT::DRAW_MNEMONIC)).equal?(0) && !((@data.attr_ui_state & OS::UISF_HIDEACCEL)).equal?(0))
          hotkey_prefix = Gdip::HotkeyPrefixHide
        end
        Gdip._string_format_set_hotkey_prefix(format, hotkey_prefix)
        if (((flags & SWT::DRAW_TRANSPARENT)).equal?(0))
          bounds = RectF.new
          Gdip._graphics_measure_string(gdip_graphics, buffer, length_, @data.attr_gdip_font, pt, format, bounds)
          Gdip._graphics_fill_rectangle(gdip_graphics, @data.attr_gdip_brush, x, y, Math.round(bounds.attr_width), Math.round(bounds.attr_height))
        end
        gstate = 0
        # long
        brush = get_fg_brush
        if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
          case (Gdip._brush_get_type(brush))
          when Gdip::BrushTypeLinearGradient
            Gdip._linear_gradient_brush_scale_transform(brush, -1, 1, Gdip::MatrixOrderPrepend)
            Gdip._linear_gradient_brush_translate_transform(brush, -2 * x, 0, Gdip::MatrixOrderPrepend)
          when Gdip::BrushTypeTextureFill
            Gdip._texture_brush_scale_transform(brush, -1, 1, Gdip::MatrixOrderPrepend)
            Gdip._texture_brush_translate_transform(brush, -2 * x, 0, Gdip::MatrixOrderPrepend)
          end
          gstate = Gdip._graphics_save(gdip_graphics)
          Gdip._graphics_scale_transform(gdip_graphics, -1, 1, Gdip::MatrixOrderPrepend)
          Gdip._graphics_translate_transform(gdip_graphics, -2 * x, 0, Gdip::MatrixOrderPrepend)
        end
        pt.attr_x = x
        pt.attr_y = y
        Gdip._graphics_draw_string(gdip_graphics, buffer, length_, @data.attr_gdip_font, pt, format, brush)
        if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
          case (Gdip._brush_get_type(brush))
          when Gdip::BrushTypeLinearGradient
            Gdip._linear_gradient_brush_reset_transform(brush)
          when Gdip::BrushTypeTextureFill
            Gdip._texture_brush_reset_transform(brush)
          end
          Gdip._graphics_restore(gdip_graphics, gstate)
        end
        Gdip._string_format_delete(format)
        return
      end
      buffer = TCHAR.new(get_code_page, string, false)
      length_ = buffer.length
      if ((length_).equal?(0))
        return
      end
      rect = RECT.new
      # Feature in Windows.  For some reason DrawText(), the maximum
      # value for the bottom and right coordinates for the RECT that
      # is used to position the text is different on between Windows
      # versions.  If this value is larger than the maximum, nothing
      # is drawn.  On Windows 98, the limit is 0x7FFF.  On Windows CE,
      # NT, and 2000 it is 0x6FFFFFF. And on XP, it is 0x7FFFFFFF.
      # The fix is to use the the smaller limit for Windows 98 and the
      # larger limit on the other Windows platforms.
      limit = OS::IsWin95 ? 0x7fff : 0x6ffffff
      OS._set_rect(rect, x, y, limit, limit)
      u_format = OS::DT_LEFT
      if (((flags & SWT::DRAW_DELIMITER)).equal?(0))
        u_format |= OS::DT_SINGLELINE
      end
      if (!((flags & SWT::DRAW_TAB)).equal?(0))
        u_format |= OS::DT_EXPANDTABS
      end
      if (((flags & SWT::DRAW_MNEMONIC)).equal?(0))
        u_format |= OS::DT_NOPREFIX
      end
      if (!((flags & SWT::DRAW_MNEMONIC)).equal?(0) && !((@data.attr_ui_state & OS::UISF_HIDEACCEL)).equal?(0))
        u_format |= OS::DT_HIDEPREFIX
      end
      rop2 = 0
      if (OS::IsWinCE)
        rop2 = OS._set_rop2(@handle, OS::R2_COPYPEN)
        OS._set_rop2(@handle, rop2)
      else
        rop2 = OS._get_rop2(@handle)
      end
      check_gc(FONT | FOREGROUND_TEXT | BACKGROUND_TEXT)
      old_bk_mode = OS._set_bk_mode(@handle, !((flags & SWT::DRAW_TRANSPARENT)).equal?(0) ? OS::TRANSPARENT : OS::OPAQUE)
      if (!(rop2).equal?(OS::R2_XORPEN))
        OS._draw_text(@handle, buffer, length_, rect, u_format)
      else
        foreground = OS._get_text_color(@handle)
        if (!((flags & SWT::DRAW_TRANSPARENT)).equal?(0))
          OS._draw_text(@handle, buffer, buffer.length, rect, u_format | OS::DT_CALCRECT)
          width = rect.attr_right - rect.attr_left
          height = rect.attr_bottom - rect.attr_top
          # long
          h_bitmap = OS._create_compatible_bitmap(@handle, width, height)
          if ((h_bitmap).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          # long
          mem_dc = OS._create_compatible_dc(@handle)
          # long
          h_old_bitmap = OS._select_object(mem_dc, h_bitmap)
          OS._pat_blt(mem_dc, 0, 0, width, height, OS::BLACKNESS)
          OS._set_bk_mode(mem_dc, OS::TRANSPARENT)
          OS._set_text_color(mem_dc, foreground)
          OS._select_object(mem_dc, OS._get_current_object(@handle, OS::OBJ_FONT))
          OS._set_rect(rect, 0, 0, 0x7fff, 0x7fff)
          OS._draw_text(mem_dc, buffer, length_, rect, u_format)
          OS._bit_blt(@handle, x, y, width, height, mem_dc, 0, 0, OS::SRCINVERT)
          OS._select_object(mem_dc, h_old_bitmap)
          OS._delete_dc(mem_dc)
          OS._delete_object(h_bitmap)
        else
          background = OS._get_bk_color(@handle)
          OS._set_text_color(@handle, foreground ^ background)
          OS._draw_text(@handle, buffer, length_, rect, u_format)
          OS._set_text_color(@handle, foreground)
        end
      end
      OS._set_bk_mode(@handle, old_bk_mode)
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
      return ((object).equal?(self)) || ((object.is_a?(SwtGC)) && ((@handle).equal?((object).attr_handle)))
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
      # long
      gdip_graphics = @data.attr_gdip_graphics
      if (!(gdip_graphics).equal?(0))
        if ((width).equal?(height))
          Gdip._graphics_fill_pie(gdip_graphics, @data.attr_gdip_brush, x, y, width, height, -start_angle, -arc_angle)
        else
          state = Gdip._graphics_save(gdip_graphics)
          Gdip._graphics_translate_transform(gdip_graphics, x, y, Gdip::MatrixOrderPrepend)
          Gdip._graphics_scale_transform(gdip_graphics, width, height, Gdip::MatrixOrderPrepend)
          Gdip._graphics_fill_pie(gdip_graphics, @data.attr_gdip_brush, 0, 0, 1, 1, -start_angle, -arc_angle)
          Gdip._graphics_restore(gdip_graphics, state)
        end
        return
      end
      if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
        x -= 1
      end
      # Feature in WinCE.  The function Pie is not present in the
      # WinCE SDK.  The fix is to emulate it by using Polygon.
      if (OS::IsWinCE)
        # compute arc with a simple linear interpolation
        if (arc_angle < 0)
          start_angle += arc_angle
          arc_angle = -arc_angle
        end
        draw_segments = true
        if (arc_angle >= 360)
          arc_angle = 360
          draw_segments = false
        end
        points = Array.typed(::Java::Int).new((arc_angle + 1) * 2 + (draw_segments ? 4 : 0)) { 0 }
        cte_x = 2 * x + width
        cte_y = 2 * y + height
        index = (draw_segments ? 2 : 0)
        i = 0
        while i <= arc_angle
          points[((index += 1) - 1)] = (Compatibility.cos(start_angle + i, width) + cte_x) >> 1
          points[((index += 1) - 1)] = (cte_y - Compatibility.sin(start_angle + i, height)) >> 1
          i += 1
        end
        if (draw_segments)
          points[0] = points[points.attr_length - 2] = cte_x >> 1
          points[1] = points[points.attr_length - 1] = cte_y >> 1
        end
        OS._polygon(@handle, points, points.attr_length / 2)
      else
        x1 = 0
        y1 = 0
        x2 = 0
        y2 = 0
        tmp = 0
        is_negative = false
        if (arc_angle >= 360 || arc_angle <= -360)
          x1 = x2 = x + width
          y1 = y2 = y + height / 2
        else
          is_negative = arc_angle < 0
          arc_angle = arc_angle + start_angle
          if (is_negative)
            # swap angles
            tmp = start_angle
            start_angle = arc_angle
            arc_angle = tmp
          end
          x1 = Compatibility.cos(start_angle, width) + x + width / 2
          y1 = -1 * Compatibility.sin(start_angle, height) + y + height / 2
          x2 = Compatibility.cos(arc_angle, width) + x + width / 2
          y2 = -1 * Compatibility.sin(arc_angle, height) + y + height / 2
        end
        OS._pie(@handle, x, y, x + width + 1, y + height + 1, x1, y1, x2, y2)
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
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((width).equal?(0) || (height).equal?(0))
        return
      end
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
      if (!(@data.attr_gdip_graphics).equal?(0))
        init_gdip
        p1 = PointF.new
        p2 = PointF.new
        p1.attr_x = x
        p1.attr_y = y
        if (vertical)
          p2.attr_x = p1.attr_x
          p2.attr_y = p1.attr_y + height
        else
          p2.attr_x = p1.attr_x + width
          p2.attr_y = p1.attr_y
        end
        rgb = ((from_rgb.attr_red & 0xff) << 16) | ((from_rgb.attr_green & 0xff) << 8) | (from_rgb.attr_blue & 0xff)
        # long
        from_gp_color = Gdip._color_new(@data.attr_alpha << 24 | rgb)
        if ((from_gp_color).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        rgb = ((to_rgb.attr_red & 0xff) << 16) | ((to_rgb.attr_green & 0xff) << 8) | (to_rgb.attr_blue & 0xff)
        # long
        to_gp_color = Gdip._color_new(@data.attr_alpha << 24 | rgb)
        if ((to_gp_color).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        # long
        brush = Gdip._linear_gradient_brush_new(p1, p2, from_gp_color, to_gp_color)
        Gdip._graphics_fill_rectangle(@data.attr_gdip_graphics, brush, x, y, width, height)
        Gdip._linear_gradient_brush_delete(brush)
        Gdip._color_delete(from_gp_color)
        Gdip._color_delete(to_gp_color)
        return
      end
      # Use GradientFill if supported, only on Windows 98, 2000 and newer.
      # 
      # Bug in Windows: On Windows 2000 when the device is a printer,
      # GradientFill swaps red and blue color components, causing the
      # gradient to be printed in the wrong color. On Windows 98 when
      # the device is a printer, GradientFill does not fill completely
      # to the right edge of the rectangle. The fix is not to use
      # GradientFill for printer devices.
      rop2 = 0
      if (OS::IsWinCE)
        rop2 = OS._set_rop2(@handle, OS::R2_COPYPEN)
        OS._set_rop2(@handle, rop2)
      else
        rop2 = OS._get_rop2(@handle)
      end
      if (OS::IsWinNT && !(rop2).equal?(OS::R2_XORPEN) && !(OS._get_device_caps(@handle, OS::TECHNOLOGY)).equal?(OS::DT_RASPRINTER))
        # long
        h_heap = OS._get_process_heap
        # long
        p_mesh = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, GRADIENT_RECT.attr_sizeof + TRIVERTEX.attr_sizeof * 2)
        if ((p_mesh).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        # long
        p_vertex = p_mesh + GRADIENT_RECT.attr_sizeof
        gradient_rect = GRADIENT_RECT.new
        gradient_rect.attr_upper_left = 0
        gradient_rect.attr_lower_right = 1
        OS._move_memory(p_mesh, gradient_rect, GRADIENT_RECT.attr_sizeof)
        trivertex = TRIVERTEX.new
        trivertex.attr_x = x
        trivertex.attr_y = y
        trivertex.attr_red = RJava.cast_to_short(((from_rgb.attr_red << 8) | from_rgb.attr_red))
        trivertex.attr_green = RJava.cast_to_short(((from_rgb.attr_green << 8) | from_rgb.attr_green))
        trivertex.attr_blue = RJava.cast_to_short(((from_rgb.attr_blue << 8) | from_rgb.attr_blue))
        trivertex.attr_alpha = -1
        OS._move_memory(p_vertex, trivertex, TRIVERTEX.attr_sizeof)
        trivertex.attr_x = x + width
        trivertex.attr_y = y + height
        trivertex.attr_red = RJava.cast_to_short(((to_rgb.attr_red << 8) | to_rgb.attr_red))
        trivertex.attr_green = RJava.cast_to_short(((to_rgb.attr_green << 8) | to_rgb.attr_green))
        trivertex.attr_blue = RJava.cast_to_short(((to_rgb.attr_blue << 8) | to_rgb.attr_blue))
        trivertex.attr_alpha = -1
        OS._move_memory(p_vertex + TRIVERTEX.attr_sizeof, trivertex, TRIVERTEX.attr_sizeof)
        success = OS._gradient_fill(@handle, p_vertex, 2, p_mesh, 1, vertical ? OS::GRADIENT_FILL_RECT_V : OS::GRADIENT_FILL_RECT_H)
        OS._heap_free(h_heap, 0, p_mesh)
        if (success)
          return
        end
      end
      depth = OS._get_device_caps(@handle, OS::BITSPIXEL)
      bit_resolution = (depth >= 24) ? 8 : (depth >= 15) ? 5 : 0
      ImageData.fill_gradient_rectangle(self, @data.attr_device, x, y, width, height, vertical, from_rgb, to_rgb, bit_resolution, bit_resolution, bit_resolution)
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
      if (!(@data.attr_gdip_graphics).equal?(0))
        Gdip._graphics_fill_ellipse(@data.attr_gdip_graphics, @data.attr_gdip_brush, x, y, width, height)
        return
      end
      if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
        x -= 1
      end
      OS._ellipse(@handle, x, y, x + width + 1, y + height + 1)
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
      init_gdip
      check_gc(FILL)
      mode = (OS._get_poly_fill_mode(@handle)).equal?(OS::WINDING) ? Gdip::FillModeWinding : Gdip::FillModeAlternate
      Gdip._graphics_path_set_fill_mode(path.attr_handle, mode)
      Gdip._graphics_fill_path(@data.attr_gdip_graphics, @data.attr_gdip_brush, path.attr_handle)
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
      if (!(@data.attr_gdip_graphics).equal?(0))
        mode = (OS._get_poly_fill_mode(@handle)).equal?(OS::WINDING) ? Gdip::FillModeWinding : Gdip::FillModeAlternate
        Gdip._graphics_fill_polygon(@data.attr_gdip_graphics, @data.attr_gdip_brush, point_array, point_array.attr_length / 2, mode)
        return
      end
      if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
        i = 0
        while i < point_array.attr_length
          point_array[i] -= 1
          i += 2
        end
      end
      OS._polygon(@handle, point_array, point_array.attr_length / 2)
      if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
        i = 0
        while i < point_array.attr_length
          point_array[i] += 1
          i += 2
        end
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
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      check_gc(FILL)
      if (!(@data.attr_gdip_graphics).equal?(0))
        if (width < 0)
          x = x + width
          width = -width
        end
        if (height < 0)
          y = y + height
          height = -height
        end
        Gdip._graphics_fill_rectangle(@data.attr_gdip_graphics, @data.attr_gdip_brush, x, y, width, height)
        return
      end
      rop2 = 0
      if (OS::IsWinCE)
        rop2 = OS._set_rop2(@handle, OS::R2_COPYPEN)
        OS._set_rop2(@handle, rop2)
      else
        rop2 = OS._get_rop2(@handle)
      end
      dw_rop = (rop2).equal?(OS::R2_XORPEN) ? OS::PATINVERT : OS::PATCOPY
      OS._pat_blt(@handle, x, y, width, height, dw_rop)
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
      if (!(@data.attr_gdip_graphics).equal?(0))
        fill_round_rectangle_gdip(@data.attr_gdip_graphics, @data.attr_gdip_brush, x, y, width, height, arc_width, arc_height)
        return
      end
      if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
        x -= 1
      end
      OS._round_rect(@handle, x, y, x + width + 1, y + height + 1, arc_width, arc_height)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def fill_round_rectangle_gdip(gdip_graphics, brush, x, y, width, height, arc_width, arc_height)
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
      if ((naw).equal?(0) || (nah).equal?(0))
        Gdip._graphics_fill_rectangle(@data.attr_gdip_graphics, @data.attr_gdip_brush, x, y, width, height)
      else
        # long
        path = Gdip._graphics_path_new(Gdip::FillModeAlternate)
        if ((path).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        if (nw > naw)
          if (nh > nah)
            Gdip._graphics_path_add_arc(path, nx + nw - naw, ny, naw, nah, 0, -90)
            Gdip._graphics_path_add_arc(path, nx, ny, naw, nah, -90, -90)
            Gdip._graphics_path_add_arc(path, nx, ny + nh - nah, naw, nah, -180, -90)
            Gdip._graphics_path_add_arc(path, nx + nw - naw, ny + nh - nah, naw, nah, -270, -90)
          else
            Gdip._graphics_path_add_arc(path, nx + nw - naw, ny, naw, nh, -270, -180)
            Gdip._graphics_path_add_arc(path, nx, ny, naw, nh, -90, -180)
          end
        else
          if (nh > nah)
            Gdip._graphics_path_add_arc(path, nx, ny, nw, nah, 0, -180)
            Gdip._graphics_path_add_arc(path, nx, ny + nh - nah, nw, nah, -180, -180)
          else
            Gdip._graphics_path_add_arc(path, nx, ny, nw, nh, 0, 360)
          end
        end
        Gdip._graphics_path_close_figure(path)
        Gdip._graphics_fill_path(gdip_graphics, brush, path)
        Gdip._graphics_path_delete(path)
      end
    end
    
    typesig { [] }
    def flush
      if (!(@data.attr_gdip_graphics).equal?(0))
        Gdip._graphics_flush(@data.attr_gdip_graphics, 0)
        # Note Flush() does not flush the output to the
        # underline HDC. This is done by calling GetHDC()
        # followed by ReleaseHDC().
        # 
        # long
        hdc = Gdip._graphics_get_hdc(@data.attr_gdip_graphics)
        Gdip._graphics_release_hdc(@data.attr_gdip_graphics, hdc)
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
      check_gc(FONT)
      if (OS::IsWinCE)
        size = SIZE.new
        OS._get_text_extent_point32w(@handle, Array.typed(::Java::Char).new([ch]), 1, size)
        return size.attr_cx
      end
      tch = ch
      if (ch > 0x7f)
        buffer = TCHAR.new(get_code_page, ch, false)
        tch = buffer.tchar_at(0)
      end
      width = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_char_width(@handle, tch, tch, width)
      return width[0]
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
      return !(@data.attr_gdip_graphics).equal?(0)
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
      if ((@data.attr_gdip_graphics).equal?(0))
        return SWT::DEFAULT
      end
      mode = Gdip._graphics_get_smoothing_mode(@data.attr_gdip_graphics)
      case (mode)
      when Gdip::SmoothingModeDefault
        return SWT::DEFAULT
      when Gdip::SmoothingModeHighSpeed, Gdip::SmoothingModeNone
        return SWT::OFF
      when Gdip::SmoothingModeAntiAlias, Gdip::SmoothingModeAntiAlias8x8, Gdip::SmoothingModeHighQuality
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
      return Color.win32_new(@data.attr_device, @data.attr_background)
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
      check_gc(FONT)
      # GetCharABCWidths only succeeds on truetype fonts
      if (!OS::IsWinCE)
        tch = ch
        if (ch > 0x7f)
          buffer = TCHAR.new(get_code_page, ch, false)
          tch = buffer.tchar_at(0)
        end
        width = Array.typed(::Java::Int).new(3) { 0 }
        if (OS._get_char_abcwidths(@handle, tch, tch, width))
          return width[1]
        end
      end
      # It wasn't a truetype font
      lptm = OS::IsUnicode ? TEXTMETRICW.new : TEXTMETRICA.new
      OS._get_text_metrics(@handle, lptm)
      size = SIZE.new
      OS._get_text_extent_point32w(@handle, Array.typed(::Java::Char).new([ch]), 1, size)
      return size.attr_cx - lptm.attr_tm_overhang
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
      # long
      gdip_graphics = @data.attr_gdip_graphics
      if (!(gdip_graphics).equal?(0))
        rect = Rect.new
        Gdip._graphics_set_pixel_offset_mode(gdip_graphics, Gdip::PixelOffsetModeNone)
        Gdip._graphics_get_visible_clip_bounds(gdip_graphics, rect)
        Gdip._graphics_set_pixel_offset_mode(gdip_graphics, Gdip::PixelOffsetModeHalf)
        return Rectangle.new(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
      end
      rect = RECT.new
      OS._get_clip_box(@handle, rect)
      return Rectangle.new(rect.attr_left, rect.attr_top, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top)
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
      # long
      gdip_graphics = @data.attr_gdip_graphics
      if (!(gdip_graphics).equal?(0))
        # long
        rgn = Gdip._region_new
        Gdip._graphics_get_clip(@data.attr_gdip_graphics, rgn)
        if (Gdip._region_is_infinite(rgn, gdip_graphics))
          rect = Rect.new
          Gdip._graphics_set_pixel_offset_mode(gdip_graphics, Gdip::PixelOffsetModeNone)
          Gdip._graphics_get_visible_clip_bounds(gdip_graphics, rect)
          Gdip._graphics_set_pixel_offset_mode(gdip_graphics, Gdip::PixelOffsetModeHalf)
          OS._set_rect_rgn(region.attr_handle, rect.attr_x, rect.attr_y, rect.attr_x + rect.attr_width, rect.attr_y + rect.attr_height)
        else
          # long
          matrix = Gdip._matrix_new(1, 0, 0, 1, 0, 0)
          # long
          identity = Gdip._matrix_new(1, 0, 0, 1, 0, 0)
          Gdip._graphics_get_transform(gdip_graphics, matrix)
          Gdip._graphics_set_transform(gdip_graphics, identity)
          # long
          h_rgn = Gdip._region_get_hrgn(rgn, @data.attr_gdip_graphics)
          Gdip._graphics_set_transform(gdip_graphics, matrix)
          Gdip._matrix_delete(identity)
          Gdip._matrix_delete(matrix)
          OS._combine_rgn(region.attr_handle, h_rgn, 0, OS::RGN_COPY)
          OS._delete_object(h_rgn)
        end
        Gdip._region_delete(rgn)
        return
      end
      pt = POINT.new
      if (!OS::IsWinCE)
        OS._get_window_org_ex(@handle, pt)
      end
      result = OS._get_clip_rgn(@handle, region.attr_handle)
      if (!(result).equal?(1))
        rect = RECT.new
        OS._get_clip_box(@handle, rect)
        OS._set_rect_rgn(region.attr_handle, rect.attr_left, rect.attr_top, rect.attr_right, rect.attr_bottom)
      else
        OS._offset_rgn(region.attr_handle, pt.attr_x, pt.attr_y)
      end
      if (!OS::IsWinCE)
        # long
        meta_rgn = OS._create_rect_rgn(0, 0, 0, 0)
        if (!(OS._get_meta_rgn(@handle, meta_rgn)).equal?(0))
          OS._offset_rgn(meta_rgn, pt.attr_x, pt.attr_y)
          OS._combine_rgn(region.attr_handle, meta_rgn, region.attr_handle, OS::RGN_AND)
        end
        OS._delete_object(meta_rgn)
        # long
        hwnd = @data.attr_hwnd
        if (!(hwnd).equal?(0) && !(@data.attr_ps).nil?)
          # long
          sys_rgn = OS._create_rect_rgn(0, 0, 0, 0)
          if ((OS._get_random_rgn(@handle, sys_rgn, OS::SYSRGN)).equal?(1))
            if (OS::WIN32_VERSION >= OS._version(4, 10))
              if (!((OS._get_layout(@handle) & OS::LAYOUT_RTL)).equal?(0))
                n_bytes = OS._get_region_data(sys_rgn, 0, nil)
                lp_rgn_data = Array.typed(::Java::Int).new(n_bytes / 4) { 0 }
                OS._get_region_data(sys_rgn, n_bytes, lp_rgn_data)
                # long
                new_sys_rgn = OS._ext_create_region(Array.typed(::Java::Float).new([-1, 0, 0, 1, 0, 0]), n_bytes, lp_rgn_data)
                OS._delete_object(sys_rgn)
                sys_rgn = new_sys_rgn
              end
            end
            if (OS::IsWinNT)
              OS._map_window_points(0, hwnd, pt, 1)
              OS._offset_rgn(sys_rgn, pt.attr_x, pt.attr_y)
            end
            OS._combine_rgn(region.attr_handle, sys_rgn, region.attr_handle, OS::RGN_AND)
          end
          OS._delete_object(sys_rgn)
        end
      end
    end
    
    typesig { [] }
    def get_code_page
      if (OS::IsUnicode)
        return OS::CP_ACP
      end
      lp_cs = Array.typed(::Java::Int).new(8) { 0 }
      cs = OS._get_text_charset(@handle)
      OS._translate_charset_info(cs, lp_cs, OS::TCI_SRCCHARSET)
      return lp_cs[1]
    end
    
    typesig { [] }
    # long
    def get_fg_brush
      return !(@data.attr_foreground_pattern).nil? ? @data.attr_foreground_pattern.attr_handle : @data.attr_gdip_fg_brush
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
      if (OS::IsWinCE)
        return SWT::FILL_EVEN_ODD
      end
      return (OS._get_poly_fill_mode(@handle)).equal?(OS::WINDING) ? SWT::FILL_WINDING : SWT::FILL_EVEN_ODD
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
      lptm = OS::IsUnicode ? TEXTMETRICW.new : TEXTMETRICA.new
      OS._get_text_metrics(@handle, lptm)
      return FontMetrics.win32_new(lptm)
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
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return Color.win32_new(@data.attr_device, @data.attr_foreground)
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
      if ((@data.attr_gdip_graphics).equal?(0))
        return SWT::DEFAULT
      end
      mode = Gdip._graphics_get_interpolation_mode(@data.attr_gdip_graphics)
      case (mode)
      when Gdip::InterpolationModeDefault
        return SWT::DEFAULT
      when Gdip::InterpolationModeNearestNeighbor
        return SWT::NONE
      when Gdip::InterpolationModeBilinear, Gdip::InterpolationModeLowQuality
        return SWT::LOW
      when Gdip::InterpolationModeBicubic, Gdip::InterpolationModeHighQualityBilinear, Gdip::InterpolationModeHighQualityBicubic, Gdip::InterpolationModeHighQuality
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
      if ((@data.attr_gdip_graphics).equal?(0))
        return SWT::DEFAULT
      end
      mode = Gdip._graphics_get_text_rendering_hint(@data.attr_gdip_graphics)
      case (mode)
      when Gdip::TextRenderingHintSystemDefault
        return SWT::DEFAULT
      when Gdip::TextRenderingHintSingleBitPerPixel, Gdip::TextRenderingHintSingleBitPerPixelGridFit
        return SWT::OFF
      when Gdip::TextRenderingHintAntiAlias, Gdip::TextRenderingHintAntiAliasGridFit, Gdip::TextRenderingHintClearTypeGridFit
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
      # long
      gdip_graphics = @data.attr_gdip_graphics
      if (!(gdip_graphics).equal?(0))
        Gdip._graphics_get_transform(gdip_graphics, transform.attr_handle)
        # long
        identity_ = identity
        Gdip._matrix_invert(identity_)
        Gdip._matrix_multiply(transform.attr_handle, identity_, Gdip::MatrixOrderAppend)
        Gdip._matrix_delete(identity_)
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
      rop2 = 0
      if (OS::IsWinCE)
        rop2 = OS._set_rop2(@handle, OS::R2_COPYPEN)
        OS._set_rop2(@handle, rop2)
      else
        rop2 = OS._get_rop2(@handle)
      end
      return (rop2).equal?(OS::R2_XORPEN)
    end
    
    typesig { [] }
    def init_gdip
      @data.attr_device.check_gdip
      # long
      gdip_graphics = @data.attr_gdip_graphics
      if (!(gdip_graphics).equal?(0))
        return
      end
      # Feature in GDI+. The GDI+ clipping set with Graphics->SetClip()
      # is always intersected with the GDI clipping at the time the
      # GDI+ graphics is created.  This means that the clipping
      # cannot be reset.  The fix is to clear the clipping before
      # the GDI+ graphics is created and reset it afterwards.
      # 
      # long
      h_rgn = OS._create_rect_rgn(0, 0, 0, 0)
      result = OS._get_clip_rgn(@handle, h_rgn)
      if (!OS::IsWinCE)
        pt = POINT.new
        OS._get_window_org_ex(@handle, pt)
        OS._offset_rgn(h_rgn, pt.attr_x, pt.attr_y)
      end
      OS._select_clip_rgn(@handle, 0)
      # Bug in GDI+.  GDI+ does not work when the HDC layout is RTL.  There
      # are many issues like pixel corruption, but the most visible problem
      # is that it does not have an effect when drawing to an bitmap.  The
      # fix is to clear the bit before creating the GDI+ graphics and install
      # a mirroring matrix ourselves.
      if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
        OS._set_layout(@handle, OS._get_layout(@handle) & ~OS::LAYOUT_RTL)
      end
      gdip_graphics = @data.attr_gdip_graphics = Gdip._graphics_new(@handle)
      if ((gdip_graphics).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      Gdip._graphics_set_page_unit(gdip_graphics, Gdip::UnitPixel)
      Gdip._graphics_set_pixel_offset_mode(gdip_graphics, Gdip::PixelOffsetModeHalf)
      if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
        # long
        matrix = identity
        Gdip._graphics_set_transform(gdip_graphics, matrix)
        Gdip._matrix_delete(matrix)
      end
      if ((result).equal?(1))
        set_clipping(h_rgn)
      end
      OS._delete_object(h_rgn)
      @data.attr_state = 0
      if (!(@data.attr_h_pen).equal?(0))
        OS._select_object(@handle, OS._get_stock_object(OS::NULL_PEN))
        OS._delete_object(@data.attr_h_pen)
        @data.attr_h_pen = 0
      end
      if (!(@data.attr_h_brush).equal?(0))
        OS._select_object(@handle, OS._get_stock_object(OS::NULL_BRUSH))
        OS._delete_object(@data.attr_h_brush)
        @data.attr_h_brush = 0
      end
    end
    
    typesig { [] }
    # long
    def identity
      if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
        width = 0
        technology = OS._get_device_caps(@handle, OS::TECHNOLOGY)
        if ((technology).equal?(OS::DT_RASPRINTER))
          width = OS._get_device_caps(@handle, OS::PHYSICALWIDTH)
        else
          image = @data.attr_image
          if (!(image).nil?)
            bm = BITMAP.new
            OS._get_object(image.attr_handle, BITMAP.attr_sizeof, bm)
            width = bm.attr_bm_width
          else
            # long
            hwnd = OS::IsWinCE ? @data.attr_hwnd : OS._window_from_dc(@handle)
            if (!(hwnd).equal?(0))
              rect = RECT.new
              OS._get_client_rect(hwnd, rect)
              width = rect.attr_right - rect.attr_left
            else
              # long
              h_bitmap = OS._get_current_object(@handle, OS::OBJ_BITMAP)
              bm = BITMAP.new
              OS._get_object(h_bitmap, BITMAP.attr_sizeof, bm)
              width = bm.attr_bm_width
            end
          end
        end
        pt = POINT.new
        if (!OS::IsWinCE)
          OS._get_window_org_ex(@handle, pt)
        end
        return Gdip._matrix_new(-1, 0, 0, 1, width + 2 * pt.attr_x, 0)
      end
      return Gdip._matrix_new(1, 0, 0, 1, 0, 0)
    end
    
    typesig { [Drawable, SwtGCData, ::Java::Int] }
    # long
    def init(drawable, data, h_dc)
      foreground = data.attr_foreground
      if (!(foreground).equal?(-1))
        data.attr_state &= ~(FOREGROUND | FOREGROUND_TEXT | PEN)
      else
        data.attr_foreground = OS._get_text_color(h_dc)
      end
      background = data.attr_background
      if (!(background).equal?(-1))
        data.attr_state &= ~(BACKGROUND | BACKGROUND_TEXT | BRUSH)
      else
        data.attr_background = OS._get_bk_color(h_dc)
      end
      data.attr_state &= ~(NULL_BRUSH | NULL_PEN)
      font = data.attr_font
      if (!(font).nil?)
        data.attr_state &= ~FONT
      else
        data.attr_font = Font.win32_new(self.attr_device, OS._get_current_object(h_dc, OS::OBJ_FONT))
      end
      # long
      h_palette = data.attr_device.attr_h_palette
      if (!(h_palette).equal?(0))
        OS._select_palette(h_dc, h_palette, true)
        OS._realize_palette(h_dc)
      end
      image = data.attr_image
      if (!(image).nil?)
        data.attr_h_null_bitmap = OS._select_object(h_dc, image.attr_handle)
        image.attr_mem_gc = self
      end
      layout = data.attr_layout
      if (!(layout).equal?(-1))
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(4, 10))
          flags = OS._get_layout(h_dc)
          if (!((flags & OS::LAYOUT_RTL)).equal?((layout & OS::LAYOUT_RTL)))
            flags &= ~OS::LAYOUT_RTL
            OS._set_layout(h_dc, flags | layout)
          end
          if (!((data.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
            data.attr_style |= SWT::MIRRORED
          end
        end
      end
      @drawable = drawable
      @data = data
      @handle = h_dc
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
      # long
      gdip_graphics = @data.attr_gdip_graphics
      if (!(gdip_graphics).equal?(0))
        # long
        rgn = Gdip._region_new
        Gdip._graphics_get_clip(@data.attr_gdip_graphics, rgn)
        is_infinite = Gdip._region_is_infinite(rgn, gdip_graphics)
        Gdip._region_delete(rgn)
        return !is_infinite
      end
      # long
      region = OS._create_rect_rgn(0, 0, 0, 0)
      result = OS._get_clip_rgn(@handle, region)
      OS._delete_object(region)
      return result > 0
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
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def measure_space(font, format)
      pt = PointF.new
      bounds = RectF.new
      Gdip._graphics_measure_string(@data.attr_gdip_graphics, Array.typed(::Java::Char).new([Character.new(?\s.ord)]), 1, font, pt, format, bounds)
      return bounds.attr_width
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
      if (advanced && !(@data.attr_gdip_graphics).equal?(0))
        return
      end
      if (advanced)
        begin
          init_gdip
        rescue SWTException => e
        end
      else
        dispose_gdip
        @data.attr_alpha = 0xff
        @data.attr_background_pattern = @data.attr_foreground_pattern = nil
        @data.attr_state = 0
        set_clipping(0)
        if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
          OS._set_layout(@handle, OS._get_layout(@handle) | OS::LAYOUT_RTL)
        end
      end
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
      if ((@data.attr_gdip_graphics).equal?(0) && (antialias).equal?(SWT::DEFAULT))
        return
      end
      mode = 0
      case (antialias)
      when SWT::DEFAULT
        mode = Gdip::SmoothingModeDefault
      when SWT::OFF
        mode = Gdip::SmoothingModeNone
      when SWT::ON
        mode = Gdip::SmoothingModeAntiAlias
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      init_gdip
      Gdip._graphics_set_smoothing_mode(@data.attr_gdip_graphics, mode)
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
      if ((@data.attr_gdip_graphics).equal?(0) && ((alpha & 0xff)).equal?(0xff))
        return
      end
      init_gdip
      @data.attr_alpha = alpha & 0xff
      @data.attr_state &= ~(BACKGROUND | FOREGROUND)
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
      if ((@data.attr_background_pattern).nil? && (@data.attr_background).equal?(color.attr_handle))
        return
      end
      @data.attr_background_pattern = nil
      @data.attr_background = color.attr_handle
      @data.attr_state &= ~(BACKGROUND | BACKGROUND_TEXT)
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
      if ((@data.attr_gdip_graphics).equal?(0) && (pattern).nil?)
        return
      end
      init_gdip
      if ((@data.attr_background_pattern).equal?(pattern))
        return
      end
      @data.attr_background_pattern = pattern
      @data.attr_state &= ~BACKGROUND
    end
    
    typesig { [::Java::Int] }
    # long
    def set_clipping(clip_rgn)
      # long
      h_rgn = clip_rgn
      # long
      gdip_graphics = @data.attr_gdip_graphics
      if (!(gdip_graphics).equal?(0))
        if (!(h_rgn).equal?(0))
          # long
          region = Gdip._region_new(h_rgn)
          Gdip._graphics_set_clip(gdip_graphics, region, Gdip::CombineModeReplace)
          Gdip._region_delete(region)
        else
          Gdip._graphics_reset_clip(gdip_graphics)
        end
      else
        pt = nil
        if (!(h_rgn).equal?(0) && !OS::IsWinCE)
          pt = POINT.new
          OS._get_window_org_ex(@handle, pt)
          OS._offset_rgn(h_rgn, -pt.attr_x, -pt.attr_y)
        end
        OS._select_clip_rgn(@handle, h_rgn)
        if (!(h_rgn).equal?(0) && !OS::IsWinCE)
          OS._offset_rgn(h_rgn, pt.attr_x, pt.attr_y)
        end
      end
      if (!(h_rgn).equal?(0) && !(h_rgn).equal?(clip_rgn))
        OS._delete_object(h_rgn)
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
      # long
      h_rgn = OS._create_rect_rgn(x, y, x + width, y + height)
      set_clipping(h_rgn)
      OS._delete_object(h_rgn)
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
        init_gdip
        mode = (OS._get_poly_fill_mode(@handle)).equal?(OS::WINDING) ? Gdip::FillModeWinding : Gdip::FillModeAlternate
        Gdip._graphics_path_set_fill_mode(path.attr_handle, mode)
        Gdip._graphics_set_clip_path(@data.attr_gdip_graphics, path.attr_handle)
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
      if (OS::IsWinCE)
        return
      end
      mode = OS::ALTERNATE
      case (rule)
      when SWT::FILL_WINDING
        mode = OS::WINDING
      when SWT::FILL_EVEN_ODD
        mode = OS::ALTERNATE
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      OS._set_poly_fill_mode(@handle, mode)
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
      if ((@data.attr_foreground_pattern).nil? && (color.attr_handle).equal?(@data.attr_foreground))
        return
      end
      @data.attr_foreground_pattern = nil
      @data.attr_foreground = color.attr_handle
      @data.attr_state &= ~(FOREGROUND | FOREGROUND_TEXT)
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
      if ((@data.attr_gdip_graphics).equal?(0) && (pattern).nil?)
        return
      end
      init_gdip
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
      if ((@data.attr_gdip_graphics).equal?(0) && (interpolation).equal?(SWT::DEFAULT))
        return
      end
      mode = 0
      case (interpolation)
      when SWT::DEFAULT
        mode = Gdip::InterpolationModeDefault
      when SWT::NONE
        mode = Gdip::InterpolationModeNearestNeighbor
      when SWT::LOW
        mode = Gdip::InterpolationModeLowQuality
      when SWT::HIGH
        mode = Gdip::InterpolationModeHighQuality
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      init_gdip
      Gdip._graphics_set_interpolation_mode(@data.attr_gdip_graphics, mode)
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
      init_gdip
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
      OS._set_rop2(@handle, xor ? OS::R2_XORPEN : OS::R2_COPYPEN)
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
      if ((@data.attr_gdip_graphics).equal?(0) && (antialias).equal?(SWT::DEFAULT))
        return
      end
      text_mode = 0
      case (antialias)
      when SWT::DEFAULT
        text_mode = Gdip::TextRenderingHintSystemDefault
      when SWT::OFF
        text_mode = Gdip::TextRenderingHintSingleBitPerPixelGridFit
      when SWT::ON
        type = Array.typed(::Java::Int).new(1) { 0 }
        OS._system_parameters_info(OS::SPI_GETFONTSMOOTHINGTYPE, 0, type, 0)
        if ((type[0]).equal?(OS::FE_FONTSMOOTHINGCLEARTYPE))
          text_mode = Gdip::TextRenderingHintClearTypeGridFit
        else
          text_mode = Gdip::TextRenderingHintAntiAliasGridFit
        end
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      init_gdip
      Gdip._graphics_set_text_rendering_hint(@data.attr_gdip_graphics, text_mode)
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
      if ((@data.attr_gdip_graphics).equal?(0) && (transform).nil?)
        return
      end
      init_gdip
      # long
      identity_ = identity
      if (!(transform).nil?)
        Gdip._matrix_multiply(identity_, transform.attr_handle, Gdip::MatrixOrderPrepend)
      end
      Gdip._graphics_set_transform(@data.attr_gdip_graphics, identity_)
      Gdip._matrix_delete(identity_)
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
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      if ((string).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      check_gc(FONT)
      length_ = string.length
      if (!(@data.attr_gdip_graphics).equal?(0))
        pt = PointF.new
        bounds = RectF.new
        buffer = nil
        if (!(length_).equal?(0))
          buffer = CharArray.new(length_)
          string.get_chars(0, length_, buffer, 0)
        else
          buffer = Array.typed(::Java::Char).new([Character.new(?\s.ord)])
        end
        # long
        format = Gdip._string_format_clone(Gdip._string_format_generic_typographic)
        format_flags = Gdip._string_format_get_format_flags(format) | Gdip::StringFormatFlagsMeasureTrailingSpaces
        if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
          format_flags |= Gdip::StringFormatFlagsDirectionRightToLeft
        end
        Gdip._string_format_set_format_flags(format, format_flags)
        Gdip._graphics_measure_string(@data.attr_gdip_graphics, buffer, buffer.attr_length, @data.attr_gdip_font, pt, format, bounds)
        Gdip._string_format_delete(format)
        return Point.new((length_).equal?(0) ? 0 : Math.round(bounds.attr_width), Math.round(bounds.attr_height))
      end
      size = SIZE.new
      if ((length_).equal?(0))
        # OS.GetTextExtentPoint32(handle, SPACE, SPACE.length(), size);
        OS._get_text_extent_point32w(@handle, Array.typed(::Java::Char).new([Character.new(?\s.ord)]), 1, size)
        return Point.new(0, size.attr_cy)
      else
        # TCHAR buffer = new TCHAR (getCodePage(), string, false);
        buffer = CharArray.new(length_)
        string.get_chars(0, length_, buffer, 0)
        OS._get_text_extent_point32w(@handle, buffer, length_, size)
        return Point.new(size.attr_cx, size.attr_cy)
      end
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
      if (!(@data.attr_gdip_graphics).equal?(0))
        pt = PointF.new
        bounds = RectF.new
        buffer = nil
        length_ = string.length
        if (!(length_).equal?(0))
          buffer = CharArray.new(length_)
          string.get_chars(0, length_, buffer, 0)
        else
          buffer = Array.typed(::Java::Char).new([Character.new(?\s.ord)])
        end
        # long
        format = Gdip._string_format_clone(Gdip._string_format_generic_typographic)
        format_flags = Gdip._string_format_get_format_flags(format) | Gdip::StringFormatFlagsMeasureTrailingSpaces
        if (!((@data.attr_style & SWT::MIRRORED)).equal?(0))
          format_flags |= Gdip::StringFormatFlagsDirectionRightToLeft
        end
        Gdip._string_format_set_format_flags(format, format_flags)
        tabs = !((flags & SWT::DRAW_TAB)).equal?(0) ? Array.typed(::Java::Float).new([measure_space(@data.attr_gdip_font, format) * 8]) : Array.typed(::Java::Float).new(1) { 0.0 }
        Gdip._string_format_set_tab_stops(format, 0, tabs.attr_length, tabs)
        Gdip._string_format_set_hotkey_prefix(format, !((flags & SWT::DRAW_MNEMONIC)).equal?(0) ? Gdip::HotkeyPrefixShow : Gdip::HotkeyPrefixNone)
        Gdip._graphics_measure_string(@data.attr_gdip_graphics, buffer, buffer.attr_length, @data.attr_gdip_font, pt, format, bounds)
        Gdip._string_format_delete(format)
        return Point.new((length_).equal?(0) ? 0 : Math.round(bounds.attr_width), Math.round(bounds.attr_height))
      end
      if ((string.length).equal?(0))
        size = SIZE.new
        # OS.GetTextExtentPoint32(handle, SPACE, SPACE.length(), size);
        OS._get_text_extent_point32w(@handle, Array.typed(::Java::Char).new([Character.new(?\s.ord)]), 1, size)
        return Point.new(0, size.attr_cy)
      end
      rect = RECT.new
      buffer = TCHAR.new(get_code_page, string, false)
      u_format = OS::DT_LEFT | OS::DT_CALCRECT
      if (((flags & SWT::DRAW_DELIMITER)).equal?(0))
        u_format |= OS::DT_SINGLELINE
      end
      if (!((flags & SWT::DRAW_TAB)).equal?(0))
        u_format |= OS::DT_EXPANDTABS
      end
      if (((flags & SWT::DRAW_MNEMONIC)).equal?(0))
        u_format |= OS::DT_NOPREFIX
      end
      OS._draw_text(@handle, buffer, buffer.length, rect, u_format)
      return Point.new(rect.attr_right, rect.attr_bottom)
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
    
    class_module.module_eval {
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
      def win32_new(drawable, data)
        gc = SwtGC.new
        # long
        h_dc = drawable.internal_new__gc(data)
        gc.attr_device = data.attr_device
        gc.init(drawable, data, h_dc)
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
      # @param hDC the Windows HDC.
      # @param data the data for the receiver.
      # 
      # @return a new <code>GC</code>
      # 
      # long
      def win32_new(h_dc, data)
        gc = SwtGC.new
        gc.attr_device = data.attr_device
        data.attr_style |= SWT::LEFT_TO_RIGHT
        if (OS::WIN32_VERSION >= OS._version(4, 10))
          flags = OS._get_layout(h_dc)
          if (!((flags & OS::LAYOUT_RTL)).equal?(0))
            data.attr_style |= SWT::RIGHT_TO_LEFT | SWT::MIRRORED
          end
        end
        gc.init(nil, data, h_dc)
        return gc
      end
    }
    
    private
    alias_method :initialize__gc, :initialize
  end
  
end
