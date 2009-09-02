require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
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
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
    
    # the traits not supported to the OS font resource
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    attr_accessor :extra_traits
    alias_method :attr_extra_traits, :extra_traits
    undef_method :extra_traits
    alias_method :attr_extra_traits=, :extra_traits=
    undef_method :extra_traits=
    
    class_module.module_eval {
      const_set_lazy(:SYNTHETIC_BOLD) { -2.5 }
      const_attr_reader  :SYNTHETIC_BOLD
      
      const_set_lazy(:SYNTHETIC_ITALIC) { 0.2 }
      const_attr_reader  :SYNTHETIC_ITALIC
    }
    
    typesig { [Device] }
    def initialize(device)
      @handle = nil
      @extra_traits = 0
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
      @handle = nil
      @extra_traits = 0
      super(device)
      if ((fd).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        init(fd.get_name, fd.get_height_f, fd.get_style, fd.attr_ns_name)
        init
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      @handle = nil
      @extra_traits = 0
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        fd = fds[0]
        init(fd.get_name, fd.get_height_f, fd.get_style, fd.attr_ns_name)
        init
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      @handle = nil
      @extra_traits = 0
      super(device)
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        init(name, height, style, nil)
        init
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [Device, String, ::Java::Float, ::Java::Int] }
    # public
    def initialize(device, name, height, style)
      @handle = nil
      @extra_traits = 0
      super(device)
      init(name, height, style, nil)
      init
    end
    
    typesig { [NSMutableAttributedString, NSRange] }
    def add_traits(attr_str, range)
      if (!((@extra_traits & OS::NSBoldFontMask)).equal?(0))
        attr_str.add_attribute(OS::NSStrokeWidthAttributeName, NSNumber.number_with_double(SYNTHETIC_BOLD), range)
      end
      if (!((@extra_traits & OS::NSItalicFontMask)).equal?(0))
        attr_str.add_attribute(OS::NSObliquenessAttributeName, NSNumber.number_with_double(SYNTHETIC_ITALIC), range)
      end
    end
    
    typesig { [NSMutableDictionary] }
    def add_traits(dict)
      if (!((@extra_traits & OS::NSBoldFontMask)).equal?(0))
        dict.set_object(NSNumber.number_with_double(SYNTHETIC_BOLD), OS::NSStrokeWidthAttributeName)
      end
      if (!((@extra_traits & OS::NSItalicFontMask)).equal?(0))
        dict.set_object(NSNumber.number_with_double(SYNTHETIC_ITALIC), OS::NSObliquenessAttributeName)
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
      if (!(object.is_a?(Font)))
        return false
      end
      font = object
      return (@handle).equal?(font.attr_handle)
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        family = @handle.family_name
        name = family.get_string
        str = @handle.font_name
        ns_name = str.get_string
        manager = NSFontManager.shared_font_manager
        # long
        traits = manager.traits_of_font(@handle)
        style = SWT::NORMAL
        if (!((traits & OS::NSItalicFontMask)).equal?(0))
          style |= SWT::ITALIC
        end
        if (!((traits & OS::NSBoldFontMask)).equal?(0))
          style |= SWT::BOLD
        end
        if (!((@extra_traits & OS::NSItalicFontMask)).equal?(0))
          style |= SWT::ITALIC
        end
        if (!((@extra_traits & OS::NSBoldFontMask)).equal?(0))
          style |= SWT::BOLD
        end
        dpi = self.attr_device.attr_dpi
        screen_dpi = self.attr_device.get_screen_dpi
        # 64
        data = FontData.new(name, (@handle.point_size).to_f * screen_dpi.attr_y / dpi.attr_y, style)
        data.attr_ns_name = ns_name
        return Array.typed(FontData).new([data])
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    class_module.module_eval {
      typesig { [Device, NSFont] }
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
      def cocoa_new(device, handle)
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
      return !(@handle).nil? ? RJava.cast_to_int(@handle.attr_id) : 0
    end
    
    typesig { [String, ::Java::Float, ::Java::Int, String] }
    def init(name, height, style, ns_name)
      if ((name).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (height < 0)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      dpi = self.attr_device.attr_dpi
      screen_dpi = self.attr_device.get_screen_dpi
      size = height * dpi.attr_y / screen_dpi.attr_y
      if (!(ns_name).nil?)
        @handle = NSFont.font_with_name(NSString.string_with(ns_name), size)
      else
        family = NSString.string_with(name)
        ns_font = NSFont.font_with_name(family, size)
        if ((ns_font).nil?)
          ns_font = NSFont.system_font_of_size(size)
        end
        manager = NSFontManager.shared_font_manager
        if (!(ns_font).nil?)
          if (((style & (SWT::BOLD | SWT::ITALIC))).equal?(0))
            @handle = ns_font
          else
            traits = 0
            if (!((style & SWT::ITALIC)).equal?(0))
              traits |= OS::NSItalicFontMask
            end
            if (!((style & SWT::BOLD)).equal?(0))
              traits |= OS::NSBoldFontMask
            end
            @handle = manager.convert_font(ns_font, traits)
            if (!((style & SWT::ITALIC)).equal?(0) && ((@handle).nil? || ((manager.traits_of_font(@handle) & OS::NSItalicFontMask)).equal?(0)))
              traits &= ~OS::NSItalicFontMask
              @handle = nil
              if (!((style & SWT::BOLD)).equal?(0))
                @handle = manager.convert_font(ns_font, traits)
              end
            end
            if (!((style & SWT::BOLD)).equal?(0) && (@handle).nil?)
              traits &= ~OS::NSBoldFontMask
              if (!((style & SWT::ITALIC)).equal?(0))
                traits |= OS::NSItalicFontMask
                @handle = manager.convert_font(ns_font, traits)
              end
            end
            if ((@handle).nil?)
              @handle = ns_font
            end
          end
        end
        if ((@handle).nil?)
          @handle = NSFont.system_font_of_size(size)
        end
        if (!((style & SWT::ITALIC)).equal?(0) && ((manager.traits_of_font(@handle) & OS::NSItalicFontMask)).equal?(0))
          @extra_traits |= OS::NSItalicFontMask
        end
        if (!((style & SWT::BOLD)).equal?(0) && ((manager.traits_of_font(@handle) & OS::NSBoldFontMask)).equal?(0))
          @extra_traits |= OS::NSBoldFontMask
        end
      end
      if ((@handle).nil?)
        @handle = self.attr_device.attr_system_font.attr_handle
      end
      @handle.retain
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
      return (@handle).nil?
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
    
    private
    alias_method :initialize__font, :initialize
  end
  
end
