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
  module ColorImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
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
    def initialize(device)
      @handle = nil
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
      @handle = nil
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
      @handle = nil
      super(device)
      if ((rgb).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      init(rgb.attr_red, rgb.attr_green, rgb.attr_blue)
      init
    end
    
    typesig { [] }
    def destroy
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
      if (!(object.is_a?(Color)))
        return false
      end
      color = object
      rgb_color = color.attr_handle
      if ((@handle).equal?(rgb_color))
        return true
      end
      return (self.attr_device).equal?(color.attr_device) && (RJava.cast_to_int((@handle[0] * 255))).equal?(RJava.cast_to_int((rgb_color[0] * 255))) && (RJava.cast_to_int((@handle[1] * 255))).equal?(RJava.cast_to_int((rgb_color[1] * 255))) && (RJava.cast_to_int((@handle[2] * 255))).equal?(RJava.cast_to_int((rgb_color[2] * 255)))
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
      return RJava.cast_to_int((@handle[2] * 255))
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
      return RJava.cast_to_int((@handle[1] * 255))
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
      return RJava.cast_to_int((@handle[0] * 255))
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
      if (is_disposed)
        return 0
      end
      return RJava.cast_to_int((@handle[0] * 255)) ^ RJava.cast_to_int((@handle[1] * 255)) ^ RJava.cast_to_int((@handle[2] * 255))
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
      return RGB.new(get_red, get_green, get_blue)
    end
    
    class_module.module_eval {
      typesig { [Device, Array.typed(::Java::Float)] }
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
      # 
      # @private
      def carbon_new(device, rgb_color)
        color = Color.new(device)
        color.attr_handle = rgb_color
        return color
      end
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def init(red, green, blue)
      if ((red > 255) || (red < 0) || (green > 255) || (green < 0) || (blue > 255) || (blue < 0))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      rgb_color = Array.typed(::Java::Float).new(4) { 0.0 }
      rgb_color[0] = red / 255
      rgb_color[1] = green / 255
      rgb_color[2] = blue / 255
      rgb_color[3] = 1
      @handle = rgb_color
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
      return (@handle).nil?
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the receiver
    def to_s
      if (is_disposed)
        return "Color {*DISPOSED*}"
      end
      return "Color {" + RJava.cast_to_string(get_red) + ", " + RJava.cast_to_string(get_green) + ", " + RJava.cast_to_string(get_blue) + "}"
    end
    
    private
    alias_method :initialize__color, :initialize
  end
  
end
