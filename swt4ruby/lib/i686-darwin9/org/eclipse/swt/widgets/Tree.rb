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
  module TreeImports #:nodoc:
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
  
  # Instances of this class provide a selectable user interface object
  # that displays a hierarchy of items and issues notification when an
  # item in the hierarchy is selected.
  # <p>
  # The item children that may be added to instances of this class
  # must be of type <code>TreeItem</code>.
  # </p><p>
  # Style <code>VIRTUAL</code> is used to create a <code>Tree</code> whose
  # <code>TreeItem</code>s are to be populated by the client on an on-demand basis
  # instead of up-front.  This can provide significant performance improvements for
  # trees that are very large or for which <code>TreeItem</code> population is
  # expensive (for example, retrieving values from an external source).
  # </p><p>
  # Here is an example of using a <code>Tree</code> with style <code>VIRTUAL</code>:
  # <code><pre>
  # final Tree tree = new Tree(parent, SWT.VIRTUAL | SWT.BORDER);
  # tree.setItemCount(20);
  # tree.addListener(SWT.SetData, new Listener() {
  # public void handleEvent(Event event) {
  # TreeItem item = (TreeItem)event.item;
  # TreeItem parentItem = item.getParentItem();
  # String text = null;
  # if (parentItem == null) {
  # text = "node " + tree.indexOf(item);
  # } else {
  # text = parentItem.getText() + " - " + parentItem.indexOf(item);
  # }
  # item.setText(text);
  # System.out.println(text);
  # item.setItemCount(10);
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
  # <dd>SINGLE, MULTI, CHECK, FULL_SELECTION, VIRTUAL, NO_SCROLL</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection, DefaultSelection, Collapse, Expand, SetData, MeasureItem, EraseItem, PaintItem</dd>
  # </dl>
  # </p><p>
  # Note: Only one of the styles SINGLE and MULTI may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#tree">Tree, TreeItem, TreeColumn snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class Tree < TreeImports.const_get :Composite
    include_class_members TreeImports
    
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
    
    attr_accessor :header_view
    alias_method :attr_header_view, :header_view
    undef_method :header_view
    alias_method :attr_header_view=, :header_view=
    undef_method :header_view=
    
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
    
    attr_accessor :column_count
    alias_method :attr_column_count, :column_count
    undef_method :column_count
    alias_method :attr_column_count=, :column_count=
    undef_method :column_count=
    
    attr_accessor :sort_direction
    alias_method :attr_sort_direction, :sort_direction
    undef_method :sort_direction
    alias_method :attr_sort_direction=, :sort_direction=
    undef_method :sort_direction=
    
    attr_accessor :ignore_expand
    alias_method :attr_ignore_expand, :ignore_expand
    undef_method :ignore_expand
    alias_method :attr_ignore_expand=, :ignore_expand=
    undef_method :ignore_expand=
    
    attr_accessor :ignore_select
    alias_method :attr_ignore_select, :ignore_select
    undef_method :ignore_select
    alias_method :attr_ignore_select=, :ignore_select=
    undef_method :ignore_select=
    
    attr_accessor :ignore_redraw
    alias_method :attr_ignore_redraw, :ignore_redraw
    undef_method :ignore_redraw
    alias_method :attr_ignore_redraw=, :ignore_redraw=
    undef_method :ignore_redraw=
    
    attr_accessor :reload_pending
    alias_method :attr_reload_pending, :reload_pending
    undef_method :reload_pending
    alias_method :attr_reload_pending=, :reload_pending=
    undef_method :reload_pending=
    
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
    
    attr_accessor :insert_item
    alias_method :attr_insert_item, :insert_item
    undef_method :insert_item
    alias_method :attr_insert_item=, :insert_item=
    undef_method :insert_item=
    
    attr_accessor :insert_before
    alias_method :attr_insert_before, :insert_before
    undef_method :insert_before
    alias_method :attr_insert_before=, :insert_before=
    undef_method :insert_before=
    
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
    # @see SWT#VIRTUAL
    # @see SWT#NO_SCROLL
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @first_column = nil
      @check_column = nil
      @data_cell = nil
      @button_cell = nil
      @header_view = nil
      @items = nil
      @item_count = 0
      @columns = nil
      @sort_column = nil
      @column_count = 0
      @sort_direction = 0
      @ignore_expand = false
      @ignore_select = false
      @ignore_redraw = false
      @reload_pending = false
      @draw_expansion = false
      @image_bounds = nil
      @insert_item = nil
      @insert_before = false
      super(parent, check_style(style))
    end
    
    typesig { [::Java::Int, Listener] }
    def __add_listener(event_type, listener)
      super(event_type, listener)
      clear_cached_width(@items)
    end
    
    typesig { [TreeItem, ::Java::Int, ::Java::Boolean] }
    def __get_item(parent_item, index, create)
      count = 0
      items = nil
      if (!(parent_item).nil?)
        count = parent_item.attr_item_count
        items = parent_item.attr_items
      else
        count = @item_count
        items = @items
      end
      if (index < 0 || index >= count)
        return nil
      end
      item = items[index]
      if (!(item).nil? || ((self.attr_style & SWT::VIRTUAL)).equal?(0) || !create)
        return item
      end
      item = TreeItem.new(self, parent_item, SWT::NONE, index, false)
      items[index] = item
      return item
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
      return super(id, sel, arg0)
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
    
    typesig { [TreeListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when an item in the receiver is expanded or collapsed
    # by sending it one of the messages defined in the <code>TreeListener</code>
    # interface.
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see TreeListener
    # @see #removeTreeListener
    def add_tree_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Expand, typed_listener)
      add_listener(SWT::Collapse, typed_listener)
    end
    
    typesig { [Array.typed(TreeItem), ::Java::Int, SwtGC, ::Java::Boolean] }
    def calculate_width(items, index, gc, recurse)
      if ((items).nil?)
        return 0
      end
      width = 0
      i = 0
      while i < items.attr_length
        item = items[i]
        if (!(item).nil?)
          item_width = item.calculate_width(index, gc)
          width = Math.max(width, item_width)
          if (recurse && item.get_expanded)
            width = Math.max(width, calculate_width(item.attr_items, index, gc, recurse))
          end
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
        item = self.attr_display.get_widget(out_value[0])
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
      OS.memmove___org_eclipse_swt_widgets_tree_1(click_point, arg1, NSPoint.attr_sizeof)
      tree = self.attr_view
      # If the current row is not selected and the user is not attempting to modify the selection, select the row first.
      # long
      row = tree.row_at_point(click_point)
      # long
      modifiers = NSApplication.shared_application.current_event.modifier_flags
      drag = !((self.attr_state & DRAG_DETECT)).equal?(0) && hooks(SWT::DragDetect)
      if (drag)
        if (!tree.is_row_selected(row) && ((modifiers & (OS::NSCommandKeyMask | OS::NSShiftKeyMask | OS::NSAlternateKeyMask | OS::NSControlKeyMask))).equal?(0))
          set = NSIndexSet.new.alloc
          set = set.init_with_index(row)
          tree.select_row_indexes(set, false)
          set.release
        end
      end
      # The clicked row must be selected to initiate a drag.
      return (tree.is_row_selected(row) && drag)
    end
    
    typesig { [TreeItem] }
    def check_data(item)
      if (item.attr_cached)
        return true
      end
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        item.attr_cached = true
        event = Event.new
        parent_item = item.get_parent_item
        event.attr_item = item
        event.attr_index = (parent_item).nil? ? index_of(item) : parent_item.index_of(item)
        @ignore_redraw = true
        send_event(SWT::SetData, event)
        # widget could be disposed at this point
        @ignore_redraw = false
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
    
    typesig { [] }
    def check_items
      if (!@reload_pending)
        return
      end
      @reload_pending = false
      selected_items = get_selection
      (self.attr_view).reload_data
      select_items(selected_items, true)
      @ignore_expand = true
      i = 0
      while i < @item_count
        if (!(@items[i]).nil?)
          @items[i].update_expanded
        end
        i += 1
      end
      @ignore_expand = false
    end
    
    typesig { [TreeItem, ::Java::Int, ::Java::Boolean] }
    def clear(parent_item, index, all)
      item = __get_item(parent_item, index, false)
      if (!(item).nil?)
        item.clear
        item.redraw(-1)
        if (all)
          clear_all(item, true)
        end
      end
    end
    
    typesig { [TreeItem, ::Java::Boolean] }
    def clear_all(parent_item, all)
      count = get_item_count(parent_item)
      if ((count).equal?(0))
        return
      end
      children = (parent_item).nil? ? @items : parent_item.attr_items
      i = 0
      while i < count
        item = children[i]
        if (!(item).nil?)
          item.clear
          item.redraw(-1)
          if (all)
            clear_all(item, true)
          end
        end
        i += 1
      end
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    # Clears the item at the given zero-relative index in the receiver.
    # The text, icon and other attributes of the item are set to the default
    # value.  If the tree was created with the <code>SWT.VIRTUAL</code> style,
    # these attributes are requested again as needed.
    # 
    # @param index the index of the item to clear
    # @param all <code>true</code> if all child items of the indexed item should be
    # cleared recursively, and <code>false</code> otherwise
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
    # @since 3.2
    def clear(index, all)
      check_widget
      count = get_item_count
      if (index < 0 || index >= count)
        error(SWT::ERROR_INVALID_RANGE)
      end
      clear(nil, index, all)
    end
    
    typesig { [::Java::Boolean] }
    # Clears all the items in the receiver. The text, icon and other
    # attributes of the items are set to their default values. If the
    # tree was created with the <code>SWT.VIRTUAL</code> style, these
    # attributes are requested again as needed.
    # 
    # @param all <code>true</code> if all child items should be cleared
    # recursively, and <code>false</code> otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SWT#VIRTUAL
    # @see SWT#SetData
    # 
    # @since 3.2
    def clear_all(all)
      check_widget
      clear_all(nil, all)
    end
    
    typesig { [Array.typed(TreeItem)] }
    def clear_cached_width(items)
      if ((items).nil?)
        return
      end
      i = 0
      while i < items.attr_length
        item = items[i]
        if ((item).nil?)
          break
        end
        item.attr_width = -1
        clear_cached_width(item.attr_items)
        i += 1
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    # long
    # long
    # long
    def collapse_item_collapse_children(id, sel, item_id, children)
      item = self.attr_display.get_widget(item_id)
      if (!@ignore_expand)
        item.send_expand(false, children)
      end
      @ignore_expand = true
      super(id, sel, item_id, children)
      @ignore_expand = false
      if (is_disposed || item.is_disposed)
        return
      end
      set_scroll_width
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      width = 0
      height = 0
      if ((w_hint).equal?(SWT::DEFAULT))
        if (!(@column_count).equal?(0))
          i = 0
          while i < @column_count
            width += @columns[i].get_width
            i += 1
          end
        else
          gc = SwtGC.new(self)
          width = calculate_width(@items, 0, gc, true) + CELL_GAP
          gc.dispose
        end
        if (!((self.attr_style & SWT::CHECK)).equal?(0))
          width += get_check_column_width
        end
      else
        width = w_hint
      end
      if ((h_hint).equal?(SWT::DEFAULT))
        # 64
        height = RJava.cast_to_int((self.attr_view).number_of_rows) * get_item_height + get_header_height
      else
        height = h_hint
      end
      if (width <= 0)
        width = DEFAULT_WIDTH
      end
      if (height <= 0)
        height = DEFAULT_HEIGHT
      end
      rect = compute_trim(0, 0, width, height)
      return Point.new(rect.attr_width, rect.attr_height)
    end
    
    typesig { [TreeItem, ::Java::Int] }
    def create_column(item, index)
      if (!(item.attr_items).nil?)
        i = 0
        while i < item.attr_items.attr_length
          if (!(item.attr_items[i]).nil?)
            create_column(item.attr_items[i], index)
          end
          i += 1
        end
      end
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
      widget = SWTOutlineView.new.alloc
      # Bug in Cocoa.  Calling init, instead of initWithFrame on an NSOutlineView
      # cause the NSOutlineView to leak some memory.  The work around is to call
      # initWithFrame and pass an empty NSRect instead of calling init.
      widget.init_with_frame(NSRect.new)
      widget.set_allows_multiple_selection(!((self.attr_style & SWT::MULTI)).equal?(0))
      widget.set_allows_column_reordering(false)
      widget.set_autoresizes_outline_column(false)
      widget.set_autosave_expanded_items(true)
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
        widget.set_outline_table_column(@check_column)
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
      # then outlineView_objectValueForTableColumn_byItem is never invoked to
      # query for item values, which is a problem for VIRTUAL Trees.  The
      # workaround is to ensure that, for 0-column Trees, the internal first
      # column always has a minimal width that makes this call come in.
      @first_column.set_min_width(FIRST_COLUMN_MINIMUM_WIDTH)
      @first_column.set_width(0)
      @first_column.header_cell.set_title(str)
      widget.add_table_column(@first_column)
      widget.set_outline_table_column(@first_column)
      @data_cell = SWTImageTextCell.new.alloc.init
      @data_cell.set_line_break_mode(OS::NSLineBreakByClipping)
      @first_column.set_data_cell(@data_cell)
      self.attr_scroll_view = scroll_widget
      self.attr_view = widget
    end
    
    typesig { [TreeColumn, ::Java::Int] }
    def create_item(column, index)
      if (!(0 <= index && index <= @column_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      if ((index).equal?(0))
        # first column must be left aligned
        column.attr_style &= ~(SWT::LEFT | SWT::RIGHT | SWT::CENTER)
        column.attr_style |= SWT::LEFT
      end
      if ((@column_count).equal?(@columns.attr_length))
        new_columns = Array.typed(TreeColumn).new(@column_count + 4) { nil }
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
        outline_view = self.attr_view
        str = NSString.string_with("")
        ns_column = NSTableColumn.new.alloc
        ns_column = ns_column.init_with_identifier(NSString.string_with(String.value_of((self.attr_next_id += 1))))
        ns_column.set_min_width(0)
        ns_column.header_cell.set_title(str)
        outline_view.add_table_column(ns_column)
        check_column = !((self.attr_style & SWT::CHECK)).equal?(0) ? 1 : 0
        outline_view.move_column(@column_count + check_column, index + check_column)
        ns_column.set_data_cell(@data_cell)
        if ((index).equal?(0))
          outline_view.set_outline_table_column(ns_column)
        end
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
    
    typesig { [TreeItem, TreeItem, ::Java::Int] }
    def create_item(item, parent_item, index)
      count = 0
      items = nil
      if (!(parent_item).nil?)
        count = parent_item.attr_item_count
        items = parent_item.attr_items
      else
        count = @item_count
        items = @items
      end
      if ((index).equal?(-1))
        index = count
      end
      if (!(0 <= index && index <= count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      if ((count).equal?(items.attr_length))
        new_items = Array.typed(TreeItem).new(items.attr_length + 4) { nil }
        System.arraycopy(items, 0, new_items, 0, items.attr_length)
        items = new_items
        if (!(parent_item).nil?)
          parent_item.attr_items = items
        else
          @items = items
        end
      end
      System.arraycopy(items, index, items, index + 1, ((count += 1) - 1) - index)
      items[index] = item
      item.attr_items = Array.typed(TreeItem).new(4) { nil }
      handle = SWTTreeItem.new.alloc.init
      item.attr_handle = handle
      item.create_jniref
      item.register
      if (!(parent_item).nil?)
        parent_item.attr_item_count = count
      else
        @item_count = count
      end
      @ignore_expand = true
      reload_item(parent_item, true)
      if (!(parent_item).nil? && (parent_item.attr_item_count).equal?(1) && parent_item.attr_expanded)
        (self.attr_view).expand_item(parent_item.attr_handle)
      end
      @ignore_expand = false
    end
    
    typesig { [] }
    def create_widget
      super
      @items = Array.typed(TreeItem).new(4) { nil }
      @columns = Array.typed(TreeColumn).new(4) { nil }
    end
    
    typesig { [] }
    def default_background
      return self.attr_display.get_widget_color(SWT::COLOR_LIST_BACKGROUND)
    end
    
    typesig { [] }
    def default_nsfont
      return self.attr_display.attr_outline_view_font
    end
    
    typesig { [] }
    def default_foreground
      return self.attr_display.get_widget_color(SWT::COLOR_LIST_FOREGROUND)
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
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget(@header_view)
      self.attr_display.remove_widget(@data_cell)
      if (!(@button_cell).nil?)
        self.attr_display.remove_widget(@button_cell)
      end
    end
    
    typesig { [TreeItem] }
    # Deselects an item in the receiver.  If the item was already
    # deselected, it remains deselected.
    # 
    # @param item the item to be deselected
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
    # @since 3.4
    def deselect(item)
      check_widget
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (item.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      widget = self.attr_view
      # long
      row = widget.row_for_item(item.attr_handle)
      @ignore_select = true
      widget.deselect_row(row)
      @ignore_select = false
    end
    
    typesig { [TreeColumn] }
    def destroy_item(column)
      index = 0
      while (index < @column_count)
        if ((@columns[index]).equal?(column))
          break
        end
        index += 1
      end
      i = 0
      while i < @items.attr_length
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
        # then outlineView_objectValueForTableColumn_byItem is never invoked to
        # query for item values, which is a problem for VIRTUAL Trees.  The
        # workaround is to ensure that, for 0-column Trees, the internal first
        # column always has a minimal width that makes this call come in.
        @first_column.set_min_width(FIRST_COLUMN_MINIMUM_WIDTH)
        set_scroll_width
      else
        if ((index).equal?(0))
          (self.attr_view).set_outline_table_column(@columns[0].attr_ns_column)
        end
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
            @columns[j].send_event(SWT::Move)
            break
          end
          j += 1
        end
        i_ += 1
      end
    end
    
    typesig { [TreeItem] }
    def destroy_item(item)
      count_ = 0
      items = nil
      parent_item = item.attr_parent_item
      if (!(parent_item).nil?)
        count_ = parent_item.attr_item_count
        items = parent_item.attr_items
      else
        count_ = @item_count
        items = @items
      end
      index = 0
      while (index < count_)
        if ((items[index]).equal?(item))
          break
        end
        index += 1
      end
      System.arraycopy(items, index + 1, items, index, (count_ -= 1) - index)
      items[count_] = nil
      if (!(parent_item).nil?)
        parent_item.attr_item_count = count_
      else
        @item_count = count_
      end
      reload_item(parent_item, true)
      set_scroll_width
      if ((@item_count).equal?(0))
        @image_bounds = nil
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
      item = self.attr_display.get_widget(out_value[0])
      # long
      row_index = widget.row_for_item(item.attr_handle)
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
        send_event(SWT::EraseItem, event)
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
      if (!(@insert_item).nil? && !@insert_item.is_disposed)
        context.save_graphics_state
        content_rect = cell.title_rect_for_bounds(rect)
        data = SwtGCData.new
        data.attr_paint_rect = content_rect
        gc = SwtGC.cocoa_new(self, data)
        gc.set_clipping(RJava.cast_to_int((content_rect.attr_x - offset_x)), RJava.cast_to_int((content_rect.attr_y - offset_y)), RJava.cast_to_int(content_rect.attr_width), RJava.cast_to_int(content_rect.attr_height))
        item_rect = @insert_item.get_image_bounds(0).union(@insert_item.get_bounds)
        client_rect = get_client_area
        x = client_rect.attr_x + client_rect.attr_width
        pos_y = @insert_before ? item_rect.attr_y : item_rect.attr_y + item_rect.attr_height - 1
        gc.draw_line(item_rect.attr_x, pos_y, x, pos_y)
        gc.dispose
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
        send_event(SWT::PaintItem, event)
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    # long
    # long
    # long
    def expand_item_expand_children(id, sel, item_id, children)
      item = self.attr_display.get_widget(item_id)
      if (!@ignore_expand)
        item.send_expand(true, children)
      end
      @ignore_expand = true
      super(id, sel, item_id, children)
      @ignore_expand = false
      if (is_disposed || item.is_disposed)
        return
      end
      if (!children)
        @ignore_expand = true
        items = item.attr_items
        i = 0
        while i < item.attr_item_count
          if (!(items[i]).nil?)
            items[i].update_expanded
          end
          i += 1
        end
        @ignore_expand = false
      end
      set_scroll_width(false, item.attr_items, true)
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
    # If no <code>TreeColumn</code>s were created by the programmer,
    # this method will throw <code>ERROR_INVALID_RANGE</code> despite
    # the fact that a single column of data may be visible in the tree.
    # This occurs when the programmer uses the tree like a list, adding
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
    # @see Tree#getColumnOrder()
    # @see Tree#setColumnOrder(int[])
    # @see TreeColumn#getMoveable()
    # @see TreeColumn#setMoveable(boolean)
    # @see SWT#Move
    # 
    # @since 3.1
    def get_column(index)
      check_widget
      if (!(0 <= index && index < @column_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      return @columns[index]
    end
    
    typesig { [] }
    # Returns the number of columns contained in the receiver.
    # If no <code>TreeColumn</code>s were created by the programmer,
    # this value is zero, despite the fact that visually, one column
    # of items may be visible. This occurs when the programmer uses
    # the tree like a list, adding items but never creating a column.
    # 
    # @return the number of columns
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
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
    # @see Tree#setColumnOrder(int[])
    # @see TreeColumn#getMoveable()
    # @see TreeColumn#setMoveable(boolean)
    # @see SWT#Move
    # 
    # @since 3.2
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
    # Returns an array of <code>TreeColumn</code>s which are the
    # columns in the receiver. Columns are returned in the order
    # that they were created.  If no <code>TreeColumn</code>s were
    # created by the programmer, the array is empty, despite the fact
    # that visually, one column of items may be visible. This occurs
    # when the programmer uses the tree like a list, adding items but
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
    # @see Tree#getColumnOrder()
    # @see Tree#setColumnOrder(int[])
    # @see TreeColumn#getMoveable()
    # @see TreeColumn#setMoveable(boolean)
    # @see SWT#Move
    # 
    # @since 3.1
    def get_columns
      check_widget
      result = Array.typed(TreeColumn).new(@column_count) { nil }
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
    # 
    # @since 3.1
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
    # @since 3.1
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
    # 
    # @since 3.1
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
    # 
    # @since 3.1
    def get_item(index)
      check_widget
      count_ = get_item_count
      if (index < 0 || index >= count_)
        error(SWT::ERROR_INVALID_RANGE)
      end
      return __get_item(nil, index, true)
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
      if ((point).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      check_items
      widget = self.attr_view
      pt = NSPoint.new
      pt.attr_x = point.attr_x
      pt.attr_y = point.attr_y
      # 64
      row = RJava.cast_to_int(widget.row_at_point(pt))
      if ((row).equal?(-1))
        return nil
      end
      rect = widget.frame_of_outline_cell_at_row(row)
      if (OS._nspoint_in_rect(pt, rect))
        return nil
      end
      id = widget.item_at_row(row)
      item = self.attr_display.get_widget(id.attr_id)
      if (!(item).nil? && item.is_a?(TreeItem))
        return item
      end
      return nil
    end
    
    typesig { [] }
    # Returns the number of items contained in the receiver
    # that are direct item children of the receiver.  The
    # number that is returned is the number of roots in the
    # tree.
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
    
    typesig { [TreeItem] }
    def get_item_count(item)
      return (item).nil? ? @item_count : item.attr_item_count
    end
    
    typesig { [] }
    # Returns the height of the area which would be used to
    # display <em>one</em> of the items in the tree.
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
    # Returns a (possibly empty) array of items contained in the
    # receiver that are direct item children of the receiver.  These
    # are the roots of the tree.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of items, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return the items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_items
      check_widget
      result = Array.typed(TreeItem).new(@item_count) { nil }
      i = 0
      while i < @item_count
        result[i] = __get_item(nil, i, true)
        i += 1
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
    # 
    # @since 3.1
    def get_lines_visible
      check_widget
      return (self.attr_view).uses_alternating_row_background_colors
    end
    
    typesig { [] }
    # Returns the receiver's parent item, which must be a
    # <code>TreeItem</code> or null when the receiver is a
    # root.
    # 
    # @return the receiver's parent item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_parent_item
      check_widget
      return nil
    end
    
    typesig { [] }
    # Returns an array of <code>TreeItem</code>s that are currently
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
        return Array.typed(TreeItem).new(0) { nil }
      end
      selection = widget.selected_row_indexes
      # 64
      count_ = RJava.cast_to_int(selection.count)
      # long
      # long
      index_buffer = Array.typed(::Java::Int).new(count_) { 0 }
      selection.get_indexes(index_buffer, count_, 0)
      result = Array.typed(TreeItem).new(count_) { nil }
      i = 0
      while i < count_
        id = widget.item_at_row(index_buffer[i])
        item = self.attr_display.get_widget(id.attr_id)
        if (!(item).nil? && item.is_a?(TreeItem))
          result[i] = item
        end
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
    # @see #setSortColumn(TreeColumn)
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
    # Returns the item which is currently at the top of the receiver.
    # This item can change when items are expanded, collapsed, scrolled
    # or new items are added or removed.
    # 
    # @return the item at the top of the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.1
    def get_top_item
      check_widget
      # TODO - partial item at the top
      rect = self.attr_scroll_view.document_visible_rect
      point = NSPoint.new
      point.attr_x = rect.attr_x
      point.attr_y = rect.attr_y
      outline_view = self.attr_view
      # long
      index = outline_view.row_at_point(point)
      if ((index).equal?(-1))
        return nil
      end
      # empty
      item = outline_view.item_at_row(index)
      return self.attr_display.get_widget(item.attr_id)
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
      OS.memmove___org_eclipse_swt_widgets_tree_3(clip_rect, rect, NSRect.attr_sizeof)
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
    
    typesig { [TreeColumn] }
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
    # 
    # @since 3.1
    def index_of(column)
      check_widget
      if ((column).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (column.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
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
    
    typesig { [TreeItem] }
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
    # <li>ERROR_INVALID_ARGUMENT - if the item has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def index_of(item)
      check_widget
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (item.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(item.attr_parent_item).nil?)
        return -1
      end
      i = 0
      while i < @item_count
        if ((item).equal?(@items[i]))
          return i
        end
        i += 1
      end
      return -1
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
        tree = self.attr_view
        # get the current selections for the outline view.
        selected_row_indexes_ = tree.selected_row_indexes
        # select the row that was clicked before showing the menu for the event
        mouse_point = self.attr_view.convert_point_from_view_(event.location_in_window, nil)
        # long
        row = tree.row_at_point(mouse_point)
        # figure out if the row that was just clicked on is currently selected
        if ((selected_row_indexes_.contains_index(row)).equal?(false))
          set = NSIndexSet.new.alloc
          set = set.init_with_index(row)
          tree.select_row_indexes(set, false)
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
          # Bug/feature in Cocoa:  If the tree has a context menu we just set it visible instead of returning
          # it from menuForEvent:.  This has the side effect, however, of sending control-click to the NSTableView,
          # which is interpreted as a single click that clears the selection.  Fix is to ignore control-click,
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
      outline_view = self.attr_view
      # 64
      index = RJava.cast_to_int(outline_view.selected_row)
      item = self.attr_display.get_widget(outline_view.item_at_row(index).attr_id)
      if (item.attr_grayed)
        return item.attr_checked ? OS::NSOffState : OS::NSMixedState
      end
      return item.attr_checked ? OS::NSOffState : OS::NSOnState
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def outline_view_child_of_item(id, sel, outline_view, index, item_id)
      parent = self.attr_display.get_widget(item_id)
      # 64
      item = __get_item(parent, RJava.cast_to_int(index), true)
      return item.attr_handle.attr_id
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def outline_view_did_click_table_column(id, sel, outline_view, table_column)
      column = get_column(Id.new(table_column))
      if ((column).nil?)
        return
      end
      # either CHECK column or firstColumn in 0-column Tree
      column.post_event___org_eclipse_swt_widgets_tree_5(SWT::Selection)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def outline_view_object_value_for_table_column_by_item(id, sel, outline_view, table_column, item_id)
      item = self.attr_display.get_widget(item_id)
      check_data(item)
      if (!(@check_column).nil? && (table_column).equal?(@check_column.attr_id))
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
        if ((@columns[i].attr_ns_column.attr_id).equal?(table_column))
          return item.create_string(i).attr_id
        end
        i += 1
      end
      return item.create_string(0).attr_id
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def outline_view_is_item_expandable(id, sel, outline_view, item)
      if ((item).equal?(0))
        return true
      end
      return !((self.attr_display.get_widget(item)).attr_item_count).equal?(0)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def outline_view_number_of_children_of_item(id, sel, outline_view, item)
      if ((item).equal?(0))
        return @item_count
      end
      return (self.attr_display.get_widget(item)).attr_item_count
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def outline_view_will_display_cell_for_table_column_item(id, sel, outline_view, cell, table_column, item_id)
      if (!(@check_column).nil? && (table_column).equal?(@check_column.attr_id))
        return
      end
      item = self.attr_display.get_widget(item_id)
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
      OS.object_set_instance_variable(cell, Display::SWT_ROW, item_id)
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def outline_view_column_did_move(id, sel, a_notification)
      notification = NSNotification.new(a_notification)
      user_info_ = notification.user_info
      ns_old_index = user_info_.value_for_key(NSString.string_with("NSOldColumn")) # $NON-NLS-1$
      ns_new_index = user_info_.value_for_key(NSString.string_with("NSNewColumn")) # $NON-NLS-1$
      old_index = NSNumber.new(ns_old_index).int_value
      new_index = NSNumber.new(ns_new_index).int_value
      start_index = Math.min(old_index, new_index)
      end_index = Math.max(old_index, new_index)
      outline_view = self.attr_view
      ns_columns = outline_view.table_columns
      i = start_index
      while i <= end_index
        column_id = ns_columns.object_at_index(i)
        column = get_column(column_id)
        if (!(column).nil?)
          column.send_event(SWT::Move)
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
    def outline_view_column_did_resize(id, sel, a_notification)
      notification = NSNotification.new(a_notification)
      user_info_ = notification.user_info
      column_id = user_info_.value_for_key(NSString.string_with("NSTableColumn")) # $NON-NLS-1$
      column = get_column(column_id)
      if ((column).nil?)
        return
      end
      # either CHECK column or firstColumn in 0-column Tree
      column.send_event(SWT::Resize)
      if (is_disposed)
        return
      end
      outline_view = self.attr_view
      index = index_of(column.attr_ns_column)
      if ((index).equal?(-1))
        return
      end
      # column was disposed in Resize callback
      ns_columns = outline_view.table_columns
      # 64
      column_count = RJava.cast_to_int(outline_view.number_of_columns)
      i = index + 1
      while i < column_count
        column_id = ns_columns.object_at_index(i)
        column = get_column(column_id)
        if (!(column).nil?)
          column.send_event(SWT::Move)
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
    def outline_view_selection_did_change(id, sel, notification)
      if (@ignore_select)
        return
      end
      widget = self.attr_view
      # 64
      row = RJava.cast_to_int(widget.selected_row)
      if ((row).equal?(-1))
        post_event___org_eclipse_swt_widgets_tree_7(SWT::Selection)
      else
        _id = widget.item_at_row(row)
        item = self.attr_display.get_widget(_id.attr_id)
        event = Event.new
        event.attr_item = item
        event.attr_index = row
        post_event___org_eclipse_swt_widgets_tree_9(SWT::Selection, event)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def outline_view_set_object_value_for_table_column_by_item(id, sel, outline_view, object, table_column, item_id)
      if (!(@check_column).nil? && (table_column).equal?(@check_column.attr_id))
        item = self.attr_display.get_widget(item_id)
        item.attr_checked = !item.attr_checked
        event = Event.new
        event.attr_detail = SWT::CHECK
        event.attr_item = item
        post_event___org_eclipse_swt_widgets_tree_11(SWT::Selection, event)
        item.redraw(-1)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def outline_view_write_items_to_pasteboard(id, sel, arg0, arg1, arg2)
      return send_mouse_event___org_eclipse_swt_widgets_tree_13(NSApplication.shared_application.current_event, SWT::DragDetect, true)
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
      i = 0
      while i < @items.attr_length
        item = @items[i]
        if (!(item).nil? && !item.is_disposed)
          item.release(false)
        end
        i += 1
      end
      @items = nil
      if (!(@columns).nil?)
        i_ = 0
        while i_ < @column_count
          column = @columns[i_]
          if (!(column).nil? && !column.is_disposed)
            column.release(false)
          end
          i_ += 1
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
      @sort_column = nil
    end
    
    typesig { [TreeItem, ::Java::Boolean] }
    def reload_item(item, recurse)
      if (get_drawing)
        widget = self.attr_view
        selected_items = get_selection
        if (!(item).nil?)
          widget.reload_item(item.attr_handle, recurse)
        else
          widget.reload_data
        end
        select_items(selected_items, true)
      else
        @reload_pending = true
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
      while i < @items.attr_length
        item = @items[i]
        if (!(item).nil? && !item.is_disposed)
          item.release(false)
        end
        i += 1
      end
      @items = Array.typed(TreeItem).new(4) { nil }
      @item_count = 0
      @image_bounds = nil
      (self.attr_view).reload_data
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
      self.attr_event_table.unhook(SWT::Selection, listener)
      self.attr_event_table.unhook(SWT::DefaultSelection, listener)
    end
    
    typesig { [TreeListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when items in the receiver are expanded or collapsed.
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
    # @see TreeListener
    # @see #addTreeListener
    def remove_tree_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Expand, listener)
      self.attr_event_table.unhook(SWT::Collapse, listener)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def set_image(id, sel, arg0)
      OS.object_set_instance_variable(id, Display::SWT_IMAGE, arg0)
    end
    
    typesig { [TreeItem, ::Java::Boolean] }
    # Display a mark indicating the point at which an item will be inserted.
    # The drop insert item has a visual hint to show where a dragged item
    # will be inserted when dropped on the tree.
    # 
    # @param item the insert item.  Null will clear the insertion mark.
    # @param before true places the insert mark above 'item'. false places
    # the insert mark below 'item'.
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the item has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_insert_mark(item, before)
      check_widget
      if (!(item).nil? && item.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      old_mark = @insert_item
      @insert_item = item
      @insert_before = before
      if (!(old_mark).nil? && !old_mark.is_disposed)
        old_mark.redraw(-1)
      end
      if (!(item).nil?)
        item.redraw(-1)
      end
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
      check_items
      widget = self.attr_view
      @ignore_select = true
      widget.select_all(nil)
      @ignore_select = false
    end
    
    typesig { [TreeItem] }
    # Selects an item in the receiver.  If the item was already
    # selected, it remains selected.
    # 
    # @param item the item to be selected
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
    # @since 3.4
    def select(item)
      check_widget
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (item.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      check_items
      show_item(item)
      outline_view = self.attr_view
      # long
      row = outline_view.row_for_item(item.attr_handle)
      set = NSIndexSet.new.alloc
      set = set.init_with_index(row)
      @ignore_select = true
      outline_view.select_row_indexes(set, false)
      @ignore_select = false
      set.release
    end
    
    typesig { [] }
    def send_double_selection
      outline_view = self.attr_view
      # 64
      row_index = RJava.cast_to_int(outline_view.clicked_row)
      if (!(row_index).equal?(-1))
        if (!((self.attr_style & SWT::CHECK)).equal?(0))
          columns = outline_view.table_columns
          # 64
          column_index = RJava.cast_to_int(outline_view.clicked_column)
          column = columns.object_at_index(column_index)
          if ((column.attr_id).equal?(@check_column.attr_id))
            return
          end
        end
        item = self.attr_display.get_widget(outline_view.item_at_row(row_index).attr_id)
        event = Event.new
        event.attr_item = item
        post_event___org_eclipse_swt_widgets_tree_15(SWT::DefaultSelection, event)
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
        post_event___org_eclipse_swt_widgets_tree_17(SWT::DefaultSelection)
      end
      return result
    end
    
    typesig { [TreeItem, ::Java::Int, NSSize] }
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
      send_event(SWT::MeasureItem, event)
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
            item.attr_width += widget.indentation_per_level * (1 + widget.level_for_item(item.attr_handle))
            if (set_scroll_width(item))
              widget.set_needs_display(true)
            end
          end
        end
      end
    end
    
    typesig { [Array.typed(TreeItem), ::Java::Boolean] }
    def select_items(items, ignore_disposed)
      outline_view = self.attr_view
      set = NSMutableIndexSet.new.alloc.init
      length_ = items.attr_length
      i = 0
      while i < length_
        if (!(items[i]).nil?)
          if (items[i].is_disposed)
            if (ignore_disposed)
              i += 1
              next
            end
            error(SWT::ERROR_INVALID_ARGUMENT)
          end
          item = items[i]
          if (!ignore_disposed)
            show_item(items[i], false)
          end
          set.add_index(outline_view.row_for_item(item.attr_handle))
        end
        i += 1
      end
      @ignore_select = true
      outline_view.select_row_indexes(set, false)
      @ignore_select = false
      set.release
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
    # @see Tree#getColumnOrder()
    # @see TreeColumn#getMoveable()
    # @see TreeColumn#setMoveable(boolean)
    # @see SWT#Move
    # 
    # @since 3.2
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
        outline_view = self.attr_view
        old_x = Array.typed(::Java::Int).new(old_order.attr_length) { 0 }
        check = !((self.attr_style & SWT::CHECK)).equal?(0) ? 1 : 0
        i_ = 0
        while i_ < old_order.attr_length
          index = old_order[i_]
          old_x[index] = RJava.cast_to_int(outline_view.rect_of_column(i_ + check).attr_x)
          i_ += 1
        end
        new_x = Array.typed(::Java::Int).new(order.attr_length) { 0 }
        i__ = 0
        while i__ < order.attr_length
          index = order[i__]
          column = @columns[index]
          old_index = index_of(column.attr_ns_column)
          new_index = i__ + check
          outline_view.move_column(old_index, new_index)
          new_x[index] = RJava.cast_to_int(outline_view.rect_of_column(new_index).attr_x)
          i__ += 1
        end
        new_columns = Array.typed(TreeColumn).new(@column_count) { nil }
        System.arraycopy(@columns, 0, new_columns, 0, @column_count)
        i___ = 0
        while i___ < @column_count
          column = new_columns[i___]
          if (!column.is_disposed)
            if (!(new_x[i___]).equal?(old_x[i___]))
              column.send_event(SWT::Move)
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
      set_scroll_width
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
    # 
    # @since 3.1
    def set_header_visible(show)
      check_widget
      (self.attr_view).set_header_view(show ? @header_view : nil)
    end
    
    typesig { [::Java::Int] }
    # Sets the number of root-level items contained in the receiver.
    # 
    # @param count the number of items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def set_item_count(count_)
      check_widget
      check_items
      count_ = Math.max(0, count_)
      set_item_count(nil, count_)
    end
    
    typesig { [TreeItem, ::Java::Int] }
    def set_item_count(parent_item, count_)
      item_count = get_item_count(parent_item)
      if ((count_).equal?(item_count))
        return
      end
      widget = self.attr_view
      length_ = Math.max(4, (count_ + 3) / 4 * 4)
      children = (parent_item).nil? ? @items : parent_item.attr_items
      expanded = (parent_item).nil? || parent_item.get_expanded
      if (count_ < item_count)
        # Note that the item count has to be updated before the call to reloadItem(), but
        # the items have to be released after.
        if ((parent_item).nil?)
          @item_count = count_
        else
          parent_item.attr_item_count = count_
        end
        # Bug in Cocoa.  When removing selected items from an NSOutlineView, the selection
        # is not properly updated.  The fix is to ensure that the item and its subitems
        # are deselected before the item is removed by the reloadItem call.
        if (expanded)
          index = count_
          while index < item_count
            item = children[index]
            if (!(item).nil? && !item.is_disposed)
              item.clear_selection
            end
            index += 1
          end
        end
        selected_items = get_selection
        widget.reload_item(!(parent_item).nil? ? parent_item.attr_handle : nil, expanded)
        select_items(selected_items, true)
        index = count_
        while index < item_count
          item = children[index]
          if (!(item).nil? && !item.is_disposed)
            item.release(false)
          end
          index += 1
        end
        new_items = Array.typed(TreeItem).new(length_) { nil }
        if (!(children).nil?)
          System.arraycopy(children, 0, new_items, 0, count_)
        end
        children = new_items
        if ((parent_item).nil?)
          @items = new_items
        else
          parent_item.attr_items = new_items
        end
      else
        if (((self.attr_style & SWT::VIRTUAL)).equal?(0))
          i = item_count
          while i < count_
            TreeItem.new(self, parent_item, SWT::NONE, i, true)
            i += 1
          end
        else
          new_items = Array.typed(TreeItem).new(length_) { nil }
          if (!(children).nil?)
            System.arraycopy(children, 0, new_items, 0, item_count)
          end
          children = new_items
          if ((parent_item).nil?)
            @items = new_items
            @item_count = count_
          else
            parent_item.attr_items = new_items
            parent_item.attr_item_count = count_
          end
          selected_items = get_selection
          widget.reload_item(!(parent_item).nil? ? parent_item.attr_handle : nil, expanded)
          select_items(selected_items, true)
          if (!(parent_item).nil? && (item_count).equal?(0) && parent_item.attr_expanded)
            @ignore_expand = true
            widget.expand_item(parent_item.attr_handle)
            @ignore_expand = false
          end
        end
      end
    end
    
    typesig { [::Java::Int] }
    # public
    def set_item_height(item_height)
      check_widget
      if (item_height < -1)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((item_height).equal?(-1))
        set_item_height(nil, nil, true)
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
    # Marks the receiver's lines as visible if the argument is <code>true</code>,
    # and marks it invisible otherwise. Note that some platforms draw
    # grid lines while others may draw alternating row colors.
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
    # 
    # @since 3.1
    def set_lines_visible(show)
      check_widget
      (self.attr_view).set_uses_alternating_row_background_colors(show)
    end
    
    typesig { [::Java::Boolean] }
    def set_redraw(redraw_)
      check_widget
      super(redraw_)
      if (redraw_ && (self.attr_draw_count).equal?(0))
        check_items
        set_scroll_width
      end
    end
    
    typesig { [] }
    def set_scroll_width
      return set_scroll_width(true, @items, true)
    end
    
    typesig { [::Java::Boolean, Array.typed(TreeItem), ::Java::Boolean] }
    def set_scroll_width(set, items, recurse)
      if ((items).nil?)
        return false
      end
      if (@ignore_redraw || !get_drawing)
        return false
      end
      if (!(@column_count).equal?(0))
        return false
      end
      gc = SwtGC.new(self)
      new_width = calculate_width(items, 0, gc, recurse)
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
    
    typesig { [TreeItem] }
    def set_scroll_width(item)
      if (@ignore_redraw || !get_drawing)
        return false
      end
      if (!(@column_count).equal?(0))
        return false
      end
      parent_item = item.attr_parent_item
      if (!(parent_item).nil? && !parent_item.get_expanded)
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
    
    typesig { [TreeItem] }
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
      set_selection(Array.typed(TreeItem).new([item]))
    end
    
    typesig { [Array.typed(TreeItem)] }
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
    # @see Tree#deselectAll()
    def set_selection(items)
      check_widget
      if ((items).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      check_items
      deselect_all
      length_ = items.attr_length
      if ((length_).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length_ > 1))
        return
      end
      select_items(items, false)
      if (items.attr_length > 0)
        i = 0
        while i < items.attr_length
          item = items[i]
          if (!(item).nil?)
            show_item(item, true)
            break
          end
          i += 1
        end
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
    
    typesig { [TreeColumn] }
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
    
    typesig { [TreeItem] }
    # Sets the item which is currently at the top of the receiver.
    # This item can change when items are expanded, collapsed, scrolled
    # or new items are added or removed.
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
    # @see Tree#getTopItem()
    # 
    # @since 2.1
    def set_top_item(item)
      check_widget
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (item.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      check_items
      show_item(item, false)
      widget = self.attr_view
      # long
      row = widget.row_for_item(item.attr_handle)
      if ((row).equal?(-1))
        return
      end
      pt = NSPoint.new
      pt.attr_x = self.attr_scroll_view.content_view.bounds.attr_x
      pt.attr_y = widget.frame_of_cell_at_column(0, row).attr_y
      self.attr_view.scroll_point(pt)
    end
    
    typesig { [TreeColumn] }
    # Shows the column.  If the column is already showing in the receiver,
    # this method simply returns.  Otherwise, the columns are scrolled until
    # the column is visible.
    # 
    # @param column the column to be shown
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
    # @since 3.1
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
    
    typesig { [TreeItem] }
    # Shows the item.  If the item is already showing in the receiver,
    # this method simply returns.  Otherwise, the items are scrolled
    # and expanded until the item is visible.
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
    # @see Tree#showSelection()
    def show_item(item)
      check_widget
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (item.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      check_items
      show_item(item, true)
    end
    
    typesig { [TreeItem, ::Java::Boolean] }
    def show_item(item, scroll)
      parent_item = item.attr_parent_item
      if (!(parent_item).nil?)
        show_item(parent_item, false)
        parent_item.set_expanded(true)
      end
      if (scroll)
        outline_view = self.attr_view
        outline_view.scroll_row_to_visible(outline_view.row_for_item(item.attr_handle))
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
    # @see Tree#showItem(TreeItem)
    def show_selection
      check_widget
      check_items
      # TODO - optimize
      selection = get_selection
      if (selection.attr_length > 0)
        check_data(selection[0])
        show_item(selection[0], true)
      end
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
    alias_method :initialize__tree, :initialize
  end
  
end
