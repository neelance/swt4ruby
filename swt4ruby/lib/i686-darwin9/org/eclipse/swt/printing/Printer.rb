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
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CFRange
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :PMRect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :PMResolution
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Rect
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
    
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    attr_accessor :print_session
    alias_method :attr_print_session, :print_session
    undef_method :print_session
    alias_method :attr_print_session=, :print_session=
    undef_method :print_session=
    
    attr_accessor :print_settings
    alias_method :attr_print_settings, :print_settings
    undef_method :print_settings
    alias_method :attr_print_settings=, :print_settings=
    undef_method :print_settings=
    
    attr_accessor :page_format
    alias_method :attr_page_format, :page_format
    undef_method :page_format
    alias_method :attr_page_format=, :page_format=
    undef_method :page_format=
    
    attr_accessor :in_page
    alias_method :attr_in_page, :in_page
    undef_method :in_page
    alias_method :attr_in_page=, :in_page=
    undef_method :in_page=
    
    attr_accessor :is_gccreated
    alias_method :attr_is_gccreated, :is_gccreated
    undef_method :is_gccreated
    alias_method :attr_is_gccreated=, :is_gccreated=
    undef_method :is_gccreated=
    
    attr_accessor :context
    alias_method :attr_context, :context
    undef_method :context
    alias_method :attr_context=, :context=
    undef_method :context=
    
    attr_accessor :colorspace
    alias_method :attr_colorspace, :colorspace
    undef_method :colorspace
    alias_method :attr_colorspace=, :colorspace=
    undef_method :colorspace=
    
    class_module.module_eval {
      const_set_lazy(:DRIVER) { "Mac" }
      const_attr_reader  :DRIVER
      
      const_set_lazy(:PRINTER_DRIVER) { "Printer" }
      const_attr_reader  :PRINTER_DRIVER
      
      const_set_lazy(:FILE_DRIVER) { "File" }
      const_attr_reader  :FILE_DRIVER
      
      const_set_lazy(:PREVIEW_DRIVER) { "Preview" }
      const_attr_reader  :PREVIEW_DRIVER
      
      const_set_lazy(:FAX_DRIVER) { "Fax" }
      const_attr_reader  :FAX_DRIVER
      
      typesig { [] }
      # Returns an array of <code>PrinterData</code> objects
      # representing all available printers.
      # 
      # @return the list of available printers
      def get_printer_list
        result = nil
        print_session = Array.typed(::Java::Int).new(1) { 0 }
        OS._pmcreate_session(print_session)
        if (!(print_session[0]).equal?(0))
          printer_list = Array.typed(::Java::Int).new(1) { 0 }
          current_index = Array.typed(::Java::Int).new(1) { 0 }
          current_printer = Array.typed(::Java::Int).new(1) { 0 }
          OS._pmsession_create_printer_list(print_session[0], printer_list, current_index, current_printer)
          if (!(printer_list[0]).equal?(0))
            count = OS._cfarray_get_count(printer_list[0])
            result = Array.typed(PrinterData).new(count) { nil }
            i = 0
            while i < count
              name = get_string(OS._cfarray_get_value_at_index(printer_list[0], i))
              result[i] = PrinterData.new(DRIVER, name)
              ((i += 1) - 1)
            end
            OS._cfrelease(printer_list[0])
          end
          OS._pmrelease(print_session[0])
        end
        return (result).nil? ? Array.typed(PrinterData).new(0) { nil } : result
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
        result = nil
        print_session = Array.typed(::Java::Int).new(1) { 0 }
        OS._pmcreate_session(print_session)
        if (!(print_session[0]).equal?(0))
          name = get_current_printer_name(print_session[0])
          if (!(name).nil?)
            result = PrinterData.new(DRIVER, name)
          end
          OS._pmrelease(print_session[0])
        end
        return result
      end
      
      typesig { [::Java::Int] }
      def get_current_printer_name(print_session)
        result = nil
        printer_list = Array.typed(::Java::Int).new(1) { 0 }
        current_index = Array.typed(::Java::Int).new(1) { 0 }
        current_printer = Array.typed(::Java::Int).new(1) { 0 }
        OS._pmsession_create_printer_list(print_session, printer_list, current_index, current_printer)
        if (!(printer_list[0]).equal?(0))
          count = OS._cfarray_get_count(printer_list[0])
          if (current_index[0] >= 0 && current_index[0] < count)
            result = (get_string(OS._cfarray_get_value_at_index(printer_list[0], current_index[0]))).to_s
          end
          OS._cfrelease(printer_list[0])
        end
        return result
      end
      
      typesig { [::Java::Int] }
      def get_string(ptr)
        length = OS._cfstring_get_length(ptr)
        buffer = CharArray.new(length)
        range = CFRange.new
        range.attr_length = length
        OS._cfstring_get_characters(ptr, range, buffer)
        return String.new(buffer)
      end
      
      typesig { [::Java::Int, Array.typed(::Java::Byte), ::Java::Int] }
      def pack_data(handle, buffer, offset)
        length = OS._get_handle_size(handle)
        buffer[((offset += 1) - 1)] = ((length & 0xff) >> 0)
        buffer[((offset += 1) - 1)] = ((length & 0xff00) >> 8)
        buffer[((offset += 1) - 1)] = ((length & 0xff0000) >> 16)
        buffer[((offset += 1) - 1)] = ((length & -0x1000000) >> 24)
        ptr = Array.typed(::Java::Int).new(1) { 0 }
        OS._hlock(handle)
        OS.memmove(ptr, handle, 4)
        buffer1 = Array.typed(::Java::Byte).new(length) { 0 }
        OS.memmove(buffer1, ptr[0], length)
        OS._hunlock(handle)
        System.arraycopy(buffer1, 0, buffer, offset, length)
        return offset + length
      end
      
      typesig { [Array.typed(::Java::Int), Array.typed(::Java::Byte), ::Java::Int] }
      def unpack_data(handle, buffer, offset)
        length = ((buffer[((offset += 1) - 1)] & 0xff) << 0) | ((buffer[((offset += 1) - 1)] & 0xff) << 8) | ((buffer[((offset += 1) - 1)] & 0xff) << 16) | ((buffer[((offset += 1) - 1)] & 0xff) << 24)
        handle[0] = OS._new_handle(length)
        if ((handle[0]).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        ptr = Array.typed(::Java::Int).new(1) { 0 }
        OS._hlock(handle[0])
        OS.memmove(ptr, handle[0], 4)
        buffer1 = Array.typed(::Java::Byte).new(length) { 0 }
        System.arraycopy(buffer, offset, buffer1, 0, length)
        OS.memmove(ptr[0], buffer1, length)
        OS._hunlock(handle[0])
        return offset + length
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
      @data = nil
      @print_session = 0
      @print_settings = 0
      @page_format = 0
      @in_page = false
      @is_gccreated = false
      @context = 0
      @colorspace = 0
      super(check_null(data))
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
      page_rect = PMRect.new
      paper_rect = PMRect.new
      OS._pmget_adjusted_page_rect(@page_format, page_rect)
      OS._pmget_adjusted_paper_rect(@page_format, paper_rect)
      return Rectangle.new(x + RJava.cast_to_int(paper_rect.attr_left), y + RJava.cast_to_int(paper_rect.attr_top), width + RJava.cast_to_int((paper_rect.attr_right - page_rect.attr_right)), height + RJava.cast_to_int((paper_rect.attr_bottom - page_rect.attr_bottom)))
    end
    
    typesig { [DeviceData] }
    # Creates the printer handle.
    # This method is called internally by the instance creation
    # mechanism of the <code>Device</code> class.
    # @param deviceData the device data
    def create(device_data)
      @data = device_data
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      if (!(OS._pmcreate_session(buffer)).equal?(OS.attr_no_err))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      @print_session = buffer[0]
      if ((@print_session).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      if (!(@data.attr_other_data).nil?)
        # Deserialize settings
        offset = 0
        other_data = @data.attr_other_data
        offset = unpack_data(buffer, other_data, offset)
        flat_settings = buffer[0]
        offset = unpack_data(buffer, other_data, offset)
        flat_format = buffer[0]
        if (!(OS._pmunflatten_print_settings(flat_settings, buffer)).equal?(OS.attr_no_err))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        @print_settings = buffer[0]
        if ((@print_settings).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        if (!(OS._pmunflatten_page_format(flat_format, buffer)).equal?(OS.attr_no_err))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        @page_format = buffer[0]
        if ((@page_format).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        OS._dispose_handle(flat_settings)
        OS._dispose_handle(flat_format)
      else
        # Create default settings
        if (!(OS._pmcreate_print_settings(buffer)).equal?(OS.attr_no_err))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        @print_settings = buffer[0]
        if ((@print_settings).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        OS._pmsession_default_print_settings(@print_session, @print_settings)
        if (!(OS._pmcreate_page_format(buffer)).equal?(OS.attr_no_err))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        @page_format = buffer[0]
        if ((@page_format).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        OS._pmsession_default_page_format(@print_session, @page_format)
      end
      if ((PREVIEW_DRIVER == @data.attr_driver))
        OS._pmsession_set_destination(@print_session, @print_settings, RJava.cast_to_short(OS.attr_k_pmdestination_preview), 0, 0)
      end
      name = @data.attr_name
      buffer1 = CharArray.new(name.length)
      name.get_chars(0, buffer1.attr_length, buffer1, 0)
      ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer1, buffer1.attr_length)
      if (!(ptr).equal?(0))
        OS._pmsession_set_current_printer(@print_session, ptr)
        OS._cfrelease(ptr)
      end
      OS._pmsession_validate_print_settings(@print_session, @print_settings, nil)
      OS._pmsession_validate_page_format(@print_session, @page_format, nil)
      graphics_contexts_array = OS._cfarray_create_mutable(OS.attr_k_cfallocator_default, 1, 0)
      if (!(graphics_contexts_array).equal?(0))
        OS._cfarray_append_value(graphics_contexts_array, OS.k_pmgraphics_context_core_graphics)
        OS._pmsession_set_document_format_generation(@print_session, OS.k_pmdocument_format_pdf, graphics_contexts_array, 0)
        OS._cfrelease(graphics_contexts_array)
      end
    end
    
    typesig { [] }
    # Destroys the printer handle.
    # This method is called internally by the dispose
    # mechanism of the <code>Device</code> class.
    def destroy
      if (!(@page_format).equal?(0))
        OS._pmrelease(@page_format)
      end
      @page_format = 0
      if (!(@print_settings).equal?(0))
        OS._pmrelease(@print_settings)
      end
      @print_settings = 0
      if (!(@print_session).equal?(0))
        OS._pmrelease(@print_session)
      end
      @print_session = 0
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
    def internal_new__gc(data)
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      setup_new_page
      if (!(data).nil?)
        if (@is_gccreated)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        data.attr_device = self
        data.attr_background = get_system_color(SWT::COLOR_WHITE).attr_handle
        data.attr_foreground = get_system_color(SWT::COLOR_BLACK).attr_handle
        data.attr_font = get_system_font
        paper_rect = PMRect.new
        OS._pmget_adjusted_paper_rect(@page_format, paper_rect)
        port_rect = Rect.new
        port_rect.attr_left = RJava.cast_to_short(paper_rect.attr_left)
        port_rect.attr_right = RJava.cast_to_short(paper_rect.attr_right)
        port_rect.attr_top = RJava.cast_to_short(paper_rect.attr_top)
        port_rect.attr_bottom = RJava.cast_to_short(paper_rect.attr_bottom)
        data.attr_port_rect = port_rect
        @is_gccreated = true
      end
      return @context
    end
    
    typesig { [] }
    def init
      super
      @colorspace = OS._cgcolor_space_create_device_rgb
      if ((@colorspace).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
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
    def internal_dispose__gc(context, data)
      if (!(data).nil?)
        @is_gccreated = false
      end
    end
    
    typesig { [] }
    # Releases any internal state prior to destroying this printer.
    # This method is called internally by the dispose
    # mechanism of the <code>Device</code> class.
    def release
      if (!(@colorspace).equal?(0))
        OS._cgcolor_space_release(@colorspace)
      end
      @colorspace = 0
      super
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
      if (!(job_name).nil? && !(job_name.length).equal?(0))
        buffer = CharArray.new(job_name.length)
        job_name.get_chars(0, buffer.attr_length, buffer, 0)
        ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
        if (!(ptr).equal?(0))
          OS._pmset_job_name_cfstring(@print_settings, ptr)
          OS._cfrelease(ptr)
        end
      end
      return (OS._pmsession_begin_document_no_dialog(@print_session, @print_settings, @page_format)).equal?(OS.attr_no_err)
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
      if (@in_page)
        OS._pmsession_end_page_no_dialog(@print_session)
        @in_page = false
      end
      OS._pmsession_end_document_no_dialog(@print_session)
      @context = 0
    end
    
    typesig { [] }
    # Cancels a print job in progress.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def cancel_job
      check_device
      OS._pmsession_set_error(@print_session, OS.attr_k_pmcancel)
      if (@in_page)
        OS._pmsession_end_page_no_dialog(@print_session)
        @in_page = false
      end
      OS._pmsession_end_document_no_dialog(@print_session)
      @context = 0
    end
    
    class_module.module_eval {
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
      if (!(OS._pmsession_error(@print_session)).equal?(OS.attr_no_err))
        return false
      end
      setup_new_page
      return !(@context).equal?(0)
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
      if (@in_page)
        OS._pmsession_end_page_no_dialog(@print_session)
        @in_page = false
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
      resolution = PMResolution.new
      OS._pmget_resolution(@page_format, resolution)
      return Point.new(RJava.cast_to_int(resolution.attr_h_res), RJava.cast_to_int(resolution.attr_v_res))
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
      paper_rect = PMRect.new
      OS._pmget_adjusted_paper_rect(@page_format, paper_rect)
      return Rectangle.new(0, 0, RJava.cast_to_int((paper_rect.attr_right - paper_rect.attr_left)), RJava.cast_to_int((paper_rect.attr_bottom - paper_rect.attr_top)))
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
      page_rect = PMRect.new
      OS._pmget_adjusted_page_rect(@page_format, page_rect)
      return Rectangle.new(0, 0, RJava.cast_to_int((page_rect.attr_right - page_rect.attr_left)), RJava.cast_to_int((page_rect.attr_bottom - page_rect.attr_top)))
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
    
    typesig { [] }
    # On the Mac the core graphics context for printing is only valid between PMSessionBeginPage and PMSessionEndPage,
    # so printing code has to retrieve and initializes a graphic context for every page like this:
    # 
    # <pre>
    # PMSessionBeginDocument
    # PMSessionBeginPage
    # PMSessionGetGraphicsContext
    # // ... use context
    # PMSessionEndPage
    # PMSessionEndDocument
    # </pre>
    # 
    # In SWT it is OK to create a GC once between startJob / endJob and use it for all pages in between:
    # 
    # <pre>
    # startJob(...);
    # GC gc= new GC(printer);
    # startPage();
    # // ... use gc
    # endPage();
    # gc.dispose();
    # endJob();
    # </pre>
    # 
    # The solution to resolve this difference is to rely on the fact that Mac OS X returns the same but
    # reinitialized graphics context for every page. So we only have to account for the fact that SWT assumes
    # that the graphics context keeps it settings across a page break when it actually does not.
    # So we have to copy some settings that exist in the CGC before a PMSessionEndPage to the CGC after a PMSessionBeginPage.
    # <p>
    # In addition to this we have to cope with the situation that in SWT we can create a GC before a call to
    # PMSessionBeginPage. For this we decouple the call to PMSessionBeginPage from
    # SWT's method startPage as follows: if a new GC is created before a call to startPage, internal_new_GC
    # does the PMSessionBeginPage and the next following startPage does nothing.
    # </p>
    def setup_new_page
      if (!@in_page)
        @in_page = true
        OS._pmsession_begin_page_no_dialog(@print_session, @page_format, nil)
        buffer = Array.typed(::Java::Int).new(1) { 0 }
        OS._pmsession_get_graphics_context(@print_session, 0, buffer)
        if ((@context).equal?(0))
          @context = buffer[0]
        else
          if (!(@context).equal?(buffer[0]))
            SWT.error(SWT::ERROR_UNSPECIFIED)
          end
        end
        paper_rect = PMRect.new
        OS._pmget_adjusted_paper_rect(@page_format, paper_rect)
        OS._cgcontext_scale_ctm(@context, 1, -1)
        OS._cgcontext_translate_ctm(@context, 0, -((paper_rect.attr_bottom - paper_rect.attr_top)).to_f)
        OS._cgcontext_set_stroke_color_space(@context, @colorspace)
        OS._cgcontext_set_fill_color_space(@context, @colorspace)
      end
    end
    
    private
    alias_method :initialize__printer, :initialize
  end
  
end
