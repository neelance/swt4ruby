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
  module TableImports #:nodoc:
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
  
  # Instances of this class implement a selectable user interface
  # object that displays a list of images and strings and issues
  # notification when selected.
  # <p>
  # The item children that may be added to instances of this class
  # must be of type <code>TableItem</code>.
  # </p><p>
  # Style <code>VIRTUAL</code> is used to create a <code>Table</code> whose
  # <code>TableItem</code>s are to be populated by the client on an on-demand basis
  # instead of up-front.  This can provide significant performance improvements for
  # tables that are very large or for which <code>TableItem</code> population is
  # expensive (for example, retrieving values from an external source).
  # </p><p>
  # Here is an example of using a <code>Table</code> with style <code>VIRTUAL</code>:
  # <code><pre>
  # final Table table = new Table (parent, SWT.VIRTUAL | SWT.BORDER);
  # table.setItemCount (1000000);
  # table.addListener (SWT.SetData, new Listener () {
  # public void handleEvent (Event event) {
  # TableItem item = (TableItem) event.item;
  # int index = table.indexOf (item);
  # item.setText ("Item " + index);
  # System.out.println (item.getText ());
  # }
  # });
  # </pre></code>
  # </p><p>
  # Note that although this class is a subclass of <code>Composite</code>,
  # it does not normally make sense to add <code>Control</code> children to
  # it, or set a layout on it, unless implementing something like a cell
  # editor.
  # </p><p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>SINGLE, MULTI, CHECK, FULL_SELECTION, HIDE_SELECTION, VIRTUAL, NO_SCROLL</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection, DefaultSelection, SetData, MeasureItem, EraseItem, PaintItem</dd>
  # </dl>
  # </p><p>
  # Note: Only one of the styles SINGLE, and MULTI may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#table">Table, TableItem, TableColumn snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class Table < TableImports.const_get :Composite
    include_class_members TableImports
    
    attr_accessor :items
    alias_method :attr_items, :items
    undef_method :items
    alias_method :attr_items=, :items=
    undef_method :items=
    
    attr_accessor :columns
    alias_method :attr_columns, :columns
    undef_method :columns
    alias_method :attr_columns=, :columns=
    undef_method :columns=
    
    attr_accessor :sort_column
    alias_method :attr_sort_column, :sort_column
    undef_method :sort_column
    alias_method :attr_sort_column=, :sort_column=
    undef_method :sort_column=
    
    attr_accessor :current_item
    alias_method :attr_current_item, :current_item
    undef_method :current_item
    alias_method :attr_current_item=, :current_item=
    undef_method :current_item=
    
    attr_accessor :header_view
    alias_method :attr_header_view, :header_view
    undef_method :header_view
    alias_method :attr_header_view=, :header_view=
    undef_method :header_view=
    
    attr_accessor :first_column
    alias_method :attr_first_column, :first_column
    undef_method :first_column
    alias_method :attr_first_column=, :first_column=
    undef_method :first_column=
    
    attr_accessor :check_column
    alias_method :attr_check_column, :check_column
    undef_method :check_column
    alias_method :attr_check_column=, :check_column=
    undef_method :check_column=
    
    attr_accessor :data_cell
    alias_method :attr_data_cell, :data_cell
    undef_method :data_cell
    alias_method :attr_data_cell=, :data_cell=
    undef_method :data_cell=
    
    attr_accessor :button_cell
    alias_method :attr_button_cell, :button_cell
    undef_method :button_cell
    alias_method :attr_button_cell=, :button_cell=
    undef_method :button_cell=
    
    attr_accessor :column_count
    alias_method :attr_column_count, :column_count
    undef_method :column_count
    alias_method :attr_column_count=, :column_count=
    undef_method :column_count=
    
    attr_accessor :item_count
    alias_method :attr_item_count, :item_count
    undef_method :item_count
    alias_method :attr_item_count=, :item_count=
    undef_method :item_count=
    
    attr_accessor :last_index_of
    alias_method :attr_last_index_of, :last_index_of
    undef_method :last_index_of
    alias_method :attr_last_index_of=, :last_index_of=
    undef_method :last_index_of=
    
    attr_accessor :sort_direction
    alias_method :attr_sort_direction, :sort_direction
    undef_method :sort_direction
    alias_method :attr_sort_direction=, :sort_direction=
    undef_method :sort_direction=
    
    attr_accessor :ignore_select
    alias_method :attr_ignore_select, :ignore_select
    undef_method :ignore_select
    alias_method :attr_ignore_select=, :ignore_select=
    undef_method :ignore_select=
    
    attr_accessor :fix_scroll_width
    alias_method :attr_fix_scroll_width, :fix_scroll_width
    undef_method :fix_scroll_width
    alias_method :attr_fix_scroll_width=, :fix_scroll_width=
    undef_method :fix_scroll_width=
    
    attr_accessor :draw_expansion
    alias_method :attr_draw_expansion, :draw_expansion
    undef_method :draw_expansion
    alias_method :attr_draw_expansion=, :draw_expansion=
    undef_method :draw_expansion=
    
    attr_accessor :image_bounds
    alias_method :attr_image_bounds, :image_bounds
    undef_method :image_bounds
    alias_method :attr_image_bounds=, :image_bounds=
    undef_method :image_bounds=
    
    class_module.module_eval {
      
      def next_id
        defined?(@@next_id) ? @@next_id : @@next_id= 0
      end
      alias_method :attr_next_id, :next_id
      
      def next_id=(value)
        @@next_id = value
      end
      alias_method :attr_next_id=, :next_id=
      
      const_set_lazy(:FIRST_COLUMN_MINIMUM_WIDTH) { 5 }
      const_attr_reader  :FIRST_COLUMN_MINIMUM_WIDTH
      
      const_set_lazy(:IMAGE_GAP) { 3 }
      const_attr_reader  :IMAGE_GAP
      
      const_set_lazy(:TEXT_GAP) { 2 }
      const_attr_reader  :TEXT_GAP
      
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
    # @see SWT#CHECK
    # @see SWT#FULL_SELECTION
    # @see SWT#HIDE_SELECTION
    # @see SWT#VIRTUAL
    # @see SWT#NO_SCROLL
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @items = nil
      @columns = nil
      @sort_column = nil
      @current_item = nil
      @header_view = nil
      @first_column = nil
      @check_column = nil
      @data_cell = nil
      @button_cell = nil
      @column_count = 0
      @item_count = 0
      @last_index_of = 0
      @sort_direction = 0
      @ignore_select = false
      @fix_scroll_width = false
      @draw_expansion = false
      @image_bounds = nil
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
      # Accessibility Verifier queries for a title or description.  NSTableView doesn't
      # seem to return either, so we return a default description value here.
      if (attribute_name.is_equal_to_string(OS::NSAccessibilityDescriptionAttribute))
        return NSString.string_with("").attr_id
      end
      return super(id, sel, arg0)
    end
    
    typesig { [::Java::Int, Listener] }
    def __add_listener(event_type, listener)
      super(event_type, listener)
      clear_cached_width(@items)
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the user changes the receiver's selection, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # When <code>widgetSelected</code> is called, the item field of the event object is valid.
    # If the receiver has the <code>SWT.CHECK</code> style and the check selection changes,
    # the event object detail field contains the value <code>SWT.CHECK</code>.
    # <code>widgetDefaultSelected</code> is typically called when an item is double-clicked.
    # The item field of the event object is valid for default selection, but the detail field is not used.
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
    
    typesig { [::Java::Int] }
    def __get_item(index)
      if (((self.attr_style & SWT::VIRTUAL)).equal?(0))
        return @items[index]
      end
      if (!(@items[index]).nil?)
        return @items[index]
      end
      return @items[index] = TableItem.new(self, SWT::NULL, -1, false)
    end
    
    typesig { [Array.typed(TableItem), ::Java::Int, SwtGC] }
    def calculate_width(items, index, gc)
      width = 0
      i = 0
      while i < @item_count
        item = items[i]
        if (!(item).nil? && item.attr_cached)
          width = Math.max(width, item.calculate_width(index, gc))
        end
        i += 1
      end
      return width
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def cell_size(id, sel)
      size = super(id, sel)
      image = NSCell.new(id).image
      if (!(image).nil?)
        size.attr_width += @image_bounds.attr_width + IMAGE_GAP
      end
      if (hooks(SWT::MeasureItem))
        # long
        # long
        out_value = Array.typed(::Java::Int).new(1) { 0 }
        OS.object_get_instance_variable(id, Display::SWT_ROW, out_value)
        # long
        row_index = out_value[0]
        # 64
        item = __get_item(RJava.cast_to_int(row_index))
        OS.object_get_instance_variable(id, Display::SWT_COLUMN, out_value)
        # long
        table_column = out_value[0]
        column_index = 0
        i = 0
        while i < @column_count
          if ((@columns[i].attr_ns_column.attr_id).equal?(table_column))
            column_index = i
            break
          end
          i += 1
        end
        send_measure_item(item, column_index, size)
      end
      return size
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def can_drag_rows_with_indexes_at_point(id, sel, arg0, arg1)
      click_point = NSPoint.new
      OS.memmove___org_eclipse_swt_widgets_table_1(click_point, arg1, NSPoint.attr_sizeof)
      table = self.attr_view
      # If the current row is not selected and the user is not attempting to modify the selection, select the row first.
      # long
      row = table.row_at_point(click_point)
      # long
      modifiers = NSApplication.shared_application.current_event.modifier_flags
      drag = !((self.attr_state & DRAG_DETECT)).equal?(0) && hooks(SWT::DragDetect)
      if (drag)
        if (!table.is_row_selected(row) && ((modifiers & (OS::NSCommandKeyMask | OS::NSShiftKeyMask | OS::NSAlternateKeyMask))).equal?(0))
          set = NSIndexSet.new.alloc
          set = set.init_with_index(row)
          table.select_row_indexes(set, false)
          set.release
        end
      end
      # The clicked row must be selected to initiate a drag.
      return (table.is_row_selected(row) && drag)
    end
    
    typesig { [TableItem] }
    def check_data(item)
      return check_data(item, index_of(item))
    end
    
    typesig { [TableItem, ::Java::Int] }
    def check_data(item, index)
      if (item.attr_cached)
        return true
      end
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        item.attr_cached = true
        event = Event.new
        event.attr_item = item
        event.attr_index = index_of(item)
        @current_item = item
        send_event___org_eclipse_swt_widgets_table_3(SWT::SetData, event)
        # widget could be disposed at this point
        @current_item = nil
        if (is_disposed || item.is_disposed)
          return false
        end
        if (!set_scroll_width(item))
          item.redraw(-1)
        end
      end
      return true
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        # Feature in Windows.  Even when WS_HSCROLL or
        # WS_VSCROLL is not specified, Windows creates
        # trees and tables with scroll bars.  The fix
        # is to set H_SCROLL and V_SCROLL.
        # 
        # NOTE: This code appears on all platforms so that
        # applications have consistent scroll bar behavior.
        if (((style & SWT::NO_SCROLL)).equal?(0))
          style |= SWT::H_SCROLL | SWT::V_SCROLL
        end
        # This platform is always FULL_SELECTION
        style |= SWT::FULL_SELECTION
        return check_bits(style, SWT::SINGLE, SWT::MULTI, 0, 0, 0, 0)
      end
    }
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [::Java::Int] }
    # Clears the item at the given zero-relative index in the receiver.
    # The text, icon and other attributes of the item are set to the default
    # value.  If the table was created with the <code>SWT.VIRTUAL</code> style,
    # these attributes are requested again as needed.
    # 
    # @param index the index of the item to clear
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SWT#VIRTUAL
    # @see SWT#SetData
    # 
    # @since 3.0
    def clear(index)
      check_widget
      if (!(0 <= index && index < @item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      item = @items[index]
      if (!(item).nil?)
        if (!(@current_item).equal?(item))
          item.clear
        end
        if ((@current_item).nil?)
          item.redraw(-1)
        end
        set_scroll_width(item)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Removes the items from the receiver which are between the given
    # zero-relative start and end indices (inclusive).  The text, icon
    # and other attributes of the items are set to their default values.
    # If the table was created with the <code>SWT.VIRTUAL</code> style,
    # these attributes are requested again as needed.
    # 
    # @param start the start index of the item to clear
    # @param end the end index of the item to clear
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if either the start or end are not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SWT#VIRTUAL
    # @see SWT#SetData
    # 
    # @since 3.0
    def clear(start, end_)
      check_widget
      if (start > end_)
        return
      end
      if (!(0 <= start && start <= end_ && end_ < @item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      if ((start).equal?(0) && (end_).equal?(@item_count - 1))
        clear_all
      else
        i = start
        while i <= end_
          clear(i)
          i += 1
        end
      end
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Clears the items at the given zero-relative indices in the receiver.
    # The text, icon and other attributes of the items are set to their default
    # values.  If the table was created with the <code>SWT.VIRTUAL</code> style,
    # these attributes are requested again as needed.
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
    # 
    # @see SWT#VIRTUAL
    # @see SWT#SetData
    # 
    # @since 3.0
    def clear(indices)
      check_widget
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((indices.attr_length).equal?(0))
        return
      end
      i = 0
      while i < indices.attr_length
        if (!(0 <= indices[i] && indices[i] < @item_count))
          error(SWT::ERROR_INVALID_RANGE)
        end
        i += 1
      end
      i_ = 0
      while i_ < indices.attr_length
        clear(indices[i_])
        i_ += 1
      end
    end
    
    typesig { [] }
    # Clears all the items in the receiver. The text, icon and other
    # attributes of the items are set to their default values. If the
    # table was created with the <code>SWT.VIRTUAL</code> style, these
    # attributes are requested again as needed.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SWT#VIRTUAL
    # @see SWT#SetData
    # 
    # @since 3.0
    def clear_all
      check_widget
      i = 0
      while i < @item_count
        item = @items[i]
        if (!(item).nil?)
          item.clear
        end
        i += 1
      end
      if ((@current_item).nil? && is_drawing)
        self.attr_view.set_needs_display(true)
      end
      set_scroll_width(@items, true)
    end
    
    typesig { [Array.typed(TableItem)] }
    def clear_cached_width(items)
      if ((items).nil?)
        return
      end
      i = 0
      while i < items.attr_length
        if (!(items[i]).nil?)
          items[i].attr_width = -1
        end
        i += 1
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      width = 0
      if ((w_hint).equal?(SWT::DEFAULT))
        if (!(@column_count).equal?(0))
          i = 0
          while i < @column_count
            width += @columns[i].get_width
            i += 1
          end
        else
          gc = SwtGC.new(self)
          width += calculate_width(@items, 0, gc) + CELL_GAP
          gc.dispose
        end
        if (!((self.attr_style & SWT::CHECK)).equal?(0))
          width += get_check_column_width
        end
      else
        width = w_hint
      end
      if (width <= 0)
        width = DEFAULT_WIDTH
      end
      height = 0
      if ((h_hint).equal?(SWT::DEFAULT))
        height = @item_count * get_item_height + get_header_height
      else
        height = h_hint
      end
      if (height <= 0)
        height = DEFAULT_HEIGHT
      end
      rect = compute_trim(0, 0, width, height)
      return Point.new(rect.attr_width, rect.attr_height)
    end
    
    typesig { [TableItem, ::Java::Int] }
    def create_column(item, index)
      strings = item.attr_strings
      if (!(strings).nil?)
        temp = Array.typed(String).new(@column_count) { nil }
        System.arraycopy(strings, 0, temp, 0, index)
        System.arraycopy(strings, index, temp, index + 1, @column_count - index - 1)
        temp[index] = ""
        item.attr_strings = temp
      end
      if ((index).equal?(0))
        item.attr_text = ""
      end
      images = item.attr_images
      if (!(images).nil?)
        temp = Array.typed(Image).new(@column_count) { nil }
        System.arraycopy(images, 0, temp, 0, index)
        System.arraycopy(images, index, temp, index + 1, @column_count - index - 1)
        item.attr_images = temp
      end
      if ((index).equal?(0))
        item.attr_image = nil
      end
      cell_background = item.attr_cell_background
      if (!(cell_background).nil?)
        temp = Array.typed(Color).new(@column_count) { nil }
        System.arraycopy(cell_background, 0, temp, 0, index)
        System.arraycopy(cell_background, index, temp, index + 1, @column_count - index - 1)
        item.attr_cell_background = temp
      end
      cell_foreground = item.attr_cell_foreground
      if (!(cell_foreground).nil?)
        temp = Array.typed(Color).new(@column_count) { nil }
        System.arraycopy(cell_foreground, 0, temp, 0, index)
        System.arraycopy(cell_foreground, index, temp, index + 1, @column_count - index - 1)
        item.attr_cell_foreground = temp
      end
      cell_font = item.attr_cell_font
      if (!(cell_font).nil?)
        temp = Array.typed(Font).new(@column_count) { nil }
        System.arraycopy(cell_font, 0, temp, 0, index)
        System.arraycopy(cell_font, index, temp, index + 1, @column_count - index - 1)
        item.attr_cell_font = temp
      end
    end
    
    typesig { [] }
    def create_handle
      scroll_widget = SWTScrollView.new.alloc
      scroll_widget.init
      scroll_widget.set_has_horizontal_scroller(!((self.attr_style & SWT::H_SCROLL)).equal?(0))
      scroll_widget.set_has_vertical_scroller(!((self.attr_style & SWT::V_SCROLL)).equal?(0))
      scroll_widget.set_autohides_scrollers(true)
      scroll_widget.set_border_type(has_border ? OS::NSBezelBorder : OS::NSNoBorder)
      widget = SWTTableView.new.alloc
      widget.init
      widget.set_allows_multiple_selection(!((self.attr_style & SWT::MULTI)).equal?(0))
      widget.set_allows_column_reordering(false)
      widget.set_data_source(widget)
      widget.set_delegate(widget)
      widget.set_column_autoresizing_style(OS::NSTableViewNoColumnAutoresizing)
      spacing = NSSize.new
      spacing.attr_width = spacing.attr_height = CELL_GAP
      widget.set_intercell_spacing(spacing)
      widget.set_double_action(OS.attr_sel_send_double_selection)
      if (!has_border)
        widget.set_focus_ring_type(OS::NSFocusRingTypeNone)
      end
      @header_view = SWTTableHeaderView.new.alloc.init
      widget.set_header_view(nil)
      str = NSString.string_with("") # $NON-NLS-1$
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        @check_column = NSTableColumn.new.alloc
        @check_column = @check_column.init_with_identifier(NSString.string_with(String.value_of((self.attr_next_id += 1))))
        @check_column.header_cell.set_title(str)
        widget.add_table_column(@check_column)
        @check_column.set_resizing_mask(OS::NSTableColumnNoResizing)
        @check_column.set_editable(false)
        # long
        cls = NSButton.cell_class
        # use our custom cell class
        @button_cell = NSButtonCell.new(OS.class_create_instance(cls, 0))
        @button_cell.init
        @check_column.set_data_cell(@button_cell)
        @button_cell.set_button_type(OS::NSSwitchButton)
        @button_cell.set_image_position(OS::NSImageOnly)
        @button_cell.set_allows_mixed_state(true)
        @check_column.set_width(get_check_column_width)
      end
      @first_column = NSTableColumn.new.alloc
      @first_column = @first_column.init_with_identifier(NSString.string_with(String.value_of((self.attr_next_id += 1))))
      # Feature in Cocoa.  If a column's width is too small to show any content
      # then tableView_objectValueForTableColumn_row is never invoked to
      # query for item values, which is a problem for VIRTUAL Tables.  The
      # workaround is to ensure that, for 0-column Tables, the internal first
      # column always has a minimal width that makes this call come in.
      @first_column.set_min_width(FIRST_COLUMN_MINIMUM_WIDTH)
      @first_column.set_width(0)
      @first_column.header_cell.set_title(str)
      widget.add_table_column(@first_column)
      @data_cell = SWTImageTextCell.new.alloc.init
      @data_cell.set_line_break_mode(OS::NSLineBreakByClipping)
      @first_column.set_data_cell(@data_cell)
      self.attr_scroll_view = scroll_widget
      self.attr_view = widget
    end
    
    typesig { [TableColumn, ::Java::Int] }
    def create_item(column, index)
      if (!(0 <= index && index <= @column_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      if ((@column_count).equal?(@columns.attr_length))
        new_columns = Array.typed(TableColumn).new(@column_count + 4) { nil }
        System.arraycopy(@columns, 0, new_columns, 0, @columns.attr_length)
        @columns = new_columns
      end
      ns_column = nil
      if ((@column_count).equal?(0))
        # TODO - clear attributes, alignment etc.
        ns_column = @first_column
        ns_column.set_min_width(0)
        @first_column = nil
      else
        # TODO - set attributes, alignment etc.
        ns_column = NSTableColumn.new.alloc
        ns_column = ns_column.init_with_identifier(NSString.string_with(String.value_of((self.attr_next_id += 1))))
        ns_column.set_min_width(0)
        (self.attr_view).add_table_column(ns_column)
        check_column = !((self.attr_style & SWT::CHECK)).equal?(0) ? 1 : 0
        (self.attr_view).move_column(@column_count + check_column, index + check_column)
        ns_column.set_data_cell(@data_cell)
      end
      column.create_jniref
      header_cell_ = SWTTableHeaderCell.new.alloc.init
      ns_column.set_header_cell(header_cell_)
      self.attr_display.add_widget(header_cell_, column)
      column.attr_ns_column = ns_column
      ns_column.set_width(0)
      System.arraycopy(@columns, index, @columns, index + 1, ((@column_count += 1) - 1) - index)
      @columns[index] = column
      i = 0
      while i < @item_count
        item = @items[i]
        if (!(item).nil?)
          if (@column_count > 1)
            create_column(item, index)
          end
        end
        i += 1
      end
    end
    
    typesig { [TableItem, ::Java::Int] }
    def create_item(item, index)
      if (!(0 <= index && index <= @item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      if ((@item_count).equal?(@items.attr_length))
        # Grow the array faster when redraw is off
        length = get_drawing ? @items.attr_length + 4 : Math.max(4, @items.attr_length * 3 / 2)
        new_items = Array.typed(TableItem).new(length) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
      end
      System.arraycopy(@items, index, @items, index + 1, ((@item_count += 1) - 1) - index)
      @items[index] = item
      (self.attr_view).note_number_of_rows_changed
      if (!(index).equal?(@item_count))
        fix_selection(index, true)
      end
    end
    
    typesig { [] }
    def create_widget
      super
      @items = Array.typed(TableItem).new(4) { nil }
      @columns = Array.typed(TableColumn).new(4) { nil }
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
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget(@header_view)
      self.attr_display.remove_widget(@data_cell)
      if (!(@button_cell).nil?)
        self.attr_display.remove_widget(@button_cell)
      end
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
    
    typesig { [TableColumn] }
    def destroy_item(column)
      index = 0
      while (index < @column_count)
        if ((@columns[index]).equal?(column))
          break
        end
        index += 1
      end
      i = 0
      while i < @item_count
        item = @items[i]
        if (!(item).nil?)
          if (@column_count <= 1)
            item.attr_strings = nil
            item.attr_images = nil
            item.attr_cell_background = nil
            item.attr_cell_foreground = nil
            item.attr_cell_font = nil
          else
            if (!(item.attr_strings).nil?)
              strings = item.attr_strings
              if ((index).equal?(0))
                item.attr_text = !(strings[1]).nil? ? strings[1] : ""
              end
              temp = Array.typed(String).new(@column_count - 1) { nil }
              System.arraycopy(strings, 0, temp, 0, index)
              System.arraycopy(strings, index + 1, temp, index, @column_count - 1 - index)
              item.attr_strings = temp
            else
              if ((index).equal?(0))
                item.attr_text = ""
              end
            end
            if (!(item.attr_images).nil?)
              images = item.attr_images
              if ((index).equal?(0))
                item.attr_image = images[1]
              end
              temp = Array.typed(Image).new(@column_count - 1) { nil }
              System.arraycopy(images, 0, temp, 0, index)
              System.arraycopy(images, index + 1, temp, index, @column_count - 1 - index)
              item.attr_images = temp
            else
              if ((index).equal?(0))
                item.attr_image = nil
              end
            end
            if (!(item.attr_cell_background).nil?)
              cell_background = item.attr_cell_background
              temp = Array.typed(Color).new(@column_count - 1) { nil }
              System.arraycopy(cell_background, 0, temp, 0, index)
              System.arraycopy(cell_background, index + 1, temp, index, @column_count - 1 - index)
              item.attr_cell_background = temp
            end
            if (!(item.attr_cell_foreground).nil?)
              cell_foreground = item.attr_cell_foreground
              temp = Array.typed(Color).new(@column_count - 1) { nil }
              System.arraycopy(cell_foreground, 0, temp, 0, index)
              System.arraycopy(cell_foreground, index + 1, temp, index, @column_count - 1 - index)
              item.attr_cell_foreground = temp
            end
            if (!(item.attr_cell_font).nil?)
              cell_font = item.attr_cell_font
              temp = Array.typed(Font).new(@column_count - 1) { nil }
              System.arraycopy(cell_font, 0, temp, 0, index)
              System.arraycopy(cell_font, index + 1, temp, index, @column_count - 1 - index)
              item.attr_cell_font = temp
            end
          end
        end
        i += 1
      end
      old_index = index_of(column.attr_ns_column)
      System.arraycopy(@columns, index + 1, @columns, index, (@column_count -= 1) - index)
      @columns[@column_count] = nil
      if ((@column_count).equal?(0))
        # TODO - reset attributes
        @first_column = column.attr_ns_column
        @first_column.retain
        # Feature in Cocoa.  If a column's width is too small to show any content
        # then tableView_objectValueForTableColumn_row is never invoked to
        # query for item values, which is a problem for VIRTUAL Tables.  The
        # workaround is to ensure that, for 0-column Tables, the internal first
        # column always has a minimal width that makes this call come in.
        @first_column.set_min_width(FIRST_COLUMN_MINIMUM_WIDTH)
        set_scroll_width
      else
        (self.attr_view).remove_table_column(column.attr_ns_column)
      end
      array = (self.attr_view).table_columns
      # 64
      array_size = RJava.cast_to_int(array.count)
      i_ = old_index
      while i_ < array_size
        # long
        column_id = array.object_at_index(i_).attr_id
        j = 0
        while j < @column_count
          if ((@columns[j].attr_ns_column.attr_id).equal?(column_id))
            @columns[j].send_event___org_eclipse_swt_widgets_table_4(SWT::Move)
            break
          end
          j += 1
        end
        i_ += 1
      end
    end
    
    typesig { [TableItem] }
    def destroy_item(item)
      index = 0
      while (index < @item_count)
        if ((@items[index]).equal?(item))
          break
        end
        index += 1
      end
      if (!(index).equal?(@item_count - 1))
        fix_selection(index, false)
      end
      System.arraycopy(@items, index + 1, @items, index, (@item_count -= 1) - index)
      @items[@item_count] = nil
      (self.attr_view).note_number_of_rows_changed
      if ((@item_count).equal?(0))
        set_table_empty
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Boolean)] }
    def drag_detect(x, y, filter, consume)
      # Let Cocoa determine if a drag is starting and fire the notification when we get the callback.
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
    # long
    # long
    # long
    def draw_interior_with_frame_in_view(id, sel, rect, view)
      hooks_erase = hooks(SWT::EraseItem)
      hooks_paint = hooks(SWT::PaintItem)
      hooks_measure = hooks(SWT::MeasureItem)
      cell = NSTextFieldCell.new(id)
      widget = self.attr_view
      # long
      # long
      out_value = Array.typed(::Java::Int).new(1) { 0 }
      OS.object_get_instance_variable(id, Display::SWT_ROW, out_value)
      # long
      row_index = out_value[0]
      # 64
      item = __get_item(RJava.cast_to_int(row_index))
      OS.object_get_instance_variable(id, Display::SWT_COLUMN, out_value)
      # long
      table_column = out_value[0]
      # long
      ns_column_index = widget.table_columns.index_of_object_identical_to(Id.new(table_column))
      column_index = 0
      i = 0
      while i < @column_count
        if ((@columns[i].attr_ns_column.attr_id).equal?(table_column))
          column_index = i
          break
        end
        i += 1
      end
      background = !(item.attr_cell_background).nil? ? item.attr_cell_background[column_index] : nil
      if ((background).nil?)
        background = item.attr_background
      end
      draw_background = !(background).nil?
      draw_foreground = true
      is_selected = cell.is_highlighted
      draw_selection = is_selected
      has_focus_ = hooks_erase && has_focus
      selection_background = nil
      selection_foreground = nil
      if (is_selected && (hooks_erase || hooks_paint))
        selection_foreground = Color.cocoa_new(self.attr_display, has_focus_ ? self.attr_display.attr_alternate_selected_control_text_color : self.attr_display.attr_selected_control_text_color)
        selection_background = Color.cocoa_new(self.attr_display, has_focus_ ? self.attr_display.attr_alternate_selected_control_color : self.attr_display.attr_secondary_selected_control_color)
      end
      content_size = Composite.instance_method(:cell_size).bind(self).call(id, OS.attr_sel_cell_size)
      image_ = cell.image
      if (!(image_).nil?)
        content_size.attr_width += @image_bounds.attr_width + IMAGE_GAP
      end
      content_width = RJava.cast_to_int(Math.ceil(content_size.attr_width))
      spacing = widget.intercell_spacing
      item_height = RJava.cast_to_int(Math.ceil(widget.row_height + spacing.attr_height))
      cell_rect = widget.rect_of_column(ns_column_index)
      cell_rect.attr_y = rect.attr_y
      cell_rect.attr_height = rect.attr_height + spacing.attr_height
      if ((@column_count).equal?(0))
        row_rect = widget.rect_of_row(row_index)
        cell_rect.attr_width = row_rect.attr_width
      end
      # double
      offset_x = 0
      offset_y = 0
      if (hooks_paint || hooks_erase)
        frame_cell = widget.frame_of_cell_at_column(ns_column_index, row_index)
        offset_x = rect.attr_x - frame_cell.attr_x
        offset_y = rect.attr_y - frame_cell.attr_y
        if (@draw_expansion)
          offset_x -= 0.5
          offset_y -= 0.5
        end
      end
      item_x = RJava.cast_to_int((rect.attr_x - offset_x))
      item_y = RJava.cast_to_int((rect.attr_y - offset_y))
      context = NSGraphicsContext.current_context
      if (hooks_measure)
        send_measure_item(item, column_index, content_size)
      end
      user_foreground = nil
      if (hooks_erase)
        context.save_graphics_state
        transform_ = NSAffineTransform.transform
        transform_.translate_xby(offset_x, offset_y)
        transform_.concat
        data = SwtGCData.new
        data.attr_paint_rect = cell_rect
        gc = SwtGC.cocoa_new(self, data)
        gc.set_font(item.get_font(column_index))
        if (is_selected)
          gc.set_foreground(selection_foreground)
          gc.set_background(selection_background)
        else
          gc.set_foreground(item.get_foreground(column_index))
          gc.set_background(item.get_background(column_index))
        end
        if (!@draw_expansion)
          gc.set_clipping(RJava.cast_to_int((cell_rect.attr_x - offset_x)), RJava.cast_to_int((cell_rect.attr_y - offset_y)), RJava.cast_to_int(cell_rect.attr_width), RJava.cast_to_int(cell_rect.attr_height))
        end
        event = Event.new
        event.attr_item = item
        event.attr_gc = gc
        event.attr_index = column_index
        event.attr_detail = SWT::FOREGROUND
        if (draw_background)
          event.attr_detail |= SWT::BACKGROUND
        end
        if (is_selected)
          event.attr_detail |= SWT::SELECTED
        end
        event.attr_x = RJava.cast_to_int(cell_rect.attr_x)
        event.attr_y = RJava.cast_to_int(cell_rect.attr_y)
        event.attr_width = RJava.cast_to_int(cell_rect.attr_width)
        event.attr_height = RJava.cast_to_int(cell_rect.attr_height)
        send_event___org_eclipse_swt_widgets_table_6(SWT::EraseItem, event)
        if (!event.attr_doit)
          draw_foreground = draw_background = draw_selection = false
        else
          draw_background = draw_background && !((event.attr_detail & SWT::BACKGROUND)).equal?(0)
          draw_foreground = !((event.attr_detail & SWT::FOREGROUND)).equal?(0)
          draw_selection = draw_selection && !((event.attr_detail & SWT::SELECTED)).equal?(0)
        end
        if (!draw_selection && is_selected)
          user_foreground = Color.cocoa_new(self.attr_display, gc.get_foreground.attr_handle)
        end
        gc.dispose
        context.restore_graphics_state
        if (is_disposed)
          return
        end
        if (item.is_disposed)
          return
        end
        if (draw_selection && (((self.attr_style & SWT::HIDE_SELECTION)).equal?(0) || has_focus_))
          cell_rect.attr_height -= spacing.attr_height
          call_super(widget.attr_id, OS.attr_sel_highlight_selection_in_clip_rect_, cell_rect)
          cell_rect.attr_height += spacing.attr_height
        end
      end
      if (draw_background && !draw_selection)
        context.save_graphics_state
        # double
        color_rgb = background.attr_handle
        color = NSColor.color_with_device_red(color_rgb[0], color_rgb[1], color_rgb[2], 1)
        color.set_fill
        NSBezierPath.fill_rect(cell_rect)
        context.restore_graphics_state
      end
      if (draw_foreground)
        if ((!@draw_expansion || hooks_measure) && !(image_).nil?)
          dest_rect = NSRect.new
          dest_rect.attr_x = rect.attr_x + IMAGE_GAP
          dest_rect.attr_y = rect.attr_y + (Math.ceil((rect.attr_height - @image_bounds.attr_height) / 2)).to_f
          dest_rect.attr_width = @image_bounds.attr_width
          dest_rect.attr_height = @image_bounds.attr_height
          src_rect = NSRect.new
          size_ = image_.size
          src_rect.attr_width = size_.attr_width
          src_rect.attr_height = size_.attr_height
          context.save_graphics_state
          NSBezierPath.bezier_path_with_rect(rect).add_clip
          transform_ = NSAffineTransform.transform
          transform_.scale_xby(1, -1)
          transform_.translate_xby(0, -(dest_rect.attr_height + 2 * dest_rect.attr_y))
          transform_.concat
          image_.draw_in_rect(dest_rect, src_rect, OS::NSCompositeSourceOver, 1)
          context.restore_graphics_state
          image_width = @image_bounds.attr_width + IMAGE_GAP
          rect.attr_x += image_width
          rect.attr_width -= image_width
        end
        cell.set_highlighted(false)
        call_super_ = false
        if (!(user_foreground).nil?)
          # Bug in Cocoa.  For some reason, it is not possible to change the
          # foreground color to black when the cell is highlighted. The text
          # still draws white.  The fix is to draw the text and not call super.
          # 
          # double
          color = user_foreground.attr_handle
          if ((color[0]).equal?(0) && (color[1]).equal?(0) && (color[2]).equal?(0) && (color[3]).equal?(1))
            new_str = NSMutableAttributedString.new(cell.attributed_string_value.mutable_copy)
            range = NSRange.new
            range.attr_length = new_str.length
            new_str.remove_attribute(OS::NSForegroundColorAttributeName, range)
            new_rect = NSRect.new
            new_rect.attr_x = rect.attr_x + TEXT_GAP
            new_rect.attr_y = rect.attr_y
            new_rect.attr_width = rect.attr_width - TEXT_GAP
            new_rect.attr_height = rect.attr_height
            size_ = new_str.size
            if (new_rect.attr_height > size_.attr_height)
              new_rect.attr_y += (new_rect.attr_height - size_.attr_height) / 2
              new_rect.attr_height = size_.attr_height
            end
            new_str.draw_in_rect(new_rect)
            new_str.release
          else
            ns_color = NSColor.color_with_device_red(color[0], color[1], color[2], color[3])
            cell.set_text_color(ns_color)
            call_super_ = true
          end
        else
          call_super_ = true
        end
        if (call_super_)
          attr_str = cell.attributed_string_value
          size_ = attr_str.size
          if (rect.attr_height > size_.attr_height)
            rect.attr_y += (rect.attr_height - size_.attr_height) / 2
            rect.attr_height = size_.attr_height
          end
          super(id, sel, rect, view)
        end
      end
      if (hooks_paint)
        context.save_graphics_state
        transform_ = NSAffineTransform.transform
        transform_.translate_xby(offset_x, offset_y)
        transform_.concat
        data = SwtGCData.new
        data.attr_paint_rect = cell_rect
        gc = SwtGC.cocoa_new(self, data)
        gc.set_font(item.get_font(column_index))
        if (draw_selection)
          gc.set_foreground(selection_foreground)
          gc.set_background(selection_background)
        else
          gc.set_foreground(!(user_foreground).nil? ? user_foreground : item.get_foreground(column_index))
          gc.set_background(item.get_background(column_index))
        end
        if (!@draw_expansion)
          gc.set_clipping(RJava.cast_to_int((cell_rect.attr_x - offset_x)), RJava.cast_to_int((cell_rect.attr_y - offset_y)), RJava.cast_to_int(cell_rect.attr_width), RJava.cast_to_int(cell_rect.attr_height))
        end
        event = Event.new
        event.attr_item = item
        event.attr_gc = gc
        event.attr_index = column_index
        if (draw_foreground)
          event.attr_detail |= SWT::FOREGROUND
        end
        if (draw_background)
          event.attr_detail |= SWT::BACKGROUND
        end
        if (draw_selection)
          event.attr_detail |= SWT::SELECTED
        end
        event.attr_x = item_x
        event.attr_y = item_y
        event.attr_width = content_width
        event.attr_height = item_height
        send_event___org_eclipse_swt_widgets_table_8(SWT::PaintItem, event)
        gc.dispose
        context.restore_graphics_state
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
    # long
    # long
    # long
    def draw_with_expansion_frame_in_view(id, sel, cell_frame, view)
      @draw_expansion = true
      super(id, sel, cell_frame, view)
      @draw_expansion = false
    end
    
    typesig { [::Java::Int, ::Java::Int, NSRect] }
    def draw_rect(id, sel, rect)
      @fix_scroll_width = false
      super(id, sel, rect)
      if (is_disposed)
        return
      end
      if (@fix_scroll_width)
        @fix_scroll_width = false
        if (set_scroll_width(@items, true))
          self.attr_view.set_needs_display(true)
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
    # long
    # long
    # long
    def expansion_frame_with_frame_in_view(id, sel, cell_rect, view)
      if ((self.attr_tool_tip_text).nil?)
        rect = super(id, sel, cell_rect, view)
        cell = NSCell.new(id)
        if (!(rect.attr_width).equal?(0) && !(rect.attr_height).equal?(0))
          if (hooks(SWT::MeasureItem))
            cell_size_ = cell.cell_size
            cell_rect.attr_width = cell_size_.attr_width
            return cell_rect
          end
        else
          expansion_rect = nil
          if (hooks(SWT::MeasureItem))
            expansion_rect = cell_rect
            cell_size_ = cell.cell_size
            expansion_rect.attr_width = cell_size_.attr_width
          else
            expansion_rect = cell.title_rect_for_bounds(cell_rect)
            cell_size_ = Composite.instance_method(:cell_size).bind(self).call(id, OS.attr_sel_cell_size)
            expansion_rect.attr_width = cell_size_.attr_width
          end
          content_rect = self.attr_scroll_view.content_view.bounds
          OS._nsintersection_rect(content_rect, expansion_rect, content_rect)
          if (!OS._nsequal_rects(expansion_rect, content_rect))
            return expansion_rect
          end
        end
        return rect
      end
      return NSRect.new
    end
    
    typesig { [NSPoint] }
    def find_tooltip(pt)
      widget = self.attr_view
      header_view_ = widget.header_view
      if (!(header_view_).nil?)
        pt = header_view_.convert_point_from_view_(pt, nil)
        # long
        index = header_view_.column_at_point(pt)
        if (!(index).equal?(-1))
          ns_columns = widget.table_columns
          ns_column = ns_columns.object_at_index(index)
          i = 0
          while i < @column_count
            column = @columns[i]
            if ((column.attr_ns_column.attr_id).equal?(ns_column.attr_id))
              return column
            end
            i += 1
          end
        end
      end
      return super(pt)
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
    def get_check_column_width
      return RJava.cast_to_int(@check_column.data_cell.cell_size.attr_width)
    end
    
    typesig { [] }
    def get_client_area
      check_widget
      rect = super
      header_view_ = (self.attr_view).header_view
      if (!(header_view_).nil?)
        height = RJava.cast_to_int(header_view_.bounds.attr_height)
        rect.attr_y -= height
        rect.attr_height += height
      end
      return rect
    end
    
    typesig { [Id] }
    def get_column(id)
      i = 0
      while i < @column_count
        if ((@columns[i].attr_ns_column.attr_id).equal?(id.attr_id))
          return @columns[i]
        end
        i += 1
      end
      return nil
    end
    
    typesig { [::Java::Int] }
    # Returns the column at the given, zero-relative index in the
    # receiver. Throws an exception if the index is out of range.
    # Columns are returned in the order that they were created.
    # If no <code>TableColumn</code>s were created by the programmer,
    # this method will throw <code>ERROR_INVALID_RANGE</code> despite
    # the fact that a single column of data may be visible in the table.
    # This occurs when the programmer uses the table like a list, adding
    # items but never creating a column.
    # 
    # @param index the index of the column to return
    # @return the column at the given index
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Table#getColumnOrder()
    # @see Table#setColumnOrder(int[])
    # @see TableColumn#getMoveable()
    # @see TableColumn#setMoveable(boolean)
    # @see SWT#Move
    def get_column(index)
      check_widget
      if (!(0 <= index && index < @column_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      return @columns[index]
    end
    
    typesig { [] }
    # Returns the number of columns contained in the receiver.
    # If no <code>TableColumn</code>s were created by the programmer,
    # this value is zero, despite the fact that visually, one column
    # of items may be visible. This occurs when the programmer uses
    # the table like a list, adding items but never creating a column.
    # 
    # @return the number of columns
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_column_count
      check_widget
      return @column_count
    end
    
    typesig { [] }
    # Returns an array of zero-relative integers that map
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
    # 
    # @see Table#setColumnOrder(int[])
    # @see TableColumn#getMoveable()
    # @see TableColumn#setMoveable(boolean)
    # @see SWT#Move
    # 
    # @since 3.1
    def get_column_order
      check_widget
      order = Array.typed(::Java::Int).new(@column_count) { 0 }
      i = 0
      while i < @column_count
        column = @columns[i]
        index = index_of(column.attr_ns_column)
        if (!((self.attr_style & SWT::CHECK)).equal?(0))
          index -= 1
        end
        order[index] = i
        i += 1
      end
      return order
    end
    
    typesig { [] }
    # Returns an array of <code>TableColumn</code>s which are the
    # columns in the receiver.  Columns are returned in the order
    # that they were created.  If no <code>TableColumn</code>s were
    # created by the programmer, the array is empty, despite the fact
    # that visually, one column of items may be visible. This occurs
    # when the programmer uses the table like a list, adding items but
    # never creating a column.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of items, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return the items in the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Table#getColumnOrder()
    # @see Table#setColumnOrder(int[])
    # @see TableColumn#getMoveable()
    # @see TableColumn#setMoveable(boolean)
    # @see SWT#Move
    def get_columns
      check_widget
      result = Array.typed(TableColumn).new(@column_count) { nil }
      System.arraycopy(@columns, 0, result, 0, @column_count)
      return result
    end
    
    typesig { [] }
    # Returns the width in pixels of a grid line.
    # 
    # @return the width of a grid line in pixels
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_grid_line_width
      check_widget
      return 0
    end
    
    typesig { [] }
    # Returns the height of the receiver's header
    # 
    # @return the height of the header or zero if the header is not visible
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.0
    def get_header_height
      check_widget
      header_view_ = (self.attr_view).header_view
      if ((header_view_).nil?)
        return 0
      end
      return RJava.cast_to_int(header_view_.bounds.attr_height)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver's header is visible,
    # and <code>false</code> otherwise.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, this method
    # may still indicate that it is considered visible even though
    # it may not actually be showing.
    # </p>
    # 
    # @return the receiver's header's visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_header_visible
      check_widget
      return !((self.attr_view).header_view).nil?
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
      return __get_item(index)
    end
    
    typesig { [Point] }
    # Returns the item at the given point in the receiver
    # or null if no such item exists. The point is in the
    # coordinate system of the receiver.
    # <p>
    # The item that is returned represents an item that could be selected by the user.
    # For example, if selection only occurs in items in the first column, then null is
    # returned if the point is outside of the item.
    # Note that the SWT.FULL_SELECTION style hint, which specifies the selection policy,
    # determines the extent of the selection.
    # </p>
    # 
    # @param point the point used to locate the item
    # @return the item at the given point, or null if the point is not in a selectable item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item(point)
      check_widget
      widget = self.attr_view
      pt = NSPoint.new
      pt.attr_x = point.attr_x
      pt.attr_y = point.attr_y
      # 64
      row = RJava.cast_to_int(widget.row_at_point(pt))
      if ((row).equal?(-1))
        return nil
      end
      return @items[row]
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
    # display <em>one</em> of the items in the receiver.
    # 
    # @return the height of one item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_height
      check_widget
      return RJava.cast_to_int((self.attr_view).row_height) + CELL_GAP
    end
    
    typesig { [] }
    # Returns a (possibly empty) array of <code>TableItem</code>s which
    # are the items in the receiver.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of items, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return the items in the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_items
      check_widget
      result = Array.typed(TableItem).new(@item_count) { nil }
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        i = 0
        while i < @item_count
          result[i] = __get_item(i)
          i += 1
        end
      else
        System.arraycopy(@items, 0, result, 0, @item_count)
      end
      return result
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver's lines are visible,
    # and <code>false</code> otherwise. Note that some platforms draw
    # grid lines while others may draw alternating row colors.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, this method
    # may still indicate that it is considered visible even though
    # it may not actually be showing.
    # </p>
    # 
    # @return the visibility state of the lines
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_lines_visible
      check_widget
      return (self.attr_view).uses_alternating_row_background_colors
    end
    
    typesig { [] }
    # Returns an array of <code>TableItem</code>s that are currently
    # selected in the receiver. The order of the items is unspecified.
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
        return Array.typed(TableItem).new(0) { nil }
      end
      selection = widget.selected_row_indexes
      # 64
      count_ = RJava.cast_to_int(selection.count)
      # long
      # long
      index_buffer = Array.typed(::Java::Int).new(count_) { 0 }
      selection.get_indexes(index_buffer, count_, 0)
      result = Array.typed(TableItem).new(count_) { nil }
      i = 0
      while i < count_
        # 64
        result[i] = __get_item(RJava.cast_to_int(index_buffer[i]))
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
    # @return the index of the selected item
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
    # selected in the receiver. The order of the indices is unspecified.
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
      while i < indices.attr_length
        # 64
        result[i] = RJava.cast_to_int(indices[i])
        i += 1
      end
      return result
    end
    
    typesig { [] }
    # Returns the column which shows the sort indicator for
    # the receiver. The value may be null if no column shows
    # the sort indicator.
    # 
    # @return the sort indicator
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setSortColumn(TableColumn)
    # 
    # @since 3.2
    def get_sort_column
      check_widget
      return @sort_column
    end
    
    typesig { [] }
    # Returns the direction of the sort indicator for the receiver.
    # The value will be one of <code>UP</code>, <code>DOWN</code>
    # or <code>NONE</code>.
    # 
    # @return the sort direction
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setSortDirection(int)
    # 
    # @since 3.2
    def get_sort_direction
      check_widget
      return @sort_direction
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
      return RJava.cast_to_int((self.attr_view).row_at_point(point))
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def highlight_selection_in_clip_rect(id, sel, rect)
      if (hooks(SWT::EraseItem))
        return
      end
      if (!((self.attr_style & SWT::HIDE_SELECTION)).equal?(0) && !has_focus)
        return
      end
      clip_rect = NSRect.new
      OS.memmove___org_eclipse_swt_widgets_table_10(clip_rect, rect, NSRect.attr_sizeof)
      call_super(id, sel, clip_rect)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def hit_test_for_event(id, sel, event, rect, control_view)
      # For some reason, the cell class needs to implement hitTestForEvent:inRect:ofView:,
      # otherwise the double action selector is not called properly.
      return call_super(id, sel, event, rect, control_view)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def image(id, sel)
      # long
      # long
      image_ = Array.typed(::Java::Int).new(1) { 0 }
      OS.object_get_instance_variable(id, Display::SWT_IMAGE, image_)
      return image_[0]
    end
    
    typesig { [::Java::Int, ::Java::Int, NSRect] }
    # long
    # long
    def image_rect_for_bounds(id, sel, cell_frame)
      image_ = NSCell.new(id).image
      if (!(image_).nil?)
        cell_frame.attr_x += IMAGE_GAP
        cell_frame.attr_width = @image_bounds.attr_width
        cell_frame.attr_height = @image_bounds.attr_height
      end
      return cell_frame
    end
    
    typesig { [NSTableColumn] }
    def index_of(column)
      # 64
      return RJava.cast_to_int((self.attr_view).table_columns.index_of_object_identical_to(column))
    end
    
    typesig { [TableColumn] }
    # Searches the receiver's list starting at the first column
    # (index 0) until a column is found that is equal to the
    # argument, and returns the index of that column. If no column
    # is found, returns -1.
    # 
    # @param column the search column
    # @return the index of the column
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the column is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def index_of(column)
      check_widget
      if ((column).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      i = 0
      while i < @column_count
        if ((@columns[i]).equal?(column))
          return i
        end
        i += 1
      end
      return -1
    end
    
    typesig { [TableItem] }
    # Searches the receiver's list starting at the first item
    # (index 0) until an item is found that is equal to the
    # argument, and returns the index of that item. If no item
    # is found, returns -1.
    # 
    # @param item the search item
    # @return the index of the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the item is null</li>
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
      if (1 <= @last_index_of && @last_index_of < @item_count - 1)
        if ((@items[@last_index_of]).equal?(item))
          return @last_index_of
        end
        if ((@items[@last_index_of + 1]).equal?(item))
          return (@last_index_of += 1)
        end
        if ((@items[@last_index_of - 1]).equal?(item))
          return (@last_index_of -= 1)
        end
      end
      if (@last_index_of < @item_count / 2)
        i = 0
        while i < @item_count
          if ((@items[i]).equal?(item))
            return @last_index_of = i
          end
          i += 1
        end
      else
        i = @item_count - 1
        while i >= 0
          if ((@items[i]).equal?(item))
            return @last_index_of = i
          end
          (i -= 1)
        end
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
    
    typesig { [NSView] }
    def is_trim(view)
      if (super(view))
        return true
      end
      return (view.attr_id).equal?(@header_view.attr_id)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def menu_for_event(id, sel, the_event)
      if (!(id).equal?(@header_view.attr_id))
        # Feature in Cocoa: Table views do not change the selection when the user
        # right-clicks or control-clicks on an NSTableView or its subclasses. Fix is to select the
        # clicked-on row ourselves.
        event = NSEvent.new(the_event)
        table = self.attr_view
        # get the current selections for the table view.
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
      end
      return super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_down(id, sel, the_event)
      if (!(@header_view).nil? && (id).equal?(@header_view.attr_id))
        widget = self.attr_view
        widget.set_allows_column_reordering(false)
        pt = @header_view.convert_point_from_view_(NSEvent.new(the_event).location_in_window, nil)
        # long
        ns_index = @header_view.column_at_point(pt)
        if (!(ns_index).equal?(-1))
          ns_column = widget.table_columns.object_at_index(ns_index)
          i = 0
          while i < @column_count
            if ((@columns[i].attr_ns_column.attr_id).equal?(ns_column.attr_id))
              widget.set_allows_column_reordering(@columns[i].attr_movable)
              break
            end
            i += 1
          end
        end
      else
        if ((id).equal?(self.attr_view.attr_id))
          # Bug/feature in Cocoa:  If the table has a context menu we just set it visible instead of returning
          # it from menuForEvent:.  This has the side effect, however, of sending control-click to the NSTableView,
          # which is interpreted as a single click that clears the selection.  Fix is to ignore control-click if the
          # view has a context menu.
          event = NSEvent.new(the_event)
          if (!((event.modifier_flags & OS::NSControlKeyMask)).equal?(0))
            return
          end
        end
      end
      super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Feature in Cocoa.  If a checkbox is in multi-state mode, nextState cycles
    # from off to mixed to on and back to off again.  This will cause the on state
    # to momentarily appear while clicking on the checkbox.  To avoid this,
    # override [NSCell nextState] to go directly to the desired state.
    # 
    # long
    # long
    # long
    def next_state(id, sel)
      table_view = self.attr_view
      # 64
      index = RJava.cast_to_int(table_view.selected_row)
      item = @items[index]
      if (item.attr_grayed)
        return item.attr_checked ? OS::NSOffState : OS::NSMixedState
      end
      return item.attr_checked ? OS::NSOffState : OS::NSOnState
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
    def register
      super
      self.attr_display.add_widget(@header_view, self)
      self.attr_display.add_widget(@data_cell, self)
      if (!(@button_cell).nil?)
        self.attr_display.add_widget(@button_cell, self)
      end
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      if (!(@items).nil?)
        i = 0
        while i < @item_count
          item = @items[i]
          if (!(item).nil? && !item.is_disposed)
            item.release(false)
          end
          i += 1
        end
        @items = nil
      end
      if (!(@columns).nil?)
        i = 0
        while i < @column_count
          column = @columns[i]
          if (!(column).nil? && !column.is_disposed)
            column.release(false)
          end
          i += 1
        end
        @columns = nil
      end
      super(destroy)
    end
    
    typesig { [] }
    def release_handle
      super
      if (!(@header_view).nil?)
        @header_view.release
      end
      @header_view = nil
      if (!(@first_column).nil?)
        @first_column.release
      end
      @first_column = nil
      if (!(@check_column).nil?)
        @check_column.release
      end
      @check_column = nil
      if (!(@data_cell).nil?)
        @data_cell.release
      end
      @data_cell = nil
      if (!(@button_cell).nil?)
        @button_cell.release
      end
      @button_cell = nil
    end
    
    typesig { [] }
    def release_widget
      super
      @current_item = nil
      @sort_column = nil
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
      item = @items[index]
      if (!(item).nil?)
        item.release(false)
      end
      if (!(index).equal?(@item_count - 1))
        fix_selection(index, false)
      end
      System.arraycopy(@items, index + 1, @items, index, (@item_count -= 1) - index)
      @items[@item_count] = nil
      (self.attr_view).note_number_of_rows_changed
      if ((@item_count).equal?(0))
        set_table_empty
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
      if ((start).equal?(0) && (end_).equal?(@item_count - 1))
        remove_all
      else
        length_ = end_ - start + 1
        i = 0
        while i < length_
          remove(start)
          i += 1
        end
      end
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Removes the items from the receiver's list at the given
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
      if (!(0 <= start && start <= end_ && end_ < @item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      last = -1
      i = 0
      while i < new_indices.attr_length
        index = new_indices[i]
        if (!(index).equal?(last))
          remove(index)
          last = index
        end
        i += 1
      end
    end
    
    typesig { [] }
    # Removes all of the items from the receiver.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove_all
      check_widget
      i = 0
      while i < @item_count
        item = @items[i]
        if (!(item).nil? && !item.is_disposed)
          item.release(false)
        end
        i += 1
      end
      set_table_empty
      (self.attr_view).note_number_of_rows_changed
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
    # @see #addSelectionListener(SelectionListener)
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
    # Selects the item at the given zero-relative index in the receiver.
    # If the item at the index was already selected, it remains
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
    # </p>
    # 
    # @param start the start of the range
    # @param end the end of the range
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Table#setSelection(int,int)
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
    # </p>
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
    # @see Table#setSelection(int[])
    def select(indices)
      check_widget
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      length_ = indices.attr_length
      if ((length_).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length_ > 1))
        return
      end
      count_ = 0
      set = NSMutableIndexSet.new.alloc.init
      i = 0
      while i < length_
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
    def select(indices, count_, clear_)
      set = NSMutableIndexSet.new.alloc.init
      i = 0
      while i < count_
        set.add_index(indices[i])
        i += 1
      end
      widget = self.attr_view
      @ignore_select = true
      widget.select_row_indexes(set, !clear_)
      @ignore_select = false
      set.release
    end
    
    typesig { [] }
    # Selects all of the items in the receiver.
    # <p>
    # If the receiver is single-select, do nothing.
    # </p>
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
    
    typesig { [Array.typed(::Java::Int)] }
    # Sets the order that the items in the receiver should
    # be displayed in to the given argument which is described
    # in terms of the zero-relative ordering of when the items
    # were added.
    # 
    # @param order the new order to display the items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the item order is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the item order is not the same length as the number of items</li>
    # </ul>
    # 
    # @see Table#getColumnOrder()
    # @see TableColumn#getMoveable()
    # @see TableColumn#setMoveable(boolean)
    # @see SWT#Move
    # 
    # @since 3.1
    def set_column_order(order)
      check_widget
      if ((order).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@column_count).equal?(0))
        if (!(order.attr_length).equal?(0))
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        return
      end
      if (!(order.attr_length).equal?(@column_count))
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      old_order = get_column_order
      reorder = false
      seen = Array.typed(::Java::Boolean).new(@column_count) { false }
      i = 0
      while i < order.attr_length
        index = order[i]
        if (index < 0 || index >= @column_count)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (seen[index])
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        seen[index] = true
        if (!(order[i]).equal?(old_order[i]))
          reorder = true
        end
        i += 1
      end
      if (reorder)
        table_view = self.attr_view
        old_x = Array.typed(::Java::Int).new(old_order.attr_length) { 0 }
        check = !((self.attr_style & SWT::CHECK)).equal?(0) ? 1 : 0
        i_ = 0
        while i_ < old_order.attr_length
          index = old_order[i_]
          old_x[index] = RJava.cast_to_int(table_view.rect_of_column(i_ + check).attr_x)
          i_ += 1
        end
        new_x = Array.typed(::Java::Int).new(order.attr_length) { 0 }
        i__ = 0
        while i__ < order.attr_length
          index = order[i__]
          column = @columns[index]
          old_index = index_of(column.attr_ns_column)
          new_index = i__ + check
          table_view.move_column(old_index, new_index)
          new_x[index] = RJava.cast_to_int(table_view.rect_of_column(new_index).attr_x)
          i__ += 1
        end
        new_columns = Array.typed(TableColumn).new(@column_count) { nil }
        System.arraycopy(@columns, 0, new_columns, 0, @column_count)
        i___ = 0
        while i___ < @column_count
          column = new_columns[i___]
          if (!column.is_disposed)
            if (!(new_x[i___]).equal?(old_x[i___]))
              column.send_event___org_eclipse_swt_widgets_table_12(SWT::Move)
            end
          end
          i___ += 1
        end
      end
    end
    
    typesig { [NSFont] }
    def set_font(font)
      super(font)
      set_item_height(nil, font, !hooks(SWT::MeasureItem))
      self.attr_view.set_needs_display(true)
      clear_cached_width(@items)
      set_scroll_width(@items, true)
    end
    
    typesig { [::Java::Boolean] }
    # Marks the receiver's header as visible if the argument is <code>true</code>,
    # and marks it invisible otherwise.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, marking
    # it visible may not actually cause it to be displayed.
    # </p>
    # 
    # @param show the new visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_header_visible(show)
      check_widget
      (self.attr_view).set_header_view(show ? @header_view : nil)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def set_image(id, sel, arg0)
      OS.object_set_instance_variable(id, Display::SWT_IMAGE, arg0)
    end
    
    typesig { [::Java::Int] }
    # Sets the number of items contained in the receiver.
    # 
    # @param count the number of items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_item_count(count_)
      check_widget
      count_ = Math.max(0, count_)
      if ((count_).equal?(@item_count))
        return
      end
      if ((count_).equal?(@item_count))
        return
      end
      children = @items
      if (count_ < @item_count)
        index = count_
        while index < @item_count
          item = children[index]
          if (!(item).nil? && !item.is_disposed)
            item.release(false)
          end
          index += 1
        end
      end
      if (count_ > @item_count)
        if (((get_style & SWT::VIRTUAL)).equal?(0))
          i = @item_count
          while i < count_
            TableItem.new(self, SWT::NONE, i, true)
            i += 1
          end
          return
        end
      end
      length_ = Math.max(4, (count_ + 3) / 4 * 4)
      new_items = Array.typed(TableItem).new(length_) { nil }
      if (!(children).nil?)
        System.arraycopy(@items, 0, new_items, 0, Math.min(count_, @item_count))
      end
      children = new_items
      @items = new_items
      @item_count = count_
      (self.attr_view).note_number_of_rows_changed
    end
    
    typesig { [::Java::Int] }
    # public
    def set_item_height(item_height)
      check_widget
      if (item_height < -1)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((item_height).equal?(-1))
        # TODO - reset item height, ensure other API's such as setFont don't do this
      else
        (self.attr_view).set_row_height(item_height)
      end
    end
    
    typesig { [Image, NSFont, ::Java::Boolean] }
    def set_item_height(image_, font, set)
      if ((font).nil?)
        font = get_font.attr_handle
      end
      # double
      ascent = font.ascender
      # double
      descent = -font.descender + font.leading
      height = RJava.cast_to_int(Math.ceil(ascent + descent)) + 1
      bounds_ = !(image_).nil? ? image_.get_bounds : @image_bounds
      if (!(bounds_).nil?)
        @image_bounds = bounds_
        height = Math.max(height, bounds_.attr_height)
      end
      widget = self.attr_view
      if (set || widget.row_height < height)
        widget.set_row_height(height)
      end
    end
    
    typesig { [::Java::Boolean] }
    def set_redraw(redraw_)
      check_widget
      super(redraw_)
      if (redraw_ && (self.attr_draw_count).equal?(0))
        # Resize the item array to match the item count
        if (@items.attr_length > 4 && @items.attr_length - @item_count > 3)
          length_ = Math.max(4, (@item_count + 3) / 4 * 4)
          new_items = Array.typed(TableItem).new(length_) { nil }
          System.arraycopy(@items, 0, new_items, 0, @item_count)
          @items = new_items
        end
        set_scroll_width
      end
    end
    
    typesig { [::Java::Boolean] }
    # Marks the receiver's lines as visible if the argument is <code>true</code>,
    # and marks it invisible otherwise. Note that some platforms draw grid lines
    # while others may draw alternating row colors.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, marking
    # it visible may not actually cause it to be displayed.
    # </p>
    # 
    # @param show the new visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_lines_visible(show)
      check_widget
      (self.attr_view).set_uses_alternating_row_background_colors(show)
    end
    
    typesig { [] }
    def set_scroll_width
      return set_scroll_width(@items, true)
    end
    
    typesig { [TableItem] }
    def set_scroll_width(item)
      if (!(@column_count).equal?(0))
        return false
      end
      if (!get_drawing)
        return false
      end
      if (!(@current_item).nil?)
        if (!(@current_item).equal?(item))
          @fix_scroll_width = true
        end
        return false
      end
      gc = SwtGC.new(self)
      new_width = item.calculate_width(0, gc)
      gc.dispose
      old_width = RJava.cast_to_int(@first_column.width)
      if (old_width < new_width)
        @first_column.set_width(new_width)
        if (!(self.attr_horizontal_bar).nil? && !(self.attr_horizontal_bar.attr_view).nil?)
          redraw_widget(self.attr_horizontal_bar.attr_view, false)
        end
        return true
      end
      return false
    end
    
    typesig { [Array.typed(TableItem), ::Java::Boolean] }
    def set_scroll_width(items, set)
      if ((items).nil?)
        return false
      end
      if (!(@column_count).equal?(0))
        return false
      end
      if (!get_drawing)
        return false
      end
      if (!(@current_item).nil?)
        @fix_scroll_width = true
        return false
      end
      gc = SwtGC.new(self)
      new_width = 0
      i = 0
      while i < items.attr_length
        item = items[i]
        if (!(item).nil?)
          new_width = Math.max(new_width, item.calculate_width(0, gc))
        end
        i += 1
      end
      gc.dispose
      if (!set)
        old_width = RJava.cast_to_int(@first_column.width)
        if (old_width >= new_width)
          return false
        end
      end
      @first_column.set_width(new_width)
      if (!(self.attr_horizontal_bar).nil? && !(self.attr_horizontal_bar.attr_view).nil?)
        redraw_widget(self.attr_horizontal_bar.attr_view, false)
      end
      return true
    end
    
    typesig { [::Java::Int] }
    # Selects the item at the given zero-relative index in the receiver.
    # The current selection is first cleared, then the new item is selected.
    # 
    # @param index the index of the item to select
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Table#deselectAll()
    # @see Table#select(int)
    def set_selection(index)
      check_widget
      # TODO - optimize to use expand flag
      deselect_all
      if (0 <= index && index < @item_count)
        select(index)
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
    # </p>
    # 
    # @param start the start index of the items to select
    # @param end the end index of the items to select
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Table#deselectAll()
    # @see Table#select(int,int)
    def set_selection(start, end_)
      check_widget
      # TODO - optimize to use expand flag
      deselect_all
      if (end_ < 0 || start > end_ || (!((self.attr_style & SWT::SINGLE)).equal?(0) && !(start).equal?(end_)))
        return
      end
      if ((@item_count).equal?(0) || start >= @item_count)
        return
      end
      start = Math.max(0, start)
      end_ = Math.min(end_, @item_count - 1)
      select(start, end_)
      show_index(start)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Selects the items at the given zero-relative indices in the receiver.
    # The current selection is cleared before the new items are selected.
    # <p>
    # Indices that are out of range and duplicate indices are ignored.
    # If the receiver is single-select and multiple indices are specified,
    # then all indices are ignored.
    # </p>
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
    # @see Table#deselectAll()
    # @see Table#select(int[])
    def set_selection(indices)
      check_widget
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      # TODO - optimize to use expand flag
      deselect_all
      length_ = indices.attr_length
      if ((length_).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length_ > 1))
        return
      end
      select(indices)
      show_index(indices[0])
    end
    
    typesig { [TableItem] }
    # Sets the receiver's selection to the given item.
    # The current selection is cleared before the new item is selected.
    # <p>
    # If the item is not in the receiver, then it is ignored.
    # </p>
    # 
    # @param item the item to select
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the item is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the item has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def set_selection(item)
      check_widget
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_selection(Array.typed(TableItem).new([item]))
    end
    
    typesig { [Array.typed(TableItem)] }
    # Sets the receiver's selection to be the given array of items.
    # The current selection is cleared before the new items are selected.
    # <p>
    # Items that are not in the receiver are ignored.
    # If the receiver is single-select and multiple items are specified,
    # then all items are ignored.
    # </p>
    # 
    # @param items the array of items
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the array of items is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if one of the items has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Table#deselectAll()
    # @see Table#select(int[])
    # @see Table#setSelection(int[])
    def set_selection(items)
      check_widget
      if ((items).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      # TODO - optimize to use expand flag
      deselect_all
      length_ = items.attr_length
      if ((length_).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length_ > 1))
        return
      end
      indices = Array.typed(::Java::Int).new(length_) { 0 }
      count_ = 0
      i = 0
      while i < length_
        index = index_of(items[length_ - i - 1])
        if (!(index).equal?(-1))
          indices[((count_ += 1) - 1)] = index
        end
        i += 1
      end
      if (count_ > 0)
        select(indices)
        show_index(indices[0])
      end
    end
    
    typesig { [] }
    def set_small_size
      if ((@check_column).nil?)
        return
      end
      @check_column.data_cell.set_control_size(OS::NSSmallControlSize)
      @check_column.set_width(get_check_column_width)
    end
    
    typesig { [TableColumn] }
    # Sets the column used by the sort indicator for the receiver. A null
    # value will clear the sort indicator.  The current sort column is cleared
    # before the new column is set.
    # 
    # @param column the column used by the sort indicator or <code>null</code>
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the column is disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def set_sort_column(column)
      check_widget
      if (!(column).nil? && column.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((column).equal?(@sort_column))
        return
      end
      @sort_column = column
      (self.attr_view).set_highlighted_table_column((column).nil? ? nil : column.attr_ns_column)
    end
    
    typesig { [::Java::Int] }
    # Sets the direction of the sort indicator for the receiver. The value
    # can be one of <code>UP</code>, <code>DOWN</code> or <code>NONE</code>.
    # 
    # @param direction the direction of the sort indicator
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def set_sort_direction(direction)
      check_widget
      if (!(direction).equal?(SWT::UP) && !(direction).equal?(SWT::DOWN) && !(direction).equal?(SWT::NONE))
        return
      end
      if ((direction).equal?(@sort_direction))
        return
      end
      @sort_direction = direction
      if ((@sort_column).nil?)
        return
      end
      header_view_ = (self.attr_view).header_view
      if ((header_view_).nil?)
        return
      end
      index = index_of(@sort_column.attr_ns_column)
      rect = header_view_.header_rect_of_column(index)
      header_view_.set_needs_display_in_rect(rect)
    end
    
    typesig { [] }
    def set_table_empty
      @item_count = 0
      @items = Array.typed(TableItem).new(4) { nil }
      @image_bounds = nil
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
    
    typesig { [TableColumn] }
    # Shows the column.  If the column is already showing in the receiver,
    # this method simply returns.  Otherwise, the columns are scrolled until
    # the column is visible.
    # 
    # @param column the column to be shown
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the column is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the column has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def show_column(column)
      check_widget
      if ((column).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (column.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(column.attr_parent).equal?(self))
        return
      end
      if (@column_count <= 1)
        return
      end
      index = index_of(column.attr_ns_column)
      if (!(0 <= index && index < @column_count + (!((self.attr_style & SWT::CHECK)).equal?(0) ? 1 : 0)))
        return
      end
      (self.attr_view).scroll_column_to_visible(index)
    end
    
    typesig { [::Java::Int] }
    def show_index(index)
      if (0 <= index && index < @item_count)
        (self.attr_view).scroll_row_to_visible(index)
      end
    end
    
    typesig { [TableItem] }
    # Shows the item.  If the item is already showing in the receiver,
    # this method simply returns.  Otherwise, the items are scrolled until
    # the item is visible.
    # 
    # @param item the item to be shown
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the item is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the item has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Table#showSelection()
    def show_item(item)
      check_widget
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (item.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      index = index_of(item)
      if (!(index).equal?(-1))
        show_index(index)
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
    # 
    # @see Table#showItem(TableItem)
    def show_selection
      check_widget
      index = get_selection_index
      if (index >= 0)
        check_data(__get_item(index))
        show_index(index)
      end
    end
    
    typesig { [] }
    def send_double_selection
      table_view = self.attr_view
      # 64
      row_index = RJava.cast_to_int(table_view.clicked_row)
      if (!(row_index).equal?(-1))
        if (!((self.attr_style & SWT::CHECK)).equal?(0))
          columns = table_view.table_columns
          # 64
          column_index = RJava.cast_to_int(table_view.clicked_column)
          column = columns.object_at_index(column_index)
          if ((column.attr_id).equal?(@check_column.attr_id))
            return
          end
        end
        event = Event.new
        event.attr_item = __get_item(row_index)
        post_event___org_eclipse_swt_widgets_table_14(SWT::DefaultSelection, event)
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
        post_event___org_eclipse_swt_widgets_table_16(SWT::DefaultSelection)
      end
      return result
    end
    
    typesig { [TableItem, ::Java::Int, NSSize] }
    def send_measure_item(item, column_index, size_)
      widget = self.attr_view
      content_width = RJava.cast_to_int(Math.ceil(size_.attr_width))
      spacing = widget.intercell_spacing
      item_height = RJava.cast_to_int(Math.ceil(widget.row_height + spacing.attr_height))
      data = SwtGCData.new
      data.attr_paint_rect = widget.frame
      gc = SwtGC.cocoa_new(self, data)
      gc.set_font(item.get_font(column_index))
      event = Event.new
      event.attr_item = item
      event.attr_gc = gc
      event.attr_index = column_index
      event.attr_width = content_width
      event.attr_height = item_height
      send_event___org_eclipse_swt_widgets_table_18(SWT::MeasureItem, event)
      gc.dispose
      if (!is_disposed && !item.is_disposed)
        size_.attr_width = event.attr_width
        size_.attr_height = event.attr_height
        if (item_height < event.attr_height)
          widget.set_row_height(event.attr_height)
        end
        if (!(content_width).equal?(event.attr_width))
          if ((@column_count).equal?(0) && (column_index).equal?(0))
            item.attr_width = event.attr_width
            if (set_scroll_width(item))
              widget.set_needs_display(true)
            end
          end
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def table_view_column_did_move(id, sel, a_notification)
      notification = NSNotification.new(a_notification)
      user_info_ = notification.user_info
      ns_old_index = user_info_.value_for_key(NSString.string_with("NSOldColumn")) # $NON-NLS-1$
      ns_new_index = user_info_.value_for_key(NSString.string_with("NSNewColumn")) # $NON-NLS-1$
      old_index = NSNumber.new(ns_old_index).int_value
      new_index = NSNumber.new(ns_new_index).int_value
      start_index = Math.min(old_index, new_index)
      end_index = Math.max(old_index, new_index)
      table_view = self.attr_view
      ns_columns = table_view.table_columns
      i = start_index
      while i <= end_index
        column_id = ns_columns.object_at_index(i)
        column = get_column(column_id)
        if (!(column).nil?)
          column.send_event___org_eclipse_swt_widgets_table_20(SWT::Move)
          if (is_disposed)
            return
          end
        end
        i += 1
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def table_view_column_did_resize(id, sel, a_notification)
      notification = NSNotification.new(a_notification)
      user_info_ = notification.user_info
      column_id = user_info_.value_for_key(NSString.string_with("NSTableColumn")) # $NON-NLS-1$
      column = get_column(column_id)
      if ((column).nil?)
        return
      end
      # either CHECK column or firstColumn in 0-column Table
      column.send_event___org_eclipse_swt_widgets_table_22(SWT::Resize)
      if (is_disposed)
        return
      end
      table_view = self.attr_view
      index = index_of(column.attr_ns_column)
      if ((index).equal?(-1))
        return
      end
      # column was disposed in Resize callback
      ns_columns = table_view.table_columns
      # 64
      column_count = RJava.cast_to_int(table_view.number_of_columns)
      i = index + 1
      while i < column_count
        column_id = ns_columns.object_at_index(i)
        column = get_column(column_id)
        if (!(column).nil?)
          column.send_event___org_eclipse_swt_widgets_table_24(SWT::Move)
          if (is_disposed)
            return
          end
        end
        i += 1
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
      widget = self.attr_view
      # 64
      row = RJava.cast_to_int(widget.selected_row)
      if ((row).equal?(-1))
        post_event___org_eclipse_swt_widgets_table_26(SWT::Selection)
      else
        item = __get_item(row)
        event = Event.new
        event.attr_item = item
        event.attr_index = row
        post_event___org_eclipse_swt_widgets_table_28(SWT::Selection, event)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def table_view_did_click_table_column(id, sel, table_view, table_column)
      column = get_column(Id.new(table_column))
      if ((column).nil?)
        return
      end
      # either CHECK column or firstColumn in 0-column Table
      column.post_event___org_eclipse_swt_widgets_table_30(SWT::Selection)
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
      index = RJava.cast_to_int(row_index)
      item = __get_item(index)
      check_data(item, index)
      if (!(@check_column).nil? && (a_table_column).equal?(@check_column.attr_id))
        value = nil
        if (item.attr_checked && item.attr_grayed)
          value = NSNumber.number_with_int(OS::NSMixedState)
        else
          value = NSNumber.number_with_int(item.attr_checked ? OS::NSOnState : OS::NSOffState)
        end
        return value.attr_id
      end
      i = 0
      while i < @column_count
        if ((@columns[i].attr_ns_column.attr_id).equal?(a_table_column))
          return item.create_string(i).attr_id
        end
        i += 1
      end
      return item.create_string(0).attr_id
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def table_view_set_object_value_for_table_column_row(id, sel, a_table_view, an_object, a_table_column, row_index)
      if (!(@check_column).nil? && (a_table_column).equal?(@check_column.attr_id))
        # 64
        item = @items[RJava.cast_to_int(row_index)]
        item.attr_checked = !item.attr_checked
        event = Event.new
        event.attr_detail = SWT::CHECK
        event.attr_item = item
        # 64
        event.attr_index = RJava.cast_to_int(row_index)
        post_event___org_eclipse_swt_widgets_table_32(SWT::Selection, event)
        item.redraw(-1)
      end
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def table_view_will_display_cell_for_table_column_row(id, sel, a_table_view, cell, table_column, row_index)
      if (!(@check_column).nil? && (table_column).equal?(@check_column.attr_id))
        return
      end
      # 64
      item = @items[RJava.cast_to_int(row_index)]
      index = 0
      i = 0
      while i < @column_count
        if ((@columns[i].attr_ns_column.attr_id).equal?(table_column))
          index = i
          break
        end
        i += 1
      end
      text_cell = NSTextFieldCell.new(cell)
      OS.object_set_instance_variable(cell, Display::SWT_ROW, row_index)
      OS.object_set_instance_variable(cell, Display::SWT_COLUMN, table_column)
      image_ = (index).equal?(0) ? item.attr_image : ((item.attr_images).nil? ? nil : item.attr_images[index])
      text_cell.set_image(!(image_).nil? ? image_.attr_handle : nil)
      color = nil
      if (text_cell.is_enabled)
        if (text_cell.is_highlighted)
          color = NSColor.selected_control_text_color
        else
          foreground = !(item.attr_cell_foreground).nil? ? item.attr_cell_foreground[index] : nil
          if ((foreground).nil?)
            foreground = item.attr_foreground
          end
          if ((foreground).nil?)
            foreground = get_foreground_color
          end
          color = NSColor.color_with_device_red(foreground.attr_handle[0], foreground.attr_handle[1], foreground.attr_handle[2], 1)
        end
      else
        color = NSColor.disabled_control_text_color
      end
      alignment = OS::NSLeftTextAlignment
      if (@column_count > 0)
        style = @columns[index].attr_style
        if (!((style & SWT::CENTER)).equal?(0))
          alignment = OS::NSCenterTextAlignment
        else
          if (!((style & SWT::RIGHT)).equal?(0))
            alignment = OS::NSRightTextAlignment
          end
        end
      end
      font = !(item.attr_cell_font).nil? ? item.attr_cell_font[index] : nil
      if ((font).nil?)
        font = item.attr_font
      end
      if ((font).nil?)
        font = self.attr_font
      end
      if ((font).nil?)
        font = default_font
      end
      if (!(font.attr_extra_traits).equal?(0))
        dict = (NSMutableDictionary.new.alloc).init_with_capacity(5)
        dict.set_object(color, OS::NSForegroundColorAttributeName)
        dict.set_object(font.attr_handle, OS::NSFontAttributeName)
        add_traits(dict, font)
        paragraph_style = NSMutableParagraphStyle.new.alloc.init
        paragraph_style.set_line_break_mode(OS::NSLineBreakByClipping)
        paragraph_style.set_alignment(alignment)
        dict.set_object(paragraph_style, OS::NSParagraphStyleAttributeName)
        paragraph_style.release
        attrib_str = (NSAttributedString.new.alloc).init_with_string(text_cell.title, dict)
        text_cell.set_attributed_string_value(attrib_str)
        attrib_str.release
        dict.release
      else
        text_cell.set_font(font.attr_handle)
        text_cell.set_text_color(color)
        text_cell.set_alignment(alignment)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def table_view_write_rows_with_indexes_to_pasteboard(id, sel, arg0, arg1, arg2)
      return send_mouse_event___org_eclipse_swt_widgets_table_34(NSApplication.shared_application.current_event, SWT::DragDetect, true)
    end
    
    typesig { [::Java::Int, ::Java::Int, NSRect] }
    # long
    # long
    def title_rect_for_bounds(id, sel, cell_frame)
      image_ = NSCell.new(id).image
      if (!(image_).nil?)
        image_width = @image_bounds.attr_width + IMAGE_GAP
        cell_frame.attr_x += image_width
        cell_frame.attr_width -= image_width
      end
      return cell_frame
    end
    
    typesig { [::Java::Boolean] }
    def update_cursor_rects(enabled)
      super(enabled)
      if ((@header_view).nil?)
        return
      end
      update_cursor_rects(enabled, @header_view)
    end
    
    private
    alias_method :initialize__table, :initialize
  end
  
end
