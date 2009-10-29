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
      include_const ::Org::Eclipse::Swt::Printing, :PrinterData
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
    
    attr_accessor :return_code
    alias_method :attr_return_code, :return_code
    undef_method :return_code
    alias_method :attr_return_code=, :return_code=
    undef_method :return_code=
    
    class_module.module_eval {
      # the following Callbacks are never freed
      
      def dialog_callback5
        defined?(@@dialog_callback5) ? @@dialog_callback5 : @@dialog_callback5= nil
      end
      alias_method :attr_dialog_callback5, :dialog_callback5
      
      def dialog_callback5=(value)
        @@dialog_callback5 = value
      end
      alias_method :attr_dialog_callback5=, :dialog_callback5=
      
      const_set_lazy(:SWT_OBJECT) { Array.typed(::Java::Byte).new([Character.new(?S.ord), Character.new(?W.ord), Character.new(?T.ord), Character.new(?_.ord), Character.new(?O.ord), Character.new(?B.ord), Character.new(?J.ord), Character.new(?E.ord), Character.new(?C.ord), Character.new(?T.ord), Character.new(?\0.ord)]) }
      const_attr_reader  :SWT_OBJECT
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
      @return_code = 0
      super(parent, check_style(parent, style))
      @printer_data = PrinterData.new
      check_subclass
    end
    
    class_module.module_eval {
      typesig { [Shell, ::Java::Int] }
      def check_style(parent, style)
        mask = SWT::PRIMARY_MODAL | SWT::APPLICATION_MODAL | SWT::SYSTEM_MODAL
        if (!((style & SWT::SHEET)).equal?(0))
          if (get_sheet_enabled)
            if ((parent).nil?)
              style &= ~SWT::SHEET
            end
          else
            style &= ~SWT::SHEET
          end
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
    # @return a printer data object describing the desired print job parameters,
    # or null if the dialog was canceled, no printers were found, or an error occurred
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def open
      data = nil
      panel = NSPrintPanel.print_panel
      print_info = NSPrintInfo.new(NSPrintInfo.shared_print_info.copy)
      print_info.set_orientation((@printer_data.attr_orientation).equal?(PrinterData::LANDSCAPE) ? OS::NSLandscapeOrientation : OS::NSPortraitOrientation)
      dict = print_info.dictionary
      dict.set_value(NSNumber.number_with_bool(@printer_data.attr_collate), OS::NSPrintMustCollate)
      dict.set_value(NSNumber.number_with_int(@printer_data.attr_copy_count), OS::NSPrintCopies)
      if (@printer_data.attr_print_to_file)
        dict.set_value(OS::NSPrintSaveJob, OS::NSPrintJobDisposition)
      end
      if (!(@printer_data.attr_file_name).nil? && @printer_data.attr_file_name.length > 0)
        dict.set_value(NSString.string_with(@printer_data.attr_file_name), OS::NSPrintSavePath)
      end
      dict.set_value(NSNumber.number_with_bool((@printer_data.attr_scope).equal?(PrinterData::ALL_PAGES)), OS::NSPrintAllPages)
      if ((@printer_data.attr_scope).equal?(PrinterData::PAGE_RANGE))
        dict.set_value(NSNumber.number_with_int(@printer_data.attr_start_page), OS::NSPrintFirstPage)
        dict.set_value(NSNumber.number_with_int(@printer_data.attr_end_page), OS::NSPrintLastPage)
      end
      panel.set_options(OS::NSPrintPanelShowsPageSetupAccessory | panel.options)
      response = 0
      if (!((get_style & SWT::SHEET)).equal?(0))
        init_classes
        delegate = SWTPrintPanelDelegate.new.alloc.init
        # long
        jni_ref = OS._new_global_ref(self)
        if ((jni_ref).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        OS.object_set_instance_variable(delegate.attr_id, SWT_OBJECT, jni_ref)
        @return_code = -1
        parent = get_parent
        panel.begin_sheet_with_print_info(print_info, parent.attr_view.window, delegate, OS.attr_sel_panel_did_end_return_code_context_info_, 0)
        application = NSApplication.shared_application
        while ((@return_code).equal?(-1))
          application.run
        end
        if (!(delegate).nil?)
          delegate.release
        end
        if (!(jni_ref).equal?(0))
          OS._delete_global_ref(jni_ref)
        end
        response = @return_code
      else
        # 64
        response = RJava.cast_to_int(panel.run_modal_with_print_info(print_info))
      end
      if (!(response).equal?(OS::NSCancelButton))
        printer_ = print_info.printer
        str = printer_.name
        data = PrinterData.new(Printer::DRIVER, str.get_string)
        data.attr_print_to_file = print_info.job_disposition.is_equal(OS::NSPrintSaveJob)
        if (data.attr_print_to_file)
          filename = NSString.new(dict.object_for_key(OS::NSPrintSavePath))
          data.attr_file_name = filename.get_string
        end
        data.attr_scope = !(NSNumber.new(dict.object_for_key(OS::NSPrintAllPages)).int_value).equal?(0) ? PrinterData::ALL_PAGES : PrinterData::PAGE_RANGE
        if ((data.attr_scope).equal?(PrinterData::PAGE_RANGE))
          data.attr_start_page = NSNumber.new(dict.object_for_key(OS::NSPrintFirstPage)).int_value
          data.attr_end_page = NSNumber.new(dict.object_for_key(OS::NSPrintLastPage)).int_value
        end
        data.attr_collate = !(NSNumber.new(dict.object_for_key(OS::NSPrintMustCollate)).int_value).equal?(0)
        data.attr_collate = false # TODO: Only set to false if the printer does the collate internally (most printers do)
        data.attr_copy_count = NSNumber.new(dict.object_for_key(OS::NSPrintCopies)).int_value
        data.attr_copy_count = 1 # TODO: Only set to 1 if the printer does the copy internally (most printers do)
        data.attr_orientation = (print_info.orientation).equal?(OS::NSLandscapeOrientation) ? PrinterData::LANDSCAPE : PrinterData::PORTRAIT
        ns_data = NSKeyedArchiver.archived_data_with_root_object(print_info)
        # 64
        data.attr_other_data = Array.typed(::Java::Byte).new(RJava.cast_to_int(ns_data.length)) { 0 }
        OS.memmove___org_eclipse_swt_printing_print_dialog_1(data.attr_other_data, ns_data.bytes, data.attr_other_data.attr_length)
        @printer_data = data
      end
      print_info.release
      return data
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
    
    class_module.module_eval {
      typesig { [] }
      def get_sheet_enabled
        return !("false" == System.get_property("org.eclipse.swt.sheet"))
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      # long
      def dialog_proc(id, sel, arg0, arg1, arg2)
        # long
        # long
        jni_ref = Array.typed(::Java::Int).new(1) { 0 }
        OS.object_get_instance_variable(id, SWT_OBJECT, jni_ref)
        if ((jni_ref[0]).equal?(0))
          return 0
        end
        if ((sel).equal?(OS.attr_sel_panel_did_end_return_code_context_info_))
          dialog = OS._jniget_object(jni_ref[0])
          if ((dialog).nil?)
            return 0
          end
          dialog.panel_did_end_return_code_context_info(id, sel, arg0, arg1, arg2)
        end
        return 0
      end
    }
    
    typesig { [] }
    def init_classes
      class_name = "SWTPrintPanelDelegate"
      if (!(OS.objc_look_up_class(class_name)).equal?(0))
        return
      end
      self.attr_dialog_callback5 = Callback.new(get_class, "dialogProc", 5)
      # long
      dialog_proc5 = self.attr_dialog_callback5.get_address
      if ((dialog_proc5).equal?(0))
        SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
      end
      types = Array.typed(::Java::Byte).new([Character.new(?*.ord), Character.new(?\0.ord)])
      size = C::PTR_SIZEOF
      align = (C::PTR_SIZEOF).equal?(4) ? 2 : 3
      # long
      cls = OS.objc_allocate_class_pair(OS.attr_class_nsobject, class_name, 0)
      OS.class_add_ivar(cls, SWT_OBJECT, size, align, types)
      OS.class_add_method(cls, OS.attr_sel_panel_did_end_return_code_context_info_, dialog_proc5, "@:@i@")
      OS.objc_register_class_pair(cls)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def panel_did_end_return_code_context_info(id, sel, alert, return_code, context_info)
      # 64
      @return_code = RJava.cast_to_int(return_code)
      application = NSApplication.shared_application
      application.stop(nil)
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
      name_ = get_class.get_name
      valid_name = PrintDialog.get_name
      if (!(valid_name == name_))
        SWT.error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    private
    alias_method :initialize__print_dialog, :initialize
  end
  
end
