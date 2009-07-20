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
  module StackLayoutImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # This Layout stacks all the controls one on top of the other and resizes all controls
  # to have the same size and location.
  # The control specified in topControl is visible and all other controls are not visible.
  # Users must set the topControl value to flip between the visible items and then call
  # layout() on the composite which has the StackLayout.
  # 
  # <p> Here is an example which places ten buttons in a stack layout and
  # flips between them:
  # 
  # <pre><code>
  # public static void main(String[] args) {
  # Display display = new Display();
  # Shell shell = new Shell(display);
  # shell.setLayout(new GridLayout());
  # 
  # final Composite parent = new Composite(shell, SWT.NONE);
  # parent.setLayoutData(new GridData(GridData.FILL_BOTH));
  # final StackLayout layout = new StackLayout();
  # parent.setLayout(layout);
  # final Button[] bArray = new Button[10];
  # for (int i = 0; i &lt; 10; i++) {
  # bArray[i] = new Button(parent, SWT.PUSH);
  # bArray[i].setText("Button "+i);
  # }
  # layout.topControl = bArray[0];
  # 
  # Button b = new Button(shell, SWT.PUSH);
  # b.setText("Show Next Button");
  # final int[] index = new int[1];
  # b.addListener(SWT.Selection, new Listener(){
  # public void handleEvent(Event e) {
  # index[0] = (index[0] + 1) % 10;
  # layout.topControl = bArray[index[0]];
  # parent.layout();
  # }
  # });
  # 
  # shell.open();
  # while (shell != null && !shell.isDisposed()) {
  # if (!display.readAndDispatch())
  # display.sleep();
  # }
  # }
  # </code></pre>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#stacklayout">StackLayout snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: LayoutExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class StackLayout < StackLayoutImports.const_get :SwtLayout
    include_class_members StackLayoutImports
    
    # marginWidth specifies the number of pixels of horizontal margin
    # that will be placed along the left and right edges of the layout.
    # 
    # The default value is 0.
    attr_accessor :margin_width
    alias_method :attr_margin_width, :margin_width
    undef_method :margin_width
    alias_method :attr_margin_width=, :margin_width=
    undef_method :margin_width=
    
    # marginHeight specifies the number of pixels of vertical margin
    # that will be placed along the top and bottom edges of the layout.
    # 
    # The default value is 0.
    attr_accessor :margin_height
    alias_method :attr_margin_height, :margin_height
    undef_method :margin_height
    alias_method :attr_margin_height=, :margin_height=
    undef_method :margin_height=
    
    # topControl the Control that is displayed at the top of the stack.
    # All other controls that are children of the parent composite will not be visible.
    attr_accessor :top_control
    alias_method :attr_top_control, :top_control
    undef_method :top_control
    alias_method :attr_top_control=, :top_control=
    undef_method :top_control=
    
    typesig { [Composite, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(composite, w_hint, h_hint, flush_cache)
      children = composite.get_children
      max_width = 0
      max_height = 0
      i = 0
      while i < children.attr_length
        size = children[i].compute_size(w_hint, h_hint, flush_cache)
        max_width = Math.max(size.attr_x, max_width)
        max_height = Math.max(size.attr_y, max_height)
        ((i += 1) - 1)
      end
      width = max_width + 2 * @margin_width
      height = max_height + 2 * @margin_height
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint
      end
      return Point.new(width, height)
    end
    
    typesig { [Control] }
    def flush_cache(control)
      return true
    end
    
    typesig { [Composite, ::Java::Boolean] }
    def layout(composite, flush_cache)
      children = composite.get_children
      rect = composite.get_client_area
      rect.attr_x += @margin_width
      rect.attr_y += @margin_height
      rect.attr_width -= 2 * @margin_width
      rect.attr_height -= 2 * @margin_height
      i = 0
      while i < children.attr_length
        children[i].set_bounds(rect)
        children[i].set_visible((children[i]).equal?(@top_control))
        ((i += 1) - 1)
      end
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
    # @return a string representation of the layout
    def to_s
      string = (get_name).to_s + " {"
      if (!(@margin_width).equal?(0))
        string += "marginWidth=" + (@margin_width).to_s + " "
      end
      if (!(@margin_height).equal?(0))
        string += "marginHeight=" + (@margin_height).to_s + " "
      end
      if (!(@top_control).nil?)
        string += "topControl=" + (@top_control).to_s + " "
      end
      string = (string.trim).to_s
      string += "}"
      return string
    end
    
    typesig { [] }
    def initialize
      @margin_width = 0
      @margin_height = 0
      @top_control = nil
      super()
      @margin_width = 0
      @margin_height = 0
    end
    
    private
    alias_method :initialize__stack_layout, :initialize
  end
  
end
