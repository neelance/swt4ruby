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
  module FontDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
    }
  end
  
  # Instances of this class describe operating system fonts.
  # <p>
  # For platform-independent behaviour, use the get and set methods
  # corresponding to the following properties:
  # <dl>
  # <dt>height</dt><dd>the height of the font in points</dd>
  # <dt>name</dt><dd>the face name of the font, which may include the foundry</dd>
  # <dt>style</dt><dd>A bitwise combination of NORMAL, ITALIC and BOLD</dd>
  # </dl>
  # If extra, platform-dependent functionality is required:
  # <ul>
  # <li>On <em>Windows</em>, the data member of the <code>FontData</code>
  # corresponds to a Windows <code>LOGFONT</code> structure whose fields
  # may be retrieved and modified.</li>
  # <li>On <em>X</em>, the fields of the <code>FontData</code> correspond
  # to the entries in the font's XLFD name and may be retrieved and modified.
  # </ul>
  # Application code does <em>not</em> need to explicitly release the
  # resources managed by each instance when those instances are no longer
  # required, and thus no <code>dispose()</code> method is provided.
  # 
  # @see Font
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class FontData 
    include_class_members FontDataImports
    
    # A Win32 LOGFONT struct
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    # The height of the font data in points
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    # The locales of the font
    attr_accessor :lang
    alias_method :attr_lang, :lang
    undef_method :lang
    alias_method :attr_lang=, :lang=
    undef_method :lang=
    
    attr_accessor :country
    alias_method :attr_country, :country
    undef_method :country
    alias_method :attr_country=, :country=
    undef_method :country=
    
    attr_accessor :variant
    alias_method :attr_variant, :variant
    undef_method :variant
    alias_method :attr_variant=, :variant=
    undef_method :variant=
    
    typesig { [] }
    # Constructs a new uninitialized font data.
    def initialize
      @data = nil
      @height = 0.0
      @lang = nil
      @country = nil
      @variant = nil
      @data = OS::IsUnicode ? LOGFONTW.new : LOGFONTA.new
      # We set the charset field so that
      # wildcard searching will work properly
      # out of the box
      @data.attr_lf_char_set = OS::DEFAULT_CHARSET
      @height = 12
    end
    
    typesig { [LOGFONT, ::Java::Float] }
    # Constructs a new font data given the Windows <code>LOGFONT</code>
    # that it should represent.
    # 
    # @param data the <code>LOGFONT</code> for the result
    def initialize(data, height)
      @data = nil
      @height = 0.0
      @lang = nil
      @country = nil
      @variant = nil
      @data = data
      @height = height
    end
    
    typesig { [String] }
    # Constructs a new FontData given a string representation
    # in the form generated by the <code>FontData.toString</code>
    # method.
    # <p>
    # Note that the representation varies between platforms,
    # and a FontData can only be created from a string that was
    # generated on the same platform.
    # </p>
    # 
    # @param string the string representation of a <code>FontData</code> (must not be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the argument is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the argument does not represent a valid description</li>
    # </ul>
    # 
    # @see #toString
    def initialize(string)
      @data = nil
      @height = 0.0
      @lang = nil
      @country = nil
      @variant = nil
      if ((string).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      start = 0
      end_ = string.index_of(Character.new(?|.ord))
      if ((end_).equal?(-1))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      version1 = string.substring(start, end_)
      begin
        if (!(JavaInteger.parse_int(version1)).equal?(1))
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
      rescue NumberFormatException => e
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      start = end_ + 1
      end_ = string.index_of(Character.new(?|.ord), start)
      if ((end_).equal?(-1))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      name = string.substring(start, end_)
      start = end_ + 1
      end_ = string.index_of(Character.new(?|.ord), start)
      if ((end_).equal?(-1))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      height = 0
      begin
        height = Float.parse_float(string.substring(start, end_))
      rescue NumberFormatException => e
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      start = end_ + 1
      end_ = string.index_of(Character.new(?|.ord), start)
      if ((end_).equal?(-1))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      style = 0
      begin
        style = JavaInteger.parse_int(string.substring(start, end_))
      rescue NumberFormatException => e
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      start = end_ + 1
      end_ = string.index_of(Character.new(?|.ord), start)
      @data = OS::IsUnicode ? LOGFONTW.new : LOGFONTA.new
      @data.attr_lf_char_set = OS::DEFAULT_CHARSET
      set_name(name)
      set_height(height)
      set_style(style)
      if ((end_).equal?(-1))
        return
      end
      platform = string.substring(start, end_)
      start = end_ + 1
      end_ = string.index_of(Character.new(?|.ord), start)
      if ((end_).equal?(-1))
        return
      end
      version2 = string.substring(start, end_)
      if ((platform == "WINDOWS") && (version2 == "1"))
        # $NON-NLS-1$//$NON-NLS-2$
        new_data = OS::IsUnicode ? LOGFONTW.new : LOGFONTA.new
        begin
          start = end_ + 1
          end_ = string.index_of(Character.new(?|.ord), start)
          if ((end_).equal?(-1))
            return
          end
          new_data.attr_lf_height = JavaInteger.parse_int(string.substring(start, end_))
          start = end_ + 1
          end_ = string.index_of(Character.new(?|.ord), start)
          if ((end_).equal?(-1))
            return
          end
          new_data.attr_lf_width = JavaInteger.parse_int(string.substring(start, end_))
          start = end_ + 1
          end_ = string.index_of(Character.new(?|.ord), start)
          if ((end_).equal?(-1))
            return
          end
          new_data.attr_lf_escapement = JavaInteger.parse_int(string.substring(start, end_))
          start = end_ + 1
          end_ = string.index_of(Character.new(?|.ord), start)
          if ((end_).equal?(-1))
            return
          end
          new_data.attr_lf_orientation = JavaInteger.parse_int(string.substring(start, end_))
          start = end_ + 1
          end_ = string.index_of(Character.new(?|.ord), start)
          if ((end_).equal?(-1))
            return
          end
          new_data.attr_lf_weight = JavaInteger.parse_int(string.substring(start, end_))
          start = end_ + 1
          end_ = string.index_of(Character.new(?|.ord), start)
          if ((end_).equal?(-1))
            return
          end
          new_data.attr_lf_italic = Byte.parse_byte(string.substring(start, end_))
          start = end_ + 1
          end_ = string.index_of(Character.new(?|.ord), start)
          if ((end_).equal?(-1))
            return
          end
          new_data.attr_lf_underline = Byte.parse_byte(string.substring(start, end_))
          start = end_ + 1
          end_ = string.index_of(Character.new(?|.ord), start)
          if ((end_).equal?(-1))
            return
          end
          new_data.attr_lf_strike_out = Byte.parse_byte(string.substring(start, end_))
          start = end_ + 1
          end_ = string.index_of(Character.new(?|.ord), start)
          if ((end_).equal?(-1))
            return
          end
          new_data.attr_lf_char_set = Byte.parse_byte(string.substring(start, end_))
          start = end_ + 1
          end_ = string.index_of(Character.new(?|.ord), start)
          if ((end_).equal?(-1))
            return
          end
          new_data.attr_lf_out_precision = Byte.parse_byte(string.substring(start, end_))
          start = end_ + 1
          end_ = string.index_of(Character.new(?|.ord), start)
          if ((end_).equal?(-1))
            return
          end
          new_data.attr_lf_clip_precision = Byte.parse_byte(string.substring(start, end_))
          start = end_ + 1
          end_ = string.index_of(Character.new(?|.ord), start)
          if ((end_).equal?(-1))
            return
          end
          new_data.attr_lf_quality = Byte.parse_byte(string.substring(start, end_))
          start = end_ + 1
          end_ = string.index_of(Character.new(?|.ord), start)
          if ((end_).equal?(-1))
            return
          end
          new_data.attr_lf_pitch_and_family = Byte.parse_byte(string.substring(start, end_))
          start = end_ + 1
        rescue NumberFormatException => e
          set_name(name)
          set_height(height)
          set_style(style)
          return
        end
        buffer = TCHAR.new(0, string.substring(start), false)
        length_ = Math.min(OS::LF_FACESIZE - 1, buffer.length)
        if (OS::IsUnicode)
          lf_face_name = (new_data).attr_lf_face_name
          System.arraycopy(buffer.attr_chars, 0, lf_face_name, 0, length_)
        else
          lf_face_name = (new_data).attr_lf_face_name
          System.arraycopy(buffer.attr_bytes, 0, lf_face_name, 0, length_)
        end
        @data = new_data
      end
    end
    
    typesig { [String, ::Java::Int, ::Java::Int] }
    # Constructs a new font data given a font name,
    # the height of the desired font in points,
    # and a font style.
    # 
    # @param name the name of the font (must not be null)
    # @param height the font height in points
    # @param style a bit or combination of NORMAL, BOLD, ITALIC
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - when the font name is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the height is negative</li>
    # </ul>
    def initialize(name, height, style)
      @data = nil
      @height = 0.0
      @lang = nil
      @country = nil
      @variant = nil
      if ((name).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @data = OS::IsUnicode ? LOGFONTW.new : LOGFONTA.new
      set_name(name)
      set_height(height)
      set_style(style)
      # We set the charset field so that
      # wildcard searching will work properly
      # out of the box
      @data.attr_lf_char_set = OS::DEFAULT_CHARSET
    end
    
    typesig { [String, ::Java::Float, ::Java::Int] }
    # public
    def initialize(name, height, style)
      @data = nil
      @height = 0.0
      @lang = nil
      @country = nil
      @variant = nil
      if ((name).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @data = OS::IsUnicode ? LOGFONTW.new : LOGFONTA.new
      set_name(name)
      set_height(height)
      set_style(style)
      # We set the charset field so that
      # wildcard searching will work properly
      # out of the box
      @data.attr_lf_char_set = OS::DEFAULT_CHARSET
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
      if (!(object.is_a?(FontData)))
        return false
      end
      fd = object
      lf = fd.attr_data
      # This code is intentionally commented.  When creating
      # a FontData, lfHeight is not necessarily set.  Instead
      # we check the height field which is always set.
      # 
      # data.lfHeight == lf.lfHeight &&
      return (@data.attr_lf_char_set).equal?(lf.attr_lf_char_set) && (@height).equal?(fd.attr_height) && (@data.attr_lf_width).equal?(lf.attr_lf_width) && (@data.attr_lf_escapement).equal?(lf.attr_lf_escapement) && (@data.attr_lf_orientation).equal?(lf.attr_lf_orientation) && (@data.attr_lf_weight).equal?(lf.attr_lf_weight) && (@data.attr_lf_italic).equal?(lf.attr_lf_italic) && (@data.attr_lf_underline).equal?(lf.attr_lf_underline) && (@data.attr_lf_strike_out).equal?(lf.attr_lf_strike_out) && (@data.attr_lf_char_set).equal?(lf.attr_lf_char_set) && (@data.attr_lf_out_precision).equal?(lf.attr_lf_out_precision) && (@data.attr_lf_clip_precision).equal?(lf.attr_lf_clip_precision) && (@data.attr_lf_quality).equal?(lf.attr_lf_quality) && (@data.attr_lf_pitch_and_family).equal?(lf.attr_lf_pitch_and_family) && (get_name == fd.get_name)
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def _enum_locales_proc(lp_locale_string)
      # Get the locale ID
      length_ = 8
      buffer = TCHAR.new(0, length_)
      byte_count = length_ * TCHAR.attr_sizeof
      OS._move_memory(buffer, lp_locale_string, byte_count)
      lcid = JavaInteger.parse_int(buffer.to_s(0, buffer.strlen), 16)
      # Check the language
      size = OS._get_locale_info(lcid, OS::LOCALE_SISO639LANGNAME, buffer, length_)
      if (size <= 0 || !(@lang == buffer.to_s(0, size - 1)))
        return 1
      end
      # Check the country
      if (!(@country).nil?)
        size = OS._get_locale_info(lcid, OS::LOCALE_SISO3166CTRYNAME, buffer, length_)
        if (size <= 0 || !(@country == buffer.to_s(0, size - 1)))
          return 1
        end
      end
      # Get the charset
      size = OS._get_locale_info(lcid, OS::LOCALE_IDEFAULTANSICODEPAGE, buffer, length_)
      if (size <= 0)
        return 1
      end
      cp = JavaInteger.parse_int(buffer.to_s(0, size - 1))
      lp_cs = Array.typed(::Java::Int).new(8) { 0 }
      OS._translate_charset_info(cp, lp_cs, OS::TCI_SRCCODEPAGE)
      @data.attr_lf_char_set = lp_cs[0]
      return 0
    end
    
    typesig { [] }
    # Returns the height of the receiver in points.
    # 
    # @return the height of this FontData
    # 
    # @see #setHeight(int)
    def get_height
      return RJava.cast_to_int((0.5 + @height))
    end
    
    typesig { [] }
    # public
    def get_height_f
      return @height
    end
    
    typesig { [] }
    # Returns the locale of the receiver.
    # <p>
    # The locale determines which platform character set this
    # font is going to use. Widgets and graphics operations that
    # use this font will convert UNICODE strings to the platform
    # character set of the specified locale.
    # </p>
    # <p>
    # On platforms where there are multiple character sets for a
    # given language/country locale, the variant portion of the
    # locale will determine the character set.
    # </p>
    # 
    # @return the <code>String</code> representing a Locale object
    # @since 3.0
    def get_locale
      buffer = StringBuffer.new
      sep = Character.new(?_.ord)
      if (!(@lang).nil?)
        buffer.append(@lang)
        buffer.append(sep)
      end
      if (!(@country).nil?)
        buffer.append(@country)
        buffer.append(sep)
      end
      if (!(@variant).nil?)
        buffer.append(@variant)
      end
      result = buffer.to_s
      length_ = result.length
      if (length_ > 0)
        if ((result.char_at(length_ - 1)).equal?(sep))
          result = (result.substring(0, length_ - 1)).to_s
        end
      end
      return result
    end
    
    typesig { [] }
    # Returns the name of the receiver.
    # On platforms that support font foundries, the return value will
    # be the foundry followed by a dash ("-") followed by the face name.
    # 
    # @return the name of this <code>FontData</code>
    # 
    # @see #setName
    def get_name
      chars = nil
      if (OS::IsUnicode)
        chars = (@data).attr_lf_face_name
      else
        chars = CharArray.new(OS::LF_FACESIZE)
        bytes = (@data).attr_lf_face_name
        OS._multi_byte_to_wide_char(OS::CP_ACP, OS::MB_PRECOMPOSED, bytes, bytes.attr_length, chars, chars.attr_length)
      end
      index = 0
      while (index < chars.attr_length)
        if ((chars[index]).equal?(0))
          break
        end
        ((index += 1) - 1)
      end
      return String.new(chars, 0, index)
    end
    
    typesig { [] }
    # Returns the style of the receiver which is a bitwise OR of
    # one or more of the <code>SWT</code> constants NORMAL, BOLD
    # and ITALIC.
    # 
    # @return the style of this <code>FontData</code>
    # 
    # @see #setStyle
    def get_style
      style = SWT::NORMAL
      if ((@data.attr_lf_weight).equal?(700))
        style |= SWT::BOLD
      end
      if (!(@data.attr_lf_italic).equal?(0))
        style |= SWT::ITALIC
      end
      return style
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
      return @data.attr_lf_char_set ^ get_height ^ @data.attr_lf_width ^ @data.attr_lf_escapement ^ @data.attr_lf_orientation ^ @data.attr_lf_weight ^ @data.attr_lf_italic ^ @data.attr_lf_underline ^ @data.attr_lf_strike_out ^ @data.attr_lf_char_set ^ @data.attr_lf_out_precision ^ @data.attr_lf_clip_precision ^ @data.attr_lf_quality ^ @data.attr_lf_pitch_and_family ^ get_name.hash_code
    end
    
    typesig { [::Java::Int] }
    # Sets the height of the receiver. The parameter is
    # specified in terms of points, where a point is one
    # seventy-second of an inch.
    # 
    # @param height the height of the <code>FontData</code>
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the height is negative</li>
    # </ul>
    # 
    # @see #getHeight
    def set_height(height)
      if (height < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @height = height
    end
    
    typesig { [::Java::Float] }
    # public
    def set_height(height)
      if (height < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @height = height
    end
    
    typesig { [String] }
    # Sets the locale of the receiver.
    # <p>
    # The locale determines which platform character set this
    # font is going to use. Widgets and graphics operations that
    # use this font will convert UNICODE strings to the platform
    # character set of the specified locale.
    # </p>
    # <p>
    # On platforms where there are multiple character sets for a
    # given language/country locale, the variant portion of the
    # locale will determine the character set.
    # </p>
    # 
    # @param locale the <code>String</code> representing a Locale object
    # @see java.util.Locale#toString
    def set_locale(locale)
      @lang = (@country = (@variant = (nil).to_s).to_s).to_s
      if (!(locale).nil?)
        sep = Character.new(?_.ord)
        length_ = locale.length
        first_sep = 0
        second_sep = 0
        first_sep = locale.index_of(sep)
        if ((first_sep).equal?(-1))
          first_sep = second_sep = length_
        else
          second_sep = locale.index_of(sep, first_sep + 1)
          if ((second_sep).equal?(-1))
            second_sep = length_
          end
        end
        if (first_sep > 0)
          @lang = (locale.substring(0, first_sep)).to_s
        end
        if (second_sep > first_sep + 1)
          @country = (locale.substring(first_sep + 1, second_sep)).to_s
        end
        if (length_ > second_sep + 1)
          @variant = (locale.substring(second_sep + 1)).to_s
        end
      end
      if ((@lang).nil?)
        @data.attr_lf_char_set = OS::DEFAULT_CHARSET
      else
        callback = Callback.new(self, "EnumLocalesProc", 1) # $NON-NLS-1$
        # long
        lp_enum_locales_proc = callback.get_address
        if ((lp_enum_locales_proc).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        OS._enum_system_locales(lp_enum_locales_proc, OS::LCID_SUPPORTED)
        callback.dispose
      end
    end
    
    typesig { [String] }
    # Sets the name of the receiver.
    # <p>
    # Some platforms support font foundries. On these platforms, the name
    # of the font specified in setName() may have one of the following forms:
    # <ol>
    # <li>a face name (for example, "courier")</li>
    # <li>a foundry followed by a dash ("-") followed by a face name (for example, "adobe-courier")</li>
    # </ol>
    # In either case, the name returned from getName() will include the
    # foundry.
    # </p>
    # <p>
    # On platforms that do not support font foundries, only the face name
    # (for example, "courier") is used in <code>setName()</code> and
    # <code>getName()</code>.
    # </p>
    # 
    # @param name the name of the font data (must not be null)
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - when the font name is null</li>
    # </ul>
    # 
    # @see #getName
    def set_name(name)
      if ((name).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      # The field lfFaceName must be NULL terminated
      buffer = TCHAR.new(0, name, true)
      length_ = Math.min(OS::LF_FACESIZE - 1, buffer.length)
      if (OS::IsUnicode)
        lf_face_name = (@data).attr_lf_face_name
        i = 0
        while i < lf_face_name.attr_length
          lf_face_name[i] = 0
          ((i += 1) - 1)
        end
        System.arraycopy(buffer.attr_chars, 0, lf_face_name, 0, length_)
      else
        lf_face_name = (@data).attr_lf_face_name
        i = 0
        while i < lf_face_name.attr_length
          lf_face_name[i] = 0
          ((i += 1) - 1)
        end
        System.arraycopy(buffer.attr_bytes, 0, lf_face_name, 0, length_)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the style of the receiver to the argument which must
    # be a bitwise OR of one or more of the <code>SWT</code>
    # constants NORMAL, BOLD and ITALIC.  All other style bits are
    # ignored.
    # 
    # @param style the new style for this <code>FontData</code>
    # 
    # @see #getStyle
    def set_style(style)
      if (((style & SWT::BOLD)).equal?(SWT::BOLD))
        @data.attr_lf_weight = 700
      else
        @data.attr_lf_weight = 0
      end
      if (((style & SWT::ITALIC)).equal?(SWT::ITALIC))
        @data.attr_lf_italic = 1
      else
        @data.attr_lf_italic = 0
      end
    end
    
    typesig { [] }
    # Returns a string representation of the receiver which is suitable
    # for constructing an equivalent instance using the
    # <code>FontData(String)</code> constructor.
    # 
    # @return a string representation of the FontData
    # 
    # @see FontData
    def to_s
      buffer = StringBuffer.new
      buffer.append("1|") # $NON-NLS-1$
      buffer.append(get_name)
      buffer.append("|") # $NON-NLS-1$
      buffer.append(get_height_f)
      buffer.append("|") # $NON-NLS-1$
      buffer.append(get_style)
      buffer.append("|") # $NON-NLS-1$
      buffer.append("WINDOWS|1|") # $NON-NLS-1$
      buffer.append(@data.attr_lf_height)
      buffer.append("|") # $NON-NLS-1$
      buffer.append(@data.attr_lf_width)
      buffer.append("|") # $NON-NLS-1$
      buffer.append(@data.attr_lf_escapement)
      buffer.append("|") # $NON-NLS-1$
      buffer.append(@data.attr_lf_orientation)
      buffer.append("|") # $NON-NLS-1$
      buffer.append(@data.attr_lf_weight)
      buffer.append("|") # $NON-NLS-1$
      buffer.append(@data.attr_lf_italic)
      buffer.append("|") # $NON-NLS-1$
      buffer.append(@data.attr_lf_underline)
      buffer.append("|") # $NON-NLS-1$
      buffer.append(@data.attr_lf_strike_out)
      buffer.append("|") # $NON-NLS-1$
      buffer.append(@data.attr_lf_char_set)
      buffer.append("|") # $NON-NLS-1$
      buffer.append(@data.attr_lf_out_precision)
      buffer.append("|") # $NON-NLS-1$
      buffer.append(@data.attr_lf_clip_precision)
      buffer.append("|") # $NON-NLS-1$
      buffer.append(@data.attr_lf_quality)
      buffer.append("|") # $NON-NLS-1$
      buffer.append(@data.attr_lf_pitch_and_family)
      buffer.append("|") # $NON-NLS-1$
      buffer.append(get_name)
      return buffer.to_s
    end
    
    class_module.module_eval {
      typesig { [LOGFONT, ::Java::Float] }
      # Invokes platform specific functionality to allocate a new font data.
      # <p>
      # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
      # API for <code>FontData</code>. It is marked public only so that
      # it can be shared within the packages provided by SWT. It is not
      # available on all platforms, and should never be called from
      # application code.
      # </p>
      # 
      # @param data the <code>LOGFONT</code> for the font data
      # @param height the height of the font data
      # @return a new font data object containing the specified <code>LOGFONT</code> and height
      def win32_new(data, height)
        return FontData.new(data, height)
      end
    }
    
    private
    alias_method :initialize__font_data, :initialize
  end
  
end
