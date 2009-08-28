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
  module FontImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
    }
  end
  
  # Instances of this class manage operating system resources that
  # define how text looks when it is displayed. Fonts may be constructed
  # by providing a device and either name, size and style information
  # or a <code>FontData</code> object which encapsulates this data.
  # <p>
  # Application code must explicitly invoke the <code>Font.dispose()</code>
  # method to release the operating system resources managed by each instance
  # when those instances are no longer required.
  # </p>
  # 
  # @see FontData
  # @see <a href="http://www.eclipse.org/swt/snippets/#font">Font snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Examples: GraphicsExample, PaintExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Font < FontImports.const_get :Resource
    include_class_members FontImports
    
    # the handle to the OS font resource
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
    
    typesig { [Device] }
    # Prevents uninitialized instances from being created outside the package.
    def initialize(device)
      @handle = 0
      super(device)
    end
    
    typesig { [Device, FontData] }
    # Constructs a new font given a device and font data
    # which describes the desired font's appearance.
    # <p>
    # You must dispose the font when it is no longer required.
    # </p>
    # 
    # @param device the device to create the font on
    # @param fd the FontData that describes the desired font (must not be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if device is null and there is no current device</li>
    # <li>ERROR_NULL_ARGUMENT - if the fd argument is null</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES - if a font could not be created from the given font data</li>
    # </ul>
    def initialize(device, fd)
      @handle = 0
      super(device)
      init(fd)
      init
    end
    
    typesig { [Device, Array.typed(FontData)] }
    # Constructs a new font given a device and an array
    # of font data which describes the desired font's
    # appearance.
    # <p>
    # You must dispose the font when it is no longer required.
    # </p>
    # 
    # @param device the device to create the font on
    # @param fds the array of FontData that describes the desired font (must not be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if device is null and there is no current device</li>
    # <li>ERROR_NULL_ARGUMENT - if the fds argument is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the length of fds is zero</li>
    # <li>ERROR_NULL_ARGUMENT - if any fd in the array is null</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES - if a font could not be created from the given font data</li>
    # </ul>
    # 
    # @since 2.1
    def initialize(device, fds)
      @handle = 0
      super(device)
      if ((fds).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((fds.attr_length).equal?(0))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      i = 0
      while i < fds.attr_length
        if ((fds[i]).nil?)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        i += 1
      end
      init(fds[0])
      init
    end
    
    typesig { [Device, String, ::Java::Int, ::Java::Int] }
    # Constructs a new font given a device, a font name,
    # the height of the desired font in points, and a font
    # style.
    # <p>
    # You must dispose the font when it is no longer required.
    # </p>
    # 
    # @param device the device to create the font on
    # @param name the name of the font (must not be null)
    # @param height the font height in points
    # @param style a bit or combination of NORMAL, BOLD, ITALIC
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if device is null and there is no current device</li>
    # <li>ERROR_NULL_ARGUMENT - if the name argument is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the height is negative</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES - if a font could not be created from the given arguments</li>
    # </ul>
    def initialize(device, name, height, style)
      @handle = 0
      super(device)
      if ((name).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      init(FontData.new(name, height, style))
      init
    end
    
    typesig { [Device, String, ::Java::Float, ::Java::Int] }
    # public
    def initialize(device, name, height, style)
      @handle = 0
      super(device)
      if ((name).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      init(FontData.new(name, height, style))
      init
    end
    
    typesig { [] }
    def destroy
      OS._delete_object(@handle)
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
      if (!(object.is_a?(Font)))
        return false
      end
      font = object
      return (self.attr_device).equal?(font.attr_device) && (@handle).equal?(font.attr_handle)
    end
    
    typesig { [] }
    # Returns an array of <code>FontData</code>s representing the receiver.
    # On Windows, only one FontData will be returned per font. On X however,
    # a <code>Font</code> object <em>may</em> be composed of multiple X
    # fonts. To support this case, we return an array of font data objects.
    # 
    # @return an array of font data objects describing the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_GRAPHIC_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_font_data
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      log_font = OS::IsUnicode ? LOGFONTW.new : LOGFONTA.new
      OS._get_object(@handle, LOGFONT.attr_sizeof, log_font)
      return Array.typed(FontData).new([FontData.win32_new(log_font, self.attr_device.compute_points(log_font, @handle))])
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
    
    typesig { [FontData] }
    def init(fd)
      if ((fd).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      log_font = fd.attr_data
      lf_height = log_font.attr_lf_height
      log_font.attr_lf_height = self.attr_device.compute_pixels(fd.attr_height)
      @handle = OS._create_font_indirect(log_font)
      log_font.attr_lf_height = lf_height
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
    end
    
    typesig { [] }
    # Returns <code>true</code> if the font has been disposed,
    # and <code>false</code> otherwise.
    # <p>
    # This method gets the dispose state for the font.
    # When a font has been disposed, it is an error to
    # invoke any other method using the font.
    # 
    # @return <code>true</code> when the font is disposed and <code>false</code> otherwise
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
        return "Font {*DISPOSED*}"
      end
      return "Font {" + RJava.cast_to_string(@handle) + "}"
    end
    
    class_module.module_eval {
      typesig { [Device, ::Java::Int] }
      # Invokes platform specific functionality to allocate a new font.
      # <p>
      # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
      # API for <code>Font</code>. It is marked public only so that it
      # can be shared within the packages provided by SWT. It is not
      # available on all platforms, and should never be called from
      # application code.
      # </p>
      # 
      # @param device the device on which to allocate the color
      # @param handle the handle for the font
      # @return a new font object containing the specified device and handle
      # 
      # long
      def win32_new(device, handle)
        font = Font.new(device)
        font.attr_handle = handle
        return font
      end
    }
    
    private
    alias_method :initialize__font, :initialize
  end
  
end
