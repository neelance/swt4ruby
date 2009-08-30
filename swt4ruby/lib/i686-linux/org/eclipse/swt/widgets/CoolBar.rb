require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Widgets
  module CoolBarImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class provide an area for dynamically
  # positioning the items they contain.
  # <p>
  # The item children that may be added to instances of this class
  # must be of type <code>CoolItem</code>.
  # </p><p>
  # Note that although this class is a subclass of <code>Composite</code>,
  # it does not make sense to add <code>Control</code> children to it,
  # or set a layout on it.
  # </p><p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>FLAT, HORIZONTAL, VERTICAL</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # </p><p>
  # Note: Only one of the styles HORIZONTAL and VERTICAL may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#coolbar">CoolBar snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class CoolBar < CoolBarImports.const_get :Composite
    include_class_members CoolBarImports
    
    attr_accessor :items
    alias_method :attr_items, :items
    undef_method :items
    alias_method :attr_items=, :items=
    undef_method :items=
    
    attr_accessor :original_items
    alias_method :attr_original_items, :original_items
    undef_method :original_items
    alias_method :attr_original_items=, :original_items=
    undef_method :original_items=
    
    attr_accessor :hover_cursor
    alias_method :attr_hover_cursor, :hover_cursor
    undef_method :hover_cursor
    alias_method :attr_hover_cursor=, :hover_cursor=
    undef_method :hover_cursor=
    
    attr_accessor :drag_cursor
    alias_method :attr_drag_cursor, :drag_cursor
    undef_method :drag_cursor
    alias_method :attr_drag_cursor=, :drag_cursor=
    undef_method :drag_cursor=
    
    attr_accessor :cursor
    alias_method :attr_cursor, :cursor
    undef_method :cursor
    alias_method :attr_cursor=, :cursor=
    undef_method :cursor=
    
    attr_accessor :dragging
    alias_method :attr_dragging, :dragging
    undef_method :dragging
    alias_method :attr_dragging=, :dragging=
    undef_method :dragging=
    
    attr_accessor :mouse_xoffset
    alias_method :attr_mouse_xoffset, :mouse_xoffset
    undef_method :mouse_xoffset
    alias_method :attr_mouse_xoffset=, :mouse_xoffset=
    undef_method :mouse_xoffset=
    
    attr_accessor :item_xoffset
    alias_method :attr_item_xoffset, :item_xoffset
    undef_method :item_xoffset
    alias_method :attr_item_xoffset=, :item_xoffset=
    undef_method :item_xoffset=
    
    attr_accessor :is_locked
    alias_method :attr_is_locked, :is_locked
    undef_method :is_locked
    alias_method :attr_is_locked=, :is_locked=
    undef_method :is_locked=
    
    attr_accessor :in_dispose
    alias_method :attr_in_dispose, :in_dispose
    undef_method :in_dispose
    alias_method :attr_in_dispose=, :in_dispose=
    undef_method :in_dispose=
    
    class_module.module_eval {
      const_set_lazy(:ROW_SPACING) { 2 }
      const_attr_reader  :ROW_SPACING
      
      const_set_lazy(:CLICK_DISTANCE) { 3 }
      const_attr_reader  :CLICK_DISTANCE
      
      const_set_lazy(:DEFAULT_COOLBAR_WIDTH) { 0 }
      const_attr_reader  :DEFAULT_COOLBAR_WIDTH
      
      const_set_lazy(:DEFAULT_COOLBAR_HEIGHT) { 0 }
      const_attr_reader  :DEFAULT_COOLBAR_HEIGHT
    }
    
    typesig { [Composite, ::Java::Int] }
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
      @items = nil
      @original_items = nil
      @hover_cursor = nil
      @drag_cursor = nil
      @cursor = nil
      @dragging = nil
      @mouse_xoffset = 0
      @item_xoffset = 0
      @is_locked = false
      @in_dispose = false
      super(parent, check_style(style))
      @items = Array.typed(Array.typed(CoolItem)).new(0) { Array.typed(CoolItem).new(0) { nil } }
      @original_items = Array.typed(CoolItem).new(0) { nil }
      @dragging = nil
      @is_locked = false
      @in_dispose = false
      if (!((style & SWT::VERTICAL)).equal?(0))
        self.attr_style |= SWT::VERTICAL
        @hover_cursor = Cursor.new(self.attr_display, SWT::CURSOR_SIZENS)
      else
        self.attr_style |= SWT::HORIZONTAL
        @hover_cursor = Cursor.new(self.attr_display, SWT::CURSOR_SIZEWE)
      end
      @drag_cursor = Cursor.new(self.attr_display, SWT::CURSOR_SIZEALL)
      listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members CoolBar
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          case (event.attr_type)
          when SWT::Dispose
            on_dispose(event)
          when SWT::MouseDown
            on_mouse_down(event)
          when SWT::MouseExit
            on_mouse_exit
          when SWT::MouseMove
            on_mouse_move(event)
          when SWT::MouseUp
            on_mouse_up(event)
          when SWT::MouseDoubleClick
            on_mouse_double_click(event)
          when SWT::Paint
            on_paint(event)
          when SWT::Resize
            on_resize
          end
        end
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      events = Array.typed(::Java::Int).new([SWT::Dispose, SWT::MouseDown, SWT::MouseExit, SWT::MouseMove, SWT::MouseUp, SWT::MouseDoubleClick, SWT::Paint, SWT::Resize])
      i = 0
      while i < events.attr_length
        add_listener(events[i], listener)
        i += 1
      end
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        style |= SWT::NO_FOCUS
        return (style | SWT::NO_REDRAW_RESIZE) & ~(SWT::V_SCROLL | SWT::H_SCROLL)
      end
    }
    
    typesig { [Cursor] }
    def __set_cursor(cursor)
      if (!(@cursor).nil?)
        return
      end
      Composite.instance_method(:set_cursor).bind(self).call(cursor)
    end
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      width = 0
      height = 0
      wrap_items(!((self.attr_style & SWT::VERTICAL)).equal?(0) ? h_hint : w_hint)
      flat = !((self.attr_style & SWT::FLAT)).equal?(0)
      row = 0
      while row < @items.attr_length
        row_width = 0
        row_height = 0
        i = 0
        while i < @items[row].attr_length
          item = @items[row][i]
          row_width += item.attr_preferred_width
          row_height = Math.max(row_height, item.attr_preferred_height)
          i += 1
        end
        height += row_height
        if (!flat && row > 0)
          height += ROW_SPACING
        end
        width = Math.max(width, row_width)
        row += 1
      end
      wrap_items(get_width)
      if ((width).equal?(0))
        width = DEFAULT_COOLBAR_WIDTH
      end
      if ((height).equal?(0))
        height = DEFAULT_COOLBAR_HEIGHT
      end
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint
      end
      trim = compute_trim(0, 0, width, height)
      return fix_point(trim.attr_width, trim.attr_height)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def get_grabbed_item(x, y)
      row = 0
      while row < @items.attr_length
        i = 0
        while i < @items[row].attr_length
          item = @items[row][i]
          bounds = item.internal_get_bounds
          bounds.attr_width = CoolItem::MINIMUM_WIDTH
          if (bounds.attr_x > x)
            break
          end
          if (bounds.attr_y > y)
            return nil
          end
          if (bounds.contains(x, y))
            return item
          end
          i += 1
        end
        row += 1
      end
      return nil
    end
    
    typesig { [::Java::Int] }
    # Returns the item that is currently displayed at the given,
    # zero-relative index. Throws an exception if the index is
    # out of range.
    # 
    # @param index the visual index of the item to return
    # @return the item at the given visual index
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item(index)
      check_widget
      if (index < 0)
        error(SWT::ERROR_INVALID_RANGE)
      end
      row = 0
      while row < @items.attr_length
        if (@items[row].attr_length > index)
          return @items[row][index]
        else
          index -= @items[row].attr_length
        end
        row += 1
      end
      error(SWT::ERROR_INVALID_RANGE)
      return nil
    end
    
    typesig { [] }
    # Returns the number of items contained in the receiver.
    # 
    # @return the number of items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_count
      check_widget
      return @original_items.attr_length
    end
    
    typesig { [] }
    # Returns an array of <code>CoolItem</code>s in the order
    # in which they are currently being displayed.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of items, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return the receiver's items in their current visual order
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_items
      check_widget
      result = Array.typed(CoolItem).new(get_item_count) { nil }
      offset = 0
      row = 0
      while row < @items.attr_length
        System.arraycopy(@items[row], 0, result, offset, @items[row].attr_length)
        offset += @items[row].attr_length
        row += 1
      end
      return result
    end
    
    typesig { [CoolItem] }
    def find_item(item)
      row = 0
      while row < @items.attr_length
        i = 0
        while i < @items[row].attr_length
          if ((@items[row][i] == item))
            return Point.new(i, row)
          end
          i += 1
        end
        row += 1
      end
      return Point.new(-1, -1)
    end
    
    typesig { [Event] }
    def fix_event(event)
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        tmp = event.attr_x
        event.attr_x = event.attr_y
        event.attr_y = tmp
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def fix_rectangle(x, y, width, height)
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        return Rectangle.new(y, x, height, width)
      end
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def fix_point(x, y)
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        return Point.new(y, x)
      end
      return Point.new(x, y)
    end
    
    typesig { [CoolItem] }
    # Searches the receiver's items in the order they are currently
    # being displayed, starting at the first item (index 0), until
    # an item is found that is equal to the argument, and returns
    # the index of that item. If no item is found, returns -1.
    # 
    # @param item the search item
    # @return the visual order index of the search item, or -1 if the item is not found
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the item is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the item is disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def index_of(item)
      check_widget
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (item.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      answer = 0
      row = 0
      while row < @items.attr_length
        i = 0
        while i < @items[row].attr_length
          if ((@items[row][i] == item))
            return answer
          else
            answer += 1
          end
          i += 1
        end
        row += 1
      end
      return -1
    end
    
    typesig { [CoolItem, ::Java::Int, ::Java::Int] }
    # Insert the item into the row. Adjust the x and width values
    # appropriately.
    def insert_item_into_row(item, row_index, x_root)
      bar_width = get_width
      row_y = @items[row_index][0].internal_get_bounds.attr_y
      x = Math.max(0, Math.abs(x_root - to_display(Point.new(0, 0)).attr_x))
      # Find the insertion index and add the item.
      index = 0
      index = 0
      while index < @items[row_index].attr_length
        if (x < @items[row_index][index].internal_get_bounds.attr_x)
          break
        end
        index += 1
      end
      if ((index).equal?(0))
        item.attr_wrap = true
        @items[row_index][0].attr_wrap = false
      end
      old_length = @items[row_index].attr_length
      new_row = Array.typed(CoolItem).new(old_length + 1) { nil }
      System.arraycopy(@items[row_index], 0, new_row, 0, index)
      new_row[index] = item
      System.arraycopy(@items[row_index], index, new_row, index + 1, old_length - index)
      @items[row_index] = new_row
      # Adjust the width of the item to the left.
      if (index > 0)
        left = @items[row_index][index - 1]
        left_bounds = left.internal_get_bounds
        new_width = x - left_bounds.attr_x
        if (new_width < left.internal_get_minimum_width)
          x += left.internal_get_minimum_width - new_width
          new_width = left.internal_get_minimum_width
        end
        left.set_bounds(left_bounds.attr_x, left_bounds.attr_y, new_width, left_bounds.attr_height)
        left.attr_requested_width = new_width
      end
      # Set the item's bounds.
      width = 0
      height = item.internal_get_bounds.attr_height
      if (index < @items[row_index].attr_length - 1)
        right = @items[row_index][index + 1]
        width = right.internal_get_bounds.attr_x - x
        if (width < right.internal_get_minimum_width)
          move_right(right, right.internal_get_minimum_width - width)
          width = right.internal_get_bounds.attr_x - x
        end
        item.set_bounds(x, row_y, width, height)
        if (width < item.internal_get_minimum_width)
          move_left(item, item.internal_get_minimum_width - width)
        end
      else
        width = Math.max(item.internal_get_minimum_width, bar_width - x)
        item.set_bounds(x, row_y, width, height)
        if (x + width > bar_width)
          move_left(item, x + width - bar_width)
        end
      end
      bounds = item.internal_get_bounds
      item.attr_requested_width = bounds.attr_width
      internal_redraw(bounds.attr_x, bounds.attr_y, item.internal_get_minimum_width, bounds.attr_height)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def internal_redraw(x, y, width, height)
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        redraw(y, x, height, width, false)
      else
        redraw(x, y, width, height, false)
      end
    end
    
    typesig { [CoolItem, ::Java::Int] }
    def create_item(item, index)
      item_count = get_item_count
      row = 0
      if (!(0 <= index && index <= item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      if ((@items.attr_length).equal?(0))
        @items = Array.typed(Array.typed(CoolItem)).new(1) { Array.typed(CoolItem).new(1) { nil } }
        @items[0][0] = item
      else
        i = index
        # find the row to insert into
        if (index < item_count)
          while (i > @items[row].attr_length)
            i -= @items[row].attr_length
            row += 1
          end
        else
          row = @items.attr_length - 1
          i = @items[row].attr_length
        end
        # Set the last item in the row to the preferred size
        # and add the new one just to it's right
        last_index = @items[row].attr_length - 1
        last_item = @items[row][last_index]
        if (last_item.attr_ideal)
          bounds = last_item.internal_get_bounds
          bounds.attr_width = last_item.attr_preferred_width
          bounds.attr_height = last_item.attr_preferred_height
          last_item.attr_requested_width = last_item.attr_preferred_width
          last_item.set_bounds(bounds.attr_x, bounds.attr_y, bounds.attr_width, bounds.attr_height)
        end
        if ((i).equal?(0))
          item.attr_wrap = true
          @items[row][0].attr_wrap = false
        end
        old_length = @items[row].attr_length
        new_row = Array.typed(CoolItem).new(old_length + 1) { nil }
        System.arraycopy(@items[row], 0, new_row, 0, i)
        new_row[i] = item
        System.arraycopy(@items[row], i, new_row, i + 1, old_length - i)
        @items[row] = new_row
      end
      item.attr_requested_width = CoolItem::MINIMUM_WIDTH
      length = @original_items.attr_length
      new_originals = Array.typed(CoolItem).new(length + 1) { nil }
      System.arraycopy(@original_items, 0, new_originals, 0, index)
      System.arraycopy(@original_items, index, new_originals, index + 1, length - index)
      new_originals[index] = item
      @original_items = new_originals
      layout_items
    end
    
    typesig { [CoolItem] }
    def destroy_item(item)
      if (@in_dispose)
        return
      end
      row = find_item(item).attr_y
      if ((row).equal?(-1))
        return
      end
      bounds = item.internal_get_bounds
      remove_item_from_row(item, row, true)
      index = 0
      while (index < @original_items.attr_length)
        if ((@original_items[index]).equal?(item))
          break
        end
        index += 1
      end
      length = @original_items.attr_length - 1
      new_originals = Array.typed(CoolItem).new(length) { nil }
      System.arraycopy(@original_items, 0, new_originals, 0, index)
      System.arraycopy(@original_items, index + 1, new_originals, index, length - index)
      @original_items = new_originals
      internal_redraw(bounds.attr_x, bounds.attr_y, CoolItem::MINIMUM_WIDTH, bounds.attr_height)
      relayout
    end
    
    typesig { [CoolItem, ::Java::Int] }
    def move_down(item, x_root)
      old_row_index = find_item(item).attr_y
      resize = false
      if ((@items[old_row_index].attr_length).equal?(1))
        resize = true
        # If this is the only item in the bottom row, don't move it.
        if ((old_row_index).equal?(@items.attr_length - 1))
          return
        end
      end
      new_row_index = ((@items[old_row_index].attr_length).equal?(1)) ? old_row_index : old_row_index + 1
      remove_item_from_row(item, old_row_index, false)
      old = item.internal_get_bounds
      internal_redraw(old.attr_x, old.attr_y, CoolItem::MINIMUM_WIDTH, old.attr_height)
      if ((new_row_index).equal?(@items.attr_length))
        # Create a new bottom row for the item.
        new_rows = Array.typed(Array.typed(CoolItem)).new(@items.attr_length + 1) { nil }
        System.arraycopy(@items, 0, new_rows, 0, @items.attr_length)
        row = @items.attr_length
        new_rows[row] = Array.typed(CoolItem).new(1) { nil }
        new_rows[row][0] = item
        @items = new_rows
        resize = true
        item.attr_wrap = true
      else
        insert_item_into_row(item, new_row_index, x_root)
      end
      if (resize)
        relayout
      else
        layout_items
      end
    end
    
    typesig { [CoolItem, ::Java::Int] }
    def move_left(item, pixels)
      point = find_item(item)
      row = point.attr_y
      index = point.attr_x
      if ((index).equal?(0))
        return
      end
      bounds = item.internal_get_bounds
      min_space_on_left = 0
      i = 0
      while i < index
        min_space_on_left += @items[row][i].internal_get_minimum_width
        i += 1
      end
      x = Math.max(min_space_on_left, bounds.attr_x - pixels)
      left = @items[row][index - 1]
      left_bounds = left.internal_get_bounds
      if (left_bounds.attr_x + left.internal_get_minimum_width > x)
        shift = left_bounds.attr_x + left.internal_get_minimum_width - x
        move_left(left, shift)
        left_bounds = left.internal_get_bounds
      end
      left_width = Math.max(left.internal_get_minimum_width, left_bounds.attr_width - pixels)
      left.set_bounds(left_bounds.attr_x, left_bounds.attr_y, left_width, left_bounds.attr_height)
      left.attr_requested_width = left_width
      width = bounds.attr_width + (bounds.attr_x - x)
      item.set_bounds(x, bounds.attr_y, width, bounds.attr_height)
      item.attr_requested_width = width
      damaged_width = bounds.attr_x - x + CoolItem::MINIMUM_WIDTH
      if (damaged_width > CoolItem::MINIMUM_WIDTH)
        internal_redraw(x, bounds.attr_y, damaged_width, bounds.attr_height)
      end
    end
    
    typesig { [CoolItem, ::Java::Int] }
    def move_right(item, pixels)
      point = find_item(item)
      row = point.attr_y
      index = point.attr_x
      if ((index).equal?(0))
        return
      end
      bounds = item.internal_get_bounds
      min_space_on_right = 0
      i = index
      while i < @items[row].attr_length
        min_space_on_right += @items[row][i].internal_get_minimum_width
        i += 1
      end
      max_ = get_width - min_space_on_right
      x = Math.min(max_, bounds.attr_x + pixels)
      width = 0
      if ((index + 1).equal?(@items[row].attr_length))
        width = get_width - x
      else
        right = @items[row][index + 1]
        right_bounds = right.internal_get_bounds
        if (x + item.internal_get_minimum_width > right_bounds.attr_x)
          shift = x + item.internal_get_minimum_width - right_bounds.attr_x
          move_right(right, shift)
          right_bounds = right.internal_get_bounds
        end
        width = right_bounds.attr_x - x
      end
      item.set_bounds(x, bounds.attr_y, width, bounds.attr_height)
      item.attr_requested_width = width
      left = @items[row][index - 1]
      left_bounds = left.internal_get_bounds
      left_width = x - left_bounds.attr_x
      left.set_bounds(left_bounds.attr_x, left_bounds.attr_y, left_width, left_bounds.attr_height)
      left.attr_requested_width = left_width
      damaged_width = x - bounds.attr_x + CoolItem::MINIMUM_WIDTH + CoolItem::MARGIN_WIDTH
      if (x - bounds.attr_x > 0)
        internal_redraw(bounds.attr_x - CoolItem::MARGIN_WIDTH, bounds.attr_y, damaged_width, bounds.attr_height)
      end
    end
    
    typesig { [CoolItem, ::Java::Int] }
    def move_up(item, x_root)
      point = find_item(item)
      old_row_index = point.attr_y
      resize = false
      if ((@items[old_row_index].attr_length).equal?(1))
        resize = true
        # If this is the only item in the top row, don't move it.
        if ((old_row_index).equal?(0))
          return
        end
      end
      remove_item_from_row(item, old_row_index, false)
      old = item.internal_get_bounds
      internal_redraw(old.attr_x, old.attr_y, CoolItem::MINIMUM_WIDTH, old.attr_height)
      new_row_index = Math.max(0, old_row_index - 1)
      if ((old_row_index).equal?(0))
        # Create a new top row for the item.
        new_rows = Array.typed(Array.typed(CoolItem)).new(@items.attr_length + 1) { nil }
        System.arraycopy(@items, 0, new_rows, 1, @items.attr_length)
        new_rows[0] = Array.typed(CoolItem).new(1) { nil }
        new_rows[0][0] = item
        @items = new_rows
        resize = true
        item.attr_wrap = true
      else
        insert_item_into_row(item, new_row_index, x_root)
      end
      if (resize)
        relayout
      else
        layout_items
      end
    end
    
    typesig { [Event] }
    def on_dispose(event)
      # Usually when an item is disposed, destroyItem will change the size of the items array
      # and reset the bounds of all the remaining cool items.
      # Since the whole cool bar is being disposed, this is not necessary.  For speed
      # the inDispose flag is used to skip over this part of the item dispose.
      if (@in_dispose)
        return
      end
      @in_dispose = true
      notify_listeners(SWT::Dispose, event)
      event.attr_type = SWT::None
      i = 0
      while i < @items.attr_length
        j = 0
        while j < @items[i].attr_length
          @items[i][j].dispose
          j += 1
        end
        i += 1
      end
      @hover_cursor.dispose
      @drag_cursor.dispose
      @cursor = nil
    end
    
    typesig { [Event] }
    def on_mouse_down(event)
      if (@is_locked || !(event.attr_button).equal?(1))
        return
      end
      fix_event(event)
      @dragging = get_grabbed_item(event.attr_x, event.attr_y)
      if (!(@dragging).nil?)
        @mouse_xoffset = event.attr_x
        @item_xoffset = @mouse_xoffset - @dragging.internal_get_bounds.attr_x
        __set_cursor(@drag_cursor)
      end
      fix_event(event)
    end
    
    typesig { [] }
    def on_mouse_exit
      if ((@dragging).nil?)
        __set_cursor(nil)
      end
    end
    
    typesig { [Event] }
    def on_mouse_move(event)
      if (@is_locked)
        return
      end
      fix_event(event)
      grabbed = get_grabbed_item(event.attr_x, event.attr_y)
      if (!(@dragging).nil?)
        left_root = to_display(Point.new(event.attr_x - @item_xoffset, event.attr_y)).attr_x
        bounds = @dragging.internal_get_bounds
        if (event.attr_y < bounds.attr_y)
          move_up(@dragging, left_root)
        else
          if (event.attr_y > bounds.attr_y + bounds.attr_height)
            move_down(@dragging, left_root)
          else
            if (event.attr_x < @mouse_xoffset)
              distance = Math.min(@mouse_xoffset, bounds.attr_x + @item_xoffset) - event.attr_x
              if (distance > 0)
                move_left(@dragging, distance)
              end
            else
              if (event.attr_x > @mouse_xoffset)
                distance = event.attr_x - Math.max(@mouse_xoffset, bounds.attr_x + @item_xoffset)
                if (distance > 0)
                  move_right(@dragging, distance)
                end
              end
            end
          end
        end
        @mouse_xoffset = event.attr_x
      else
        if (!(grabbed).nil?)
          __set_cursor(@hover_cursor)
        else
          __set_cursor(nil)
        end
      end
      fix_event(event)
    end
    
    typesig { [Event] }
    def on_mouse_up(event)
      __set_cursor(nil)
      @dragging = nil
    end
    
    typesig { [Event] }
    def on_mouse_double_click(event)
      if (@is_locked)
        return
      end
      @dragging = nil
      fix_event(event)
      target = get_grabbed_item(event.attr_x, event.attr_y)
      if ((target).nil?)
        __set_cursor(nil)
      else
        location = find_item(target)
        row = location.attr_y
        index = location.attr_x
        if (@items[row].attr_length > 1)
          bounds = target.internal_get_bounds
          max_size = get_width
          i = 0
          while i < @items[row].attr_length
            if (!(i).equal?(index))
              max_size -= @items[row][i].internal_get_minimum_width
            end
            i += 1
          end
          if ((bounds.attr_width).equal?(max_size))
            # The item is at its maximum width. It should be resized to its minimum width.
            distance = bounds.attr_width - target.internal_get_minimum_width
            if (index + 1 < @items[row].attr_length)
              # There is an item to the right. Maximize it.
              right = @items[row][index + 1]
              move_left(right, distance)
            else
              # There is no item to the right. Move the item all the way right.
              move_right(target, distance)
            end
          else
            if (bounds.attr_width < target.attr_preferred_width)
              # The item is less than its preferredWidth. Resize to preferredWidth.
              distance = target.attr_preferred_width - bounds.attr_width
              if (index + 1 < @items[row].attr_length)
                right = @items[row][index + 1]
                move_right(right, distance)
                distance = target.attr_preferred_width - target.internal_get_bounds.attr_width
              end
              if (distance > 0)
                move_left(target, distance)
              end
            else
              # The item is at its minimum width. Maximize it.
              i_ = 0
              while i_ < @items[row].attr_length
                if (!(i_).equal?(index))
                  item = @items[row][i_]
                  item.attr_requested_width = Math.max(item.internal_get_minimum_width, CoolItem::MINIMUM_WIDTH)
                end
                i_ += 1
              end
              target.attr_requested_width = max_size
              layout_items
            end
          end
          __set_cursor(@hover_cursor)
        end
      end
      fix_event(event)
    end
    
    typesig { [Event] }
    def on_paint(event)
      gc = event.attr_gc
      if ((@items.attr_length).equal?(0))
        return
      end
      shadow_color = self.attr_display.get_system_color(SWT::COLOR_WIDGET_NORMAL_SHADOW)
      highlight_color = self.attr_display.get_system_color(SWT::COLOR_WIDGET_HIGHLIGHT_SHADOW)
      vertical = !((self.attr_style & SWT::VERTICAL)).equal?(0)
      flat = !((self.attr_style & SWT::FLAT)).equal?(0)
      stop_x = get_width
      rect = nil
      clipping = gc.get_clipping
      row = 0
      while row < @items.attr_length
        bounds = Rectangle.new(0, 0, 0, 0)
        i = 0
        while i < @items[row].attr_length
          bounds = @items[row][i].internal_get_bounds
          rect = fix_rectangle(bounds.attr_x, bounds.attr_y, bounds.attr_width, bounds.attr_height)
          if (!clipping.intersects(rect))
            i += 1
            next
          end
          native_gripper = false
          # Draw gripper.
          if (!@is_locked)
            rect = fix_rectangle(bounds.attr_x, bounds.attr_y, CoolItem::MINIMUM_WIDTH, bounds.attr_height)
            if (!flat)
              native_gripper = draw_gripper(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height, vertical)
            end
            if (!native_gripper)
              grabber_trim = 2
              grabber_height = bounds.attr_height - (2 * grabber_trim) - 1
              gc.set_foreground(shadow_color)
              rect = fix_rectangle(bounds.attr_x + CoolItem::MARGIN_WIDTH, bounds.attr_y + grabber_trim, 2, grabber_height)
              gc.draw_rectangle(rect)
              gc.set_foreground(highlight_color)
              rect = fix_rectangle(bounds.attr_x + CoolItem::MARGIN_WIDTH, bounds.attr_y + grabber_trim + 1, bounds.attr_x + CoolItem::MARGIN_WIDTH, bounds.attr_y + grabber_trim + grabber_height - 1)
              gc.draw_line(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
              rect = fix_rectangle(bounds.attr_x + CoolItem::MARGIN_WIDTH, bounds.attr_y + grabber_trim, bounds.attr_x + CoolItem::MARGIN_WIDTH + 1, bounds.attr_y + grabber_trim)
              gc.draw_line(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
            end
          end
          # Draw separator.
          if (!flat && !native_gripper && !(i).equal?(0))
            gc.set_foreground(shadow_color)
            rect = fix_rectangle(bounds.attr_x, bounds.attr_y, bounds.attr_x, bounds.attr_y + bounds.attr_height - 1)
            gc.draw_line(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
            gc.set_foreground(highlight_color)
            rect = fix_rectangle(bounds.attr_x + 1, bounds.attr_y, bounds.attr_x + 1, bounds.attr_y + bounds.attr_height - 1)
            gc.draw_line(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
          end
          i += 1
        end
        if (!flat && row + 1 < @items.attr_length)
          # Draw row separator.
          separator_y = bounds.attr_y + bounds.attr_height
          gc.set_foreground(shadow_color)
          rect = fix_rectangle(0, separator_y, stop_x, separator_y)
          gc.draw_line(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
          gc.set_foreground(highlight_color)
          rect = fix_rectangle(0, separator_y + 1, stop_x, separator_y + 1)
          gc.draw_line(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
        end
        row += 1
      end
    end
    
    typesig { [] }
    def on_resize
      layout_items
    end
    
    typesig { [Control] }
    def remove_control(control)
      super(control)
      items = get_items
      i = 0
      while i < items.attr_length
        item = items[i]
        if ((item.attr_control).equal?(control))
          item.set_control(nil)
        end
        i += 1
      end
    end
    
    typesig { [CoolItem, ::Java::Int, ::Java::Boolean] }
    # Remove the item from the row. Adjust the x and width values
    # appropriately.
    def remove_item_from_row(item, row_index, disposed)
      index = find_item(item).attr_x
      new_length = @items[row_index].attr_length - 1
      item_bounds = item.internal_get_bounds
      item.attr_wrap = false
      if (new_length > 0)
        new_row = Array.typed(CoolItem).new(new_length) { nil }
        System.arraycopy(@items[row_index], 0, new_row, 0, index)
        System.arraycopy(@items[row_index], index + 1, new_row, index, new_row.attr_length - index)
        @items[row_index] = new_row
        @items[row_index][0].attr_wrap = true
      else
        new_rows = Array.typed(Array.typed(CoolItem)).new(@items.attr_length - 1) { nil }
        System.arraycopy(@items, 0, new_rows, 0, row_index)
        System.arraycopy(@items, row_index + 1, new_rows, row_index, new_rows.attr_length - row_index)
        @items = new_rows
        return
      end
      if (!disposed)
        if ((index).equal?(0))
          first = @items[row_index][0]
          bounds = first.internal_get_bounds
          width = bounds.attr_x + bounds.attr_width
          first.set_bounds(0, bounds.attr_y, width, bounds.attr_height)
          first.attr_requested_width = width
          internal_redraw(bounds.attr_x, bounds.attr_y, CoolItem::MINIMUM_WIDTH, bounds.attr_height)
        else
          previous = @items[row_index][index - 1]
          bounds = previous.internal_get_bounds
          width = bounds.attr_width + item_bounds.attr_width
          previous.set_bounds(bounds.attr_x, bounds.attr_y, width, bounds.attr_height)
          previous.attr_requested_width = width
        end
      end
    end
    
    typesig { [] }
    # Return the height of the bar after it has
    # been properly laid out for the given width.
    def layout_items
      y = 0
      width = 0
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        width = get_client_area.attr_height
      else
        width = get_client_area.attr_width
      end
      wrap_items(width)
      row_spacing = !((self.attr_style & SWT::FLAT)).equal?(0) ? 0 : ROW_SPACING
      row = 0
      while row < @items.attr_length
        count = @items[row].attr_length
        x = 0
        # determine the height and the available width for the row
        row_height = 0
        available = width
        i = 0
        while i < count
          item = @items[row][i]
          row_height = Math.max(row_height, item.internal_get_bounds.attr_height)
          available -= item.internal_get_minimum_width
          i += 1
        end
        if (row > 0)
          y += row_spacing
        end
        # lay the items out
        i_ = 0
        while i_ < count
          child = @items[row][i_]
          new_width = available + child.internal_get_minimum_width
          if (i_ + 1 < count)
            new_width = Math.min(new_width, child.attr_requested_width)
            available -= (new_width - child.internal_get_minimum_width)
          end
          old_bounds = child.internal_get_bounds
          new_bounds = Rectangle.new(x, y, new_width, row_height)
          if (!(old_bounds == new_bounds))
            child.set_bounds(new_bounds.attr_x, new_bounds.attr_y, new_bounds.attr_width, new_bounds.attr_height)
            damage = Rectangle.new(0, 0, 0, 0)
            # Cases are in descending order from most area to redraw to least.
            if (!(old_bounds.attr_y).equal?(new_bounds.attr_y))
              damage = new_bounds
              damage.add(old_bounds)
              # Redraw the row separator as well.
              damage.attr_y -= row_spacing
              damage.attr_height += 2 * row_spacing
            else
              if (!(old_bounds.attr_height).equal?(new_bounds.attr_height))
                # Draw from the bottom of the gripper to the bottom of the new area.
                # (Bottom of the gripper is -3 from the bottom of the item).
                damage.attr_y = new_bounds.attr_y + Math.min(old_bounds.attr_height, new_bounds.attr_height) - 3
                damage.attr_height = new_bounds.attr_y + new_bounds.attr_height + row_spacing
                damage.attr_x = old_bounds.attr_x - CoolItem::MARGIN_WIDTH
                damage.attr_width = old_bounds.attr_width + CoolItem::MARGIN_WIDTH
              else
                if (!(old_bounds.attr_x).equal?(new_bounds.attr_x))
                  # Redraw only the difference between the separators.
                  damage.attr_x = Math.min(old_bounds.attr_x, new_bounds.attr_x)
                  damage.attr_width = Math.abs(old_bounds.attr_x - new_bounds.attr_x) + CoolItem::MINIMUM_WIDTH
                  damage.attr_y = old_bounds.attr_y
                  damage.attr_height = old_bounds.attr_height
                end
              end
            end
            internal_redraw(damage.attr_x, damage.attr_y, damage.attr_width, damage.attr_height)
          end
          x += new_width
          i_ += 1
        end
        y += row_height
        row += 1
      end
      return y
    end
    
    typesig { [] }
    def relayout
      size = get_size
      height = layout_items
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        trim = compute_trim(0, 0, height, 0)
        if (!(height).equal?(size.attr_x))
          Composite.instance_method(:set_size).bind(self).call(trim.attr_width, size.attr_y)
        end
      else
        trim = compute_trim(0, 0, 0, height)
        if (!(height).equal?(size.attr_y))
          Composite.instance_method(:set_size).bind(self).call(size.attr_x, trim.attr_height)
        end
      end
    end
    
    typesig { [] }
    # Returns an array of zero-relative ints that map
    # the creation order of the receiver's items to the
    # order in which they are currently being displayed.
    # <p>
    # Specifically, the indices of the returned array represent
    # the current visual order of the items, and the contents
    # of the array represent the creation order of the items.
    # </p><p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of items, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return the current visual order of the receiver's items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_order
      check_widget
      count = get_item_count
      indices = Array.typed(::Java::Int).new(count) { 0 }
      count = 0
      i = 0
      while i < @items.attr_length
        j = 0
        while j < @items[i].attr_length
          item = @items[i][j]
          index = 0
          while (index < @original_items.attr_length)
            if ((@original_items[index]).equal?(item))
              break
            end
            index += 1
          end
          if ((index).equal?(@original_items.attr_length))
            error(SWT::ERROR_CANNOT_GET_ITEM)
          end
          indices[((count += 1) - 1)] = index
          j += 1
        end
        i += 1
      end
      return indices
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def set_item_order(item_order)
      if ((item_order).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      count = @original_items.attr_length
      if (!(item_order.attr_length).equal?(count))
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      # Ensure that itemOrder does not contain any duplicates.
      set = Array.typed(::Java::Boolean).new(count) { false }
      i = 0
      while i < set.attr_length
        set[i] = false
        i += 1
      end
      i_ = 0
      while i_ < item_order.attr_length
        if (item_order[i_] < 0 || item_order[i_] >= count)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (set[item_order[i_]])
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        set[item_order[i_]] = true
        i_ += 1
      end
      row = Array.typed(CoolItem).new(count) { nil }
      i__ = 0
      while i__ < count
        row[i__] = @original_items[item_order[i__]]
        i__ += 1
      end
      @items = Array.typed(Array.typed(CoolItem)).new(1) { Array.typed(CoolItem).new(count) { nil } }
      @items[0] = row
    end
    
    typesig { [] }
    # Returns an array of points whose x and y coordinates describe
    # the widths and heights (respectively) of the items in the receiver
    # in the order in which they are currently being displayed.
    # 
    # @return the receiver's item sizes in their current visual order
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_sizes
      check_widget
      items = get_items
      sizes = Array.typed(Point).new(items.attr_length) { nil }
      i = 0
      while i < items.attr_length
        sizes[i] = items[i].get_size
        i += 1
      end
      return sizes
    end
    
    typesig { [Array.typed(Point)] }
    def set_item_sizes(sizes)
      if ((sizes).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      items = get_items
      if (!(sizes.attr_length).equal?(items.attr_length))
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      i = 0
      while i < items.attr_length
        items[i].set_size(sizes[i])
        i += 1
      end
    end
    
    typesig { [] }
    # Returns whether or not the receiver is 'locked'. When a coolbar
    # is locked, its items cannot be repositioned.
    # 
    # @return true if the coolbar is locked, false otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.0
    def get_locked
      check_widget
      return @is_locked
    end
    
    typesig { [] }
    def get_width
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        return get_size.attr_y
      end
      return get_size.attr_x
    end
    
    typesig { [] }
    # Returns an array of ints that describe the zero-relative
    # indices of any item(s) in the receiver that will begin on
    # a new row. The 0th visible item always begins the first row,
    # therefore it does not count as a wrap index.
    # 
    # @return an array containing the receiver's wrap indices, or an empty array if all items are in one row
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_wrap_indices
      check_widget
      if (@items.attr_length <= 1)
        return Array.typed(::Java::Int).new([])
      end
      wrap_indices = Array.typed(::Java::Int).new(@items.attr_length - 1) { 0 }
      i = 0
      next_wrap = @items[0].attr_length
      row = 1
      while row < @items.attr_length
        if (@items[row][0].attr_wrap)
          wrap_indices[((i += 1) - 1)] = next_wrap
        end
        next_wrap += @items[row].attr_length
        row += 1
      end
      if (!(i).equal?(wrap_indices.attr_length))
        tmp = Array.typed(::Java::Int).new(i) { 0 }
        System.arraycopy(wrap_indices, 0, tmp, 0, i)
        return tmp
      end
      return wrap_indices
    end
    
    typesig { [::Java::Boolean] }
    # Sets whether or not the receiver is 'locked'. When a coolbar
    # is locked, its items cannot be repositioned.
    # 
    # @param locked lock the coolbar if true, otherwise unlock the coolbar
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.0
    def set_locked(locked)
      check_widget
      if (!(@is_locked).equal?(locked))
        redraw
      end
      @is_locked = locked
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Sets the indices of all item(s) in the receiver that will
    # begin on a new row. The indices are given in the order in
    # which they are currently being displayed. The 0th item
    # always begins the first row, therefore it does not count
    # as a wrap index. If indices is null or empty, the items
    # will be placed on one line.
    # 
    # @param indices an array of wrap indices, or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_wrap_indices(indices)
      check_widget
      if ((indices).nil?)
        indices = Array.typed(::Java::Int).new(0) { 0 }
      end
      count = @original_items.attr_length
      i = 0
      while i < indices.attr_length
        if (indices[i] < 0 || indices[i] >= count)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        i += 1
      end
      i_ = 0
      while i_ < @original_items.attr_length
        @original_items[i_].attr_wrap = false
        i_ += 1
      end
      i__ = 0
      while i__ < indices.attr_length
        index = indices[i__]
        row = 0
        while row < @items.attr_length
          if (@items[row].attr_length > index)
            @items[row][index].attr_wrap = true
            break
          else
            index -= @items[row].attr_length
          end
          row += 1
        end
        i__ += 1
      end
      relayout
    end
    
    typesig { [Cursor] }
    def set_cursor(cursor)
      check_widget
      super(@cursor = cursor)
    end
    
    typesig { [Array.typed(::Java::Int), Array.typed(::Java::Int), Array.typed(Point)] }
    # Sets the receiver's item order, wrap indices, and item sizes
    # all at once. This method is typically used to restore the
    # displayed state of the receiver to a previously stored state.
    # <p>
    # The item order is the order in which the items in the receiver
    # should be displayed, given in terms of the zero-relative ordering
    # of when the items were added.
    # </p><p>
    # The wrap indices are the indices of all item(s) in the receiver
    # that will begin on a new row. The indices are given in the order
    # specified by the item order. The 0th item always begins the first
    # row, therefore it does not count as a wrap index. If wrap indices
    # is null or empty, the items will be placed on one line.
    # </p><p>
    # The sizes are specified in an array of points whose x and y
    # coordinates describe the new widths and heights (respectively)
    # of the receiver's items in the order specified by the item order.
    # </p>
    # 
    # @param itemOrder an array of indices that describe the new order to display the items in
    # @param wrapIndices an array of wrap indices, or null
    # @param sizes an array containing the new sizes for each of the receiver's items in visual order
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if item order or sizes is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if item order or sizes is not the same length as the number of items</li>
    # </ul>
    def set_item_layout(item_order, wrap_indices, sizes)
      check_widget
      set_item_order(item_order)
      set_wrap_indices(wrap_indices)
      set_item_sizes(sizes)
      relayout
    end
    
    typesig { [::Java::Int] }
    def wrap_items(max_width)
      item_count = @original_items.attr_length
      if (item_count < 2)
        return
      end
      items_visual = Array.typed(CoolItem).new(item_count) { nil }
      start = 0
      row = 0
      while row < @items.attr_length
        System.arraycopy(@items[row], 0, items_visual, start, @items[row].attr_length)
        start += @items[row].attr_length
        row += 1
      end
      new_items = Array.typed(Array.typed(CoolItem)).new(item_count) { nil }
      row_count = 0
      row_width = 0
      start = 0
      i = 0
      while i < item_count
        item = items_visual[i]
        item_width = item.internal_get_minimum_width
        if ((i > 0 && item.attr_wrap) || (!(max_width).equal?(SWT::DEFAULT) && row_width + item_width > max_width))
          if ((i).equal?(start))
            new_items[row_count] = Array.typed(CoolItem).new(1) { nil }
            new_items[row_count][0] = item
            start = i + 1
            row_width = 0
          else
            count = i - start
            new_items[row_count] = Array.typed(CoolItem).new(count) { nil }
            System.arraycopy(items_visual, start, new_items[row_count], 0, count)
            start = i
            row_width = item_width
          end
          row_count += 1
        else
          row_width += item_width
        end
        i += 1
      end
      if (start < item_count)
        count = item_count - start
        new_items[row_count] = Array.typed(CoolItem).new(count) { nil }
        System.arraycopy(items_visual, start, new_items[row_count], 0, count)
        row_count += 1
      end
      if (!(new_items.attr_length).equal?(row_count))
        tmp = Array.typed(Array.typed(CoolItem)).new(row_count) { nil }
        System.arraycopy(new_items, 0, tmp, 0, row_count)
        @items = tmp
      else
        @items = new_items
      end
    end
    
    private
    alias_method :initialize__cool_bar, :initialize
  end
  
end
