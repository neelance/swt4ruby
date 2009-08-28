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
  module PrinterDataImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Printing
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class are descriptions of a print job
  # in terms of the printer, and the scope and type of printing
  # that is desired. For example, the number of pages and copies
  # can be specified, as well as whether or not the print job
  # should go to a file.
  # <p>
  # Application code does <em>not</em> need to explicitly release the
  # resources managed by each instance when those instances are no longer
  # required, and thus no <code>dispose()</code> method is provided.
  # </p>
  # 
  # @see Printer
  # @see Printer#getPrinterList
  # @see PrintDialog#open
  # @see <a href="http://www.eclipse.org/swt/snippets/#printing">Printing snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class PrinterData < PrinterDataImports.const_get :DeviceData
    include_class_members PrinterDataImports
    
    # the printer driver
    # On Windows systems, this is the name of the driver (often "winspool").
    # On Mac OSX, this is the destination type ("Printer", "Fax", "File", or "Preview").
    # On X/Window systems, this is the name of a display connection to the
    # Xprt server (the default is ":1").
    # On GTK+, this is the backend type name (eg. GtkPrintBackendCups).
    # 
    # TODO: note that this api is not finalized for GTK+
    attr_accessor :driver
    alias_method :attr_driver, :driver
    undef_method :driver
    alias_method :attr_driver=, :driver=
    undef_method :driver=
    
    # the name of the printer
    # On Windows systems, this is the name of the 'device'.
    # On Mac OSX, X/Window systems, and GTK+, this is the printer's 'name'.
    attr_accessor :name
    alias_method :attr_name, :name
    undef_method :name
    alias_method :attr_name=, :name=
    undef_method :name=
    
    # the scope of the print job, expressed as one of the following values:
    # <dl>
    # <dt><code>ALL_PAGES</code></dt>
    # <dd>Print all pages in the current document</dd>
    # <dt><code>PAGE_RANGE</code></dt>
    # <dd>Print the range of pages specified by startPage and endPage</dd>
    # <dt><code>SELECTION</code></dt>
    # <dd>Print the current selection</dd>
    # </dl>
    attr_accessor :scope
    alias_method :attr_scope, :scope
    undef_method :scope
    alias_method :attr_scope=, :scope=
    undef_method :scope=
    
    # the start page of a page range, used when scope is PAGE_RANGE.
    # This value can be from 1 to the maximum number of pages for the platform.
    attr_accessor :start_page
    alias_method :attr_start_page, :start_page
    undef_method :start_page
    alias_method :attr_start_page=, :start_page=
    undef_method :start_page=
    
    # the end page of a page range, used when scope is PAGE_RANGE.
    # This value can be from 1 to the maximum number of pages for the platform.
    attr_accessor :end_page
    alias_method :attr_end_page, :end_page
    undef_method :end_page
    alias_method :attr_end_page=, :end_page=
    undef_method :end_page=
    
    # whether or not the print job should go to a file
    attr_accessor :print_to_file
    alias_method :attr_print_to_file, :print_to_file
    undef_method :print_to_file
    alias_method :attr_print_to_file=, :print_to_file=
    undef_method :print_to_file=
    
    # the name of the file to print to if printToFile is true.
    # Note that this field is ignored if printToFile is false.
    attr_accessor :file_name
    alias_method :attr_file_name, :file_name
    undef_method :file_name
    alias_method :attr_file_name=, :file_name=
    undef_method :file_name=
    
    # the number of copies to print.
    # Note that this field may be controlled by the printer driver
    # In other words, the printer itself may be capable of printing
    # multiple copies, and if so, the value of this field will always be 1.
    attr_accessor :copy_count
    alias_method :attr_copy_count, :copy_count
    undef_method :copy_count
    alias_method :attr_copy_count=, :copy_count=
    undef_method :copy_count=
    
    # whether or not the printer should collate the printed paper
    # Note that this field may be controlled by the printer driver.
    # In other words, the printer itself may be capable of doing the
    # collation, and if so, the value of this field will always be false.
    attr_accessor :collate
    alias_method :attr_collate, :collate
    undef_method :collate
    alias_method :attr_collate=, :collate=
    undef_method :collate=
    
    class_module.module_eval {
      # <code>scope</code> field value indicating that
      # all pages should be printed
      const_set_lazy(:ALL_PAGES) { 0 }
      const_attr_reader  :ALL_PAGES
      
      # <code>scope</code> field value indicating that
      # the range of pages specified by startPage and endPage
      # should be printed
      const_set_lazy(:PAGE_RANGE) { 1 }
      const_attr_reader  :PAGE_RANGE
      
      # <code>scope</code> field value indicating that
      # the current selection should be printed
      const_set_lazy(:SELECTION) { 2 }
      const_attr_reader  :SELECTION
    }
    
    # private, platform-specific data
    # On Windows, this contains a copy of the DEVMODE struct
    # returned from the <code>PrintDialog</code>.
    # On GTK, this contains a copy of the print_settings and page_setup
    # returned from the <code>PrintDialog</code>.
    # On OS X Carbon, this contains a copy of the PrintSettings and PageFormat
    # returned from the <code>PrintDialog</code>.
    # This field is not currently used on the X/Window System.
    attr_accessor :other_data
    alias_method :attr_other_data, :other_data
    undef_method :other_data
    alias_method :attr_other_data=, :other_data=
    undef_method :other_data=
    
    typesig { [] }
    # Constructs an instance of this class that can be
    # used to print to the default printer.
    # 
    # @see Printer#getDefaultPrinterData
    def initialize
      @driver = nil
      @name = nil
      @scope = 0
      @start_page = 0
      @end_page = 0
      @print_to_file = false
      @file_name = nil
      @copy_count = 0
      @collate = false
      @other_data = nil
      super()
      @scope = ALL_PAGES
      @start_page = 0
      @end_page = 0
      @print_to_file = false
      @copy_count = 1
      @collate = false
    end
    
    typesig { [String, String] }
    # Constructs an instance of this class with the given
    # printer driver and printer name.
    # 
    # @param driver the printer driver for the printer
    # @param name the name of the printer
    # 
    # @see #driver
    # @see #name
    def initialize(driver, name)
      @driver = nil
      @name = nil
      @scope = 0
      @start_page = 0
      @end_page = 0
      @print_to_file = false
      @file_name = nil
      @copy_count = 0
      @collate = false
      @other_data = nil
      super()
      @scope = ALL_PAGES
      @start_page = 0
      @end_page = 0
      @print_to_file = false
      @copy_count = 1
      @collate = false
      @driver = driver
      @name = name
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the receiver
    def to_s
      return "PrinterData {" + "driver = " + @driver + ", name = " + @name + "}" # $NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$ //$NON-NLS-4$
    end
    
    private
    alias_method :initialize__printer_data, :initialize
  end
  
end
