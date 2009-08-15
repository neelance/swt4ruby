require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Layout
  module RowDataImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Layout
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Each control controlled by a <code>RowLayout</code> can have its initial
  # width and height specified by setting a <code>RowData</code> object
  # into the control.
  # <p>
  # The following code uses a <code>RowData</code> object to change the initial
  # size of a <code>Button</code> in a <code>Shell</code>:
  # <pre>
  # Display display = new Display();
  # Shell shell = new Shell(display);
  # shell.setLayout(new RowLayout());
  # Button button1 = new Button(shell, SWT.PUSH);
  # button1.setText("Button 1");
  # button1.setLayoutData(new RowData(50, 40));
  # </pre>
  # </p>
  # 
  # @see RowLayout
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class RowData 
    include_class_members RowDataImports
    
    # width specifies the desired width in pixels. This value
    # is the wHint passed into Control.computeSize(int, int, boolean)
    # to determine the preferred size of the control.
    # 
    # The default value is SWT.DEFAULT.
    # 
    # @see org.eclipse.swt.widgets.Control#computeSize(int, int, boolean)
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    # height specifies the preferred height in pixels. This value
    # is the hHint passed into Control.computeSize(int, int, boolean)
    # to determine the preferred size of the control.
    # 
    # The default value is SWT.DEFAULT.
    # 
    # @see org.eclipse.swt.widgets.Control#computeSize(int, int, boolean)
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    # exclude informs the layout to ignore this control when sizing
    # and positioning controls.  If this value is <code>true</code>,
    # the size and position of the control will not be managed by the
    # layout.  If this	value is <code>false</code>, the size and
    # position of the control will be computed and assigned.
    # 
    # The default value is <code>false</code>.
    # 
    # @since 3.1
    attr_accessor :exclude
    alias_method :attr_exclude, :exclude
    undef_method :exclude
    alias_method :attr_exclude=, :exclude=
    undef_method :exclude=
    
    typesig { [] }
    # Constructs a new instance of RowData using
    # default values.
    def initialize
      @width = SWT::DEFAULT
      @height = SWT::DEFAULT
      @exclude = false
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Constructs a new instance of RowData according to the parameters.
    # A value of SWT.DEFAULT indicates that no minimum width or
    # no minimum height is specified.
    # 
    # @param width a minimum width for the control
    # @param height a minimum height for the control
    def initialize(width, height)
      @width = SWT::DEFAULT
      @height = SWT::DEFAULT
      @exclude = false
      @width = width
      @height = height
    end
    
    typesig { [Point] }
    # Constructs a new instance of RowData according to the parameter.
    # A value of SWT.DEFAULT indicates that no minimum width or
    # no minimum height is specified.
    # 
    # @param point a point whose x coordinate specifies a minimum width for the control
    # and y coordinate specifies a minimum height for the control
    def initialize(point)
      initialize__row_data(point.attr_x, point.attr_y)
    end
    
    typesig { [] }
    def get_name
      string = get_class.get_name
      index = string.last_index_of(Character.new(?..ord))
      if ((index).equal?(-1))
        return string
      end
      return string.substring(index + 1, string.length)
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the RowData object
    def to_s
      string = RJava.cast_to_string(get_name) + " {"
      if (!(@width).equal?(SWT::DEFAULT))
        string += "width=" + RJava.cast_to_string(@width) + " "
      end
      if (!(@height).equal?(SWT::DEFAULT))
        string += "height=" + RJava.cast_to_string(@height) + " "
      end
      if (@exclude)
        string += "exclude=" + RJava.cast_to_string(@exclude) + " "
      end
      string = RJava.cast_to_string(string.trim)
      string += "}"
      return string
    end
    
    private
    alias_method :initialize__row_data, :initialize
  end
  
end
