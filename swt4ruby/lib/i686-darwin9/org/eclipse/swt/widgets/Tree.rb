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
  module TreeImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CFRange
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :DataBrowserAccessibilityItemInfo
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :DataBrowserCallbacks
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :DataBrowserCustomCallbacks
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :DataBrowserListViewColumnDesc
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :DataBrowserListViewHeaderDesc
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :HMHelpContentRec
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Rect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGPoint
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
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
  class Tree < TreeImports.const_get :Composite
    include_class_members TreeImports
    
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
    
    attr_accessor :child_ids
    alias_method :attr_child_ids, :child_ids
    undef_method :child_ids
    alias_method :attr_child_ids=, :child_ids=
    undef_method :child_ids=
    
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
    
    attr_accessor :ignore_redraw
    alias_method :attr_ignore_redraw, :ignore_redraw
    undef_method :ignore_redraw
    alias_method :attr_ignore_redraw=, :ignore_redraw=
    undef_method :ignore_redraw=
    
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
    
    attr_accessor :ignore_expand
    alias_method :attr_ignore_expand, :ignore_expand
    undef_method :ignore_expand
    alias_method :attr_ignore_expand=, :ignore_expand=
    undef_method :ignore_expand=
    
    attr_accessor :was_expanded
    alias_method :attr_was_expanded, :was_expanded
    undef_method :was_expanded
    alias_method :attr_was_expanded=, :was_expanded=
    undef_method :was_expanded=
    
    attr_accessor :in_clear_all
    alias_method :attr_in_clear_all, :in_clear_all
    undef_method :in_clear_all
    alias_method :attr_in_clear_all=, :in_clear_all=
    undef_method :in_clear_all=
    
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
    
    attr_accessor :show_item
    alias_method :attr_show_item, :show_item
    undef_method :show_item
    alias_method :attr_show_item=, :show_item=
    undef_method :show_item=
    
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
    
    attr_accessor :visible_count
    alias_method :attr_visible_count, :visible_count
    undef_method :visible_count
    alias_method :attr_visible_count=, :visible_count=
    undef_method :visible_count=
    
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
      
      const_set_lazy(:DISCLOSURE_COLUMN_EDGE_INSET) { 8 }
      const_attr_reader  :DISCLOSURE_COLUMN_EDGE_INSET
      
      const_set_lazy(:DISCLOSURE_COLUMN_LEVEL_INDENT) { 24 }
      const_attr_reader  :DISCLOSURE_COLUMN_LEVEL_INDENT
      
      const_set_lazy(:DISCLOSURE_TRIANGLE_AND_CONTENT_GAP) { 8 }
      const_attr_reader  :DISCLOSURE_TRIANGLE_AND_CONTENT_GAP
      
      const_set_lazy(:AX_ATTRIBUTES) { Array.typed(String).new([OS.attr_k_axtitle_attribute, ]) }
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
    # @see SWT#VIRTUAL
    # @see SWT#NO_SCROLL
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @items = nil
      @columns = nil
      @sort_column = nil
      @child_ids = nil
      @paint_gc = nil
      @sort_direction = 0
      @column_count = 0
      @column_id = 0
      @id_count = 0
      @anchor_first = 0
      @anchor_last = 0
      @header_height = 0
      @ignore_redraw = false
      @ignore_select = false
      @was_selected = false
      @ignore_expand = false
      @was_expanded = false
      @in_clear_all = false
      @draw_background = false
      @image_bounds = nil
      @show_item = nil
      @insert_item = nil
      @insert_before = false
      @last_hittest = 0
      @last_hittest_column = 0
      @visible_count = 0
      super(parent, check_style(style))
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
    
    typesig { [] }
    def __get_id
      return __get_ids(1)[0]
    end
    
    typesig { [::Java::Int] }
    def __get_ids(count)
      new_ids = Array.typed(::Java::Int).new(count) { 0 }
      index = 0
      if (((self.attr_style & SWT::VIRTUAL)).equal?(0))
        i = 0
        while i < @items.attr_length
          if ((@items[i]).nil?)
            new_ids[((index += 1) - 1)] = i + 1
            if ((index).equal?(count))
              return new_ids
            end
          end
          i += 1
        end
        next_ = @items.attr_length
        while (index < count)
          new_ids[((index += 1) - 1)] = next_ + 1
          next_ += 1
        end
        return new_ids
      end
      reserved = Array.typed(::Java::Boolean).new(@items.attr_length) { false }
      if (!(@child_ids).nil?)
        i = 0
        while i < @child_ids.attr_length
          used_id = @child_ids[i]
          if (!(used_id).equal?(0))
            if (used_id > reserved.attr_length)
              new_reserved = Array.typed(::Java::Boolean).new(used_id + 4) { false }
              System.arraycopy(reserved, 0, new_reserved, 0, reserved.attr_length)
              reserved = new_reserved
            end
            reserved[used_id - 1] = true
          end
          i += 1
        end
      end
      i = 0
      while i < @items.attr_length
        if (!(@items[i]).nil?)
          reserved[i] = true
          ids = @items[i].attr_child_ids
          if (!(ids).nil?)
            j = 0
            while j < ids.attr_length
              used_id = ids[j]
              if (!(used_id).equal?(0))
                if (used_id > reserved.attr_length)
                  new_reserved = Array.typed(::Java::Boolean).new(used_id + 4) { false }
                  System.arraycopy(reserved, 0, new_reserved, 0, reserved.attr_length)
                  reserved = new_reserved
                end
                reserved[used_id - 1] = true
              end
              j += 1
            end
          end
        end
        i += 1
      end
      i_ = 0
      while i_ < reserved.attr_length
        if (!reserved[i_])
          new_ids[((index += 1) - 1)] = i_ + 1
          if ((index).equal?(count))
            return new_ids
          end
        end
        i_ += 1
      end
      next_ = reserved.attr_length
      while (index < count)
        new_ids[((index += 1) - 1)] = next_ + 1
        next_ += 1
      end
      return new_ids
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def __get_item(id, create)
      if (id < 1)
        return nil
      end
      item = id - 1 < @items.attr_length ? @items[id - 1] : nil
      if (!(item).nil? || ((self.attr_style & SWT::VIRTUAL)).equal?(0) || !create)
        return item
      end
      if (!(@child_ids).nil?)
        i = 0
        while i < @child_ids.attr_length
          if ((@child_ids[i]).equal?(id))
            return __get_item(nil, i)
          end
          i += 1
        end
      end
      i = 0
      while i < @items.attr_length
        parent_item = @items[i]
        if (!(parent_item).nil? && !(parent_item.attr_child_ids).nil?)
          ids = parent_item.attr_child_ids
          j = 0
          while j < ids.attr_length
            if ((ids[j]).equal?(id))
              return __get_item(parent_item, j)
            end
            j += 1
          end
        end
        i += 1
      end
      return nil
    end
    
    typesig { [TreeItem, ::Java::Int] }
    def __get_item(parent_item, index)
      count = get_item_count(parent_item)
      if (index < 0 || index >= count)
        return nil
      end
      ids = (parent_item).nil? ? @child_ids : parent_item.attr_child_ids
      id = ids[index]
      if ((id).equal?(0))
        id = __get_id
        ids[index] = id
      end
      if (id > @items.attr_length)
        new_items = Array.typed(TreeItem).new(id + 4) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
      end
      item = @items[id - 1]
      if (!(item).nil? || ((self.attr_style & SWT::VIRTUAL)).equal?(0))
        return item
      end
      item = TreeItem.new(self, parent_item, SWT::NONE, index, false)
      item.attr_id = id
      @items[id - 1] = item
      return item
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
    
    typesig { [Array.typed(::Java::Int), SwtGC, ::Java::Boolean, ::Java::Int, ::Java::Int] }
    def calculate_width(ids, gc, recurse, level, level_indent)
      if ((ids).nil?)
        return 0
      end
      width = 0
      i = 0
      while i < ids.attr_length
        item = __get_item(ids[i], false)
        if (!(item).nil?)
          item_width = item.calculate_width(0, gc)
          item_width += level * level_indent
          width = Math.max(width, item_width)
          if (recurse && item.__get_expanded)
            width = Math.max(width, calculate_width(item.attr_child_ids, gc, recurse, level + 1, level_indent))
          end
        end
        i += 1
      end
      return width
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
      @draw_background = !(find_background_control).nil?
      result = super(control, damage_rgn, visible_rgn, the_event, next_handler)
      if ((get_item_count).equal?(0) && @draw_background)
        @draw_background = false
        rect = get_client_area
        header_height = get_header_height
        rect.attr_y += header_height
        rect.attr_height -= header_height
        fill_background(self.attr_handle, @paint_gc.attr_handle, rect)
      end
      if (!(@insert_item).nil? && !@insert_item.is_disposed)
        item_rect = @insert_item.get_image_bounds(0).union(@insert_item.get_bounds)
        client_rect = get_client_area
        x = client_rect.attr_x + client_rect.attr_width
        pos_y = @insert_before ? item_rect.attr_y : item_rect.attr_y + item_rect.attr_height - 1
        @paint_gc.draw_line(item_rect.attr_x, pos_y, x, pos_y)
      end
      if ((current_gc).nil?)
        @paint_gc.dispose
        @paint_gc = nil
      end
      return result
    end
    
    typesig { [TreeItem, ::Java::Boolean] }
    def check_data(item, redraw)
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
        if (redraw)
          if (!set_scroll_width(item))
            item.redraw(OS.attr_k_data_browser_no_item)
          end
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
        return check_bits(style, SWT::SINGLE, SWT::MULTI, 0, 0, 0, 0)
      end
    }
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [TreeItem, ::Java::Int, ::Java::Boolean] }
    def clear(parent_item, index, all)
      ids = (parent_item).nil? ? @child_ids : parent_item.attr_child_ids
      item = __get_item(ids[index], false)
      if (!(item).nil?)
        item.clear
        if (all)
          clear_all(item, true)
        else
          container = (parent_item).nil? ? OS.attr_k_data_browser_no_item : parent_item.attr_id
          OS._update_data_browser_items(self.attr_handle, container, 1, Array.typed(::Java::Int).new([item.attr_id]), OS.attr_k_data_browser_item_no_property, OS.attr_k_data_browser_no_item)
        end
      end
    end
    
    typesig { [TreeItem, ::Java::Boolean] }
    def clear_all(parent_item, all)
      update = !@in_clear_all
      count = get_item_count(parent_item)
      if ((count).equal?(0))
        return
      end
      @in_clear_all = true
      ids = (parent_item).nil? ? @child_ids : parent_item.attr_child_ids
      i = 0
      while i < count
        item = __get_item(ids[i], false)
        if (!(item).nil?)
          item.clear
          if (all)
            clear_all(item, true)
          end
        end
        i += 1
      end
      if (update)
        OS._update_data_browser_items(self.attr_handle, 0, 0, nil, OS.attr_k_data_browser_item_no_property, OS.attr_k_data_browser_no_item)
        @in_clear_all = false
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
      count = get_item_count(nil)
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
          level_indent = DISCLOSURE_COLUMN_LEVEL_INDENT
          if (OS::VERSION >= 0x1040)
            metric = Array.typed(::Java::Float).new(1) { 0.0 }
            OS._data_browser_get_metric(self.attr_handle, OS.attr_k_data_browser_metric_disclosure_column_per_depth_gap, nil, metric)
            level_indent = RJava.cast_to_int(metric[0])
          end
          gc = SwtGC.new(self)
          width = calculate_width(@child_ids, gc, true, 0, level_indent)
          gc.dispose
          width += get_inset_width(@column_id, true)
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
        height = @visible_count * get_item_height + get_header_height
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
        inset = 4
        OS._data_browser_set_metric(self.attr_handle, OS.attr_k_data_browser_metric_cell_content_inset, false, inset)
        OS._data_browser_set_metric(self.attr_handle, OS.attr_k_data_browser_metric_disclosure_column_edge_inset, false, inset)
        OS._data_browser_set_metric(self.attr_handle, OS.attr_k_data_browser_metric_disclosure_triangle_and_content_gap, false, inset)
        OS._data_browser_set_metric(self.attr_handle, OS.attr_k_data_browser_metric_icon_and_text_gap, false, inset)
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
      OS._set_data_browser_list_view_disclosure_column(self.attr_handle, @column_id, false)
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
        if ((index).equal?(0))
          disclosure = Array.typed(::Java::Int).new(1) { 0 }
          expandable_rows = Array.typed(::Java::Boolean).new(1) { false }
          OS._get_data_browser_list_view_disclosure_column(self.attr_handle, disclosure, expandable_rows)
          OS._set_data_browser_list_view_disclosure_column(self.attr_handle, column.attr_id, expandable_rows[0])
        end
      end
      if ((@column_count).equal?(@columns.attr_length))
        new_columns = Array.typed(TreeColumn).new(@column_count + 4) { nil }
        System.arraycopy(@columns, 0, new_columns, 0, @columns.attr_length)
        @columns = new_columns
      end
      System.arraycopy(@columns, index, @columns, index + 1, ((@column_count += 1) - 1) - index)
      @columns[index] = column
      if (@column_count > 1)
        i = 0
        while i < @items.attr_length
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
    end
    
    typesig { [TreeItem, TreeItem, ::Java::Int] }
    def create_item(item, parent_item, index)
      count = get_item_count(parent_item)
      if ((index).equal?(-1))
        index = count
      end
      if (!(0 <= index && index <= count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      id = __get_id
      if (id > @items.attr_length)
        new_items = Array.typed(TreeItem).new(id + 4) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
      end
      item.attr_id = id
      @items[id - 1] = item
      ids = (parent_item).nil? ? @child_ids : parent_item.attr_child_ids
      if ((ids).nil? || count + 1 > ids.attr_length)
        new_ids = Array.typed(::Java::Int).new(count + 4) { 0 }
        if (!(ids).nil?)
          System.arraycopy(ids, 0, new_ids, 0, ids.attr_length)
        end
        ids = new_ids
        if ((parent_item).nil?)
          @child_ids = ids
        else
          parent_item.attr_child_ids = ids
        end
      end
      System.arraycopy(ids, index, ids, index + 1, ids.attr_length - index - 1)
      ids[index] = id
      if (!(parent_item).nil?)
        parent_item.attr_item_count += 1
      end
      if ((parent_item).nil? || (parent_item.get_expanded))
        parent_id = (parent_item).nil? ? OS.attr_k_data_browser_no_item : parent_item.attr_id
        if (!(OS._add_data_browser_items(self.attr_handle, parent_id, 1, Array.typed(::Java::Int).new([item.attr_id]), OS.attr_k_data_browser_item_no_property)).equal?(OS.attr_no_err))
          @items[id - 1] = nil
          System.arraycopy(ids, index + 1, ids, index, ids.attr_length - index - 1)
          error(SWT::ERROR_ITEM_NOT_ADDED)
        end
        @visible_count += 1
      else
        # Bug in the Macintosh.  When the first child of a tree item is
        # added and the parent is not expanded, the parent does not
        # redraw to show the expander.  The fix is to force a redraw.
        if (!(parent_item).nil? && (parent_item.attr_item_count).equal?(1))
          parent_item.redraw(OS.attr_k_data_browser_no_item)
        end
      end
    end
    
    typesig { [::Java::Int] }
    def create_scroll_bar(style)
      return create_standard_bar(style)
    end
    
    typesig { [] }
    def create_widget
      super
      @items = Array.typed(TreeItem).new(4) { nil }
      @columns = Array.typed(TreeColumn).new(4) { nil }
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
    
    typesig { [] }
    # Deselects all selected items in the receiver.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def deselect_all
      check_widget
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
      OS._set_data_browser_selected_items(self.attr_handle, 0, nil, OS.attr_k_data_browser_items_remove)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        OS._set_data_browser_selection_flags(self.attr_handle, selection_flags[0])
      end
      @ignore_select = false
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
      OS._set_data_browser_selected_items(self.attr_handle, 1, Array.typed(::Java::Int).new([item.attr_id]), OS.attr_k_data_browser_items_remove)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        OS._set_data_browser_selection_flags(self.attr_handle, selection_flags[0])
      end
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
        disclosure = Array.typed(::Java::Int).new(1) { 0 }
        expandable_rows = Array.typed(::Java::Boolean).new(1) { false }
        OS._get_data_browser_list_view_disclosure_column(self.attr_handle, disclosure, expandable_rows)
        if ((disclosure[0]).equal?(column.attr_id))
          first_column = @columns[1]
          first_column.attr_style &= ~(SWT::LEFT | SWT::RIGHT | SWT::CENTER)
          first_column.attr_style |= SWT::LEFT
          first_column.update_header
          OS._set_data_browser_list_view_disclosure_column(self.attr_handle, first_column.attr_id, expandable_rows[0])
        end
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
    
    typesig { [TreeItem] }
    def destroy_item(item)
      parent_item = item.attr_parent_item
      if ((parent_item).nil? || parent_item.get_expanded)
        parent_id = (parent_item).nil? ? OS.attr_k_data_browser_no_item : parent_item.attr_id
        @ignore_expand = true
        if (!(OS._remove_data_browser_items(self.attr_handle, parent_id, 1, Array.typed(::Java::Int).new([item.attr_id]), 0)).equal?(OS.attr_no_err))
          error(SWT::ERROR_ITEM_NOT_REMOVED)
        end
        @visible_count -= 1
        @ignore_expand = false
      end
      # Bug in the Macintosh.  When the last child of a tree item is
      # removed and the parent is not expanded, the parent does not
      # redraw to remove the expander.  The fix is to force a redraw.
      if (!(parent_item).nil? && !parent_item.get_expanded && parent_item.attr_item_count > 0)
        parent_item.redraw(OS.attr_k_data_browser_no_item)
      end
      # TEMPORARY CODE
      release_item(item, false)
      set_scroll_width(true)
      fix_scroll_bar
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
      if (id < 0)
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
      item = __get_item(id, true)
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
      maximum = Math.max(0, get_item_height * @visible_count - get_client_area.attr_height)
      if (top[0] > maximum)
        OS._set_data_browser_scroll_position(self.attr_handle, maximum, left[0])
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
    # 
    # @since 3.1
    def get_header_visible
      check_widget
      height = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_data_browser_list_view_header_btn_height(self.attr_handle, height)
      return !(height[0]).equal?(0)
    end
    
    typesig { [::Java::Int] }
    def get_left_disclosure_inset(column_id)
      disclosure = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_data_browser_list_view_disclosure_column(self.attr_handle, disclosure, Array.typed(::Java::Boolean).new(1) { false })
      if ((disclosure[0]).equal?(column_id))
        width = 0
        metric1 = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_theme_metric(OS.attr_k_theme_metric_disclosure_triangle_width, metric1)
        width += metric1[0]
        if (OS::VERSION >= 0x1040)
          metric = Array.typed(::Java::Float).new(1) { 0.0 }
          OS._data_browser_get_metric(self.attr_handle, OS.attr_k_data_browser_metric_disclosure_column_edge_inset, nil, metric)
          width += RJava.cast_to_int(metric[0])
          OS._data_browser_get_metric(self.attr_handle, OS.attr_k_data_browser_metric_disclosure_triangle_and_content_gap, nil, metric)
          width += RJava.cast_to_int(metric[0])
        else
          width += DISCLOSURE_COLUMN_EDGE_INSET + DISCLOSURE_TRIANGLE_AND_CONTENT_GAP
        end
        return width
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def get_inset_width(column_id, left_inset)
      inset = 0
      if (OS::VERSION >= 0x1040)
        metric = Array.typed(::Java::Float).new(1) { 0.0 }
        OS._data_browser_get_metric(self.attr_handle, OS.attr_k_data_browser_metric_cell_content_inset, nil, metric)
        inset = RJava.cast_to_int(metric[0])
      else
        inset = CELL_CONTENT_INSET
      end
      width = 0
      disclosure = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_data_browser_list_view_disclosure_column(self.attr_handle, disclosure, Array.typed(::Java::Boolean).new(1) { false })
      if (!(disclosure[0]).equal?(column_id))
        width += inset * 2
      else
        width += inset
        if (left_inset)
          width += get_left_disclosure_inset(column_id)
        end
      end
      return width
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
      count = get_item_count(nil)
      if (index < 0 || index >= count)
        error(SWT::ERROR_INVALID_RANGE)
      end
      return __get_item(nil, index)
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
      disclosure = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_data_browser_list_view_disclosure_column(self.attr_handle, disclosure, Array.typed(::Java::Boolean).new(1) { false })
      height = Array.typed(::Java::Short).new(1) { 0 }
      if (!(OS._get_data_browser_table_view_row_height(self.attr_handle, height)).equal?(OS.attr_no_err))
        error(SWT::ERROR_CANNOT_GET_ITEM_HEIGHT)
      end
      rect = Rect.new
      pt = Org::Eclipse::Swt::Internal::Carbon::Point.new
      OS._set_pt(pt, RJava.cast_to_short(point.attr_x), RJava.cast_to_short(point.attr_y))
      if (0 < @last_hittest && @last_hittest <= @items.attr_length && !(@last_hittest_column).equal?(0))
        item = __get_item(@last_hittest, false)
        if (!(item).nil?)
          last_pos_column_id = @column_id
          i = 0
          while i < @column_count
            column = @columns[i]
            position = Array.typed(::Java::Int).new(1) { 0 }
            OS._get_data_browser_table_view_column_position(self.attr_handle, column.attr_id, position)
            if (!((self.attr_style & SWT::CHECK)).equal?(0))
              position[0] -= 1
            end
            if ((position[0]).equal?(@column_count - 1))
              last_pos_column_id = column.attr_id
              break
            end
            i += 1
          end
          if ((OS._get_data_browser_item_part_bounds(self.attr_handle, item.attr_id, last_pos_column_id, OS.attr_k_data_browser_property_enclosing_part, rect)).equal?(OS.attr_no_err))
            if (pt.attr_h > rect.attr_right)
              return nil
            end
          end
          if ((OS._get_data_browser_item_part_bounds(self.attr_handle, item.attr_id, disclosure[0], OS.attr_k_data_browser_property_disclosure_part, rect)).equal?(OS.attr_no_err))
            if (OS._pt_in_rect(pt, rect))
              return nil
            end
          end
          if ((OS._get_data_browser_item_part_bounds(self.attr_handle, item.attr_id, @last_hittest_column, OS.attr_k_data_browser_property_enclosing_part, rect)).equal?(OS.attr_no_err))
            rect.attr_bottom = RJava.cast_to_short((rect.attr_top + height[0]))
            if (OS._pt_in_rect(pt, rect))
              return item
            end
            if (rect.attr_top <= pt.attr_v && pt.attr_v < rect.attr_bottom)
              j = 0
              while j < @column_count
                if ((OS._get_data_browser_item_part_bounds(self.attr_handle, item.attr_id, @columns[j].attr_id, OS.attr_k_data_browser_property_enclosing_part, rect)).equal?(OS.attr_no_err))
                  rect.attr_bottom = RJava.cast_to_short((rect.attr_top + height[0]))
                  if (OS._pt_in_rect(pt, rect))
                    return item
                  end
                end
                j += 1
              end
              return nil
            end
          end
        end
      end
      # Find the item by approximating its row position
      top = Array.typed(::Java::Int).new(1) { 0 }
      left = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_data_browser_scroll_position(self.attr_handle, top, left)
      header = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_data_browser_list_view_header_btn_height(self.attr_handle, header)
      offsets = Array.typed(::Java::Int).new([0, 1, -1])
      i = 0
      while i < offsets.attr_length
        row = (top[0] - header[0] + point.attr_y) / height[0] + offsets[i]
        if (row >= 0)
          item_id = Array.typed(::Java::Int).new(1) { 0 }
          result = OS._get_data_browser_table_view_item_id(self.attr_handle, row, item_id)
          if (!(result).equal?(OS.attr_no_err))
            return nil
          end
          item = __get_item(item_id[0], false)
          if ((item).nil?)
            return nil
          end
          if ((OS._get_data_browser_item_part_bounds(self.attr_handle, item.attr_id, disclosure[0], OS.attr_k_data_browser_property_disclosure_part, rect)).equal?(OS.attr_no_err))
            if (OS._pt_in_rect(pt, rect))
              return nil
            end
          end
          column_id = (@column_count).equal?(0) ? @column_id : @columns[0].attr_id
          if ((OS._get_data_browser_item_part_bounds(self.attr_handle, item.attr_id, column_id, OS.attr_k_data_browser_property_enclosing_part, rect)).equal?(OS.attr_no_err))
            rect.attr_bottom = RJava.cast_to_short((rect.attr_top + height[0]))
            if (rect.attr_top <= pt.attr_v && pt.attr_v < rect.attr_bottom)
              if ((@column_count).equal?(0))
                if (OS._pt_in_rect(pt, rect))
                  return item
                end
              else
                j = 0
                while j < @column_count
                  if ((OS._get_data_browser_item_part_bounds(self.attr_handle, item.attr_id, @columns[j].attr_id, OS.attr_k_data_browser_property_enclosing_part, rect)).equal?(OS.attr_no_err))
                    rect.attr_bottom = RJava.cast_to_short((rect.attr_top + height[0]))
                    if (OS._pt_in_rect(pt, rect))
                      return item
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
      return get_item_count(nil)
    end
    
    typesig { [TreeItem] }
    def get_item_count(parent_item)
      if ((parent_item).nil?)
        count = Array.typed(::Java::Int).new(1) { 0 }
        if ((OS._get_data_browser_item_count(self.attr_handle, OS.attr_k_data_browser_no_item, false, OS.attr_k_data_browser_item_any_state, count)).equal?(OS.attr_no_err))
          return count[0]
        end
        return 0
      end
      return parent_item.attr_item_count
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
      height = Array.typed(::Java::Short).new(1) { 0 }
      if (!(OS._get_data_browser_table_view_row_height(self.attr_handle, height)).equal?(OS.attr_no_err))
        error(SWT::ERROR_CANNOT_GET_ITEM_HEIGHT)
      end
      return height[0]
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
      return get_items(nil)
    end
    
    typesig { [TreeItem] }
    def get_items(parent_item)
      if ((@items).nil?)
        return Array.typed(TreeItem).new(0) { nil }
      end
      count = get_item_count(parent_item)
      result = Array.typed(TreeItem).new(count) { nil }
      i = 0
      while i < count
        result[i] = __get_item(parent_item, i)
        i += 1
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
    # 
    # @since 3.1
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
      count = Array.typed(::Java::Int).new(1) { 0 }
      if (!(OS._get_data_browser_item_count(self.attr_handle, OS.attr_k_data_browser_no_item, true, OS.attr_k_data_browser_item_is_selected, count)).equal?(OS.attr_no_err))
        error(SWT::ERROR_CANNOT_GET_COUNT)
      end
      result = Array.typed(TreeItem).new(count[0]) { nil }
      if (count[0] > 0)
        ptr = OS._new_handle(0)
        if ((count[0]).equal?(1))
          if (!(OS._get_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, true, OS.attr_k_data_browser_item_is_selected, ptr)).equal?(OS.attr_no_err))
            error(SWT::ERROR_CANNOT_GET_SELECTION)
          end
          OS._hlock(ptr)
          id = Array.typed(::Java::Int).new(1) { 0 }
          OS.memmove(id, ptr, 4)
          OS.memmove(id, id[0], 4)
          result[0] = __get_item(id[0], true)
          OS._hunlock(ptr)
        else
          get_selection(result, OS.attr_k_data_browser_no_item, ptr, 0)
        end
        OS._dispose_handle(ptr)
      end
      return result
    end
    
    typesig { [Array.typed(TreeItem), ::Java::Int, ::Java::Int, ::Java::Int] }
    def get_selection(result, item, ptr, index)
      OS._set_handle_size(ptr, 0)
      if (!(OS._get_data_browser_items(self.attr_handle, item, false, OS.attr_k_data_browser_item_is_selected, ptr)).equal?(OS.attr_no_err))
        error(SWT::ERROR_CANNOT_GET_SELECTION)
      end
      count = OS._get_handle_size(ptr) / 4
      if (count > 0)
        OS._hlock(ptr)
        id = Array.typed(::Java::Int).new(count) { 0 }
        OS.memmove(id, ptr, 4)
        OS.memmove(id, id[0], count * 4)
        i = 0
        while i < count
          result[((index += 1) - 1)] = __get_item(id[count - i - 1], true)
          i += 1
        end
        OS._hunlock(ptr)
        if ((index).equal?(result.attr_length))
          return index
        end
      end
      OS._set_handle_size(ptr, 0)
      if (!(OS._get_data_browser_items(self.attr_handle, item, false, OS.attr_k_data_browser_container_is_open, ptr)).equal?(OS.attr_no_err))
        error(SWT::ERROR_CANNOT_GET_SELECTION)
      end
      count = OS._get_handle_size(ptr) / 4
      if (count > 0)
        OS._hlock(ptr)
        id = Array.typed(::Java::Int).new(count) { 0 }
        OS.memmove(id, ptr, 4)
        OS.memmove(id, id[0], count * 4)
        i = 0
        while i < count
          index = get_selection(result, id[count - i - 1], ptr, index)
          if ((index).equal?(result.attr_length))
            return index
          end
          i += 1
        end
        OS._hunlock(ptr)
      end
      return index
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
      # Find the topItem by calculating its row position
      top = Array.typed(::Java::Int).new(1) { 0 }
      left = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_data_browser_scroll_position(self.attr_handle, top, left)
      row = top[0] / get_item_height
      item_id = Array.typed(::Java::Int).new(1) { 0 }
      result = OS._get_data_browser_table_view_item_id(self.attr_handle, row, item_id)
      if ((result).equal?(OS.attr_no_err))
        return __get_item(item_id[0], false)
      end
      return nil
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
                width = column.attr_last_width + get_left_disclosure_inset(column.attr_id)
                if (start_x <= x && x < start_x + width)
                  tool_tip_text = RJava.cast_to_string(column.attr_tool_tip_text)
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
              if (0 < @last_hittest && @last_hittest <= @items.attr_length && !(@last_hittest_column).equal?(0))
                if ((OS._get_data_browser_item_part_bounds(self.attr_handle, @last_hittest, @last_hittest_column, OS.attr_k_data_browser_property_content_part, rect)).equal?(OS.attr_no_err))
                  item = __get_item(@last_hittest, false)
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
                inset = get_inset_width(column_id, false)
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
                  tool_tip_text = RJava.cast_to_string(item.get_text(column_index))
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
      callbacks.attr_v1_item_compare_callback = self.attr_display.attr_item_compare_proc
      OS._set_data_browser_callbacks(self.attr_handle, callbacks)
      custom = DataBrowserCustomCallbacks.new
      custom.attr_version = OS.attr_k_data_browser_latest_custom_callbacks
      OS._init_data_browser_custom_callbacks(custom)
      custom.attr_v1_draw_item_callback = self.attr_display.attr_draw_item_proc
      custom.attr_v1_hit_test_callback = self.attr_display.attr_hit_test_proc
      custom.attr_v1_tracking_callback = self.attr_display.attr_tracking_proc
      OS._set_data_browser_custom_callbacks(self.attr_handle, custom)
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
      return __index_of(nil, item)
    end
    
    typesig { [TreeItem, TreeItem] }
    def __index_of(parent_item, item)
      ids = (parent_item).nil? ? @child_ids : parent_item.attr_child_ids
      if (!(ids).nil?)
        i = 0
        while i < ids.attr_length
          if ((ids[i]).equal?(item.attr_id))
            return i
          end
          i += 1
        end
      end
      return -1
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def item_compare_proc(browser, item_one, item_two, sort_property)
      create = !((self.attr_style & SWT::VIRTUAL)).equal?(0) && !(@sort_column).nil? && !@sort_column.is_disposed && (@sort_direction).equal?(SWT::DOWN)
      item1 = __get_item(item_one, create)
      item2 = __get_item(item_two, create)
      if ((item1).nil? || (item2).nil?)
        return OS.attr_no_err
      end
      index1 = __index_of(item1.attr_parent_item, item1)
      index2 = __index_of(item2.attr_parent_item, item2)
      if ((@sort_direction).equal?(SWT::DOWN) && !(@sort_column).nil?)
        return index1 > index2 ? 1 : 0
      end
      return index1 < index2 ? 1 : 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def item_data_proc(browser, id, property, item_data, set_value)
      case (property)
      when CHECK_COLUMN_ID
        item = __get_item(id, true)
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
            item.redraw(Tree::CHECK_COLUMN_ID)
          end
        else
          the_data = OS.attr_k_theme_button_off
          if (item.attr_checked)
            the_data = item.attr_grayed ? OS.attr_k_theme_button_mixed : OS.attr_k_theme_button_on
          end
          OS._set_data_browser_item_data_button_value(item_data, RJava.cast_to_short(the_data))
        end
      when OS.attr_k_data_browser_item_is_container_property
        item = __get_item(id, true)
        if (item.attr_item_count > 0)
          OS._set_data_browser_item_data_boolean_value(item_data, true)
        end
      end
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def item_notification_proc(browser, id, message)
      if ((message).equal?(OS.attr_k_data_browser_user_state_changed))
        resized = false
        width = Array.typed(::Java::Short).new(1) { 0 }
        new_columns = get_columns
        i = 0
        while i < @column_count
          column = new_columns[i]
          if (!column.is_disposed)
            OS._get_data_browser_table_view_named_column_width(self.attr_handle, column.attr_id, width)
            if (!(width[0]).equal?(column.attr_last_width))
              column.resized(width[0])
              resized = true
            end
          end
          if (!column.is_disposed)
            position = Array.typed(::Java::Int).new(1) { 0 }
            OS._get_data_browser_table_view_column_position(self.attr_handle, column.attr_id, position)
            if (!(position[0]).equal?(column.attr_last_position))
              column.attr_last_position = position[0]
              order = !((self.attr_style & SWT::CHECK)).equal?(0) ? position[0] - 1 : position[0]
              if ((order).equal?(0))
                disclosure = Array.typed(::Java::Int).new(1) { 0 }
                expandable_rows = Array.typed(::Java::Boolean).new(1) { false }
                OS._get_data_browser_list_view_disclosure_column(self.attr_handle, disclosure, expandable_rows)
                if (!(disclosure[0]).equal?(column.attr_id))
                  OS._set_data_browser_list_view_disclosure_column(self.attr_handle, column.attr_id, expandable_rows[0])
                end
              end
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
              column = @columns[i_]
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
      catch(:break_case) do
        case (message)
        when OS.attr_k_data_browser_item_selected, OS.attr_k_data_browser_item_deselected
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
            event.attr_item = __get_item(id, true)
            post_event(SWT::Selection, event)
          end
        when OS.attr_k_data_browser_item_double_clicked
          @was_selected = true
          if ((self.attr_display.attr_click_count).equal?(2))
            event = Event.new
            event.attr_item = __get_item(id, true)
            post_event(SWT::DefaultSelection, event)
          end
        when OS.attr_k_data_browser_container_closing
          ptr = OS._new_handle(0)
          if ((OS._get_data_browser_items(self.attr_handle, id, false, OS.attr_k_data_browser_item_any_state, ptr)).equal?(OS.attr_no_err))
            count = OS._get_handle_size(ptr) / 4
            @visible_count -= count
          end
          OS._dispose_handle(ptr)
          # Bug in the Macintosh.  For some reason, if the selected sub items of an item
          # get a kDataBrowserItemDeselected notificaton when the item is collapsed, a
          # call to GetDataBrowserSelectionAnchor () will cause a segment fault.  The
          # fix is to deselect these items ignoring kDataBrowserItemDeselected and then
          # issue a selection event.
          ptr = OS._new_handle(0)
          if ((OS._get_data_browser_items(self.attr_handle, id, true, OS.attr_k_data_browser_item_is_selected, ptr)).equal?(OS.attr_no_err))
            count = OS._get_handle_size(ptr) / 4
            if (count > 0)
              ids = Array.typed(::Java::Int).new(count) { 0 }
              OS._hlock(ptr)
              start = Array.typed(::Java::Int).new(1) { 0 }
              OS.memmove(start, ptr, 4)
              OS.memmove(ids, start[0], count * 4)
              OS._hunlock(ptr)
              old_ignore = @ignore_select
              @ignore_select = true
              # Bug in the Macintosh.  When the DataBrowser selection flags includes
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
              OS._set_data_browser_selected_items(self.attr_handle, ids.attr_length, ids, OS.attr_k_data_browser_items_remove)
              if (!((self.attr_style & SWT::SINGLE)).equal?(0))
                OS._set_data_browser_selection_flags(self.attr_handle, selection_flags[0])
              end
              @ignore_select = old_ignore
              if (!@ignore_select)
                event = Event.new
                event.attr_item = __get_item(id, true)
                send_event(SWT::Selection, event)
              end
            end
          end
          OS._dispose_handle(ptr)
        when OS.attr_k_data_browser_container_closed
          parent_item = __get_item(id, true)
          if ((parent_item).nil?)
            throw :break_case, :thrown
          end # can happen when removing all items
          ids = parent_item.attr_child_ids
          if (!(ids).nil?)
            i = 0
            while i < parent_item.attr_item_count
              item = __get_item(ids[i], false)
              if ((item).nil?)
                ids[i] = 0
              end
              i += 1
            end
          end
          @was_expanded = true
          if (!@ignore_expand)
            event = Event.new
            event.attr_item = parent_item
            send_event(SWT::Collapse, event)
            if (is_disposed)
              throw :break_case, :thrown
            end
            set_scroll_width(true)
            fix_scroll_bar
          end
        when OS.attr_k_data_browser_container_opened
          item = __get_item(id, true)
          @was_expanded = true
          if (!@ignore_expand)
            event = Event.new
            event.attr_item = item
            begin
              item.attr_state |= EXPANDING
              send_event(SWT::Expand, event)
              if (is_disposed)
                throw :break_case, :thrown
              end
            ensure
              item.attr_state &= ~EXPANDING
            end
          end
          new_id_count = 0
          i = 0
          while i < item.attr_item_count
            if ((item.attr_child_ids[i]).equal?(0))
              new_id_count += 1
            end
            i += 1
          end
          if (new_id_count > 0)
            new_ids = __get_ids(new_id_count)
            index = 0
            i_ = 0
            while i_ < item.attr_item_count
              if ((item.attr_child_ids[i_]).equal?(0))
                item.attr_child_ids[i_] = new_ids[((index += 1) - 1)]
              end
              i_ += 1
            end
          end
          OS._add_data_browser_items(self.attr_handle, id, item.attr_item_count, item.attr_child_ids, OS.attr_k_data_browser_item_no_property)
          @visible_count += item.attr_item_count
          if (!@ignore_expand)
            set_scroll_width(false, item.attr_child_ids, false)
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
            id = item_info.attr_v0_item
            tree_item = __get_item(id, false)
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
                  text = tree_item.get_text(column_index)
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
      if (!(self.attr_accessible).nil?)
        code = self.attr_accessible.internal_k_event_accessible_get_named_attribute(next_handler, the_event, code)
      end
      return code
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
            item = __get_item(first[0], true)
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_down(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      @was_selected = @was_expanded = false
      result = OS._call_next_event_handler(next_handler, the_event)
      if (is_disposed)
        return OS.attr_no_err
      end
      if (!@was_selected && !@was_expanded)
        if (OS._is_data_browser_item_selected(self.attr_handle, @last_hittest))
          if (0 < @last_hittest && @last_hittest <= @items.attr_length)
            event = Event.new
            event.attr_item = __get_item(@last_hittest, true)
            post_event(SWT::Selection, event)
          end
        end
      end
      @was_selected = @was_expanded = false
      return result
    end
    
    typesig { [TreeItem, ::Java::Boolean] }
    def release_item(item, release)
      id = item.attr_id
      if (release)
        item.release(false)
      end
      @items[id - 1] = nil
      parent_item = item.attr_parent_item
      ids = (parent_item).nil? ? @child_ids : parent_item.attr_child_ids
      index = -1
      i = 0
      while i < ids.attr_length
        if ((ids[i]).equal?(id))
          index = i
          break
        end
        i += 1
      end
      if (!(index).equal?(-1))
        System.arraycopy(ids, 0, ids, 0, index)
        System.arraycopy(ids, index + 1, ids, index, ids.attr_length - index - 1)
        ids[ids.attr_length - 1] = 0
      end
      if (!(parent_item).nil?)
        parent_item.attr_item_count -= 1
        if ((parent_item.attr_item_count).equal?(0))
          parent_item.attr_child_ids = nil
        end
      end
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def release_items(ids)
      if ((ids).nil?)
        return
      end
      i = ids.attr_length - 1
      while i >= 0
        item = __get_item(ids[i], false)
        if (!(item).nil?)
          release_items(item.attr_child_ids)
          if (!is_disposed)
            release_item(item, true)
          end
        end
        i -= 1
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
      @child_ids = nil
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
    def release_widget
      super
      @sort_column = nil
      @paint_gc = nil
      @image_bounds = nil
      @show_item = nil
      # Feature in the Mac. When RemoveDataBrowserItems() is used
      # to remove items, item notification callbacks are issued with
      # the message kDataBrowserItemRemoved  When many items are
      # removed, this is slow.  The fix is to temporarily remove
      # the item notification callback.
      callbacks = DataBrowserCallbacks.new
      OS._get_data_browser_callbacks(self.attr_handle, callbacks)
      callbacks.attr_v1_item_notification_callback = 0
      callbacks.attr_v1_item_compare_callback = 0
      OS._set_data_browser_callbacks(self.attr_handle, callbacks)
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
      @child_ids = nil
      # Feature in the Mac. When RemoveDataBrowserItems() is used
      # to remove items, item notification callbacks are issued with
      # the message kDataBrowserItemRemoved  When many items are
      # removed, this is slow.  The fix is to temporarily remove
      # the item notification callback.
      callbacks = DataBrowserCallbacks.new
      OS._get_data_browser_callbacks(self.attr_handle, callbacks)
      callbacks.attr_v1_item_notification_callback = 0
      callbacks.attr_v1_item_compare_callback = 0
      OS._set_data_browser_callbacks(self.attr_handle, callbacks)
      @ignore_expand = @ignore_select = true
      result = OS._remove_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, 0, nil, 0)
      @ignore_expand = @ignore_select = false
      callbacks.attr_v1_item_notification_callback = self.attr_display.attr_item_notification_proc
      callbacks.attr_v1_item_compare_callback = self.attr_display.attr_item_compare_proc
      OS._set_data_browser_callbacks(self.attr_handle, callbacks)
      if (!(result).equal?(OS.attr_no_err))
        error(SWT::ERROR_ITEM_NOT_REMOVED)
      end
      OS._set_data_browser_scroll_position(self.attr_handle, 0, 0)
      @anchor_first = @anchor_last = 0
      @visible_count = 0
      set_scroll_width(true)
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
    
    typesig { [::Java::Int] }
    def reset_visible_region(control)
      super(control)
      if (!(@show_item).nil? && !@show_item.is_disposed)
        show_item(@show_item, true)
      end
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
        old_mark.redraw(OS.attr_k_data_browser_no_item)
      end
      if (!(item).nil?)
        item.redraw(OS.attr_k_data_browser_no_item)
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
      @ignore_select = true
      OS._set_data_browser_selected_items(self.attr_handle, 0, nil, OS.attr_k_data_browser_items_assign)
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
      show_item(item, false)
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
      OS._set_data_browser_selected_items(self.attr_handle, 1, Array.typed(::Java::Int).new([item.attr_id]), OS.attr_k_data_browser_items_assign)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        OS._set_data_browser_selection_flags(self.attr_handle, selection_flags[0])
      end
      @ignore_select = false
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
      # Ensure that the selection is visible when the tree is resized
      # from a zero size to a size that can show the selection.
      result = super(x, y, width, height, move, resize, events)
      if (!(@show_item).nil? && !@show_item.is_disposed)
        show_item(@show_item, true)
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
        disclosure = Array.typed(::Java::Int).new(1) { 0 }
        expandable_rows = Array.typed(::Java::Boolean).new(1) { false }
        OS._get_data_browser_list_view_disclosure_column(self.attr_handle, disclosure, expandable_rows)
        first_column = @columns[order[0]]
        if (!(disclosure[0]).equal?(first_column.attr_id))
          OS._set_data_browser_list_view_disclosure_column(self.attr_handle, first_column.attr_id, expandable_rows[0])
        end
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
      set_scroll_width(true)
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
      height = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_data_browser_list_view_header_btn_height(self.attr_handle, height)
      if (!((!(height[0]).equal?(0))).equal?(show))
        OS._set_data_browser_list_view_header_btn_height(self.attr_handle, RJava.cast_to_short((show ? @header_height : 0)))
        invalidate_visible_region(self.attr_handle)
      end
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
    def set_item_count(count)
      check_widget
      count = Math.max(0, count)
      set_item_count(nil, count)
    end
    
    typesig { [TreeItem, ::Java::Int] }
    def set_item_count(parent_item, count)
      item_count = get_item_count(parent_item)
      if ((count).equal?(item_count))
        return
      end
      set_redraw(false)
      top = Array.typed(::Java::Int).new(1) { 0 }
      left = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_data_browser_scroll_position(self.attr_handle, top, left)
      callbacks = DataBrowserCallbacks.new
      OS._get_data_browser_callbacks(self.attr_handle, callbacks)
      callbacks.attr_v1_item_notification_callback = 0
      callbacks.attr_v1_item_compare_callback = 0
      OS._set_data_browser_callbacks(self.attr_handle, callbacks)
      ids = (parent_item).nil? ? @child_ids : parent_item.attr_child_ids
      remove_count = 0
      if (count < item_count)
        remove_ids = Array.typed(::Java::Int).new(item_count - count) { 0 }
        index = ids.attr_length - 1
        while index >= count
          id = ids[index]
          if (!(id).equal?(0))
            item = __get_item(id, false)
            if (!(item).nil? && !item.is_disposed)
              item.dispose
            else
              if ((parent_item).nil? || parent_item.get_expanded)
                remove_ids[remove_ids.attr_length - remove_count - 1] = id
                remove_count += 1
                @visible_count -= 1
              end
            end
          end
          index -= 1
        end
        if (!(remove_count).equal?(0) && !(remove_count).equal?(remove_ids.attr_length))
          tmp = Array.typed(::Java::Int).new(remove_count) { 0 }
          System.arraycopy(remove_ids, remove_ids.attr_length - remove_count, tmp, 0, remove_count)
          remove_ids = tmp
        end
        if (!(remove_count).equal?(0) && !(OS._remove_data_browser_items(self.attr_handle, OS.attr_k_data_browser_no_item, remove_count, remove_ids, 0)).equal?(OS.attr_no_err))
          error(SWT::ERROR_ITEM_NOT_REMOVED)
        end
        # TODO - move shrink to paint event
        # shrink items array
        last_index = @items.attr_length
        i = @items.attr_length
        while i > 0
          if (!(@items[i - 1]).nil?)
            last_index = i
            break
          end
          i -= 1
        end
        if (last_index < @items.attr_length - 4)
          length_ = Math.max(4, (last_index + 3) / 4 * 4)
          new_items = Array.typed(TreeItem).new(length_) { nil }
          System.arraycopy(@items, 0, new_items, 0, Math.min(@items.attr_length, last_index))
          @items = new_items
        end
      end
      if (!(parent_item).nil?)
        parent_item.attr_item_count = count
      end
      length_ = Math.max(4, (count + 3) / 4 * 4)
      new_ids = Array.typed(::Java::Int).new(length_) { 0 }
      if (!(ids).nil?)
        System.arraycopy(ids, 0, new_ids, 0, Math.min(count, item_count))
      end
      ids = new_ids
      if ((parent_item).nil?)
        @child_ids = new_ids
      else
        parent_item.attr_child_ids = new_ids
      end
      if (count > item_count)
        if (((get_style & SWT::VIRTUAL)).equal?(0))
          delta = Math.max(4, (count - item_count + 3) / 4 * 4)
          new_items = Array.typed(TreeItem).new(@items.attr_length + delta) { nil }
          System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
          @items = new_items
          i = item_count
          while i < count
            @items[i] = TreeItem.new(self, parent_item, SWT::NONE, i, true)
            i += 1
          end
        else
          if ((parent_item).nil? || parent_item.get_expanded)
            parent_id = (parent_item).nil? ? OS.attr_k_data_browser_no_item : parent_item.attr_id
            add_ids = __get_ids(count - item_count)
            if (!(OS._add_data_browser_items(self.attr_handle, parent_id, add_ids.attr_length, add_ids, OS.attr_k_data_browser_item_no_property)).equal?(OS.attr_no_err))
              error(SWT::ERROR_ITEM_NOT_ADDED)
            end
            @visible_count += (count - item_count)
            System.arraycopy(add_ids, 0, ids, item_count, add_ids.attr_length)
          end
        end
      end
      callbacks.attr_v1_item_notification_callback = self.attr_display.attr_item_notification_proc
      callbacks.attr_v1_item_compare_callback = self.attr_display.attr_item_compare_proc
      OS._set_data_browser_callbacks(self.attr_handle, callbacks)
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0) && !(@sort_column).nil? && !@sort_column.is_disposed && (@sort_direction).equal?(SWT::DOWN))
        OS._update_data_browser_items(self.attr_handle, 0, 0, nil, OS.attr_k_data_browser_item_no_property, OS.attr_k_data_browser_no_item)
      end
      set_redraw(true)
      if ((item_count).equal?(0) && !(parent_item).nil?)
        parent_item.redraw(OS.attr_k_data_browser_no_item)
      end
      if (!(remove_count).equal?(0))
        fix_scroll_bar
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
    # 
    # @since 3.1
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
        set_scroll_width(true)
      end
    end
    
    typesig { [TreeItem] }
    def set_scroll_width(item)
      if (@ignore_redraw || !(self.attr_draw_count).equal?(0))
        return false
      end
      if (!(@column_count).equal?(0))
        return false
      end
      parent_item = item.attr_parent_item
      if (!(parent_item).nil? && !parent_item.__get_expanded)
        return false
      end
      gc = SwtGC.new(self)
      new_width = item.calculate_width(0, gc)
      gc.dispose
      new_width += get_inset_width(@column_id, false)
      width = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_data_browser_table_view_named_column_width(self.attr_handle, @column_id, width)
      if (width[0] < new_width)
        OS._set_data_browser_table_view_named_column_width(self.attr_handle, @column_id, RJava.cast_to_short(new_width))
        return true
      end
      return false
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
    
    typesig { [::Java::Boolean] }
    def set_scroll_width(set)
      return set_scroll_width(set, @child_ids, true)
    end
    
    typesig { [::Java::Boolean, Array.typed(::Java::Int), ::Java::Boolean] }
    def set_scroll_width(set, child_ids, recurse)
      if (@ignore_redraw || !(self.attr_draw_count).equal?(0))
        return false
      end
      if (!(@column_count).equal?(0) || (child_ids).nil?)
        return false
      end
      gc = SwtGC.new(self)
      new_width = calculate_width(child_ids, gc, recurse, 0, 0)
      gc.dispose
      new_width += get_inset_width(@column_id, false)
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
      deselect_all
      length_ = items.attr_length
      if ((length_).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length_ > 1))
        return
      end
      count = 0
      ids = Array.typed(::Java::Int).new(length_) { 0 }
      i = 0
      while i < length_
        if (!(items[i]).nil?)
          if (items[i].is_disposed)
            error(SWT::ERROR_INVALID_ARGUMENT)
          end
          ids[((count += 1) - 1)] = items[i].attr_id
          show_item(items[i], false)
        end
        i += 1
      end
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
      OS._set_data_browser_selected_items(self.attr_handle, count, ids, OS.attr_k_data_browser_items_assign)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        OS._set_data_browser_selection_flags(self.attr_handle, selection_flags[0])
      end
      @ignore_select = false
      if (length_ > 0)
        index = -1
        i_ = 0
        while i_ < items.attr_length
          if (!(items[i_]).nil?)
            index = i_
            break
          end
          i_ += 1
        end
        if (!(index).equal?(-1))
          show_item(items[index], true)
        end
      end
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
      if ((column).nil?)
        if (!(@sort_column).nil? && !@sort_column.is_disposed && !(@sort_direction).equal?(SWT::NONE))
          OS._set_data_browser_sort_order(self.attr_handle, RJava.cast_to_short(OS.attr_k_data_browser_order_increasing))
          @sort_column = nil
          OS._set_data_browser_sort_property(self.attr_handle, 0)
        end
      end
      @sort_column = column
      if (!(@sort_column).nil? && !@sort_column.is_disposed && !(@sort_direction).equal?(SWT::NONE))
        OS._set_data_browser_sort_property(self.attr_handle, @sort_column.attr_id)
        order = (@sort_direction).equal?(SWT::DOWN) ? OS.attr_k_data_browser_order_decreasing : OS.attr_k_data_browser_order_increasing
        OS._set_data_browser_sort_order(self.attr_handle, RJava.cast_to_short(order))
      end
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
      if (!(@sort_column).nil? && !@sort_column.is_disposed)
        if ((@sort_direction).equal?(SWT::NONE))
          OS._set_data_browser_sort_order(self.attr_handle, RJava.cast_to_short(OS.attr_k_data_browser_order_increasing))
          column = @sort_column
          @sort_column = nil
          OS._set_data_browser_sort_property(self.attr_handle, 0)
          @sort_column = column
        else
          OS._set_data_browser_sort_property(self.attr_handle, 0)
          OS._set_data_browser_sort_property(self.attr_handle, @sort_column.attr_id)
          order = (@sort_direction).equal?(SWT::DOWN) ? OS.attr_k_data_browser_order_decreasing : OS.attr_k_data_browser_order_increasing
          OS._set_data_browser_sort_order(self.attr_handle, RJava.cast_to_short(order))
        end
      end
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
      show_item(item, false)
      item_height = get_item_height
      top = Array.typed(::Java::Int).new(1) { 0 }
      left = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_data_browser_scroll_position(self.attr_handle, top, left)
      index = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_data_browser_table_view_item_row(self.attr_handle, item.attr_id, index)
      top[0] = Math.max(0, Math.min(item_height * @visible_count + get_header_height - get_client_area.attr_height, index[0] * item_height))
      OS._set_data_browser_scroll_position(self.attr_handle, top[0], !(item.attr_parent_item).nil? ? left[0] : 0)
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
      show_item(item, true)
    end
    
    typesig { [TreeItem, ::Java::Boolean] }
    def show_item(item, scroll)
      count = 0
      parent_item = item.attr_parent_item
      while (!(parent_item).nil? && !parent_item.__get_expanded)
        count += 1
        parent_item = parent_item.attr_parent_item
      end
      index = 0
      parent_item = item.attr_parent_item
      path = Array.typed(TreeItem).new(count) { nil }
      while (!(parent_item).nil? && !parent_item.__get_expanded)
        path[((index += 1) - 1)] = parent_item
        parent_item = parent_item.attr_parent_item
      end
      i = path.attr_length - 1
      while i >= 0
        path[i].set_expanded(true)
        (i -= 1)
      end
      if (scroll)
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
          @show_item = item
          return
        end
        @show_item = nil
        item_rect = item.get_bounds
        if (!item_rect.is_empty)
          if (rect.contains(item_rect.attr_x, item_rect.attr_y) && rect.contains(item_rect.attr_x, item_rect.attr_y + item_rect.attr_height))
            return
          end
        end
        top = Array.typed(::Java::Int).new(1) { 0 }
        left = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_data_browser_scroll_position(self.attr_handle, top, left)
        column_id = !((self.attr_style & SWT::CHECK)).equal?(0) ? CHECK_COLUMN_ID : (@column_count).equal?(0) ? @column_id : @columns[0].attr_id
        options = OS.attr_k_data_browser_reveal_without_selecting
        # This code is intentionally commented, since kDataBrowserRevealAndCenterInView
        # does not scroll the item to the center always (it seems to scroll to the
        # end in some cases).
        # 
        # options |= OS.kDataBrowserRevealAndCenterInView;
        OS._reveal_data_browser_item(self.attr_handle, item.attr_id, column_id, options)
        new_top = Array.typed(::Java::Int).new(1) { 0 }
        new_left = Array.typed(::Java::Int).new(1) { 0 }
        if ((@column_count).equal?(0))
          fix_scroll = false
          content = Rect.new
          if ((OS._get_data_browser_item_part_bounds(self.attr_handle, item.attr_id, column_id, OS.attr_k_data_browser_property_content_part, content)).equal?(OS.attr_no_err))
            fix_scroll = content.attr_left < rect.attr_x || content.attr_left >= rect.attr_x + rect.attr_width
            if (!fix_scroll)
              gc = SwtGC.new(self)
              content_width = calculate_width(Array.typed(::Java::Int).new([item.attr_id]), gc, false, 0, 0)
              gc.dispose
              fix_scroll = content.attr_left + content_width > rect.attr_x + rect.attr_width
            end
          end
          if (fix_scroll)
            left_scroll = get_left_disclosure_inset(column_id)
            level_indent = DISCLOSURE_COLUMN_LEVEL_INDENT
            if (OS::VERSION >= 0x1040)
              metric = Array.typed(::Java::Float).new(1) { 0.0 }
              OS._data_browser_get_metric(self.attr_handle, OS.attr_k_data_browser_metric_disclosure_column_per_depth_gap, nil, metric)
              level_indent = RJava.cast_to_int(metric[0])
            end
            temp = item
            while (!(temp.attr_parent_item).nil?)
              left_scroll += level_indent
              temp = temp.attr_parent_item
            end
            OS._get_data_browser_scroll_position(self.attr_handle, new_top, new_left)
            OS._set_data_browser_scroll_position(self.attr_handle, new_top[0], left_scroll)
          end
        end
        # Bug in the Macintosh.  For some reason, when the DataBrowser is scrolled
        # by RevealDataBrowserItem(), the scrollbars are not redrawn.  The fix is to
        # force a redraw.
        OS._get_data_browser_scroll_position(self.attr_handle, new_top, new_left)
        if (!(self.attr_horizontal_bar).nil? && !(new_left[0]).equal?(left[0]))
          self.attr_horizontal_bar.redraw
        end
        if (!(self.attr_vertical_bar).nil? && !(new_top[0]).equal?(top[0]))
          self.attr_vertical_bar.redraw
        end
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
      # checkItems (false);
      # TODO - optimize
      selection = get_selection
      if (selection.attr_length > 0)
        show_item(selection[0], true)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def tracking_proc(browser, id, property, the_rect, start_pt, modifiers)
      return 1
    end
    
    private
    alias_method :initialize__tree, :initialize
  end
  
end
