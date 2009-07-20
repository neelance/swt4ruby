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
  module FontImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
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
    # int
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
    typesig { [Device] }
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
      if ((fd).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      init(fd.get_name, fd.get_height_f, fd.get_style, fd.attr_string)
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
        ((i += 1) - 1)
      end
      fd = fds[0]
      init(fd.get_name, fd.get_height_f, fd.get_style, fd.attr_string)
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
      init(name, height, style, nil)
      init
    end
    
    typesig { [Device, String, ::Java::Float, ::Java::Int] }
    # public
    def initialize(device, name, height, style)
      @handle = 0
      super(device)
      init(name, height, style, nil)
      init
    end
    
    typesig { [] }
    def destroy
      OS.pango_font_description_free(@handle)
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
    def equals(object)
      if ((object).equal?(self))
        return true
      end
      if (!(object.is_a?(Font)))
        return false
      end
      return (@handle).equal?((object).attr_handle)
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
      # int
      family = OS.pango_font_description_get_family(@handle)
      length = OS.strlen(family)
      buffer = Array.typed(::Java::Byte).new(length) { 0 }
      OS.memmove(buffer, family, length)
      name = String.new(Converter.mbcs_to_wcs(nil, buffer))
      height = (OS.pango_font_description_get_size(@handle)).to_f / OS::PANGO_SCALE
      pango_style = OS.pango_font_description_get_style(@handle)
      pango_weight = OS.pango_font_description_get_weight(@handle)
      style = SWT::NORMAL
      if ((pango_style).equal?(OS::PANGO_STYLE_ITALIC))
        style |= SWT::ITALIC
      end
      if ((pango_style).equal?(OS::PANGO_STYLE_OBLIQUE))
        style |= SWT::ROMAN
      end
      if (pango_weight >= OS::PANGO_WEIGHT_BOLD)
        style |= SWT::BOLD
      end
      # int
      font_string = OS.pango_font_description_to_string(@handle)
      length = OS.strlen(font_string)
      buffer = Array.typed(::Java::Byte).new(length + 1) { 0 }
      OS.memmove(buffer, font_string, length)
      OS.g_free(font_string)
      data = FontData.new(name, height, style)
      data.attr_string = buffer
      return Array.typed(FontData).new([data])
    end
    
    class_module.module_eval {
      typesig { [Device, ::Java::Long] }
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
      # 
      # @private
      # 
      # int
      def gtk_new(device, handle)
        font = Font.new(device)
        font.attr_handle = handle
        return font
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
    
    typesig { [String, ::Java::Float, ::Java::Int, Array.typed(::Java::Byte)] }
    def init(name, height, style, font_string)
      if ((name).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (height < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(font_string).nil?)
        @handle = OS.pango_font_description_from_string(font_string)
        if ((@handle).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
      else
        @handle = OS.pango_font_description_new
        if ((@handle).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        buffer = Converter.wcs_to_mbcs(nil, name, true)
        OS.pango_font_description_set_family(@handle, buffer)
        if (height > 0)
          OS.pango_font_description_set_size(@handle, RJava.cast_to_int((0.5 + height * OS::PANGO_SCALE)))
        end
        OS.pango_font_description_set_stretch(@handle, OS::PANGO_STRETCH_NORMAL)
        pango_style = OS::PANGO_STYLE_NORMAL
        pango_weight = OS::PANGO_WEIGHT_NORMAL
        if (!((style & SWT::ITALIC)).equal?(0))
          pango_style = OS::PANGO_STYLE_ITALIC
        end
        if (!((style & SWT::ROMAN)).equal?(0))
          pango_style = OS::PANGO_STYLE_OBLIQUE
        end
        if (!((style & SWT::BOLD)).equal?(0))
          pango_weight = OS::PANGO_WEIGHT_BOLD
        end
        OS.pango_font_description_set_style(@handle, pango_style)
        OS.pango_font_description_set_weight(@handle, pango_weight)
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
      return "Font {" + (@handle).to_s + "}"
    end
    
    private
    alias_method :initialize__font, :initialize
  end
  
end
