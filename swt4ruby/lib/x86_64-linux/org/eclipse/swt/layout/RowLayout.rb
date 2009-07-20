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
  module RowLayoutImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Layout
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # Instances of this class determine the size and position of the
  # children of a <code>Composite</code> by placing them either in
  # horizontal rows or vertical columns within the parent <code>Composite</code>.
  # <p>
  # <code>RowLayout</code> aligns all controls in one row if the
  # <code>type</code> is set to horizontal, and one column if it is
  # set to vertical. It has the ability to wrap, and provides configurable
  # margins and spacing. <code>RowLayout</code> has a number of configuration
  # fields. In addition, the height and width of each control in a
  # <code>RowLayout</code> can be specified by setting a <code>RowData</code>
  # object into the control using <code>setLayoutData ()</code>.
  # </p>
  # <p>
  # The following example code creates a <code>RowLayout</code>, sets all
  # of its fields to non-default values, and then sets it into a
  # <code>Shell</code>.
  # <pre>
  # RowLayout rowLayout = new RowLayout();
  # rowLayout.wrap = false;
  # rowLayout.pack = false;
  # rowLayout.justify = true;
  # rowLayout.type = SWT.VERTICAL;
  # rowLayout.marginLeft = 5;
  # rowLayout.marginTop = 5;
  # rowLayout.marginRight = 5;
  # rowLayout.marginBottom = 5;
  # rowLayout.spacing = 0;
  # shell.setLayout(rowLayout);
  # </pre>
  # If you are using the default field values, you only need one line of code:
  # <pre>
  # shell.setLayout(new RowLayout());
  # </pre>
  # </p>
  # 
  # @see RowData
  # @see <a href="http://www.eclipse.org/swt/snippets/#rowlayout">RowLayout snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: LayoutExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class RowLayout < RowLayoutImports.const_get :SwtLayout
    include_class_members RowLayoutImports
    
    # type specifies whether the layout places controls in rows or
    # columns.
    # 
    # The default value is HORIZONTAL.
    # 
    # Possible values are: <ul>
    # <li>HORIZONTAL: Position the controls horizontally from left to right</li>
    # <li>VERTICAL: Position the controls vertically from top to bottom</li>
    # </ul>
    # 
    # @since 2.0
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
    # The default value is 3.
    attr_accessor :spacing
    alias_method :attr_spacing, :spacing
    undef_method :spacing
    alias_method :attr_spacing=, :spacing=
    undef_method :spacing=
    
    # wrap specifies whether a control will be wrapped to the next
    # row if there is insufficient space on the current row.
    # 
    # The default value is true.
    attr_accessor :wrap
    alias_method :attr_wrap, :wrap
    undef_method :wrap
    alias_method :attr_wrap=, :wrap=
    undef_method :wrap=
    
    # pack specifies whether all controls in the layout take
    # their preferred size.  If pack is false, all controls will
    # have the same size which is the size required to accommodate the
    # largest preferred height and the largest preferred width of all
    # the controls in the layout.
    # 
    # The default value is true.
    attr_accessor :pack
    alias_method :attr_pack, :pack
    undef_method :pack
    alias_method :attr_pack=, :pack=
    undef_method :pack=
    
    # fill specifies whether the controls in a row should be
    # all the same height for horizontal layouts, or the same
    # width for vertical layouts.
    # 
    # The default value is false.
    # 
    # @since 3.0
    attr_accessor :fill
    alias_method :attr_fill, :fill
    undef_method :fill
    alias_method :attr_fill=, :fill=
    undef_method :fill=
    
    # center specifies whether the controls in a row should be
    # centered vertically in each cell for horizontal layouts,
    # or centered horizontally in each cell for vertical layouts.
    # 
    # The default value is false.
    # 
    # @since 3.4
    attr_accessor :center
    alias_method :attr_center, :center
    undef_method :center
    alias_method :attr_center=, :center=
    undef_method :center=
    
    # justify specifies whether the controls in a row should be
    # fully justified, with any extra space placed between the controls.
    # 
    # The default value is false.
    attr_accessor :justify
    alias_method :attr_justify, :justify
    undef_method :justify
    alias_method :attr_justify=, :justify=
    undef_method :justify=
    
    # marginLeft specifies the number of pixels of horizontal margin
    # that will be placed along the left edge of the layout.
    # 
    # The default value is 3.
    attr_accessor :margin_left
    alias_method :attr_margin_left, :margin_left
    undef_method :margin_left
    alias_method :attr_margin_left=, :margin_left=
    undef_method :margin_left=
    
    # marginTop specifies the number of pixels of vertical margin
    # that will be placed along the top edge of the layout.
    # 
    # The default value is 3.
    attr_accessor :margin_top
    alias_method :attr_margin_top, :margin_top
    undef_method :margin_top
    alias_method :attr_margin_top=, :margin_top=
    undef_method :margin_top=
    
    # marginRight specifies the number of pixels of horizontal margin
    # that will be placed along the right edge of the layout.
    # 
    # The default value is 3.
    attr_accessor :margin_right
    alias_method :attr_margin_right, :margin_right
    undef_method :margin_right
    alias_method :attr_margin_right=, :margin_right=
    undef_method :margin_right=
    
    # marginBottom specifies the number of pixels of vertical margin
    # that will be placed along the bottom edge of the layout.
    # 
    # The default value is 3.
    attr_accessor :margin_bottom
    alias_method :attr_margin_bottom, :margin_bottom
    undef_method :margin_bottom
    alias_method :attr_margin_bottom=, :margin_bottom=
    undef_method :margin_bottom=
    
    typesig { [] }
    # Constructs a new instance of this class.
    def initialize
      @type = 0
      @margin_width = 0
      @margin_height = 0
      @spacing = 0
      @wrap = false
      @pack = false
      @fill = false
      @center = false
      @justify = false
      @margin_left = 0
      @margin_top = 0
      @margin_right = 0
      @margin_bottom = 0
      super()
      @type = SWT::HORIZONTAL
      @margin_width = 0
      @margin_height = 0
      @spacing = 3
      @wrap = true
      @pack = true
      @fill = false
      @center = false
      @justify = false
      @margin_left = 3
      @margin_top = 3
      @margin_right = 3
      @margin_bottom = 3
    end
    
    typesig { [::Java::Int] }
    # Constructs a new instance of this class given the type.
    # 
    # @param type the type of row layout
    # 
    # @since 2.0
    def initialize(type)
      @type = 0
      @margin_width = 0
      @margin_height = 0
      @spacing = 0
      @wrap = false
      @pack = false
      @fill = false
      @center = false
      @justify = false
      @margin_left = 0
      @margin_top = 0
      @margin_right = 0
      @margin_bottom = 0
      super()
      @type = SWT::HORIZONTAL
      @margin_width = 0
      @margin_height = 0
      @spacing = 3
      @wrap = true
      @pack = true
      @fill = false
      @center = false
      @justify = false
      @margin_left = 3
      @margin_top = 3
      @margin_right = 3
      @margin_bottom = 3
      @type = type
    end
    
    typesig { [Composite, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(composite, w_hint, h_hint, flush_cache)
      extent = nil
      if ((@type).equal?(SWT::HORIZONTAL))
        extent = layout_horizontal(composite, false, (!(w_hint).equal?(SWT::DEFAULT)) && @wrap, w_hint, flush_cache)
      else
        extent = layout_vertical(composite, false, (!(h_hint).equal?(SWT::DEFAULT)) && @wrap, h_hint, flush_cache)
      end
      if (!(w_hint).equal?(SWT::DEFAULT))
        extent.attr_x = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        extent.attr_y = h_hint
      end
      return extent
    end
    
    typesig { [Control, ::Java::Boolean] }
    def compute_size(control, flush_cache)
      w_hint = SWT::DEFAULT
      h_hint = SWT::DEFAULT
      data = control.get_layout_data
      if (!(data).nil?)
        w_hint = data.attr_width
        h_hint = data.attr_height
      end
      return control.compute_size(w_hint, h_hint, flush_cache)
    end
    
    typesig { [Control] }
    def flush_cache(control)
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
      client_area = composite.get_client_area
      if ((@type).equal?(SWT::HORIZONTAL))
        layout_horizontal(composite, true, @wrap, client_area.attr_width, flush_cache)
      else
        layout_vertical(composite, true, @wrap, client_area.attr_height, flush_cache)
      end
    end
    
    typesig { [Composite, ::Java::Boolean, ::Java::Boolean, ::Java::Int, ::Java::Boolean] }
    def layout_horizontal(composite, move, wrap, width, flush_cache)
      children = composite.get_children
      count = 0
      i = 0
      while i < children.attr_length
        control = children[i]
        data = control.get_layout_data
        if ((data).nil? || !data.attr_exclude)
          children[((count += 1) - 1)] = children[i]
        end
        i += 1
      end
      if ((count).equal?(0))
        return Point.new(@margin_left + @margin_width * 2 + @margin_right, @margin_top + @margin_height * 2 + @margin_bottom)
      end
      child_width = 0
      child_height = 0
      max_height = 0
      if (!@pack)
        i_ = 0
        while i_ < count
          child = children[i_]
          size = compute_size(child, flush_cache)
          child_width = Math.max(child_width, size.attr_x)
          child_height = Math.max(child_height, size.attr_y)
          i_ += 1
        end
        max_height = child_height
      end
      client_x = 0
      client_y = 0
      if (move)
        rect = composite.get_client_area
        client_x = rect.attr_x
        client_y = rect.attr_y
      end
      wraps = nil
      wrapped = false
      bounds = nil
      if (move && (@justify || @fill || @center))
        bounds = Array.typed(Rectangle).new(count) { nil }
        wraps = Array.typed(::Java::Int).new(count) { 0 }
      end
      max_x = 0
      x = @margin_left + @margin_width
      y = @margin_top + @margin_height
      i_ = 0
      while i_ < count
        child = children[i_]
        if (@pack)
          size = compute_size(child, flush_cache)
          child_width = size.attr_x
          child_height = size.attr_y
        end
        if (wrap && (!(i_).equal?(0)) && (x + child_width > width))
          wrapped = true
          if (move && (@justify || @fill || @center))
            wraps[i_ - 1] = max_height
          end
          x = @margin_left + @margin_width
          y += @spacing + max_height
          if (@pack)
            max_height = 0
          end
        end
        if (@pack || @fill || @center)
          max_height = Math.max(max_height, child_height)
        end
        if (move)
          child_x = x + client_x
          child_y = y + client_y
          if (@justify || @fill || @center)
            bounds[i_] = Rectangle.new(child_x, child_y, child_width, child_height)
          else
            child.set_bounds(child_x, child_y, child_width, child_height)
          end
        end
        x += @spacing + child_width
        max_x = Math.max(max_x, x)
        i_ += 1
      end
      max_x = Math.max(client_x + @margin_left + @margin_width, max_x - @spacing)
      if (!wrapped)
        max_x += @margin_right + @margin_width
      end
      if (move && (@justify || @fill || @center))
        space = 0
        margin = 0
        if (!wrapped)
          space = Math.max(0, (width - max_x) / (count + 1))
          margin = Math.max(0, ((width - max_x) % (count + 1)) / 2)
        else
          if (@fill || @justify || @center)
            last = 0
            if (count > 0)
              wraps[count - 1] = max_height
            end
            i__ = 0
            while i__ < count
              if (!(wraps[i__]).equal?(0))
                wrap_count = i__ - last + 1
                if (@justify)
                  wrap_x = 0
                  j = last
                  while j <= i__
                    wrap_x += bounds[j].attr_width + @spacing
                    j += 1
                  end
                  space = Math.max(0, (width - wrap_x) / (wrap_count + 1))
                  margin = Math.max(0, ((width - wrap_x) % (wrap_count + 1)) / 2)
                end
                j = last
                while j <= i__
                  if (@justify)
                    bounds[j].attr_x += (space * (j - last + 1)) + margin
                  end
                  if (@fill)
                    bounds[j].attr_height = wraps[i__]
                  else
                    if (@center)
                      bounds[j].attr_y += Math.max(0, (wraps[i__] - bounds[j].attr_height) / 2)
                    end
                  end
                  j += 1
                end
                last = i__ + 1
              end
              i__ += 1
            end
          end
        end
        i__ = 0
        while i__ < count
          if (!wrapped)
            if (@justify)
              bounds[i__].attr_x += (space * (i__ + 1)) + margin
            end
            if (@fill)
              bounds[i__].attr_height = max_height
            else
              if (@center)
                bounds[i__].attr_y += Math.max(0, (max_height - bounds[i__].attr_height) / 2)
              end
            end
          end
          children[i__].set_bounds(bounds[i__])
          i__ += 1
        end
      end
      return Point.new(max_x, y + max_height + @margin_bottom + @margin_height)
    end
    
    typesig { [Composite, ::Java::Boolean, ::Java::Boolean, ::Java::Int, ::Java::Boolean] }
    def layout_vertical(composite, move, wrap, height, flush_cache)
      children = composite.get_children
      count = 0
      i = 0
      while i < children.attr_length
        control = children[i]
        data = control.get_layout_data
        if ((data).nil? || !data.attr_exclude)
          children[((count += 1) - 1)] = children[i]
        end
        i += 1
      end
      if ((count).equal?(0))
        return Point.new(@margin_left + @margin_width * 2 + @margin_right, @margin_top + @margin_height * 2 + @margin_bottom)
      end
      child_width = 0
      child_height = 0
      max_width = 0
      if (!@pack)
        i_ = 0
        while i_ < count
          child = children[i_]
          size = compute_size(child, flush_cache)
          child_width = Math.max(child_width, size.attr_x)
          child_height = Math.max(child_height, size.attr_y)
          i_ += 1
        end
        max_width = child_width
      end
      client_x = 0
      client_y = 0
      if (move)
        rect = composite.get_client_area
        client_x = rect.attr_x
        client_y = rect.attr_y
      end
      wraps = nil
      wrapped = false
      bounds = nil
      if (move && (@justify || @fill || @center))
        bounds = Array.typed(Rectangle).new(count) { nil }
        wraps = Array.typed(::Java::Int).new(count) { 0 }
      end
      max_y = 0
      x = @margin_left + @margin_width
      y = @margin_top + @margin_height
      i_ = 0
      while i_ < count
        child = children[i_]
        if (@pack)
          size = compute_size(child, flush_cache)
          child_width = size.attr_x
          child_height = size.attr_y
        end
        if (wrap && (!(i_).equal?(0)) && (y + child_height > height))
          wrapped = true
          if (move && (@justify || @fill || @center))
            wraps[i_ - 1] = max_width
          end
          x += @spacing + max_width
          y = @margin_top + @margin_height
          if (@pack)
            max_width = 0
          end
        end
        if (@pack || @fill || @center)
          max_width = Math.max(max_width, child_width)
        end
        if (move)
          child_x = x + client_x
          child_y = y + client_y
          if (@justify || @fill || @center)
            bounds[i_] = Rectangle.new(child_x, child_y, child_width, child_height)
          else
            child.set_bounds(child_x, child_y, child_width, child_height)
          end
        end
        y += @spacing + child_height
        max_y = Math.max(max_y, y)
        i_ += 1
      end
      max_y = Math.max(client_y + @margin_top + @margin_height, max_y - @spacing)
      if (!wrapped)
        max_y += @margin_bottom + @margin_height
      end
      if (move && (@justify || @fill || @center))
        space = 0
        margin = 0
        if (!wrapped)
          space = Math.max(0, (height - max_y) / (count + 1))
          margin = Math.max(0, ((height - max_y) % (count + 1)) / 2)
        else
          if (@fill || @justify || @center)
            last = 0
            if (count > 0)
              wraps[count - 1] = max_width
            end
            i__ = 0
            while i__ < count
              if (!(wraps[i__]).equal?(0))
                wrap_count = i__ - last + 1
                if (@justify)
                  wrap_y = 0
                  j = last
                  while j <= i__
                    wrap_y += bounds[j].attr_height + @spacing
                    j += 1
                  end
                  space = Math.max(0, (height - wrap_y) / (wrap_count + 1))
                  margin = Math.max(0, ((height - wrap_y) % (wrap_count + 1)) / 2)
                end
                j = last
                while j <= i__
                  if (@justify)
                    bounds[j].attr_y += (space * (j - last + 1)) + margin
                  end
                  if (@fill)
                    bounds[j].attr_width = wraps[i__]
                  else
                    if (@center)
                      bounds[j].attr_x += Math.max(0, (wraps[i__] - bounds[j].attr_width) / 2)
                    end
                  end
                  j += 1
                end
                last = i__ + 1
              end
              i__ += 1
            end
          end
        end
        i__ = 0
        while i__ < count
          if (!wrapped)
            if (@justify)
              bounds[i__].attr_y += (space * (i__ + 1)) + margin
            end
            if (@fill)
              bounds[i__].attr_width = max_width
            else
              if (@center)
                bounds[i__].attr_x += Math.max(0, (max_width - bounds[i__].attr_width) / 2)
              end
            end
          end
          children[i__].set_bounds(bounds[i__])
          i__ += 1
        end
      end
      return Point.new(x + max_width + @margin_right + @margin_width, max_y)
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the layout
    def to_s
      string = (get_name).to_s + " {"
      string += "type=" + (((!(@type).equal?(SWT::HORIZONTAL)) ? "SWT.VERTICAL" : "SWT.HORIZONTAL")).to_s + " "
      if (!(@margin_width).equal?(0))
        string += "marginWidth=" + (@margin_width).to_s + " "
      end
      if (!(@margin_height).equal?(0))
        string += "marginHeight=" + (@margin_height).to_s + " "
      end
      if (!(@margin_left).equal?(0))
        string += "marginLeft=" + (@margin_left).to_s + " "
      end
      if (!(@margin_top).equal?(0))
        string += "marginTop=" + (@margin_top).to_s + " "
      end
      if (!(@margin_right).equal?(0))
        string += "marginRight=" + (@margin_right).to_s + " "
      end
      if (!(@margin_bottom).equal?(0))
        string += "marginBottom=" + (@margin_bottom).to_s + " "
      end
      if (!(@spacing).equal?(0))
        string += "spacing=" + (@spacing).to_s + " "
      end
      string += "wrap=" + (@wrap).to_s + " "
      string += "pack=" + (@pack).to_s + " "
      string += "fill=" + (@fill).to_s + " "
      string += "justify=" + (@justify).to_s + " "
      string = (string.trim).to_s
      string += "}"
      return string
    end
    
    private
    alias_method :initialize__row_layout, :initialize
  end
  
end
