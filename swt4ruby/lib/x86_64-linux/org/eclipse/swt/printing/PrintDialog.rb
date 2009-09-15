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
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
      include_const ::Org::Eclipse::Swt::Printing, :PrinterData
      include ::Org::Eclipse::Swt::Widgets
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
    
    # int
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
    attr_accessor :index
    alias_method :attr_index, :index
    undef_method :index
    alias_method :attr_index=, :index=
    undef_method :index=
    
    attr_accessor :settings_data
    alias_method :attr_settings_data, :settings_data
    undef_method :settings_data
    alias_method :attr_settings_data=, :settings_data=
    undef_method :settings_data=
    
    class_module.module_eval {
      const_set_lazy(:GET_MODAL_DIALOG) { "org.eclipse.swt.internal.gtk.getModalDialog" }
      const_attr_reader  :GET_MODAL_DIALOG
      
      const_set_lazy(:SET_MODAL_DIALOG) { "org.eclipse.swt.internal.gtk.setModalDialog" }
      const_attr_reader  :SET_MODAL_DIALOG
      
      const_set_lazy(:ADD_IDLE_PROC_KEY) { "org.eclipse.swt.internal.gtk.addIdleProc" }
      const_attr_reader  :ADD_IDLE_PROC_KEY
      
      const_set_lazy(:REMOVE_IDLE_PROC_KEY) { "org.eclipse.swt.internal.gtk.removeIdleProc" }
      const_attr_reader  :REMOVE_IDLE_PROC_KEY
      
      const_set_lazy(:GET_EMISSION_PROC_KEY) { "org.eclipse.swt.internal.gtk.getEmissionProc" }
      const_attr_reader  :GET_EMISSION_PROC_KEY
    }
    
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
      @handle = 0
      @index = 0
      @settings_data = nil
      super(parent, check_style_bit(parent, style))
      @printer_data = PrinterData.new
      check_subclass
    end
    
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
    
    class_module.module_eval {
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def check_bits(style, int0, int1, int2, int3, int4, int5)
        mask = int0 | int1 | int2 | int3 | int4 | int5
        if (((style & mask)).equal?(0))
          style |= int0
        end
        if (!((style & int0)).equal?(0))
          style = (style & ~mask) | int0
        end
        if (!((style & int1)).equal?(0))
          style = (style & ~mask) | int1
        end
        if (!((style & int2)).equal?(0))
          style = (style & ~mask) | int2
        end
        if (!((style & int3)).equal?(0))
          style = (style & ~mask) | int3
        end
        if (!((style & int4)).equal?(0))
          style = (style & ~mask) | int4
        end
        if (!((style & int5)).equal?(0))
          style = (style & ~mask) | int5
        end
        return style
      end
      
      typesig { [Shell, ::Java::Int] }
      def check_style_bit(parent, style)
        mask = SWT::PRIMARY_MODAL | SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL
        if (!((style & SWT::SHEET)).equal?(0))
          style &= ~SWT::SHEET
          if (((style & mask)).equal?(0))
            style |= (parent).nil? ? SWT::APPLICATION_MODAL : SWT::PRIMARY_MODAL
          end
        end
        if (((style & mask)).equal?(0))
          style |= SWT::APPLICATION_MODAL
        end
        style &= ~SWT::MIRRORED
        if (((style & (SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT))).equal?(0))
          if (!(parent).nil?)
            if (!((parent.get_style & SWT::LEFT_TO_RIGHT)).equal?(0))
              style |= SWT::LEFT_TO_RIGHT
            end
            if (!((parent.get_style & SWT::RIGHT_TO_LEFT)).equal?(0))
              style |= SWT::RIGHT_TO_LEFT
            end
          end
        end
        return check_bits(style, SWT::LEFT_TO_RIGHT, SWT::RIGHT_TO_LEFT, 0, 0, 0, 0)
      end
    }
    
    typesig { [] }
    def check_subclass
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
      if (OS::GTK_VERSION < OS._version(2, 10, 0))
        return Printer.get_default_printer_data
      else
        title_bytes = Converter.wcs_to_mbcs(nil, get_text, true)
        # int
        top_handle = get_parent.attr_handle
        while (!(top_handle).equal?(0) && !OS._gtk_is_window(top_handle))
          top_handle = OS.gtk_widget_get_parent(top_handle)
        end
        @handle = OS.gtk_print_unix_dialog_new(title_bytes, top_handle)
        # TODO: Not currently implemented. May need new API. For now, disable 'Current' in the dialog. (see gtk bug 344519)
        OS.gtk_print_unix_dialog_set_current_page(@handle, -1)
        OS.gtk_print_unix_dialog_set_manual_capabilities(@handle, OS::GTK_PRINT_CAPABILITY_COLLATE | OS::GTK_PRINT_CAPABILITY_COPIES | OS::GTK_PRINT_CAPABILITY_PAGE_SET)
        # Set state into print dialog settings.
        # int
        settings = OS.gtk_print_settings_new
        # int
        page_setup = OS.gtk_page_setup_new
        if (!(@printer_data.attr_other_data).nil?)
          Printer.restore(@printer_data.attr_other_data, settings, page_setup)
        end
        # Set values of print_settings and page_setup from PrinterData.
        case (@printer_data.attr_scope)
        when PrinterData::ALL_PAGES
          OS.gtk_print_settings_set_print_pages(settings, OS::GTK_PRINT_PAGES_ALL)
        when PrinterData::PAGE_RANGE
          OS.gtk_print_settings_set_print_pages(settings, OS::GTK_PRINT_PAGES_RANGES)
          page_range = Array.typed(::Java::Int).new(2) { 0 }
          page_range[0] = @printer_data.attr_start_page - 1
          page_range[1] = @printer_data.attr_end_page - 1
          OS.gtk_print_settings_set_page_ranges(settings, page_range, 1)
        when PrinterData::SELECTION
          # TODO: Not correctly implemented. May need new API. For now, set to ALL. (see gtk bug 344519)
          OS.gtk_print_settings_set_print_pages(settings, OS::GTK_PRINT_PAGES_ALL)
        end
        if (!(@printer_data.attr_file_name).nil?)
          # TODO: Should we look at printToFile, or driver/name for "Print to File", or both? (see gtk bug 345590)
          if (@printer_data.attr_print_to_file)
            buffer = Converter.wcs_to_mbcs(nil, @printer_data.attr_file_name, true)
            OS.gtk_print_settings_set(settings, OS::GTK_PRINT_SETTINGS_OUTPUT_URI, buffer)
          end
          if (!(@printer_data.attr_driver).nil? && !(@printer_data.attr_name).nil?)
            if ((@printer_data.attr_driver == "GtkPrintBackendFile") && (@printer_data.attr_name == "Print to File"))
              # $NON-NLS-1$ //$NON-NLS-2$
              buffer = Converter.wcs_to_mbcs(nil, @printer_data.attr_file_name, true)
              OS.gtk_print_settings_set(settings, OS::GTK_PRINT_SETTINGS_OUTPUT_URI, buffer)
            end
          end
        end
        if (@printer_data.attr_print_to_file)
          buffer = Converter.wcs_to_mbcs(nil, "Print to File", true) # $NON-NLS-1$
          OS.gtk_print_settings_set_printer(settings, buffer)
        end
        OS.gtk_print_settings_set_n_copies(settings, @printer_data.attr_copy_count)
        OS.gtk_print_settings_set_collate(settings, @printer_data.attr_collate)
        orientation = (@printer_data.attr_orientation).equal?(PrinterData::LANDSCAPE) ? OS::GTK_PAGE_ORIENTATION_LANDSCAPE : OS::GTK_PAGE_ORIENTATION_PORTRAIT
        OS.gtk_print_settings_set_orientation(settings, orientation)
        OS.gtk_page_setup_set_orientation(page_setup, orientation)
        OS.gtk_print_unix_dialog_set_settings(@handle, settings)
        OS.gtk_print_unix_dialog_set_page_setup(@handle, page_setup)
        OS.g_object_unref(settings)
        OS.g_object_unref(page_setup)
        OS.gtk_window_set_modal(@handle, true)
        data = nil
        # TODO: Handle 'Print Preview' (GTK_RESPONSE_APPLY).
        display = !(get_parent).nil? ? get_parent.get_display : Display.get_current
        signal_id = 0
        # int
        hook_id = 0
        if (!((get_style & SWT::RIGHT_TO_LEFT)).equal?(0))
          signal_id = OS.g_signal_lookup(OS.attr_map, OS._gtk_type_widget)
          hook_id = OS.g_signal_add_emission_hook(signal_id, 0, (display.get_data(GET_EMISSION_PROC_KEY)).attr_value, @handle, 0)
        end
        display.set_data(ADD_IDLE_PROC_KEY, nil)
        old_modal = nil
        if (OS.gtk_window_get_modal(@handle))
          old_modal = display.get_data(GET_MODAL_DIALOG)
          display.set_data(SET_MODAL_DIALOG, self)
        end
        response = OS.gtk_dialog_run(@handle)
        if (OS.gtk_window_get_modal(@handle))
          display.set_data(SET_MODAL_DIALOG, old_modal)
        end
        if (!((get_style & SWT::RIGHT_TO_LEFT)).equal?(0))
          OS.g_signal_remove_emission_hook(signal_id, hook_id)
        end
        if ((response).equal?(OS::GTK_RESPONSE_OK))
          # int
          printer = OS.gtk_print_unix_dialog_get_selected_printer(@handle)
          if (!(printer).equal?(0))
            # Get state from print dialog.
            settings = OS.gtk_print_unix_dialog_get_settings(@handle) # must unref
            page_setup = OS.gtk_print_unix_dialog_get_page_setup(@handle) # do not unref
            data = Printer.printer_data_from_gtk_printer(printer)
            print_pages = OS.gtk_print_settings_get_print_pages(settings)
            case (print_pages)
            when OS::GTK_PRINT_PAGES_ALL
              data.attr_scope = PrinterData::ALL_PAGES
            when OS::GTK_PRINT_PAGES_RANGES
              data.attr_scope = PrinterData::PAGE_RANGE
              num_ranges = Array.typed(::Java::Int).new(1) { 0 }
              # int
              page_ranges = OS.gtk_print_settings_get_page_ranges(settings, num_ranges)
              page_range = Array.typed(::Java::Int).new(2) { 0 }
              length = num_ranges[0]
              min = JavaInteger::MAX_VALUE
              max = 0
              i = 0
              while i < length
                OS.memmove___org_eclipse_swt_printing_print_dialog_1(page_range, page_ranges + i * page_range.attr_length * 4, page_range.attr_length * 4)
                min = Math.min(min, page_range[0] + 1)
                max = Math.max(max, page_range[1] + 1)
                i += 1
              end
              OS.g_free(page_ranges)
              data.attr_start_page = (min).equal?(JavaInteger::MAX_VALUE) ? 1 : min
              data.attr_end_page = (max).equal?(0) ? 1 : max
            when OS::GTK_PRINT_PAGES_CURRENT
              # TODO: Disabled in dialog (see above). This code will not run. (see gtk bug 344519)
              data.attr_scope = PrinterData::SELECTION
              data.attr_start_page = data.attr_end_page = OS.gtk_print_unix_dialog_get_current_page(@handle)
            end
            data.attr_print_to_file = (data.attr_name == "Print to File") # $NON-NLS-1$
            if (data.attr_print_to_file)
              # int
              address = OS.gtk_print_settings_get(settings, OS::GTK_PRINT_SETTINGS_OUTPUT_URI)
              length = OS.strlen(address)
              buffer = Array.typed(::Java::Byte).new(length) { 0 }
              OS.memmove___org_eclipse_swt_printing_print_dialog_3(buffer, address, length)
              data.attr_file_name = String.new(Converter.mbcs_to_wcs(nil, buffer))
            end
            data.attr_copy_count = OS.gtk_print_settings_get_n_copies(settings)
            data.attr_collate = OS.gtk_print_settings_get_collate(settings)
            data.attr_orientation = (OS.gtk_page_setup_get_orientation(page_setup)).equal?(OS::GTK_PAGE_ORIENTATION_LANDSCAPE) ? PrinterData::LANDSCAPE : PrinterData::PORTRAIT
            # Save other print_settings data as key/value pairs in otherData.
            print_settings_callback = Callback.new(self, "GtkPrintSettingsFunc", 3) # $NON-NLS-1$
            # int
            gtk_print_settings_func = print_settings_callback.get_address
            if ((gtk_print_settings_func).equal?(0))
              SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
            end
            @index = 0
            @settings_data = Array.typed(::Java::Byte).new(1024) { 0 }
            OS.gtk_print_settings_foreach(settings, gtk_print_settings_func, 0)
            print_settings_callback.dispose
            @index += 1 # extra null terminator after print_settings and before page_setup
            # Save page_setup data as key/value pairs in otherData.
            # Note that page_setup properties must be stored and restored in the same order.
            store("orientation", OS.gtk_page_setup_get_orientation(page_setup)) # $NON-NLS-1$
            store("top_margin", OS.gtk_page_setup_get_top_margin(page_setup, OS::GTK_UNIT_MM)) # $NON-NLS-1$
            store("bottom_margin", OS.gtk_page_setup_get_bottom_margin(page_setup, OS::GTK_UNIT_MM)) # $NON-NLS-1$
            store("left_margin", OS.gtk_page_setup_get_left_margin(page_setup, OS::GTK_UNIT_MM)) # $NON-NLS-1$
            store("right_margin", OS.gtk_page_setup_get_right_margin(page_setup, OS::GTK_UNIT_MM)) # $NON-NLS-1$
            # int
            paper_size = OS.gtk_page_setup_get_paper_size(page_setup) # $NON-NLS-1$
            store_bytes("paper_size_name", OS.gtk_paper_size_get_name(paper_size)) # $NON-NLS-1$
            store_bytes("paper_size_display_name", OS.gtk_paper_size_get_display_name(paper_size)) # $NON-NLS-1$
            store_bytes("paper_size_ppd_name", OS.gtk_paper_size_get_ppd_name(paper_size)) # $NON-NLS-1$
            store("paper_size_width", OS.gtk_paper_size_get_width(paper_size, OS::GTK_UNIT_MM)) # $NON-NLS-1$
            store("paper_size_height", OS.gtk_paper_size_get_height(paper_size, OS::GTK_UNIT_MM)) # $NON-NLS-1$
            store("paper_size_is_custom", OS.gtk_paper_size_is_custom(paper_size)) # $NON-NLS-1$
            data.attr_other_data = @settings_data
            OS.g_object_unref(settings)
            @printer_data = data
          end
        end
        display.set_data(REMOVE_IDLE_PROC_KEY, nil)
        OS.gtk_widget_destroy(@handle)
        return data
      end
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    def _gtk_print_settings_func(key, value, data)
      length = OS.strlen(key)
      key_buffer = Array.typed(::Java::Byte).new(length) { 0 }
      OS.memmove___org_eclipse_swt_printing_print_dialog_5(key_buffer, key, length)
      length = OS.strlen(value)
      value_buffer = Array.typed(::Java::Byte).new(length) { 0 }
      OS.memmove___org_eclipse_swt_printing_print_dialog_7(value_buffer, value, length)
      store(key_buffer, value_buffer)
      return 0
    end
    
    typesig { [String, ::Java::Int] }
    def store(key, value)
      store(key, String.value_of(value))
    end
    
    typesig { [String, ::Java::Double] }
    def store(key, value)
      store(key, String.value_of(value))
    end
    
    typesig { [String, ::Java::Boolean] }
    def store(key, value)
      store(key, String.value_of(value))
    end
    
    typesig { [String, ::Java::Long] }
    # int
    def store_bytes(key, value)
      length = OS.strlen(value)
      value_buffer = Array.typed(::Java::Byte).new(length) { 0 }
      OS.memmove___org_eclipse_swt_printing_print_dialog_9(value_buffer, value, length)
      store(key.get_bytes, value_buffer)
    end
    
    typesig { [String, String] }
    def store(key, value)
      store(key.get_bytes, value.get_bytes)
    end
    
    typesig { [Array.typed(::Java::Byte), Array.typed(::Java::Byte)] }
    def store(key, value)
      length = key.attr_length + 1 + value.attr_length + 1
      if (@index + length + 1 > @settings_data.attr_length)
        new_data = Array.typed(::Java::Byte).new(@settings_data.attr_length + Math.max(length + 1, 1024)) { 0 }
        System.arraycopy(@settings_data, 0, new_data, 0, @settings_data.attr_length)
        @settings_data = new_data
      end
      System.arraycopy(key, 0, @settings_data, @index, key.attr_length)
      @index += key.attr_length + 1 # null terminated
      System.arraycopy(value, 0, @settings_data, @index, value.attr_length)
      @index += value.attr_length + 1 # null terminated
    end
    
    private
    alias_method :initialize__print_dialog, :initialize
  end
  
end
