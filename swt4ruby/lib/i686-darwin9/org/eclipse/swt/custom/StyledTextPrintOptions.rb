require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module StyledTextPrintOptionsImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
    }
  end
  
  # Use StyledTextPrintOptions to specify printing options for the
  # StyledText.print(Printer, StyledTextPrintOptions) API.
  # <p>
  # The following example prints a right aligned page number in the footer,
  # sets the job name to "Example" and prints line background colors but no other
  # formatting:
  # </p>
  # <pre>
  # StyledTextPrintOptions options = new StyledTextPrintOptions();
  # options.footer = "\t\t&lt;page&gt;";
  # options.jobName = "Example";
  # options.printLineBackground = true;
  # 
  # Runnable runnable = styledText.print(new Printer(), options);
  # runnable.run();
  # </pre>
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 2.1
  class StyledTextPrintOptions 
    include_class_members StyledTextPrintOptionsImports
    
    class_module.module_eval {
      # Page number placeholder constant for use in <code>header</code>
      # and <code>footer</code>. Value is <code>&lt;page&gt;</code>
      const_set_lazy(:PAGE_TAG) { "<page>" }
      const_attr_reader  :PAGE_TAG
      
      # Separator constant for use in <code>header</code> and
      # <code>footer</code>. Value is <code>\t</code>
      const_set_lazy(:SEPARATOR) { "\t" }
      const_attr_reader  :SEPARATOR
    }
    
    # Formatted text to print in the header of each page.
    # <p>"left '\t' center '\t' right"</p>
    # <p>left, center, right = &lt;page&gt; | #CDATA</p>
    # <p>Header and footer are defined as three separate regions for arbitrary
    # text or the page number placeholder &lt;page&gt;
    # (<code>StyledTextPrintOptions.PAGE_TAG</code>). The three regions are
    # left aligned, centered and right aligned. They are separated by a tab
    # character (<code>StyledTextPrintOptions.SEPARATOR</code>).
    attr_accessor :header
    alias_method :attr_header, :header
    undef_method :header
    alias_method :attr_header=, :header=
    undef_method :header=
    
    # Formatted text to print in the footer of each page.
    # <p>"left '\t' center '\t' right"</p>
    # <p>left, center, right = &lt;page&gt; | #CDATA</p>
    # <p>Header and footer are defined as three separate regions for arbitrary
    # text or the page number placeholder &lt;page&gt;
    # (<code>StyledTextPrintOptions.PAGE_TAG</code>). The three regions are
    # left aligned, centered and right aligned. They are separated by a tab
    # character (<code>StyledTextPrintOptions.SEPARATOR</code>).
    attr_accessor :footer
    alias_method :attr_footer, :footer
    undef_method :footer
    alias_method :attr_footer=, :footer=
    undef_method :footer=
    
    # Name of the print job.
    attr_accessor :job_name
    alias_method :attr_job_name, :job_name
    undef_method :job_name
    alias_method :attr_job_name=, :job_name=
    undef_method :job_name=
    
    # Print the text foreground color. Default value is <code>false</code>.
    attr_accessor :print_text_foreground
    alias_method :attr_print_text_foreground, :print_text_foreground
    undef_method :print_text_foreground
    alias_method :attr_print_text_foreground=, :print_text_foreground=
    undef_method :print_text_foreground=
    
    # Print the text background color. Default value is <code>false</code>.
    attr_accessor :print_text_background
    alias_method :attr_print_text_background, :print_text_background
    undef_method :print_text_background
    alias_method :attr_print_text_background=, :print_text_background=
    undef_method :print_text_background=
    
    # Print the font styles. Default value is <code>false</code>.
    attr_accessor :print_text_font_style
    alias_method :attr_print_text_font_style, :print_text_font_style
    undef_method :print_text_font_style
    alias_method :attr_print_text_font_style=, :print_text_font_style=
    undef_method :print_text_font_style=
    
    # Print the line background color. Default value is <code>false</code>.
    attr_accessor :print_line_background
    alias_method :attr_print_line_background, :print_line_background
    undef_method :print_line_background
    alias_method :attr_print_line_background=, :print_line_background=
    undef_method :print_line_background=
    
    # Print line numbers. Default value is <code>false</code>.
    # 
    # @since 3.3
    attr_accessor :print_line_numbers
    alias_method :attr_print_line_numbers, :print_line_numbers
    undef_method :print_line_numbers
    alias_method :attr_print_line_numbers=, :print_line_numbers=
    undef_method :print_line_numbers=
    
    # Labels used for printing line numbers.
    # 
    # @since 3.4
    attr_accessor :line_labels
    alias_method :attr_line_labels, :line_labels
    undef_method :line_labels
    alias_method :attr_line_labels=, :line_labels=
    undef_method :line_labels=
    
    typesig { [] }
    def initialize
      @header = nil
      @footer = nil
      @job_name = nil
      @print_text_foreground = false
      @print_text_background = false
      @print_text_font_style = false
      @print_line_background = false
      @print_line_numbers = false
      @line_labels = nil
    end
    
    private
    alias_method :initialize__styled_text_print_options, :initialize
  end
  
end
