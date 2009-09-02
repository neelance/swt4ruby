require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Printing
  module PrinterImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Printing
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal, :Callback
      include_const ::Org::Eclipse::Swt::Internal, :Converter
      include_const ::Org::Eclipse::Swt::Internal::Gtk, :GdkVisual
      include_const ::Org::Eclipse::Swt::Internal::Gtk, :OS
      include_const ::Org::Eclipse::Swt::Internal::Cairo, :Cairo
      include_const ::Org::Eclipse::Swt::Printing, :PrinterData
    }
  end
  
  # Instances of this class are used to print to a printer.
  # Applications create a GC on a printer using <code>new GC(printer)</code>
  # and then draw on the printer GC using the usual graphics calls.
  # <p>
  # A <code>Printer</code> object may be constructed by providing
  # a <code>PrinterData</code> object which identifies the printer.
  # A <code>PrintDialog</code> presents a print dialog to the user
  # and returns an initialized instance of <code>PrinterData</code>.
  # Alternatively, calling <code>new Printer()</code> will construct a
  # printer object for the user's default printer.
  # </p><p>
  # Application code must explicitly invoke the <code>Printer.dispose()</code>
  # method to release the operating system resources managed by each instance
  # when those instances are no longer required.
  # </p>
  # 
  # @see PrinterData
  # @see PrintDialog
  # @see <a href="http://www.eclipse.org/swt/snippets/#printing">Printing snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Printer < PrinterImports.const_get :Device
    include_class_members PrinterImports
    
    class_module.module_eval {
      
      def printer_list
        defined?(@@printer_list) ? @@printer_list : @@printer_list= nil
      end
      alias_method :attr_printer_list, :printer_list
      
      def printer_list=(value)
        @@printer_list = value
      end
      alias_method :attr_printer_list=, :printer_list=
    }
    
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    # long
    attr_accessor :printer
    alias_method :attr_printer, :printer
    undef_method :printer
    alias_method :attr_printer=, :printer=
    undef_method :printer=
    
    # long
    attr_accessor :print_job
    alias_method :attr_print_job, :print_job
    undef_method :print_job
    alias_method :attr_print_job=, :print_job=
    undef_method :print_job=
    
    # long
    attr_accessor :settings
    alias_method :attr_settings, :settings
    undef_method :settings
    alias_method :attr_settings=, :settings=
    undef_method :settings=
    
    # long
    attr_accessor :page_setup
    alias_method :attr_page_setup, :page_setup
    undef_method :page_setup
    alias_method :attr_page_setup=, :page_setup=
    undef_method :page_setup=
    
    # long
    attr_accessor :surface
    alias_method :attr_surface, :surface
    undef_method :surface
    alias_method :attr_surface=, :surface=
    undef_method :surface=
    
    # long
    attr_accessor :cairo
    alias_method :attr_cairo, :cairo
    undef_method :cairo
    alias_method :attr_cairo=, :cairo=
    undef_method :cairo=
    
    # whether or not a GC was created for this printer
    attr_accessor :is_gccreated
    alias_method :attr_is_gccreated, :is_gccreated
    undef_method :is_gccreated
    alias_method :attr_is_gccreated=, :is_gccreated=
    undef_method :is_gccreated=
    
    attr_accessor :system_font
    alias_method :attr_system_font, :system_font
    undef_method :system_font
    alias_method :attr_system_font=, :system_font=
    undef_method :system_font=
    
    class_module.module_eval {
      
      def settings_data
        defined?(@@settings_data) ? @@settings_data : @@settings_data= nil
      end
      alias_method :attr_settings_data, :settings_data
      
      def settings_data=(value)
        @@settings_data = value
      end
      alias_method :attr_settings_data=, :settings_data=
      
      
      def start
        defined?(@@start) ? @@start : @@start= 0
      end
      alias_method :attr_start, :start
      
      def start=(value)
        @@start = value
      end
      alias_method :attr_start=, :start=
      
      
      def end
        defined?(@@end) ? @@end : @@end= 0
      end
      alias_method :attr_end, :end
      
      def end=(value)
        @@end = value
      end
      alias_method :attr_end=, :end=
      
      const_set_lazy(:GTK_LPR_BACKEND) { "GtkPrintBackendLpr" }
      const_attr_reader  :GTK_LPR_BACKEND
      
      # $NON-NLS-1$
      
      def disable_printing
        defined?(@@disable_printing) ? @@disable_printing : @@disable_printing= !(System.get_property("org.eclipse.swt.internal.gtk.disablePrinting")).nil?
      end
      alias_method :attr_disable_printing, :disable_printing
      
      def disable_printing=(value)
        @@disable_printing = value
      end
      alias_method :attr_disable_printing=, :disable_printing=
      
      typesig { [] }
      # $NON-NLS-1$
      # 
      # Returns an array of <code>PrinterData</code> objects
      # representing all available printers.  If there are no
      # printers, the array will be empty.
      # 
      # @return an array of PrinterData objects representing the available printers
      def get_printer_list
        self.attr_printer_list = Array.typed(PrinterData).new(0) { nil }
        if (OS::GTK_VERSION < OS._version(2, 10, 0) || self.attr_disable_printing)
          return self.attr_printer_list
        end
        if (!OS.g_thread_supported)
          OS.g_thread_init(0)
        end
        OS.gtk_set_locale
        # long
        if (!OS.gtk_init_check(Array.typed(::Java::Int).new([0]), nil))
          SWT.error(SWT::ERROR_NO_HANDLES, nil, " [gtk_init_check() failed]")
        end
        printer_callback = Callback.new(Printer, "GtkPrinterFunc_List", 2) # $NON-NLS-1$
        # long
        gtk_printer_func_list = printer_callback.get_address
        if ((gtk_printer_func_list).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        OS.gtk_enumerate_printers(gtk_printer_func_list, 0, 0, true)
        printer_callback.dispose
        return self.attr_printer_list
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _gtk_printer_func_list(printer, user_data)
        length = self.attr_printer_list.attr_length
        new_list = Array.typed(PrinterData).new(length + 1) { nil }
        System.arraycopy(self.attr_printer_list, 0, new_list, 0, length)
        self.attr_printer_list = new_list
        self.attr_printer_list[length] = printer_data_from_gtk_printer(printer)
        # Bug in GTK. While performing a gtk_enumerate_printers(), GTK finds all of the
        # available printers from each backend and can hang. If a backend requires more
        # time to gather printer info, GTK will start an event loop waiting for a done
        # signal before continuing. For the Lpr backend, GTK does not send a done signal
        # which means the event loop never ends. The fix is to check to see if the driver
        # is of type Lpr, and stop the enumeration, which exits the event loop.
        if ((self.attr_printer_list[length].attr_driver == GTK_LPR_BACKEND))
          return 1
        end
        return 0
      end
      
      typesig { [] }
      # Returns a <code>PrinterData</code> object representing
      # the default printer or <code>null</code> if there is no
      # default printer.
      # 
      # @return the default printer data or null
      # 
      # @since 2.1
      def get_default_printer_data
        self.attr_printer_list = Array.typed(PrinterData).new(1) { nil }
        if (OS::GTK_VERSION < OS._version(2, 10, 0) || self.attr_disable_printing)
          return nil
        end
        if (!OS.g_thread_supported)
          OS.g_thread_init(0)
        end
        OS.gtk_set_locale
        # long
        if (!OS.gtk_init_check(Array.typed(::Java::Int).new([0]), nil))
          SWT.error(SWT::ERROR_NO_HANDLES, nil, " [gtk_init_check() failed]")
        end
        printer_callback = Callback.new(Printer, "GtkPrinterFunc_Default", 2) # $NON-NLS-1$
        # long
        gtk_printer_func_default = printer_callback.get_address
        if ((gtk_printer_func_default).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        OS.gtk_enumerate_printers(gtk_printer_func_default, 0, 0, true)
        printer_callback.dispose
        return self.attr_printer_list[0]
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _gtk_printer_func_default(printer, user_data)
        if (OS.gtk_printer_is_default(printer))
          self.attr_printer_list[0] = printer_data_from_gtk_printer(printer)
          return 1
        else
          if (OS::GTK_VERSION < OS._version(2, 10, 12) && (printer_data_from_gtk_printer(printer).attr_driver == GTK_LPR_BACKEND))
            return 1
          end
        end
        return 0
      end
    }
    
    typesig { [] }
    # long
    def gtk_printer_from_printer_data
      printer_callback = Callback.new(self, "GtkPrinterFunc_FindNamedPrinter", 2) # $NON-NLS-1$
      # long
      gtk_printer_func_find_named_printer = printer_callback.get_address
      if ((gtk_printer_func_find_named_printer).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      @printer = 0
      OS.gtk_enumerate_printers(gtk_printer_func_find_named_printer, 0, 0, true)
      printer_callback.dispose
      return @printer
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def _gtk_printer_func_find_named_printer(printer, user_data)
      pd = printer_data_from_gtk_printer(printer)
      if ((pd.attr_driver == @data.attr_driver) && (pd.attr_name == @data.attr_name))
        @printer = printer
        OS.g_object_ref(printer)
        return 1
      else
        if (OS::GTK_VERSION < OS._version(2, 10, 12) && (pd.attr_driver == GTK_LPR_BACKEND))
          return 1
        end
      end
      return 0
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      # long
      def printer_data_from_gtk_printer(printer)
        # long
        backend = OS.gtk_printer_get_backend(printer)
        # long
        address = OS._g_object_type_name(backend)
        length = OS.strlen(address)
        buffer = Array.typed(::Java::Byte).new(length) { 0 }
        OS.memmove(buffer, address, length)
        backend_type = String.new(Converter.mbcs_to_wcs(nil, buffer))
        address = OS.gtk_printer_get_name(printer)
        length = OS.strlen(address)
        buffer = Array.typed(::Java::Byte).new(length) { 0 }
        OS.memmove(buffer, address, length)
        name = String.new(Converter.mbcs_to_wcs(nil, buffer))
        return PrinterData.new(backend_type, name)
      end
      
      typesig { [Array.typed(::Java::Byte), ::Java::Int, ::Java::Int] }
      # Restore printer settings and page_setup data from data.
      # 
      # long
      # long
      def restore(data, settings, page_setup)
        self.attr_settings_data = data
        self.attr_start = self.attr_end = 0
        while (self.attr_end < self.attr_settings_data.attr_length && !(self.attr_settings_data[self.attr_end]).equal?(0))
          self.attr_start = self.attr_end
          while (self.attr_end < self.attr_settings_data.attr_length && !(self.attr_settings_data[self.attr_end]).equal?(0))
            self.attr_end += 1
          end
          self.attr_end += 1
          key_buffer = Array.typed(::Java::Byte).new(self.attr_end - self.attr_start) { 0 }
          System.arraycopy(self.attr_settings_data, self.attr_start, key_buffer, 0, key_buffer.attr_length)
          self.attr_start = self.attr_end
          while (self.attr_end < self.attr_settings_data.attr_length && !(self.attr_settings_data[self.attr_end]).equal?(0))
            self.attr_end += 1
          end
          self.attr_end += 1
          value_buffer = Array.typed(::Java::Byte).new(self.attr_end - self.attr_start) { 0 }
          System.arraycopy(self.attr_settings_data, self.attr_start, value_buffer, 0, value_buffer.attr_length)
          OS.gtk_print_settings_set(settings, key_buffer, value_buffer)
          if (self.attr_debug)
            System.out.println(RJava.cast_to_string(String.new(Converter.mbcs_to_wcs(nil, key_buffer))) + ": " + RJava.cast_to_string(String.new(Converter.mbcs_to_wcs(nil, value_buffer))))
          end
        end
        self.attr_end += 1 # skip extra null terminator
        # Retrieve stored page_setup data.
        # Note that page_setup properties must be stored (in PrintDialog) and restored (here) in the same order.
        OS.gtk_page_setup_set_orientation(page_setup, restore_int("orientation")) # $NON-NLS-1$
        OS.gtk_page_setup_set_top_margin(page_setup, restore_double("top_margin"), OS::GTK_UNIT_MM) # $NON-NLS-1$
        OS.gtk_page_setup_set_bottom_margin(page_setup, restore_double("bottom_margin"), OS::GTK_UNIT_MM) # $NON-NLS-1$
        OS.gtk_page_setup_set_left_margin(page_setup, restore_double("left_margin"), OS::GTK_UNIT_MM) # $NON-NLS-1$
        OS.gtk_page_setup_set_right_margin(page_setup, restore_double("right_margin"), OS::GTK_UNIT_MM) # $NON-NLS-1$
        name = restore_bytes("paper_size_name", true) # $NON-NLS-1$
        display_name = restore_bytes("paper_size_display_name", true) # $NON-NLS-1$
        ppd_name = restore_bytes("paper_size_ppd_name", true) # $NON-NLS-1$
        width = restore_double("paper_size_width") # $NON-NLS-1$
        height = restore_double("paper_size_height") # $NON-NLS-1$
        custom = restore_boolean("paper_size_is_custom") # $NON-NLS-1$
        # long
        paper_size = 0
        if (custom)
          if (ppd_name.attr_length > 0)
            paper_size = OS.gtk_paper_size_new_from_ppd(ppd_name, display_name, width, height)
          else
            paper_size = OS.gtk_paper_size_new_custom(name, display_name, width, height, OS::GTK_UNIT_MM)
          end
        else
          paper_size = OS.gtk_paper_size_new(name)
        end
        OS.gtk_page_setup_set_paper_size(page_setup, paper_size)
        OS.gtk_paper_size_free(paper_size)
      end
      
      typesig { [PrinterData] }
      def check_null(data)
        if ((data).nil?)
          data = PrinterData.new
        end
        if ((data.attr_driver).nil? || (data.attr_name).nil?)
          default_printer = get_default_printer_data
          if ((default_printer).nil?)
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          data.attr_driver = default_printer.attr_driver
          data.attr_name = default_printer.attr_name
        end
        return data
      end
    }
    
    typesig { [] }
    # Constructs a new printer representing the default printer.
    # <p>
    # Note: You must dispose the printer when it is no longer required.
    # </p>
    # 
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES - if there are no valid printers
    # </ul>
    # 
    # @see Device#dispose
    def initialize
      initialize__printer(nil)
    end
    
    typesig { [PrinterData] }
    # Constructs a new printer given a <code>PrinterData</code>
    # object representing the desired printer. If the argument
    # is null, then the default printer will be used.
    # <p>
    # Note: You must dispose the printer when it is no longer required.
    # </p>
    # 
    # @param data the printer data for the specified printer, or null to use the default printer
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the specified printer data does not represent a valid printer
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_NO_HANDLES - if there are no valid printers
    # </ul>
    # 
    # @see Device#dispose
    def initialize(data)
      @data = nil
      @printer = 0
      @print_job = 0
      @settings = 0
      @page_setup = 0
      @surface = 0
      @cairo = 0
      @is_gccreated = false
      @system_font = nil
      super(check_null(data))
      @is_gccreated = false
    end
    
    class_module.module_eval {
      typesig { [String] }
      def restore_int(key)
        value = restore_bytes(key, false)
        return JavaInteger.parse_int(String.new(value))
      end
      
      typesig { [String] }
      def restore_double(key)
        value = restore_bytes(key, false)
        return Double.parse_double(String.new(value))
      end
      
      typesig { [String] }
      def restore_boolean(key)
        value = restore_bytes(key, false)
        return Boolean.value_of(String.new(value)).boolean_value
      end
      
      typesig { [String, ::Java::Boolean] }
      def restore_bytes(key, null_terminate)
        # get key
        self.attr_start = self.attr_end
        while (self.attr_end < self.attr_settings_data.attr_length && !(self.attr_settings_data[self.attr_end]).equal?(0))
          self.attr_end += 1
        end
        self.attr_end += 1
        key_buffer = Array.typed(::Java::Byte).new(self.attr_end - self.attr_start) { 0 }
        System.arraycopy(self.attr_settings_data, self.attr_start, key_buffer, 0, key_buffer.attr_length)
        # get value
        self.attr_start = self.attr_end
        while (self.attr_end < self.attr_settings_data.attr_length && !(self.attr_settings_data[self.attr_end]).equal?(0))
          self.attr_end += 1
        end
        length = self.attr_end - self.attr_start
        self.attr_end += 1
        if (null_terminate)
          length += 1
        end
        value_buffer = Array.typed(::Java::Byte).new(length) { 0 }
        System.arraycopy(self.attr_settings_data, self.attr_start, value_buffer, 0, length)
        if (self.attr_debug)
          System.out.println(RJava.cast_to_string(String.new(Converter.mbcs_to_wcs(nil, key_buffer))) + ": " + RJava.cast_to_string(String.new(Converter.mbcs_to_wcs(nil, value_buffer))))
        end
        return value_buffer
      end
    }
    
    typesig { [] }
    # Returns a reasonable font for applications to use.
    # On some platforms, this will match the "default font"
    # or "system font" if such can be found.  This font
    # should not be free'd because it was allocated by the
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
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_system_font
      check_device
      if (!(@system_font).nil?)
        return @system_font
      end
      # long
      style = OS.gtk_widget_get_default_style
      # long
      default_font = OS.pango_font_description_copy(OS.gtk_style_get_font_desc(style))
      return @system_font = Font.gtk_new(self, default_font)
    end
    
    typesig { [SwtGCData] }
    # Invokes platform specific functionality to allocate a new GC handle.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Printer</code>. It is marked public only so that it
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
      visual = GdkVisual.new
      OS.memmove(visual, OS.gdk_visual_get_system)
      # long
      drawable = OS.gdk_pixmap_new(OS._gdk_root_parent, 1, 1, visual.attr_depth)
      # long
      gdk_gc = OS.gdk_gc_new(drawable)
      if ((gdk_gc).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      if (!(data).nil?)
        if (@is_gccreated)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        mask = SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT
        if (((data.attr_style & mask)).equal?(0))
          data.attr_style |= SWT::LEFT_TO_RIGHT
        end
        data.attr_device = self
        data.attr_drawable = drawable
        data.attr_background = get_system_color(SWT::COLOR_WHITE).attr_handle
        data.attr_foreground = get_system_color(SWT::COLOR_BLACK).attr_handle
        data.attr_font = get_system_font
        # TODO: We are supposed to return this in pixels, but GTK_UNIT_PIXELS is currently not implemented (gtk bug 346245)
        data.attr_width = RJava.cast_to_int(OS.gtk_page_setup_get_paper_width(@page_setup, OS::GTK_UNIT_POINTS))
        data.attr_height = RJava.cast_to_int(OS.gtk_page_setup_get_paper_height(@page_setup, OS::GTK_UNIT_POINTS))
        if ((@cairo).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        data.attr_cairo = @cairo
        @is_gccreated = true
      end
      return gdk_gc
    end
    
    typesig { [::Java::Int, SwtGCData] }
    # Invokes platform specific functionality to dispose a GC handle.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Printer</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    # 
    # @param hDC the platform specific GC handle
    # @param data the platform specific GC data
    # 
    # long
    def internal_dispose__gc(gdk_gc, data)
      if (!(data).nil?)
        @is_gccreated = false
      end
      OS.g_object_unref(gdk_gc)
      if (!(data).nil?)
        if (!(data.attr_drawable).equal?(0))
          OS.g_object_unref(data.attr_drawable)
        end
        data.attr_drawable = data.attr_cairo = 0
      end
    end
    
    typesig { [] }
    # Releases any internal state prior to destroying this printer.
    # This method is called internally by the dispose
    # mechanism of the <code>Device</code> class.
    def release
      super
      # Dispose the default font
      if (!(@system_font).nil?)
        @system_font.dispose
      end
      @system_font = nil
    end
    
    typesig { [String] }
    # Starts a print job and returns true if the job started successfully
    # and false otherwise.
    # <p>
    # This must be the first method called to initiate a print job,
    # followed by any number of startPage/endPage calls, followed by
    # endJob. Calling startPage, endPage, or endJob before startJob
    # will result in undefined behavior.
    # </p>
    # 
    # @param jobName the name of the print job to start
    # @return true if the job started successfully and false otherwise.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #startPage
    # @see #endPage
    # @see #endJob
    def start_job(job_name)
      check_device
      buffer = Converter.wcs_to_mbcs(nil, job_name, true)
      @print_job = OS.gtk_print_job_new(buffer, @printer, @settings, @page_setup)
      if ((@print_job).equal?(0))
        return false
      end
      @surface = OS.gtk_print_job_get_surface(@print_job, nil)
      if ((@surface).equal?(0))
        OS.g_object_unref(@print_job)
        @print_job = 0
        return false
      end
      @cairo = SwtCairo.cairo_create(@surface)
      if ((@cairo).equal?(0))
        OS.g_object_unref(@print_job)
        @print_job = 0
        return false
      end
      return true
    end
    
    typesig { [] }
    # Destroys the printer handle.
    # This method is called internally by the dispose
    # mechanism of the <code>Device</code> class.
    def destroy
      if (!(@printer).equal?(0))
        OS.g_object_unref(@printer)
      end
      if (!(@settings).equal?(0))
        OS.g_object_unref(@settings)
      end
      if (!(@page_setup).equal?(0))
        OS.g_object_unref(@page_setup)
      end
      if (!(@cairo).equal?(0))
        SwtCairo.cairo_destroy(@cairo)
      end
      if (!(@print_job).equal?(0))
        OS.g_object_unref(@print_job)
      end
      @printer = @settings = @page_setup = @cairo = @print_job = 0
    end
    
    typesig { [] }
    # Ends the current print job.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #startJob
    # @see #startPage
    # @see #endPage
    def end_job
      check_device
      if ((@print_job).equal?(0))
        return
      end
      SwtCairo.cairo_surface_finish(@surface)
      OS.gtk_print_job_send(@print_job, 0, 0, 0)
    end
    
    typesig { [] }
    # Cancels a print job in progress.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def cancel_job
      check_device
      if ((@print_job).equal?(0))
        return
      end
      # TODO: Need to implement (waiting on gtk bug 339323)
      # OS.g_object_unref(printJob);
      # printJob = 0;
    end
    
    typesig { [] }
    # Starts a page and returns true if the page started successfully
    # and false otherwise.
    # <p>
    # After calling startJob, this method may be called any number of times
    # along with a matching endPage.
    # </p>
    # 
    # @return true if the page started successfully and false otherwise.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #endPage
    # @see #startJob
    # @see #endJob
    def start_page
      check_device
      if ((@print_job).equal?(0))
        return false
      end
      width = OS.gtk_page_setup_get_paper_width(@page_setup, OS::GTK_UNIT_POINTS)
      height = OS.gtk_page_setup_get_paper_height(@page_setup, OS::GTK_UNIT_POINTS)
      type = SwtCairo.cairo_surface_get_type(@surface)
      case (type)
      when SwtCairo::CAIRO_SURFACE_TYPE_PS
        SwtCairo.cairo_ps_surface_set_size(@surface, width, height)
      when SwtCairo::CAIRO_SURFACE_TYPE_PDF
        SwtCairo.cairo_pdf_surface_set_size(@surface, width, height)
      end
      return true
    end
    
    typesig { [] }
    # Ends the current page.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #startPage
    # @see #startJob
    # @see #endJob
    def end_page
      check_device
      if (!(@cairo).equal?(0))
        SwtCairo.cairo_show_page(@cairo)
      end
    end
    
    typesig { [] }
    # Returns a point whose x coordinate is the horizontal
    # dots per inch of the printer, and whose y coordinate
    # is the vertical dots per inch of the printer.
    # 
    # @return the horizontal and vertical DPI
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_dpi
      check_device
      resolution = OS.gtk_print_settings_get_resolution(@settings)
      if (self.attr_debug)
        System.out.println("print_settings.resolution=" + RJava.cast_to_string(resolution))
      end
      # TODO: Return 72 (1/72 inch = 1 point) until gtk bug 346245 is fixed
      # TODO: Fix this: gtk_print_settings_get_resolution returns 0? (see gtk bug 346252)
      # if (resolution == 0)
      return Point.new(72, 72)
      # return new Point(resolution, resolution);
    end
    
    typesig { [] }
    # Returns a rectangle describing the receiver's size and location.
    # <p>
    # For a printer, this is the size of the physical page, in pixels.
    # </p>
    # 
    # @return the bounding rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #getClientArea
    # @see #computeTrim
    def get_bounds
      check_device
      # TODO: We are supposed to return this in pixels, but GTK_UNIT_PIXELS is currently not implemented (gtk bug 346245)
      width = OS.gtk_page_setup_get_paper_width(@page_setup, OS::GTK_UNIT_POINTS)
      height = OS.gtk_page_setup_get_paper_height(@page_setup, OS::GTK_UNIT_POINTS)
      return Rectangle.new(0, 0, RJava.cast_to_int(width), RJava.cast_to_int(height))
    end
    
    typesig { [] }
    # Returns a rectangle which describes the area of the
    # receiver which is capable of displaying data.
    # <p>
    # For a printer, this is the size of the printable area
    # of the page, in pixels.
    # </p>
    # 
    # @return the client area
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #getBounds
    # @see #computeTrim
    def get_client_area
      check_device
      # TODO: We are supposed to return this in pixels, but GTK_UNIT_PIXELS is currently not implemented (gtk bug 346245)
      width = OS.gtk_page_setup_get_page_width(@page_setup, OS::GTK_UNIT_POINTS)
      height = OS.gtk_page_setup_get_page_height(@page_setup, OS::GTK_UNIT_POINTS)
      return Rectangle.new(0, 0, RJava.cast_to_int(width), RJava.cast_to_int(height))
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Given a <em>client area</em> (as described by the arguments),
    # returns a rectangle, relative to the client area's coordinates,
    # that is the client area expanded by the printer's trim (or minimum margins).
    # <p>
    # Most printers have a minimum margin on each edge of the paper where the
    # printer device is unable to print.  This margin is known as the "trim."
    # This method can be used to calculate the printer's minimum margins
    # by passing in a client area of 0, 0, 0, 0 and then using the resulting
    # x and y coordinates (which will be <= 0) to determine the minimum margins
    # for the top and left edges of the paper, and the resulting width and height
    # (offset by the resulting x and y) to determine the minimum margins for the
    # bottom and right edges of the paper, as follows:
    # <ul>
    # <li>The left trim width is -x pixels</li>
    # <li>The top trim height is -y pixels</li>
    # <li>The right trim width is (x + width) pixels</li>
    # <li>The bottom trim height is (y + height) pixels</li>
    # </ul>
    # </p>
    # 
    # @param x the x coordinate of the client area
    # @param y the y coordinate of the client area
    # @param width the width of the client area
    # @param height the height of the client area
    # @return a rectangle, relative to the client area's coordinates, that is
    # the client area expanded by the printer's trim (or minimum margins)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    # 
    # @see #getBounds
    # @see #getClientArea
    def compute_trim(x, y, width, height)
      check_device
      # TODO: We are supposed to return this in pixels, but GTK_UNIT_PIXELS is currently not implemented (gtk bug 346245)
      print_width = OS.gtk_page_setup_get_page_width(@page_setup, OS::GTK_UNIT_POINTS)
      print_height = OS.gtk_page_setup_get_page_height(@page_setup, OS::GTK_UNIT_POINTS)
      paper_width = OS.gtk_page_setup_get_paper_width(@page_setup, OS::GTK_UNIT_POINTS)
      paper_height = OS.gtk_page_setup_get_paper_height(@page_setup, OS::GTK_UNIT_POINTS)
      print_x = -OS.gtk_page_setup_get_left_margin(@page_setup, OS::GTK_UNIT_POINTS)
      print_y = -OS.gtk_page_setup_get_top_margin(@page_setup, OS::GTK_UNIT_POINTS)
      h_trim = paper_width - print_width
      v_trim = paper_height - print_height
      return Rectangle.new(x + RJava.cast_to_int(print_x), y + RJava.cast_to_int(print_y), width + RJava.cast_to_int(h_trim), height + RJava.cast_to_int(v_trim))
    end
    
    typesig { [DeviceData] }
    # Creates the printer handle.
    # This method is called internally by the instance creation
    # mechanism of the <code>Device</code> class.
    # @param deviceData the device data
    def create(device_data)
      @data = device_data
      if (OS::GTK_VERSION < OS._version(2, 10, 0) || self.attr_disable_printing)
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      @printer = gtk_printer_from_printer_data
      if ((@printer).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
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
      super
      @settings = OS.gtk_print_settings_new
      @page_setup = OS.gtk_page_setup_new
      if (!(@data.attr_other_data).nil?)
        restore(@data.attr_other_data, @settings, @page_setup)
      end
      # Set values of print_settings and page_setup from PrinterData.
      # TODO: Should we look at printToFile, or driver/name for "Print to File", or both? (see gtk bug 345590)
      if (@data.attr_print_to_file && !(@data.attr_file_name).nil?)
        buffer = Converter.wcs_to_mbcs(nil, @data.attr_file_name, true)
        OS.gtk_print_settings_set(@settings, OS::GTK_PRINT_SETTINGS_OUTPUT_URI, buffer)
      end
      if ((@data.attr_driver == "GtkPrintBackendFile") && (@data.attr_name == "Print to File") && !(@data.attr_file_name).nil?)
        # $NON-NLS-1$ //$NON-NLS-2$
        buffer = Converter.wcs_to_mbcs(nil, @data.attr_file_name, true)
        OS.gtk_print_settings_set(@settings, OS::GTK_PRINT_SETTINGS_OUTPUT_URI, buffer)
      end
      OS.gtk_print_settings_set_n_copies(@settings, @data.attr_copy_count)
      OS.gtk_print_settings_set_collate(@settings, @data.attr_collate)
      orientation = (@data.attr_orientation).equal?(PrinterData::LANDSCAPE) ? OS::GTK_PAGE_ORIENTATION_LANDSCAPE : OS::GTK_PAGE_ORIENTATION_PORTRAIT
      OS.gtk_page_setup_set_orientation(@page_setup, orientation)
      OS.gtk_print_settings_set_orientation(@settings, orientation)
    end
    
    typesig { [] }
    # Returns a <code>PrinterData</code> object representing the
    # target printer for this print job.
    # 
    # @return a PrinterData object describing the receiver
    def get_printer_data
      check_device
      return @data
    end
    
    private
    alias_method :initialize__printer, :initialize
  end
  
end
