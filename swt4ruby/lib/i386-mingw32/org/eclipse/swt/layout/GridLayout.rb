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
  module GridLayoutImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Layout
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # Instances of this class lay out the control children of a
  # <code>Composite</code> in a grid.
  # <p>
  # <code>GridLayout</code> has a number of configuration fields, and the
  # controls it lays out can have an associated layout data object, called
  # <code>GridData</code>. The power of <code>GridLayout</code> lies in the
  # ability to configure <code>GridData</code> for each control in the layout.
  # </p>
  # <p>
  # The following code creates a shell managed by a <code>GridLayout</code>
  # with 3 columns:
  # <pre>
  # Display display = new Display();
  # Shell shell = new Shell(display);
  # GridLayout gridLayout = new GridLayout();
  # gridLayout.numColumns = 3;
  # shell.setLayout(gridLayout);
  # </pre>
  # The <code>numColumns</code> field is the most important field in a
  # <code>GridLayout</code>. Widgets are laid out in columns from left
  # to right, and a new row is created when <code>numColumns</code> + 1
  # controls are added to the <code>Composite<code>.
  # </p>
  # 
  # @see GridData
  # @see <a href="http://www.eclipse.org/swt/snippets/#gridlayout">GridLayout snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: LayoutExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class GridLayout < GridLayoutImports.const_get :SwtLayout
    include_class_members GridLayoutImports
    
    # numColumns specifies the number of cell columns in the layout.
    # If numColumns has a value less than 1, the layout will not
    # set the size and position of any controls.
    # 
    # The default value is 1.
    attr_accessor :num_columns
    alias_method :attr_num_columns, :num_columns
    undef_method :num_columns
    alias_method :attr_num_columns=, :num_columns=
    undef_method :num_columns=
    
    # makeColumnsEqualWidth specifies whether all columns in the layout
    # will be forced to have the same width.
    # 
    # The default value is false.
    attr_accessor :make_columns_equal_width
    alias_method :attr_make_columns_equal_width, :make_columns_equal_width
    undef_method :make_columns_equal_width
    alias_method :attr_make_columns_equal_width=, :make_columns_equal_width=
    undef_method :make_columns_equal_width=
    
    # marginWidth specifies the number of pixels of horizontal margin
    # that will be placed along the left and right edges of the layout.
    # 
    # The default value is 5.
    attr_accessor :margin_width
    alias_method :attr_margin_width, :margin_width
    undef_method :margin_width
    alias_method :attr_margin_width=, :margin_width=
    undef_method :margin_width=
    
    # marginHeight specifies the number of pixels of vertical margin
    # that will be placed along the top and bottom edges of the layout.
    # 
    # The default value is 5.
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
    
    # horizontalSpacing specifies the number of pixels between the right
    # edge of one cell and the left edge of its neighbouring cell to
    # the right.
    # 
    # The default value is 5.
    attr_accessor :horizontal_spacing
    alias_method :attr_horizontal_spacing, :horizontal_spacing
    undef_method :horizontal_spacing
    alias_method :attr_horizontal_spacing=, :horizontal_spacing=
    undef_method :horizontal_spacing=
    
    # verticalSpacing specifies the number of pixels between the bottom
    # edge of one cell and the top edge of its neighbouring cell underneath.
    # 
    # The default value is 5.
    attr_accessor :vertical_spacing
    alias_method :attr_vertical_spacing, :vertical_spacing
    undef_method :vertical_spacing
    alias_method :attr_vertical_spacing=, :vertical_spacing=
    undef_method :vertical_spacing=
    
    typesig { [] }
    # Constructs a new instance of this class.
    def initialize
      @num_columns = 0
      @make_columns_equal_width = false
      @margin_width = 0
      @margin_height = 0
      @margin_left = 0
      @margin_top = 0
      @margin_right = 0
      @margin_bottom = 0
      @horizontal_spacing = 0
      @vertical_spacing = 0
      super()
      @num_columns = 1
      @make_columns_equal_width = false
      @margin_width = 5
      @margin_height = 5
      @margin_left = 0
      @margin_top = 0
      @margin_right = 0
      @margin_bottom = 0
      @horizontal_spacing = 5
      @vertical_spacing = 5
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    # Constructs a new instance of this class given the
    # number of columns, and whether or not the columns
    # should be forced to have the same width.
    # If numColumns has a value less than 1, the layout will not
    # set the size and position of any controls.
    # 
    # @param numColumns the number of columns in the grid
    # @param makeColumnsEqualWidth whether or not the columns will have equal width
    # 
    # @since 2.0
    def initialize(num_columns, make_columns_equal_width)
      @num_columns = 0
      @make_columns_equal_width = false
      @margin_width = 0
      @margin_height = 0
      @margin_left = 0
      @margin_top = 0
      @margin_right = 0
      @margin_bottom = 0
      @horizontal_spacing = 0
      @vertical_spacing = 0
      super()
      @num_columns = 1
      @make_columns_equal_width = false
      @margin_width = 5
      @margin_height = 5
      @margin_left = 0
      @margin_top = 0
      @margin_right = 0
      @margin_bottom = 0
      @horizontal_spacing = 5
      @vertical_spacing = 5
      @num_columns = num_columns
      @make_columns_equal_width = make_columns_equal_width
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
    
    typesig { [Array.typed(Array.typed(Control)), ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def get_data(grid, row, column, row_count, column_count, first)
      control = grid[row][column]
      if (!(control).nil?)
        data = control.get_layout_data
        h_span = Math.max(1, Math.min(data.attr_horizontal_span, column_count))
        v_span = Math.max(1, data.attr_vertical_span)
        i = first ? row + v_span - 1 : row - v_span + 1
        j = first ? column + h_span - 1 : column - h_span + 1
        if (0 <= i && i < row_count)
          if (0 <= j && j < column_count)
            if ((control).equal?(grid[i][j]))
              return data
            end
          end
        end
      end
      return nil
    end
    
    typesig { [Composite, ::Java::Boolean] }
    def layout(composite, flush_cache)
      rect = composite.get_client_area
      layout(composite, true, rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height, flush_cache)
    end
    
    typesig { [Composite, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def layout(composite, move, x, y, width, height, flush_cache)
      if (@num_columns < 1)
        return Point.new(@margin_left + @margin_width * 2 + @margin_right, @margin_top + @margin_height * 2 + @margin_bottom)
      end
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
      i_ = 0
      while i_ < count
        child = children[i_]
        data = child.get_layout_data
        if ((data).nil?)
          child.set_layout_data(data = GridData.new)
        end
        if (flush_cache)
          data.flush_cache
        end
        data.compute_size(child, data.attr_width_hint, data.attr_height_hint, flush_cache)
        if (data.attr_grab_excess_horizontal_space && data.attr_minimum_width > 0)
          if (data.attr_cache_width < data.attr_minimum_width)
            trim = 0
            # TEMPORARY CODE
            if (child.is_a?(Scrollable))
              rect = (child).compute_trim(0, 0, 0, 0)
              trim = rect.attr_width
            else
              trim = child.get_border_width * 2
            end
            data.attr_cache_width = data.attr_cache_height = SWT::DEFAULT
            data.compute_size(child, Math.max(0, data.attr_minimum_width - trim), data.attr_height_hint, false)
          end
        end
        if (data.attr_grab_excess_vertical_space && data.attr_minimum_height > 0)
          data.attr_cache_height = Math.max(data.attr_cache_height, data.attr_minimum_height)
        end
        i_ += 1
      end
      # Build the grid
      row = 0
      column = 0
      row_count = 0
      column_count = @num_columns
      grid = Array.typed(Array.typed(Control)).new(4) { Array.typed(Control).new(column_count) { nil } }
      i__ = 0
      while i__ < count
        child = children[i__]
        data = child.get_layout_data
        h_span = Math.max(1, Math.min(data.attr_horizontal_span, column_count))
        v_span = Math.max(1, data.attr_vertical_span)
        while (true)
          last_row = row + v_span
          if (last_row >= grid.attr_length)
            new_grid = Array.typed(Array.typed(Control)).new(last_row + 4) { Array.typed(Control).new(column_count) { nil } }
            System.arraycopy(grid, 0, new_grid, 0, grid.attr_length)
            grid = new_grid
          end
          if ((grid[row]).nil?)
            grid[row] = Array.typed(Control).new(column_count) { nil }
          end
          while (column < column_count && !(grid[row][column]).nil?)
            column += 1
          end
          end_count = column + h_span
          if (end_count <= column_count)
            index = column
            while (index < end_count && (grid[row][index]).nil?)
              index += 1
            end
            if ((index).equal?(end_count))
              break
            end
            column = index
          end
          if (column + h_span >= column_count)
            column = 0
            row += 1
          end
        end
        j = 0
        while j < v_span
          if ((grid[row + j]).nil?)
            grid[row + j] = Array.typed(Control).new(column_count) { nil }
          end
          k = 0
          while k < h_span
            grid[row + j][column + k] = child
            k += 1
          end
          j += 1
        end
        row_count = Math.max(row_count, row + v_span)
        column += h_span
        i__ += 1
      end
      # Column widths
      available_width = width - @horizontal_spacing * (column_count - 1) - (@margin_left + @margin_width * 2 + @margin_right)
      expand_count = 0
      widths = Array.typed(::Java::Int).new(column_count) { 0 }
      min_widths = Array.typed(::Java::Int).new(column_count) { 0 }
      expand_column = Array.typed(::Java::Boolean).new(column_count) { false }
      j = 0
      while j < column_count
        i___ = 0
        while i___ < row_count
          data = get_data(grid, i___, j, row_count, column_count, true)
          if (!(data).nil?)
            h_span = Math.max(1, Math.min(data.attr_horizontal_span, column_count))
            if ((h_span).equal?(1))
              w = data.attr_cache_width + data.attr_horizontal_indent
              widths[j] = Math.max(widths[j], w)
              if (data.attr_grab_excess_horizontal_space)
                if (!expand_column[j])
                  expand_count += 1
                end
                expand_column[j] = true
              end
              if (!data.attr_grab_excess_horizontal_space || !(data.attr_minimum_width).equal?(0))
                w = !data.attr_grab_excess_horizontal_space || (data.attr_minimum_width).equal?(SWT::DEFAULT) ? data.attr_cache_width : data.attr_minimum_width
                w += data.attr_horizontal_indent
                min_widths[j] = Math.max(min_widths[j], w)
              end
            end
          end
          i___ += 1
        end
        i____ = 0
        while i____ < row_count
          data = get_data(grid, i____, j, row_count, column_count, false)
          if (!(data).nil?)
            h_span = Math.max(1, Math.min(data.attr_horizontal_span, column_count))
            if (h_span > 1)
              span_width = 0
              span_min_width = 0
              span_expand_count = 0
              k = 0
              while k < h_span
                span_width += widths[j - k]
                span_min_width += min_widths[j - k]
                if (expand_column[j - k])
                  span_expand_count += 1
                end
                k += 1
              end
              if (data.attr_grab_excess_horizontal_space && (span_expand_count).equal?(0))
                expand_count += 1
                expand_column[j] = true
              end
              w = data.attr_cache_width + data.attr_horizontal_indent - span_width - (h_span - 1) * @horizontal_spacing
              if (w > 0)
                if (@make_columns_equal_width)
                  equal_width = (w + span_width) / h_span
                  remainder = (w + span_width) % h_span
                  last = -1
                  k_ = 0
                  while k_ < h_span
                    widths[last = j - k_] = Math.max(equal_width, widths[j - k_])
                    k_ += 1
                  end
                  if (last > -1)
                    widths[last] += remainder
                  end
                else
                  if ((span_expand_count).equal?(0))
                    widths[j] += w
                  else
                    delta = w / span_expand_count
                    remainder = w % span_expand_count
                    last = -1
                    k_ = 0
                    while k_ < h_span
                      if (expand_column[j - k_])
                        widths[last = j - k_] += delta
                      end
                      k_ += 1
                    end
                    if (last > -1)
                      widths[last] += remainder
                    end
                  end
                end
              end
              if (!data.attr_grab_excess_horizontal_space || !(data.attr_minimum_width).equal?(0))
                w = !data.attr_grab_excess_horizontal_space || (data.attr_minimum_width).equal?(SWT::DEFAULT) ? data.attr_cache_width : data.attr_minimum_width
                w += data.attr_horizontal_indent - span_min_width - (h_span - 1) * @horizontal_spacing
                if (w > 0)
                  if ((span_expand_count).equal?(0))
                    min_widths[j] += w
                  else
                    delta = w / span_expand_count
                    remainder = w % span_expand_count
                    last = -1
                    k_ = 0
                    while k_ < h_span
                      if (expand_column[j - k_])
                        min_widths[last = j - k_] += delta
                      end
                      k_ += 1
                    end
                    if (last > -1)
                      min_widths[last] += remainder
                    end
                  end
                end
              end
            end
          end
          i____ += 1
        end
        j += 1
      end
      if (@make_columns_equal_width)
        min_column_width = 0
        column_width = 0
        i___ = 0
        while i___ < column_count
          min_column_width = Math.max(min_column_width, min_widths[i___])
          column_width = Math.max(column_width, widths[i___])
          i___ += 1
        end
        column_width = (width).equal?(SWT::DEFAULT) || (expand_count).equal?(0) ? column_width : Math.max(min_column_width, available_width / column_count)
        i____ = 0
        while i____ < column_count
          expand_column[i____] = expand_count > 0
          widths[i____] = column_width
          i____ += 1
        end
      else
        if (!(width).equal?(SWT::DEFAULT) && expand_count > 0)
          total_width = 0
          i___ = 0
          while i___ < column_count
            total_width += widths[i___]
            i___ += 1
          end
          c = expand_count
          delta = (available_width - total_width) / c
          remainder = (available_width - total_width) % c
          last = -1
          while (!(total_width).equal?(available_width))
            j_ = 0
            while j_ < column_count
              if (expand_column[j_])
                if (widths[j_] + delta > min_widths[j_])
                  widths[last = j_] = widths[j_] + delta
                else
                  widths[j_] = min_widths[j_]
                  expand_column[j_] = false
                  c -= 1
                end
              end
              j_ += 1
            end
            if (last > -1)
              widths[last] += remainder
            end
            j__ = 0
            while j__ < column_count
              i____ = 0
              while i____ < row_count
                data = get_data(grid, i____, j__, row_count, column_count, false)
                if (!(data).nil?)
                  h_span = Math.max(1, Math.min(data.attr_horizontal_span, column_count))
                  if (h_span > 1)
                    if (!data.attr_grab_excess_horizontal_space || !(data.attr_minimum_width).equal?(0))
                      span_width = 0
                      span_expand_count = 0
                      k = 0
                      while k < h_span
                        span_width += widths[j__ - k]
                        if (expand_column[j__ - k])
                          span_expand_count += 1
                        end
                        k += 1
                      end
                      w = !data.attr_grab_excess_horizontal_space || (data.attr_minimum_width).equal?(SWT::DEFAULT) ? data.attr_cache_width : data.attr_minimum_width
                      w += data.attr_horizontal_indent - span_width - (h_span - 1) * @horizontal_spacing
                      if (w > 0)
                        if ((span_expand_count).equal?(0))
                          widths[j__] += w
                        else
                          delta2 = w / span_expand_count
                          remainder2 = w % span_expand_count
                          last2 = -1
                          k_ = 0
                          while k_ < h_span
                            if (expand_column[j__ - k_])
                              widths[last2 = j__ - k_] += delta2
                            end
                            k_ += 1
                          end
                          if (last2 > -1)
                            widths[last2] += remainder2
                          end
                        end
                      end
                    end
                  end
                end
                i____ += 1
              end
              j__ += 1
            end
            if ((c).equal?(0))
              break
            end
            total_width = 0
            i____ = 0
            while i____ < column_count
              total_width += widths[i____]
              i____ += 1
            end
            delta = (available_width - total_width) / c
            remainder = (available_width - total_width) % c
            last = -1
          end
        end
      end
      # Wrapping
      flush = nil
      flush_length = 0
      if (!(width).equal?(SWT::DEFAULT))
        j_ = 0
        while j_ < column_count
          i___ = 0
          while i___ < row_count
            data = get_data(grid, i___, j_, row_count, column_count, false)
            if (!(data).nil?)
              if ((data.attr_height_hint).equal?(SWT::DEFAULT))
                child = grid[i___][j_]
                # TEMPORARY CODE
                h_span = Math.max(1, Math.min(data.attr_horizontal_span, column_count))
                current_width = 0
                k = 0
                while k < h_span
                  current_width += widths[j_ - k]
                  k += 1
                end
                current_width += (h_span - 1) * @horizontal_spacing - data.attr_horizontal_indent
                if ((!(current_width).equal?(data.attr_cache_width) && (data.attr_horizontal_alignment).equal?(SWT::FILL)) || (data.attr_cache_width > current_width))
                  trim = 0
                  if (child.is_a?(Scrollable))
                    rect = (child).compute_trim(0, 0, 0, 0)
                    trim = rect.attr_width
                  else
                    trim = child.get_border_width * 2
                  end
                  data.attr_cache_width = data.attr_cache_height = SWT::DEFAULT
                  data.compute_size(child, Math.max(0, current_width - trim), data.attr_height_hint, false)
                  if (data.attr_grab_excess_vertical_space && data.attr_minimum_height > 0)
                    data.attr_cache_height = Math.max(data.attr_cache_height, data.attr_minimum_height)
                  end
                  if ((flush).nil?)
                    flush = Array.typed(GridData).new(count) { nil }
                  end
                  flush[((flush_length += 1) - 1)] = data
                end
              end
            end
            i___ += 1
          end
          j_ += 1
        end
      end
      # Row heights
      available_height = height - @vertical_spacing * (row_count - 1) - (@margin_top + @margin_height * 2 + @margin_bottom)
      expand_count = 0
      heights = Array.typed(::Java::Int).new(row_count) { 0 }
      min_heights = Array.typed(::Java::Int).new(row_count) { 0 }
      expand_row = Array.typed(::Java::Boolean).new(row_count) { false }
      i___ = 0
      while i___ < row_count
        j_ = 0
        while j_ < column_count
          data = get_data(grid, i___, j_, row_count, column_count, true)
          if (!(data).nil?)
            v_span = Math.max(1, Math.min(data.attr_vertical_span, row_count))
            if ((v_span).equal?(1))
              h = data.attr_cache_height + data.attr_vertical_indent
              heights[i___] = Math.max(heights[i___], h)
              if (data.attr_grab_excess_vertical_space)
                if (!expand_row[i___])
                  expand_count += 1
                end
                expand_row[i___] = true
              end
              if (!data.attr_grab_excess_vertical_space || !(data.attr_minimum_height).equal?(0))
                h = !data.attr_grab_excess_vertical_space || (data.attr_minimum_height).equal?(SWT::DEFAULT) ? data.attr_cache_height : data.attr_minimum_height
                h += data.attr_vertical_indent
                min_heights[i___] = Math.max(min_heights[i___], h)
              end
            end
          end
          j_ += 1
        end
        j__ = 0
        while j__ < column_count
          data = get_data(grid, i___, j__, row_count, column_count, false)
          if (!(data).nil?)
            v_span = Math.max(1, Math.min(data.attr_vertical_span, row_count))
            if (v_span > 1)
              span_height = 0
              span_min_height = 0
              span_expand_count = 0
              k = 0
              while k < v_span
                span_height += heights[i___ - k]
                span_min_height += min_heights[i___ - k]
                if (expand_row[i___ - k])
                  span_expand_count += 1
                end
                k += 1
              end
              if (data.attr_grab_excess_vertical_space && (span_expand_count).equal?(0))
                expand_count += 1
                expand_row[i___] = true
              end
              h = data.attr_cache_height + data.attr_vertical_indent - span_height - (v_span - 1) * @vertical_spacing
              if (h > 0)
                if ((span_expand_count).equal?(0))
                  heights[i___] += h
                else
                  delta = h / span_expand_count
                  remainder = h % span_expand_count
                  last = -1
                  k_ = 0
                  while k_ < v_span
                    if (expand_row[i___ - k_])
                      heights[last = i___ - k_] += delta
                    end
                    k_ += 1
                  end
                  if (last > -1)
                    heights[last] += remainder
                  end
                end
              end
              if (!data.attr_grab_excess_vertical_space || !(data.attr_minimum_height).equal?(0))
                h = !data.attr_grab_excess_vertical_space || (data.attr_minimum_height).equal?(SWT::DEFAULT) ? data.attr_cache_height : data.attr_minimum_height
                h += data.attr_vertical_indent - span_min_height - (v_span - 1) * @vertical_spacing
                if (h > 0)
                  if ((span_expand_count).equal?(0))
                    min_heights[i___] += h
                  else
                    delta = h / span_expand_count
                    remainder = h % span_expand_count
                    last = -1
                    k_ = 0
                    while k_ < v_span
                      if (expand_row[i___ - k_])
                        min_heights[last = i___ - k_] += delta
                      end
                      k_ += 1
                    end
                    if (last > -1)
                      min_heights[last] += remainder
                    end
                  end
                end
              end
            end
          end
          j__ += 1
        end
        i___ += 1
      end
      if (!(height).equal?(SWT::DEFAULT) && expand_count > 0)
        total_height = 0
        i____ = 0
        while i____ < row_count
          total_height += heights[i____]
          i____ += 1
        end
        c = expand_count
        delta = (available_height - total_height) / c
        remainder = (available_height - total_height) % c
        last = -1
        while (!(total_height).equal?(available_height))
          i_____ = 0
          while i_____ < row_count
            if (expand_row[i_____])
              if (heights[i_____] + delta > min_heights[i_____])
                heights[last = i_____] = heights[i_____] + delta
              else
                heights[i_____] = min_heights[i_____]
                expand_row[i_____] = false
                c -= 1
              end
            end
            i_____ += 1
          end
          if (last > -1)
            heights[last] += remainder
          end
          i______ = 0
          while i______ < row_count
            j_ = 0
            while j_ < column_count
              data = get_data(grid, i______, j_, row_count, column_count, false)
              if (!(data).nil?)
                v_span = Math.max(1, Math.min(data.attr_vertical_span, row_count))
                if (v_span > 1)
                  if (!data.attr_grab_excess_vertical_space || !(data.attr_minimum_height).equal?(0))
                    span_height = 0
                    span_expand_count = 0
                    k = 0
                    while k < v_span
                      span_height += heights[i______ - k]
                      if (expand_row[i______ - k])
                        span_expand_count += 1
                      end
                      k += 1
                    end
                    h = !data.attr_grab_excess_vertical_space || (data.attr_minimum_height).equal?(SWT::DEFAULT) ? data.attr_cache_height : data.attr_minimum_height
                    h += data.attr_vertical_indent - span_height - (v_span - 1) * @vertical_spacing
                    if (h > 0)
                      if ((span_expand_count).equal?(0))
                        heights[i______] += h
                      else
                        delta2 = h / span_expand_count
                        remainder2 = h % span_expand_count
                        last2 = -1
                        k_ = 0
                        while k_ < v_span
                          if (expand_row[i______ - k_])
                            heights[last2 = i______ - k_] += delta2
                          end
                          k_ += 1
                        end
                        if (last2 > -1)
                          heights[last2] += remainder2
                        end
                      end
                    end
                  end
                end
              end
              j_ += 1
            end
            i______ += 1
          end
          if ((c).equal?(0))
            break
          end
          total_height = 0
          i_______ = 0
          while i_______ < row_count
            total_height += heights[i_______]
            i_______ += 1
          end
          delta = (available_height - total_height) / c
          remainder = (available_height - total_height) % c
          last = -1
        end
      end
      # Position the controls
      if (move)
        grid_y = y + @margin_top + @margin_height
        i____ = 0
        while i____ < row_count
          grid_x = x + @margin_left + @margin_width
          j_ = 0
          while j_ < column_count
            data = get_data(grid, i____, j_, row_count, column_count, true)
            if (!(data).nil?)
              h_span = Math.max(1, Math.min(data.attr_horizontal_span, column_count))
              v_span = Math.max(1, data.attr_vertical_span)
              cell_width = 0
              cell_height = 0
              k = 0
              while k < h_span
                cell_width += widths[j_ + k]
                k += 1
              end
              k_ = 0
              while k_ < v_span
                cell_height += heights[i____ + k_]
                k_ += 1
              end
              cell_width += @horizontal_spacing * (h_span - 1)
              child_x = grid_x + data.attr_horizontal_indent
              child_width = Math.min(data.attr_cache_width, cell_width)
              case (data.attr_horizontal_alignment)
              when SWT::CENTER, GridData::CENTER
                child_x += Math.max(0, (cell_width - data.attr_horizontal_indent - child_width) / 2)
              when SWT::RIGHT, SWT::END_, GridData::END_
                child_x += Math.max(0, cell_width - data.attr_horizontal_indent - child_width)
              when SWT::FILL
                child_width = cell_width - data.attr_horizontal_indent
              end
              cell_height += @vertical_spacing * (v_span - 1)
              child_y = grid_y + data.attr_vertical_indent
              child_height = Math.min(data.attr_cache_height, cell_height)
              case (data.attr_vertical_alignment)
              when SWT::CENTER, GridData::CENTER
                child_y += Math.max(0, (cell_height - data.attr_vertical_indent - child_height) / 2)
              when SWT::BOTTOM, SWT::END_, GridData::END_
                child_y += Math.max(0, cell_height - data.attr_vertical_indent - child_height)
              when SWT::FILL
                child_height = cell_height - data.attr_vertical_indent
              end
              child = grid[i____][j_]
              if (!(child).nil?)
                child.set_bounds(child_x, child_y, child_width, child_height)
              end
            end
            grid_x += widths[j_] + @horizontal_spacing
            j_ += 1
          end
          grid_y += heights[i____] + @vertical_spacing
          i____ += 1
        end
      end
      # clean up cache
      i____ = 0
      while i____ < flush_length
        flush[i____].attr_cache_width = flush[i____].attr_cache_height = -1
        i____ += 1
      end
      total_default_width = 0
      total_default_height = 0
      i_____ = 0
      while i_____ < column_count
        total_default_width += widths[i_____]
        i_____ += 1
      end
      i______ = 0
      while i______ < row_count
        total_default_height += heights[i______]
        i______ += 1
      end
      total_default_width += @horizontal_spacing * (column_count - 1) + @margin_left + @margin_width * 2 + @margin_right
      total_default_height += @vertical_spacing * (row_count - 1) + @margin_top + @margin_height * 2 + @margin_bottom
      return Point.new(total_default_width, total_default_height)
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
      string = RJava.cast_to_string(get_name) + " {"
      if (!(@num_columns).equal?(1))
        string += "numColumns=" + RJava.cast_to_string(@num_columns) + " "
      end
      if (@make_columns_equal_width)
        string += "makeColumnsEqualWidth=" + RJava.cast_to_string(@make_columns_equal_width) + " "
      end
      if (!(@margin_width).equal?(0))
        string += "marginWidth=" + RJava.cast_to_string(@margin_width) + " "
      end
      if (!(@margin_height).equal?(0))
        string += "marginHeight=" + RJava.cast_to_string(@margin_height) + " "
      end
      if (!(@margin_left).equal?(0))
        string += "marginLeft=" + RJava.cast_to_string(@margin_left) + " "
      end
      if (!(@margin_right).equal?(0))
        string += "marginRight=" + RJava.cast_to_string(@margin_right) + " "
      end
      if (!(@margin_top).equal?(0))
        string += "marginTop=" + RJava.cast_to_string(@margin_top) + " "
      end
      if (!(@margin_bottom).equal?(0))
        string += "marginBottom=" + RJava.cast_to_string(@margin_bottom) + " "
      end
      if (!(@horizontal_spacing).equal?(0))
        string += "horizontalSpacing=" + RJava.cast_to_string(@horizontal_spacing) + " "
      end
      if (!(@vertical_spacing).equal?(0))
        string += "verticalSpacing=" + RJava.cast_to_string(@vertical_spacing) + " "
      end
      string = RJava.cast_to_string(string.trim)
      string += "}"
      return string
    end
    
    private
    alias_method :initialize__grid_layout, :initialize
  end
  
end
