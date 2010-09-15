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
      include_const ::Org::Eclipse::Swt::Internal, :Compatibility
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
    
    attr_accessor :paragraph_style
    alias_method :attr_paragraph_style, :paragraph_style
    undef_method :paragraph_style
    alias_method :attr_paragraph_style=, :paragraph_style=
    undef_method :paragraph_style=
    
    # Device DPI
    attr_accessor :dpi
    alias_method :attr_dpi, :dpi
    undef_method :dpi
    alias_method :attr_dpi=, :dpi=
    undef_method :dpi=
    
    class_module.module_eval {
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
      @debug = self.attr_debug
      @tracking = self.attr_debug
      @errors = nil
      @objects = nil
      @tracking_lock = nil
      @disposed = false
      @warnings = false
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
      @paragraph_style = nil
      @dpi = nil
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
        if (NSThread.is_main_thread)
          pool = NSAutoreleasePool.new.alloc.init
          nsthread = NSThread.current_thread
          dictionary = nsthread.thread_dictionary
          key = NSString.string_with("SWT_NSAutoreleasePool")
          obj = dictionary.object_for_key(key)
          if ((obj).nil?)
            nsnumber = NSNumber.number_with_integer(pool.attr_id)
            dictionary.set_object(nsnumber, key)
          else
            pool.release
          end
        end
        # check and create pool
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
      frame = get_primary_screen.frame
      return Rectangle.new(RJava.cast_to_int(frame.attr_x), RJava.cast_to_int(frame.attr_y), RJava.cast_to_int(frame.attr_width), RJava.cast_to_int(frame.attr_height))
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
      # 64
      return RJava.cast_to_int(OS._nsbits_per_pixel_from_depth(get_primary_screen.depth))
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
      return get_screen_dpi
    end
    
    typesig { [] }
    def get_primary_screen
      screens_ = NSScreen.screens
      return NSScreen.new(screens_.object_at_index(0))
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
      families = NSFontManager.shared_font_manager.available_font_families
      # long
      family_count = families.count
      fds = Array.typed(FontData).new(100) { nil }
      i = 0
      while i < family_count
        ns_family = NSString.new(families.object_at_index(i))
        name = ns_family.get_string
        fonts = NSFontManager.shared_font_manager.available_members_of_font_family(ns_family)
        # 64
        font_count = RJava.cast_to_int(fonts.count)
        j = 0
        while j < font_count
          font_details = NSArray.new(fonts.object_at_index(j))
          ns_name = NSString.new(font_details.object_at_index(0)).get_string
          # long
          weight = NSNumber.new(font_details.object_at_index(2)).integer_value
          # long
          traits = NSNumber.new(font_details.object_at_index(3)).integer_value
          style = SWT::NORMAL
          if (!((traits & OS::NSItalicFontMask)).equal?(0))
            style |= SWT::ITALIC
          end
          if ((weight).equal?(9))
            style |= SWT::BOLD
          end
          if ((face_name).nil? || Compatibility.equals_ignore_case(face_name, name))
            data = FontData.new(name, 0, style)
            data.attr_ns_name = ns_name
            if ((count).equal?(fds.attr_length))
              new_fds = Array.typed(FontData).new(fds.attr_length + 100) { nil }
              System.arraycopy(fds, 0, new_fds, 0, fds.attr_length)
              fds = new_fds
            end
            fds[((count += 1) - 1)] = data
          end
          j += 1
        end
        i += 1
      end
      if ((count).equal?(fds.attr_length))
        return fds
      end
      result = Array.typed(FontData).new(count) { nil }
      System.arraycopy(fds, 0, result, 0, count)
      return result
    end
    
    typesig { [] }
    def get_screen_dpi
      dictionary = get_primary_screen.device_description
      value = NSValue.new(dictionary.object_for_key(Id.new(OS._nsdevice_resolution)).attr_id)
      size = value.size_value
      return Point.new(RJava.cast_to_int(size.attr_width), RJava.cast_to_int(size.attr_height))
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
      @paragraph_style = NSMutableParagraphStyle.new.alloc.init
      @paragraph_style.set_alignment(OS::NSLeftTextAlignment)
      @paragraph_style.set_line_break_mode(OS::NSLineBreakByClipping)
      tabs = NSArray.new(NSArray.new.alloc.init)
      @paragraph_style.set_tab_stops(tabs)
      tabs.release
      # Initialize the system font slot
      small_fonts = !(System.get_property("org.eclipse.swt.internal.carbon.smallFonts")).nil?
      # double
      system_font_size_ = small_fonts ? NSFont.small_system_font_size : NSFont.system_font_size
      dpi = @dpi = get_dpi
      screen_dpi = get_screen_dpi
      font = NSFont.system_font_of_size(system_font_size_ * dpi.attr_y / screen_dpi.attr_y)
      font.retain
      @system_font = Font.cocoa_new(self, font)
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
      result = false
      ns_path = NSString.string_with(path)
      # long
      fs_representation = ns_path.file_system_representation
      if (!(fs_representation).equal?(0))
        fs_ref = Array.typed(::Java::Byte).new(80) { 0 }
        is_directory = Array.typed(::Java::Boolean).new(1) { false }
        if ((OS._fspath_make_ref(fs_representation, fs_ref, is_directory)).equal?(OS.attr_no_err))
          result = (OS._atsfont_activate_from_file_reference(fs_ref, OS.attr_k_atsfont_context_local, OS.attr_k_atsfont_format_unspecified, 0, OS.attr_k_atsoption_flags_default, nil)).equal?(OS.attr_no_err)
        end
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
              System.out.println(string)
            end
            i_ = 0
            while i_ < @errors.attr_length
              if (!(@errors[i_]).nil?)
                @errors[i_].print_stack_trace(System.out)
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
      if (!(@paragraph_style).nil?)
        @paragraph_style.release
      end
      @paragraph_style = nil
      if (!(@system_font).nil?)
        @system_font.dispose
      end
      @system_font = nil
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
