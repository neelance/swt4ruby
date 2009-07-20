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
  module FormLayoutImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Layout
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # Instances of this class control the position and size of the
  # children of a composite control by using <code>FormAttachments</code>
  # to optionally configure the left, top, right and bottom edges of
  # each child.
  # <p>
  # The following example code creates a <code>FormLayout</code> and then sets
  # it into a <code>Shell</code>:
  # <pre>
  # Display display = new Display ();
  # Shell shell = new Shell(display);
  # FormLayout layout = new FormLayout();
  # layout.marginWidth = 3;
  # layout.marginHeight = 3;
  # shell.setLayout(layout);
  # </pre>
  # </p>
  # <p>
  # To use a <code>FormLayout</code>, create a <code>FormData</code> with
  # <code>FormAttachment</code> for each child of <code>Composite</code>.
  # The following example code attaches <code>button1</code> to the top
  # and left edge of the composite and <code>button2</code> to the right
  # edge of <code>button1</code> and the top and right edges of the
  # composite:
  # <pre>
  # FormData data1 = new FormData();
  # data1.left = new FormAttachment(0, 0);
  # data1.top = new FormAttachment(0, 0);
  # button1.setLayoutData(data1);
  # FormData data2 = new FormData();
  # data2.left = new FormAttachment(button1);
  # data2.top = new FormAttachment(0, 0);
  # data2.right = new FormAttachment(100, 0);
  # button2.setLayoutData(data2);
  # </pre>
  # </p>
  # <p>
  # Each side of a child control can be attached to a position in the parent
  # composite, or to other controls within the <code>Composite</code> by
  # creating instances of <code>FormAttachment</code> and setting them into
  # the top, bottom, left, and right fields of the child's <code>FormData</code>.
  # </p>
  # <p>
  # If a side is not given an attachment, it is defined as not being attached
  # to anything, causing the child to remain at its preferred size.  If a child
  # is given no attachment on either the left or the right or top or bottom, it is
  # automatically attached to the left and top of the composite respectively.
  # The following code positions <code>button1</code> and <code>button2</code>
  # but relies on default attachments:
  # <pre>
  # FormData data2 = new FormData();
  # data2.left = new FormAttachment(button1);
  # data2.right = new FormAttachment(100, 0);
  # button2.setLayoutData(data2);
  # </pre>
  # </p>
  # <p>
  # IMPORTANT: Do not define circular attachments.  For example, do not attach
  # the right edge of <code>button1</code> to the left edge of <code>button2</code>
  # and then attach the left edge of <code>button2</code> to the right edge of
  # <code>button1</code>.  This will over constrain the layout, causing undefined
  # behavior.  The algorithm will terminate, but the results are undefined.
  # </p>
  # 
  # @see FormData
  # @see FormAttachment
  # @see <a href="http://www.eclipse.org/swt/snippets/#formlayout">FormLayout snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: LayoutExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 2.0
  class FormLayout < FormLayoutImports.const_get :SwtLayout
    include_class_members FormLayoutImports
    
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
    
    # marginLeft specifies the number of pixels of horizontal margin
    # that will be placed along the left edge of the layout.
    # 
    # The default value is 0.
    # 
    # @since 3.1
    attr_accessor :margin_left
    alias_method :attr_margin_left, :margin_left
    undef_method :margin_left
    alias_method :attr_margin_left=, :margin_left=
    undef_method :margin_left=
    
    # marginTop specifies the number of pixels of vertical margin
    # that will be placed along the top edge of the layout.
    # 
    # The default value is 0.
    # 
    # @since 3.1
    attr_accessor :margin_top
    alias_method :attr_margin_top, :margin_top
    undef_method :margin_top
    alias_method :attr_margin_top=, :margin_top=
    undef_method :margin_top=
    
    # marginRight specifies the number of pixels of horizontal margin
    # that will be placed along the right edge of the layout.
    # 
    # The default value is 0.
    # 
    # @since 3.1
    attr_accessor :margin_right
    alias_method :attr_margin_right, :margin_right
    undef_method :margin_right
    alias_method :attr_margin_right=, :margin_right=
    undef_method :margin_right=
    
    # marginBottom specifies the number of pixels of vertical margin
    # that will be placed along the bottom edge of the layout.
    # 
    # The default value is 0.
    # 
    # @since 3.1
    attr_accessor :margin_bottom
    alias_method :attr_margin_bottom, :margin_bottom
    undef_method :margin_bottom
    alias_method :attr_margin_bottom=, :margin_bottom=
    undef_method :margin_bottom=
    
    # spacing specifies the number of pixels between the edge of one control
    # and the edge of its neighbouring control.
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
      @margin_width = 0
      @margin_height = 0
      @margin_left = 0
      @margin_top = 0
      @margin_right = 0
      @margin_bottom = 0
      @spacing = 0
      super()
      @margin_width = 0
      @margin_height = 0
      @margin_left = 0
      @margin_top = 0
      @margin_right = 0
      @margin_bottom = 0
      @spacing = 0
    end
    
    typesig { [Control, FormData, ::Java::Boolean] }
    # Computes the preferred height of the form with
    # respect to the preferred height of the control.
    # 
    # Given that the equations for top (T) and bottom (B)
    # of the control in terms of the height of the form (X)
    # are:
    # T = AX + B
    # B = CX + D
    # 
    # The equation for the height of the control (H)
    # is bottom (B) minus top (T) or (H = B - T) or:
    # 
    # H = (CX + D) - (AX + B)
    # 
    # Solving for (X), the height of the form, we get:
    # 
    # X = (H + B - D) / (C - A)
    # 
    # When (A = C), (C - A = 0) and the equation has no
    # solution for X.  This is a special case meaning that
    # the control does not constrain the height of the
    # form.  In this case, we need to arbitrarily define
    # the height of the form (X):
    # 
    # Case 1: A = C, A = 0, C = 0
    # 
    # Let X = D, the distance from the top of the form
    # to the bottom edge of the control.  In this case,
    # the control was attached to the top of the form
    # and the form needs to be large enough to show the
    # bottom edge of the control.
    # 
    # Case 2: A = C, A = 1, C = 1
    # 
    # Let X = -B, the distance from the bottom of the
    # form to the top edge of the control.  In this case,
    # the control was attached to the bottom of the form
    # and the only way that the control would be visible
    # is if the offset is negative.  If the offset is
    # positive, there is no possible height for the form
    # that will show the control as it will always be
    # below the bottom edge of the form.
    # 
    # Case 3: A = C, A != 0, C != 0 and A != 1, C != 0
    # 
    # Let X = D / (1 - C), the distance from the top of the
    # form to the bottom edge of the control.  In this case,
    # since C is not 0 or 1, it must be a fraction, U / V.
    # The offset D is the distance from CX to the bottom edge
    # of the control.  This represents a fraction of the form
    # (1 - C)X. Since the height of a fraction of the form is
    # known, the height of the entire form can be found by setting
    # (1 - C)X = D.  We solve this equation for X in terms of U
    # and V, giving us X = (U * D) / (U - V). Similarly, if the
    # offset D is	negative, the control is positioned above CX.
    # The offset -B is the distance from the top edge of the control
    # to CX. We can find the height of the entire form by setting
    # CX = -B. Solving in terms of U and V gives us X = (-B * V) / U.
    def compute_height(control, data, flush_cache)
      top = data.get_top_attachment(control, @spacing, flush_cache)
      bottom = data.get_bottom_attachment(control, @spacing, flush_cache)
      height = bottom.minus(top)
      if ((height.attr_numerator).equal?(0))
        if ((bottom.attr_numerator).equal?(0))
          return bottom.attr_offset
        end
        if ((bottom.attr_numerator).equal?(bottom.attr_denominator))
          return -top.attr_offset
        end
        if (bottom.attr_offset <= 0)
          return -top.attr_offset * top.attr_denominator / bottom.attr_numerator
        end
        divider = bottom.attr_denominator - bottom.attr_numerator
        return bottom.attr_denominator * bottom.attr_offset / divider
      end
      return height.solve_y(data.get_height(control, flush_cache))
    end
    
    typesig { [Composite, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(composite, w_hint, h_hint, flush_cache)
      size = layout(composite, false, 0, 0, w_hint, h_hint, flush_cache)
      if (!(w_hint).equal?(SWT::DEFAULT))
        size.attr_x = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        size.attr_y = h_hint
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
    
    typesig { [Control, FormData, ::Java::Boolean] }
    # Computes the preferred height of the form with
    # respect to the preferred height of the control.
    def compute_width(control, data, flush_cache)
      left = data.get_left_attachment(control, @spacing, flush_cache)
      right = data.get_right_attachment(control, @spacing, flush_cache)
      width = right.minus(left)
      if ((width.attr_numerator).equal?(0))
        if ((right.attr_numerator).equal?(0))
          return right.attr_offset
        end
        if ((right.attr_numerator).equal?(right.attr_denominator))
          return -left.attr_offset
        end
        if (right.attr_offset <= 0)
          return -left.attr_offset * left.attr_denominator / left.attr_numerator
        end
        divider = right.attr_denominator - right.attr_numerator
        return right.attr_denominator * right.attr_offset / divider
      end
      return width.solve_y(data.get_width(control, flush_cache))
    end
    
    typesig { [Composite, ::Java::Boolean] }
    def layout(composite, flush_cache)
      rect = composite.get_client_area
      x = rect.attr_x + @margin_left + @margin_width
      y = rect.attr_y + @margin_top + @margin_height
      width = Math.max(0, rect.attr_width - @margin_left - 2 * @margin_width - @margin_right)
      height = Math.max(0, rect.attr_height - @margin_top - 2 * @margin_height - @margin_bottom)
      layout(composite, true, x, y, width, height, flush_cache)
    end
    
    typesig { [Composite, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def layout(composite, move, x, y, width, height, flush_cache)
      children = composite.get_children
      i = 0
      while i < children.attr_length
        child = children[i]
        data = child.get_layout_data
        if ((data).nil?)
          child.set_layout_data(data = FormData.new)
        end
        if (flush_cache)
          data.flush_cache
        end
        data.attr_cache_left = data.attr_cache_right = data.attr_cache_top = data.attr_cache_bottom = nil
        ((i += 1) - 1)
      end
      flush = nil
      bounds = nil
      w = 0
      h = 0
      i_ = 0
      while i_ < children.attr_length
        child = children[i_]
        data = child.get_layout_data
        if (!(width).equal?(SWT::DEFAULT))
          data.attr_needed = false
          left = data.get_left_attachment(child, @spacing, flush_cache)
          right = data.get_right_attachment(child, @spacing, flush_cache)
          x1 = left.solve_x(width)
          x2 = right.solve_x(width)
          if ((data.attr_height).equal?(SWT::DEFAULT) && !data.attr_needed)
            trim = 0
            # TEMPORARY CODE
            if (child.is_a?(Scrollable))
              rect = (child).compute_trim(0, 0, 0, 0)
              trim = rect.attr_width
            else
              trim = child.get_border_width * 2
            end
            data.attr_cache_width = data.attr_cache_height = -1
            current_width = Math.max(0, x2 - x1 - trim)
            data.compute_size(child, current_width, data.attr_height, flush_cache)
            if ((flush).nil?)
              flush = Array.typed(::Java::Boolean).new(children.attr_length) { false }
            end
            flush[i_] = true
          end
          w = Math.max(x2, w)
          if (move)
            if ((bounds).nil?)
              bounds = Array.typed(Rectangle).new(children.attr_length) { nil }
            end
            bounds[i_] = Rectangle.new(0, 0, 0, 0)
            bounds[i_].attr_x = x + x1
            bounds[i_].attr_width = x2 - x1
          end
        else
          w = Math.max(compute_width(child, data, flush_cache), w)
        end
        ((i_ += 1) - 1)
      end
      i__ = 0
      while i__ < children.attr_length
        child = children[i__]
        data = child.get_layout_data
        if (!(height).equal?(SWT::DEFAULT))
          y1 = data.get_top_attachment(child, @spacing, flush_cache).solve_x(height)
          y2 = data.get_bottom_attachment(child, @spacing, flush_cache).solve_x(height)
          h = Math.max(y2, h)
          if (move)
            bounds[i__].attr_y = y + y1
            bounds[i__].attr_height = y2 - y1
          end
        else
          h = Math.max(compute_height(child, data, flush_cache), h)
        end
        ((i__ += 1) - 1)
      end
      i___ = 0
      while i___ < children.attr_length
        child = children[i___]
        data = child.get_layout_data
        if (!(flush).nil? && flush[i___])
          data.attr_cache_width = data.attr_cache_height = -1
        end
        data.attr_cache_left = data.attr_cache_right = data.attr_cache_top = data.attr_cache_bottom = nil
        ((i___ += 1) - 1)
      end
      if (move)
        i____ = 0
        while i____ < children.attr_length
          children[i____].set_bounds(bounds[i____])
          ((i____ += 1) - 1)
        end
      end
      w += @margin_left + @margin_width * 2 + @margin_right
      h += @margin_top + @margin_height * 2 + @margin_bottom
      return Point.new(w, h)
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
      if (!(@margin_left).equal?(0))
        string += "marginLeft=" + (@margin_left).to_s + " "
      end
      if (!(@margin_right).equal?(0))
        string += "marginRight=" + (@margin_right).to_s + " "
      end
      if (!(@margin_top).equal?(0))
        string += "marginTop=" + (@margin_top).to_s + " "
      end
      if (!(@margin_bottom).equal?(0))
        string += "marginBottom=" + (@margin_bottom).to_s + " "
      end
      if (!(@spacing).equal?(0))
        string += "spacing=" + (@spacing).to_s + " "
      end
      string = (string.trim).to_s
      string += "}"
      return string
    end
    
    private
    alias_method :initialize__form_layout, :initialize
  end
  
end
