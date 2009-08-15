require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Printing
  module PrinterImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Printing
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Win32
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
    
    # the handle to the printer DC
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
    
    # the printer data describing this printer
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    # whether or not a GC was created for this printer
    attr_accessor :is_gccreated
    alias_method :attr_is_gccreated, :is_gccreated
    undef_method :is_gccreated
    alias_method :attr_is_gccreated=, :is_gccreated=
    undef_method :is_gccreated=
    
    class_module.module_eval {
      # strings used to access the Windows registry
      
      def profile
        defined?(@@profile) ? @@profile : @@profile= nil
      end
      alias_method :attr_profile, :profile
      
      def profile=(value)
        @@profile = value
      end
      alias_method :attr_profile=, :profile=
      
      
      def app_name
        defined?(@@app_name) ? @@app_name : @@app_name= nil
      end
      alias_method :attr_app_name, :app_name
      
      def app_name=(value)
        @@app_name = value
      end
      alias_method :attr_app_name=, :app_name=
      
      
      def key_name
        defined?(@@key_name) ? @@key_name : @@key_name= nil
      end
      alias_method :attr_key_name, :key_name
      
      def key_name=(value)
        @@key_name = value
      end
      alias_method :attr_key_name=, :key_name=
      
      when_class_loaded do
        self.attr_profile = TCHAR.new(0, "PrinterPorts", true) # $NON-NLS-1$
        self.attr_app_name = TCHAR.new(0, "windows", true) # $NON-NLS-1$
        self.attr_key_name = TCHAR.new(0, "device", true) # $NON-NLS-1$
      end
      
      typesig { [] }
      # Returns an array of <code>PrinterData</code> objects
      # representing all available printers.
      # 
      # @return the list of available printers
      def get_printer_list
        length = 1024
        # Use the character encoding for the default locale
        buf = TCHAR.new(0, length)
        null_buf = TCHAR.new(0, 1)
        n = OS._get_profile_string(self.attr_profile, nil, null_buf, buf, length)
        if ((n).equal?(0))
          return Array.typed(PrinterData).new(0) { nil }
        end
        device_names = Array.typed(String).new(5) { nil }
        name_count = 0
        index = 0
        i = 0
        while i < n
          if ((buf.tchar_at(i)).equal?(0))
            if ((name_count).equal?(device_names.attr_length))
              new_names = Array.typed(String).new(device_names.attr_length + 5) { nil }
              System.arraycopy(device_names, 0, new_names, 0, device_names.attr_length)
              device_names = new_names
            end
            device_names[name_count] = buf.to_s(index, i - index)
            name_count += 1
            index = i + 1
          end
          i += 1
        end
        printer_list = Array.typed(PrinterData).new(name_count) { nil }
        p = 0
        while p < name_count
          device = device_names[p]
          driver = "" # $NON-NLS-1$
          if (OS._get_profile_string(self.attr_profile, TCHAR.new(0, device, true), null_buf, buf, length) > 0)
            comma_index = 0
            while (!(buf.tchar_at(comma_index)).equal?(Character.new(?,.ord)) && comma_index < length)
              comma_index += 1
            end
            if (comma_index < length)
              driver = RJava.cast_to_string(buf.to_s(0, comma_index))
            end
          end
          printer_list[p] = PrinterData.new(driver, device)
          p += 1
        end
        return printer_list
      end
      
      typesig { [] }
      # Returns a <code>PrinterData</code> object representing
      # the default printer or <code>null</code> if there is no
      # printer available on the System.
      # 
      # @return the default printer data or null
      # 
      # @since 2.1
      def get_default_printer_data
        device_name = nil
        length = 1024
        # Use the character encoding for the default locale
        buf = TCHAR.new(0, length)
        null_buf = TCHAR.new(0, 1)
        n = OS._get_profile_string(self.attr_app_name, self.attr_key_name, null_buf, buf, length)
        if ((n).equal?(0))
          return nil
        end
        comma_index = 0
        while (!(buf.tchar_at(comma_index)).equal?(Character.new(?,.ord)) && comma_index < length)
          comma_index += 1
        end
        if (comma_index < length)
          device_name = RJava.cast_to_string(buf.to_s(0, comma_index))
        end
        driver = "" # $NON-NLS-1$
        if (OS._get_profile_string(self.attr_profile, TCHAR.new(0, device_name, true), null_buf, buf, length) > 0)
          comma_index = 0
          while (!(buf.tchar_at(comma_index)).equal?(Character.new(?,.ord)) && comma_index < length)
            comma_index += 1
          end
          if (comma_index < length)
            driver = RJava.cast_to_string(buf.to_s(0, comma_index))
          end
        end
        return PrinterData.new(driver, device_name)
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
    # You must dispose the printer when it is no longer required.
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
    # object representing the desired printer.
    # <p>
    # You must dispose the printer when it is no longer required.
    # </p>
    # 
    # @param data the printer data for the specified printer
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
      @handle = 0
      @data = nil
      @is_gccreated = false
      super(check_null(data))
      @is_gccreated = false
    end
    
    typesig { [DeviceData] }
    # Creates the printer handle.
    # This method is called internally by the instance creation
    # mechanism of the <code>Device</code> class.
    # @param deviceData the device data
    def create(device_data)
      @data = device_data
      # Use the character encoding for the default locale
      driver = TCHAR.new(0, @data.attr_driver, true)
      device = TCHAR.new(0, @data.attr_name, true)
      # long
      lp_init_data = 0
      buffer = @data.attr_other_data
      # long
      h_heap = OS._get_process_heap
      if (!(buffer).nil? && !(buffer.attr_length).equal?(0))
        # If user setup info from a print dialog was specified, restore the DEVMODE struct.
        lp_init_data = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, buffer.attr_length)
        OS._move_memory(lp_init_data, buffer, buffer.attr_length)
      end
      @handle = OS._create_dc(driver, device, 0, lp_init_data)
      if (!(lp_init_data).equal?(0))
        OS._heap_free(h_heap, 0, lp_init_data)
      end
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
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
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      if (!(data).nil?)
        if (@is_gccreated)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        mask = SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT
        if (!((data.attr_style & mask)).equal?(0))
          data.attr_layout = !((data.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0) ? OS::LAYOUT_RTL : 0
        else
          data.attr_style |= SWT::LEFT_TO_RIGHT
        end
        data.attr_device = self
        data.attr_font = Font.win32_new(self, OS._get_current_object(@handle, OS::OBJ_FONT))
        @is_gccreated = true
      end
      return @handle
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
    def internal_dispose__gc(h_dc, data)
      if (!(data).nil?)
        @is_gccreated = false
      end
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
      di = DOCINFO.new
      di.attr_cb_size = DOCINFO.attr_sizeof
      # long
      h_heap = OS._get_process_heap
      # long
      lpsz_doc_name = 0
      if (!(job_name).nil? && !(job_name.length).equal?(0))
        # Use the character encoding for the default locale
        buffer = TCHAR.new(0, job_name, true)
        byte_count = buffer.length * TCHAR.attr_sizeof
        lpsz_doc_name = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
        OS._move_memory(lpsz_doc_name, buffer, byte_count)
        di.attr_lpsz_doc_name = lpsz_doc_name
      end
      # long
      lpsz_output = 0
      if (@data.attr_print_to_file && !(@data.attr_file_name).nil?)
        # Use the character encoding for the default locale
        buffer = TCHAR.new(0, @data.attr_file_name, true)
        byte_count = buffer.length * TCHAR.attr_sizeof
        lpsz_output = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
        OS._move_memory(lpsz_output, buffer, byte_count)
        di.attr_lpsz_output = lpsz_output
      end
      rc = OS._start_doc(@handle, di)
      if (!(lpsz_doc_name).equal?(0))
        OS._heap_free(h_heap, 0, lpsz_doc_name)
      end
      if (!(lpsz_output).equal?(0))
        OS._heap_free(h_heap, 0, lpsz_output)
      end
      return rc > 0
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
      OS._end_doc(@handle)
    end
    
    typesig { [] }
    # Cancels a print job in progress.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def cancel_job
      check_device
      OS._abort_doc(@handle)
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
      rc = OS._start_page(@handle)
      if (rc <= 0)
        OS._abort_doc(@handle)
      end
      return rc > 0
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
      OS._end_page(@handle)
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
      dpi_x = OS._get_device_caps(@handle, OS::LOGPIXELSX)
      dpi_y = OS._get_device_caps(@handle, OS::LOGPIXELSY)
      return Point.new(dpi_x, dpi_y)
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
      width = OS._get_device_caps(@handle, OS::PHYSICALWIDTH)
      height = OS._get_device_caps(@handle, OS::PHYSICALHEIGHT)
      return Rectangle.new(0, 0, width, height)
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
      width = OS._get_device_caps(@handle, OS::HORZRES)
      height = OS._get_device_caps(@handle, OS::VERTRES)
      return Rectangle.new(0, 0, width, height)
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
      print_x = -OS._get_device_caps(@handle, OS::PHYSICALOFFSETX)
      print_y = -OS._get_device_caps(@handle, OS::PHYSICALOFFSETY)
      print_width = OS._get_device_caps(@handle, OS::HORZRES)
      print_height = OS._get_device_caps(@handle, OS::VERTRES)
      paper_width = OS._get_device_caps(@handle, OS::PHYSICALWIDTH)
      paper_height = OS._get_device_caps(@handle, OS::PHYSICALHEIGHT)
      h_trim = paper_width - print_width
      v_trim = paper_height - print_height
      return Rectangle.new(x + print_x, y + print_y, width + h_trim, height + v_trim)
    end
    
    typesig { [] }
    # Returns a <code>PrinterData</code> object representing the
    # target printer for this print job.
    # 
    # @return a PrinterData object describing the receiver
    def get_printer_data
      return @data
    end
    
    typesig { [] }
    # Checks the validity of this device.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def check_device
      if ((@handle).equal?(0))
        SWT.error(SWT::ERROR_DEVICE_DISPOSED)
      end
    end
    
    typesig { [] }
    # Releases any internal state prior to destroying this printer.
    # This method is called internally by the dispose
    # mechanism of the <code>Device</code> class.
    def release
      super
      @data = nil
    end
    
    typesig { [] }
    # Destroys the printer handle.
    # This method is called internally by the dispose
    # mechanism of the <code>Device</code> class.
    def destroy
      if (!(@handle).equal?(0))
        OS._delete_dc(@handle)
      end
      @handle = 0
    end
    
    private
    alias_method :initialize__printer, :initialize
  end
  
end
