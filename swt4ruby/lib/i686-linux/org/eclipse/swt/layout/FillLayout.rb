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
  module FillLayoutImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Layout
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # <code>FillLayout</code> is the simplest layout class. It lays out
  # controls in a single row or column, forcing them to be the same size.
  # <p>
  # Initially, the controls will all be as tall as the tallest control,
  # and as wide as the widest. <code>FillLayout</code> does not wrap,
  # but you can specify margins and spacing. You might use it to
  # lay out buttons in a task bar or tool bar, or to stack checkboxes
  # in a <code>Group</code>. <code>FillLayout</code> can also be used
  # when a <code>Composite</code> only has one child. For example,
  # if a <code>Shell</code> has a single <code>Group</code> child,
  # <code>FillLayout</code> will cause the <code>Group</code> to
  # completely fill the <code>Shell</code> (if margins are 0).
  # </p>
  # <p>
  # Example code: first a <code>FillLayout</code> is created and
  # its type field is set, and then the layout is set into the
  # <code>Composite</code>. Note that in a <code>FillLayout</code>,
  # children are always the same size, and they fill all available space.
  # <pre>
  # FillLayout fillLayout = new FillLayout();
  # fillLayout.type = SWT.VERTICAL;
  # shell.setLayout(fillLayout);
  # </pre>
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: LayoutExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class FillLayout < FillLayoutImports.const_get :SwtLayout
    include_class_members FillLayoutImports
    
    # type specifies how controls will be positioned
    # within the layout.
    # 
    # The default value is HORIZONTAL.
    # 
    # Possible values are: <ul>
    # <li>HORIZONTAL: Position the controls horizontally from left to right</li>
    # <li>VERTICAL: Position the controls vertically from top to bottom</li>
    # </ul>
    attr_accessor :type
    alias_method :attr_type, :type
    undef_method :type
    alias_method :attr_type=, :type=
    undef_method :type=
    
    # marginWidth specifies the number of pixels of horizontal margin
    # that will be placed along the left and right edges of the layout.
    # 
    # The default value is 0.
    # 
    # @since 3.0
    attr_accessor :margin_width
    alias_method :attr_margin_width, :margin_width
    undef_method :margin_width
    alias_method :attr_margin_width=, :margin_width=
    undef_method :margin_width=
    
    # marginHeight specifies the number of pixels of vertical margin
    # that will be placed along the top and bottom edges of the layout.
    # 
    # The default value is 0.
    # 
    # @since 3.0
    attr_accessor :margin_height
    alias_method :attr_margin_height, :margin_height
    undef_method :margin_height
    alias_method :attr_margin_height=, :margin_height=
    undef_method :margin_height=
    
    # spacing specifies the number of pixels between the edge of one cell
    # and the edge of its neighbouring cell.
    # 
    # The default value is 0.
    # 
    # @since 3.0
    attr_accessor :spacing
    alias_method :attr_spacing, :spacing
    undef_method :spacing
    alias_method :attr_spacing=, :spacing=
    undef_method :spacing=
    
    typesig { [] }
    # Constructs a new instance of this class.
    def initialize
      @type = 0
      @margin_width = 0
      @margin_height = 0
      @spacing = 0
      super()
      @type = SWT::HORIZONTAL
      @margin_width = 0
      @margin_height = 0
      @spacing = 0
    end
    
    typesig { [::Java::Int] }
    # Constructs a new instance of this class given the type.
    # 
    # @param type the type of fill layout
    # 
    # @since 2.0
    def initialize(type)
      @type = 0
      @margin_width = 0
      @margin_height = 0
      @spacing = 0
      super()
      @type = SWT::HORIZONTAL
      @margin_width = 0
      @margin_height = 0
      @spacing = 0
      @type = type
    end
    
    typesig { [Composite, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(composite, w_hint, h_hint, flush_cache)
      children = composite.get_children
      count = children.attr_length
      max_width = 0
      max_height = 0
      i = 0
      while i < count
        child = children[i]
        w = w_hint
        h = h_hint
        if (count > 0)
          if ((@type).equal?(SWT::HORIZONTAL) && !(w_hint).equal?(SWT::DEFAULT))
            w = Math.max(0, (w_hint - (count - 1) * @spacing) / count)
          end
          if ((@type).equal?(SWT::VERTICAL) && !(h_hint).equal?(SWT::DEFAULT))
            h = Math.max(0, (h_hint - (count - 1) * @spacing) / count)
          end
        end
        size = compute_child_size(child, w, h, flush_cache)
        max_width = Math.max(max_width, size.attr_x)
        max_height = Math.max(max_height, size.attr_y)
        i += 1
      end
      width = 0
      height = 0
      if ((@type).equal?(SWT::HORIZONTAL))
        width = count * max_width
        if (!(count).equal?(0))
          width += (count - 1) * @spacing
        end
        height = max_height
      else
        width = max_width
        height = count * max_height
        if (!(count).equal?(0))
          height += (count - 1) * @spacing
        end
      end
      width += @margin_width * 2
      height += @margin_height * 2
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint
      end
      return Point.new(width, height)
    end
    
    typesig { [Control, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_child_size(control, w_hint, h_hint, flush_cache)
      data = control.get_layout_data
      if ((data).nil?)
        data = FillData.new
        control.set_layout_data(data)
      end
      size = nil
      if ((w_hint).equal?(SWT::DEFAULT) && (h_hint).equal?(SWT::DEFAULT))
        size = data.compute_size(control, w_hint, h_hint, flush_cache)
      else
        # TEMPORARY CODE
        trim_x = 0
        trim_y = 0
        if (control.is_a?(Scrollable))
          rect = (control).compute_trim(0, 0, 0, 0)
          trim_x = rect.attr_width
          trim_y = rect.attr_height
        else
          trim_x = trim_y = control.get_border_width * 2
        end
        w = (w_hint).equal?(SWT::DEFAULT) ? w_hint : Math.max(0, w_hint - trim_x)
        h = (h_hint).equal?(SWT::DEFAULT) ? h_hint : Math.max(0, h_hint - trim_y)
        size = data.compute_size(control, w, h, flush_cache)
      end
      return size
    end
    
    typesig { [Control] }
    def flush_cache(control)
      data = control.get_layout_data
      if (!(data).nil?)
        (data).flush_cache
      end
      return true
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
    
    typesig { [Composite, ::Java::Boolean] }
    def layout(composite, flush_cache)
      rect = composite.get_client_area
      children = composite.get_children
      count = children.attr_length
      if ((count).equal?(0))
        return
      end
      width = rect.attr_width - @margin_width * 2
      height = rect.attr_height - @margin_height * 2
      if ((@type).equal?(SWT::HORIZONTAL))
        width -= (count - 1) * @spacing
        x = rect.attr_x + @margin_width
        extra = width % count
        y = rect.attr_y + @margin_height
        cell_width = width / count
        i = 0
        while i < count
          child = children[i]
          child_width = cell_width
          if ((i).equal?(0))
            child_width += extra / 2
          else
            if ((i).equal?(count - 1))
              child_width += (extra + 1) / 2
            end
          end
          child.set_bounds(x, y, child_width, height)
          x += child_width + @spacing
          i += 1
        end
      else
        height -= (count - 1) * @spacing
        x = rect.attr_x + @margin_width
        cell_height = height / count
        y = rect.attr_y + @margin_height
        extra = height % count
        i = 0
        while i < count
          child = children[i]
          child_height = cell_height
          if ((i).equal?(0))
            child_height += extra / 2
          else
            if ((i).equal?(count - 1))
              child_height += (extra + 1) / 2
            end
          end
          child.set_bounds(x, y, width, child_height)
          y += child_height + @spacing
          i += 1
        end
      end
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the layout
    def to_s
      string = RJava.cast_to_string(get_name) + " {"
      string += "type=" + RJava.cast_to_string((((@type).equal?(SWT::VERTICAL)) ? "SWT.VERTICAL" : "SWT.HORIZONTAL")) + " "
      if (!(@margin_width).equal?(0))
        string += "marginWidth=" + RJava.cast_to_string(@margin_width) + " "
      end
      if (!(@margin_height).equal?(0))
        string += "marginHeight=" + RJava.cast_to_string(@margin_height) + " "
      end
      if (!(@spacing).equal?(0))
        string += "spacing=" + RJava.cast_to_string(@spacing) + " "
      end
      string = RJava.cast_to_string(string.trim)
      string += "}"
      return string
    end
    
    private
    alias_method :initialize__fill_layout, :initialize
  end
  
end
