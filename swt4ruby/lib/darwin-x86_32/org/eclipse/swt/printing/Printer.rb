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
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
    
    attr_accessor :printer
    alias_method :attr_printer, :printer
    undef_method :printer
    alias_method :attr_printer=, :printer=
    undef_method :printer=
    
    attr_accessor :print_info
    alias_method :attr_print_info, :print_info
    undef_method :print_info
    alias_method :attr_print_info=, :print_info=
    undef_method :print_info=
    
    attr_accessor :operation
    alias_method :attr_operation, :operation
    undef_method :operation
    alias_method :attr_operation=, :operation=
    undef_method :operation=
    
    attr_accessor :view
    alias_method :attr_view, :view
    undef_method :view
    alias_method :attr_view=, :view=
    undef_method :view=
    
    attr_accessor :window
    alias_method :attr_window, :window
    undef_method :window
    alias_method :attr_window=, :window=
    undef_method :window=
    
    attr_accessor :is_gccreated
    alias_method :attr_is_gccreated, :is_gccreated
    undef_method :is_gccreated
    alias_method :attr_is_gccreated=, :is_gccreated=
    undef_method :is_gccreated=
    
    class_module.module_eval {
      const_set_lazy(:DRIVER) { "Mac" }
      const_attr_reader  :DRIVER
      
      typesig { [] }
      # Returns an array of <code>PrinterData</code> objects
      # representing all available printers.  If there are no
      # printers, the array will be empty.
      # 
      # @return an array of PrinterData objects representing the available printers
      def get_printer_list
        pool = nil
        if (!NSThread.is_main_thread)
          pool = NSAutoreleasePool.new.alloc.init
        end
        begin
          printers = NSPrinter.printer_names
          # 64
          count_ = RJava.cast_to_int(printers.count)
          result = Array.typed(PrinterData).new(count_) { nil }
          i = 0
          while i < count_
            str = NSString.new(printers.object_at_index(i))
            result[i] = PrinterData.new(DRIVER, str.get_string)
            i += 1
          end
          return result
        ensure
          if (!(pool).nil?)
            pool.release
          end
        end
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
        pool = nil
        if (!NSThread.is_main_thread)
          pool = NSAutoreleasePool.new.alloc.init
        end
        begin
          printer = NSPrintInfo.default_printer
          if ((printer).nil?)
            return nil
          end
          str = printer.name
          return PrinterData.new(DRIVER, str.get_string)
        ensure
          if (!(pool).nil?)
            pool.release
          end
        end
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
      @printer = nil
      @print_info = nil
      @operation = nil
      @view = nil
      @window = nil
      @is_gccreated = false
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        paper_size_ = @print_info.paper_size
        bounds = @print_info.imageable_page_bounds
        dpi = get_dpi
        screen_dpi = get_independent_dpi
        scaling = scaling_factor
        x -= (bounds.attr_x * dpi.attr_x / screen_dpi.attr_x) / scaling
        y -= (bounds.attr_y * dpi.attr_y / screen_dpi.attr_y) / scaling
        width += ((paper_size_.attr_width - bounds.attr_width) * dpi.attr_x / screen_dpi.attr_x) / scaling
        height += ((paper_size_.attr_height - bounds.attr_height) * dpi.attr_y / screen_dpi.attr_y) / scaling
        return Rectangle.new(x, y, width, height)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [DeviceData] }
    # Creates the printer handle.
    # This method is called internally by the instance creation
    # mechanism of the <code>Device</code> class.
    # @param deviceData the device data
    def create(device_data)
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        NSApplication.shared_application
        @data = device_data
        if (!(@data.attr_other_data).nil?)
          ns_data = NSData.data_with_bytes(@data.attr_other_data, @data.attr_other_data.attr_length)
          @print_info = NSPrintInfo.new(NSKeyedUnarchiver.unarchive_object_with_data(ns_data).attr_id)
        else
          @print_info = NSPrintInfo.shared_print_info
        end
        @print_info.retain
        @printer = NSPrinter.printer_with_name(NSString.string_with(@data.attr_name))
        if (!(@printer).nil?)
          @printer.retain
          @print_info.set_printer(@printer)
        end
        @print_info.set_orientation((@data.attr_orientation).equal?(PrinterData::LANDSCAPE) ? OS::NSLandscapeOrientation : OS::NSPortraitOrientation)
        dict = @print_info.dictionary
        if (!(@data.attr_collate).equal?(false))
          dict.set_value(NSNumber.number_with_bool(@data.attr_collate), OS::NSPrintMustCollate)
        end
        if (!(@data.attr_copy_count).equal?(1))
          dict.set_value(NSNumber.number_with_int(@data.attr_copy_count), OS::NSPrintCopies)
        end
        if (@data.attr_print_to_file)
          dict.set_value(OS::NSPrintSaveJob, OS::NSPrintJobDisposition)
          if (!(@data.attr_file_name).nil?)
            dict.set_value(NSString.string_with(@data.attr_file_name), OS::NSPrintSavePath)
          end
        end
        # Bug in Cocoa.  For some reason, the output still goes to the printer when
        # the user chooses the preview button.  The fix is to reset the job disposition.
        job = @print_info.job_disposition
        if (job.is_equal(NSString.new(OS._nsprint_preview_job)))
          @print_info.set_job_disposition(job)
        end
        rect = NSRect.new
        @window = NSWindow.new.alloc
        @window.init_with_content_rect(rect, OS::NSBorderlessWindowMask, OS::NSBackingStoreBuffered, false)
        class_name = "SWTPrinterView" # $NON-NLS-1$
        if ((OS.objc_look_up_class(class_name)).equal?(0))
          # long
          cls = OS.objc_allocate_class_pair(OS.attr_class_nsview, class_name, 0)
          OS.class_add_method(cls, OS.attr_sel_is_flipped, OS.is_flipped_callback, "@:")
          OS.objc_register_class_pair(cls)
        end
        @view = SWTPrinterView.new.alloc
        @view.init_with_frame(rect)
        @window.set_content_view(@view)
        @operation = NSPrintOperation.print_operation_with_view(@view, @print_info)
        @operation.retain
        @operation.set_shows_print_panel(false)
        @operation.set_shows_progress_panel(false)
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [] }
    # Destroys the printer handle.
    # This method is called internally by the dispose
    # mechanism of the <code>Device</code> class.
    def destroy
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        if (!(@printer).nil?)
          @printer.release
        end
        if (!(@print_info).nil?)
          @print_info.release
        end
        if (!(@view).nil?)
          @view.release
        end
        if (!(@window).nil?)
          @window.release
        end
        if (!(@operation).nil?)
          @operation.release
        end
        @printer = nil
        @print_info = nil
        @view = nil
        @window = nil
        @operation = nil
      ensure
        if (!(pool).nil?)
          pool.release
        end
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
      if (is_disposed)
        SWT.error(SWT::ERROR_GRAPHIC_DISPOSED)
      end
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        if (!(data).nil?)
          if (@is_gccreated)
            SWT.error(SWT::ERROR_INVALID_ARGUMENT)
          end
          data.attr_device = self
          data.attr_background = get_system_color(SWT::COLOR_WHITE).attr_handle
          data.attr_foreground = get_system_color(SWT::COLOR_BLACK).attr_handle
          data.attr_font = get_system_font
          scaling = scaling_factor
          dpi = get_dpi
          screen_dpi = get_independent_dpi
          size = @print_info.paper_size
          size.attr_width = (size.attr_width * (dpi.attr_x / screen_dpi.attr_x)) / scaling
          size.attr_height = (size.attr_height * dpi.attr_y / screen_dpi.attr_y) / scaling
          data.attr_size = size
          @is_gccreated = true
        end
        return @operation.context.attr_id
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [] }
    def init
      super
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
    def internal_dispose__gc(context_, data)
      if (!(data).nil?)
        @is_gccreated = false
      end
    end
    
    typesig { [] }
    # Releases any internal state prior to destroying this printer.
    # This method is called internally by the dispose
    # mechanism of the <code>Device</code> class.
    def release
      super
    end
    
    typesig { [] }
    def scaling_factor
      return NSNumber.new(@print_info.dictionary.object_for_key(OS::NSPrintScalingFactor)).float_value
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        if (!(job_name).nil? && !(job_name.length).equal?(0))
          @operation.set_job_title(NSString.string_with(job_name))
        end
        @print_info.set_up_print_operation_default_values
        NSPrintOperation.set_current_operation(@operation)
        context_ = @operation.create_context
        if (!(context_).nil?)
          @view.begin_document
          return true
        end
        return false
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        @view.end_document
        @operation.deliver_result
        @operation.destroy_context
        @operation.clean_up_operation
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [] }
    # Cancels a print job in progress.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_DEVICE_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def cancel_job
      check_device
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        @operation.destroy_context
        @operation.clean_up_operation
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    class_module.module_eval {
      typesig { [PrinterData] }
      def check_null(data)
        if ((data).nil?)
          data = PrinterData.new
        end
        if ((data.attr_driver).nil? || (data.attr_name).nil?)
          default_printer_ = get_default_printer_data
          if ((default_printer_).nil?)
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          data.attr_driver = default_printer_.attr_driver
          data.attr_name = default_printer_.attr_name
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        scaling = scaling_factor
        paper_size_ = @print_info.paper_size
        paper_size_.attr_width /= scaling
        paper_size_.attr_height /= scaling
        rect = NSRect.new
        rect.attr_width = paper_size_.attr_width
        rect.attr_height = paper_size_.attr_height
        @view.begin_page_in_rect(rect, NSPoint.new)
        image_bounds = @print_info.imageable_page_bounds
        image_bounds.attr_x /= scaling
        image_bounds.attr_y /= scaling
        image_bounds.attr_width /= scaling
        image_bounds.attr_height /= scaling
        NSBezierPath.bezier_path_with_rect(image_bounds).set_clip
        transform_ = NSAffineTransform.transform
        transform_.translate_xby(image_bounds.attr_x, image_bounds.attr_y)
        dpi = get_dpi
        screen_dpi = get_independent_dpi
        transform_.scale_xby(screen_dpi.attr_x / (dpi.attr_x).to_f, screen_dpi.attr_y / (dpi.attr_y).to_f)
        transform_.concat
        @operation.context.save_graphics_state
        return true
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        @operation.context.restore_graphics_state
        @view.end_page
      ensure
        if (!(pool).nil?)
          pool.release
        end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        # TODO get output resolution
        return get_independent_dpi
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
    end
    
    typesig { [] }
    def get_independent_dpi
      return Device.instance_method(:get_dpi).bind(self).call
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        size = @print_info.paper_size
        scaling = scaling_factor
        dpi = get_dpi
        screen_dpi = get_independent_dpi
        return Rectangle.new(0, 0, RJava.cast_to_int(((size.attr_width * dpi.attr_x / screen_dpi.attr_x) / scaling)), RJava.cast_to_int(((size.attr_height * dpi.attr_y / screen_dpi.attr_y) / scaling)))
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
      pool = nil
      if (!NSThread.is_main_thread)
        pool = NSAutoreleasePool.new.alloc.init
      end
      begin
        scaling = scaling_factor
        rect = @print_info.imageable_page_bounds
        dpi = get_dpi
        screen_dpi = get_independent_dpi
        return Rectangle.new(0, 0, RJava.cast_to_int(((rect.attr_width * dpi.attr_x / screen_dpi.attr_x) / scaling)), RJava.cast_to_int(((rect.attr_height * dpi.attr_y / screen_dpi.attr_y) / scaling)))
      ensure
        if (!(pool).nil?)
          pool.release
        end
      end
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
