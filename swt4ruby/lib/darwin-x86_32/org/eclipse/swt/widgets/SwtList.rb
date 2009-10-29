require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Widgets
  module ListImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Accessibility
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  # Instances of this class represent a selectable user interface
  # object that displays a list of strings and issues notification
  # when a string is selected.  A list may be single or multi select.
  # <p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>SINGLE, MULTI</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection, DefaultSelection</dd>
  # </dl>
  # <p>
  # Note: Only one of SINGLE and MULTI may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#list">List snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class SwtList < ListImports.const_get :Scrollable
    include_class_members ListImports
    
    attr_accessor :column
    alias_method :attr_column, :column
    undef_method :column
    alias_method :attr_column=, :column=
    undef_method :column=
    
    attr_accessor :items
    alias_method :attr_items, :items
    undef_method :items
    alias_method :attr_items=, :items=
    undef_method :items=
    
    attr_accessor :item_count
    alias_method :attr_item_count, :item_count
    undef_method :item_count
    alias_method :attr_item_count=, :item_count=
    undef_method :item_count=
    
    attr_accessor :ignore_select
    alias_method :attr_ignore_select, :ignore_select
    undef_method :ignore_select
    alias_method :attr_ignore_select=, :ignore_select=
    undef_method :ignore_select=
    
    class_module.module_eval {
      
      def next_id
        defined?(@@next_id) ? @@next_id : @@next_id= 0
      end
      alias_method :attr_next_id, :next_id
      
      def next_id=(value)
        @@next_id = value
      end
      alias_method :attr_next_id=, :next_id=
      
      const_set_lazy(:CELL_GAP) { 1 }
      const_attr_reader  :CELL_GAP
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
    # @see SWT#SINGLE
    # @see SWT#MULTI
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @column = nil
      @items = nil
      @item_count = 0
      @ignore_select = false
      super(parent, check_style(style))
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def accessibility_attribute_value(id, sel, arg0)
      if (!(self.attr_accessible).nil?)
        attribute = NSString.new(arg0)
        return_value = self.attr_accessible.internal_accessibility_attribute_value(attribute, ACC::CHILDID_SELF)
        if (!(return_value).nil?)
          return return_value.attr_id
        end
      end
      attribute_name = NSString.new(arg0)
      # Accessibility Verifier queries for a title or description.  NSOutlineView doesn't
      # seem to return either, so we return a default description value here.
      if (attribute_name.is_equal_to_string(OS::NSAccessibilityDescriptionAttribute))
        return NSString.string_with("").attr_id
      end
      # if (attributeName.isEqualToString(OS.NSAccessibilityHeaderAttribute)) {
      # /*
      # * Bug in the Macintosh.  Even when the header is not visible,
      # * VoiceOver still reports each column header's role for every row.
      # * This is confusing and overly verbose.  The fix is to return
      # * "no header" when the screen reader asks for the header, by
      # * returning noErr without setting the event parameter.
      # */
      # return 0;
      # }
      return super(id, sel, arg0)
    end
    
    typesig { [String] }
    # Adds the argument to the end of the receiver's list.
    # 
    # @param string the new item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #add(String,int)
    def add(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@item_count).equal?(@items.attr_length))
        new_items = Array.typed(String).new(@item_count + 4) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
      end
      @items[((@item_count += 1) - 1)] = string
      (self.attr_view).note_number_of_rows_changed
      set_scroll_width(string)
    end
    
    typesig { [String, ::Java::Int] }
    # Adds the argument to the receiver's list at the given
    # zero-relative index.
    # <p>
    # Note: To add an item at the end of the list, use the
    # result of calling <code>getItemCount()</code> as the
    # index or use <code>add(String)</code>.
    # </p>
    # 
    # @param string the new item
    # @param index the index for the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #add(String)
    def add(string, index)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (!(0 <= index && index <= @item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      if ((@item_count).equal?(@items.attr_length))
        new_items = Array.typed(String).new(@item_count + 4) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
      end
      System.arraycopy(@items, index, @items, index + 1, ((@item_count += 1) - 1) - index)
      @items[index] = string
      (self.attr_view).note_number_of_rows_changed
      if (!(index).equal?(@item_count))
        fix_selection(index, true)
      end
      set_scroll_width(string)
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the user changes the receiver's selection, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # <code>widgetSelected</code> is called when the selection changes.
    # <code>widgetDefaultSelected</code> is typically called when an item is double-clicked.
    # </p>
    # 
    # @param listener the listener which should be notified when the user changes the receiver's selection
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SelectionListener
    # @see #removeSelectionListener
    # @see SelectionEvent
    def add_selection_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Selection, typed_listener)
      add_listener(SWT::DefaultSelection, typed_listener)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        return check_bits(style, SWT::SINGLE, SWT::MULTI, 0, 0, 0, 0)
      end
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      width = 0
      if ((w_hint).equal?(SWT::DEFAULT))
        cell = @column.data_cell
        font = !(self.attr_font).nil? ? self.attr_font : default_font
        cell.set_font(font.attr_handle)
        i = 0
        while i < @items.attr_length
          if (!(@items[i]).nil?)
            cell.set_title(NSString.string_with(@items[i]))
            size = cell.cell_size
            width = Math.max(width, RJava.cast_to_int(Math.ceil(size.attr_width)))
          end
          i += 1
        end
        width += CELL_GAP
      else
        width = w_hint
      end
      if (width <= 0)
        width = DEFAULT_WIDTH
      end
      height = 0
      if ((h_hint).equal?(SWT::DEFAULT))
        item_height = get_item_height + CELL_GAP
        height = @item_count * item_height
      else
        height = h_hint
      end
      if (height <= 0)
        height = DEFAULT_HEIGHT
      end
      rect = compute_trim(0, 0, width, height)
      return Point.new(rect.attr_width, rect.attr_height)
    end
    
    typesig { [] }
    def create_handle
      scroll_widget = SWTScrollView.new.alloc
      scroll_widget.init
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        scroll_widget.set_has_horizontal_scroller(true)
      end
      if (!((self.attr_style & SWT::V_SCROLL)).equal?(0))
        scroll_widget.set_has_vertical_scroller(true)
      end
      scroll_widget.set_autohides_scrollers(true)
      scroll_widget.set_border_type(!((self.attr_style & SWT::BORDER)).equal?(0) ? OS::NSBezelBorder : OS::NSNoBorder)
      widget = SWTTableView.new.alloc
      widget.init
      widget.set_allows_multiple_selection(!((self.attr_style & SWT::MULTI)).equal?(0))
      widget.set_data_source(widget)
      widget.set_header_view(nil)
      widget.set_delegate(widget)
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        widget.set_column_autoresizing_style(OS::NSTableViewNoColumnAutoresizing)
      end
      spacing = NSSize.new
      spacing.attr_width = spacing.attr_height = CELL_GAP
      widget.set_intercell_spacing(spacing)
      widget.set_double_action(OS.attr_sel_send_double_selection)
      if (!has_border)
        widget.set_focus_ring_type(OS::NSFocusRingTypeNone)
      end
      @column = NSTableColumn.new.alloc
      @column = @column.init_with_identifier(NSString.string_with(String.value_of((self.attr_next_id += 1))))
      @column.set_width(0)
      widget.add_table_column(@column)
      self.attr_scroll_view = scroll_widget
      self.attr_view = widget
    end
    
    typesig { [] }
    def create_widget
      super
      @items = Array.typed(String).new(4) { nil }
    end
    
    typesig { [] }
    def default_background
      return self.attr_display.get_widget_color(SWT::COLOR_LIST_BACKGROUND)
    end
    
    typesig { [] }
    def default_nsfont
      return self.attr_display.attr_table_view_font
    end
    
    typesig { [] }
    def default_foreground
      return self.attr_display.get_widget_color(SWT::COLOR_LIST_FOREGROUND)
    end
    
    typesig { [::Java::Int] }
    # Deselects the item at the given zero-relative index in the receiver.
    # If the item at the index was already deselected, it remains
    # deselected. Indices that are out of range are ignored.
    # 
    # @param index the index of the item to deselect
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def deselect(index)
      check_widget
      if (0 <= index && index < @item_count)
        widget = self.attr_view
        @ignore_select = true
        widget.deselect_row(index)
        @ignore_select = false
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Deselects the items at the given zero-relative indices in the receiver.
    # If the item at the given zero-relative index in the receiver
    # is selected, it is deselected.  If the item at the index
    # was not selected, it remains deselected.  The range of the
    # indices is inclusive. Indices that are out of range are ignored.
    # 
    # @param start the start index of the items to deselect
    # @param end the end index of the items to deselect
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def deselect(start, end_)
      check_widget
      if (start > end_)
        return
      end
      if (end_ < 0 || start >= @item_count)
        return
      end
      start = Math.max(0, start)
      end_ = Math.min(@item_count - 1, end_)
      if ((start).equal?(0) && (end_).equal?(@item_count - 1))
        deselect_all
      else
        widget = self.attr_view
        @ignore_select = true
        i = start
        while i <= end_
          widget.deselect_row(i)
          i += 1
        end
        @ignore_select = false
      end
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Deselects the items at the given zero-relative indices in the receiver.
    # If the item at the given zero-relative index in the receiver
    # is selected, it is deselected.  If the item at the index
    # was not selected, it remains deselected. Indices that are out
    # of range and duplicate indices are ignored.
    # 
    # @param indices the array of indices for the items to deselect
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the set of indices is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def deselect(indices)
      check_widget
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      widget = self.attr_view
      @ignore_select = true
      i = 0
      while i < indices.attr_length
        widget.deselect_row(indices[i])
        i += 1
      end
      @ignore_select = false
    end
    
    typesig { [] }
    # Deselects all selected items in the receiver.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def deselect_all
      check_widget
      widget = self.attr_view
      @ignore_select = true
      widget.deselect_all(nil)
      @ignore_select = false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Boolean)] }
    def drag_detect(x, y, filter, consume)
      widget = self.attr_view
      pt = NSPoint.new
      pt.attr_x = x
      pt.attr_y = y
      # long
      row = widget.row_at_point(pt)
      if ((row).equal?(-1))
        return false
      end
      dragging = super(x, y, filter, consume)
      if (dragging)
        if (!widget.is_row_selected(row))
          # TODO expand current selection when Shift, Command key pressed??
          set = NSIndexSet.new.alloc
          set = set.init_with_index(row)
          widget.select_row_indexes(set, false)
          set.release
        end
      end
      consume[0] = dragging
      return dragging
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def fix_selection(index, add)
      selection = get_selection_indices
      if ((selection.attr_length).equal?(0))
        return
      end
      new_count = 0
      fix = false
      i = 0
      while i < selection.attr_length
        if (!add && (selection[i]).equal?(index))
          fix = true
        else
          new_index = ((new_count += 1) - 1)
          selection[new_index] = selection[i]
          if (selection[new_index] >= index)
            selection[new_index] += add ? 1 : -1
            fix = true
          end
        end
        i += 1
      end
      if (fix)
        select(selection, new_count, true)
      end
    end
    
    typesig { [] }
    # Returns the zero-relative index of the item which currently
    # has the focus in the receiver, or -1 if no item has focus.
    # 
    # @return the index of the selected item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_focus_index
      check_widget
      # 64
      return RJava.cast_to_int((self.attr_view).selected_row)
    end
    
    typesig { [::Java::Int] }
    # Returns the item at the given, zero-relative index in the
    # receiver. Throws an exception if the index is out of range.
    # 
    # @param index the index of the item to return
    # @return the item at the given index
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
      if (!(0 <= index && index < @item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      return @items[index]
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
      return @item_count
    end
    
    typesig { [] }
    # Returns the height of the area which would be used to
    # display <em>one</em> of the items in the list.
    # 
    # @return the height of one item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_height
      check_widget
      return RJava.cast_to_int((self.attr_view).row_height)
    end
    
    typesig { [] }
    # Returns a (possibly empty) array of <code>String</code>s which
    # are the items in the receiver.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of items, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return the items in the receiver's list
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_items
      check_widget
      result = Array.typed(String).new(@item_count) { nil }
      System.arraycopy(@items, 0, result, 0, @item_count)
      return result
    end
    
    typesig { [] }
    # Returns an array of <code>String</code>s that are currently
    # selected in the receiver.  The order of the items is unspecified.
    # An empty array indicates that no items are selected.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its selection, so modifying the array will
    # not affect the receiver.
    # </p>
    # @return an array representing the selection
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection
      check_widget
      widget = self.attr_view
      if ((widget.number_of_selected_rows).equal?(0))
        return Array.typed(String).new(0) { nil }
      end
      selection = widget.selected_row_indexes
      # 64
      count_ = RJava.cast_to_int(selection.count)
      # long
      # long
      index_buffer = Array.typed(::Java::Int).new(count_) { 0 }
      selection.get_indexes(index_buffer, count_, 0)
      result = Array.typed(String).new(count_) { nil }
      i = 0
      while i < count_
        # 64
        result[i] = @items[RJava.cast_to_int(index_buffer[i])]
        i += 1
      end
      return result
    end
    
    typesig { [] }
    # Returns the number of selected items contained in the receiver.
    # 
    # @return the number of selected items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_count
      check_widget
      # 64
      return RJava.cast_to_int((self.attr_view).number_of_selected_rows)
    end
    
    typesig { [] }
    # Returns the zero-relative index of the item which is currently
    # selected in the receiver, or -1 if no item is selected.
    # 
    # @return the index of the selected item or -1
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_index
      check_widget
      widget = self.attr_view
      if ((widget.number_of_selected_rows).equal?(0))
        return -1
      end
      selection = widget.selected_row_indexes
      # 64
      count_ = RJava.cast_to_int(selection.count)
      # long
      # long
      result = Array.typed(::Java::Int).new(count_) { 0 }
      selection.get_indexes(result, count_, 0)
      # 64
      return RJava.cast_to_int(result[0])
    end
    
    typesig { [] }
    # Returns the zero-relative indices of the items which are currently
    # selected in the receiver.  The order of the indices is unspecified.
    # The array is empty if no items are selected.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its selection, so modifying the array will
    # not affect the receiver.
    # </p>
    # @return the array of indices of the selected items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_indices
      check_widget
      widget = self.attr_view
      if ((widget.number_of_selected_rows).equal?(0))
        return Array.typed(::Java::Int).new(0) { 0 }
      end
      selection = widget.selected_row_indexes
      # 64
      count_ = RJava.cast_to_int(selection.count)
      # long
      # long
      indices = Array.typed(::Java::Int).new(count_) { 0 }
      selection.get_indexes(indices, count_, 0)
      result = Array.typed(::Java::Int).new(count_) { 0 }
      i = 0
      while i < result.attr_length
        # 64
        result[i] = RJava.cast_to_int(indices[i])
        i += 1
      end
      return result
    end
    
    typesig { [] }
    # Returns the zero-relative index of the item which is currently
    # at the top of the receiver. This index can change when items are
    # scrolled or new items are added or removed.
    # 
    # @return the index of the top item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_top_index
      check_widget
      # TODO - partial item at the top
      rect = self.attr_scroll_view.document_visible_rect
      point = NSPoint.new
      point.attr_x = rect.attr_x
      point.attr_y = rect.attr_y
      # 64
      result = RJava.cast_to_int((self.attr_view).row_at_point(point))
      if ((result).equal?(-1))
        result = 0
      end
      return result
    end
    
    typesig { [String] }
    # Gets the index of an item.
    # <p>
    # The list is searched starting at 0 until an
    # item is found that is equal to the search item.
    # If no item is found, -1 is returned.  Indexing
    # is zero based.
    # 
    # @param string the search item
    # @return the index of the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
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
      i = 0
      while i < @item_count
        if ((@items[i] == item))
          return i
        end
        i += 1
      end
      return -1
    end
    
    typesig { [String, ::Java::Int] }
    # Searches the receiver's list starting at the given,
    # zero-relative index until an item is found that is equal
    # to the argument, and returns the index of that item. If
    # no item is found or the starting index is out of range,
    # returns -1.
    # 
    # @param string the search item
    # @param start the zero-relative index at which to start the search
    # @return the index of the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def index_of(string, start)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      i = start
      while i < @item_count
        if ((@items[i] == string))
          return i
        end
        i += 1
      end
      return -1
    end
    
    typesig { [::Java::Int] }
    # Returns <code>true</code> if the item is selected,
    # and <code>false</code> otherwise.  Indices out of
    # range are ignored.
    # 
    # @param index the index of the item
    # @return the selection state of the item at the index
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def is_selected(index)
      check_widget
      if (!(0 <= index && index < @item_count))
        return false
      end
      return (self.attr_view).is_row_selected(index)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Feature in Cocoa: Table views do not change the selection when the user
    # right-clicks or control-clicks on an NSTableView or its subclasses. Fix is to select the
    # clicked-on row ourselves.
    # 
    # long
    # long
    # long
    # long
    def menu_for_event(id, sel, the_event)
      event = NSEvent.new(the_event)
      table = self.attr_view
      # get the current selections for the outline view.
      selected_row_indexes_ = table.selected_row_indexes
      # select the row that was clicked before showing the menu for the event
      mouse_point = self.attr_view.convert_point_from_view_(event.location_in_window, nil)
      # long
      row = table.row_at_point(mouse_point)
      # figure out if the row that was just clicked on is currently selected
      if ((selected_row_indexes_.contains_index(row)).equal?(false))
        set = NSIndexSet.new.alloc
        set = set.init_with_index(row)
        table.select_row_indexes(set, false)
        set.release
      end
      # else that row is currently selected, so don't change anything.
      return super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def number_of_rows_in_table_view(id, sel, a_table_view)
      return @item_count
    end
    
    typesig { [] }
    def release_handle
      super
      if (!(@column).nil?)
        @column.release
      end
      @column = nil
    end
    
    typesig { [] }
    def release_widget
      super
      @items = nil
    end
    
    typesig { [::Java::Int] }
    # Removes the item from the receiver at the given
    # zero-relative index.
    # 
    # @param index the index for the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove(index)
      check_widget
      if (!(0 <= index && index < @item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      remove(index, true)
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def remove(index, fix_scroll)
      if (!(index).equal?(@item_count - 1))
        fix_selection(index, false)
      end
      System.arraycopy(@items, index + 1, @items, index, (@item_count -= 1) - index)
      @items[@item_count] = nil
      (self.attr_view).note_number_of_rows_changed
      if (fix_scroll)
        set_scroll_width
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Removes the items from the receiver which are
    # between the given zero-relative start and end
    # indices (inclusive).
    # 
    # @param start the start of the range
    # @param end the end of the range
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if either the start or end are not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove(start, end_)
      check_widget
      if (start > end_)
        return
      end
      if (!(0 <= start && start <= end_ && end_ < @item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      length = end_ - start + 1
      i = 0
      while i < length
        remove(start, false)
        i += 1
      end
      set_scroll_width
    end
    
    typesig { [String] }
    # Searches the receiver's list starting at the first item
    # until an item is found that is equal to the argument,
    # and removes that item from the list.
    # 
    # @param string the item to remove
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the string is not found in the list</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      index = index_of(string, 0)
      if ((index).equal?(-1))
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      remove(index)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Removes the items from the receiver at the given
    # zero-relative indices.
    # 
    # @param indices the array of indices of the items
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # <li>ERROR_NULL_ARGUMENT - if the indices array is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove(indices)
      check_widget
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((indices.attr_length).equal?(0))
        return
      end
      new_indices = Array.typed(::Java::Int).new(indices.attr_length) { 0 }
      System.arraycopy(indices, 0, new_indices, 0, indices.attr_length)
      sort(new_indices)
      start = new_indices[new_indices.attr_length - 1]
      end_ = new_indices[0]
      count_ = get_item_count
      if (!(0 <= start && start <= end_ && end_ < count_))
        error(SWT::ERROR_INVALID_RANGE)
      end
      last = -1
      i = 0
      while i < new_indices.attr_length
        index = new_indices[i]
        if (!(index).equal?(last))
          remove(index, false)
          last = index
        end
        i += 1
      end
      set_scroll_width
    end
    
    typesig { [] }
    # Removes all of the items from the receiver.
    # <p>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove_all
      check_widget
      @items = Array.typed(String).new(4) { nil }
      @item_count = 0
      (self.attr_view).note_number_of_rows_changed
      set_scroll_width
    end
    
    typesig { [SelectionListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the user changes the receiver's selection.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SelectionListener
    # @see #addSelectionListener
    def remove_selection_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Selection, listener)
      self.attr_event_table.unhook(SWT::DefaultSelection, listener)
    end
    
    typesig { [::Java::Int] }
    # Selects the item at the given zero-relative index in the receiver's
    # list.  If the item at the index was already selected, it remains
    # selected. Indices that are out of range are ignored.
    # 
    # @param index the index of the item to select
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def select(index)
      check_widget
      if (0 <= index && index < @item_count)
        set = NSIndexSet.new.alloc
        set = set.init_with_index(index)
        widget = self.attr_view
        @ignore_select = true
        widget.select_row_indexes(set, !((self.attr_style & SWT::MULTI)).equal?(0))
        @ignore_select = false
        set.release
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Selects the items in the range specified by the given zero-relative
    # indices in the receiver. The range of indices is inclusive.
    # The current selection is not cleared before the new items are selected.
    # <p>
    # If an item in the given range is not selected, it is selected.
    # If an item in the given range was already selected, it remains selected.
    # Indices that are out of range are ignored and no items will be selected
    # if start is greater than end.
    # If the receiver is single-select and there is more than one item in the
    # given range, then all indices are ignored.
    # 
    # @param start the start of the range
    # @param end the end of the range
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see List#setSelection(int,int)
    def select(start, end_)
      check_widget
      if (end_ < 0 || start > end_ || (!((self.attr_style & SWT::SINGLE)).equal?(0) && !(start).equal?(end_)))
        return
      end
      if ((@item_count).equal?(0) || start >= @item_count)
        return
      end
      if ((start).equal?(0) && (end_).equal?(@item_count - 1))
        select_all
      else
        start = Math.max(0, start)
        end_ = Math.min(end_, @item_count - 1)
        range = NSRange.new
        range.attr_location = start
        range.attr_length = end_ - start + 1
        set = NSIndexSet.new.alloc
        set = set.init_with_indexes_in_range(range)
        widget = self.attr_view
        @ignore_select = true
        widget.select_row_indexes(set, !((self.attr_style & SWT::MULTI)).equal?(0))
        @ignore_select = false
        set.release
      end
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Selects the items at the given zero-relative indices in the receiver.
    # The current selection is not cleared before the new items are selected.
    # <p>
    # If the item at a given index is not selected, it is selected.
    # If the item at a given index was already selected, it remains selected.
    # Indices that are out of range and duplicate indices are ignored.
    # If the receiver is single-select and multiple indices are specified,
    # then all indices are ignored.
    # 
    # @param indices the array of indices for the items to select
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the array of indices is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see List#setSelection(int[])
    def select(indices)
      check_widget
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      length = indices.attr_length
      if ((length).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length > 1))
        return
      end
      count_ = 0
      set = NSMutableIndexSet.new.alloc.init
      i = 0
      while i < length
        index = indices[i]
        if (index >= 0 && index < @item_count)
          set.add_index(indices[i])
          count_ += 1
        end
        i += 1
      end
      if (count_ > 0)
        widget = self.attr_view
        @ignore_select = true
        widget.select_row_indexes(set, !((self.attr_style & SWT::MULTI)).equal?(0))
        @ignore_select = false
      end
      set.release
    end
    
    typesig { [Array.typed(::Java::Int), ::Java::Int, ::Java::Boolean] }
    def select(indices, count_, clear)
      set = NSMutableIndexSet.new.alloc.init
      i = 0
      while i < count_
        set.add_index(indices[i])
        i += 1
      end
      widget = self.attr_view
      @ignore_select = true
      widget.select_row_indexes(set, !clear)
      @ignore_select = false
      set.release
    end
    
    typesig { [] }
    # Selects all of the items in the receiver.
    # <p>
    # If the receiver is single-select, do nothing.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def select_all
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        return
      end
      widget = self.attr_view
      @ignore_select = true
      widget.select_all(nil)
      @ignore_select = false
    end
    
    typesig { [] }
    def send_double_selection
      if (!((self.attr_view).clicked_row).equal?(-1))
        post_event___org_eclipse_swt_widgets_list_1(SWT::DefaultSelection)
      end
    end
    
    typesig { [NSEvent, ::Java::Int] }
    def send_key_event(ns_event, type)
      result = super(ns_event, type)
      if (!result)
        return result
      end
      if (!(type).equal?(SWT::KeyDown))
        return result
      end
      key_code_ = ns_event.key_code
      case (key_code_)
      # KP Enter
      when 76, 36
        # Return
        post_event___org_eclipse_swt_widgets_list_3(SWT::DefaultSelection)
      end
      return result
    end
    
    typesig { [] }
    def update_background
      ns_color = nil
      if (!(self.attr_background_image).nil?)
        ns_color = NSColor.color_with_pattern_image(self.attr_background_image.attr_handle)
      else
        if (!(self.attr_background).nil?)
          ns_color = NSColor.color_with_device_red(self.attr_background[0], self.attr_background[1], self.attr_background[2], self.attr_background[3])
        end
      end
      (self.attr_view).set_background_color(ns_color)
    end
    
    typesig { [NSFont] }
    def set_font(font)
      super(font)
      # double
      ascent = font.ascender
      # double
      descent = -font.descender + font.leading
      (self.attr_view).set_row_height(RJava.cast_to_int(Math.ceil(ascent + descent)) + 1)
      set_scroll_width
    end
    
    typesig { [::Java::Int, String] }
    # Sets the text of the item in the receiver's list at the given
    # zero-relative index to the string argument.
    # 
    # @param index the index for the item
    # @param string the new text for the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_item(index, string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (!(0 <= index && index < @item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      @items[index] = string
      table_view = self.attr_view
      rect = table_view.rect_of_row(index)
      table_view.set_needs_display_in_rect(rect)
      set_scroll_width(string)
    end
    
    typesig { [Array.typed(String)] }
    # Sets the receiver's items to be the given array of items.
    # 
    # @param items the array of items
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the items array is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if an item in the items array is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_items(items)
      check_widget
      if ((items).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      i = 0
      while i < items.attr_length
        if ((items[i]).nil?)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        i += 1
      end
      @items = Array.typed(String).new(items.attr_length) { nil }
      System.arraycopy(items, 0, @items, 0, items.attr_length)
      @item_count = items.attr_length
      (self.attr_view).reload_data
      set_scroll_width
    end
    
    typesig { [String] }
    def set_scroll_width(item)
      if (((self.attr_style & SWT::H_SCROLL)).equal?(0))
        return false
      end
      cell = @column.data_cell
      font = !(self.attr_font).nil? ? self.attr_font : default_font
      cell.set_font(font.attr_handle)
      cell.set_title(NSString.string_with(item))
      size = cell.cell_size
      # double
      old_width = @column.width
      if (old_width < size.attr_width)
        @column.set_width(size.attr_width)
        return true
      end
      return false
    end
    
    typesig { [] }
    def set_scroll_width
      if (((self.attr_style & SWT::H_SCROLL)).equal?(0))
        return false
      end
      if ((@items).nil?)
        return false
      end
      cell = @column.data_cell
      font = !(self.attr_font).nil? ? self.attr_font : default_font
      cell.set_font(font.attr_handle)
      # double
      width_ = 0
      i = 0
      while i < @item_count
        cell.set_title(NSString.string_with(@items[i]))
        size = cell.cell_size
        width_ = Math.max(width_, size.attr_width)
        i += 1
      end
      @column.set_width(width_)
      return true
    end
    
    typesig { [::Java::Int] }
    # Selects the item at the given zero-relative index in the receiver.
    # If the item at the index was already selected, it remains selected.
    # The current selection is first cleared, then the new item is selected.
    # Indices that are out of range are ignored.
    # 
    # @param index the index of the item to select
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @see List#deselectAll()
    # @see List#select(int)
    def set_selection(index)
      check_widget
      deselect_all
      if (0 <= index && index < @item_count)
        set = NSIndexSet.new.alloc
        set = set.init_with_index(index)
        widget = self.attr_view
        @ignore_select = true
        widget.select_row_indexes(set, false)
        @ignore_select = false
        set.release
        show_index(index)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Selects the items in the range specified by the given zero-relative
    # indices in the receiver. The range of indices is inclusive.
    # The current selection is cleared before the new items are selected.
    # <p>
    # Indices that are out of range are ignored and no items will be selected
    # if start is greater than end.
    # If the receiver is single-select and there is more than one item in the
    # given range, then all indices are ignored.
    # 
    # @param start the start index of the items to select
    # @param end the end index of the items to select
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see List#deselectAll()
    # @see List#select(int,int)
    def set_selection(start, end_)
      check_widget
      deselect_all
      if (end_ < 0 || start > end_ || (!((self.attr_style & SWT::SINGLE)).equal?(0) && !(start).equal?(end_)))
        return
      end
      if ((@item_count).equal?(0) || start >= @item_count)
        return
      end
      start = Math.max(0, start)
      end_ = Math.min(end_, @item_count - 1)
      range = NSRange.new
      range.attr_location = start
      range.attr_length = end_ - start + 1
      set = NSIndexSet.new.alloc
      set = set.init_with_indexes_in_range(range)
      widget = self.attr_view
      @ignore_select = true
      widget.select_row_indexes(set, false)
      @ignore_select = false
      set.release
      show_index(end_)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Selects the items at the given zero-relative indices in the receiver.
    # The current selection is cleared before the new items are selected.
    # <p>
    # Indices that are out of range and duplicate indices are ignored.
    # If the receiver is single-select and multiple indices are specified,
    # then all indices are ignored.
    # 
    # @param indices the indices of the items to select
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the array of indices is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see List#deselectAll()
    # @see List#select(int[])
    def set_selection(indices)
      check_widget
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      deselect_all
      length = indices.attr_length
      if ((length).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length > 1))
        return
      end
      new_indices = Array.typed(::Java::Int).new(length) { 0 }
      count_ = 0
      i = 0
      while i < length
        index = indices[length - i - 1]
        if (index >= 0 && index < @item_count)
          new_indices[((count_ += 1) - 1)] = index
        end
        i += 1
      end
      if (count_ > 0)
        select(new_indices, count_, true)
        show_index(new_indices[0])
      end
    end
    
    typesig { [Array.typed(String)] }
    # Sets the receiver's selection to be the given array of items.
    # The current selection is cleared before the new items are selected.
    # <p>
    # Items that are not in the receiver are ignored.
    # If the receiver is single-select and multiple items are specified,
    # then all items are ignored.
    # 
    # @param items the array of items
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the array of items is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see List#deselectAll()
    # @see List#select(int[])
    # @see List#setSelection(int[])
    def set_selection(items)
      check_widget
      if ((items).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      deselect_all
      length = items.attr_length
      if ((length).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length > 1))
        return
      end
      count_ = 0
      indices = Array.typed(::Java::Int).new(length) { 0 }
      i = 0
      while i < length
        string = items[length - i - 1]
        if (!((self.attr_style & SWT::SINGLE)).equal?(0))
          index = index_of(string, 0)
          if (!(index).equal?(-1))
            count_ = 1
            indices = Array.typed(::Java::Int).new([index])
          end
        else
          index = 0
          while (!((index = index_of(string, index))).equal?(-1))
            if ((count_).equal?(indices.attr_length))
              new_ids = Array.typed(::Java::Int).new(indices.attr_length + 4) { 0 }
              System.arraycopy(indices, 0, new_ids, 0, indices.attr_length)
              indices = new_ids
            end
            indices[((count_ += 1) - 1)] = index
            index += 1
          end
        end
        i += 1
      end
      if (count_ > 0)
        select(indices, count_, true)
        show_index(indices[0])
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the zero-relative index of the item which is currently
    # at the top of the receiver. This index can change when items
    # are scrolled or new items are added and removed.
    # 
    # @param index the index of the top item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_top_index(index)
      check_widget
      widget = self.attr_view
      row = Math.max(0, Math.min(index, @item_count))
      pt = NSPoint.new
      pt.attr_x = self.attr_scroll_view.content_view.bounds.attr_x
      pt.attr_y = widget.frame_of_cell_at_column(0, row).attr_y
      self.attr_view.scroll_point(pt)
    end
    
    typesig { [::Java::Int] }
    def show_index(index)
      if (0 <= index && index < @item_count)
        (self.attr_view).scroll_row_to_visible(index)
      end
    end
    
    typesig { [] }
    # Shows the selection.  If the selection is already showing in the receiver,
    # this method simply returns.  Otherwise, the items are scrolled until
    # the selection is visible.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def show_selection
      check_widget
      index = get_selection_index
      if (index >= 0)
        show_index(index)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def table_view_selection_did_change(id, sel, a_notification)
      if (@ignore_select)
        return
      end
      post_event___org_eclipse_swt_widgets_list_5(SWT::Selection)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def table_view_should_edit_table_column_row(id, sel, a_table_view, a_table_column, row_index)
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def table_view_object_value_for_table_column_row(id, sel, a_table_view, a_table_column, row_index)
      # 64
      attrib_str = create_string(@items[RJava.cast_to_int(row_index)], nil, self.attr_foreground, 0, true, false)
      attrib_str.autorelease
      return attrib_str.attr_id
    end
    
    private
    alias_method :initialize__list, :initialize
  end
  
end
