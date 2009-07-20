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
  module TableImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CFRange
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :DataBrowserCallbacks
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :DataBrowserCustomCallbacks
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :DataBrowserListViewColumnDesc
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :DataBrowserListViewHeaderDesc
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :DataBrowserAccessibilityItemInfo
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HMHelpContentRec
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Rect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGPoint
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
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
    
    attr_accessor :current_item
    alias_method :attr_current_item, :current_item
    undef_method :current_item
    alias_method :attr_current_item=, :current_item=
    undef_method :current_item=
    
    attr_accessor :sort_column
    alias_method :attr_sort_column, :sort_column
    undef_method :sort_column
    alias_method :attr_sort_column=, :sort_column=
    undef_method :sort_column=
    
    attr_accessor :paint_gc
    alias_method :attr_paint_gc, :paint_gc
    undef_method :paint_gc
    alias_method :attr_paint_gc=, :paint_gc=
    undef_method :paint_gc=
    
    attr_accessor :sort_direction
    alias_method :attr_sort_direction, :sort_direction
    undef_method :sort_direction
    alias_method :attr_sort_direction=, :sort_direction=
    undef_method :sort_direction=
    
    attr_accessor :item_count
    alias_method :attr_item_count, :item_count
    undef_method :item_count
    alias_method :attr_item_count=, :item_count=
    undef_method :item_count=
    
    attr_accessor :column_count
    alias_method :attr_column_count, :column_count
    undef_method :column_count
    alias_method :attr_column_count=, :column_count=
    undef_method :column_count=
    
    attr_accessor :column_id
    alias_method :attr_column_id, :column_id
    undef_method :column_id
    alias_method :attr_column_id=, :column_id=
    undef_method :column_id=
    
    attr_accessor :id_count
    alias_method :attr_id_count, :id_count
    undef_method :id_count
    alias_method :attr_id_count=, :id_count=
    undef_method :id_count=
    
    attr_accessor :anchor_first
    alias_method :attr_anchor_first, :anchor_first
    undef_method :anchor_first
    alias_method :attr_anchor_first=, :anchor_first=
    undef_method :anchor_first=
    
    attr_accessor :anchor_last
    alias_method :attr_anchor_last, :anchor_last
    undef_method :anchor_last
    alias_method :attr_anchor_last=, :anchor_last=
    undef_method :anchor_last=
    
    attr_accessor :header_height
    alias_method :attr_header_height, :header_height
    undef_method :header_height
    alias_method :attr_header_height=, :header_height=
    undef_method :header_height=
    
    attr_accessor :last_index_of
    alias_method :attr_last_index_of, :last_index_of
    undef_method :last_index_of
    alias_method :attr_last_index_of=, :last_index_of=
    undef_method :last_index_of=
    
    attr_accessor :ignore_select
    alias_method :attr_ignore_select, :ignore_select
    undef_method :ignore_select
    alias_method :attr_ignore_select=, :ignore_select=
    undef_method :ignore_select=
    
    attr_accessor :was_selected
    alias_method :attr_was_selected, :was_selected
    undef_method :was_selected
    alias_method :attr_was_selected=, :was_selected=
    undef_method :was_selected=
    
    attr_accessor :fix_scroll_width
    alias_method :attr_fix_scroll_width, :fix_scroll_width
    undef_method :fix_scroll_width
    alias_method :attr_fix_scroll_width=, :fix_scroll_width=
    undef_method :fix_scroll_width=
    
    attr_accessor :draw_background
    alias_method :attr_draw_background, :draw_background
    undef_method :draw_background
    alias_method :attr_draw_background=, :draw_background=
    undef_method :draw_background=
    
    attr_accessor :image_bounds
    alias_method :attr_image_bounds, :image_bounds
    undef_method :image_bounds
    alias_method :attr_image_bounds=, :image_bounds=
    undef_method :image_bounds=
    
    attr_accessor :show_index
    alias_method :attr_show_index, :show_index
    undef_method :show_index
    alias_method :attr_show_index=, :show_index=
    undef_method :show_index=
    
    attr_accessor :last_hittest
    alias_method :attr_last_hittest, :last_hittest
    undef_method :last_hittest
    alias_method :attr_last_hittest=, :last_hittest=
    undef_method :last_hittest=
    
    attr_accessor :last_hittest_column
    alias_method :attr_last_hittest_column, :last_hittest_column
    undef_method :last_hittest_column
    alias_method :attr_last_hittest_column=, :last_hittest_column=
    undef_method :last_hittest_column=
    
    class_module.module_eval {
      const_set_lazy(:CHECK_COLUMN_ID) { 1024 }
      const_attr_reader  :CHECK_COLUMN_ID
      
      const_set_lazy(:COLUMN_ID) { 1025 }
      const_attr_reader  :COLUMN_ID
      
      const_set_lazy(:GRID_WIDTH) { 1 }
      const_attr_reader  :GRID_WIDTH
      
      const_set_lazy(:ICON_AND_TEXT_GAP) { 4 }
      const_attr_reader  :ICON_AND_TEXT_GAP
      
      const_set_lazy(:CELL_CONTENT_INSET) { 12 }
      const_attr_reader  :CELL_CONTENT_INSET
      
      const_set_lazy(:BORDER_INSET) { 1 }
      const_attr_reader  :BORDER_INSET
      
      const_set_lazy(:AX_ATTRIBUTES) { Array.typed(String).new([OS.attr_k_axchildren_attribute, OS.attr_k_axtitle_attribute, ]) }
      const_attr_reader  :AX_ATTRIBUTES
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
      @current_item = nil
      @sort_column = nil
      @paint_gc = nil
      @sort_direction = 0
      @item_count = 0
      @column_count = 0
      @column_id = 0
      @id_count = 0
      @anchor_first = 0
      @anchor_last = 0
      @header_height = 0
      @last_index_of = 0
      @ignore_select = false
      @was_selected = false
      @fix_scroll_width = false
      @draw_background = false
      @image_bounds = nil
      @show_index = 0
      @last_hittest = 0
      @last_hittest_column = 0
      super(parent, check_style(style))
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
    
    typesig { [::Java::Int, Listener] }
    def __add_listener(event_type, listener)
      super(event_type, listener)
      i = 0
      while i < @items.attr_length
        if (!(@items[i]).nil?)
          @items[i].attr_width = -1
        end
        i += 1
      end
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def call_paint_event_handler(control, damage_rgn, visible_rgn, the_event, next_handler)
      # Feature in the Macintosh.  The draw item proc is not called if the column width
      # is zero. This means that the SWT.MeasureItem listener is not called and the column
      # does not get wider ever.  The fix is to change the column width to one.
      if ((@column_count).equal?(0) && (hooks(SWT::MeasureItem) || hooks(SWT::EraseItem) || hooks(SWT::PaintItem)))
        width = Array.typed(::Java::Short).new(1) { 0 }
        OS._get_data_browser_table_view_named_column_width(self.attr_handle, @column_id, width)
        if ((width[0]).equal?(0))
          OS._set_data_browser_table_view_named_column_width(self.attr_handle, @column_id, RJava.cast_to_short(1))
        end
      end
      current_gc = @paint_gc
      if ((current_gc).nil?)
        data = SwtGCData.new
        data.attr_paint_event = the_event
        data.attr_visible_rgn = visible_rgn
        @paint_gc = SwtGC.carbon_new(self, data)
      end
      @fix_scroll_width = false
      @draw_background = !(find_background_control).nil?
      result = super(control, damage_rgn, visible_rgn, the_event, next_handler)
      if ((@item_count).equal?(0) && @draw_background)
        @draw_background = false
        rect = get_client_area
        header_height = get_header_height
        rect.attr_y += header_height
        rect.attr_height -= header_height
        fill_background(self.attr_handle, @paint_gc.attr_handle, rect)
      end
      if (@fix_scroll_width)
        @fix_scroll_width = false
        if (set_scroll_width(@items, true))
          redraw
        end
      end
      if ((current_gc).nil?)
        @paint_gc.dispose
        @paint_gc = nil
      end
      return result
    end
    
    typesig { [TableItem, ::Java::Boolean] }
    def check_data(item, redraw_)
      if (item.attr_cached)
        return true
      end
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        item.attr_cached = true
        event = Event.new
        event.attr_item = item
        event.attr_index = index_of(item)
        @current_item = item
        send_event(SWT::SetData, event)
        # widget could be disposed at this point
        @current_item = nil
        if (is_disposed || item.is_disposed)
          return false
        end
        if (redraw_)
          if (!set_scroll_width(item))
            item.redraw(OS.attr_k_data_browser_no_item)
          end
        end
      end
      return true
    end
    
    typesig { [::Java::Boolean] }
    def check_items(set_scroll_width_)
      count = Array.typed(::Java::Int).new(1) { 0 }
      if (!(OS._get_data_browser_item_count(self.attr_handle, OS.attr_k_data_browser_no_item, true, OS.attr_k_data_browser_item_any_state, count)).equal?(OS.attr_no_err))
        error(SWT::ERROR_CANNOT_GET_COUNT)
      end
      if (!(@item_count).equal?(count[0]))
        # Feature in the Mac. When AddDataBrowserItems() is used
        # to add items, item notification callbacks are issued with
        # the message kDataBrowserItemAdded.  When many items are
        # added, this is slow.  The fix is to temporarily remove
        # the item notification callback.
        callbacks = DataBrowserCallbacks.new
        OS._get_data_browser_callbacks(self.attr_handle, callbacks)
        callbacks.attr_v1_item_notification_callback = 0
        OS._set_data_browser_callbacks(self.attr_handle, callbacks)
        delta = @item_count - count[0]
        if (delta < 1024)
          ids = Array.typed(::Java::Int).new(delta) { 0 }
          i = 0
          while i < ids.attr_length
            ids[i] = count[0] + i + 1
            i += 1
          end
          if (!(OS._add_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, ids.attr_length, ids, OS.attr_k_data_browser_item_no_property)).equal?(OS.attr_no_err))
            error(SWT::ERROR_ITEM_NOT_ADDED)
          end
          OS._update_data_browser_items(self.attr_handle, 0, 0, nil, OS.attr_k_data_browser_item_no_property, OS.attr_k_data_browser_no_item)
        else
          if (!(OS._add_data_browser_items(self.attr_handle, 0, @item_count, nil, OS.attr_k_data_browser_item_no_property)).equal?(OS.attr_no_err))
            error(SWT::ERROR_ITEM_NOT_ADDED)
          end
        end
        callbacks.attr_v1_item_notification_callback = self.attr_display.attr_item_notification_proc
        OS._set_data_browser_callbacks(self.attr_handle, callbacks)
      end
      if (set_scroll_width_)
        set_scroll_width(@items, true)
      end
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
        if ((@current_item).nil? && (self.attr_draw_count).equal?(0))
          id = Array.typed(::Java::Int).new([get_id(index)])
          OS._update_data_browser_items(self.attr_handle, 0, id.attr_length, id, OS.attr_k_data_browser_item_no_property, OS.attr_k_data_browser_no_item)
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
      if ((@current_item).nil? && (self.attr_draw_count).equal?(0))
        OS._update_data_browser_items(self.attr_handle, 0, 0, nil, OS.attr_k_data_browser_item_no_property, OS.attr_k_data_browser_no_item)
      end
      set_scroll_width(@items, true)
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
          column_width = 0
          gc = SwtGC.new(self)
          i = 0
          while i < @item_count
            item = @items[i]
            if (!(item).nil?)
              column_width = Math.max(column_width, item.calculate_width(0, gc))
            end
            i += 1
          end
          gc.dispose
          width += column_width + get_inset_width
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_trim(x, y, width, height)
      check_widget
      border = get_border_width
      rect = Rect.new
      OS._get_data_browser_scroll_bar_inset(self.attr_handle, rect)
      x -= rect.attr_left + border
      y -= rect.attr_top + border
      width += rect.attr_left + rect.attr_right + border + border
      height += rect.attr_top + rect.attr_bottom + border + border
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def contains(shell_x, shell_y)
      pt = CGPoint.new
      content_view = Array.typed(::Java::Int).new(1) { 0 }
      OS._hiview_find_by_id(OS._hiview_get_root(OS._get_control_owner(self.attr_handle)), OS.k_hiview_window_content_id, content_view)
      OS._hiview_convert_point(pt, self.attr_handle, content_view[0])
      x = shell_x - RJava.cast_to_int(pt.attr_x)
      y = shell_y - RJava.cast_to_int(pt.attr_y)
      if (y < get_header_height)
        return false
      end
      return get_client_area.contains(x, y)
    end
    
    typesig { [] }
    def create_handle
      @column_id = COLUMN_ID
      out_control = Array.typed(::Java::Int).new(1) { 0 }
      window = OS._get_control_owner(self.attr_parent.attr_handle)
      OS._create_data_browser_control(window, nil, OS.attr_k_data_browser_list_view, out_control)
      OS._set_automatic_control_drag_tracking_enabled_for_window(window, true)
      if ((out_control[0]).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      self.attr_handle = out_control[0]
      if (!draw_focus_ring)
        OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_data_browser_includes_frame_and_focus_tag, 1, Array.typed(::Java::Byte).new([0]))
      end
      selection_flags = !((self.attr_style & SWT::SINGLE)).equal?(0) ? OS.attr_k_data_browser_select_only_one | OS.attr_k_data_browser_never_empty_selection_set : OS.attr_k_data_browser_cmd_toggles_selection
      OS._set_data_browser_selection_flags(self.attr_handle, selection_flags)
      height = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_data_browser_list_view_header_btn_height(self.attr_handle, height)
      @header_height = height[0]
      OS._set_data_browser_list_view_header_btn_height(self.attr_handle, RJava.cast_to_short(0))
      OS._set_data_browser_has_scroll_bars(self.attr_handle, !((self.attr_style & SWT::H_SCROLL)).equal?(0), !((self.attr_style & SWT::V_SCROLL)).equal?(0))
      if (OS::VERSION >= 0x1040)
        OS._data_browser_set_metric(self.attr_handle, OS.attr_k_data_browser_metric_cell_content_inset, false, 4)
      end
      position = 0
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        check_column = DataBrowserListViewColumnDesc.new
        check_column.attr_header_btn_desc_version = OS.attr_k_data_browser_list_view_latest_header_desc
        check_column.attr_property_desc_property_id = CHECK_COLUMN_ID
        check_column.attr_property_desc_property_type = OS.attr_k_data_browser_checkbox_type
        check_column.attr_property_desc_property_flags = OS.attr_k_data_browser_property_is_mutable
        check_width = get_check_column_width
        check_column.attr_header_btn_desc_minimum_width = RJava.cast_to_short(check_width)
        check_column.attr_header_btn_desc_maximum_width = RJava.cast_to_short(check_width)
        check_column.attr_header_btn_desc_initial_order = RJava.cast_to_short(OS.attr_k_data_browser_order_increasing)
        OS._add_data_browser_list_view_column(self.attr_handle, check_column, ((position += 1) - 1))
      end
      column = DataBrowserListViewColumnDesc.new
      column.attr_header_btn_desc_version = OS.attr_k_data_browser_list_view_latest_header_desc
      column.attr_property_desc_property_id = @column_id
      column.attr_property_desc_property_type = OS.attr_k_data_browser_custom_type
      column.attr_property_desc_property_flags = OS.attr_k_data_browser_list_view_selection_column | OS.attr_k_data_browser_default_property_flags | OS.attr_k_data_browser_list_view_sortable_column
      column.attr_header_btn_desc_maximum_width = 0x7fff
      column.attr_header_btn_desc_initial_order = RJava.cast_to_short(OS.attr_k_data_browser_order_increasing)
      OS._add_data_browser_list_view_column(self.attr_handle, column, position)
      OS._set_data_browser_table_view_named_column_width(self.attr_handle, @column_id, RJava.cast_to_short(0))
      # Feature in the Macintosh.  Scroll bars are not created until
      # the data browser needs to draw them.  The fix is to force the scroll
      # bars to be created by temporarily giving the widget a size, drawing
      # it on a offscreen buffer to avoid flashes and then restoring it to
      # size zero.
      if (OS::VERSION < 0x1040)
        OS._hiview_set_drawing_enabled(self.attr_handle, false)
        size = 50
        rect = Rect.new
        rect.attr_right = rect.attr_bottom = RJava.cast_to_short(size)
        OS._set_control_bounds(self.attr_handle, rect)
        bpl = size * 4
        g_world = Array.typed(::Java::Int).new(1) { 0 }
        data = OS._new_ptr(bpl * size)
        OS._new_gworld_from_ptr(g_world, OS.attr_k32argbpixel_format, rect, 0, 0, 0, data, bpl)
        cur_port = Array.typed(::Java::Int).new(1) { 0 }
        cur_gworld = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_gworld(cur_port, cur_gworld)
        OS._set_gworld(g_world[0], cur_gworld[0])
        OS._draw_control_in_current_port(self.attr_handle)
        OS._set_gworld(cur_port[0], cur_gworld[0])
        OS._dispose_gworld(g_world[0])
        OS._dispose_ptr(data)
        rect.attr_right = rect.attr_bottom = RJava.cast_to_short(0)
        OS._set_control_bounds(self.attr_handle, rect)
        OS._hiview_set_drawing_enabled(self.attr_handle, true)
      end
    end
    
    typesig { [TableColumn, ::Java::Int] }
    def create_item(column, index)
      if (!(0 <= index && index <= @column_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      column.attr_id = @column_id + ((@id_count += 1) - 1)
      position = index + (!((self.attr_style & SWT::CHECK)).equal?(0) ? 1 : 0)
      if (!(@column_count).equal?(0))
        desc = DataBrowserListViewColumnDesc.new
        desc.attr_header_btn_desc_version = OS.attr_k_data_browser_list_view_latest_header_desc
        desc.attr_property_desc_property_id = column.attr_id
        desc.attr_property_desc_property_type = OS.attr_k_data_browser_custom_type
        desc.attr_property_desc_property_flags = OS.attr_k_data_browser_list_view_selection_column | OS.attr_k_data_browser_default_property_flags | OS.attr_k_data_browser_list_view_sortable_column
        desc.attr_header_btn_desc_maximum_width = 0x7fff
        desc.attr_header_btn_desc_initial_order = OS.attr_k_data_browser_order_increasing
        desc.attr_header_btn_desc_btn_font_style_just = OS.attr_te_flush_left
        if (!((self.attr_style & SWT::CENTER)).equal?(0))
          desc.attr_header_btn_desc_btn_font_style_just = OS.attr_te_center
        end
        if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          desc.attr_header_btn_desc_btn_font_style_just = OS.attr_te_flush_right
        end
        desc.attr_header_btn_desc_btn_font_style_flags |= OS.attr_k_control_use_just_mask
        OS._add_data_browser_list_view_column(self.attr_handle, desc, position)
        OS._set_data_browser_table_view_named_column_width(self.attr_handle, column.attr_id, RJava.cast_to_short(0))
      end
      if ((@column_count).equal?(@columns.attr_length))
        new_columns = Array.typed(TableColumn).new(@column_count + 4) { nil }
        System.arraycopy(@columns, 0, new_columns, 0, @columns.attr_length)
        @columns = new_columns
      end
      System.arraycopy(@columns, index, @columns, index + 1, ((@column_count += 1) - 1) - index)
      @columns[index] = column
      if (@column_count > 1)
        i = 0
        while i < @item_count
          item = @items[i]
          if (!(item).nil?)
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
          i += 1
        end
      end
      last_position = Array.typed(::Java::Int).new(1) { 0 }
      i = 0
      while i < @column_count
        c = @columns[i]
        OS._get_data_browser_table_view_column_position(self.attr_handle, c.attr_id, last_position)
        c.attr_last_position = last_position[0]
        i += 1
      end
    end
    
    typesig { [TableItem, ::Java::Int] }
    def create_item(item, index)
      if (!(0 <= index && index <= @item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      add = (self.attr_draw_count).equal?(0) || !(index).equal?(@item_count)
      if (add)
        check_items(false)
        id = Array.typed(::Java::Int).new([@item_count + 1])
        if (!(OS._add_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, 1, id, OS.attr_k_data_browser_item_no_property)).equal?(OS.attr_no_err))
          error(SWT::ERROR_ITEM_NOT_ADDED)
        end
        if (!(index).equal?(@item_count))
          fix_selection(index, true)
        end
      end
      if ((@item_count).equal?(@items.attr_length))
        # Grow the array faster when redraw is off
        length = (self.attr_draw_count).equal?(0) ? @items.attr_length + 4 : Math.max(4, @items.attr_length * 3 / 2)
        new_items = Array.typed(TableItem).new(length) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
      end
      System.arraycopy(@items, index, @items, index + 1, ((@item_count += 1) - 1) - index)
      @items[index] = item
      if (add)
        OS._update_data_browser_items(self.attr_handle, 0, 0, nil, OS.attr_k_data_browser_item_no_property, OS.attr_k_data_browser_no_item)
      end
    end
    
    typesig { [::Java::Int] }
    def create_scroll_bar(style)
      return create_standard_bar(style)
    end
    
    typesig { [] }
    def create_widget
      super
      @items = Array.typed(TableItem).new(4) { nil }
      @columns = Array.typed(TableColumn).new(4) { nil }
      @show_index = -1
    end
    
    typesig { [] }
    def default_background
      return self.attr_display.get_system_color(SWT::COLOR_LIST_BACKGROUND)
    end
    
    typesig { [] }
    def default_foreground
      return self.attr_display.get_system_color(SWT::COLOR_LIST_FOREGROUND)
    end
    
    typesig { [] }
    def default_theme_font
      if (self.attr_display.attr_small_fonts)
        return OS.attr_k_theme_small_system_font
      end
      return OS.attr_k_theme_views_font
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
        ids = Array.typed(::Java::Int).new([get_id(index)])
        deselect(ids, ids.attr_length)
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
      # TODO - check range
      if ((start).equal?(0) && (end_).equal?(@item_count - 1))
        deselect_all
      else
        length = end_ - start + 1
        if (length <= 0)
          return
        end
        ids = Array.typed(::Java::Int).new(length) { 0 }
        i = 0
        while i < length
          ids[i] = get_id(end_ - i)
          i += 1
        end
        deselect(ids, length)
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
      # TODO - check range
      length = indices.attr_length
      ids = Array.typed(::Java::Int).new(length) { 0 }
      i = 0
      while i < length
        ids[i] = get_id(indices[length - i - 1])
        i += 1
      end
      deselect(ids, length)
    end
    
    typesig { [Array.typed(::Java::Int), ::Java::Int] }
    def deselect(ids, count)
      @ignore_select = true
      # Bug in the Macintosh.  When the DataBroswer selection flags includes
      # both kDataBrowserNeverEmptySelectionSet and kDataBrowserSelectOnlyOne,
      # two items are selected when SetDataBrowserSelectedItems() is called
      # with kDataBrowserItemsAssign to assign a new seletion despite the fact
      # that kDataBrowserSelectOnlyOne was specified.  The fix is to save and
      # restore kDataBrowserNeverEmptySelectionSet around each call to
      # SetDataBrowserSelectedItems().
      selection_flags = nil
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        selection_flags = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_data_browser_selection_flags(self.attr_handle, selection_flags)
        OS._set_data_browser_selection_flags(self.attr_handle, selection_flags[0] & ~OS.attr_k_data_browser_never_empty_selection_set)
      end
      OS._set_data_browser_selected_items(self.attr_handle, count, ids, OS.attr_k_data_browser_items_remove)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        OS._set_data_browser_selection_flags(self.attr_handle, selection_flags[0])
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
      deselect(nil, 0)
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
      if ((@column_count).equal?(1))
        @column_id = column.attr_id
        @id_count = 0
        desc = DataBrowserListViewHeaderDesc.new
        desc.attr_version = OS.attr_k_data_browser_list_view_latest_header_desc
        width = Array.typed(::Java::Short).new(1) { 0 }
        OS._get_data_browser_table_view_named_column_width(self.attr_handle, @column_id, width)
        desc.attr_minimum_width = desc.attr_maximum_width = width[0]
        str = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, nil, 0)
        desc.attr_title_string = str
        OS._set_data_browser_list_view_header_desc(self.attr_handle, @column_id, desc)
        OS._cfrelease(str)
      else
        if (!(OS._remove_data_browser_table_view_column(self.attr_handle, column.attr_id)).equal?(OS.attr_no_err))
          error(SWT::ERROR_ITEM_NOT_REMOVED)
        end
      end
      System.arraycopy(@columns, index + 1, @columns, index, (@column_count -= 1) - index)
      @columns[@column_count] = nil
      i_ = index
      while i_ < @column_count
        @columns[i_].send_event(SWT::Move)
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
      id = Array.typed(::Java::Int).new([@item_count])
      if (!(OS._remove_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, id.attr_length, id, 0)).equal?(OS.attr_no_err))
        error(SWT::ERROR_ITEM_NOT_REMOVED)
      end
      System.arraycopy(@items, index + 1, @items, index, (@item_count -= 1) - index)
      @items[@item_count] = nil
      OS._update_data_browser_items(self.attr_handle, 0, 0, nil, OS.attr_k_data_browser_item_no_property, OS.attr_k_data_browser_no_item)
      if ((@item_count).equal?(0))
        set_table_empty
      else
        fix_scroll_bar
      end
    end
    
    typesig { [ScrollBar] }
    def destroy_scroll_bar(bar)
      if (!((bar.attr_style & SWT::H_SCROLL)).equal?(0))
        self.attr_style &= ~SWT::H_SCROLL
      end
      if (!((bar.attr_style & SWT::V_SCROLL)).equal?(0))
        self.attr_style &= ~SWT::V_SCROLL
      end
      OS._set_data_browser_has_scroll_bars(self.attr_handle, !((self.attr_style & SWT::H_SCROLL)).equal?(0), !((self.attr_style & SWT::V_SCROLL)).equal?(0))
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def draw_item_proc(browser, id, property, item_state, the_rect, gd_depth, color_device)
      index = get_index(id)
      if (!(0 <= index && index < @item_count))
        return OS.attr_no_err
      end
      column_index = 0
      if (@column_count > 0)
        column_index = 0
        while column_index < @column_count
          if ((@columns[column_index].attr_id).equal?(property))
            break
          end
          column_index += 1
        end
        if ((column_index).equal?(@column_count))
          return OS.attr_no_err
        end
      end
      rect = Rect.new
      @last_index_of = index
      item = __get_item(index)
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        if (!item.attr_cached)
          if (!check_data(item, false))
            return OS.attr_no_err
          end
          if (set_scroll_width(item))
            if ((OS._get_data_browser_item_part_bounds(self.attr_handle, id, property, OS.attr_k_data_browser_property_enclosing_part, rect)).equal?(OS.attr_no_err))
              x = rect.attr_left
              y = rect.attr_top
              width = rect.attr_right - rect.attr_left
              height = rect.attr_bottom - rect.attr_top
              redraw_widget(self.attr_handle, x, y, width, height, false)
            end
            return OS.attr_no_err
          end
        end
      end
      OS.memmove(rect, the_rect, Rect.attr_sizeof)
      x = rect.attr_left
      y = rect.attr_top
      width = rect.attr_right - rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      gc = @paint_gc
      if ((gc).nil?)
        data = SwtGCData.new
        port = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_port(port)
        data.attr_port = port[0]
        gc = SwtGC.carbon_new(self, data)
      end
      OS._get_data_browser_item_part_bounds(self.attr_handle, id, property, OS.attr_k_data_browser_property_enclosing_part, rect)
      grid_width = get_lines_visible ? GRID_WIDTH : 0
      item_x = rect.attr_left + grid_width
      item_y = rect.attr_top
      item_width = rect.attr_right - rect.attr_left - grid_width
      item_height = rect.attr_bottom - rect.attr_top + 1
      if (@draw_background)
        @draw_background = false
        region = Region.new(self.attr_display)
        client_area = get_client_area
        header_height = get_header_height
        client_area.attr_y += header_height
        client_area.attr_height -= header_height
        if (client_area.attr_height < 0)
          client_area.attr_height = 0
        end
        region.add(client_area)
        if (!((self.attr_style & SWT::CHECK)).equal?(0) || !(grid_width).equal?(0))
          rgn = OS._new_rgn
          if (!((self.attr_style & SWT::CHECK)).equal?(0))
            if ((OS._get_data_browser_item_part_bounds(self.attr_handle, id, Table::CHECK_COLUMN_ID, OS.attr_k_data_browser_property_enclosing_part, rect)).equal?(OS.attr_no_err))
              OS._set_rect_rgn(rgn, RJava.cast_to_short(rect.attr_left), RJava.cast_to_short(client_area.attr_y), RJava.cast_to_short((rect.attr_right + grid_width)), RJava.cast_to_short((client_area.attr_y + client_area.attr_height)))
              OS._diff_rgn(region.attr_handle, rgn, region.attr_handle)
            end
          end
          if (!(grid_width).equal?(0))
            if ((@column_count).equal?(0))
              if ((OS._get_data_browser_item_part_bounds(self.attr_handle, id, Table::COLUMN_ID, OS.attr_k_data_browser_property_enclosing_part, rect)).equal?(OS.attr_no_err))
                OS._set_rect_rgn(rgn, RJava.cast_to_short(rect.attr_right), RJava.cast_to_short(client_area.attr_y), RJava.cast_to_short((rect.attr_right + grid_width)), RJava.cast_to_short((client_area.attr_y + client_area.attr_height)))
                OS._diff_rgn(region.attr_handle, rgn, region.attr_handle)
              end
            else
              i = 0
              while i < @column_count
                if ((OS._get_data_browser_item_part_bounds(self.attr_handle, id, @columns[i].attr_id, OS.attr_k_data_browser_property_enclosing_part, rect)).equal?(OS.attr_no_err))
                  OS._set_rect_rgn(rgn, RJava.cast_to_short(rect.attr_right), RJava.cast_to_short(client_area.attr_y), RJava.cast_to_short((rect.attr_right + grid_width)), RJava.cast_to_short((client_area.attr_y + client_area.attr_height)))
                  OS._diff_rgn(region.attr_handle, rgn, region.attr_handle)
                end
                i += 1
              end
            end
          end
          OS._dispose_rgn(rgn)
        end
        if (!(region).nil?)
          gc.set_clipping(region)
        end
        fill_background(self.attr_handle, gc.attr_handle, nil)
        if (!(region).nil?)
          gc.set_clipping(nil)
          region.dispose
        end
      end
      OS._cgcontext_save_gstate(gc.attr_handle)
      item_rgn = OS._new_rgn
      OS._set_rect_rgn(item_rgn, RJava.cast_to_short(item_x), RJava.cast_to_short(item_y), RJava.cast_to_short((item_x + item_width)), RJava.cast_to_short((item_y + item_height)))
      clip = OS._new_rgn
      OS._get_clip(clip)
      OS._sect_rgn(clip, item_rgn, item_rgn)
      OS._dispose_rgn(clip)
      region = Region.carbon_new(self.attr_display, item_rgn)
      font = item.get_font(column_index)
      background = item.get_background(column_index)
      foreground = item.get_foreground(column_index)
      image = item.get_image(column_index)
      text = item.get_text(column_index)
      gc.set_clipping(region)
      gc.set_font(font)
      extent = gc.string_extent(text)
      content_width = extent.attr_x
      image_bounds = nil
      gap = 0
      if (!(image).nil?)
        gap = get_gap
        image_bounds = image.get_bounds
        content_width += @image_bounds.attr_width + gap
      end
      paint_width = content_width
      if (hooks(SWT::MeasureItem))
        event = Event.new
        event.attr_item = item
        event.attr_index = column_index
        event.attr_gc = gc
        event.attr_width = content_width
        event.attr_height = item_height
        send_event(SWT::MeasureItem, event)
        if (item_height < event.attr_height)
          item_height = event.attr_height
          OS._set_data_browser_table_view_row_height(self.attr_handle, RJava.cast_to_short(event.attr_height))
          redraw_widget(self.attr_handle, false)
        end
        if (set_scroll_width(item))
          redraw_widget(self.attr_handle, false)
        end
        content_width = event.attr_width
        gc.set_clipping(region)
        gc.set_font(font)
      end
      draw_state = SWT::FOREGROUND
      if (!(item.attr_background).nil? || (!(item.attr_cell_background).nil? && !(item.attr_cell_background[column_index]).nil?))
        draw_state |= SWT::BACKGROUND
      end
      if (!((item_state & (OS.attr_k_data_browser_item_is_selected | OS.attr_k_data_browser_item_is_drag_target))).equal?(0))
        draw_state |= SWT::SELECTED
      end
      was_selected = !((draw_state & SWT::SELECTED)).equal?(0)
      if (!((draw_state & SWT::SELECTED)).equal?(0) && (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0) || (column_index).equal?(0)))
        gc.set_background(self.attr_display.get_system_color(SWT::COLOR_LIST_SELECTION))
        gc.set_foreground(self.attr_display.get_system_color(SWT::COLOR_LIST_SELECTION_TEXT))
      else
        gc.set_background(background)
        gc.set_foreground(foreground)
      end
      if (hooks(SWT::EraseItem))
        event = Event.new
        event.attr_item = item
        event.attr_index = column_index
        event.attr_gc = gc
        event.attr_x = item_x
        event.attr_y = item_y
        event.attr_width = item_width
        event.attr_height = item_height
        event.attr_detail = draw_state
        send_event(SWT::EraseItem, event)
        draw_state = event.attr_doit ? event.attr_detail : 0
        gc.set_clipping(region)
        gc.set_font(font)
        if (!((draw_state & SWT::SELECTED)).equal?(0) && (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0) || (column_index).equal?(0)))
          gc.set_background(self.attr_display.get_system_color(SWT::COLOR_LIST_SELECTION))
          gc.set_foreground(self.attr_display.get_system_color(SWT::COLOR_LIST_SELECTION_TEXT))
        else
          gc.set_background(background)
          if (!was_selected)
            gc.set_foreground(foreground)
          end
        end
      end
      if (!(@column_count).equal?(0) && !(column_index).equal?(0))
        column = @columns[column_index]
        if (!((column.attr_style & SWT::CENTER)).equal?(0))
          x += (width - content_width) / 2
        end
        if (!((column.attr_style & SWT::RIGHT)).equal?(0))
          x += width - content_width
        end
      end
      string_x = x
      image_width = 0
      if (!(image).nil?)
        string_x += image_width = @image_bounds.attr_width + gap
      end
      if (!((draw_state & SWT::SELECTED)).equal?(0) && (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0) || (column_index).equal?(0)))
        if (((self.attr_style & SWT::HIDE_SELECTION)).equal?(0) || has_focus)
          if (!((self.attr_style & SWT::FULL_SELECTION)).equal?(0))
            gc.fill_rectangle(item_x, item_y, item_width, item_height - 1)
            draw_state &= ~SWT::BACKGROUND
          else
            if ((column_index).equal?(0))
              gc.fill_rectangle(string_x - 1, y, (content_width - image_width) + 2, item_height - 1)
              draw_state &= ~SWT::BACKGROUND
            end
          end
        else
          if (!((draw_state & SWT::BACKGROUND)).equal?(0))
            gc.set_background(background)
          end
        end
      end
      if (!((draw_state & SWT::BACKGROUND)).equal?(0))
        if ((@column_count).equal?(0))
          gc.fill_rectangle(string_x - 1, y, (content_width - image_width) + 2, item_height - 1)
        else
          gc.fill_rectangle(item_x, item_y, item_width, item_height)
        end
      end
      if (!((draw_state & SWT::FOREGROUND)).equal?(0))
        if (!(image).nil?)
          image_x = x
          image_y = y + (height - @image_bounds.attr_height) / 2
          gc.draw_image(image, 0, 0, image_bounds.attr_width, image_bounds.attr_height, image_x, image_y, @image_bounds.attr_width, @image_bounds.attr_height)
        end
        gc.draw_string(text, string_x, y + (height - extent.attr_y) / 2, true)
      end
      if (hooks(SWT::PaintItem))
        event = Event.new
        event.attr_item = item
        event.attr_index = column_index
        event.attr_gc = gc
        event.attr_x = x
        event.attr_y = y
        event.attr_width = paint_width
        event.attr_height = item_height
        event.attr_detail = draw_state
        send_event(SWT::PaintItem, event)
      end
      OS._cgcontext_restore_gstate(gc.attr_handle)
      OS._dispose_rgn(item_rgn)
      if (!(gc).equal?(@paint_gc))
        gc.dispose
      end
      return OS.attr_no_err
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      super(enabled)
      # Bug in the Macintosh. For some reason, the data browser does not
      # redraw the checkboxes when the enable state changes. The fix is
      # to force a redraw.
      redraw_widget(self.attr_handle, false)
    end
    
    typesig { [] }
    def fix_scroll_bar
      # Bug in the Macintosh. For some reason, the data browser does not update
      # the vertical scrollbar when it is scrolled to the bottom and items are
      # removed.  The fix is to check if the scrollbar value is bigger the
      # maximum number of visible items and clamp it when needed.
      top = Array.typed(::Java::Int).new(1) { 0 }
      left = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_data_browser_scroll_position(self.attr_handle, top, left)
      maximum = Math.max(0, get_item_height * @item_count - get_client_area.attr_height)
      if (top[0] > maximum)
        OS._set_data_browser_scroll_position(self.attr_handle, maximum, left[0])
      end
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def fix_selection(index, add_)
      selection = get_selection_indices
      if ((selection.attr_length).equal?(0))
        return
      end
      new_count = 0
      offset = add_ ? 1 : -1
      fix = false
      down = (@sort_direction).equal?(SWT::DOWN) && !(@sort_column).nil?
      i = 0
      while i < selection.attr_length
        if (!add_ && (selection[i]).equal?(index))
          fix = true
        else
          new_index = ((new_count += 1) - 1)
          sel = selection[i]
          selection[new_index] = get_id(sel)
          if ((down && sel < index) || (!down && sel >= index))
            selection[new_index] += offset
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
    def get_ax_attributes
      return AX_ATTRIBUTES
    end
    
    typesig { [] }
    def get_border_width
      check_widget
      border = 0
      has_border = Array.typed(::Java::Byte).new(1) { 0 }
      OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_data_browser_includes_frame_and_focus_tag, 1, has_border, nil)
      if (!(has_border[0]).equal?(0))
        out_metric = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_theme_metric(OS.attr_k_theme_metric_focus_rect_outset, out_metric)
        border += out_metric[0] - BORDER_INSET
      end
      return border
    end
    
    typesig { [] }
    def get_check_column_width
      inset = 0
      if (OS::VERSION >= 0x1040)
        metric = Array.typed(::Java::Float).new(1) { 0.0 }
        OS._data_browser_get_metric(self.attr_handle, OS.attr_k_data_browser_metric_cell_content_inset, nil, metric)
        inset = RJava.cast_to_int(metric[0])
      else
        inset = CELL_CONTENT_INSET
      end
      check_width = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_theme_metric(OS.attr_k_theme_metric_check_box_width, check_width)
      return check_width[0] + inset * 2
    end
    
    typesig { [] }
    def get_client_area
      check_widget
      border = get_border_width
      rect = Rect.new
      inset = Rect.new
      OS._get_control_bounds(self.attr_handle, rect)
      OS._get_data_browser_scroll_bar_inset(self.attr_handle, inset)
      width = Math.max(0, rect.attr_right - rect.attr_left - inset.attr_right - border - border)
      height = Math.max(0, rect.attr_bottom - rect.attr_top - inset.attr_bottom - border - border)
      return Rectangle.new(inset.attr_left + border, inset.attr_top + border, width, height)
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
      position = Array.typed(::Java::Int).new(1) { 0 }
      i = 0
      while i < @column_count
        column = @columns[i]
        OS._get_data_browser_table_view_column_position(self.attr_handle, column.attr_id, position)
        if (!((self.attr_style & SWT::CHECK)).equal?(0))
          position[0] -= 1
        end
        order[position[0]] = i
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
    def get_gap
      if (OS::VERSION >= 0x1040)
        metric = Array.typed(::Java::Float).new(1) { 0.0 }
        OS._data_browser_get_metric(self.attr_handle, OS.attr_k_data_browser_metric_icon_and_text_gap, nil, metric)
        return RJava.cast_to_int(metric[0])
      end
      return ICON_AND_TEXT_GAP
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
      height = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_data_browser_list_view_header_btn_height(self.attr_handle, height)
      return height[0]
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
      height = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_data_browser_list_view_header_btn_height(self.attr_handle, height)
      return !(height[0]).equal?(0)
    end
    
    typesig { [::Java::Int] }
    def get_id(index)
      if ((@sort_direction).equal?(SWT::DOWN) && !(@sort_column).nil?)
        return @item_count - index
      end
      return index + 1
    end
    
    typesig { [::Java::Int] }
    def get_index(id)
      if ((@sort_direction).equal?(SWT::DOWN) && !(@sort_column).nil?)
        return @item_count - id
      end
      return id - 1
    end
    
    typesig { [] }
    def get_inset_width
      if (OS::VERSION >= 0x1040)
        metric = Array.typed(::Java::Float).new(1) { 0.0 }
        OS._data_browser_get_metric(self.attr_handle, OS.attr_k_data_browser_metric_cell_content_inset, nil, metric)
        return RJava.cast_to_int(metric[0]) * 2
      end
      return CELL_CONTENT_INSET * 2
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
      check_items(true)
      if ((point).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      height = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_data_browser_table_view_row_height(self.attr_handle, height)
      rect = Rect.new
      pt = Org::Eclipse::Swt::Internal::Carbon::Point.new
      OS._set_pt(pt, RJava.cast_to_short(point.attr_x), RJava.cast_to_short(point.attr_y))
      last_hittest_index = get_index(@last_hittest)
      if (0 <= last_hittest_index && last_hittest_index < @item_count && !(@last_hittest_column).equal?(0))
        if ((OS._get_data_browser_item_part_bounds(self.attr_handle, @last_hittest, @last_hittest_column, OS.attr_k_data_browser_property_enclosing_part, rect)).equal?(OS.attr_no_err))
          rect.attr_bottom = RJava.cast_to_short((rect.attr_top + height[0]))
          if (OS._pt_in_rect(pt, rect))
            return __get_item(last_hittest_index)
          end
          if (rect.attr_top <= pt.attr_v && pt.attr_v < rect.attr_bottom)
            j = 0
            while j < @column_count
              if ((OS._get_data_browser_item_part_bounds(self.attr_handle, @last_hittest, @columns[j].attr_id, OS.attr_k_data_browser_property_enclosing_part, rect)).equal?(OS.attr_no_err))
                rect.attr_bottom = RJava.cast_to_short((rect.attr_top + height[0]))
                if (OS._pt_in_rect(pt, rect))
                  return __get_item(last_hittest_index)
                end
              end
              j += 1
            end
            return nil
          end
        end
      end
      top = Array.typed(::Java::Int).new(1) { 0 }
      left = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_data_browser_scroll_position(self.attr_handle, top, left)
      header = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_data_browser_list_view_header_btn_height(self.attr_handle, header)
      offsets = Array.typed(::Java::Int).new([0, 1, -1])
      i = 0
      while i < offsets.attr_length
        index = (top[0] - header[0] + point.attr_y) / height[0] + offsets[i]
        if (0 <= index && index < @item_count)
          column_id = (@column_count).equal?(0) ? @column_id : @columns[0].attr_id
          if ((OS._get_data_browser_item_part_bounds(self.attr_handle, get_id(index), column_id, OS.attr_k_data_browser_property_enclosing_part, rect)).equal?(OS.attr_no_err))
            rect.attr_bottom = RJava.cast_to_short((rect.attr_top + height[0]))
            if (rect.attr_top <= pt.attr_v && pt.attr_v < rect.attr_bottom)
              if ((@column_count).equal?(0))
                if (OS._pt_in_rect(pt, rect))
                  return __get_item(index)
                end
              else
                j = 0
                while j < @column_count
                  if ((OS._get_data_browser_item_part_bounds(self.attr_handle, get_id(index), @columns[j].attr_id, OS.attr_k_data_browser_property_enclosing_part, rect)).equal?(OS.attr_no_err))
                    rect.attr_bottom = RJava.cast_to_short((rect.attr_top + height[0]))
                    if (OS._pt_in_rect(pt, rect))
                      return __get_item(index)
                    end
                  end
                  j += 1
                end
              end
              return nil
            end
          end
        end
        i += 1
      end
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
      height = Array.typed(::Java::Short).new(1) { 0 }
      if (!(OS._get_data_browser_table_view_row_height(self.attr_handle, height)).equal?(OS.attr_no_err))
        error(SWT::ERROR_CANNOT_GET_ITEM_HEIGHT)
      end
      return height[0]
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
    # and <code>false</code> otherwise.
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
      if (OS::VERSION >= 0x1040)
        attrib = Array.typed(::Java::Int).new(1) { 0 }
        OS._data_browser_get_attributes(self.attr_handle, attrib)
        return !((attrib[0] & (OS.attr_k_data_browser_attribute_list_view_alternating_row_colors | OS.attr_k_data_browser_attribute_list_view_draw_column_dividers))).equal?(0)
      end
      return false
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
      ptr = OS._new_handle(0)
      if (!(OS._get_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, true, OS.attr_k_data_browser_item_is_selected, ptr)).equal?(OS.attr_no_err))
        error(SWT::ERROR_CANNOT_GET_SELECTION)
      end
      count = OS._get_handle_size(ptr) / 4
      result = Array.typed(TableItem).new(count) { nil }
      if (count > 0)
        OS._hlock(ptr)
        id = Array.typed(::Java::Int).new(1) { 0 }
        OS.memmove(id, ptr, 4)
        if ((@sort_direction).equal?(SWT::DOWN) && !(@sort_column).nil?)
          offset = id[0]
          i = 0
          while i < count
            OS.memmove(id, offset, 4)
            result[i] = __get_item(get_index(id[0]))
            i += 1
            offset += 4
          end
        else
          offset = id[0] + (count - 1) * 4
          i = 0
          while i < count
            OS.memmove(id, offset, 4)
            result[i] = __get_item(get_index(id[0]))
            i += 1
            offset -= 4
          end
        end
        OS._hunlock(ptr)
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
      count = Array.typed(::Java::Int).new(1) { 0 }
      if (!(OS._get_data_browser_item_count(self.attr_handle, OS.attr_k_data_browser_no_item, true, OS.attr_k_data_browser_item_is_selected, count)).equal?(OS.attr_no_err))
        error(SWT::ERROR_CANNOT_GET_COUNT)
      end
      return count[0]
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
      first = Array.typed(::Java::Int).new(1) { 0 }
      last = Array.typed(::Java::Int).new(1) { 0 }
      if (!(OS._get_data_browser_selection_anchor(self.attr_handle, first, last)).equal?(OS.attr_no_err))
        return -1
      end
      return get_index(first[0])
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
      ptr = OS._new_handle(0)
      if (!(OS._get_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, true, OS.attr_k_data_browser_item_is_selected, ptr)).equal?(OS.attr_no_err))
        error(SWT::ERROR_CANNOT_GET_SELECTION)
      end
      count = OS._get_handle_size(ptr) / 4
      result = Array.typed(::Java::Int).new(count) { 0 }
      if (count > 0)
        OS._hlock(ptr)
        OS.memmove(result, ptr, 4)
        OS.memmove(result, result[0], count * 4)
        OS._hunlock(ptr)
        if ((@sort_direction).equal?(SWT::DOWN) && !(@sort_column).nil?)
          i = 0
          while i < count
            result[i] = get_index(result[i])
            i += 1
          end
        else
          start = 0
          end_ = count - 1
          while start <= end_
            temp = result[start]
            result[start] = get_index(result[end_])
            result[end_] = get_index(temp)
            start += 1
            end_ -= 1
          end
        end
      end
      OS._dispose_handle(ptr)
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
      top = Array.typed(::Java::Int).new(1) { 0 }
      left = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_data_browser_scroll_position(self.attr_handle, top, left)
      return top[0] / get_item_height
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def help_proc(in_control, in_global_mouse, in_request, out_content_provided, io_help_content)
      if ((self.attr_tool_tip_text).nil?)
        case (in_request)
        when OS.attr_k_hmsupply_content
          if (!(!(self.attr_tool_tip_text).nil? && !(self.attr_tool_tip_text.length).equal?(0)))
            rect = Rect.new
            window = OS._get_control_owner(self.attr_handle)
            OS._get_window_bounds(window, RJava.cast_to_short(OS.attr_k_window_content_rgn), rect)
            window_left = rect.attr_left
            window_top = rect.attr_top
            pt = Org::Eclipse::Swt::Internal::Carbon::Point.new
            OS.memmove(pt, Array.typed(::Java::Int).new([in_global_mouse]), 4)
            pt.attr_h -= window_left
            pt.attr_v -= window_top
            tool_tip_text = nil
            tag_side = OS.attr_k_hmabsolute_center_aligned
            in_pt = CGPoint.new
            content_view = Array.typed(::Java::Int).new(1) { 0 }
            OS._hiview_find_by_id(OS._hiview_get_root(OS._get_control_owner(self.attr_handle)), OS.k_hiview_window_content_id, content_view)
            OS._hiview_convert_point(in_pt, self.attr_handle, content_view[0])
            pt.attr_h -= RJava.cast_to_int(in_pt.attr_x)
            pt.attr_v -= RJava.cast_to_int(in_pt.attr_y)
            window_left += RJava.cast_to_int(in_pt.attr_x)
            window_top += RJava.cast_to_int(in_pt.attr_y)
            x = pt.attr_h
            y = pt.attr_v
            header_height = get_header_height
            if (!(header_height).equal?(0) && (0 <= y && y < header_height))
              start_x = 0
              i = 0
              while i < @column_count
                column = @columns[i]
                width = column.attr_last_width
                if (start_x <= x && x < start_x + width)
                  tool_tip_text = (column.attr_tool_tip_text).to_s
                  rect.attr_left = RJava.cast_to_short(start_x)
                  rect.attr_top = RJava.cast_to_short(0)
                  rect.attr_right = RJava.cast_to_short((rect.attr_left + width))
                  rect.attr_bottom = RJava.cast_to_short((rect.attr_top + header_height))
                  tag_side = OS.attr_k_hmoutside_bottom_right_aligned
                  break
                end
                start_x += width
                i += 1
              end
            else
              item = nil
              index = get_index(@last_hittest)
              if (0 <= index && index < @item_count)
                if ((OS._get_data_browser_item_part_bounds(self.attr_handle, @last_hittest, @last_hittest_column, OS.attr_k_data_browser_property_content_part, rect)).equal?(OS.attr_no_err))
                  item = __get_item(index)
                end
              end
              if (!(item).nil?)
                column_index = 0
                column = nil
                if (@column_count > 0)
                  i = 0
                  while i < @column_count
                    if ((@columns[i].attr_id).equal?(@last_hittest_column))
                      column = @columns[i]
                      column_index = i
                      break
                    end
                    i += 1
                  end
                end
                column_id = @last_hittest_column
                gc = SwtGC.new(self)
                inset = get_inset_width
                width = item.calculate_width(column_index, gc) + inset
                gc.dispose
                column_width = 0
                if ((@column_count).equal?(0))
                  column_width = get_client_area.attr_width
                else
                  w = Array.typed(::Java::Short).new(1) { 0 }
                  OS._get_data_browser_table_view_named_column_width(self.attr_handle, column_id, w)
                  column_width = w[0]
                end
                if (width > column_width)
                  tool_tip_text = (item.get_text(column_index)).to_s
                  image = item.get_image(column_index)
                  image_width = !(image).nil? ? image.get_bounds.attr_width + get_gap : 0
                  style = (column).nil? ? SWT::LEFT : column.attr_style
                  if (!((style & SWT::LEFT)).equal?(0))
                    rect.attr_left += image_width
                    rect.attr_right = RJava.cast_to_short((rect.attr_left + width - image_width - inset))
                  end
                  if (!((style & SWT::RIGHT)).equal?(0))
                    rect.attr_left = RJava.cast_to_short((rect.attr_right - width + image_width + inset))
                  end
                  if (!((style & SWT::CENTER)).equal?(0))
                    rect.attr_left += image_width
                  end
                end
              end
            end
            if (!(tool_tip_text).nil? && !(tool_tip_text.length).equal?(0))
              buffer = CharArray.new(tool_tip_text.length)
              tool_tip_text.get_chars(0, buffer.attr_length, buffer, 0)
              length_ = fix_mnemonic(buffer)
              if (!(self.attr_display.attr_help_string).equal?(0))
                OS._cfrelease(self.attr_display.attr_help_string)
              end
              self.attr_display.attr_help_string = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, length_)
              help_content = HMHelpContentRec.new
              OS.memmove(help_content, io_help_content, HMHelpContentRec.attr_sizeof)
              self.attr_display.attr_help_widget = self
              help_content.attr_version = OS.attr_k_mac_help_version
              help_content.attr_tag_side = RJava.cast_to_short(tag_side)
              help_content.attr_abs_hot_rect_left = RJava.cast_to_short((rect.attr_left + window_left))
              help_content.attr_abs_hot_rect_top = RJava.cast_to_short((rect.attr_top + window_top))
              help_content.attr_abs_hot_rect_right = RJava.cast_to_short((rect.attr_right + window_left))
              help_content.attr_abs_hot_rect_bottom = RJava.cast_to_short((rect.attr_bottom + window_top))
              help_content.attr_content0_content_type = OS.attr_k_hmcfstring_content
              help_content.attr_content0_tag_cfstring = self.attr_display.attr_help_string
              help_content.attr_content1_content_type = OS.attr_k_hmcfstring_content
              help_content.attr_content1_tag_cfstring = self.attr_display.attr_help_string
              OS.memmove(io_help_content, help_content, HMHelpContentRec.attr_sizeof)
              OS.memmove(out_content_provided, Array.typed(::Java::Short).new([OS.attr_k_hmcontent_provided]), 2)
              return OS.attr_no_err
            end
          end
        end
      end
      return super(in_control, in_global_mouse, in_request, out_content_provided, io_help_content)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def hit_test_proc(browser, id, property, the_rect, mouse_rect)
      @last_hittest = id
      @last_hittest_column = property
      return 1
    end
    
    typesig { [] }
    def hook_events
      super
      callbacks = DataBrowserCallbacks.new
      callbacks.attr_version = OS.attr_k_data_browser_latest_callbacks
      OS._init_data_browser_callbacks(callbacks)
      callbacks.attr_v1_item_data_callback = self.attr_display.attr_item_data_proc
      callbacks.attr_v1_item_notification_callback = self.attr_display.attr_item_notification_proc
      OS._set_data_browser_callbacks(self.attr_handle, callbacks)
      custom = DataBrowserCustomCallbacks.new
      custom.attr_version = OS.attr_k_data_browser_latest_custom_callbacks
      OS._init_data_browser_custom_callbacks(custom)
      custom.attr_v1_draw_item_callback = self.attr_display.attr_draw_item_proc
      custom.attr_v1_hit_test_callback = self.attr_display.attr_hit_test_proc
      custom.attr_v1_tracking_callback = self.attr_display.attr_tracking_proc
      OS._set_data_browser_custom_callbacks(self.attr_handle, custom)
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
      return OS._is_data_browser_item_selected(self.attr_handle, get_id(index))
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def item_data_proc(browser, id, property, item_data, set_value)
      index = get_index(id)
      if (!(0 <= index && index < @items.attr_length))
        return OS.attr_no_err
      end
      case (property)
      when CHECK_COLUMN_ID
        item = __get_item(index)
        if (!check_data(item, false))
          return OS.attr_no_err
        end
        if (!(set_value).equal?(0))
          item.attr_checked = !item.attr_checked
          if (item.attr_checked && item.attr_grayed)
            OS._set_data_browser_item_data_button_value(item_data, RJava.cast_to_short(OS.attr_k_theme_button_mixed))
          else
            the_data = item.attr_checked ? OS.attr_k_theme_button_on : OS.attr_k_theme_button_off
            OS._set_data_browser_item_data_button_value(item_data, RJava.cast_to_short(the_data))
          end
          event = Event.new
          event.attr_item = item
          event.attr_detail = SWT::CHECK
          post_event(SWT::Selection, event)
          # Bug in the Macintosh. When the height of the row is smaller than the
          # check box, the tail of the check mark draws outside of the item part
          # bounds. This means it will not be redrawn when the item is unckeched.
          # The fix is to redraw the area.
          if (!item.attr_checked)
            item.redraw(Table::CHECK_COLUMN_ID)
          end
        else
          the_data = OS.attr_k_theme_button_off
          if (item.attr_checked)
            the_data = item.attr_grayed ? OS.attr_k_theme_button_mixed : OS.attr_k_theme_button_on
          end
          OS._set_data_browser_item_data_button_value(item_data, RJava.cast_to_short(the_data))
        end
      end
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def item_notification_proc(browser, id, message)
      if ((message).equal?(OS.attr_k_data_browser_user_state_changed))
        resized = false
        width = Array.typed(::Java::Short).new(1) { 0 }
        position = Array.typed(::Java::Int).new(1) { 0 }
        columns = get_columns
        i = 0
        while i < @column_count
          column = columns[i]
          if (!column.is_disposed)
            OS._get_data_browser_table_view_named_column_width(self.attr_handle, column.attr_id, width)
            if (!(width[0]).equal?(column.attr_last_width))
              column.resized(width[0])
              resized = true
            end
          end
          if (!column.is_disposed)
            OS._get_data_browser_table_view_column_position(self.attr_handle, column.attr_id, position)
            if (!(position[0]).equal?(column.attr_last_position))
              column.attr_last_position = position[0]
              column.send_event(SWT::Move)
              resized = true
            end
          end
          i += 1
        end
        property = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_data_browser_sort_property(self.attr_handle, property)
        if (!(property[0]).equal?(0))
          if (!resized)
            i_ = 0
            while i_ < @column_count
              column = columns[i_]
              if ((property[0]).equal?(column.attr_id))
                column.post_event((self.attr_display.attr_click_count).equal?(2) ? SWT::DefaultSelection : SWT::Selection)
                break
              end
              i_ += 1
            end
          end
          OS._set_data_browser_sort_property(self.attr_handle, 0)
          if (!(@sort_column).nil? && !@sort_column.is_disposed && !(@sort_direction).equal?(SWT::NONE))
            OS._set_data_browser_sort_property(self.attr_handle, @sort_column.attr_id)
            order = (@sort_direction).equal?(SWT::DOWN) ? OS.attr_k_data_browser_order_decreasing : OS.attr_k_data_browser_order_increasing
            OS._set_data_browser_sort_order(self.attr_handle, RJava.cast_to_short(order))
          end
        end
        return OS.attr_no_err
      end
      index = get_index(id)
      if (!(0 <= index && index < @items.attr_length))
        return OS.attr_no_err
      end
      catch(:break_case) do
        case (message)
        when OS.attr_k_data_browser_item_selected, OS.attr_k_data_browser_item_deselected
          item = __get_item(index)
          @was_selected = true
          if (@ignore_select)
            throw :break_case, :thrown
          end
          first = Array.typed(::Java::Int).new(1) { 0 }
          last = Array.typed(::Java::Int).new(1) { 0 }
          OS._get_data_browser_selection_anchor(self.attr_handle, first, last)
          selected = false
          if (!((self.attr_style & SWT::MULTI)).equal?(0))
            modifiers = OS._get_current_event_key_modifiers
            if (!((modifiers & OS.attr_shift_key)).equal?(0))
              if ((message).equal?(OS.attr_k_data_browser_item_selected))
                selected = (first[0]).equal?(id) || (last[0]).equal?(id)
              else
                selected = (id).equal?(@anchor_first) || (id).equal?(@anchor_last)
              end
            else
              if (!((modifiers & OS.attr_cmd_key)).equal?(0))
                selected = true
              else
                selected = (first[0]).equal?(last[0])
              end
            end
          else
            selected = (message).equal?(OS.attr_k_data_browser_item_selected)
          end
          if (selected)
            @anchor_first = first[0]
            @anchor_last = last[0]
            event = Event.new
            event.attr_item = item
            post_event(SWT::Selection, event)
          end
        when OS.attr_k_data_browser_item_double_clicked
          @was_selected = true
          if ((self.attr_display.attr_click_count).equal?(2))
            event = Event.new
            event.attr_item = __get_item(index)
            post_event(SWT::DefaultSelection, event)
          end
        end
      end
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_accessible_get_named_attribute(next_handler, the_event, user_data)
      code = OS.attr_event_not_handled_err
      string_ref = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_name, OS.attr_type_cfstring_ref, nil, 4, nil, string_ref)
      length_ = 0
      if (!(string_ref[0]).equal?(0))
        length_ = OS._cfstring_get_length(string_ref[0])
      end
      buffer = CharArray.new(length_)
      range = CFRange.new
      range.attr_length = length_
      OS._cfstring_get_characters(string_ref[0], range, buffer)
      attribute_name = String.new(buffer)
      if ((attribute_name == OS.attr_k_axheader_attribute))
        height = Array.typed(::Java::Short).new(1) { 0 }
        OS._get_data_browser_list_view_header_btn_height(self.attr_handle, height)
        if ((height[0]).equal?(0))
          # Bug in the Macintosh.  Even when the header is not visible,
          # VoiceOver still reports each column header's role for every row.
          # This is confusing and overly verbose.  The fix is to return
          # "no header" when the screen reader asks for the header, by
          # returning noErr without setting the event parameter.
          code = OS.attr_no_err
        end
      else
        ref = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_accessible_object, OS.attr_type_cftype_ref, nil, 4, nil, ref)
        axuielementref = ref[0]
        item_info = DataBrowserAccessibilityItemInfo.new
        err = OS._axuielement_get_data_browser_item_info(axuielementref, self.attr_handle, 0, item_info)
        if ((err).equal?(OS.attr_no_err) && !(item_info.attr_v0_column_property).equal?(OS.attr_k_data_browser_item_no_property) && !(item_info.attr_v0_item).equal?(OS.attr_k_data_browser_no_item) && (item_info.attr_v0_property_part).equal?(OS.attr_k_data_browser_property_enclosing_part))
          column_index = 0
          column_index = 0
          while column_index < @column_count
            if ((@columns[column_index].attr_id).equal?(item_info.attr_v0_column_property))
              break
            end
            column_index += 1
          end
          if (!(column_index).equal?(@column_count) || (@column_count).equal?(0))
            index = get_index(item_info.attr_v0_item)
            if (0 <= index && index < @item_count)
              table_item = __get_item(index)
              if ((attribute_name == OS.attr_k_axrole_attribute) || (attribute_name == OS.attr_k_axrole_description_attribute))
                role_text = OS.attr_k_axstatic_text_role
                buffer = CharArray.new(role_text.length)
                role_text.get_chars(0, buffer.attr_length, buffer, 0)
                string_ref[0] = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
                if (!(string_ref[0]).equal?(0))
                  if ((attribute_name == OS.attr_k_axrole_attribute))
                    OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, string_ref)
                  else
                    # kAXRoleDescriptionAttribute
                    string_ref2 = OS._hicopy_accessibility_role_description(string_ref[0], 0)
                    OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, Array.typed(::Java::Int).new([string_ref2]))
                    OS._cfrelease(string_ref2)
                  end
                  OS._cfrelease(string_ref[0])
                  code = OS.attr_no_err
                end
              else
                if ((attribute_name == OS.attr_k_axchildren_attribute))
                  children = OS._cfarray_create_mutable(OS.attr_k_cfallocator_default, 0, 0)
                  OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfmutable_array_ref, 4, Array.typed(::Java::Int).new([children]))
                  OS._cfrelease(children)
                  code = OS.attr_no_err
                else
                  if ((attribute_name == OS.attr_k_axtitle_attribute) || (attribute_name == OS.attr_k_axdescription_attribute))
                    text = table_item.get_text(column_index)
                    buffer = CharArray.new(text.length)
                    text.get_chars(0, buffer.attr_length, buffer, 0)
                    string_ref[0] = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
                    if (!(string_ref[0]).equal?(0))
                      OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, string_ref)
                      OS._cfrelease(string_ref[0])
                      code = OS.attr_no_err
                    end
                  end
                end
              end
            end
          end
        end
      end
      if (!(self.attr_accessible).nil?)
        code = self.attr_accessible.internal_k_event_accessible_get_named_attribute(next_handler, the_event, code)
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_down(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      @was_selected = false
      result = OS._call_next_event_handler(next_handler, the_event)
      if (is_disposed)
        return OS.attr_no_err
      end
      if (!@was_selected)
        if (OS._is_data_browser_item_selected(self.attr_handle, @last_hittest))
          index = get_index(@last_hittest)
          if (0 <= index && index < @item_count)
            event = Event.new
            event.attr_item = __get_item(index)
            post_event(SWT::Selection, event)
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_get_click_activation(next_handler, the_event, user_data)
      OS._set_event_parameter(the_event, OS.attr_k_event_param_click_activation, OS.attr_type_click_activation_result, 4, Array.typed(::Java::Int).new([OS.attr_k_activate_and_handle_click]))
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_set_cursor(next_handler, the_event, user_data)
      if (!is_enabled_cursor)
        return OS.attr_no_err
      end
      if (is_enabled_modal)
        pt = Org::Eclipse::Swt::Internal::Carbon::Point.new
        sizeof = Org::Eclipse::Swt::Internal::Carbon::Point.attr_sizeof
        OS._get_event_parameter(the_event, OS.attr_k_event_param_mouse_location, OS.attr_type_qdpoint, nil, sizeof, nil, pt)
        if (!contains(pt.attr_h, pt.attr_v))
          return OS.attr_event_not_handled_err
        end
      end
      return super(next_handler, the_event, user_data)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_unicode_key_pressed(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      keyboard_event = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_text_input_send_keyboard_event, OS.attr_type_event_ref, nil, keyboard_event.attr_length * 4, nil, keyboard_event)
      key_code = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(keyboard_event[0], OS.attr_k_event_param_key_code, OS.attr_type_uint32, nil, key_code.attr_length * 4, nil, key_code)
      case (key_code[0])
      # KP Enter
      # 
      # Feature in the Macintosh.  For some reason, when the user hits an
      # up or down arrow to traverse the items in a Data Browser, the item
      # scrolls to the left such that the white space that is normally
      # visible to the right of the every item is scrolled out of view.
      # The fix is to save and restore the horizontal scroll position.
      # 
      # Down
      when 49
        # Space
        first = Array.typed(::Java::Int).new(1) { 0 }
        last = Array.typed(::Java::Int).new(1) { 0 }
        if ((OS._get_data_browser_selection_anchor(self.attr_handle, first, last)).equal?(OS.attr_no_err))
          if (!(first[0]).equal?(0))
            item = __get_item(get_index(first[0]))
            if (!((self.attr_style & SWT::CHECK)).equal?(0))
              item.set_checked(!item.get_checked, true)
            end
          end
        end
      when 76, 36
        # Return
        post_event(SWT::DefaultSelection)
      when 125, 126
        # Up
        top = Array.typed(::Java::Int).new(1) { 0 }
        left = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_data_browser_scroll_position(self.attr_handle, top, left)
        result = OS._call_next_event_handler(next_handler, the_event)
        OS._get_data_browser_scroll_position(self.attr_handle, top, nil)
        OS._set_data_browser_scroll_position(self.attr_handle, top[0], left[0])
        redraw_background_image
      end
      return result
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
    def release_widget
      super
      @current_item = nil
      @sort_column = nil
      @paint_gc = nil
      @image_bounds = nil
      # Feature in the Mac. When RemoveDataBrowserItems() is used
      # to remove items, item notification callbacks are issued with
      # the message kDataBrowserItemRemoved  When many items are
      # removed, this is slow.  The fix is to temporarily remove
      # the item notification callback.
      callbacks = DataBrowserCallbacks.new
      OS._get_data_browser_callbacks(self.attr_handle, callbacks)
      callbacks.attr_v1_item_notification_callback = 0
      OS._set_data_browser_callbacks(self.attr_handle, callbacks)
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
      check_items(true)
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
      id = Array.typed(::Java::Int).new([@item_count])
      if (!(OS._remove_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, id.attr_length, id, 0)).equal?(OS.attr_no_err))
        error(SWT::ERROR_ITEM_NOT_REMOVED)
      end
      System.arraycopy(@items, index + 1, @items, index, (@item_count -= 1) - index)
      @items[@item_count] = nil
      OS._update_data_browser_items(self.attr_handle, 0, 0, nil, OS.attr_k_data_browser_item_no_property, OS.attr_k_data_browser_no_item)
      if ((@item_count).equal?(0))
        set_table_empty
      else
        fix_scroll_bar
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
      check_items(true)
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
        indices = Array.typed(::Java::Int).new(length_) { 0 }
        i = 0
        while i < length_
          indices[i] = i + start
          i += 1
        end
        remove(indices)
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
      check_items(true)
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
      duplicates = 0
      last = -1
      i = 0
      while i < new_indices.attr_length
        if ((new_indices[i]).equal?(last))
          duplicates += 1
        end
        last = new_indices[i]
        i += 1
      end
      id = Array.typed(::Java::Int).new(new_indices.attr_length - duplicates) { 0 }
      id_index = id.attr_length - 1
      last = -1
      i_ = 0
      while i_ < new_indices.attr_length
        index = new_indices[i_]
        if (!(index).equal?(last))
          item = @items[index]
          if (!(item).nil? && !item.is_disposed)
            item.release(false)
          end
          if (!(index).equal?(@item_count - 1))
            fix_selection(index, false)
          end
          id[((id_index -= 1) + 1)] = @item_count
          System.arraycopy(@items, index + 1, @items, index, (@item_count -= 1) - index)
          @items[@item_count] = nil
          last = index
        end
        i_ += 1
      end
      if (!(OS._remove_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, id.attr_length, id, 0)).equal?(OS.attr_no_err))
        error(SWT::ERROR_ITEM_NOT_REMOVED)
      end
      OS._update_data_browser_items(self.attr_handle, 0, 0, nil, OS.attr_k_data_browser_item_no_property, OS.attr_k_data_browser_no_item)
      if ((@item_count).equal?(0))
        set_table_empty
      else
        fix_scroll_bar
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
      # Feature in the Mac. When RemoveDataBrowserItems() is used
      # to remove items, item notification callbacks are issued with
      # the message kDataBrowserItemRemoved  When many items are
      # removed, this is slow.  The fix is to temporarily remove
      # the item notification callback.
      callbacks = DataBrowserCallbacks.new
      OS._get_data_browser_callbacks(self.attr_handle, callbacks)
      callbacks.attr_v1_item_notification_callback = 0
      OS._set_data_browser_callbacks(self.attr_handle, callbacks)
      OS._remove_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, 0, nil, 0)
      callbacks.attr_v1_item_notification_callback = self.attr_display.attr_item_notification_proc
      OS._set_data_browser_callbacks(self.attr_handle, callbacks)
      set_table_empty
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
    def reset_visible_region(control)
      super(control)
      if (!(@show_index).equal?(-1))
        show_index(@show_index)
      end
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
      check_items(false)
      if (0 <= index && index < @item_count)
        ids = Array.typed(::Java::Int).new([get_id(index)])
        select(ids, ids.attr_length, false)
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
      check_items(false)
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
        length_ = end_ - start + 1
        ids = Array.typed(::Java::Int).new(length_) { 0 }
        i = 0
        while i < length_
          ids[i] = get_id(end_ - i)
          i += 1
        end
        select(ids, length_, false)
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
      check_items(false)
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      length_ = indices.attr_length
      if ((length_).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length_ > 1))
        return
      end
      ids = Array.typed(::Java::Int).new(length_) { 0 }
      count = 0
      i = 0
      while i < length_
        index = indices[length_ - i - 1]
        if (index >= 0 && index < @item_count)
          ids[((count += 1) - 1)] = get_id(index)
        end
        i += 1
      end
      if (count > 0)
        select(ids, count, false)
      end
    end
    
    typesig { [Array.typed(::Java::Int), ::Java::Int, ::Java::Boolean] }
    def select_indices(indices, count, clear_)
      i = 0
      while i < count
        indices[i] = get_id(indices[i])
        i += 1
      end
      select(indices, count, clear_)
    end
    
    typesig { [Array.typed(::Java::Int), ::Java::Int, ::Java::Boolean] }
    def select(ids, count, clear_)
      @ignore_select = true
      # Bug in the Macintosh.  When the DataBroswer selection flags includes
      # both kDataBrowserNeverEmptySelectionSet and kDataBrowserSelectOnlyOne,
      # two items are selected when SetDataBrowserSelectedItems() is called
      # with kDataBrowserItemsAssign to assign a new seletion despite the fact
      # that kDataBrowserSelectOnlyOne was specified.  The fix is to save and
      # restore kDataBrowserNeverEmptySelectionSet around each call to
      # SetDataBrowserSelectedItems().
      selection_flags = nil
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        selection_flags = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_data_browser_selection_flags(self.attr_handle, selection_flags)
        OS._set_data_browser_selection_flags(self.attr_handle, selection_flags[0] & ~OS.attr_k_data_browser_never_empty_selection_set)
      end
      operation = OS.attr_k_data_browser_items_assign
      if (!((self.attr_style & SWT::MULTI)).equal?(0) && !clear_)
        operation = OS.attr_k_data_browser_items_add
      end
      OS._set_data_browser_selected_items(self.attr_handle, count, ids, operation)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        OS._set_data_browser_selection_flags(self.attr_handle, selection_flags[0])
      end
      @ignore_select = false
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
      check_items(false)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        return
      end
      select(nil, 0, false)
    end
    
    typesig { [Array.typed(::Java::Float)] }
    def set_background(color)
      # Bug in the Macintosh.  The default background of a window changes when
      # the background of a data browser is set using SetControlFontStyle().  This
      # also affects the background of any TNXObject created on that window.  The
      # fix is to avoid calling SetControlFontStyle() which has no effect
      # in a data browser anyways.
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize, events)
      # Ensure that the top item is visible when the tree is resized
      # from a zero size to a size that can show the selection.
      result = super(x, y, width, height, move, resize, events)
      if (!(@show_index).equal?(-1))
        show_index(@show_index)
      end
      return result
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
        x = 0
        width = Array.typed(::Java::Short).new(1) { 0 }
        old_x = Array.typed(::Java::Int).new(old_order.attr_length) { 0 }
        i_ = 0
        while i_ < old_order.attr_length
          index = old_order[i_]
          column = @columns[index]
          old_x[index] = x
          OS._get_data_browser_table_view_named_column_width(self.attr_handle, column.attr_id, width)
          x += width[0]
          i_ += 1
        end
        x = 0
        new_x = Array.typed(::Java::Int).new(order.attr_length) { 0 }
        i__ = 0
        while i__ < order.attr_length
          index = order[i__]
          column = @columns[index]
          position = !((self.attr_style & SWT::CHECK)).equal?(0) ? i__ + 1 : i__
          OS._set_data_browser_table_view_column_position(self.attr_handle, column.attr_id, position)
          column.attr_last_position = position
          new_x[index] = x
          OS._get_data_browser_table_view_named_column_width(self.attr_handle, column.attr_id, width)
          x += width[0]
          i__ += 1
        end
        new_columns = Array.typed(TableColumn).new(@column_count) { nil }
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
    
    typesig { [Font] }
    def set_font_style(font)
      super(font)
      if ((@items).nil?)
        return
      end
      i = 0
      while i < @items.attr_length
        item = @items[i]
        if (!(item).nil?)
          item.attr_width = -1
        end
        i += 1
      end
      set_scroll_width(@items, true)
      set_item_height(nil)
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
      height = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_data_browser_list_view_header_btn_height(self.attr_handle, height)
      if (!((!(height[0]).equal?(0))).equal?(show))
        OS._set_data_browser_list_view_header_btn_height(self.attr_handle, RJava.cast_to_short((show ? @header_height : 0)))
        invalidate_visible_region(self.attr_handle)
      end
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
    def set_item_count(count)
      check_widget
      check_items(true)
      count = Math.max(0, count)
      if ((count).equal?(@item_count))
        return
      end
      set_redraw(false)
      top = Array.typed(::Java::Int).new(1) { 0 }
      left = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_data_browser_scroll_position(self.attr_handle, top, left)
      callbacks = DataBrowserCallbacks.new
      OS._get_data_browser_callbacks(self.attr_handle, callbacks)
      callbacks.attr_v1_item_notification_callback = 0
      OS._set_data_browser_callbacks(self.attr_handle, callbacks)
      if (count < @item_count)
        index = count
        id = Array.typed(::Java::Int).new(@item_count - count) { 0 }
        while (index < @item_count)
          item = @items[index]
          if (!(item).nil?)
            item.release(false)
          end
          id[index - count] = index + 1
          index += 1
        end
        if (!(OS._remove_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, id.attr_length, id, 0)).equal?(OS.attr_no_err))
          error(SWT::ERROR_ITEM_NOT_REMOVED)
        end
      end
      length_ = Math.max(4, (count + 3) / 4 * 4)
      new_items = Array.typed(TableItem).new(length_) { nil }
      System.arraycopy(@items, 0, new_items, 0, Math.min(count, @item_count))
      @items = new_items
      if (((self.attr_style & SWT::VIRTUAL)).equal?(0))
        i = @item_count
        while i < count
          @items[i] = TableItem.new(self, SWT::NONE, i, false)
          i += 1
        end
      end
      @item_count = count
      OS._add_data_browser_items(self.attr_handle, 0, @item_count, nil, OS.attr_k_data_browser_item_no_property)
      callbacks.attr_v1_item_notification_callback = self.attr_display.attr_item_notification_proc
      OS._set_data_browser_callbacks(self.attr_handle, callbacks)
      fix_scroll_bar
      if (!(@sort_column).nil? && !@sort_column.is_disposed && (@sort_direction).equal?(SWT::DOWN))
        OS._update_data_browser_items(self.attr_handle, 0, 0, nil, OS.attr_k_data_browser_item_no_property, OS.attr_k_data_browser_no_item)
      end
      set_redraw(true)
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
        OS._set_data_browser_table_view_row_height(self.attr_handle, RJava.cast_to_short(item_height))
      end
    end
    
    typesig { [Image] }
    def set_item_height(image)
      bounds = !(image).nil? ? image.get_bounds : @image_bounds
      if ((bounds).nil?)
        return
      end
      @image_bounds = bounds
      height = Array.typed(::Java::Short).new(1) { 0 }
      if ((OS._get_data_browser_table_view_row_height(self.attr_handle, height)).equal?(OS.attr_no_err))
        if (height[0] < bounds.attr_height)
          OS._set_data_browser_table_view_row_height(self.attr_handle, RJava.cast_to_short(bounds.attr_height))
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    # Marks the receiver's lines as visible if the argument is <code>true</code>,
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
    def set_lines_visible(show)
      check_widget
      if (OS::VERSION >= 0x1040)
        attrib = OS.attr_k_data_browser_attribute_list_view_alternating_row_colors | OS.attr_k_data_browser_attribute_list_view_draw_column_dividers
        OS._data_browser_change_attributes(self.attr_handle, show ? attrib : 0, !show ? attrib : 0)
        redraw
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
        check_items(true)
      end
    end
    
    typesig { [ScrollBar, ::Java::Boolean] }
    def set_scroll_bar_visible(bar, visible)
      horiz = Array.typed(::Java::Boolean).new(1) { false }
      vert = Array.typed(::Java::Boolean).new(1) { false }
      OS._get_data_browser_has_scroll_bars(self.attr_handle, horiz, vert)
      if (!((bar.attr_style & SWT::H_SCROLL)).equal?(0))
        horiz[0] = visible
      end
      if (!((bar.attr_style & SWT::V_SCROLL)).equal?(0))
        vert[0] = visible
      end
      if (!visible)
        bar.redraw
        bar.deregister
      end
      if ((OS._set_data_browser_has_scroll_bars(self.attr_handle, horiz[0], vert[0])).equal?(OS.attr_no_err))
        if (visible)
          bar.attr_handle = find_standard_bar(bar.attr_style)
          bar.register
          bar.hook_events
          bar.redraw
        else
          bar.attr_handle = 0
        end
        return true
      else
        if (!visible)
          bar.register
        end
      end
      return false
    end
    
    typesig { [TableItem] }
    def set_scroll_width(item)
      if (!(@column_count).equal?(0))
        return false
      end
      if (!(@current_item).nil?)
        if (!(@current_item).equal?(item))
          @fix_scroll_width = true
        end
        return false
      end
      if (!(self.attr_draw_count).equal?(0))
        return false
      end
      gc = SwtGC.new(self)
      new_width = item.calculate_width(0, gc)
      gc.dispose
      new_width += get_inset_width
      width = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_data_browser_table_view_named_column_width(self.attr_handle, @column_id, width)
      if (width[0] < new_width)
        OS._set_data_browser_table_view_named_column_width(self.attr_handle, @column_id, RJava.cast_to_short(new_width))
        return true
      end
      return false
    end
    
    typesig { [Array.typed(TableItem), ::Java::Boolean] }
    def set_scroll_width(items, set)
      if (!(@column_count).equal?(0))
        return false
      end
      if (!(@current_item).nil?)
        @fix_scroll_width = true
        return false
      end
      if (!(self.attr_draw_count).equal?(0))
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
      new_width += get_inset_width
      if (!set)
        width = Array.typed(::Java::Short).new(1) { 0 }
        OS._get_data_browser_table_view_named_column_width(self.attr_handle, @column_id, width)
        if (width[0] >= new_width)
          return false
        end
      end
      OS._set_data_browser_table_view_named_column_width(self.attr_handle, @column_id, RJava.cast_to_short(new_width))
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
      check_items(false)
      deselect_all
      set_selection(index, false)
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def set_selection(index, notify)
      # checkWidget();
      if (0 <= index && index < @item_count)
        ids = Array.typed(::Java::Int).new([get_id(index)])
        select(ids, ids.attr_length, true)
        show_index(index)
        if (notify)
          event = Event.new
          event.attr_item = __get_item(index)
          post_event(SWT::Selection, event)
        end
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
      check_items(false)
      deselect_all
      if (end_ < 0 || start > end_ || (!((self.attr_style & SWT::SINGLE)).equal?(0) && !(start).equal?(end_)))
        return
      end
      if ((@item_count).equal?(0) || start >= @item_count)
        return
      end
      start = Math.max(0, start)
      end_ = Math.min(end_, @item_count - 1)
      length_ = end_ - start + 1
      ids = Array.typed(::Java::Int).new(length_) { 0 }
      i = 0
      while i < length_
        ids[i] = get_id(end_ - i)
        i += 1
      end
      select(ids, length_, true)
      show_index(get_index(ids[0]))
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
      check_items(false)
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      deselect_all
      length_ = indices.attr_length
      if ((length_).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length_ > 1))
        return
      end
      ids = Array.typed(::Java::Int).new(length_) { 0 }
      count = 0
      i = 0
      while i < length_
        index = indices[length_ - i - 1]
        if (index >= 0 && index < @item_count)
          ids[((count += 1) - 1)] = get_id(index)
        end
        i += 1
      end
      if (count > 0)
        select(ids, count, true)
        show_index(get_index(ids[0]))
      end
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
      check_items(false)
      if ((items).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      deselect_all
      length_ = items.attr_length
      if ((length_).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length_ > 1))
        return
      end
      ids = Array.typed(::Java::Int).new(length_) { 0 }
      count = 0
      i = 0
      while i < length_
        index = index_of(items[length_ - i - 1])
        if (!(index).equal?(-1))
          ids[((count += 1) - 1)] = get_id(index)
        end
        i += 1
      end
      if (count > 0)
        select(ids, count, true)
        show_index(get_index(ids[0]))
      end
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
      indices = get_selection_indices
      @sort_column = column
      id = 0
      order = OS.attr_k_data_browser_order_increasing
      if (!(@sort_column).nil? && !@sort_column.is_disposed && !(@sort_direction).equal?(SWT::NONE))
        id = @sort_column.attr_id
        if ((@sort_direction).equal?(SWT::DOWN))
          order = OS.attr_k_data_browser_order_decreasing
        end
      end
      OS._set_data_browser_sort_property(self.attr_handle, id)
      OS._set_data_browser_sort_order(self.attr_handle, RJava.cast_to_short(order))
      select_indices(indices, indices.attr_length, true)
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
      indices = get_selection_indices
      @sort_direction = direction
      id = 0
      order = OS.attr_k_data_browser_order_increasing
      if (!(@sort_column).nil? && !@sort_column.is_disposed && !(@sort_direction).equal?(SWT::NONE))
        id = @sort_column.attr_id
        if ((@sort_direction).equal?(SWT::DOWN))
          order = OS.attr_k_data_browser_order_decreasing
        end
      end
      OS._set_data_browser_sort_property(self.attr_handle, id)
      OS._set_data_browser_sort_order(self.attr_handle, RJava.cast_to_short(order))
      select_indices(indices, indices.attr_length, true)
    end
    
    typesig { [] }
    def set_table_empty
      OS._set_data_browser_scroll_position(self.attr_handle, 0, 0)
      @item_count = @anchor_first = @anchor_last = 0
      @items = Array.typed(TableItem).new(4) { nil }
      if (!(@image_bounds).nil?)
        # Reset the item height to the font height
        @image_bounds = nil
        set_font_style(self.attr_font)
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
      check_items(false)
      item_height = get_item_height
      top = Array.typed(::Java::Int).new(1) { 0 }
      left = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_data_browser_scroll_position(self.attr_handle, top, left)
      top[0] = Math.max(0, Math.min(item_height * @item_count + get_header_height - get_client_area.attr_height, index * item_height))
      OS._set_data_browser_scroll_position(self.attr_handle, top[0], left[0])
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
      index = index_of(column)
      if (@column_count <= 1 || !(0 <= index && index < @column_count))
        return
      end
      # Get width and horizontal position of column
      w = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_data_browser_table_view_named_column_width(self.attr_handle, column.attr_id, w)
      width = w[0]
      x = 0
      i = 0
      while i < index
        w = Array.typed(::Java::Short).new(1) { 0 }
        OS._get_data_browser_table_view_named_column_width(self.attr_handle, @columns[i].attr_id, w)
        x += w[0]
        i += 1
      end
      # Get current scroll position
      top = Array.typed(::Java::Int).new(1) { 0 }
      left = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_data_browser_scroll_position(self.attr_handle, top, left)
      # Scroll column into view
      if (x < left[0])
        OS._set_data_browser_scroll_position(self.attr_handle, top[0], x)
      else
        rect = get_client_area
        max_width = rect.attr_width
        width = Math.min(width, max_width)
        if (x + width > left[0] + max_width)
          left[0] = x + width - max_width
          OS._set_data_browser_scroll_position(self.attr_handle, top[0], left[0])
        end
      end
    end
    
    typesig { [::Java::Int] }
    def show_index(index)
      if (0 <= index && index < @item_count)
        # Bug in the Macintosh.  When there is not room to show a
        # single item in the data browser, RevealDataBrowserItem()
        # scrolls the item such that it is above the top of the data
        # browser.  The fix is to remember the index and scroll when
        # the data browser is resized.
        # 
        # Bug in the Macintosh.  When items are added to the data
        # browser after is has been hidden, RevealDataBrowserItem()
        # when called before the controls behind the data browser
        # are repainted causes a redraw.  This redraw happens right
        # away causing pixel corruption.  The fix is to remember the
        # index and scroll when the data browser is shown.
        rect = get_client_area
        if (rect.attr_height < get_item_height || !OS._is_control_visible(self.attr_handle))
          @show_index = index
          return
        end
        @show_index = -1
        item = __get_item(index)
        item_rect = item.get_bounds(0)
        if (!item_rect.is_empty)
          if (rect.contains(item_rect.attr_x, item_rect.attr_y) && rect.contains(item_rect.attr_x, item_rect.attr_y + item_rect.attr_height))
            return
          end
        end
        top = Array.typed(::Java::Int).new(1) { 0 }
        left = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_data_browser_scroll_position(self.attr_handle, top, left)
        OS._reveal_data_browser_item(self.attr_handle, get_id(index), OS.attr_k_data_browser_no_item, OS.attr_k_data_browser_reveal_without_selecting)
        # Bug in the Macintosh.  For some reason, when the DataBrowser is scrolled
        # by RevealDataBrowserItem(), the scrollbars are not redrawn.  The fix is to
        # force a redraw.
        new_top = Array.typed(::Java::Int).new(1) { 0 }
        new_left = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_data_browser_scroll_position(self.attr_handle, new_top, new_left)
        if (!(self.attr_horizontal_bar).nil? && !(new_left[0]).equal?(left[0]))
          self.attr_horizontal_bar.redraw
        end
        if (!(self.attr_vertical_bar).nil? && !(new_top[0]).equal?(top[0]))
          self.attr_vertical_bar.redraw
        end
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
      check_items(false)
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
      check_items(false)
      index = get_selection_index
      if (index >= 0)
        show_index(index)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def tracking_proc(browser, id, property, the_rect, start_pt, modifiers)
      return 1
    end
    
    private
    alias_method :initialize__table, :initialize
  end
  
end
