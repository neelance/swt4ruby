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
  module DeviceImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gdip
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
    }
  end
  
  # This class is the abstract superclass of all device objects,
  # such as the Display device and the Printer device. Devices
  # can have a graphics context (GC) created for them, and they
  # can be drawn on by sending messages to the associated GC.
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Device 
    include_class_members DeviceImports
    include Drawable
    
    class_module.module_eval {
      # Debugging
      
      def debug
        defined?(@@debug) ? @@debug : @@debug= false
      end
      alias_method :attr_debug, :debug
      
      def debug=(value)
        @@debug = value
      end
      alias_method :attr_debug=, :debug=
    }
    
    attr_accessor :debug
    alias_method :attr_debug, :debug
    undef_method :debug
    alias_method :attr_debug=, :debug=
    undef_method :debug=
    
    attr_accessor :tracking
    alias_method :attr_tracking, :tracking
    undef_method :tracking
    alias_method :attr_tracking=, :tracking=
    undef_method :tracking=
    
    attr_accessor :errors
    alias_method :attr_errors, :errors
    undef_method :errors
    alias_method :attr_errors=, :errors=
    undef_method :errors=
    
    attr_accessor :objects
    alias_method :attr_objects, :objects
    undef_method :objects
    alias_method :attr_objects=, :objects=
    undef_method :objects=
    
    attr_accessor :tracking_lock
    alias_method :attr_tracking_lock, :tracking_lock
    undef_method :tracking_lock
    alias_method :attr_tracking_lock=, :tracking_lock=
    undef_method :tracking_lock=
    
    # Palette
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    # 
    # long
    attr_accessor :h_palette
    alias_method :attr_h_palette, :h_palette
    undef_method :h_palette
    alias_method :attr_h_palette=, :h_palette=
    undef_method :h_palette=
    
    attr_accessor :color_ref_count
    alias_method :attr_color_ref_count, :color_ref_count
    undef_method :color_ref_count
    alias_method :attr_color_ref_count=, :color_ref_count=
    undef_method :color_ref_count=
    
    # System Font
    attr_accessor :system_font
    alias_method :attr_system_font, :system_font
    undef_method :system_font
    alias_method :attr_system_font=, :system_font=
    undef_method :system_font=
    
    # Font Enumeration
    attr_accessor :n_fonts
    alias_method :attr_n_fonts, :n_fonts
    undef_method :n_fonts
    alias_method :attr_n_fonts=, :n_fonts=
    undef_method :n_fonts=
    
    attr_accessor :log_fonts
    alias_method :attr_log_fonts, :log_fonts
    undef_method :log_fonts
    alias_method :attr_log_fonts=, :log_fonts=
    undef_method :log_fonts=
    
    attr_accessor :metrics
    alias_method :attr_metrics, :metrics
    undef_method :metrics
    alias_method :attr_metrics=, :metrics=
    undef_method :metrics=
    
    attr_accessor :pixels
    alias_method :attr_pixels, :pixels
    undef_method :pixels
    alias_method :attr_pixels=, :pixels=
    undef_method :pixels=
    
    # Scripts
    # long
    attr_accessor :scripts
    alias_method :attr_scripts, :scripts
    undef_method :scripts
    alias_method :attr_scripts=, :scripts=
    undef_method :scripts=
    
    # Advanced Graphics
    # long
    attr_accessor :gdip_token
    alias_method :attr_gdip_token, :gdip_token
    undef_method :gdip_token
    alias_method :attr_gdip_token=, :gdip_token=
    undef_method :gdip_token=
    
    attr_accessor :disposed
    alias_method :attr_disposed, :disposed
    undef_method :disposed
    alias_method :attr_disposed=, :disposed=
    undef_method :disposed=
    
    class_module.module_eval {
      # TEMPORARY CODE. When a graphics object is
      # created and the device parameter is null,
      # the current Display is used. This presents
      # a problem because SWT graphics does not
      # reference classes in SWT widgets. The correct
      # fix is to remove this feature. Unfortunately,
      # too many application programs rely on this
      # feature.
      # 
      # This code will be removed in the future.
      
      def current_device
        defined?(@@current_device) ? @@current_device : @@current_device= nil
      end
      alias_method :attr_current_device, :current_device
      
      def current_device=(value)
        @@current_device = value
      end
      alias_method :attr_current_device=, :current_device=
      
      
      def device_finder
        defined?(@@device_finder) ? @@device_finder : @@device_finder= nil
      end
      alias_method :attr_device_finder, :device_finder
      
      def device_finder=(value)
        @@device_finder = value
      end
      alias_method :attr_device_finder=, :device_finder=
      
      when_class_loaded do
        begin
          Class.for_name("org.eclipse.swt.widgets.Display") # $NON-NLS-1$
        rescue JavaThrowable => e
        end
      end
      
      typesig { [] }
      # TEMPORARY CODE.
      def get_device
        synchronized(self) do
          if (!(self.attr_device_finder).nil?)
            self.attr_device_finder.run
          end
          device = self.attr_current_device
          self.attr_current_device = nil
          return device
        end
      end
    }
    
    typesig { [] }
    # Constructs a new instance of this class.
    # <p>
    # You must dispose the device when it is no longer required.
    # </p>
    # 
    # @see #create
    # @see #init
    # 
    # @since 3.1
    def initialize
      initialize__device(nil)
    end
    
    typesig { [DeviceData] }
    # Constructs a new instance of this class.
    # <p>
    # You must dispose the device when it is no longer required.
    # </p>
    # 
    # @param data the DeviceData which describes the receiver
    # 
    # @see #create
    # @see #init
    # @see DeviceData
    def initialize(data)
      @debug = self.attr_debug
      @tracking = self.attr_debug
      @errors = nil
      @objects = nil
      @tracking_lock = nil
      @h_palette = 0
      @color_ref_count = nil
      @system_font = nil
      @n_fonts = 256
      @log_fonts = nil
      @metrics = nil
      @pixels = nil
      @scripts = nil
      @gdip_token = nil
      @disposed = false
      synchronized((Device)) do
        if (!(data).nil?)
          @debug = data.attr_debug
          @tracking = data.attr_tracking
        end
        if (@tracking)
          @errors = Array.typed(JavaError).new(128) { nil }
          @objects = Array.typed(Object).new(128) { nil }
          @tracking_lock = Object.new
        end
        create(data)
        init
      end
    end
    
    typesig { [] }
    # Throws an <code>SWTException</code> if the receiver can not
    # be accessed by the caller. This may include both checks on
    # the state of the receiver and more generally on the entire
    # execution context. This method <em>should</em> be called by
    # device implementors to enforce the standard SWT invariants.
    # <p>
    # Currently, it is an error to invoke any method (other than
    # <code>isDisposed()</code> and <code>dispose()</code>) on a
    # device that has had its <code>dispose()</code> method called.
    # </p><p>
    # In future releases of SWT, there may be more or fewer error
    # checks and exceptions may be thrown for different reasons.
    # <p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def check_device
      if (@disposed)
        SWT.error(SWT::ERROR_DEVICE_DISPOSED)
      end
    end
    
    typesig { [] }
    def check_gdip
      if (!(@gdip_token).nil?)
        return
      end
      old_error_mode = 0
      if (!OS::IsWinCE)
        old_error_mode = OS._set_error_mode(OS::SEM_FAILCRITICALERRORS)
      end
      begin
        # long
        # long
        token = Array.typed(::Java::Int).new(1) { 0 }
        input = GdiplusStartupInput.new
        input.attr_gdiplus_version = 1
        if ((Gdip._gdiplus_startup(token, input, 0)).equal?(0))
          @gdip_token = token
        end
      rescue JavaThrowable => t
        SWT.error(SWT::ERROR_NO_GRAPHICS_LIBRARY, t, " [GDI+ is required]") # $NON-NLS-1$
      ensure
        if (!OS::IsWinCE)
          OS._set_error_mode(old_error_mode)
        end
      end
    end
    
    typesig { [DeviceData] }
    # Creates the device in the operating system.  If the device
    # does not have a handle, this method may do nothing depending
    # on the device.
    # <p>
    # This method is called before <code>init</code>.
    # </p><p>
    # Subclasses are supposed to reimplement this method and not
    # call the <code>super</code> implementation.
    # </p>
    # 
    # @param data the DeviceData which describes the receiver
    # 
    # @see #init
    def create(data)
    end
    
    typesig { [::Java::Float] }
    def compute_pixels(height)
      # long
      h_dc = internal_new__gc(nil)
      pixels = -RJava.cast_to_int((0.5 + (height * OS._get_device_caps(h_dc, OS::LOGPIXELSY) / 72)))
      internal_dispose__gc(h_dc, nil)
      return pixels
    end
    
    typesig { [LOGFONT, ::Java::Int] }
    # long
    def compute_points(log_font, h_font)
      # long
      h_dc = internal_new__gc(nil)
      log_pixels_y = OS._get_device_caps(h_dc, OS::LOGPIXELSY)
      pixels = 0
      if (log_font.attr_lf_height > 0)
        # Feature in Windows. If the lfHeight of the LOGFONT structure
        # is positive, the lfHeight measures the height of the entire
        # cell, including internal leading, in logical units. Since the
        # height of a font in points does not include the internal leading,
        # we must subtract the internal leading, which requires a TEXTMETRIC.
        # 
        # long
        old_font = OS._select_object(h_dc, h_font)
        lptm = OS::IsUnicode ? TEXTMETRICW.new : TEXTMETRICA.new
        OS._get_text_metrics(h_dc, lptm)
        OS._select_object(h_dc, old_font)
        pixels = log_font.attr_lf_height - lptm.attr_tm_internal_leading
      else
        pixels = -log_font.attr_lf_height
      end
      internal_dispose__gc(h_dc, nil)
      return pixels * 72 / log_pixels_y
    end
    
    typesig { [] }
    # Destroys the device in the operating system and releases
    # the device's handle.  If the device does not have a handle,
    # this method may do nothing depending on the device.
    # <p>
    # This method is called after <code>release</code>.
    # </p><p>
    # Subclasses are supposed to reimplement this method and not
    # call the <code>super</code> implementation.
    # </p>
    # 
    # @see #dispose
    # @see #release
    def destroy
    end
    
    typesig { [] }
    # Disposes of the operating system resources associated with
    # the receiver. After this method has been invoked, the receiver
    # will answer <code>true</code> when sent the message
    # <code>isDisposed()</code>.
    # 
    # @see #release
    # @see #destroy
    # @see #checkDevice
    def dispose
      synchronized((Device)) do
        if (is_disposed)
          return
        end
        check_device
        release
        destroy
        @disposed = true
        if (@tracking)
          synchronized((@tracking_lock)) do
            print_errors
            @objects = nil
            @errors = nil
            @tracking_lock = nil
          end
        end
      end
    end
    
    typesig { [Object] }
    def dispose__object(object)
      synchronized((@tracking_lock)) do
        i = 0
        while i < @objects.attr_length
          if ((@objects[i]).equal?(object))
            @objects[i] = nil
            @errors[i] = nil
            return
          end
          i += 1
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def _enum_font_fam_proc(lpelfe, lpntme, font_type, l_param)
      # 64
      is_scalable = ((RJava.cast_to_int(font_type) & OS::RASTER_FONTTYPE)).equal?(0)
      scalable = (l_param).equal?(1)
      if ((is_scalable).equal?(scalable))
        # Add the log font to the list of log fonts
        if ((@n_fonts).equal?(@log_fonts.attr_length))
          new_log_fonts = Array.typed(LOGFONT).new(@log_fonts.attr_length + 128) { nil }
          System.arraycopy(@log_fonts, 0, new_log_fonts, 0, @n_fonts)
          @log_fonts = new_log_fonts
          new_pixels = Array.typed(::Java::Int).new(new_log_fonts.attr_length) { 0 }
          System.arraycopy(@pixels, 0, new_pixels, 0, @n_fonts)
          @pixels = new_pixels
        end
        log_font = @log_fonts[@n_fonts]
        if ((log_font).nil?)
          log_font = OS::IsUnicode ? LOGFONTW.new : LOGFONTA.new
        end
        OS._move_memory(log_font, lpelfe, LOGFONT.attr_sizeof)
        @log_fonts[@n_fonts] = log_font
        if (log_font.attr_lf_height > 0)
          # Feature in Windows. If the lfHeight of the LOGFONT structure
          # is positive, the lfHeight measures the height of the entire
          # cell, including internal leading, in logical units. Since the
          # height of a font in points does not include the internal leading,
          # we must subtract the internal leading, which requires a TEXTMETRIC,
          # which in turn requires font creation.
          OS._move_memory(@metrics, lpntme, TEXTMETRIC.attr_sizeof)
          @pixels[@n_fonts] = log_font.attr_lf_height - @metrics.attr_tm_internal_leading
        else
          @pixels[@n_fonts] = -log_font.attr_lf_height
        end
        @n_fonts += 1
      end
      return 1
    end
    
    typesig { [] }
    # Returns a rectangle describing the receiver's size and location.
    # 
    # @return the bounding rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_bounds
      check_device
      # long
      h_dc = internal_new__gc(nil)
      width = OS._get_device_caps(h_dc, OS::HORZRES)
      height = OS._get_device_caps(h_dc, OS::VERTRES)
      internal_dispose__gc(h_dc, nil)
      return Rectangle.new(0, 0, width, height)
    end
    
    typesig { [] }
    # Returns a <code>DeviceData</code> based on the receiver.
    # Modifications made to this <code>DeviceData</code> will not
    # affect the receiver.
    # 
    # @return a <code>DeviceData</code> containing the device's data and attributes
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see DeviceData
    def get_device_data
      check_device
      data = DeviceData.new
      data.attr_debug = @debug
      data.attr_tracking = @tracking
      if (@tracking)
        synchronized((@tracking_lock)) do
          count = 0
          length = @objects.attr_length
          i = 0
          while i < length
            if (!(@objects[i]).nil?)
              count += 1
            end
            i += 1
          end
          index = 0
          data.attr_objects = Array.typed(Object).new(count) { nil }
          data.attr_errors = Array.typed(JavaError).new(count) { nil }
          i_ = 0
          while i_ < length
            if (!(@objects[i_]).nil?)
              data.attr_objects[index] = @objects[i_]
              data.attr_errors[index] = @errors[i_]
              index += 1
            end
            i_ += 1
          end
        end
      else
        data.attr_objects = Array.typed(Object).new(0) { nil }
        data.attr_errors = Array.typed(JavaError).new(0) { nil }
      end
      return data
    end
    
    typesig { [] }
    # Returns a rectangle which describes the area of the
    # receiver which is capable of displaying data.
    # 
    # @return the client area
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #getBounds
    def get_client_area
      return get_bounds
    end
    
    typesig { [] }
    # Returns the bit depth of the screen, which is the number of
    # bits it takes to represent the number of unique colors that
    # the screen is currently capable of displaying. This number
    # will typically be one of 1, 8, 15, 16, 24 or 32.
    # 
    # @return the depth of the screen
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_depth
      check_device
      # long
      h_dc = internal_new__gc(nil)
      bits = OS._get_device_caps(h_dc, OS::BITSPIXEL)
      planes = OS._get_device_caps(h_dc, OS::PLANES)
      internal_dispose__gc(h_dc, nil)
      return bits * planes
    end
    
    typesig { [] }
    # Returns a point whose x coordinate is the horizontal
    # dots per inch of the display, and whose y coordinate
    # is the vertical dots per inch of the display.
    # 
    # @return the horizontal and vertical DPI
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_dpi
      check_device
      # long
      h_dc = internal_new__gc(nil)
      dpi_x = OS._get_device_caps(h_dc, OS::LOGPIXELSX)
      dpi_y = OS._get_device_caps(h_dc, OS::LOGPIXELSY)
      internal_dispose__gc(h_dc, nil)
      return Point.new(dpi_x, dpi_y)
    end
    
    typesig { [String, ::Java::Boolean] }
    # Returns <code>FontData</code> objects which describe
    # the fonts that match the given arguments. If the
    # <code>faceName</code> is null, all fonts will be returned.
    # 
    # @param faceName the name of the font to look for, or null
    # @param scalable if true only scalable fonts are returned, otherwise only non-scalable fonts are returned.
    # @return the matching font data
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_font_list(face_name, scalable)
      check_device
      # Create the callback
      callback = Callback.new(self, "EnumFontFamProc", 4) # $NON-NLS-1$
      # long
      lp_enum_font_fam_proc = callback.get_address
      if ((lp_enum_font_fam_proc).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      # Initialize the instance variables
      @metrics = OS::IsUnicode ? TEXTMETRICW.new : TEXTMETRICA.new
      @pixels = Array.typed(::Java::Int).new(@n_fonts) { 0 }
      @log_fonts = Array.typed(LOGFONT).new(@n_fonts) { nil }
      i = 0
      while i < @log_fonts.attr_length
        @log_fonts[i] = OS::IsUnicode ? LOGFONTW.new : LOGFONTA.new
        i += 1
      end
      @n_fonts = 0
      # Enumerate
      offset = 0
      # long
      h_dc = internal_new__gc(nil)
      if ((face_name).nil?)
        # The user did not specify a face name, so they want all versions of all available face names
        OS._enum_font_families(h_dc, nil, lp_enum_font_fam_proc, scalable ? 1 : 0)
        # For bitmapped fonts, EnumFontFamilies only enumerates once for each font, regardless
        # of how many styles are available. If the user wants bitmapped fonts, enumerate on
        # each face name now.
        offset = @n_fonts
        i_ = 0
        while i_ < offset
          lf = @log_fonts[i_]
          # Bug in Windows 98. When EnumFontFamiliesEx is called with a specified face name, it
          # should enumerate for each available style of that font. Instead, it only enumerates
          # once. The fix is to call EnumFontFamilies, which works as expected.
          if (OS::IsUnicode)
            OS._enum_font_families_w(h_dc, (lf).attr_lf_face_name, lp_enum_font_fam_proc, scalable ? 1 : 0)
          else
            OS._enum_font_families_a(h_dc, (lf).attr_lf_face_name, lp_enum_font_fam_proc, scalable ? 1 : 0)
          end
          i_ += 1
        end
      else
        # Use the character encoding for the default locale
        lp_face_name = TCHAR.new(0, face_name, true)
        # Bug in Windows 98. When EnumFontFamiliesEx is called with a specified face name, it
        # should enumerate for each available style of that font. Instead, it only enumerates
        # once. The fix is to call EnumFontFamilies, which works as expected.
        OS._enum_font_families(h_dc, lp_face_name, lp_enum_font_fam_proc, scalable ? 1 : 0)
      end
      log_pixels_y = OS._get_device_caps(h_dc, OS::LOGPIXELSY)
      internal_dispose__gc(h_dc, nil)
      # Create the fontData from the logfonts
      count = 0
      result = Array.typed(FontData).new(@n_fonts - offset) { nil }
      i_ = offset
      while i_ < @n_fonts
        fd = FontData.win32_new(@log_fonts[i_], @pixels[i_] * 72 / log_pixels_y)
        j = 0
        j = 0
        while j < count
          if ((fd == result[j]))
            break
          end
          j += 1
        end
        if ((j).equal?(count))
          result[((count += 1) - 1)] = fd
        end
        i_ += 1
      end
      if (!(count).equal?(result.attr_length))
        new_result = Array.typed(FontData).new(count) { nil }
        System.arraycopy(result, 0, new_result, 0, count)
        result = new_result
      end
      # Clean up
      callback.dispose
      @log_fonts = nil
      @pixels = nil
      @metrics = nil
      return result
    end
    
    typesig { [] }
    def get_last_error
      error_ = OS._get_last_error
      if ((error_).equal?(0))
        return ""
      end # $NON-NLS-1$
      return " [GetLastError=0x" + RJava.cast_to_string(JavaInteger.to_hex_string(error_)) + "]" # $NON-NLS-1$ //$NON-NLS-2$
    end
    
    typesig { [] }
    def get_last_error_text
      error_ = OS._get_last_error
      if ((error_).equal?(0))
        return ""
      end # $NON-NLS-1$
      # long
      # long
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      dw_flags = OS::FORMAT_MESSAGE_ALLOCATE_BUFFER | OS::FORMAT_MESSAGE_FROM_SYSTEM | OS::FORMAT_MESSAGE_IGNORE_INSERTS
      length = OS._format_message(dw_flags, 0, error_, OS::LANG_USER_DEFAULT, buffer, 0, 0)
      if ((length).equal?(0))
        return " [GetLastError=0x" + RJava.cast_to_string(JavaInteger.to_hex_string(error_)) + "]"
      end # $NON-NLS-1$ //$NON-NLS-2$
      buffer1 = TCHAR.new(0, length)
      OS._move_memory(buffer1, buffer[0], length * TCHAR.attr_sizeof)
      if (!(buffer[0]).equal?(0))
        OS._local_free(buffer[0])
      end
      return buffer1.to_s(0, length)
    end
    
    typesig { [::Java::Int] }
    # Returns the matching standard color for the given
    # constant, which should be one of the color constants
    # specified in class <code>SWT</code>. Any value other
    # than one of the SWT color constants which is passed
    # in will result in the color black. This color should
    # not be freed because it was allocated by the system,
    # not the application.
    # 
    # @param id the color constant
    # @return the matching color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see SWT
    def get_system_color(id)
      check_device
      pixel = 0x0
      case (id)
      when SWT::COLOR_WHITE
        pixel = 0xffffff
      when SWT::COLOR_BLACK
        pixel = 0x0
      when SWT::COLOR_RED
        pixel = 0xff
      when SWT::COLOR_DARK_RED
        pixel = 0x80
      when SWT::COLOR_GREEN
        pixel = 0xff00
      when SWT::COLOR_DARK_GREEN
        pixel = 0x8000
      when SWT::COLOR_YELLOW
        pixel = 0xffff
      when SWT::COLOR_DARK_YELLOW
        pixel = 0x8080
      when SWT::COLOR_BLUE
        pixel = 0xff0000
      when SWT::COLOR_DARK_BLUE
        pixel = 0x800000
      when SWT::COLOR_MAGENTA
        pixel = 0xff00ff
      when SWT::COLOR_DARK_MAGENTA
        pixel = 0x800080
      when SWT::COLOR_CYAN
        pixel = 0xffff00
      when SWT::COLOR_DARK_CYAN
        pixel = 0x808000
      when SWT::COLOR_GRAY
        pixel = 0xc0c0c0
      when SWT::COLOR_DARK_GRAY
        pixel = 0x808080
      end
      return Color.win32_new(self, pixel)
    end
    
    typesig { [] }
    # Returns a reasonable font for applications to use.
    # On some platforms, this will match the "default font"
    # or "system font" if such can be found.  This font
    # should not be freed because it was allocated by the
    # system, not the application.
    # <p>
    # Typically, applications which want the default look
    # should simply not set the font on the widgets they
    # create. Widgets are always created with the correct
    # default font for the class of user-interface component
    # they represent.
    # </p>
    # 
    # @return a font
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_system_font
      check_device
      # long
      h_font = OS._get_stock_object(OS::SYSTEM_FONT)
      return Font.win32_new(self, h_font)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the underlying window system prints out
    # warning messages on the console, and <code>setWarnings</code>
    # had previously been called with <code>true</code>.
    # 
    # @return <code>true</code>if warnings are being handled, and <code>false</code> otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_warnings
      check_device
      return false
    end
    
    typesig { [] }
    # Initializes any internal resources needed by the
    # device.
    # <p>
    # This method is called after <code>create</code>.
    # </p><p>
    # If subclasses reimplement this method, they must
    # call the <code>super</code> implementation.
    # </p>
    # 
    # @see #create
    def init
      if (@debug)
        if (!OS::IsWinCE)
          OS._gdi_set_batch_limit(1)
        end
      end
      # Initialize the system font slot
      @system_font = get_system_font
      # Initialize scripts list
      if (!OS::IsWinCE)
        # long
        # long
        pp_sp = Array.typed(::Java::Int).new(1) { 0 }
        pi_num_scripts = Array.typed(::Java::Int).new(1) { 0 }
        OS._script_get_properties(pp_sp, pi_num_scripts)
        # long
        @scripts = Array.typed(::Java::Int).new(pi_num_scripts[0]) { 0 }
        OS._move_memory(@scripts, pp_sp[0], @scripts.attr_length * OS::PTR_SIZEOF)
      end
      # If we're not on a device which supports palettes,
      # don't create one.
      # 
      # long
      h_dc = internal_new__gc(nil)
      rc = OS._get_device_caps(h_dc, OS::RASTERCAPS)
      bits = OS._get_device_caps(h_dc, OS::BITSPIXEL)
      planes = OS._get_device_caps(h_dc, OS::PLANES)
      bits *= planes
      if (((rc & OS::RC_PALETTE)).equal?(0) || !(bits).equal?(8))
        internal_dispose__gc(h_dc, nil)
        return
      end
      num_reserved = OS._get_device_caps(h_dc, OS::NUMRESERVED)
      num_entries = OS._get_device_caps(h_dc, OS::SIZEPALETTE)
      if (OS::IsWinCE)
        # Feature on WinCE.  For some reason, certain 8 bit WinCE
        # devices return 0 for the number of reserved entries in
        # the system palette.  Their system palette correctly contains
        # the usual 20 system colors.  The workaround is to assume
        # there are 20 reserved system colors instead of 0.
        if ((num_reserved).equal?(0) && num_entries >= 20)
          num_reserved = 20
        end
      end
      # Create the palette and reference counter
      @color_ref_count = Array.typed(::Java::Int).new(num_entries) { 0 }
      # 4 bytes header + 4 bytes per entry * numEntries entries
      log_palette = Array.typed(::Java::Byte).new(4 + 4 * num_entries) { 0 }
      # 2 bytes = special header
      log_palette[0] = 0x0
      log_palette[1] = 0x3
      # 2 bytes = number of colors, LSB first
      log_palette[2] = 0
      log_palette[3] = 1
      # Create a palette which contains the system entries
      # as they are located in the system palette.  The
      # MSDN article 'Memory Device Contexts' describes
      # where system entries are located.  On an 8 bit
      # display with 20 reserved colors, the system colors
      # will be the first 10 entries and the last 10 ones.
      lppe = Array.typed(::Java::Byte).new(4 * num_entries) { 0 }
      OS._get_system_palette_entries(h_dc, 0, num_entries, lppe)
      # Copy all entries from the system palette
      System.arraycopy(lppe, 0, log_palette, 4, 4 * num_entries)
      # Lock the indices corresponding to the system entries
      i = 0
      while i < num_reserved / 2
        @color_ref_count[i] = 1
        @color_ref_count[num_entries - 1 - i] = 1
        i += 1
      end
      internal_dispose__gc(h_dc, nil)
      @h_palette = OS._create_palette(log_palette)
    end
    
    typesig { [SwtGCData] }
    # Invokes platform specific functionality to allocate a new GC handle.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Device</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    # 
    # @param data the platform specific GC data
    # @return the platform specific GC handle
    # 
    # long
    def internal_new__gc(data)
      raise NotImplementedError
    end
    
    typesig { [::Java::Int, SwtGCData] }
    # Invokes platform specific functionality to dispose a GC handle.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Device</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    # 
    # @param hDC the platform specific GC handle
    # @param data the platform specific GC data
    # 
    # long
    # long
    def internal_dispose__gc(h_dc, data)
      raise NotImplementedError
    end
    
    typesig { [] }
    # Returns <code>true</code> if the device has been disposed,
    # and <code>false</code> otherwise.
    # <p>
    # This method gets the dispose state for the device.
    # When a device has been disposed, it is an error to
    # invoke any other method using the device.
    # 
    # @return <code>true</code> when the device is disposed and <code>false</code> otherwise
    def is_disposed
      synchronized((Device)) do
        return @disposed
      end
    end
    
    typesig { [String] }
    # Loads the font specified by a file.  The font will be
    # present in the list of fonts available to the application.
    # 
    # @param path the font file path
    # @return whether the font was successfully loaded
    # 
    # @exception SWTException <ul>
    # <li>ERROR_NULL_ARGUMENT - if path is null</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see Font
    # 
    # @since 3.3
    def load_font(path)
      check_device
      if ((path).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (OS::IsWinNT && OS::WIN32_VERSION >= OS._version(4, 10))
        lpsz_filename = TCHAR.new(0, path, true)
        return !(OS._add_font_resource_ex(lpsz_filename, OS::FR_PRIVATE, 0)).equal?(0)
      end
      return false
    end
    
    typesig { [Object] }
    def new__object(object)
      synchronized((@tracking_lock)) do
        i = 0
        while i < @objects.attr_length
          if ((@objects[i]).nil?)
            @objects[i] = object
            @errors[i] = JavaError.new
            return
          end
          i += 1
        end
        new_objects = Array.typed(Object).new(@objects.attr_length + 128) { nil }
        System.arraycopy(@objects, 0, new_objects, 0, @objects.attr_length)
        new_objects[@objects.attr_length] = object
        @objects = new_objects
        new_errors = Array.typed(JavaError).new(@errors.attr_length + 128) { nil }
        System.arraycopy(@errors, 0, new_errors, 0, @errors.attr_length)
        new_errors[@errors.attr_length] = JavaError.new
        @errors = new_errors
      end
    end
    
    typesig { [] }
    def print_errors
      if (!self.attr_debug)
        return
      end
      if (@tracking)
        synchronized((@tracking_lock)) do
          if ((@objects).nil? || (@errors).nil?)
            return
          end
          object_count = 0
          colors = 0
          cursors = 0
          fonts = 0
          gcs = 0
          images = 0
          paths = 0
          patterns = 0
          regions = 0
          text_layouts = 0
          transforms = 0
          i = 0
          while i < @objects.attr_length
            object = @objects[i]
            if (!(object).nil?)
              object_count += 1
              if (object.is_a?(Color))
                colors += 1
              end
              if (object.is_a?(Cursor))
                cursors += 1
              end
              if (object.is_a?(Font))
                fonts += 1
              end
              if (object.is_a?(SwtGC))
                gcs += 1
              end
              if (object.is_a?(Image))
                images += 1
              end
              if (object.is_a?(Path))
                paths += 1
              end
              if (object.is_a?(Pattern))
                patterns += 1
              end
              if (object.is_a?(Region))
                regions += 1
              end
              if (object.is_a?(TextLayout))
                text_layouts += 1
              end
              if (object.is_a?(Transform))
                transforms += 1
              end
            end
            i += 1
          end
          if (!(object_count).equal?(0))
            string = "Summary: "
            if (!(colors).equal?(0))
              string += RJava.cast_to_string(colors) + " Color(s), "
            end
            if (!(cursors).equal?(0))
              string += RJava.cast_to_string(cursors) + " Cursor(s), "
            end
            if (!(fonts).equal?(0))
              string += RJava.cast_to_string(fonts) + " Font(s), "
            end
            if (!(gcs).equal?(0))
              string += RJava.cast_to_string(gcs) + " GC(s), "
            end
            if (!(images).equal?(0))
              string += RJava.cast_to_string(images) + " Image(s), "
            end
            if (!(paths).equal?(0))
              string += RJava.cast_to_string(paths) + " Path(s), "
            end
            if (!(patterns).equal?(0))
              string += RJava.cast_to_string(patterns) + " Pattern(s), "
            end
            if (!(regions).equal?(0))
              string += RJava.cast_to_string(regions) + " Region(s), "
            end
            if (!(text_layouts).equal?(0))
              string += RJava.cast_to_string(text_layouts) + " TextLayout(s), "
            end
            if (!(transforms).equal?(0))
              string += RJava.cast_to_string(transforms) + " Transforms(s), "
            end
            if (!(string.length).equal?(0))
              string = RJava.cast_to_string(string.substring(0, string.length - 2))
              System.err.println(string)
            end
            i_ = 0
            while i_ < @errors.attr_length
              if (!(@errors[i_]).nil?)
                @errors[i_].print_stack_trace(System.err)
              end
              i_ += 1
            end
          end
        end
      end
    end
    
    typesig { [] }
    # Releases any internal resources back to the operating
    # system and clears all fields except the device handle.
    # <p>
    # When a device is destroyed, resources that were acquired
    # on behalf of the programmer need to be returned to the
    # operating system.  For example, if the device allocated a
    # font to be used as the system font, this font would be
    # freed in <code>release</code>.  Also,to assist the garbage
    # collector and minimize the amount of memory that is not
    # reclaimed when the programmer keeps a reference to a
    # disposed device, all fields except the handle are zero'd.
    # The handle is needed by <code>destroy</code>.
    # </p>
    # This method is called before <code>destroy</code>.
    # </p><p>
    # If subclasses reimplement this method, they must
    # call the <code>super</code> implementation.
    # </p>
    # 
    # @see #dispose
    # @see #destroy
    def release
      if (!(@gdip_token).nil?)
        Gdip._gdiplus_shutdown(@gdip_token[0])
      end
      @gdip_token = nil
      @scripts = nil
      if (!(@h_palette).equal?(0))
        OS._delete_object(@h_palette)
      end
      @h_palette = 0
      @color_ref_count = nil
      @log_fonts = nil
      @n_fonts = 0
    end
    
    typesig { [::Java::Boolean] }
    # If the underlying window system supports printing warning messages
    # to the console, setting warnings to <code>false</code> prevents these
    # messages from being printed. If the argument is <code>true</code> then
    # message printing is not blocked.
    # 
    # @param warnings <code>true</code>if warnings should be printed, and <code>false</code> otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def set_warnings(warnings)
      check_device
    end
    
    private
    alias_method :initialize__device, :initialize
  end
  
end
