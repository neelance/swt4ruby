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
  module CursorImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Carbon
      include ::Org::Eclipse::Swt::Internal::Cocoa
      include ::Org::Eclipse::Swt
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
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
    class_module.module_eval {
      
      def initialized
        defined?(@@initialized) ? @@initialized : @@initialized= false
      end
      alias_method :attr_initialized, :initialized
      
      def initialized=(value)
        @@initialized = value
      end
      alias_method :attr_initialized=, :initialized=
    }
    
    typesig { [Device] }
    # Prevents uninitialized instances from being created outside the package.
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
      case (style)
      when SWT::CURSOR_HAND
        @handle = OS.attr_k_theme_pointing_hand_cursor
      when SWT::CURSOR_ARROW
        @handle = OS.attr_k_theme_arrow_cursor
      when SWT::CURSOR_WAIT
        @handle = OS.attr_k_theme_spinning_cursor
      when SWT::CURSOR_CROSS
        @handle = OS.attr_k_theme_cross_cursor
      when SWT::CURSOR_APPSTARTING
        @handle = OS.attr_k_theme_arrow_cursor
      when SWT::CURSOR_HELP
        @handle = OS.attr_k_theme_cross_cursor
      when SWT::CURSOR_SIZEALL
        @handle = OS.attr_k_theme_cross_cursor
      when SWT::CURSOR_SIZENESW
        @handle = OS.attr_k_theme_cross_cursor
      when SWT::CURSOR_SIZENS
        @handle = OS.attr_k_theme_resize_up_down_cursor
      when SWT::CURSOR_SIZENWSE
        @handle = OS.attr_k_theme_cross_cursor
      when SWT::CURSOR_SIZEWE
        @handle = OS.attr_k_theme_resize_left_right_cursor
      when SWT::CURSOR_SIZEN
        @handle = OS.attr_k_theme_resize_up_cursor
      when SWT::CURSOR_SIZES
        @handle = OS.attr_k_theme_resize_down_cursor
      when SWT::CURSOR_SIZEE
        @handle = OS.attr_k_theme_resize_right_cursor
      when SWT::CURSOR_SIZEW
        @handle = OS.attr_k_theme_resize_left_cursor
      when SWT::CURSOR_SIZENE
        @handle = OS.attr_k_theme_cross_cursor
      when SWT::CURSOR_SIZESE
        @handle = OS.attr_k_theme_cross_cursor
      when SWT::CURSOR_SIZESW
        @handle = OS.attr_k_theme_cross_cursor
      when SWT::CURSOR_SIZENW
        @handle = OS.attr_k_theme_cross_cursor
      when SWT::CURSOR_UPARROW
        @handle = OS.attr_k_theme_cross_cursor
      when SWT::CURSOR_IBEAM
        @handle = OS.attr_k_theme_ibeam_cursor
      when SWT::CURSOR_NO
        @handle = OS.attr_k_theme_not_allowed_cursor
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
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
        if (!(source.get_transparency_type).equal?(SWT::TRANSPARENCY_MASK))
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
      if (OS::VERSION >= 0x1040)
        data = Array.typed(::Java::Byte).new(source.attr_width * source.attr_height * 4) { 0 }
        y = 0
        while y < source.attr_height
          offset = y * source.attr_width * 4
          x = 0
          while x < source.attr_width
            pixel = source.get_pixel(x, y)
            mask_pixel = mask.get_pixel(x, y)
            if ((pixel).equal?(0) && (mask_pixel).equal?(0))
              # BLACK
              data[offset] = 0xff
            else
              if ((pixel).equal?(0) && (mask_pixel).equal?(1))
                # WHITE - cursor color
                data[offset] = data[offset + 1] = data[offset + 2] = data[offset + 3] = 0xff
              else
                if ((pixel).equal?(1) && (mask_pixel).equal?(0))
                  # SCREEN
                else
                  # Feature in the Macintosh. It is not possible to have
                  # the reverse screen case using NSCursor.
                  # Reverse screen will be the same as screen.
                  # 
                  # REVERSE SCREEN -> SCREEN
                end
              end
            end
            offset += 4
            x += 1
          end
          y += 1
        end
        create_nscursor(hotspot_x, hotspot_y, data, source.attr_width, source.attr_height)
        return
      end
      # Convert depth to 1
      mask = ImageData.convert_mask(mask)
      source = ImageData.convert_mask(source)
      # Find the first non transparent pixel if cursor bigger than 16x16.
      width = source.attr_width
      height = source.attr_height
      min_x = 0
      min_y = 0
      if (width > 16 || height > 16)
        min_x = width
        min_y = height
        max_x = 0
        max_y = 0
        y = 0
        while y < height
          x = 0
          while x < width
            if (!((source.get_pixel(x, y)).equal?(1) && (mask.get_pixel(x, y)).equal?(0)))
              min_x = Math.min(min_x, x)
              min_y = Math.min(min_y, y)
              max_x = Math.max(max_x, x)
              max_y = Math.max(max_y, y)
            end
            x += 1
          end
          y += 1
        end
        width = max_x - min_x + 1
        height = max_y - min_y + 1
        # Stretch cursor if still bigger than 16x16.
        if (width > 16 || height > 16)
          new_width = Math.min(width, 16)
          new_height = Math.min(height, 16)
          new_source = ImageData.new(new_width, new_height, source.attr_depth, source.attr_palette, 1, nil, 0, nil, nil, -1, -1, source.attr_type, source.attr_x, source.attr_y, source.attr_disposal_method, source.attr_delay_time)
          new_mask = ImageData.new(new_width, new_height, mask.attr_depth, mask.attr_palette, 1, nil, 0, nil, nil, -1, -1, mask.attr_type, mask.attr_x, mask.attr_y, mask.attr_disposal_method, mask.attr_delay_time)
          ImageData.blit(ImageData::BLIT_SRC, source.attr_data, source.attr_depth, source.attr_bytes_per_line, source.get_byte_order, min_x, min_y, width, height, nil, nil, nil, ImageData::ALPHA_OPAQUE, nil, 0, min_x, min_y, new_source.attr_data, new_source.attr_depth, new_source.attr_bytes_per_line, new_source.get_byte_order, 0, 0, new_width, new_height, nil, nil, nil, false, false)
          ImageData.blit(ImageData::BLIT_SRC, mask.attr_data, mask.attr_depth, mask.attr_bytes_per_line, mask.get_byte_order, min_x, min_y, width, height, nil, nil, nil, ImageData::ALPHA_OPAQUE, nil, 0, min_x, min_y, new_mask.attr_data, new_mask.attr_depth, new_mask.attr_bytes_per_line, new_mask.get_byte_order, 0, 0, new_width, new_height, nil, nil, nil, false, false)
          width = new_width
          height = new_height
          min_x = min_y = 0
          source = new_source
          mask = new_mask
        end
      end
      # Create the cursor
      cursor = Org::Eclipse::Swt::Internal::Carbon::Cursor.new
      src_data = cursor.attr_data
      mask_data = cursor.attr_mask
      y = 0
      while y < height
        d = 0
        m = 0
        x = 0
        while x < width
          bit = 1 << (width - 1 - x)
          if ((source.get_pixel(min_x + x, min_y + y)).equal?(0))
            m |= bit
            if ((mask.get_pixel(min_x + x, min_y + y)).equal?(0))
              d |= bit
            end
          else
            if (!(mask.get_pixel(min_x + x, min_y + y)).equal?(0))
              d |= bit
            end
          end
          x += 1
        end
        src_data[y * 2] = (d >> 8)
        src_data[y * 2 + 1] = (d & 0xff)
        mask_data[y * 2] = (m >> 8)
        mask_data[y * 2 + 1] = (m & 0xff)
        y += 1
      end
      cursor.attr_hot_spot_h = RJava.cast_to_short(Math.max(0, Math.min(15, hotspot_x - min_x)))
      cursor.attr_hot_spot_v = RJava.cast_to_short(Math.max(0, Math.min(15, hotspot_y - min_y)))
      @handle = OS._new_ptr(Org::Eclipse::Swt::Internal::Carbon::Cursor.attr_sizeof)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS.memmove(@handle, cursor, Org::Eclipse::Swt::Internal::Carbon::Cursor.attr_sizeof)
      init
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
    def create_nscursor(hotspot_x, hotspot_y, buffer, width, height)
      if (!self.attr_initialized)
        self.attr_initialized = true
        window = Cocoa.objc_msg_send(Cocoa.objc_msg_send(Cocoa::C_NSWindow, Cocoa::S_alloc), Cocoa::S_init)
        Cocoa.objc_msg_send(window, Cocoa::S_release)
      end
      ns_image = Cocoa.objc_msg_send(Cocoa::C_NSImage, Cocoa::S_alloc)
      if ((ns_image).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      ns_image_rep = Cocoa.objc_msg_send(Cocoa::C_NSBitmapImageRep, Cocoa::S_alloc)
      if ((ns_image_rep).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      @handle = Cocoa.objc_msg_send(Cocoa::C_NSCursor, Cocoa::S_alloc)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      size = NSSize.new
      size.attr_width = width
      size.attr_height = height
      ns_image = Cocoa.objc_msg_send(ns_image, Cocoa::S_initWithSize, size)
      ns_image_rep = Cocoa.objc_msg_send(ns_image_rep, Cocoa::S_initWithBitmapDataPlanes, nil, width, height, 8, 4, 1, 0, Cocoa._nsdevice_rgbcolor_space, Cocoa::NSAlphaFirstBitmapFormat | Cocoa::NSAlphaNonpremultipliedBitmapFormat, width * 4, 32)
      bitmap_data = Cocoa.objc_msg_send(ns_image_rep, Cocoa::S_bitmapData)
      OS.memmove(bitmap_data, buffer, buffer.attr_length)
      Cocoa.objc_msg_send(ns_image, Cocoa::S_addRepresentation, ns_image_rep)
      point = NSPoint.new
      point.attr_x = hotspot_x
      point.attr_y = hotspot_y
      @handle = Cocoa.objc_msg_send(@handle, Cocoa::S_initWithImage_hotSpot, ns_image, point)
      Cocoa.objc_msg_send(ns_image, Cocoa::S_release)
      Cocoa.objc_msg_send(ns_image_rep, Cocoa::S_release)
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
      if (OS::VERSION >= 0x1040)
        data = Array.typed(::Java::Byte).new(source.attr_width * source.attr_height * 4) { 0 }
        palette = source.attr_palette
        if (palette.attr_is_direct)
          ImageData.blit(ImageData::BLIT_SRC, source.attr_data, source.attr_depth, source.attr_bytes_per_line, source.get_byte_order, 0, 0, source.attr_width, source.attr_height, palette.attr_red_mask, palette.attr_green_mask, palette.attr_blue_mask, ImageData::ALPHA_OPAQUE, nil, 0, 0, 0, data, 32, source.attr_width * 4, ImageData::MSB_FIRST, 0, 0, source.attr_width, source.attr_height, 0xff0000, 0xff00, 0xff, false, false)
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
          ImageData.blit(ImageData::BLIT_SRC, source.attr_data, source.attr_depth, source.attr_bytes_per_line, source.get_byte_order, 0, 0, source.attr_width, source.attr_height, src_reds, src_greens, src_blues, ImageData::ALPHA_OPAQUE, nil, 0, 0, 0, data, 32, source.attr_width * 4, ImageData::MSB_FIRST, 0, 0, source.attr_width, source.attr_height, 0xff0000, 0xff00, 0xff, false, false)
        end
        if (!(source.attr_mask_data).nil? || !(source.attr_transparent_pixel).equal?(-1))
          mask = source.get_transparency_mask
          mask_data = mask.attr_data
          mask_bpl = mask.attr_bytes_per_line
          offset = 0
          mask_offset = 0
          y = 0
          while y < source.attr_height
            x = 0
            while x < source.attr_width
              data[offset] = !(((mask_data[mask_offset + (x >> 3)]) & (1 << (7 - (x & 0x7))))).equal?(0) ? 0xff : 0
              offset += 4
              x += 1
            end
            mask_offset += mask_bpl
            y += 1
          end
        else
          if (!(source.attr_alpha).equal?(-1))
            alpha = source.attr_alpha
            i = 0
            while i < data.attr_length
              data[i] = alpha
              i += 4
            end
          else
            if (!(source.attr_alpha_data).nil?)
              alpha_data = source.attr_alpha_data
              i = 0
              while i < data.attr_length
                data[i] = alpha_data[i / 4]
                i += 4
              end
            end
          end
        end
        create_nscursor(hotspot_x, hotspot_y, data, source.attr_width, source.attr_height)
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
        # Find the first non transparent pixel if cursor bigger than 16x16.
        width = source.attr_width
        height = source.attr_height
        min_x = 0
        min_y = 0
        if (width > 16 || height > 16)
          min_x = width
          min_y = height
          max_x = 0
          max_y = 0
          y = 0
          while y < height
            x = 0
            while x < width
              if (!((source.get_pixel(x, y)).equal?(1) && (mask.get_pixel(x, y)).equal?(0)))
                min_x = Math.min(min_x, x)
                min_y = Math.min(min_y, y)
                max_x = Math.max(max_x, x)
                max_y = Math.max(max_y, y)
              end
              x += 1
            end
            y += 1
          end
          width = max_x - min_x + 1
          height = max_y - min_y + 1
          # Stretch cursor if still bigger than 16x16.
          if (width > 16 || height > 16)
            new_width = Math.min(width, 16)
            new_height = Math.min(height, 16)
            new_source = ImageData.new(new_width, new_height, source.attr_depth, source.attr_palette, 1, nil, 0, nil, nil, -1, -1, source.attr_type, source.attr_x, source.attr_y, source.attr_disposal_method, source.attr_delay_time)
            new_mask = ImageData.new(new_width, new_height, mask.attr_depth, mask.attr_palette, 1, nil, 0, nil, nil, -1, -1, mask.attr_type, mask.attr_x, mask.attr_y, mask.attr_disposal_method, mask.attr_delay_time)
            ImageData.blit(ImageData::BLIT_SRC, source.attr_data, source.attr_depth, source.attr_bytes_per_line, source.get_byte_order, min_x, min_y, width, height, nil, nil, nil, ImageData::ALPHA_OPAQUE, nil, 0, min_x, min_y, new_source.attr_data, new_source.attr_depth, new_source.attr_bytes_per_line, new_source.get_byte_order, 0, 0, new_width, new_height, nil, nil, nil, false, false)
            ImageData.blit(ImageData::BLIT_SRC, mask.attr_data, mask.attr_depth, mask.attr_bytes_per_line, mask.get_byte_order, min_x, min_y, width, height, nil, nil, nil, ImageData::ALPHA_OPAQUE, nil, 0, min_x, min_y, new_mask.attr_data, new_mask.attr_depth, new_mask.attr_bytes_per_line, new_mask.get_byte_order, 0, 0, new_width, new_height, nil, nil, nil, false, false)
            width = new_width
            height = new_height
            min_x = min_y = 0
            source = new_source
            mask = new_mask
          end
        end
        # Create the cursor
        cursor = Org::Eclipse::Swt::Internal::Carbon::Cursor.new
        src_data = cursor.attr_data
        mask_data = cursor.attr_mask
        y = 0
        while y < height
          d = 0
          m = 0
          x = 0
          while x < width
            bit = 1 << (width - 1 - x)
            if ((source.get_pixel(x + min_x, y + min_y)).equal?(0))
              if (!(mask.get_pixel(x + min_x, y + min_y)).equal?(0))
                d |= bit
                m |= bit
              end
            else
              if (!(mask.get_pixel(x + min_x, y + min_y)).equal?(0))
                m |= bit
              end
            end
            x += 1
          end
          src_data[y * 2] = (d >> 8)
          src_data[y * 2 + 1] = (d & 0xff)
          mask_data[y * 2] = (m >> 8)
          mask_data[y * 2 + 1] = (m & 0xff)
          y += 1
        end
        cursor.attr_hot_spot_h = RJava.cast_to_short(Math.max(0, Math.min(15, hotspot_x - min_x)))
        cursor.attr_hot_spot_v = RJava.cast_to_short(Math.max(0, Math.min(15, hotspot_y - min_y)))
        @handle = OS._new_ptr(Org::Eclipse::Swt::Internal::Carbon::Cursor.attr_sizeof)
        if ((@handle).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        OS.memmove(@handle, cursor, Org::Eclipse::Swt::Internal::Carbon::Cursor.attr_sizeof)
      end
      init
    end
    
    typesig { [] }
    def destroy
      case (@handle)
      when OS.attr_k_theme_pointing_hand_cursor, OS.attr_k_theme_arrow_cursor, OS.attr_k_theme_spinning_cursor, OS.attr_k_theme_cross_cursor, OS.attr_k_theme_watch_cursor, OS.attr_k_theme_ibeam_cursor, OS.attr_k_theme_not_allowed_cursor, OS.attr_k_theme_resize_left_right_cursor, OS.attr_k_theme_resize_left_cursor, OS.attr_k_theme_resize_right_cursor, OS.attr_k_theme_resize_up_down_cursor, OS.attr_k_theme_resize_up_cursor, OS.attr_k_theme_resize_down_cursor
      else
        if (OS::VERSION >= 0x1040)
          Cocoa.objc_msg_send(@handle, Cocoa::S_release)
        else
          OS._dispose_ptr(@handle)
        end
      end
      @handle = -1
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
      if (!(object.is_a?(Cursor)))
        return false
      end
      cursor = object
      return (self.attr_device).equal?(cursor.attr_device) && (@handle).equal?(cursor.attr_handle)
    end
    
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
      return @handle
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
      return (@handle).equal?(-1)
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
      return "Cursor {" + (@handle).to_s + "}"
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
      def carbon_new(device, handle)
        cursor = Cursor.new(device)
        cursor.attr_handle = handle
        return cursor
      end
    }
    
    private
    alias_method :initialize__cursor, :initialize
  end
  
end
