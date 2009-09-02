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
    
    class_module.module_eval {
      const_set_lazy(:WAIT_SOURCE) { Array.typed(::Java::Byte).new([0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0xff, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, ]) }
      const_attr_reader  :WAIT_SOURCE
    }
    
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
    
    typesig { [Device] }
    # Prevents uninitialized instances from being created outside the package.
    def initialize(device)
      @handle = nil
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
      @handle = nil
      super(device)
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        case (style)
        when SWT::CURSOR_HAND
          @handle = NSCursor.pointing_hand_cursor
        when SWT::CURSOR_ARROW
          @handle = NSCursor.arrow_cursor
        when SWT::CURSOR_WAIT
        when SWT::CURSOR_CROSS
          @handle = NSCursor.crosshair_cursor
        when SWT::CURSOR_APPSTARTING
          @handle = NSCursor.arrow_cursor
        when SWT::CURSOR_HELP
          @handle = NSCursor.crosshair_cursor
        when SWT::CURSOR_SIZEALL
          @handle = NSCursor.crosshair_cursor
        when SWT::CURSOR_SIZENESW
          @handle = NSCursor.crosshair_cursor
        when SWT::CURSOR_SIZENS
          @handle = NSCursor.resize_up_down_cursor
        when SWT::CURSOR_SIZENWSE
          @handle = NSCursor.crosshair_cursor
        when SWT::CURSOR_SIZEWE
          @handle = NSCursor.resize_left_right_cursor
        when SWT::CURSOR_SIZEN
          @handle = NSCursor.resize_up_cursor
        when SWT::CURSOR_SIZES
          @handle = NSCursor.resize_down_cursor
        when SWT::CURSOR_SIZEE
          @handle = NSCursor.resize_right_cursor
        when SWT::CURSOR_SIZEW
          @handle = NSCursor.resize_left_cursor
        when SWT::CURSOR_SIZENE
          @handle = NSCursor.crosshair_cursor
        when SWT::CURSOR_SIZESE
          @handle = NSCursor.crosshair_cursor
        when SWT::CURSOR_SIZESW
          @handle = NSCursor.crosshair_cursor
        when SWT::CURSOR_SIZENW
          @handle = NSCursor.crosshair_cursor
        when SWT::CURSOR_UPARROW
          @handle = NSCursor.crosshair_cursor
        when SWT::CURSOR_IBEAM
          @handle = NSCursor._ibeam_cursor
        when SWT::CURSOR_NO
          @handle = NSCursor.crosshair_cursor
        else
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if ((@handle).nil? && (style).equal?(SWT::CURSOR_WAIT))
          ns_image = NSImage.new.alloc
          ns_image_rep = NSBitmapImageRep.new.alloc
          @handle = NSCursor.new.alloc
          width = 16
          height = 16
          size = NSSize.new
          size.attr_width = width
          size.attr_height = height
          ns_image = ns_image.init_with_size(size)
          ns_image_rep = ns_image_rep.init_with_bitmap_data_planes(0, width, height, 8, 4, true, false, OS::NSDeviceRGBColorSpace, OS::NSAlphaFirstBitmapFormat | OS::NSAlphaNonpremultipliedBitmapFormat, width * 4, 32)
          OS.memmove(ns_image_rep.bitmap_data, WAIT_SOURCE, WAIT_SOURCE.attr_length)
          ns_image.add_representation(ns_image_rep)
          point = NSPoint.new
          point.attr_x = 0
          point.attr_y = 0
          @handle = @handle.init_with_image(ns_image, point)
          ns_image_rep.release
          ns_image.release
        else
          @handle.retain
        end
        @handle.set_on_mouse_entered(true)
        init
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      @handle = nil
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        create_nscursor(hotspot_x, hotspot_y, data, source.attr_width, source.attr_height)
        init
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
    def create_nscursor(hotspot_x, hotspot_y, buffer, width, height)
      ns_image = NSImage.new.alloc
      ns_image_rep = NSBitmapImageRep.new.alloc
      @handle = NSCursor.new.alloc
      size = NSSize.new
      size.attr_width = width
      size.attr_height = height
      ns_image = ns_image.init_with_size(size)
      ns_image_rep = ns_image_rep.init_with_bitmap_data_planes(0, width, height, 8, 4, true, false, NSString.new(OS._nsdevice_rgbcolor_space), OS::NSAlphaFirstBitmapFormat | OS::NSAlphaNonpremultipliedBitmapFormat, width * 4, 32)
      OS.memmove(ns_image_rep.bitmap_data, buffer, buffer.attr_length)
      ns_image.add_representation(ns_image_rep)
      point = NSPoint.new
      point.attr_x = hotspot_x
      point.attr_y = hotspot_y
      @handle = @handle.init_with_image(ns_image, point)
      ns_image_rep.release
      ns_image.release
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
      @handle = nil
      super(device)
      if ((source).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (hotspot_x >= source.attr_width || hotspot_x < 0 || hotspot_y >= source.attr_height || hotspot_y < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        create_nscursor(hotspot_x, hotspot_y, data, source.attr_width, source.attr_height)
        init
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [] }
    def destroy
      @handle.release
      @handle = nil
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
      return !(@handle).nil? ? RJava.cast_to_int(@handle.attr_id) : 0
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
      return (@handle).nil?
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
    
    class_module.module_eval {
      typesig { [Device, NSCursor] }
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
      def cocoa_new(device, handle)
        cursor = Cursor.new(device)
        cursor.attr_handle = handle
        return cursor
      end
    }
    
    private
    alias_method :initialize__cursor, :initialize
  end
  
end
