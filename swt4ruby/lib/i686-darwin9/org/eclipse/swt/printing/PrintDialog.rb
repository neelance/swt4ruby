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
  module PrintDialogImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Printing
      include ::Org::Eclipse::Swt
      include_const ::Org::Eclipse::Swt::Printing, :PrinterData
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
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
  class PrintDialog < PrintDialogImports.const_get :Dialog
    include_class_members PrintDialogImports
    
    attr_accessor :printer_data
    alias_method :attr_printer_data, :printer_data
    undef_method :printer_data
    alias_method :attr_printer_data=, :printer_data=
    undef_method :printer_data=
    
    attr_accessor :scope
    alias_method :attr_scope, :scope
    undef_method :scope
    alias_method :attr_scope=, :scope=
    undef_method :scope=
    
    attr_accessor :start_page
    alias_method :attr_start_page, :start_page
    undef_method :start_page
    alias_method :attr_start_page=, :start_page=
    undef_method :start_page=
    
    attr_accessor :end_page
    alias_method :attr_end_page, :end_page
    undef_method :end_page
    alias_method :attr_end_page=, :end_page=
    undef_method :end_page=
    
    attr_accessor :print_to_file
    alias_method :attr_print_to_file, :print_to_file
    undef_method :print_to_file
    alias_method :attr_print_to_file=, :print_to_file=
    undef_method :print_to_file=
    
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
      @scope = 0
      @start_page = 0
      @end_page = 0
      @print_to_file = false
      super(parent, style)
      @scope = PrinterData::ALL_PAGES
      @start_page = 1
      @end_page = 1
      @print_to_file = false
      check_subclass
    end
    
    typesig { [PrinterData] }
    # Sets the printer data that will be used when the dialog
    # is opened.
    # 
    # @param data the data that will be used when the dialog is opened
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
    
    typesig { [] }
    # Makes the receiver visible and brings it to the front
    # of the display.
    # 
    # @return a printer data object describing the desired print job parameters
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def open
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      if ((OS._pmcreate_session(buffer)).equal?(OS.attr_no_err))
        print_session = buffer[0]
        if ((OS._pmcreate_print_settings(buffer)).equal?(OS.attr_no_err))
          print_settings = buffer[0]
          OS._pmsession_default_print_settings(print_session, print_settings)
          if ((OS._pmcreate_page_format(buffer)).equal?(OS.attr_no_err))
            page_format = buffer[0]
            OS._pmsession_default_page_format(print_session, page_format)
            OS._pmsession_set_destination(print_session, print_settings, RJava.cast_to_short((@print_to_file ? OS.attr_k_pmdestination_file : OS.attr_k_pmdestination_printer)), 0, 0)
            if ((@scope).equal?(PrinterData::PAGE_RANGE))
              OS._pmset_first_page(print_settings, @start_page, false)
              OS._pmset_last_page(print_settings, @end_page, false)
              OS._pmset_page_range(print_settings, @start_page, @end_page)
            else
              OS._pmset_page_range(print_settings, 1, OS.attr_k_pmprint_all_pages)
            end
            accepted = Array.typed(::Java::Boolean).new(1) { false }
            OS._pmsession_page_setup_dialog(print_session, page_format, accepted)
            if (accepted[0])
              OS._pmsession_print_dialog(print_session, print_settings, page_format, accepted)
              if (accepted[0])
                dest_type = Array.typed(::Java::Short).new(1) { 0 }
                OS._pmsession_get_destination_type(print_session, print_settings, dest_type)
                name = Printer.get_current_printer_name(print_session)
                driver = Printer::DRIVER
                case (dest_type[0])
                when OS.attr_k_pmdestination_fax
                  driver = RJava.cast_to_string(Printer::FAX_DRIVER)
                when OS.attr_k_pmdestination_file
                  driver = RJava.cast_to_string(Printer::FILE_DRIVER)
                when OS.attr_k_pmdestination_preview
                  driver = RJava.cast_to_string(Printer::PREVIEW_DRIVER)
                when OS.attr_k_pmdestination_printer
                  driver = RJava.cast_to_string(Printer::PRINTER_DRIVER)
                end
                data = PrinterData.new(driver, name)
                if ((dest_type[0]).equal?(OS.attr_k_pmdestination_file))
                  data.attr_print_to_file = true
                  OS._pmsession_copy_destination_location(print_session, print_settings, buffer)
                  file_name = OS._cfurlcopy_file_system_path(buffer[0], OS.attr_k_cfurlposixpath_style)
                  OS._cfrelease(buffer[0])
                  data.attr_file_name = Printer.get_string(file_name)
                  OS._cfrelease(file_name)
                end
                OS._pmget_copies(print_settings, buffer)
                data.attr_copy_count = buffer[0]
                OS._pmget_first_page(print_settings, buffer)
                data.attr_start_page = buffer[0]
                OS._pmget_last_page(print_settings, buffer)
                data.attr_end_page = buffer[0]
                OS._pmget_page_range(print_settings, nil, buffer)
                if ((data.attr_start_page).equal?(1) && (data.attr_end_page).equal?(OS.attr_k_pmprint_all_pages))
                  data.attr_scope = PrinterData::ALL_PAGES
                else
                  data.attr_scope = PrinterData::PAGE_RANGE
                end
                collate = Array.typed(::Java::Boolean).new(1) { false }
                OS._pmget_collate(print_settings, collate)
                data.attr_collate = collate[0]
                # Serialize settings
                flat_settings = Array.typed(::Java::Int).new(1) { 0 }
                OS._pmflatten_print_settings(print_settings, flat_settings)
                flat_format = Array.typed(::Java::Int).new(1) { 0 }
                OS._pmflatten_page_format(page_format, flat_format)
                settings_length = OS._get_handle_size(flat_settings[0])
                format_length = OS._get_handle_size(flat_format[0])
                other_data = data.attr_other_data = Array.typed(::Java::Byte).new(settings_length + format_length + 8) { 0 }
                offset = 0
                offset = Printer.pack_data(flat_settings[0], other_data, offset)
                offset = Printer.pack_data(flat_format[0], other_data, offset)
                OS._dispose_handle(flat_settings[0])
                OS._dispose_handle(flat_format[0])
                @scope = data.attr_scope
                @start_page = data.attr_start_page
                @end_page = data.attr_end_page
                @print_to_file = data.attr_print_to_file
                return data
              end
            end
            OS._pmrelease(page_format)
          end
          OS._pmrelease(print_settings)
        end
        OS._pmrelease(print_session)
      end
      return nil
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
      return @scope
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
      @scope = scope
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
      return @start_page
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
      @start_page = start_page
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
      return @end_page
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
      @end_page = end_page
    end
    
    typesig { [] }
    # Returns the 'Print to file' setting that the user selected
    # before pressing OK in the dialog.
    # 
    # @return the 'Print to file' setting that the user selected
    def get_print_to_file
      return @print_to_file
    end
    
    typesig { [::Java::Boolean] }
    # Sets the 'Print to file' setting that the user will see
    # when the dialog is opened.
    # 
    # @param printToFile the 'Print to file' setting when the dialog is opened
    def set_print_to_file(print_to_file)
      @print_to_file = print_to_file
    end
    
    typesig { [] }
    def check_subclass
      name = get_class.get_name
      valid_name = PrintDialog.get_name
      if (!(valid_name == name))
        SWT.error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    private
    alias_method :initialize__print_dialog, :initialize
  end
  
end
