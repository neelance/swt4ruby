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
  module DeviceImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Carbon
      include ::Org::Eclipse::Swt::Internal
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
    
    # Disposed flag
    attr_accessor :disposed
    alias_method :attr_disposed, :disposed
    undef_method :disposed
    alias_method :attr_disposed=, :disposed=
    undef_method :disposed=
    
    attr_accessor :warnings
    alias_method :attr_warnings, :warnings
    undef_method :warnings
    alias_method :attr_warnings=, :warnings=
    undef_method :warnings=
    
    attr_accessor :colorspace
    alias_method :attr_colorspace, :colorspace
    undef_method :colorspace
    alias_method :attr_colorspace=, :colorspace=
    undef_method :colorspace=
    
    # The following colors are listed in the Windows
    # Programmer's Reference as the colors in the default
    # palette.
    attr_accessor :color_black
    alias_method :attr_color_black, :color_black
    undef_method :color_black
    alias_method :attr_color_black=, :color_black=
    undef_method :color_black=
    
    attr_accessor :color_dark_red
    alias_method :attr_color_dark_red, :color_dark_red
    undef_method :color_dark_red
    alias_method :attr_color_dark_red=, :color_dark_red=
    undef_method :color_dark_red=
    
    attr_accessor :color_dark_green
    alias_method :attr_color_dark_green, :color_dark_green
    undef_method :color_dark_green
    alias_method :attr_color_dark_green=, :color_dark_green=
    undef_method :color_dark_green=
    
    attr_accessor :color_dark_yellow
    alias_method :attr_color_dark_yellow, :color_dark_yellow
    undef_method :color_dark_yellow
    alias_method :attr_color_dark_yellow=, :color_dark_yellow=
    undef_method :color_dark_yellow=
    
    attr_accessor :color_dark_blue
    alias_method :attr_color_dark_blue, :color_dark_blue
    undef_method :color_dark_blue
    alias_method :attr_color_dark_blue=, :color_dark_blue=
    undef_method :color_dark_blue=
    
    attr_accessor :color_dark_magenta
    alias_method :attr_color_dark_magenta, :color_dark_magenta
    undef_method :color_dark_magenta
    alias_method :attr_color_dark_magenta=, :color_dark_magenta=
    undef_method :color_dark_magenta=
    
    attr_accessor :color_dark_cyan
    alias_method :attr_color_dark_cyan, :color_dark_cyan
    undef_method :color_dark_cyan
    alias_method :attr_color_dark_cyan=, :color_dark_cyan=
    undef_method :color_dark_cyan=
    
    attr_accessor :color_gray
    alias_method :attr_color_gray, :color_gray
    undef_method :color_gray
    alias_method :attr_color_gray=, :color_gray=
    undef_method :color_gray=
    
    attr_accessor :color_dark_gray
    alias_method :attr_color_dark_gray, :color_dark_gray
    undef_method :color_dark_gray
    alias_method :attr_color_dark_gray=, :color_dark_gray=
    undef_method :color_dark_gray=
    
    attr_accessor :color_red
    alias_method :attr_color_red, :color_red
    undef_method :color_red
    alias_method :attr_color_red=, :color_red=
    undef_method :color_red=
    
    attr_accessor :color_green
    alias_method :attr_color_green, :color_green
    undef_method :color_green
    alias_method :attr_color_green=, :color_green=
    undef_method :color_green=
    
    attr_accessor :color_yellow
    alias_method :attr_color_yellow, :color_yellow
    undef_method :color_yellow
    alias_method :attr_color_yellow=, :color_yellow=
    undef_method :color_yellow=
    
    attr_accessor :color_blue
    alias_method :attr_color_blue, :color_blue
    undef_method :color_blue
    alias_method :attr_color_blue=, :color_blue=
    undef_method :color_blue=
    
    attr_accessor :color_magenta
    alias_method :attr_color_magenta, :color_magenta
    undef_method :color_magenta
    alias_method :attr_color_magenta=, :color_magenta=
    undef_method :color_magenta=
    
    attr_accessor :color_cyan
    alias_method :attr_color_cyan, :color_cyan
    undef_method :color_cyan
    alias_method :attr_color_cyan=, :color_cyan=
    undef_method :color_cyan=
    
    attr_accessor :color_white
    alias_method :attr_color_white, :color_white
    undef_method :color_white
    alias_method :attr_color_white=, :color_white=
    undef_method :color_white=
    
    # System Font
    attr_accessor :system_font
    alias_method :attr_system_font, :system_font
    undef_method :system_font
    alias_method :attr_system_font=, :system_font=
    undef_method :system_font=
    
    # Callbacks
    attr_accessor :draw_pattern_callback
    alias_method :attr_draw_pattern_callback, :draw_pattern_callback
    undef_method :draw_pattern_callback
    alias_method :attr_draw_pattern_callback=, :draw_pattern_callback=
    undef_method :draw_pattern_callback=
    
    attr_accessor :axial_shading_callback
    alias_method :attr_axial_shading_callback, :axial_shading_callback
    undef_method :axial_shading_callback
    alias_method :attr_axial_shading_callback=, :axial_shading_callback=
    undef_method :axial_shading_callback=
    
    attr_accessor :release_callback
    alias_method :attr_release_callback, :release_callback
    undef_method :release_callback
    alias_method :attr_release_callback=, :release_callback=
    undef_method :release_callback=
    
    attr_accessor :draw_pattern_proc
    alias_method :attr_draw_pattern_proc, :draw_pattern_proc
    undef_method :draw_pattern_proc
    alias_method :attr_draw_pattern_proc=, :draw_pattern_proc=
    undef_method :draw_pattern_proc=
    
    attr_accessor :axial_shading_proc
    alias_method :attr_axial_shading_proc, :axial_shading_proc
    undef_method :axial_shading_proc
    alias_method :attr_axial_shading_proc=, :axial_shading_proc=
    undef_method :axial_shading_proc=
    
    attr_accessor :release_proc
    alias_method :attr_release_proc, :release_proc
    undef_method :release_proc
    alias_method :attr_release_proc=, :release_proc=
    undef_method :release_proc=
    
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
          Class.for_name("org.eclipse.swt.widgets.Display")
        rescue Exception => e
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
      @disposed = false
      @warnings = false
      @colorspace = 0
      @color_black = nil
      @color_dark_red = nil
      @color_dark_green = nil
      @color_dark_yellow = nil
      @color_dark_blue = nil
      @color_dark_magenta = nil
      @color_dark_cyan = nil
      @color_gray = nil
      @color_dark_gray = nil
      @color_red = nil
      @color_green = nil
      @color_yellow = nil
      @color_blue = nil
      @color_magenta = nil
      @color_cyan = nil
      @color_white = nil
      @system_font = nil
      @draw_pattern_callback = nil
      @axial_shading_callback = nil
      @release_callback = nil
      @draw_pattern_proc = 0
      @axial_shading_proc = 0
      @release_proc = 0
      synchronized((Device.class)) do
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def axial_shading_proc(ref, in_, out)
      object = OS._jniget_object(ref)
      if (object.is_a?(Pattern))
        return (object).axial_shading_proc(ref, in_, out)
      end
      return 0
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
    
    typesig { [] }
    def create_pattern_callbacks
      if ((@draw_pattern_callback).nil?)
        @draw_pattern_callback = Callback.new(self, "drawPatternProc", 2)
        @draw_pattern_proc = @draw_pattern_callback.get_address
        if ((@draw_pattern_proc).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
      end
      if ((@axial_shading_callback).nil?)
        @axial_shading_callback = Callback.new(self, "axialShadingProc", 3)
        @axial_shading_proc = @axial_shading_callback.get_address
        if ((@axial_shading_proc).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
      end
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
      synchronized((Device.class)) do
        if (is_disposed)
          return
        end
        check_device
        release
        destroy
        @disposed = true
        if (@tracking)
          synchronized((@tracking_lock)) do
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
    
    typesig { [::Java::Int, ::Java::Int] }
    def draw_pattern_proc(ref, context)
      object = OS._jniget_object(ref)
      if (object.is_a?(Pattern))
        return (object).draw_pattern_proc(ref, context)
      end
      return 0
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
      gdevice = OS._get_main_device
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      OS.memmove(ptr, gdevice, 4)
      device = GDevice.new
      OS.memmove(device, ptr[0], GDevice.attr_sizeof)
      return Rectangle.new(device.attr_left, device.attr_top, device.attr_right - device.attr_left, device.attr_bottom - device.attr_top)
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
      check_device
      gdevice = OS._get_main_device
      rect = Rect.new
      OS._get_available_window_positioning_bounds(gdevice, rect)
      return Rectangle.new(rect.attr_left, rect.attr_top, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top)
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
      gdevice = OS._get_main_device
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      OS.memmove(ptr, gdevice, 4)
      device = GDevice.new
      OS.memmove(device, ptr[0], GDevice.attr_sizeof)
      return OS._get_pix_depth(device.attr_gd_pmap)
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
      if (!scalable)
        return Array.typed(FontData).new(0) { nil }
      end
      count = 0
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      range = CFRange.new
      OS._atsuget_font_ids(nil, 0, buffer)
      fds = Array.typed(FontData).new(buffer[0]) { nil }
      status = OS._atsfont_iterator_create(OS.attr_k_atsfont_context_local, 0, 0, OS.attr_k_atsoption_flags_default_scope, buffer)
      iter = buffer[0]
      while ((status).equal?(OS.attr_no_err))
        status = OS._atsfont_iterator_next(iter, buffer)
        if ((status).equal?(OS.attr_no_err))
          font = buffer[0]
          if ((OS._atsfont_get_name(font, 0, buffer)).equal?(OS.attr_no_err))
            range.attr_length = OS._cfstring_get_length(buffer[0])
            chars = CharArray.new(range.attr_length)
            OS._cfstring_get_characters(buffer[0], range, chars)
            OS._cfrelease(buffer[0])
            ats_name = String.new(chars)
            platform_code = OS.attr_k_font_unicode_platform
            encoding = OS.attr_k_cfstring_encoding_unicode
            if (!(OS._atsufind_font_name(font, OS.attr_k_font_family_name, platform_code, OS.attr_k_font_no_script_code, OS.attr_k_font_no_language_code, 0, nil, buffer, nil)).equal?(OS.attr_no_err))
              platform_code = OS.attr_k_font_no_platform_code
              encoding = OS.attr_k_cfstring_encoding_mac_roman
              if (!(OS._atsufind_font_name(font, OS.attr_k_font_family_name, platform_code, OS.attr_k_font_no_script_code, OS.attr_k_font_no_language_code, 0, nil, buffer, nil)).equal?(OS.attr_no_err))
                next
              end
            end
            bytes = Array.typed(::Java::Byte).new(buffer[0]) { 0 }
            OS._atsufind_font_name(font, OS.attr_k_font_family_name, platform_code, OS.attr_k_font_no_script_code, OS.attr_k_font_no_language_code, bytes.attr_length, bytes, buffer, nil)
            ptr = OS._cfstring_create_with_bytes(0, bytes, bytes.attr_length, encoding, false)
            if (!(ptr).equal?(0))
              range.attr_length = OS._cfstring_get_length(ptr)
              if (!(range.attr_length).equal?(0))
                chars = CharArray.new(range.attr_length)
                OS._cfstring_get_characters(ptr, range, chars)
                name = String.new(chars)
                if (!name.starts_with("."))
                  if ((face_name).nil? || Compatibility.equals_ignore_case(face_name, name))
                    s = SWT::NORMAL
                    if (!(ats_name.index_of("Italic")).equal?(-1))
                      s |= SWT::ITALIC
                    end
                    if (!(ats_name.index_of("Bold")).equal?(-1))
                      s |= SWT::BOLD
                    end
                    data = FontData.new(name, 0, s)
                    data.attr_ats_name = ats_name
                    if ((count).equal?(fds.attr_length))
                      new_fds = Array.typed(FontData).new(count + 4) { nil }
                      System.arraycopy(fds, 0, new_fds, 0, count)
                      fds = new_fds
                    end
                    fds[((count += 1) - 1)] = data
                  end
                end
              end
              OS._cfrelease(ptr)
            end
          end
        end
      end
      if (!(iter).equal?(0))
        buffer[0] = iter
        OS._atsfont_iterator_release(buffer)
      end
      if ((count).equal?(fds.attr_length))
        return fds
      end
      result = Array.typed(FontData).new(count) { nil }
      System.arraycopy(fds, 0, result, 0, count)
      return result
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
      case (id)
      when SWT::COLOR_BLACK
        return @color_black
      when SWT::COLOR_DARK_RED
        return @color_dark_red
      when SWT::COLOR_DARK_GREEN
        return @color_dark_green
      when SWT::COLOR_DARK_YELLOW
        return @color_dark_yellow
      when SWT::COLOR_DARK_BLUE
        return @color_dark_blue
      when SWT::COLOR_DARK_MAGENTA
        return @color_dark_magenta
      when SWT::COLOR_DARK_CYAN
        return @color_dark_cyan
      when SWT::COLOR_GRAY
        return @color_gray
      when SWT::COLOR_DARK_GRAY
        return @color_dark_gray
      when SWT::COLOR_RED
        return @color_red
      when SWT::COLOR_GREEN
        return @color_green
      when SWT::COLOR_YELLOW
        return @color_yellow
      when SWT::COLOR_BLUE
        return @color_blue
      when SWT::COLOR_MAGENTA
        return @color_magenta
      when SWT::COLOR_CYAN
        return @color_cyan
      when SWT::COLOR_WHITE
        return @color_white
      end
      return @color_black
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
      return @system_font
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
      return @warnings
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
      @colorspace = OS._cgcolor_space_create_device_rgb
      if ((@colorspace).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      @release_callback = Callback.new(self, "releaseProc", 3)
      @release_proc = @release_callback.get_address
      if ((@release_proc).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      # Create the standard colors
      @color_black = Color.new(self, 0, 0, 0)
      @color_dark_red = Color.new(self, 0x80, 0, 0)
      @color_dark_green = Color.new(self, 0, 0x80, 0)
      @color_dark_yellow = Color.new(self, 0x80, 0x80, 0)
      @color_dark_blue = Color.new(self, 0, 0, 0x80)
      @color_dark_magenta = Color.new(self, 0x80, 0, 0x80)
      @color_dark_cyan = Color.new(self, 0, 0x80, 0x80)
      @color_gray = Color.new(self, 0xc0, 0xc0, 0xc0)
      @color_dark_gray = Color.new(self, 0x80, 0x80, 0x80)
      @color_red = Color.new(self, 0xff, 0, 0)
      @color_green = Color.new(self, 0, 0xff, 0)
      @color_yellow = Color.new(self, 0xff, 0xff, 0)
      @color_blue = Color.new(self, 0, 0, 0xff)
      @color_magenta = Color.new(self, 0xff, 0, 0xff)
      @color_cyan = Color.new(self, 0, 0xff, 0xff)
      @color_white = Color.new(self, 0xff, 0xff, 0xff)
      # Initialize the system font slot
      # TEMPORARY CODE
      small_fonts = !(System.get_property("org.eclipse.swt.internal.carbon.smallFonts")).nil?
      family = Array.typed(::Java::Byte).new(256) { 0 }
      size = Array.typed(::Java::Short).new(1) { 0 }
      style = Array.typed(::Java::Byte).new(1) { 0 }
      theme_font = small_fonts ? OS.attr_k_theme_small_system_font : OS.attr_k_theme_system_font
      OS._get_theme_font(RJava.cast_to_short(theme_font), RJava.cast_to_short(OS.attr_sm_system_script), family, size, style)
      id = OS._fmget_font_family_from_name(family)
      font = Array.typed(::Java::Int).new(1) { 0 }
      OS._fmget_font_from_font_family_instance(id, style[0], font, nil)
      @system_font = Font.carbon_new(self, OS._fmget_atsfont_ref_from_font(font[0]), style[0], size[0])
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
    def internal_dispose__gc(handle, data)
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
      synchronized((Device.class)) do
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
      result = false
      chars = CharArray.new(path.length)
      path.get_chars(0, chars.attr_length, chars, 0)
      str = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, chars, chars.attr_length)
      if (!(str).equal?(0))
        url = OS._cfurlcreate_with_file_system_path(OS.attr_k_cfallocator_default, str, OS.attr_k_cfurlposixpath_style, false)
        if (!(url).equal?(0))
          fs_ref = Array.typed(::Java::Byte).new(80) { 0 }
          if (OS._cfurlget_fsref(url, fs_ref))
            fs_spec = Array.typed(::Java::Byte).new(70) { 0 }
            if ((OS._fsget_catalog_info(fs_ref, 0, nil, nil, fs_spec, nil)).equal?(OS.attr_no_err))
              container = Array.typed(::Java::Int).new(1) { 0 }
              result = (OS._atsfont_activate_from_file_specification(fs_spec, OS.attr_k_atsfont_context_local, OS.attr_k_atsfont_format_unspecified, 0, OS.attr_k_atsoption_flags_default, container)).equal?(OS.attr_no_err)
            end
          end
          OS._cfrelease(url)
        end
        OS._cfrelease(str)
      end
      return result
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
      if (!(@release_callback).nil?)
        @release_callback.dispose
      end
      if (!(@draw_pattern_callback).nil?)
        @draw_pattern_callback.dispose
      end
      if (!(@axial_shading_callback).nil?)
        @axial_shading_callback.dispose
      end
      @release_callback = @axial_shading_callback = @draw_pattern_callback = nil
      @release_proc = @axial_shading_proc = @draw_pattern_proc = 0
      OS._cgcolor_space_release(@colorspace)
      @colorspace = 0
      @color_black = @color_dark_red = @color_dark_green = @color_dark_yellow = @color_dark_blue = @color_dark_magenta = @color_dark_cyan = @color_gray = @color_dark_gray = @color_red = @color_green = @color_yellow = @color_blue = @color_magenta = @color_cyan = @color_white = nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def release_proc(info, data, size)
      OS._dispose_ptr(data)
      return 0
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
      @warnings = warnings
    end
    
    private
    alias_method :initialize__device, :initialize
  end
  
end
