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
      include ::Org::Eclipse::Swt::Internal::Carbon
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
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
    # the style to the OS font (a FMFontStyle)
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    attr_accessor :style
    alias_method :attr_style, :style
    undef_method :style
    alias_method :attr_style=, :style=
    undef_method :style=
    
    # the size to the OS font
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    attr_accessor :size
    alias_method :attr_size, :size
    undef_method :size
    alias_method :attr_size=, :size=
    undef_method :size=
    
    # the ATSUI style for the OS font
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    attr_accessor :atsui_style
    alias_method :attr_atsui_style, :atsui_style
    undef_method :atsui_style
    alias_method :attr_atsui_style=, :atsui_style=
    undef_method :atsui_style=
    
    typesig { [Device] }
    def initialize(device)
      @handle = 0
      @style = 0
      @size = 0.0
      @atsui_style = 0
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
      @style = 0
      @size = 0.0
      @atsui_style = 0
      super(device)
      if ((fd).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      init(fd.get_name, fd.get_height_f, fd.get_style, fd.attr_ats_name)
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
      @style = 0
      @size = 0.0
      @atsui_style = 0
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
      init(fd.get_name, fd.get_height_f, fd.get_style, fd.attr_ats_name)
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
      @style = 0
      @size = 0.0
      @atsui_style = 0
      super(device)
      init(name, height, style, nil)
      init
    end
    
    typesig { [Device, String, ::Java::Float, ::Java::Int] }
    # public
    def initialize(device, name, height, style)
      @handle = 0
      @style = 0
      @size = 0.0
      @atsui_style = 0
      super(device)
      init(name, height, style, nil)
      init
    end
    
    typesig { [] }
    def create_style
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      OS._atsucreate_style(buffer)
      if ((buffer[0]).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      atsu_style = buffer[0]
      synthesize = !(@style).equal?(0)
      ptr = OS._new_ptr(8 + (synthesize ? 8 : 0))
      OS.memmove(ptr, Array.typed(::Java::Int).new([OS._fmget_font_from_atsfont_ref(@handle)]), 4)
      OS.memmove(ptr + 4, Array.typed(::Java::Int).new([OS._x2fix(@size)]), 4)
      tags = nil
      sizes = nil
      values = nil
      if (synthesize)
        OS.memmove(ptr + 8, Array.typed(::Java::Byte).new([!((@style & OS.attr_bold)).equal?(0) ? 1 : 0]), 1)
        OS.memmove(ptr + 9, Array.typed(::Java::Byte).new([!((@style & OS.attr_italic)).equal?(0) ? 1 : 0]), 1)
        tags = Array.typed(::Java::Int).new([OS.attr_k_atsufont_tag, OS.attr_k_atsusize_tag, OS.attr_k_atsuqdboldface_tag, OS.attr_k_atsuqditalic_tag])
        sizes = Array.typed(::Java::Int).new([4, 4, 1, 1])
        values = Array.typed(::Java::Int).new([ptr, ptr + 4, ptr + 8, ptr + 9])
      else
        tags = Array.typed(::Java::Int).new([OS.attr_k_atsufont_tag, OS.attr_k_atsusize_tag])
        sizes = Array.typed(::Java::Int).new([4, 4])
        values = Array.typed(::Java::Int).new([ptr, ptr + 4])
      end
      OS._atsuset_attributes(atsu_style, tags.attr_length, tags, sizes, values)
      OS._dispose_ptr(ptr)
      types = Array.typed(::Java::Short).new([RJava.cast_to_short(OS.attr_k_ligatures_type), RJava.cast_to_short(OS.attr_k_ligatures_type), RJava.cast_to_short(OS.attr_k_ligatures_type), RJava.cast_to_short(OS.attr_k_ligatures_type), RJava.cast_to_short(OS.attr_k_ligatures_type), RJava.cast_to_short(OS.attr_k_ligatures_type), RJava.cast_to_short(OS.attr_k_ligatures_type), RJava.cast_to_short(OS.attr_k_ligatures_type), ])
      selectors = Array.typed(::Java::Short).new([RJava.cast_to_short(OS.attr_k_required_ligatures_off_selector), RJava.cast_to_short(OS.attr_k_common_ligatures_off_selector), RJava.cast_to_short(OS.attr_k_rare_ligatures_off_selector), RJava.cast_to_short(OS.attr_k_logos_off_selector), RJava.cast_to_short(OS.attr_k_rebus_pictures_off_selector), RJava.cast_to_short(OS.attr_k_diphthong_ligatures_off_selector), RJava.cast_to_short(OS.attr_k_squared_ligatures_off_selector), RJava.cast_to_short(OS.attr_k_abbrev_squared_ligatures_off_selector), RJava.cast_to_short(OS.attr_k_symbol_ligatures_off_selector), ])
      OS._atsuset_font_features(atsu_style, types.attr_length, types, selectors)
      return atsu_style
    end
    
    typesig { [] }
    def destroy
      if ((@handle).equal?(0))
        return
      end
      @handle = 0
      if (!(@atsui_style).equal?(0))
        OS._atsudispose_style(@atsui_style)
      end
      @atsui_style = 0
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
      font = object
      return (@handle).equal?(font.attr_handle) && (@size).equal?(font.attr_size)
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
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      OS._atsfont_get_name(@handle, 0, buffer)
      range = CFRange.new
      range.attr_length = OS._cfstring_get_length(buffer[0])
      chars = CharArray.new(range.attr_length)
      OS._cfstring_get_characters(buffer[0], range, chars)
      OS._cfrelease(buffer[0])
      ats_name = String.new(chars)
      platform_code = OS.attr_k_font_unicode_platform
      encoding = OS.attr_k_cfstring_encoding_unicode
      if (!(OS._atsufind_font_name(@handle, OS.attr_k_font_family_name, platform_code, OS.attr_k_font_no_script_code, OS.attr_k_font_no_language_code, 0, nil, buffer, nil)).equal?(OS.attr_no_err))
        platform_code = OS.attr_k_font_no_platform_code
        encoding = OS.attr_k_cfstring_encoding_mac_roman
        OS._atsufind_font_name(@handle, OS.attr_k_font_family_name, platform_code, OS.attr_k_font_no_script_code, OS.attr_k_font_no_language_code, 0, nil, buffer, nil)
      end
      bytes = Array.typed(::Java::Byte).new(buffer[0]) { 0 }
      OS._atsufind_font_name(@handle, OS.attr_k_font_family_name, platform_code, OS.attr_k_font_no_script_code, OS.attr_k_font_no_language_code, bytes.attr_length, bytes, buffer, nil)
      name = ""
      ptr = OS._cfstring_create_with_bytes(0, bytes, bytes.attr_length, encoding, false)
      if (!(ptr).equal?(0))
        range.attr_length = OS._cfstring_get_length(ptr)
        if (!(range.attr_length).equal?(0))
          chars = CharArray.new(range.attr_length)
          OS._cfstring_get_characters(ptr, range, chars)
          name = (String.new(chars)).to_s
        end
        OS._cfrelease(ptr)
      end
      style = 0
      if (!((@style & OS.attr_italic)).equal?(0))
        style |= SWT::ITALIC
      end
      if (!((@style & OS.attr_bold)).equal?(0))
        style |= SWT::BOLD
      end
      if (!(ats_name.index_of("Italic")).equal?(-1))
        style |= SWT::ITALIC
      end
      if (!(ats_name.index_of("Bold")).equal?(-1))
        style |= SWT::BOLD
      end
      device_dpi = self.attr_device.get_dpi.attr_y
      screen_dpi = get_screen_dpi.attr_y
      data = FontData.new(name, @size * screen_dpi / device_dpi, style)
      data.attr_ats_name = ats_name
      return Array.typed(FontData).new([data])
    end
    
    typesig { [] }
    def get_screen_dpi
      gdevice = OS._get_main_device
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      OS.memmove(ptr, gdevice, 4)
      device = GDevice.new
      OS.memmove(device, ptr[0], GDevice.attr_sizeof)
      OS.memmove(ptr, device.attr_gd_pmap, 4)
      pixmap = PixMap.new
      OS.memmove(pixmap, ptr[0], PixMap.attr_sizeof)
      return Point.new(OS._fix2long(pixmap.attr_h_res), OS._fix2long(pixmap.attr_v_res))
    end
    
    class_module.module_eval {
      typesig { [Device, ::Java::Int, ::Java::Short, ::Java::Float] }
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
      # @param style the style for the font
      # @param size the size for the font
      # 
      # @private
      def carbon_new(device, handle, style, size)
        font = Font.new(device)
        font.attr_handle = handle
        font.attr_style = style
        font.attr_size = size
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
      return @handle
    end
    
    typesig { [String, ::Java::Float, ::Java::Int, String] }
    def init(name, height, style, ats_name)
      if ((name).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (height < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      font = 0
      if (!(ats_name).nil?)
        ptr = create_cfstring(ats_name)
        if (!(ptr).equal?(0))
          font = OS._atsfont_find_from_name(ptr, OS.attr_k_atsoption_flags_default)
          OS._cfrelease(ptr)
        end
      else
        ats_name = name
        if (!((style & SWT::BOLD)).equal?(0))
          ats_name += " Bold"
        end
        if (!((style & SWT::ITALIC)).equal?(0))
          ats_name += " Italic"
        end
        ptr = create_cfstring(ats_name)
        if (!(ptr).equal?(0))
          font = OS._atsfont_find_from_name(ptr, OS.attr_k_atsoption_flags_default)
          OS._cfrelease(ptr)
        end
        if ((font).equal?(0) && !((style & SWT::ITALIC)).equal?(0))
          @style |= OS.attr_italic
          ats_name = name
          if (!((style & SWT::BOLD)).equal?(0))
            ats_name += " Bold"
          end
          ptr = create_cfstring(ats_name)
          if (!(ptr).equal?(0))
            font = OS._atsfont_find_from_name(ptr, OS.attr_k_atsoption_flags_default)
            OS._cfrelease(ptr)
          end
        end
        if ((font).equal?(0) && !((style & SWT::BOLD)).equal?(0))
          @style |= OS.attr_bold
          ats_name = name
          ptr = create_cfstring(ats_name)
          if (!(ptr).equal?(0))
            font = OS._atsfont_find_from_name(ptr, OS.attr_k_atsoption_flags_default)
            OS._cfrelease(ptr)
          end
        end
      end
      device_dpi = self.attr_device.get_dpi.attr_y
      screen_dpi = get_screen_dpi.attr_y
      @size = height * device_dpi / screen_dpi
      if ((font).equal?(0))
        system_font = self.attr_device.attr_system_font
        @handle = system_font.attr_handle
      else
        @handle = font
      end
      @atsui_style = create_style
    end
    
    typesig { [String] }
    def create_cfstring(str)
      chars = CharArray.new(str.length)
      str.get_chars(0, chars.attr_length, chars, 0)
      return OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, chars, chars.attr_length)
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
