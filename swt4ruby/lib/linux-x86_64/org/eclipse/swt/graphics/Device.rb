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
  module DeviceImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
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
    
    # the handle to the X Display
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked protected only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    # 
    # int
    attr_accessor :x_display
    alias_method :attr_x_display, :x_display
    undef_method :x_display
    alias_method :attr_x_display=, :x_display=
    undef_method :x_display=
    
    # int
    attr_accessor :shell_handle
    alias_method :attr_shell_handle, :shell_handle
    undef_method :shell_handle
    alias_method :attr_shell_handle=, :shell_handle=
    undef_method :shell_handle=
    
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
    
    # Colormap and reference count
    attr_accessor :gdk_colors
    alias_method :attr_gdk_colors, :gdk_colors
    undef_method :gdk_colors
    alias_method :attr_gdk_colors=, :gdk_colors=
    undef_method :gdk_colors=
    
    attr_accessor :color_ref_count
    alias_method :attr_color_ref_count, :color_ref_count
    undef_method :color_ref_count
    alias_method :attr_color_ref_count=, :color_ref_count=
    undef_method :color_ref_count=
    
    # Disposed flag
    attr_accessor :disposed
    alias_method :attr_disposed, :disposed
    undef_method :disposed
    alias_method :attr_disposed=, :disposed=
    undef_method :disposed=
    
    # Warning and Error Handlers
    # int
    attr_accessor :log_proc
    alias_method :attr_log_proc, :log_proc
    undef_method :log_proc
    alias_method :attr_log_proc=, :log_proc=
    undef_method :log_proc=
    
    attr_accessor :log_callback
    alias_method :attr_log_callback, :log_callback
    undef_method :log_callback
    alias_method :attr_log_callback=, :log_callback=
    undef_method :log_callback=
    
    # NOT DONE - get list of valid names
    attr_accessor :log_domains
    alias_method :attr_log_domains, :log_domains
    undef_method :log_domains
    alias_method :attr_log_domains=, :log_domains=
    undef_method :log_domains=
    
    attr_accessor :handler_ids
    alias_method :attr_handler_ids, :handler_ids
    undef_method :handler_ids
    alias_method :attr_handler_ids=, :handler_ids=
    undef_method :handler_ids=
    
    attr_accessor :warning_level
    alias_method :attr_warning_level, :warning_level
    undef_method :warning_level
    alias_method :attr_warning_level=, :warning_level=
    undef_method :warning_level=
    
    class_module.module_eval {
      # X Warning and Error Handlers
      
      def xerror_callback
        defined?(@@xerror_callback) ? @@xerror_callback : @@xerror_callback= nil
      end
      alias_method :attr_xerror_callback, :xerror_callback
      
      def xerror_callback=(value)
        @@xerror_callback = value
      end
      alias_method :attr_xerror_callback=, :xerror_callback=
      
      
      def xioerror_callback
        defined?(@@xioerror_callback) ? @@xioerror_callback : @@xioerror_callback= nil
      end
      alias_method :attr_xioerror_callback, :xioerror_callback
      
      def xioerror_callback=(value)
        @@xioerror_callback = value
      end
      alias_method :attr_xioerror_callback=, :xioerror_callback=
      
      # int
      
      def xerror_proc
        defined?(@@xerror_proc) ? @@xerror_proc : @@xerror_proc= 0
      end
      alias_method :attr_xerror_proc, :xerror_proc
      
      def xerror_proc=(value)
        @@xerror_proc = value
      end
      alias_method :attr_xerror_proc=, :xerror_proc=
      
      
      def xioerror_proc
        defined?(@@xioerror_proc) ? @@xioerror_proc : @@xioerror_proc= 0
      end
      alias_method :attr_xioerror_proc, :xioerror_proc
      
      def xioerror_proc=(value)
        @@xioerror_proc = value
      end
      alias_method :attr_xioerror_proc=, :xioerror_proc=
      
      
      def xnull_error_proc
        defined?(@@xnull_error_proc) ? @@xnull_error_proc : @@xnull_error_proc= 0
      end
      alias_method :attr_xnull_error_proc, :xnull_error_proc
      
      def xnull_error_proc=(value)
        @@xnull_error_proc = value
      end
      alias_method :attr_xnull_error_proc=, :xnull_error_proc=
      
      
      def xnull_ioerror_proc
        defined?(@@xnull_ioerror_proc) ? @@xnull_ioerror_proc : @@xnull_ioerror_proc= 0
      end
      alias_method :attr_xnull_ioerror_proc, :xnull_ioerror_proc
      
      def xnull_ioerror_proc=(value)
        @@xnull_ioerror_proc = value
      end
      alias_method :attr_xnull_ioerror_proc=, :xnull_ioerror_proc=
      
      
      def devices
        defined?(@@devices) ? @@devices : @@devices= Array.typed(Device).new(4) { nil }
      end
      alias_method :attr_devices, :devices
      
      def devices=(value)
        @@devices = value
      end
      alias_method :attr_devices=, :devices=
    }
    
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
    
    # int
    attr_accessor :empty_tab
    alias_method :attr_empty_tab, :empty_tab
    undef_method :empty_tab
    alias_method :attr_empty_tab=, :empty_tab=
    undef_method :empty_tab=
    
    attr_accessor :use_xrender
    alias_method :attr_use_xrender, :use_xrender
    undef_method :use_xrender
    alias_method :attr_use_xrender=, :use_xrender=
    undef_method :use_xrender=
    
    class_module.module_eval {
      
      def cairo_loaded
        defined?(@@cairo_loaded) ? @@cairo_loaded : @@cairo_loaded= false
      end
      alias_method :attr_cairo_loaded, :cairo_loaded
      
      def cairo_loaded=(value)
        @@cairo_loaded = value
      end
      alias_method :attr_cairo_loaded=, :cairo_loaded=
      
      # TEMPORARY CODE. When a graphics object is
      # created and the device parameter is null,
      # the current Display is used. This presents
      # a problem because SWT graphics does not
      # reference classes in SWT widgets. The correct
      # fix is to remove this feature. Unfortunately,
      # too many application programs rely on this
      # feature.
      
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
        rescue ClassNotFoundException => e
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
      @x_display = 0
      @shell_handle = 0
      @debug = self.attr_debug
      @tracking = self.attr_debug
      @errors = nil
      @objects = nil
      @tracking_lock = nil
      @gdk_colors = nil
      @color_ref_count = nil
      @disposed = false
      @log_proc = 0
      @log_callback = nil
      @log_domains = Array.typed(String).new(["GLib-GObject", "GLib", "GObject", "Pango", "ATK", "GdkPixbuf", "Gdk", "Gtk", "GnomeVFS"])
      @handler_ids = Array.typed(::Java::Int).new(@log_domains.attr_length) { 0 }
      @warning_level = 0
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
      @empty_tab = 0
      @use_xrender = false
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
        register(self)
      end
    end
    
    typesig { [] }
    def check_cairo
      if (self.attr_cairo_loaded)
        return
      end
      begin
        # Check if cairo is available on the system
        buffer = Converter.wcs_to_mbcs(nil, "libcairo.so.2", true)
        # int
        libcairo = OS.dlopen(buffer, OS::RTLD_LAZY)
        if (!(libcairo).equal?(0))
          OS.dlclose(libcairo)
        else
          begin
            System.load_library("cairo-swt")
          rescue UnsatisfiedLinkError => e
            # Ignore problems loading the fallback library
          end
        end
        Class.for_name("org.eclipse.swt.internal.cairo.Cairo")
        self.attr_cairo_loaded = true
      rescue JavaThrowable => t
        SWT.error(SWT::ERROR_NO_GRAPHICS_LIBRARY, t, " [Cairo is required]")
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
        deregister(self)
        @x_display = 0
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
    
    class_module.module_eval {
      typesig { [::Java::Long] }
      # int
      def find_device(x_display)
        synchronized(self) do
          i = 0
          while i < self.attr_devices.attr_length
            device = self.attr_devices[i]
            if (!(device).nil? && (device.attr_x_display).equal?(x_display))
              return device
            end
            i += 1
          end
          return nil
        end
      end
      
      typesig { [Device] }
      def deregister(device)
        synchronized(self) do
          i = 0
          while i < self.attr_devices.attr_length
            if ((device).equal?(self.attr_devices[i]))
              self.attr_devices[i] = nil
            end
            i += 1
          end
        end
      end
    }
    
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
    # Returns a rectangle describing the receiver's size and location.
    # 
    # @return the bounding rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_bounds
      check_device
      return Rectangle.new(0, 0, 0, 0)
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
      return 0
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
      return Point.new(72, 72)
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
      # int
      # int
      family = Array.typed(::Java::Long).new(1) { 0 }
      # int
      # int
      face = Array.typed(::Java::Long).new(1) { 0 }
      # int
      # int
      families = Array.typed(::Java::Long).new(1) { 0 }
      n_families = Array.typed(::Java::Int).new(1) { 0 }
      # int
      # int
      faces = Array.typed(::Java::Long).new(1) { 0 }
      n_faces = Array.typed(::Java::Int).new(1) { 0 }
      # int
      context = OS.gdk_pango_context_get
      OS.pango_context_list_families(context, families, n_families)
      n_fds = 0
      fds = Array.typed(FontData).new(!(face_name).nil? ? 4 : n_families[0]) { nil }
      i = 0
      while i < n_families[0]
        OS.memmove___org_eclipse_swt_graphics_device_1(family, families[0] + i * OS::PTR_SIZEOF, OS::PTR_SIZEOF)
        match = true
        if (!(face_name).nil?)
          # int
          family_name = OS.pango_font_family_get_name(family[0])
          length = OS.strlen(family_name)
          buffer = Array.typed(::Java::Byte).new(length) { 0 }
          OS.memmove___org_eclipse_swt_graphics_device_3(buffer, family_name, length)
          name = String.new(Converter.mbcs_to_wcs(nil, buffer))
          match = Compatibility.equals_ignore_case(face_name, name)
        end
        if (match)
          OS.pango_font_family_list_faces(family[0], faces, n_faces)
          j = 0
          while j < n_faces[0]
            OS.memmove___org_eclipse_swt_graphics_device_5(face, faces[0] + j * OS::PTR_SIZEOF, OS::PTR_SIZEOF)
            # int
            font_desc = OS.pango_font_face_describe(face[0])
            font = Font.gtk_new(self, font_desc)
            data = font.get_font_data[0]
            if ((n_fds).equal?(fds.attr_length))
              new_fds = Array.typed(FontData).new(fds.attr_length + n_families[0]) { nil }
              System.arraycopy(fds, 0, new_fds, 0, n_fds)
              fds = new_fds
            end
            fds[((n_fds += 1) - 1)] = data
            OS.pango_font_description_free(font_desc)
            j += 1
          end
          OS.g_free(faces[0])
          if (!(face_name).nil?)
            break
          end
        end
        i += 1
      end
      OS.g_free(families[0])
      OS.g_object_unref(context)
      if ((n_fds).equal?(fds.attr_length))
        return fds
      end
      result = Array.typed(FontData).new(n_fds) { nil }
      System.arraycopy(fds, 0, result, 0, n_fds)
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
      when SWT.attr_color_black
        return @color_black
      when SWT.attr_color_dark_red
        return @color_dark_red
      when SWT.attr_color_dark_green
        return @color_dark_green
      when SWT.attr_color_dark_yellow
        return @color_dark_yellow
      when SWT.attr_color_dark_blue
        return @color_dark_blue
      when SWT.attr_color_dark_magenta
        return @color_dark_magenta
      when SWT.attr_color_dark_cyan
        return @color_dark_cyan
      when SWT.attr_color_gray
        return @color_gray
      when SWT.attr_color_dark_gray
        return @color_dark_gray
      when SWT.attr_color_red
        return @color_red
      when SWT.attr_color_green
        return @color_green
      when SWT.attr_color_yellow
        return @color_yellow
      when SWT.attr_color_blue
        return @color_blue
      when SWT.attr_color_magenta
        return @color_magenta
      when SWT.attr_color_cyan
        return @color_cyan
      when SWT.attr_color_white
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
      return (@warning_level).equal?(0)
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
      if (!(@x_display).equal?(0))
        event_basep = Array.typed(::Java::Int).new(1) { 0 }
        error_basep = Array.typed(::Java::Int).new(1) { 0 }
        if (OS._xrender_query_extension(@x_display, event_basep, error_basep))
          major_versionp = Array.typed(::Java::Int).new(1) { 0 }
          minor_versionp = Array.typed(::Java::Int).new(1) { 0 }
          OS._xrender_query_version(@x_display, major_versionp, minor_versionp)
          @use_xrender = major_versionp[0] > 0 || ((major_versionp[0]).equal?(0) && minor_versionp[0] >= 8)
        end
      end
      if (@debug)
        if (!(@x_display).equal?(0))
          # Create the warning and error callbacks
          clazz = get_class
          synchronized((clazz)) do
            index = 0
            while (index < self.attr_devices.attr_length)
              if (!(self.attr_devices[index]).nil?)
                break
              end
              index += 1
            end
            if ((index).equal?(self.attr_devices.attr_length))
              self.attr_xerror_callback = Callback.new(clazz, "XErrorProc", 2)
              self.attr_xnull_error_proc = self.attr_xerror_callback.get_address
              if ((self.attr_xnull_error_proc).equal?(0))
                SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
              end
              self.attr_xioerror_callback = Callback.new(clazz, "XIOErrorProc", 1)
              self.attr_xnull_ioerror_proc = self.attr_xioerror_callback.get_address
              if ((self.attr_xnull_ioerror_proc).equal?(0))
                SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
              end
              self.attr_xerror_proc = OS._xset_error_handler(self.attr_xnull_error_proc)
              self.attr_xioerror_proc = OS._xset_ioerror_handler(self.attr_xnull_ioerror_proc)
            end
          end
          OS._xsynchronize(@x_display, true)
        end
      end
      # Create GTK warnings and error callbacks
      if (!(@x_display).equal?(0))
        @log_callback = Callback.new(self, "logProc", 4)
        @log_proc = @log_callback.get_address
        if ((@log_proc).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        # Set GTK warning and error handlers
        if (@debug)
          flags = OS::G_LOG_LEVEL_MASK | OS::G_LOG_FLAG_FATAL | OS::G_LOG_FLAG_RECURSION
          i = 0
          while i < @log_domains.attr_length
            log_domain = Converter.wcs_to_mbcs(nil, @log_domains[i], true)
            @handler_ids[i] = OS.g_log_set_handler(log_domain, flags, @log_proc, 0)
            i += 1
          end
        end
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
      @empty_tab = OS.pango_tab_array_new(1, false)
      if ((@empty_tab).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS.pango_tab_array_set_tab(@empty_tab, 0, OS::PANGO_TAB_LEFT, 1)
      @shell_handle = OS.gtk_window_new(OS::GTK_WINDOW_TOPLEVEL)
      if ((@shell_handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_widget_realize(@shell_handle)
      # Initialize the system font slot
      @system_font = get_system_font
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
    # int
    def internal_new__gc(data)
      raise NotImplementedError
    end
    
    typesig { [::Java::Long, SwtGCData] }
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
    # int
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
      buffer = Converter.wcs_to_mbcs(nil, path, true)
      return OS._fc_config_app_font_add_file(0, buffer)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    # int
    def log_proc(log_domain, log_level, message, user_data)
      if ((@warning_level).equal?(0))
        if (self.attr_debug || @debug)
          JavaError.new.print_stack_trace
        end
        # 64
        OS.g_log_default_handler(log_domain, RJava.cast_to_int(log_level), message, 0)
      end
      return 0
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
    
    class_module.module_eval {
      typesig { [Device] }
      def register(device)
        synchronized(self) do
          i = 0
          while i < self.attr_devices.attr_length
            if ((self.attr_devices[i]).nil?)
              self.attr_devices[i] = device
              return
            end
            i += 1
          end
          new_devices = Array.typed(Device).new(self.attr_devices.attr_length + 4) { nil }
          System.arraycopy(self.attr_devices, 0, new_devices, 0, self.attr_devices.attr_length)
          new_devices[self.attr_devices.attr_length] = device
          self.attr_devices = new_devices
        end
      end
    }
    
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
      if (!(@shell_handle).equal?(0))
        OS.gtk_widget_destroy(@shell_handle)
      end
      @shell_handle = 0
      if (!(@gdk_colors).nil?)
        # int
        colormap = OS.gdk_colormap_get_system
        i = 0
        while i < @gdk_colors.attr_length
          color = @gdk_colors[i]
          if (!(color).nil?)
            while (@color_ref_count[i] > 0)
              OS.gdk_colormap_free_colors(colormap, color, 1)
              (@color_ref_count[i] -= 1)
            end
          end
          i += 1
        end
      end
      @gdk_colors = nil
      @color_ref_count = nil
      if (!(@color_black).nil?)
        @color_black.dispose
      end
      if (!(@color_dark_red).nil?)
        @color_dark_red.dispose
      end
      if (!(@color_dark_green).nil?)
        @color_dark_green.dispose
      end
      if (!(@color_dark_yellow).nil?)
        @color_dark_yellow.dispose
      end
      if (!(@color_dark_blue).nil?)
        @color_dark_blue.dispose
      end
      if (!(@color_dark_magenta).nil?)
        @color_dark_magenta.dispose
      end
      if (!(@color_dark_cyan).nil?)
        @color_dark_cyan.dispose
      end
      if (!(@color_gray).nil?)
        @color_gray.dispose
      end
      if (!(@color_dark_gray).nil?)
        @color_dark_gray.dispose
      end
      if (!(@color_red).nil?)
        @color_red.dispose
      end
      if (!(@color_green).nil?)
        @color_green.dispose
      end
      if (!(@color_yellow).nil?)
        @color_yellow.dispose
      end
      if (!(@color_blue).nil?)
        @color_blue.dispose
      end
      if (!(@color_magenta).nil?)
        @color_magenta.dispose
      end
      if (!(@color_cyan).nil?)
        @color_cyan.dispose
      end
      if (!(@color_white).nil?)
        @color_white.dispose
      end
      @color_black = @color_dark_red = @color_dark_green = @color_dark_yellow = @color_dark_blue = @color_dark_magenta = @color_dark_cyan = @color_gray = @color_dark_gray = @color_red = @color_green = @color_yellow = @color_blue = @color_magenta = @color_cyan = @color_white = nil
      if (!(@empty_tab).equal?(0))
        OS.pango_tab_array_free(@empty_tab)
      end
      @empty_tab = 0
      # Free the GTK error and warning handler
      if (!(@x_display).equal?(0))
        i = 0
        while i < @handler_ids.attr_length
          if (!(@handler_ids[i]).equal?(0))
            log_domain = Converter.wcs_to_mbcs(nil, @log_domains[i], true)
            OS.g_log_remove_handler(log_domain, @handler_ids[i])
            @handler_ids[i] = 0
          end
          i += 1
        end
        @log_callback.dispose
        @log_callback = nil
        @handler_ids = nil
        @log_domains = nil
        @log_proc = 0
      end
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
      if (warnings)
        if (((@warning_level -= 1)).equal?(0))
          if (@debug)
            return
          end
          if (!(@log_proc).equal?(0))
            i = 0
            while i < @handler_ids.attr_length
              if (!(@handler_ids[i]).equal?(0))
                log_domain = Converter.wcs_to_mbcs(nil, @log_domains[i], true)
                OS.g_log_remove_handler(log_domain, @handler_ids[i])
                @handler_ids[i] = 0
              end
              i += 1
            end
          end
        end
      else
        if ((((@warning_level += 1) - 1)).equal?(0))
          if (@debug)
            return
          end
          if (!(@log_proc).equal?(0))
            flags = OS::G_LOG_LEVEL_MASK | OS::G_LOG_FLAG_FATAL | OS::G_LOG_FLAG_RECURSION
            i = 0
            while i < @log_domains.attr_length
              log_domain = Converter.wcs_to_mbcs(nil, @log_domains[i], true)
              @handler_ids[i] = OS.g_log_set_handler(log_domain, flags, @log_proc, 0)
              i += 1
            end
          end
        end
      end
    end
    
    class_module.module_eval {
      typesig { [::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      def _xerror_proc(x_display, x_error_event)
        device = find_device(x_display)
        if (!(device).nil?)
          if ((device.attr_warning_level).equal?(0))
            if (self.attr_debug || device.attr_debug)
              SWTError.new.print_stack_trace
            end
            OS._call___org_eclipse_swt_graphics_device_7(self.attr_xerror_proc, x_display, x_error_event)
          end
        else
          if (self.attr_debug)
            SWTError.new.print_stack_trace
          end
          OS._call___org_eclipse_swt_graphics_device_9(self.attr_xerror_proc, x_display, x_error_event)
        end
        return 0
      end
      
      typesig { [::Java::Long] }
      # int
      # int
      def _xioerror_proc(x_display)
        device = find_device(x_display)
        if (!(device).nil?)
          if (self.attr_debug || device.attr_debug)
            SWTError.new.print_stack_trace
          end
        else
          if (self.attr_debug)
            SWTError.new.print_stack_trace
          end
        end
        OS._call___org_eclipse_swt_graphics_device_11(self.attr_xioerror_proc, x_display, 0)
        return 0
      end
    }
    
    private
    alias_method :initialize__device, :initialize
  end
  
end
