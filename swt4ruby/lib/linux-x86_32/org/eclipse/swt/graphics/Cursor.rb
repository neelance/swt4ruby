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
  module CursorImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  # Instances of this class manage operating system resources that
  # specify the appearance of the on-screen pointer. To create a
  # cursor you specify the device and either a simple cursor style
  # describing one of the standard operating system provided cursors
  # or the image and mask data for the desired appearance.
  # <p>
  # Application code must explicitly invoke the <code>Cursor.dispose()</code>
  # method to release the operating system resources managed by each instance
  # when those instances are no longer required.
  # </p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>
  # CURSOR_ARROW, CURSOR_WAIT, CURSOR_CROSS, CURSOR_APPSTARTING, CURSOR_HELP,
  # CURSOR_SIZEALL, CURSOR_SIZENESW, CURSOR_SIZENS, CURSOR_SIZENWSE, CURSOR_SIZEWE,
  # CURSOR_SIZEN, CURSOR_SIZES, CURSOR_SIZEE, CURSOR_SIZEW, CURSOR_SIZENE, CURSOR_SIZESE,
  # CURSOR_SIZESW, CURSOR_SIZENW, CURSOR_UPARROW, CURSOR_IBEAM, CURSOR_NO, CURSOR_HAND
  # </dd>
  # </dl>
  # <p>
  # Note: Only one of the above styles may be specified.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#cursor">Cursor snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Cursor < CursorImports.const_get :Resource
    include_class_members CursorImports
    
    # the handle to the OS cursor resource
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
    
    class_module.module_eval {
      const_set_lazy(:APPSTARTING_SRC) { Array.typed(::Java::Byte).new([0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x4, 0x0, 0x0, 0x0, 0xc, 0x0, 0x0, 0x0, 0x1c, 0x0, 0x0, 0x0, 0x3c, 0x0, 0x0, 0x0, 0x7c, 0x0, 0x0, 0x0, 0xfc, 0x0, 0x0, 0x0, 0xfc, 0x1, 0x0, 0x0, 0xfc, 0x3b, 0x0, 0x0, 0x7c, 0x38, 0x0, 0x0, 0x6c, 0x54, 0x0, 0x0, 0xc4, 0xdc, 0x0, 0x0, 0xc0, 0x44, 0x0, 0x0, 0x80, 0x39, 0x0, 0x0, 0x80, 0x39, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0]) }
      const_attr_reader  :APPSTARTING_SRC
      
      const_set_lazy(:APPSTARTING_MASK) { Array.typed(::Java::Byte).new([0x0, 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x0, 0xe, 0x0, 0x0, 0x0, 0x1e, 0x0, 0x0, 0x0, 0x3e, 0x0, 0x0, 0x0, 0x7e, 0x0, 0x0, 0x0, 0xfe, 0x0, 0x0, 0x0, 0xfe, 0x1, 0x0, 0x0, 0xfe, 0x3b, 0x0, 0x0, 0xfe, 0x7f, 0x0, 0x0, 0xfe, 0x7f, 0x0, 0x0, 0xfe, 0xfe, 0x0, 0x0, 0xee, 0xff, 0x1, 0x0, 0xe4, 0xff, 0x0, 0x0, 0xc0, 0x7f, 0x0, 0x0, 0xc0, 0x7f, 0x0, 0x0, 0x80, 0x39, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0]) }
      const_attr_reader  :APPSTARTING_MASK
    }
    
    typesig { [Device] }
    def initialize(device)
      @handle = 0
      super(device)
    end
    
    typesig { [Device, ::Java::Int] }
    # Constructs a new cursor given a device and a style
    # constant describing the desired cursor appearance.
    # <p>
    # You must dispose the cursor when it is no longer required.
    # </p>
    # 
    # @param device the device on which to allocate the cursor
    # @param style the style of cursor to allocate
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if device is null and there is no current device</li>
    # <li>ERROR_INVALID_ARGUMENT - when an unknown style is specified</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES - if a handle could not be obtained for cursor creation</li>
    # </ul>
    # 
    # @see SWT#CURSOR_ARROW
    # @see SWT#CURSOR_WAIT
    # @see SWT#CURSOR_CROSS
    # @see SWT#CURSOR_APPSTARTING
    # @see SWT#CURSOR_HELP
    # @see SWT#CURSOR_SIZEALL
    # @see SWT#CURSOR_SIZENESW
    # @see SWT#CURSOR_SIZENS
    # @see SWT#CURSOR_SIZENWSE
    # @see SWT#CURSOR_SIZEWE
    # @see SWT#CURSOR_SIZEN
    # @see SWT#CURSOR_SIZES
    # @see SWT#CURSOR_SIZEE
    # @see SWT#CURSOR_SIZEW
    # @see SWT#CURSOR_SIZENE
    # @see SWT#CURSOR_SIZESE
    # @see SWT#CURSOR_SIZESW
    # @see SWT#CURSOR_SIZENW
    # @see SWT#CURSOR_UPARROW
    # @see SWT#CURSOR_IBEAM
    # @see SWT#CURSOR_NO
    # @see SWT#CURSOR_HAND
    def initialize(device, style)
      @handle = 0
      super(device)
      shape = 0
      case (style)
      when SWT::CURSOR_APPSTARTING
      when SWT::CURSOR_ARROW
        shape = OS::GDK_LEFT_PTR
      when SWT::CURSOR_WAIT
        shape = OS::GDK_WATCH
      when SWT::CURSOR_CROSS
        shape = OS::GDK_CROSS
      when SWT::CURSOR_HAND
        shape = OS::GDK_HAND2
      when SWT::CURSOR_HELP
        shape = OS::GDK_QUESTION_ARROW
      when SWT::CURSOR_SIZEALL
        shape = OS::GDK_FLEUR
      when SWT::CURSOR_SIZENESW
        shape = OS::GDK_SIZING
      when SWT::CURSOR_SIZENS
        shape = OS::GDK_DOUBLE_ARROW
      when SWT::CURSOR_SIZENWSE
        shape = OS::GDK_SIZING
      when SWT::CURSOR_SIZEWE
        shape = OS::GDK_SB_H_DOUBLE_ARROW
      when SWT::CURSOR_SIZEN
        shape = OS::GDK_TOP_SIDE
      when SWT::CURSOR_SIZES
        shape = OS::GDK_BOTTOM_SIDE
      when SWT::CURSOR_SIZEE
        shape = OS::GDK_RIGHT_SIDE
      when SWT::CURSOR_SIZEW
        shape = OS::GDK_LEFT_SIDE
      when SWT::CURSOR_SIZENE
        shape = OS::GDK_TOP_RIGHT_CORNER
      when SWT::CURSOR_SIZESE
        shape = OS::GDK_BOTTOM_RIGHT_CORNER
      when SWT::CURSOR_SIZESW
        shape = OS::GDK_BOTTOM_LEFT_CORNER
      when SWT::CURSOR_SIZENW
        shape = OS::GDK_TOP_LEFT_CORNER
      when SWT::CURSOR_UPARROW
        shape = OS::GDK_SB_UP_ARROW
      when SWT::CURSOR_IBEAM
        shape = OS::GDK_XTERM
      when SWT::CURSOR_NO
        shape = OS::GDK_X_CURSOR
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((shape).equal?(0) && (style).equal?(SWT::CURSOR_APPSTARTING))
        @handle = create_cursor(APPSTARTING_SRC, APPSTARTING_MASK, 32, 32, 2, 2, true)
      else
        @handle = OS.gdk_cursor_new(shape)
      end
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      init
    end
    
    typesig { [Device, ImageData, ImageData, ::Java::Int, ::Java::Int] }
    # Constructs a new cursor given a device, image and mask
    # data describing the desired cursor appearance, and the x
    # and y coordinates of the <em>hotspot</em> (that is, the point
    # within the area covered by the cursor which is considered
    # to be where the on-screen pointer is "pointing").
    # <p>
    # The mask data is allowed to be null, but in this case the source
    # must be an ImageData representing an icon that specifies both
    # color data and mask data.
    # <p>
    # You must dispose the cursor when it is no longer required.
    # </p>
    # 
    # @param device the device on which to allocate the cursor
    # @param source the color data for the cursor
    # @param mask the mask data for the cursor (or null)
    # @param hotspotX the x coordinate of the cursor's hotspot
    # @param hotspotY the y coordinate of the cursor's hotspot
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if device is null and there is no current device</li>
    # <li>ERROR_NULL_ARGUMENT - if the source is null</li>
    # <li>ERROR_NULL_ARGUMENT - if the mask is null and the source does not have a mask</li>
    # <li>ERROR_INVALID_ARGUMENT - if the source and the mask are not the same
    # size, or if the hotspot is outside the bounds of the image</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES - if a handle could not be obtained for cursor creation</li>
    # </ul>
    def initialize(device, source, mask, hotspot_x, hotspot_y)
      @handle = 0
      super(device)
      if ((source).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((mask).nil?)
        if (!((source.get_transparency_type).equal?(SWT::TRANSPARENCY_MASK)))
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        mask = source.get_transparency_mask
      end
      # Check the bounds. Mask must be the same size as source
      if (!(mask.attr_width).equal?(source.attr_width) || !(mask.attr_height).equal?(source.attr_height))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      # Check the hotspots
      if (hotspot_x >= source.attr_width || hotspot_x < 0 || hotspot_y >= source.attr_height || hotspot_y < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      # Convert depth to 1
      source = ImageData.convert_mask(source)
      mask = ImageData.convert_mask(mask)
      # Swap the bits in each byte and convert to appropriate scanline pad
      source_data = Array.typed(::Java::Byte).new(source.attr_data.attr_length) { 0 }
      mask_data = Array.typed(::Java::Byte).new(mask.attr_data.attr_length) { 0 }
      data = source.attr_data
      i = 0
      while i < data.attr_length
        s = data[i]
        source_data[i] = (((s & 0x80) >> 7) | ((s & 0x40) >> 5) | ((s & 0x20) >> 3) | ((s & 0x10) >> 1) | ((s & 0x8) << 1) | ((s & 0x4) << 3) | ((s & 0x2) << 5) | ((s & 0x1) << 7))
        source_data[i] = ~source_data[i]
        i += 1
      end
      source_data = ImageData.convert_pad(source_data, source.attr_width, source.attr_height, source.attr_depth, source.attr_scanline_pad, 1)
      data = mask.attr_data
      i_ = 0
      while i_ < data.attr_length
        s = data[i_]
        mask_data[i_] = (((s & 0x80) >> 7) | ((s & 0x40) >> 5) | ((s & 0x20) >> 3) | ((s & 0x10) >> 1) | ((s & 0x8) << 1) | ((s & 0x4) << 3) | ((s & 0x2) << 5) | ((s & 0x1) << 7))
        mask_data[i_] = ~mask_data[i_]
        i_ += 1
      end
      mask_data = ImageData.convert_pad(mask_data, mask.attr_width, mask.attr_height, mask.attr_depth, mask.attr_scanline_pad, 1)
      @handle = create_cursor(mask_data, source_data, source.attr_width, source.attr_height, hotspot_x, hotspot_y, true)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      init
    end
    
    typesig { [Device, ImageData, ::Java::Int, ::Java::Int] }
    # Constructs a new cursor given a device, image data describing
    # the desired cursor appearance, and the x and y coordinates of
    # the <em>hotspot</em> (that is, the point within the area
    # covered by the cursor which is considered to be where the
    # on-screen pointer is "pointing").
    # <p>
    # You must dispose the cursor when it is no longer required.
    # </p>
    # 
    # @param device the device on which to allocate the cursor
    # @param source the image data for the cursor
    # @param hotspotX the x coordinate of the cursor's hotspot
    # @param hotspotY the y coordinate of the cursor's hotspot
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if device is null and there is no current device</li>
    # <li>ERROR_NULL_ARGUMENT - if the image is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the hotspot is outside the bounds of the
    # image</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES - if a handle could not be obtained for cursor creation</li>
    # </ul>
    # 
    # @since 3.0
    def initialize(device, source, hotspot_x, hotspot_y)
      @handle = 0
      super(device)
      if ((source).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (hotspot_x >= source.attr_width || hotspot_x < 0 || hotspot_y >= source.attr_height || hotspot_y < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      # long
      display = 0
      if (OS::GTK_VERSION >= OS._version(2, 4, 0) && OS.gdk_display_supports_cursor_color(display = OS.gdk_display_get_default))
        width = source.attr_width
        height = source.attr_height
        palette = source.attr_palette
        # long
        pixbuf = OS.gdk_pixbuf_new(OS::GDK_COLORSPACE_RGB, true, 8, width, height)
        if ((pixbuf).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        stride = OS.gdk_pixbuf_get_rowstride(pixbuf)
        # long
        data = OS.gdk_pixbuf_get_pixels(pixbuf)
        buffer = source.attr_data
        if (!palette.attr_is_direct || !(source.attr_depth).equal?(24) || !(stride).equal?(source.attr_bytes_per_line) || !(palette.attr_red_mask).equal?(-0x1000000) || !(palette.attr_green_mask).equal?(0xff0000) || !(palette.attr_blue_mask).equal?(0xff00))
          buffer = Array.typed(::Java::Byte).new(source.attr_width * source.attr_height * 4) { 0 }
          if (palette.attr_is_direct)
            ImageData.blit(ImageData::BLIT_SRC, source.attr_data, source.attr_depth, source.attr_bytes_per_line, source.get_byte_order, 0, 0, source.attr_width, source.attr_height, palette.attr_red_mask, palette.attr_green_mask, palette.attr_blue_mask, ImageData::ALPHA_OPAQUE, nil, 0, 0, 0, buffer, 32, source.attr_width * 4, ImageData::MSB_FIRST, 0, 0, source.attr_width, source.attr_height, -0x1000000, 0xff0000, 0xff00, false, false)
          else
            rgbs = palette.get_rgbs
            length = rgbs.attr_length
            src_reds = Array.typed(::Java::Byte).new(length) { 0 }
            src_greens = Array.typed(::Java::Byte).new(length) { 0 }
            src_blues = Array.typed(::Java::Byte).new(length) { 0 }
            i = 0
            while i < rgbs.attr_length
              rgb = rgbs[i]
              if ((rgb).nil?)
                i += 1
                next
              end
              src_reds[i] = rgb.attr_red
              src_greens[i] = rgb.attr_green
              src_blues[i] = rgb.attr_blue
              i += 1
            end
            ImageData.blit(ImageData::BLIT_SRC, source.attr_data, source.attr_depth, source.attr_bytes_per_line, source.get_byte_order, 0, 0, source.attr_width, source.attr_height, src_reds, src_greens, src_blues, ImageData::ALPHA_OPAQUE, nil, 0, 0, 0, buffer, 32, source.attr_width * 4, ImageData::MSB_FIRST, 0, 0, source.attr_width, source.attr_height, -0x1000000, 0xff0000, 0xff00, false, false)
          end
          if (!(source.attr_mask_data).nil? || !(source.attr_transparent_pixel).equal?(-1))
            mask = source.get_transparency_mask
            mask_data = mask.attr_data
            mask_bpl = mask.attr_bytes_per_line
            offset = 3
            mask_offset = 0
            y = 0
            while y < source.attr_height
              x = 0
              while x < source.attr_width
                buffer[offset] = !(((mask_data[mask_offset + (x >> 3)]) & (1 << (7 - (x & 0x7))))).equal?(0) ? 0xff : 0
                offset += 4
                x += 1
              end
              mask_offset += mask_bpl
              y += 1
            end
          else
            if (!(source.attr_alpha).equal?(-1))
              alpha = source.attr_alpha
              i = 3
              while i < buffer.attr_length
                buffer[i] = alpha
                i += 4
              end
            else
              if (!(source.attr_alpha_data).nil?)
                alpha_data = source.attr_alpha_data
                i = 3
                while i < buffer.attr_length
                  buffer[i] = alpha_data[i / 4]
                  i += 4
                end
              end
            end
          end
        end
        OS.memmove___org_eclipse_swt_graphics_cursor_1(data, buffer, stride * height)
        @handle = OS.gdk_cursor_new_from_pixbuf(display, pixbuf, hotspot_x, hotspot_y)
        OS.g_object_unref(pixbuf)
      else
        mask = source.get_transparency_mask
        # Ensure depth is equal to 1
        if (source.attr_depth > 1)
          # Create a destination image with no data
          new_source = ImageData.new(source.attr_width, source.attr_height, 1, ImageData.bw_palette, 1, nil, 0, nil, nil, -1, -1, 0, 0, 0, 0, 0)
          new_reds = Array.typed(::Java::Byte).new([0, 255])
          new_greens = new_reds
          new_blues = new_reds
          # Convert the source to a black and white image of depth 1
          palette = source.attr_palette
          if (palette.attr_is_direct)
            ImageData.blit(ImageData::BLIT_SRC, source.attr_data, source.attr_depth, source.attr_bytes_per_line, source.get_byte_order, 0, 0, source.attr_width, source.attr_height, palette.attr_red_mask, palette.attr_green_mask, palette.attr_blue_mask, ImageData::ALPHA_OPAQUE, nil, 0, 0, 0, new_source.attr_data, new_source.attr_depth, new_source.attr_bytes_per_line, new_source.get_byte_order, 0, 0, new_source.attr_width, new_source.attr_height, new_reds, new_greens, new_blues, false, false)
          else
            rgbs = palette.get_rgbs
            length = rgbs.attr_length
            src_reds = Array.typed(::Java::Byte).new(length) { 0 }
            src_greens = Array.typed(::Java::Byte).new(length) { 0 }
            src_blues = Array.typed(::Java::Byte).new(length) { 0 }
            i = 0
            while i < rgbs.attr_length
              rgb = rgbs[i]
              if ((rgb).nil?)
                i += 1
                next
              end
              src_reds[i] = rgb.attr_red
              src_greens[i] = rgb.attr_green
              src_blues[i] = rgb.attr_blue
              i += 1
            end
            ImageData.blit(ImageData::BLIT_SRC, source.attr_data, source.attr_depth, source.attr_bytes_per_line, source.get_byte_order, 0, 0, source.attr_width, source.attr_height, src_reds, src_greens, src_blues, ImageData::ALPHA_OPAQUE, nil, 0, 0, 0, new_source.attr_data, new_source.attr_depth, new_source.attr_bytes_per_line, new_source.get_byte_order, 0, 0, new_source.attr_width, new_source.attr_height, new_reds, new_greens, new_blues, false, false)
          end
          source = new_source
        end
        # Swap the bits in each byte and convert to appropriate scanline pad
        source_data = Array.typed(::Java::Byte).new(source.attr_data.attr_length) { 0 }
        mask_data = Array.typed(::Java::Byte).new(mask.attr_data.attr_length) { 0 }
        data = source.attr_data
        i = 0
        while i < data.attr_length
          s = data[i]
          source_data[i] = (((s & 0x80) >> 7) | ((s & 0x40) >> 5) | ((s & 0x20) >> 3) | ((s & 0x10) >> 1) | ((s & 0x8) << 1) | ((s & 0x4) << 3) | ((s & 0x2) << 5) | ((s & 0x1) << 7))
          i += 1
        end
        source_data = ImageData.convert_pad(source_data, source.attr_width, source.attr_height, source.attr_depth, source.attr_scanline_pad, 1)
        data = mask.attr_data
        i_ = 0
        while i_ < data.attr_length
          s = data[i_]
          mask_data[i_] = (((s & 0x80) >> 7) | ((s & 0x40) >> 5) | ((s & 0x20) >> 3) | ((s & 0x10) >> 1) | ((s & 0x8) << 1) | ((s & 0x4) << 3) | ((s & 0x2) << 5) | ((s & 0x1) << 7))
          i_ += 1
        end
        mask_data = ImageData.convert_pad(mask_data, mask.attr_width, mask.attr_height, mask.attr_depth, mask.attr_scanline_pad, 1)
        @handle = create_cursor(source_data, mask_data, source.attr_width, source.attr_height, hotspot_x, hotspot_y, false)
      end
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      init
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    # long
    def create_cursor(source_data, mask_data, width, height, hotspot_x, hotspot_y, reverse)
      # long
      source_pixmap = OS.gdk_bitmap_create_from_data(0, source_data, width, height)
      # long
      mask_pixmap = OS.gdk_bitmap_create_from_data(0, mask_data, width, height)
      # long
      cursor = 0
      if (!(source_pixmap).equal?(0) && !(mask_pixmap).equal?(0))
        foreground = GdkColor.new
        if (!reverse)
          foreground.attr_red = foreground.attr_green = foreground.attr_blue = RJava.cast_to_short(0xffff)
        end
        background = GdkColor.new
        if (reverse)
          background.attr_red = background.attr_green = background.attr_blue = RJava.cast_to_short(0xffff)
        end
        cursor = OS.gdk_cursor_new_from_pixmap(source_pixmap, mask_pixmap, foreground, background, hotspot_x, hotspot_y)
      end
      if (!(source_pixmap).equal?(0))
        OS.g_object_unref(source_pixmap)
      end
      if (!(mask_pixmap).equal?(0))
        OS.g_object_unref(mask_pixmap)
      end
      return cursor
    end
    
    typesig { [] }
    def destroy
      OS.gdk_cursor_destroy(@handle)
      @handle = 0
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
      if (!(object.is_a?(Cursor)))
        return false
      end
      cursor = object
      return (self.attr_device).equal?(cursor.attr_device) && (@handle).equal?(cursor.attr_handle)
    end
    
    class_module.module_eval {
      typesig { [Device, ::Java::Int] }
      # Invokes platform specific functionality to allocate a new cursor.
      # <p>
      # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
      # API for <code>Cursor</code>. It is marked public only so that it
      # can be shared within the packages provided by SWT. It is not
      # available on all platforms, and should never be called from
      # application code.
      # </p>
      # 
      # @param device the device on which to allocate the color
      # @param handle the handle for the cursor
      # 
      # @private
      # 
      # long
      def gtk_new(device, handle)
        cursor = Cursor.new(device)
        cursor.attr_handle = handle
        return cursor
      end
    }
    
    typesig { [] }
    # Returns an integer hash code for the receiver. Any two
    # objects that return <code>true</code> when passed to
    # <code>equals</code> must return the same value for this
    # method.
    # 
    # @return the receiver's hash
    # 
    # @see #equals
    def hash_code
      # 64
      return RJava.cast_to_int(@handle)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the cursor has been disposed,
    # and <code>false</code> otherwise.
    # <p>
    # This method gets the dispose state for the cursor.
    # When a cursor has been disposed, it is an error to
    # invoke any other method using the cursor.
    # 
    # @return <code>true</code> when the cursor is disposed and <code>false</code> otherwise
    def is_disposed
      return (@handle).equal?(0)
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the receiver
    def to_s
      if (is_disposed)
        return "Cursor {*DISPOSED*}"
      end
      return "Cursor {" + RJava.cast_to_string(@handle) + "}"
    end
    
    private
    alias_method :initialize__cursor, :initialize
  end
  
end
