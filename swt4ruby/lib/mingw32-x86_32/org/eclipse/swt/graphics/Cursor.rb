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
      include ::Org::Eclipse::Swt::Internal::Win32
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
    # 
    # long
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
    attr_accessor :is_icon
    alias_method :attr_is_icon, :is_icon
    undef_method :is_icon
    alias_method :attr_is_icon=, :is_icon=
    undef_method :is_icon=
    
    class_module.module_eval {
      # data used to create a HAND cursor.
      const_set_lazy(:HAND_SOURCE) { Array.typed(::Java::Byte).new([0xf9, 0xff, 0xff, 0xff, 0xf0, 0xff, 0xff, 0xff, 0xf0, 0xff, 0xff, 0xff, 0xf0, 0xff, 0xff, 0xff, 0xf0, 0x3f, 0xff, 0xff, 0xf0, 0x7, 0xff, 0xff, 0xf0, 0x3, 0xff, 0xff, 0xf0, 0x0, 0xff, 0xff, 0x10, 0x0, 0x7f, 0xff, 0x0, 0x0, 0x7f, 0xff, 0x80, 0x0, 0x7f, 0xff, 0xc0, 0x0, 0x7f, 0xff, 0xe0, 0x0, 0x7f, 0xff, 0xf0, 0x0, 0x7f, 0xff, 0xf8, 0x0, 0xff, 0xff, 0xfc, 0x1, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff, 0xff]) }
      const_attr_reader  :HAND_SOURCE
      
      const_set_lazy(:HAND_MASK) { Array.typed(::Java::Byte).new([0x0, 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x0, 0x6, 0x0, 0x0, 0x0, 0x6, 0xc0, 0x0, 0x0, 0x6, 0xd8, 0x0, 0x0, 0x6, 0xd8, 0x0, 0x0, 0x7, 0xdb, 0x0, 0x0, 0x67, 0xfb, 0x0, 0x0, 0x3f, 0xff, 0x0, 0x0, 0x1f, 0xff, 0x0, 0x0, 0xf, 0xff, 0x0, 0x0, 0x7, 0xff, 0x0, 0x0, 0x3, 0xfe, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0]) }
      const_attr_reader  :HAND_MASK
    }
    
    typesig { [Device] }
    # Prevents uninitialized instances from being created outside the package.
    def initialize(device)
      @handle = 0
      @is_icon = false
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
      @is_icon = false
      super(device)
      # long
      lp_cursor_name = 0
      case (style)
      when SWT::CURSOR_HAND
        lp_cursor_name = OS::IDC_HAND
      when SWT::CURSOR_ARROW
        lp_cursor_name = OS::IDC_ARROW
      when SWT::CURSOR_WAIT
        lp_cursor_name = OS::IDC_WAIT
      when SWT::CURSOR_CROSS
        lp_cursor_name = OS::IDC_CROSS
      when SWT::CURSOR_APPSTARTING
        lp_cursor_name = OS::IDC_APPSTARTING
      when SWT::CURSOR_HELP
        lp_cursor_name = OS::IDC_HELP
      when SWT::CURSOR_SIZEALL
        lp_cursor_name = OS::IDC_SIZEALL
      when SWT::CURSOR_SIZENESW
        lp_cursor_name = OS::IDC_SIZENESW
      when SWT::CURSOR_SIZENS
        lp_cursor_name = OS::IDC_SIZENS
      when SWT::CURSOR_SIZENWSE
        lp_cursor_name = OS::IDC_SIZENWSE
      when SWT::CURSOR_SIZEWE
        lp_cursor_name = OS::IDC_SIZEWE
      when SWT::CURSOR_SIZEN
        lp_cursor_name = OS::IDC_SIZENS
      when SWT::CURSOR_SIZES
        lp_cursor_name = OS::IDC_SIZENS
      when SWT::CURSOR_SIZEE
        lp_cursor_name = OS::IDC_SIZEWE
      when SWT::CURSOR_SIZEW
        lp_cursor_name = OS::IDC_SIZEWE
      when SWT::CURSOR_SIZENE
        lp_cursor_name = OS::IDC_SIZENESW
      when SWT::CURSOR_SIZESE
        lp_cursor_name = OS::IDC_SIZENWSE
      when SWT::CURSOR_SIZESW
        lp_cursor_name = OS::IDC_SIZENESW
      when SWT::CURSOR_SIZENW
        lp_cursor_name = OS::IDC_SIZENWSE
      when SWT::CURSOR_UPARROW
        lp_cursor_name = OS::IDC_UPARROW
      when SWT::CURSOR_IBEAM
        lp_cursor_name = OS::IDC_IBEAM
      when SWT::CURSOR_NO
        lp_cursor_name = OS::IDC_NO
      else
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @handle = OS._load_cursor(0, lp_cursor_name)
      # IDC_HAND is supported only on Windows 2000 and Windows 98.
      # Create a hand cursor if running in other Windows platforms.
      if ((@handle).equal?(0) && (style).equal?(SWT::CURSOR_HAND))
        width = OS._get_system_metrics(OS::SM_CXCURSOR)
        height = OS._get_system_metrics(OS::SM_CYCURSOR)
        if ((width).equal?(32) && (height).equal?(32))
          # long
          h_inst = OS._get_module_handle(nil)
          if (OS::IsWinCE)
            SWT.error(SWT::ERROR_NOT_IMPLEMENTED)
          end
          @handle = OS._create_cursor(h_inst, 5, 0, 32, 32, HAND_SOURCE, HAND_MASK)
        end
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
      @is_icon = false
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
      # Convert depth to 1
      mask = ImageData.convert_mask(mask)
      source = ImageData.convert_mask(source)
      # Make sure source and mask scanline pad is 2
      source_data = ImageData.convert_pad(source.attr_data, source.attr_width, source.attr_height, source.attr_depth, source.attr_scanline_pad, 2)
      mask_data = ImageData.convert_pad(mask.attr_data, mask.attr_width, mask.attr_height, mask.attr_depth, mask.attr_scanline_pad, 2)
      # Create the cursor
      # long
      h_inst = OS._get_module_handle(nil)
      if (OS::IsWinCE)
        SWT.error(SWT::ERROR_NOT_IMPLEMENTED)
      end
      @handle = OS._create_cursor(h_inst, hotspot_x, hotspot_y, source.attr_width, source.attr_height, source_data, mask_data)
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
      @is_icon = false
      super(device)
      if ((source).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      # Check the hotspots
      if (hotspot_x >= source.attr_width || hotspot_x < 0 || hotspot_y >= source.attr_height || hotspot_y < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      mask = source.get_transparency_mask
      # long
      result = Image.init(self.attr_device, nil, source, mask)
      # long
      h_bitmap = result[0]
      # long
      h_mask = result[1]
      # Create the icon
      info = ICONINFO.new
      info.attr_f_icon = false
      info.attr_hbm_color = h_bitmap
      info.attr_hbm_mask = h_mask
      info.attr_x_hotspot = hotspot_x
      info.attr_y_hotspot = hotspot_y
      @handle = OS._create_icon_indirect(info)
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS._delete_object(h_bitmap)
      OS._delete_object(h_mask)
      @is_icon = true
      init
    end
    
    typesig { [] }
    def destroy
      # It is an error in Windows to destroy the current
      # cursor.  Check that the cursor that is about to
      # be destroyed is the current cursor.  If so, set
      # the current cursor to be IDC_ARROW.  Note that
      # Windows shares predefined cursors so the call to
      # LoadCursor() does not leak.
      # 
      # TEMPORARY CODE
      # if (OS.GetCursor() == handle) {
      # OS.SetCursor(OS.LoadCursor(0, OS.IDC_ARROW));
      # }
      if (@is_icon)
        OS._destroy_icon(@handle)
      else
        # The MSDN states that one should not destroy a shared
        # cursor, that is, one obtained from LoadCursor.
        # However, it does not appear to do any harm, so rather
        # than keep track of how a cursor was created, we just
        # destroy them all. If this causes problems in the future,
        # put the flag back in.
        if (!OS::IsWinCE)
          OS._destroy_cursor(@handle)
        end
      end
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
      # @return a new cursor object containing the specified device and handle
      def win32_new(device, handle)
        cursor = Cursor.new(device)
        cursor.attr_handle = handle
        return cursor
      end
    }
    
    private
    alias_method :initialize__cursor, :initialize
  end
  
end
