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
  module ColorImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
    }
  end
  
  # Instances of this class manage the operating system resources that
  # implement SWT's RGB color model. To create a color you can either
  # specify the individual color components as integers in the range
  # 0 to 255 or provide an instance of an <code>RGB</code>.
  # <p>
  # Application code must explicitly invoke the <code>Color.dispose()</code>
  # method to release the operating system resources managed by each instance
  # when those instances are no longer required.
  # </p>
  # 
  # @see RGB
  # @see Device#getSystemColor
  # @see <a href="http://www.eclipse.org/swt/snippets/#color">Color and RGB snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: PaintExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Color < ColorImports.const_get :Resource
    include_class_members ColorImports
    
    # the handle to the OS color resource
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
      @handle = 0
      super(device)
    end
    
    typesig { [Device, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Constructs a new instance of this class given a device and the
    # desired red, green and blue values expressed as ints in the range
    # 0 to 255 (where 0 is black and 255 is full brightness). On limited
    # color devices, the color instance created by this call may not have
    # the same RGB values as the ones specified by the arguments. The
    # RGB values on the returned instance will be the color values of
    # the operating system color.
    # <p>
    # You must dispose the color when it is no longer required.
    # </p>
    # 
    # @param device the device on which to allocate the color
    # @param red the amount of red in the color
    # @param green the amount of green in the color
    # @param blue the amount of blue in the color
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if device is null and there is no current device</li>
    # <li>ERROR_INVALID_ARGUMENT - if the red, green or blue argument is not between 0 and 255</li>
    # </ul>
    # 
    # @see #dispose
    def initialize(device, red, green, blue)
      @handle = 0
      super(device)
      init(red, green, blue)
      init
    end
    
    typesig { [Device, RGB] }
    # Constructs a new instance of this class given a device and an
    # <code>RGB</code> describing the desired red, green and blue values.
    # On limited color devices, the color instance created by this call
    # may not have the same RGB values as the ones specified by the
    # argument. The RGB values on the returned instance will be the color
    # values of the operating system color.
    # <p>
    # You must dispose the color when it is no longer required.
    # </p>
    # 
    # @param device the device on which to allocate the color
    # @param rgb the RGB values of the desired color
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if device is null and there is no current device</li>
    # <li>ERROR_NULL_ARGUMENT - if the rgb argument is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the red, green or blue components of the argument are not between 0 and 255</li>
    # </ul>
    # 
    # @see #dispose
    def initialize(device, rgb)
      @handle = 0
      super(device)
      if ((rgb).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      init(rgb.attr_red, rgb.attr_green, rgb.attr_blue)
      init
    end
    
    typesig { [] }
    def destroy
      # If this is a palette-based device,
      # Decrease the reference count for this color.
      # If the reference count reaches 0, the slot may
      # be reused when another color is allocated.
      # 
      # long
      h_pal = self.attr_device.attr_h_palette
      if (!(h_pal).equal?(0))
        index = OS._get_nearest_palette_index(h_pal, @handle)
        color_ref_count = self.attr_device.attr_color_ref_count
        if (color_ref_count[index] > 0)
          color_ref_count[index] -= 1
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
    def ==(object)
      if ((object).equal?(self))
        return true
      end
      if (!(object.is_a?(Color)))
        return false
      end
      color = object
      return (self.attr_device).equal?(color.attr_device) && ((@handle & 0xffffff)).equal?((color.attr_handle & 0xffffff))
    end
    
    typesig { [] }
    # Returns the amount of blue in the color, from 0 to 255.
    # 
    # @return the blue component of the color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_blue
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return (@handle & 0xff0000) >> 16
    end
    
    typesig { [] }
    # Returns the amount of green in the color, from 0 to 255.
    # 
    # @return the green component of the color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_green
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return (@handle & 0xff00) >> 8
    end
    
    typesig { [] }
    # Returns the amount of red in the color, from 0 to 255.
    # 
    # @return the red component of the color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_red
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return @handle & 0xff
    end
    
    typesig { [] }
    # Returns an <code>RGB</code> representing the receiver.
    # 
    # @return the RGB for the color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_rgb
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      return RGB.new(@handle & 0xff, (@handle & 0xff00) >> 8, (@handle & 0xff0000) >> 16)
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Allocates the operating system resources associated
    # with the receiver.
    # 
    # @param device the device on which to allocate the color
    # @param red the amount of red in the color
    # @param green the amount of green in the color
    # @param blue the amount of blue in the color
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the red, green or blue argument is not between 0 and 255</li>
    # </ul>
    # 
    # @see #dispose
    def init(red, green, blue)
      if (red > 255 || red < 0 || green > 255 || green < 0 || blue > 255 || blue < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @handle = (red & 0xff) | ((green & 0xff) << 8) | ((blue & 0xff) << 16)
      # If this is not a palette-based device, return
      # long
      h_pal = self.attr_device.attr_h_palette
      if ((h_pal).equal?(0))
        return
      end
      color_ref_count = self.attr_device.attr_color_ref_count
      # Add this color to the default palette now
      # First find out if the color already exists
      index = OS._get_nearest_palette_index(h_pal, @handle)
      # See if the nearest color actually is the color
      entry = Array.typed(::Java::Byte).new(4) { 0 }
      OS._get_palette_entries(h_pal, index, 1, entry)
      if (((entry[0]).equal?(red)) && ((entry[1]).equal?(green)) && ((entry[2]).equal?(blue)))
        # Found the color. Increment the ref count and return
        color_ref_count[index] += 1
        return
      end
      # Didn't find the color, allocate it now. Find the first free entry
      i = 0
      while (i < color_ref_count.attr_length)
        if ((color_ref_count[i]).equal?(0))
          index = i
          break
        end
        i += 1
      end
      if ((i).equal?(color_ref_count.attr_length))
        # No free entries, use the closest one
        # Remake the handle from the actual rgbs
        @handle = (entry[0] & 0xff) | ((entry[1] & 0xff) << 8) | ((entry[2] & 0xff) << 16)
      else
        # Found a free entry
        entry = Array.typed(::Java::Byte).new([(red & 0xff), (green & 0xff), (blue & 0xff), 0])
        OS._set_palette_entries(h_pal, index, 1, entry)
      end
      color_ref_count[index] += 1
    end
    
    typesig { [] }
    # Returns <code>true</code> if the color has been disposed,
    # and <code>false</code> otherwise.
    # <p>
    # This method gets the dispose state for the color.
    # When a color has been disposed, it is an error to
    # invoke any other method using the color.
    # 
    # @return <code>true</code> when the color is disposed and <code>false</code> otherwise
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
        return "Color {*DISPOSED*}"
      end # $NON-NLS-1$
      return "Color {" + RJava.cast_to_string(get_red) + ", " + RJava.cast_to_string(get_green) + ", " + RJava.cast_to_string(get_blue) + "}" # $NON-NLS-1$//$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$
    end
    
    class_module.module_eval {
      typesig { [Device, ::Java::Int] }
      # Invokes platform specific functionality to allocate a new color.
      # <p>
      # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
      # API for <code>Color</code>. It is marked public only so that it
      # can be shared within the packages provided by SWT. It is not
      # available on all platforms, and should never be called from
      # application code.
      # </p>
      # 
      # @param device the device on which to allocate the color
      # @param handle the handle for the color
      # @return a new color object containing the specified device and handle
      def win32_new(device, handle)
        color = Color.new(device)
        color.attr_handle = handle
        return color
      end
    }
    
    private
    alias_method :initialize__color, :initialize
  end
  
end
