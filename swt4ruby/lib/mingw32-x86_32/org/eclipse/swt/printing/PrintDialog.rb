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
  module PrintDialogImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Printing
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
    }
  end
  
  # Instances of this class allow the user to select
  # a printer and various print-related parameters
  # prior to starting a print job.
  # <p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#printing">Printing snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample, Dialog tab</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class PrintDialog < PrintDialogImports.const_get :Dialog
    include_class_members PrintDialogImports
    
    attr_accessor :printer_data
    alias_method :attr_printer_data, :printer_data
    undef_method :printer_data
    alias_method :attr_printer_data=, :printer_data=
    undef_method :printer_data=
    
    typesig { [Shell] }
    # Constructs a new instance of this class given only its parent.
    # 
    # @param parent a composite control which will be the parent of the new instance (cannot be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent)
      initialize__print_dialog(parent, SWT::PRIMARY_MODAL)
    end
    
    typesig { [Shell, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # and a style value describing its behavior and appearance.
    # <p>
    # The style value is either one of the style constants defined in
    # class <code>SWT</code> which is applicable to instances of this
    # class, or must be built by <em>bitwise OR</em>'ing together
    # (that is, using the <code>int</code> "|" operator) two or more
    # of those <code>SWT</code> style constants. The class description
    # lists the style constants that are applicable to the class.
    # Style bits are also inherited from superclasses.
    # </p>
    # 
    # @param parent a composite control which will be the parent of the new instance (cannot be null)
    # @param style the style of control to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @printer_data = nil
      super(parent, check_style(parent, style))
      @printer_data = PrinterData.new
      check_subclass
    end
    
    class_module.module_eval {
      typesig { [Shell, ::Java::Int] }
      def check_style(parent, style)
        mask = SWT::PRIMARY_MODAL | SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL
        if (!((style & SWT::SHEET)).equal?(0))
          style &= ~SWT::SHEET
          if (((style & mask)).equal?(0))
            style |= (parent).nil? ? SWT::APPLICATION_MODAL : SWT::PRIMARY_MODAL
          end
        end
        return style
      end
    }
    
    typesig { [PrinterData] }
    # Sets the printer data that will be used when the dialog
    # is opened.
    # <p>
    # Setting the printer data to null is equivalent to
    # resetting all data fields to their default values.
    # </p>
    # 
    # @param data the data that will be used when the dialog is opened or null to use default data
    # 
    # @since 3.4
    def set_printer_data(data)
      if ((data).nil?)
        data = PrinterData.new
      end
      @printer_data = data
    end
    
    typesig { [] }
    # Returns the printer data that will be used when the dialog
    # is opened.
    # 
    # @return the data that will be used when the dialog is opened
    # 
    # @since 3.4
    def get_printer_data
      return @printer_data
    end
    
    typesig { [] }
    # Returns the print job scope that the user selected
    # before pressing OK in the dialog. This will be one
    # of the following values:
    # <dl>
    # <dt><code>PrinterData.ALL_PAGES</code></dt>
    # <dd>Print all pages in the current document</dd>
    # <dt><code>PrinterData.PAGE_RANGE</code></dt>
    # <dd>Print the range of pages specified by startPage and endPage</dd>
    # <dt><code>PrinterData.SELECTION</code></dt>
    # <dd>Print the current selection</dd>
    # </dl>
    # 
    # @return the scope setting that the user selected
    def get_scope
      return @printer_data.attr_scope
    end
    
    typesig { [::Java::Int] }
    # Sets the scope of the print job. The user will see this
    # setting when the dialog is opened. This can have one of
    # the following values:
    # <dl>
    # <dt><code>PrinterData.ALL_PAGES</code></dt>
    # <dd>Print all pages in the current document</dd>
    # <dt><code>PrinterData.PAGE_RANGE</code></dt>
    # <dd>Print the range of pages specified by startPage and endPage</dd>
    # <dt><code>PrinterData.SELECTION</code></dt>
    # <dd>Print the current selection</dd>
    # </dl>
    # 
    # @param scope the scope setting when the dialog is opened
    def set_scope(scope)
      @printer_data.attr_scope = scope
    end
    
    typesig { [] }
    # Returns the start page setting that the user selected
    # before pressing OK in the dialog.
    # <p>
    # This value can be from 1 to the maximum number of pages for the platform.
    # Note that it is only valid if the scope is <code>PrinterData.PAGE_RANGE</code>.
    # </p>
    # 
    # @return the start page setting that the user selected
    def get_start_page
      return @printer_data.attr_start_page
    end
    
    typesig { [::Java::Int] }
    # Sets the start page that the user will see when the dialog
    # is opened.
    # <p>
    # This value can be from 1 to the maximum number of pages for the platform.
    # Note that it is only valid if the scope is <code>PrinterData.PAGE_RANGE</code>.
    # </p>
    # 
    # @param startPage the startPage setting when the dialog is opened
    def set_start_page(start_page)
      @printer_data.attr_start_page = start_page
    end
    
    typesig { [] }
    # Returns the end page setting that the user selected
    # before pressing OK in the dialog.
    # <p>
    # This value can be from 1 to the maximum number of pages for the platform.
    # Note that it is only valid if the scope is <code>PrinterData.PAGE_RANGE</code>.
    # </p>
    # 
    # @return the end page setting that the user selected
    def get_end_page
      return @printer_data.attr_end_page
    end
    
    typesig { [::Java::Int] }
    # Sets the end page that the user will see when the dialog
    # is opened.
    # <p>
    # This value can be from 1 to the maximum number of pages for the platform.
    # Note that it is only valid if the scope is <code>PrinterData.PAGE_RANGE</code>.
    # </p>
    # 
    # @param endPage the end page setting when the dialog is opened
    def set_end_page(end_page)
      @printer_data.attr_end_page = end_page
    end
    
    typesig { [] }
    # Returns the 'Print to file' setting that the user selected
    # before pressing OK in the dialog.
    # 
    # @return the 'Print to file' setting that the user selected
    def get_print_to_file
      return @printer_data.attr_print_to_file
    end
    
    typesig { [::Java::Boolean] }
    # Sets the 'Print to file' setting that the user will see
    # when the dialog is opened.
    # 
    # @param printToFile the 'Print to file' setting when the dialog is opened
    def set_print_to_file(print_to_file)
      @printer_data.attr_print_to_file = print_to_file
    end
    
    typesig { [] }
    def check_subclass
      name = get_class.get_name
      valid_name = PrintDialog.get_name
      if (!(valid_name == name))
        SWT.error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [] }
    # Makes the receiver visible and brings it to the front
    # of the display.
    # 
    # @return a printer data object describing the desired print job parameters,
    # or null if the dialog was canceled, no printers were found, or an error occurred
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def open
      pd = PRINTDLG.new
      pd.attr_l_struct_size = PRINTDLG.attr_sizeof
      parent = get_parent
      if (!(parent).nil?)
        pd.attr_hwnd_owner = parent.attr_handle
      end
      # Initialize PRINTDLG fields, including DEVMODE.
      pd.attr_flags = OS::PD_RETURNDEFAULT
      OS._print_dlg(pd)
      # If user setup info from a previous print dialog was specified,
      # then restore the previous DEVMODE struct.
      # 
      # long
      lp_init_data = 0
      # long
      h_heap = OS._get_process_heap
      devmode_data = @printer_data.attr_other_data
      if (!(devmode_data).nil? && !(devmode_data.attr_length).equal?(0))
        lp_init_data = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, devmode_data.attr_length)
        OS._move_memory(lp_init_data, devmode_data, devmode_data.attr_length)
        if (!(pd.attr_h_dev_mode).equal?(0))
          OS._global_free(pd.attr_h_dev_mode)
        end
        pd.attr_h_dev_mode = lp_init_data
      end
      # Initialize the DEVMODE struct's fields from the printerData.
      # long
      h_mem = pd.attr_h_dev_mode
      # long
      ptr = OS._global_lock(h_mem)
      devmode = OS::IsUnicode ? DEVMODEW.new : DEVMODEA.new
      OS._move_memory(devmode, ptr, OS::IsUnicode ? OS._devmodew_sizeof : OS._devmodea_sizeof)
      devmode.attr_dm_fields |= OS::DM_ORIENTATION
      devmode.attr_dm_orientation = (@printer_data.attr_orientation).equal?(PrinterData::PORTRAIT) ? OS::DMORIENT_PORTRAIT : OS::DMORIENT_LANDSCAPE
      if (!(@printer_data.attr_copy_count).equal?(1))
        devmode.attr_dm_fields |= OS::DM_COPIES
        devmode.attr_dm_copies = RJava.cast_to_short(@printer_data.attr_copy_count)
      end
      if (!(@printer_data.attr_collate).equal?(false))
        devmode.attr_dm_fields |= OS::DM_COLLATE
        devmode.attr_dm_collate = OS::DMCOLLATE_TRUE
      end
      OS._move_memory(ptr, devmode, OS::IsUnicode ? OS._devmodew_sizeof : OS._devmodea_sizeof)
      OS._global_unlock(h_mem)
      pd.attr_flags = OS::PD_USEDEVMODECOPIESANDCOLLATE
      if (@printer_data.attr_print_to_file)
        pd.attr_flags |= OS::PD_PRINTTOFILE
      end
      case (@printer_data.attr_scope)
      when PrinterData::PAGE_RANGE
        pd.attr_flags |= OS::PD_PAGENUMS
      when PrinterData::SELECTION
        pd.attr_flags |= OS::PD_SELECTION
      else
        pd.attr_flags |= OS::PD_ALLPAGES
      end
      pd.attr_n_min_page = 1
      pd.attr_n_max_page = -1
      pd.attr_n_from_page = RJava.cast_to_short(Math.min(0xffff, Math.max(1, @printer_data.attr_start_page)))
      pd.attr_n_to_page = RJava.cast_to_short(Math.min(0xffff, Math.max(1, @printer_data.attr_end_page)))
      display = parent.get_display
      shells = display.get_shells
      if (!((get_style & (SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL))).equal?(0))
        i = 0
        while i < shells.attr_length
          if (shells[i].is_enabled && !(shells[i]).equal?(parent))
            shells[i].set_enabled(false)
          else
            shells[i] = nil
          end
          i += 1
        end
      end
      data = nil
      key = "org.eclipse.swt.internal.win32.runMessagesInIdle" # $NON-NLS-1$
      old_value = display.get_data(key)
      display.set_data(key, Boolean.new(true))
      success = OS._print_dlg(pd)
      display.set_data(key, old_value)
      if (!((get_style & (SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL))).equal?(0))
        i = 0
        while i < shells.attr_length
          if (!(shells[i]).nil? && !shells[i].is_disposed)
            shells[i].set_enabled(true)
          end
          i += 1
        end
      end
      if (success)
        # Get driver and device from the DEVNAMES struct
        h_mem = pd.attr_h_dev_names
        # Ensure size is a multiple of 2 bytes on UNICODE platforms
        size = OS._global_size(h_mem) / TCHAR.attr_sizeof * TCHAR.attr_sizeof
        ptr = OS._global_lock(h_mem)
        offsets = Array.typed(::Java::Short).new(4) { 0 }
        OS._move_memory(offsets, ptr, 2 * offsets.attr_length)
        buffer = TCHAR.new(0, size)
        OS._move_memory(buffer, ptr, size)
        OS._global_unlock(h_mem)
        if (!(pd.attr_h_dev_names).equal?(0))
          OS._global_free(pd.attr_h_dev_names)
        end
        driver_offset = offsets[0]
        i = 0
        while (driver_offset + i < size)
          if ((buffer.tchar_at(driver_offset + i)).equal?(0))
            break
          end
          i += 1
        end
        driver = buffer.to_s(driver_offset, i)
        device_offset = offsets[1]
        i = 0
        while (device_offset + i < size)
          if ((buffer.tchar_at(device_offset + i)).equal?(0))
            break
          end
          i += 1
        end
        device = buffer.to_s(device_offset, i)
        output_offset = offsets[2]
        i = 0
        while (output_offset + i < size)
          if ((buffer.tchar_at(output_offset + i)).equal?(0))
            break
          end
          i += 1
        end
        output = buffer.to_s(output_offset, i)
        # Create PrinterData object and set fields from PRINTDLG
        data = PrinterData.new(driver, device)
        if (!((pd.attr_flags & OS::PD_PAGENUMS)).equal?(0))
          data.attr_scope = PrinterData::PAGE_RANGE
          data.attr_start_page = pd.attr_n_from_page & 0xffff
          data.attr_end_page = pd.attr_n_to_page & 0xffff
        else
          if (!((pd.attr_flags & OS::PD_SELECTION)).equal?(0))
            data.attr_scope = PrinterData::SELECTION
          end
        end
        data.attr_print_to_file = !((pd.attr_flags & OS::PD_PRINTTOFILE)).equal?(0)
        if (data.attr_print_to_file)
          data.attr_file_name = output
        end
        data.attr_copy_count = pd.attr_n_copies
        data.attr_collate = !((pd.attr_flags & OS::PD_COLLATE)).equal?(0)
        # Bulk-save the printer-specific settings in the DEVMODE struct
        h_mem = pd.attr_h_dev_mode
        size = OS._global_size(h_mem)
        ptr = OS._global_lock(h_mem)
        data.attr_other_data = Array.typed(::Java::Byte).new(size) { 0 }
        OS._move_memory(data.attr_other_data, ptr, size)
        devmode = OS::IsUnicode ? DEVMODEW.new : DEVMODEA.new
        OS._move_memory(devmode, ptr, OS::IsUnicode ? OS._devmodew_sizeof : OS._devmodea_sizeof)
        if (!((devmode.attr_dm_fields & OS::DM_ORIENTATION)).equal?(0))
          dm_orientation = devmode.attr_dm_orientation
          data.attr_orientation = (dm_orientation).equal?(OS::DMORIENT_LANDSCAPE) ? PrinterData::LANDSCAPE : PrinterData::PORTRAIT
        end
        OS._global_unlock(h_mem)
        if (!(pd.attr_h_dev_mode).equal?(0))
          OS._global_free(pd.attr_h_dev_mode)
        end
        if (!(lp_init_data).equal?(0))
          OS._heap_free(h_heap, 0, lp_init_data)
        end
        @printer_data = data
      end
      return data
    end
    
    private
    alias_method :initialize__print_dialog, :initialize
  end
  
end
