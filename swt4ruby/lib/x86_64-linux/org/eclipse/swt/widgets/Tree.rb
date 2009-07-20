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
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
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
    
    # int
    attr_accessor :model_handle
    alias_method :attr_model_handle, :model_handle
    undef_method :model_handle
    alias_method :attr_model_handle=, :model_handle=
    undef_method :model_handle=
    
    attr_accessor :check_renderer
    alias_method :attr_check_renderer, :check_renderer
    undef_method :check_renderer
    alias_method :attr_check_renderer=, :check_renderer=
    undef_method :check_renderer=
    
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
    
    # int
    attr_accessor :ignore_cell
    alias_method :attr_ignore_cell, :ignore_cell
    undef_method :ignore_cell
    alias_method :attr_ignore_cell=, :ignore_cell=
    undef_method :ignore_cell=
    
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
    
    attr_accessor :image_list
    alias_method :attr_image_list, :image_list
    undef_method :image_list
    alias_method :attr_image_list=, :image_list=
    undef_method :image_list=
    
    attr_accessor :header_image_list
    alias_method :attr_header_image_list, :header_image_list
    undef_method :header_image_list
    alias_method :attr_header_image_list=, :header_image_list=
    undef_method :header_image_list=
    
    attr_accessor :first_custom_draw
    alias_method :attr_first_custom_draw, :first_custom_draw
    undef_method :first_custom_draw
    alias_method :attr_first_custom_draw=, :first_custom_draw=
    undef_method :first_custom_draw=
    
    attr_accessor :model_changed
    alias_method :attr_model_changed, :model_changed
    undef_method :model_changed
    alias_method :attr_model_changed=, :model_changed=
    undef_method :model_changed=
    
    attr_accessor :expand_all
    alias_method :attr_expand_all, :expand_all
    undef_method :expand_all
    alias_method :attr_expand_all=, :expand_all=
    undef_method :expand_all=
    
    attr_accessor :draw_state
    alias_method :attr_draw_state, :draw_state
    undef_method :draw_state
    alias_method :attr_draw_state=, :draw_state=
    undef_method :draw_state=
    
    attr_accessor :draw_flags
    alias_method :attr_draw_flags, :draw_flags
    undef_method :draw_flags
    alias_method :attr_draw_flags=, :draw_flags=
    undef_method :draw_flags=
    
    attr_accessor :draw_foreground
    alias_method :attr_draw_foreground, :draw_foreground
    undef_method :draw_foreground
    alias_method :attr_draw_foreground=, :draw_foreground=
    undef_method :draw_foreground=
    
    attr_accessor :owner_draw
    alias_method :attr_owner_draw, :owner_draw
    undef_method :owner_draw
    alias_method :attr_owner_draw=, :owner_draw=
    undef_method :owner_draw=
    
    attr_accessor :ignore_size
    alias_method :attr_ignore_size, :ignore_size
    undef_method :ignore_size
    alias_method :attr_ignore_size=, :ignore_size=
    undef_method :ignore_size=
    
    class_module.module_eval {
      const_set_lazy(:ID_COLUMN) { 0 }
      const_attr_reader  :ID_COLUMN
      
      const_set_lazy(:CHECKED_COLUMN) { 1 }
      const_attr_reader  :CHECKED_COLUMN
      
      const_set_lazy(:GRAYED_COLUMN) { 2 }
      const_attr_reader  :GRAYED_COLUMN
      
      const_set_lazy(:FOREGROUND_COLUMN) { 3 }
      const_attr_reader  :FOREGROUND_COLUMN
      
      const_set_lazy(:BACKGROUND_COLUMN) { 4 }
      const_attr_reader  :BACKGROUND_COLUMN
      
      const_set_lazy(:FONT_COLUMN) { 5 }
      const_attr_reader  :FONT_COLUMN
      
      const_set_lazy(:FIRST_COLUMN) { FONT_COLUMN + 1 }
      const_attr_reader  :FIRST_COLUMN
      
      const_set_lazy(:CELL_PIXBUF) { 0 }
      const_attr_reader  :CELL_PIXBUF
      
      const_set_lazy(:CELL_TEXT) { 1 }
      const_attr_reader  :CELL_TEXT
      
      const_set_lazy(:CELL_FOREGROUND) { 2 }
      const_attr_reader  :CELL_FOREGROUND
      
      const_set_lazy(:CELL_BACKGROUND) { 3 }
      const_attr_reader  :CELL_BACKGROUND
      
      const_set_lazy(:CELL_FONT) { 4 }
      const_attr_reader  :CELL_FONT
      
      const_set_lazy(:CELL_TYPES) { CELL_FONT + 1 }
      const_attr_reader  :CELL_TYPES
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
      @model_handle = 0
      @check_renderer = 0
      @column_count = 0
      @sort_direction = 0
      @ignore_cell = 0
      @items = nil
      @columns = nil
      @sort_column = nil
      @current_item = nil
      @image_list = nil
      @header_image_list = nil
      @first_custom_draw = false
      @model_changed = false
      @expand_all = false
      @draw_state = 0
      @draw_flags = 0
      @draw_foreground = nil
      @owner_draw = false
      @ignore_size = false
      super(parent, check_style(style))
    end
    
    typesig { [::Java::Int, Listener] }
    def __add_listener(event_type, listener)
      super(event_type, listener)
      if (!@owner_draw)
        case (event_type)
        when SWT::MeasureItem, SWT::EraseItem, SWT::PaintItem
          @owner_draw = true
          recreate_renderers
        end
      end
    end
    
    typesig { [::Java::Long] }
    # int
    def __get_item(iter)
      id = get_id(iter, true)
      if (!(@items[id]).nil?)
        return @items[id]
      end
      # int
      path = OS.gtk_tree_model_get_path(@model_handle, iter)
      depth = OS.gtk_tree_path_get_depth(path)
      indices = Array.typed(::Java::Int).new(depth) { 0 }
      OS.memmove(indices, OS.gtk_tree_path_get_indices(path), 4 * depth)
      # int
      parent_iter = 0
      if (depth > 1)
        OS.gtk_tree_path_up(path)
        parent_iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
        OS.gtk_tree_model_get_iter(@model_handle, parent_iter, path)
      end
      @items[id] = TreeItem.new(self, parent_iter, SWT::NONE, indices[indices.attr_length - 1], false)
      OS.gtk_tree_path_free(path)
      if (!(parent_iter).equal?(0))
        OS.g_free(parent_iter)
      end
      return @items[id]
    end
    
    typesig { [::Java::Long, ::Java::Int] }
    # int
    def __get_item(parent_iter, index)
      # int
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      OS.gtk_tree_model_iter_nth_child(@model_handle, iter, parent_iter, index)
      id = get_id(iter, true)
      OS.g_free(iter)
      if (!(@items[id]).nil?)
        return @items[id]
      end
      return @items[id] = TreeItem.new(self, parent_iter, SWT::NONE, index, false)
    end
    
    typesig { [::Java::Long, ::Java::Boolean] }
    # int
    def get_id(iter, query_model)
      if (query_model)
        value = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_tree_model_get(@model_handle, iter, ID_COLUMN, value, -1)
        if (!(value[0]).equal?(-1))
          return value[0]
        end
      end
      # find next available id
      id = 0
      while (id < @items.attr_length && !(@items[id]).nil?)
        id += 1
      end
      if ((id).equal?(@items.attr_length))
        new_items = Array.typed(TreeItem).new(@items.attr_length + 4) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
      end
      OS.gtk_tree_store_set(@model_handle, iter, ID_COLUMN, id, -1)
      return id
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
        # GTK is always FULL_SELECTION
        style |= SWT::FULL_SELECTION
        return check_bits(style, SWT::SINGLE, SWT::MULTI, 0, 0, 0, 0)
      end
    }
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    # int
    # int
    def cell_data_proc(tree_column, cell, tree_model, iter, data)
      if ((cell).equal?(@ignore_cell))
        return 0
      end
      item = __get_item(iter)
      if (!(item).nil?)
        OS.g_object_set_qdata(cell, Display::SWT_OBJECT_INDEX2, item.attr_handle)
      end
      is_pixbuf = OS._gtk_is_cell_renderer_pixbuf(cell)
      if (!(is_pixbuf || OS._gtk_is_cell_renderer_text(cell)))
        return 0
      end
      model_index = -1
      custom_draw = false
      if ((@column_count).equal?(0))
        model_index = Tree::FIRST_COLUMN
        custom_draw = @first_custom_draw
      else
        column = self.attr_display.get_widget(tree_column)
        if (!(column).nil?)
          model_index = column.attr_model_index
          custom_draw = column.attr_custom_draw
        end
      end
      if ((model_index).equal?(-1))
        return 0
      end
      set_data = false
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        # Feature in GTK.  On GTK before 2.4, fixed_height_mode is not
        # supported, and the tree asks for the data of all items.  The
        # fix is to only provide the data if the row is visible.
        if (OS::GTK_VERSION < OS._version(2, 3, 2))
          # int
          path = OS.gtk_tree_model_get_path(tree_model, iter)
          OS.gtk_widget_realize(self.attr_handle)
          visible = GdkRectangle.new
          OS.gtk_tree_view_get_visible_rect(self.attr_handle, visible)
          area = GdkRectangle.new
          OS.gtk_tree_view_get_cell_area(self.attr_handle, path, tree_column, area)
          OS.gtk_tree_path_free(path)
          if (area.attr_y + area.attr_height < 0 || area.attr_y + visible.attr_y > visible.attr_y + visible.attr_height)
            # Give an image from the image list to make sure the row has
            # the correct height.
            if (!(@image_list).nil? && @image_list.attr_pixbufs.attr_length > 0)
              if (is_pixbuf)
                OS.g_object_set(cell, OS.attr_pixbuf, @image_list.attr_pixbufs[0], 0)
              end
            end
            return 0
          end
        end
        if (!item.attr_cached)
          # lastIndexOf = index [0];
          set_data = check_data(item)
        end
      end
      # int
      # int
      ptr = Array.typed(::Java::Long).new(1) { 0 }
      if (set_data)
        if (is_pixbuf)
          ptr[0] = 0
          OS.gtk_tree_model_get(tree_model, iter, model_index + CELL_PIXBUF, ptr, -1)
          OS.g_object_set(cell, OS.attr_pixbuf, ptr[0], 0)
        else
          ptr[0] = 0
          OS.gtk_tree_model_get(tree_model, iter, model_index + CELL_TEXT, ptr, -1)
          if (!(ptr[0]).equal?(0))
            OS.g_object_set(cell, OS.attr_text, ptr[0], 0)
            OS.g_free(ptr[0])
          end
        end
      end
      if (custom_draw)
        # Bug on GTK. Gtk renders the background on top of the checkbox and pixbuf.
        # This only happens in version 2.2.1 and earlier. The fix is not to set the background.
        if (OS::GTK_VERSION > OS._version(2, 2, 1))
          if (!@owner_draw)
            ptr[0] = 0
            OS.gtk_tree_model_get(tree_model, iter, model_index + CELL_BACKGROUND, ptr, -1)
            if (!(ptr[0]).equal?(0))
              OS.g_object_set(cell, OS.attr_cell_background_gdk, ptr[0], 0)
            end
          end
        end
        if (!is_pixbuf)
          ptr[0] = 0
          OS.gtk_tree_model_get(tree_model, iter, model_index + CELL_FOREGROUND, ptr, -1)
          if (!(ptr[0]).equal?(0))
            OS.g_object_set(cell, OS.attr_foreground_gdk, ptr[0], 0)
          end
          ptr[0] = 0
          OS.gtk_tree_model_get(tree_model, iter, model_index + CELL_FONT, ptr, -1)
          if (!(ptr[0]).equal?(0))
            OS.g_object_set(cell, OS.attr_font_desc, ptr[0], 0)
          end
        end
      end
      if (set_data)
        @ignore_cell = cell
        set_scroll_width(tree_column, item)
        @ignore_cell = 0
      end
      return 0
    end
    
    typesig { [TreeItem] }
    def check_data(item)
      if (item.attr_cached)
        return true
      end
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        item.attr_cached = true
        parent_item = item.get_parent_item
        event = Event.new
        event.attr_item = item
        event.attr_index = (parent_item).nil? ? index_of(item) : parent_item.index_of(item)
        mask = OS::G_SIGNAL_MATCH_DATA | OS::G_SIGNAL_MATCH_ID
        signal_id = OS.g_signal_lookup(OS.attr_row_changed, OS.gtk_tree_model_get_type)
        OS.g_signal_handlers_block_matched(@model_handle, mask, signal_id, 0, 0, 0, self.attr_handle)
        @current_item = item
        send_event(SWT::SetData, event)
        @current_item = nil
        # widget could be disposed at this point
        if (is_disposed)
          return false
        end
        OS.g_signal_handlers_unblock_matched(@model_handle, mask, signal_id, 0, 0, 0, self.attr_handle)
        if (item.is_disposed)
          return false
        end
      end
      return true
    end
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
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
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Boolean] }
    # int
    # int
    def calculate_width(column, iter, recurse)
      OS.gtk_tree_view_column_cell_set_cell_data(column, @model_handle, iter, false, false)
      # Bug in GTK.  The width calculated by gtk_tree_view_column_cell_get_size()
      # always grows in size regardless of the text or images in the table.
      # The fix is to determine the column width from the cell renderers.
      # 
      # Code intentionally commented
      # int [] width = new int [1];
      # OS.gtk_tree_view_column_cell_get_size (column, null, null, null, width, null);
      # return width [0];
      width = 0
      w = Array.typed(::Java::Int).new(1) { 0 }
      # int
      path = 0
      if ((OS.gtk_tree_view_get_expander_column(self.attr_handle)).equal?(column))
        # indent
        rect = GdkRectangle.new
        OS.gtk_widget_realize(self.attr_handle)
        path = OS.gtk_tree_model_get_path(@model_handle, iter)
        OS.gtk_tree_view_get_cell_area(self.attr_handle, path, column, rect)
        width += rect.attr_x
        # expander
        OS.gtk_widget_style_get(self.attr_handle, OS.attr_expander_size, w, 0)
        width += w[0] + TreeItem::EXPANDER_EXTRA_PADDING
      end
      OS.gtk_widget_style_get(self.attr_handle, OS.attr_focus_line_width, w, 0)
      width += 2 * w[0]
      # int
      list = OS.gtk_tree_view_column_get_cell_renderers(column)
      if ((list).equal?(0))
        return 0
      end
      # int
      temp = list
      while (!(temp).equal?(0))
        # int
        renderer = OS.g_list_data(temp)
        if (!(renderer).equal?(0))
          OS.gtk_cell_renderer_get_size(renderer, self.attr_handle, nil, nil, nil, w, nil)
          width += w[0]
        end
        temp = OS.g_list_next(temp)
      end
      OS.g_list_free(list)
      if (recurse)
        if ((path).equal?(0))
          path = OS.gtk_tree_model_get_path(@model_handle, iter)
        end
        expanded = OS.gtk_tree_view_row_expanded(self.attr_handle, path)
        if (expanded)
          # int
          child_iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
          valid = OS.gtk_tree_model_iter_children(@model_handle, child_iter, iter)
          while (valid)
            width = Math.max(width, calculate_width(column, child_iter, true))
            valid = OS.gtk_tree_model_iter_next(@model_handle, child_iter)
          end
          OS.g_free(child_iter)
        end
      end
      if (!(path).equal?(0))
        OS.gtk_tree_path_free(path)
      end
      return width
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
      clear(0, index, all)
    end
    
    typesig { [::Java::Long, ::Java::Int, ::Java::Boolean] }
    # int
    def clear(parent_iter, index, all)
      # int
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      OS.gtk_tree_model_iter_nth_child(@model_handle, iter, parent_iter, index)
      value = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_tree_model_get(@model_handle, iter, ID_COLUMN, value, -1)
      if (!(value[0]).equal?(-1))
        item = @items[value[0]]
        item.clear
      end
      if (all)
        clear_all(all, iter)
      end
      OS.g_free(iter)
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
      clear_all(all, 0)
    end
    
    typesig { [::Java::Boolean, ::Java::Long] }
    # int
    def clear_all(all, parent_iter)
      length = OS.gtk_tree_model_iter_n_children(@model_handle, parent_iter)
      if ((length).equal?(0))
        return
      end
      # int
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      valid = OS.gtk_tree_model_iter_children(@model_handle, iter, parent_iter)
      value = Array.typed(::Java::Int).new(1) { 0 }
      while (valid)
        OS.gtk_tree_model_get(@model_handle, iter, ID_COLUMN, value, -1)
        if (!(value[0]).equal?(-1))
          item = @items[value[0]]
          item.clear
        end
        if (all)
          clear_all(all, iter)
        end
        valid = OS.gtk_tree_model_iter_next(@model_handle, iter)
      end
      OS.g_free(iter)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      if (!(w_hint).equal?(SWT::DEFAULT) && w_hint < 0)
        w_hint = 0
      end
      if (!(h_hint).equal?(SWT::DEFAULT) && h_hint < 0)
        h_hint = 0
      end
      size = compute_native_size(self.attr_handle, w_hint, h_hint, changed)
      trim = compute_trim(0, 0, size.attr_x, size.attr_y)
      size.attr_x = trim.attr_width
      size.attr_y = trim.attr_height
      return size
    end
    
    typesig { [::Java::Long, ::Java::Int, ::Java::Long, ::Java::Int, Array.typed(::Java::Long), ::Java::Long, ::Java::Long, ::Java::Int] }
    # int
    # int
    # int
    # int
    # int
    def copy_model(old_model, old_start, new_model, new_start, types, old_parent, new_parent, model_length)
      # int
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      if (OS.gtk_tree_model_iter_children(old_model, iter, old_parent))
        # int
        # int
        old_items = Array.typed(::Java::Long).new(OS.gtk_tree_model_iter_n_children(old_model, old_parent)) { 0 }
        old_index = 0
        begin
          # int
          new_item = OS.g_malloc(OS._gtk_tree_iter_sizeof)
          if ((new_item).equal?(0))
            error(SWT::ERROR_NO_HANDLES)
          end
          OS.gtk_tree_store_append(new_model, new_item, new_parent)
          index = Array.typed(::Java::Int).new(1) { 0 }
          OS.gtk_tree_model_get(old_model, iter, ID_COLUMN, index, -1)
          item = nil
          if (!(index[0]).equal?(-1))
            item = @items[index[0]]
            if (!(item).nil?)
              # int
              old_item = item.attr_handle
              old_items[((old_index += 1) - 1)] = old_item
              # int
              # int
              ptr = Array.typed(::Java::Long).new(1) { 0 }
              j = 0
              while j < FIRST_COLUMN
                OS.gtk_tree_model_get(old_model, old_item, j, ptr, -1)
                OS.gtk_tree_store_set(new_model, new_item, j, ptr[0], -1)
                if ((types[j]).equal?(OS._g_type_string))
                  OS.g_free((ptr[0]))
                end
                j += 1
              end
              j_ = 0
              while j_ < model_length - FIRST_COLUMN
                OS.gtk_tree_model_get(old_model, old_item, old_start + j_, ptr, -1)
                OS.gtk_tree_store_set(new_model, new_item, new_start + j_, ptr[0], -1)
                if ((types[j_]).equal?(OS._g_type_string))
                  OS.g_free((ptr[0]))
                end
                j_ += 1
              end
            end
          else
            OS.gtk_tree_store_set(new_model, new_item, ID_COLUMN, -1, -1)
          end
          # recurse through children
          copy_model(old_model, old_start, new_model, new_start, types, iter, new_item, model_length)
          if (!(item).nil?)
            item.attr_handle = new_item
          else
            OS.g_free(new_item)
          end
        end while (OS.gtk_tree_model_iter_next(old_model, iter))
        i = 0
        while i < old_items.attr_length
          # int
          old_item = old_items[i]
          if (!(old_item).equal?(0))
            OS.gtk_tree_store_remove(old_model, old_item)
            OS.g_free(old_item)
          end
          i += 1
        end
      end
      OS.g_free(iter)
    end
    
    typesig { [TreeColumn, ::Java::Int] }
    def create_column(column, index)
      # Bug in ATK. For some reason, ATK segments fault if
      # the GtkTreeView has a column and does not have items.
      # The fix is to insert the column only when an item is
      # created.
      model_index = FIRST_COLUMN
      if (!(@column_count).equal?(0))
        model_length = OS.gtk_tree_model_get_n_columns(@model_handle)
        used_columns = Array.typed(::Java::Boolean).new(model_length) { false }
        i = 0
        while i < @column_count
          column_index = @columns[i].attr_model_index
          j = 0
          while j < CELL_TYPES
            used_columns[column_index + j] = true
            j += 1
          end
          i += 1
        end
        while (model_index < model_length)
          if (!used_columns[model_index])
            break
          end
          model_index += 1
        end
        if ((model_index).equal?(model_length))
          # int
          old_model = @model_handle
          # int
          types = get_column_types(@column_count + 4) # grow by 4 rows at a time
          # int
          new_model = OS.gtk_tree_store_newv(types.attr_length, types)
          if ((new_model).equal?(0))
            error(SWT::ERROR_NO_HANDLES)
          end
          # int
          # int
          copy_model(old_model, FIRST_COLUMN, new_model, FIRST_COLUMN, types, 0, 0, model_length)
          OS.gtk_tree_view_set_model(self.attr_handle, new_model)
          OS.g_object_unref(old_model)
          @model_handle = new_model
        end
      end
      # int
      column_handle = OS.gtk_tree_view_column_new
      if ((column_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      if ((index).equal?(0) && @column_count > 0)
        check_column = @columns[0]
        create_renderers(check_column.attr_handle, check_column.attr_model_index, false, check_column.attr_style)
      end
      create_renderers(column_handle, model_index, (index).equal?(0), (column).nil? ? 0 : column.attr_style)
      # Use GTK_TREE_VIEW_COLUMN_GROW_ONLY on GTK versions < 2.3.2
      # because fixed_height_mode is not supported.
      use_virtual = !((self.attr_style & SWT::VIRTUAL)).equal?(0) && OS::GTK_VERSION >= OS._version(2, 3, 2)
      if (!use_virtual && (@column_count).equal?(0))
        OS.gtk_tree_view_column_set_sizing(column_handle, OS::GTK_TREE_VIEW_COLUMN_GROW_ONLY)
      else
        OS.gtk_tree_view_column_set_sizing(column_handle, OS::GTK_TREE_VIEW_COLUMN_FIXED)
        if (!(@column_count).equal?(0))
          OS.gtk_tree_view_column_set_visible(column_handle, false)
        end
      end
      OS.gtk_tree_view_column_set_resizable(column_handle, true)
      OS.gtk_tree_view_column_set_clickable(column_handle, true)
      OS.gtk_tree_view_column_set_min_width(column_handle, 0)
      OS.gtk_tree_view_insert_column(self.attr_handle, column_handle, index)
      if (!(column).nil?)
        column.attr_handle = column_handle
        column.attr_model_index = model_index
      end
      # Disable searching when using VIRTUAL
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        # Bug in GTK. Until GTK 2.6.5, calling gtk_tree_view_set_enable_search(FALSE)
        # would prevent the user from being able to type in text to search the tree.
        # After 2.6.5, GTK introduced Ctrl+F as being the key binding for interactive
        # search. This meant that even if FALSE was passed to enable_search, the user
        # can still bring up the search pop up using the keybinding. GTK also introduced
        # the notion of passing a -1 to gtk_set_search_column to disable searching
        # (including the search key binding).  The fix is to use the right calls
        # for the right version.
        if (OS::GTK_VERSION >= OS._version(2, 6, 5))
          OS.gtk_tree_view_set_search_column(self.attr_handle, -1)
        else
          OS.gtk_tree_view_set_enable_search(self.attr_handle, false)
        end
      else
        # Set the search column whenever the model changes
        first_column = (@column_count).equal?(0) ? FIRST_COLUMN : @columns[0].attr_model_index
        OS.gtk_tree_view_set_search_column(self.attr_handle, first_column + CELL_TEXT)
      end
    end
    
    typesig { [::Java::Int] }
    def create_handle(index)
      self.attr_state |= HANDLE
      self.attr_fixed_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
      if ((self.attr_fixed_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_fixed_set_has_window(self.attr_fixed_handle, true)
      self.attr_scrolled_handle = OS.gtk_scrolled_window_new(0, 0)
      if ((self.attr_scrolled_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      # int
      types = get_column_types(1)
      @model_handle = OS.gtk_tree_store_newv(types.attr_length, types)
      if ((@model_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      self.attr_handle = OS.gtk_tree_view_new_with_model(@model_handle)
      if ((self.attr_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        @check_renderer = OS.gtk_cell_renderer_toggle_new
        if ((@check_renderer).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.g_object_ref(@check_renderer)
      end
      create_column(nil, 0)
      OS.gtk_container_add(self.attr_fixed_handle, self.attr_scrolled_handle)
      OS.gtk_container_add(self.attr_scrolled_handle, self.attr_handle)
      mode = !((self.attr_style & SWT::MULTI)).equal?(0) ? OS::GTK_SELECTION_MULTIPLE : OS::GTK_SELECTION_BROWSE
      # int
      selection_handle = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.gtk_tree_selection_set_mode(selection_handle, mode)
      OS.gtk_tree_view_set_headers_visible(self.attr_handle, false)
      hsp = !((self.attr_style & SWT::H_SCROLL)).equal?(0) ? OS::GTK_POLICY_AUTOMATIC : OS::GTK_POLICY_NEVER
      vsp = !((self.attr_style & SWT::V_SCROLL)).equal?(0) ? OS::GTK_POLICY_AUTOMATIC : OS::GTK_POLICY_NEVER
      OS.gtk_scrolled_window_set_policy(self.attr_scrolled_handle, hsp, vsp)
      if (!((self.attr_style & SWT::BORDER)).equal?(0))
        OS.gtk_scrolled_window_set_shadow_type(self.attr_scrolled_handle, OS::GTK_SHADOW_ETCHED_IN)
      end
      # Disable searching when using VIRTUAL
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        # The fixed_height_mode property only exists in GTK 2.3.2 and greater
        if (OS::GTK_VERSION >= OS._version(2, 3, 2))
          OS.g_object_set(self.attr_handle, OS.attr_fixed_height_mode, true, 0)
        end
        # Bug in GTK. Until GTK 2.6.5, calling gtk_tree_view_set_enable_search(FALSE)
        # would prevent the user from being able to type in text to search the tree.
        # After 2.6.5, GTK introduced Ctrl+F as being the key binding for interactive
        # search. This meant that even if FALSE was passed to enable_search, the user
        # can still bring up the search pop up using the keybinding. GTK also introduced
        # the notion of passing a -1 to gtk_set_search_column to disable searching
        # (including the search key binding).  The fix is to use the right calls
        # for the right version.
        if (OS::GTK_VERSION >= OS._version(2, 6, 5))
          OS.gtk_tree_view_set_search_column(self.attr_handle, -1)
        else
          OS.gtk_tree_view_set_enable_search(self.attr_handle, false)
        end
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
      if ((@column_count).equal?(0))
        column.attr_handle = OS.gtk_tree_view_get_column(self.attr_handle, 0)
        OS.gtk_tree_view_column_set_sizing(column.attr_handle, OS::GTK_TREE_VIEW_COLUMN_FIXED)
        OS.gtk_tree_view_column_set_visible(column.attr_handle, false)
        column.attr_model_index = FIRST_COLUMN
        create_renderers(column.attr_handle, column.attr_model_index, true, column.attr_style)
        column.attr_custom_draw = @first_custom_draw
        @first_custom_draw = false
      else
        create_column(column, index)
      end
      # int
      box_handle = OS.gtk_hbox_new(false, 3)
      if ((box_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      # int
      label_handle = OS.gtk_label_new_with_mnemonic(nil)
      if ((label_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      # int
      image_handle = OS.gtk_image_new
      if ((image_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_container_add(box_handle, image_handle)
      OS.gtk_container_add(box_handle, label_handle)
      OS.gtk_widget_show(box_handle)
      OS.gtk_widget_show(label_handle)
      column.attr_label_handle = label_handle
      column.attr_image_handle = image_handle
      OS.gtk_tree_view_column_set_widget(column.attr_handle, box_handle)
      # int
      widget = OS.gtk_widget_get_parent(box_handle)
      while (!(widget).equal?(self.attr_handle))
        if (OS._gtk_is_button(widget))
          column.attr_button_handle = widget
          break
        end
        widget = OS.gtk_widget_get_parent(widget)
      end
      if ((@column_count).equal?(@columns.attr_length))
        new_columns = Array.typed(TreeColumn).new(@columns.attr_length + 4) { nil }
        System.arraycopy(@columns, 0, new_columns, 0, @columns.attr_length)
        @columns = new_columns
      end
      System.arraycopy(@columns, index, @columns, index + 1, ((@column_count += 1) - 1) - index)
      @columns[index] = column
      if (!((self.attr_state & FONT)).equal?(0))
        column.set_font_description(get_font_description)
      end
      if (@column_count >= 1)
        i = 0
        while i < @items.attr_length
          item = @items[i]
          if (!(item).nil?)
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
    
    typesig { [TreeItem, ::Java::Long, ::Java::Int] }
    # int
    def create_item(item, parent_iter, index)
      count = OS.gtk_tree_model_iter_n_children(@model_handle, parent_iter)
      if ((index).equal?(-1))
        index = count
      end
      if (!(0 <= index && index <= count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      item.attr_handle = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      if ((item.attr_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      # Feature in GTK.  It is much faster to append to a tree store
      # than to insert at the end using gtk_tree_store_insert().
      if ((index).equal?(count))
        OS.gtk_tree_store_append(@model_handle, item.attr_handle, parent_iter)
      else
        OS.gtk_tree_store_insert(@model_handle, item.attr_handle, parent_iter, index)
      end
      id = get_id(item.attr_handle, false)
      @items[id] = item
      @model_changed = true
    end
    
    typesig { [::Java::Long, ::Java::Int, ::Java::Boolean, ::Java::Int] }
    # int
    def create_renderers(column_handle, model_index, check, column_style)
      OS.gtk_tree_view_column_clear(column_handle)
      if (!((self.attr_style & SWT::CHECK)).equal?(0) && check)
        OS.gtk_tree_view_column_pack_start(column_handle, @check_renderer, false)
        OS.gtk_tree_view_column_add_attribute(column_handle, @check_renderer, OS.attr_active, CHECKED_COLUMN)
        # Feature in GTK. The inconsistent property only exists in GTK 2.2.x.
        if (OS::GTK_VERSION >= OS._version(2, 2, 0))
          OS.gtk_tree_view_column_add_attribute(column_handle, @check_renderer, OS.attr_inconsistent, GRAYED_COLUMN)
        end
        # Bug in GTK. GTK renders the background on top of the checkbox.
        # This only happens in version 2.2.1 and earlier. The fix is not to set the background.
        if (OS::GTK_VERSION > OS._version(2, 2, 1))
          if (!@owner_draw)
            OS.gtk_tree_view_column_add_attribute(column_handle, @check_renderer, OS.attr_cell_background_gdk, BACKGROUND_COLUMN)
          end
        end
        if (@owner_draw)
          OS.gtk_tree_view_column_set_cell_data_func(column_handle, @check_renderer, self.attr_display.attr_cell_data_proc, self.attr_handle, 0)
          OS.g_object_set_qdata(@check_renderer, Display::SWT_OBJECT_INDEX1, column_handle)
        end
      end
      # int
      pixbuf_renderer = @owner_draw ? OS.g_object_new(self.attr_display.gtk_cell_renderer_pixbuf_get_type, 0) : OS.gtk_cell_renderer_pixbuf_new
      if ((pixbuf_renderer).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      # int
      text_renderer = @owner_draw ? OS.g_object_new(self.attr_display.gtk_cell_renderer_text_get_type, 0) : OS.gtk_cell_renderer_text_new
      if ((text_renderer).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      if (@owner_draw)
        OS.g_object_set_qdata(pixbuf_renderer, Display::SWT_OBJECT_INDEX1, column_handle)
        OS.g_object_set_qdata(text_renderer, Display::SWT_OBJECT_INDEX1, column_handle)
      end
      # Feature in GTK.  When a tree view column contains only one activatable
      # cell renderer such as a toggle renderer, mouse clicks anywhere in a cell
      # activate that renderer. The workaround is to set a second  cell renderer
      # to be activatable.
      if (!((self.attr_style & SWT::CHECK)).equal?(0) && check)
        OS.g_object_set(pixbuf_renderer, OS.attr_mode, OS::GTK_CELL_RENDERER_MODE_ACTIVATABLE, 0)
      end
      # Set alignment
      if (!((column_style & SWT::RIGHT)).equal?(0))
        OS.g_object_set(text_renderer, OS.attr_xalign, 1, 0)
        OS.gtk_tree_view_column_pack_end(column_handle, text_renderer, true)
        OS.gtk_tree_view_column_pack_end(column_handle, pixbuf_renderer, false)
        OS.gtk_tree_view_column_set_alignment(column_handle, 1)
      else
        if (!((column_style & SWT::CENTER)).equal?(0))
          OS.g_object_set(text_renderer, OS.attr_xalign, 0.5, 0)
          OS.gtk_tree_view_column_pack_start(column_handle, pixbuf_renderer, false)
          OS.gtk_tree_view_column_pack_end(column_handle, text_renderer, true)
          OS.gtk_tree_view_column_set_alignment(column_handle, 0.5)
        else
          OS.gtk_tree_view_column_pack_start(column_handle, pixbuf_renderer, false)
          OS.gtk_tree_view_column_pack_start(column_handle, text_renderer, true)
          OS.gtk_tree_view_column_set_alignment(column_handle, 0)
        end
      end
      # Add attributes
      OS.gtk_tree_view_column_add_attribute(column_handle, pixbuf_renderer, OS.attr_pixbuf, model_index + CELL_PIXBUF)
      # Bug on GTK. Gtk renders the background on top of the pixbuf.
      # This only happens in version 2.2.1 and earlier. The fix is not to set the background.
      if (OS::GTK_VERSION > OS._version(2, 2, 1))
        if (!@owner_draw)
          OS.gtk_tree_view_column_add_attribute(column_handle, pixbuf_renderer, OS.attr_cell_background_gdk, BACKGROUND_COLUMN)
          OS.gtk_tree_view_column_add_attribute(column_handle, text_renderer, OS.attr_cell_background_gdk, BACKGROUND_COLUMN)
        end
      end
      OS.gtk_tree_view_column_add_attribute(column_handle, text_renderer, OS.attr_text, model_index + CELL_TEXT)
      OS.gtk_tree_view_column_add_attribute(column_handle, text_renderer, OS.attr_foreground_gdk, FOREGROUND_COLUMN)
      OS.gtk_tree_view_column_add_attribute(column_handle, text_renderer, OS.attr_font_desc, FONT_COLUMN)
      custom_draw = @first_custom_draw
      if (!(@column_count).equal?(0))
        i = 0
        while i < @column_count
          if ((@columns[i].attr_handle).equal?(column_handle))
            custom_draw = @columns[i].attr_custom_draw
            break
          end
          i += 1
        end
      end
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0) || custom_draw || @owner_draw)
        OS.gtk_tree_view_column_set_cell_data_func(column_handle, text_renderer, self.attr_display.attr_cell_data_proc, self.attr_handle, 0)
        OS.gtk_tree_view_column_set_cell_data_func(column_handle, pixbuf_renderer, self.attr_display.attr_cell_data_proc, self.attr_handle, 0)
      end
    end
    
    typesig { [::Java::Int] }
    def create_widget(index)
      super(index)
      @items = Array.typed(TreeItem).new(4) { nil }
      @columns = Array.typed(TreeColumn).new(4) { nil }
      @column_count = 0
    end
    
    typesig { [] }
    def default_background
      return Display::COLOR_LIST_BACKGROUND
    end
    
    typesig { [] }
    def default_foreground
      return Display::COLOR_LIST_FOREGROUND
    end
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget(OS.gtk_tree_view_get_selection(self.attr_handle))
      if (!(@check_renderer).equal?(0))
        self.attr_display.remove_widget(@check_renderer)
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
      fix_column = show_first_column
      # int
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.gtk_tree_selection_unselect_iter(selection, item.attr_handle)
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      if (fix_column)
        hide_first_column
      end
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
      fix_column = show_first_column
      # int
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.gtk_tree_selection_unselect_all(selection)
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      if (fix_column)
        hide_first_column
      end
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
      if ((index).equal?(@column_count))
        return
      end
      # int
      column_handle = column.attr_handle
      if ((@column_count).equal?(1))
        @first_custom_draw = column.attr_custom_draw
      end
      System.arraycopy(@columns, index + 1, @columns, index, (@column_count -= 1) - index)
      @columns[@column_count] = nil
      OS.gtk_tree_view_remove_column(self.attr_handle, column_handle)
      if ((@column_count).equal?(0))
        # int
        old_model = @model_handle
        # int
        types = get_column_types(1)
        # int
        new_model = OS.gtk_tree_store_newv(types.attr_length, types)
        if ((new_model).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        # int
        # int
        copy_model(old_model, column.attr_model_index, new_model, FIRST_COLUMN, types, 0, 0, FIRST_COLUMN + CELL_TYPES)
        OS.gtk_tree_view_set_model(self.attr_handle, new_model)
        OS.g_object_unref(old_model)
        @model_handle = new_model
        create_column(nil, 0)
      else
        i = 0
        while i < @items.attr_length
          item = @items[i]
          if (!(item).nil?)
            # int
            iter = item.attr_handle
            model_index = column.attr_model_index
            OS.gtk_tree_store_set(@model_handle, iter, model_index + CELL_PIXBUF, 0, -1)
            OS.gtk_tree_store_set(@model_handle, iter, model_index + CELL_TEXT, 0, -1)
            OS.gtk_tree_store_set(@model_handle, iter, model_index + CELL_FOREGROUND, 0, -1)
            OS.gtk_tree_store_set(@model_handle, iter, model_index + CELL_BACKGROUND, 0, -1)
            OS.gtk_tree_store_set(@model_handle, iter, model_index + CELL_FONT, 0, -1)
            cell_font = item.attr_cell_font
            if (!(cell_font).nil?)
              if ((@column_count).equal?(0))
                item.attr_cell_font = nil
              else
                temp = Array.typed(Font).new(@column_count) { nil }
                System.arraycopy(cell_font, 0, temp, 0, index)
                System.arraycopy(cell_font, index + 1, temp, index, @column_count - index)
                item.attr_cell_font = temp
              end
            end
          end
          i += 1
        end
        if ((index).equal?(0))
          # first column must be left aligned and must show check box
          first_column = @columns[0]
          first_column.attr_style &= ~(SWT::LEFT | SWT::RIGHT | SWT::CENTER)
          first_column.attr_style |= SWT::LEFT
          create_renderers(first_column.attr_handle, first_column.attr_model_index, true, first_column.attr_style)
        end
      end
      # Disable searching when using VIRTUAL
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        # Bug in GTK. Until GTK 2.6.5, calling gtk_tree_view_set_enable_search(FALSE)
        # would prevent the user from being able to type in text to search the tree.
        # After 2.6.5, GTK introduced Ctrl+F as being the key binding for interactive
        # search. This meant that even if FALSE was passed to enable_search, the user
        # can still bring up the search pop up using the keybinding. GTK also introduced
        # the notion of passing a -1 to gtk_set_search_column to disable searching
        # (including the search key binding).  The fix is to use the right calls
        # for the right version.
        if (OS::GTK_VERSION >= OS._version(2, 6, 5))
          OS.gtk_tree_view_set_search_column(self.attr_handle, -1)
        else
          OS.gtk_tree_view_set_enable_search(self.attr_handle, false)
        end
      else
        # Set the search column whenever the model changes
        first_column = (@column_count).equal?(0) ? FIRST_COLUMN : @columns[0].attr_model_index
        OS.gtk_tree_view_set_search_column(self.attr_handle, first_column + CELL_TEXT)
      end
    end
    
    typesig { [TreeItem] }
    def destroy_item(item)
      # Bug in GTK.  GTK segment faults when a root tree item
      # is destroyed when the tree is expanded and the last leaf of
      # the root is selected.  This only happens in versions earlier
      # than 2.0.6.  The fix is to collapse the tree item being destroyed
      # when it is a root, before it is destroyed.
      if (OS::GTK_VERSION < OS._version(2, 0, 6))
        length = OS.gtk_tree_model_iter_n_children(@model_handle, 0)
        if (length > 0)
          # int
          iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
          valid = OS.gtk_tree_model_iter_children(@model_handle, iter, 0)
          while (valid)
            if ((item.attr_handle).equal?(iter))
              item.set_expanded(false)
              break
            end
            valid = OS.gtk_tree_model_iter_next(@model_handle, iter)
          end
          OS.g_free(iter)
        end
      end
      # int
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.gtk_tree_store_remove(@model_handle, item.attr_handle)
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      @model_changed = true
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Boolean)] }
    def drag_detect(x, y, filter, consume)
      selected = false
      if (filter)
        # int
        # int
        path = Array.typed(::Java::Long).new(1) { 0 }
        if (OS.gtk_tree_view_get_path_at_pos(self.attr_handle, x, y, path, nil, nil, nil))
          if (!(path[0]).equal?(0))
            # int
            selection = OS.gtk_tree_view_get_selection(self.attr_handle)
            if (OS.gtk_tree_selection_path_is_selected(selection, path[0]))
              selected = true
            end
            OS.gtk_tree_path_free(path[0])
          end
        else
          return false
        end
      end
      drag_detect = super(x, y, filter, consume)
      if (drag_detect && selected && !(consume).nil?)
        consume[0] = true
      end
      return drag_detect
    end
    
    typesig { [] }
    # int
    def event_window
      return paint_window
    end
    
    typesig { [Shell, Shell, Decorations, Decorations, Array.typed(Menu)] }
    def fix_children(new_shell, old_shell, new_decorations, old_decorations, menus)
      super(new_shell, old_shell, new_decorations, old_decorations, menus)
      i = 0
      while i < @column_count
        column = @columns[i]
        if (!(column.attr_tool_tip_text).nil?)
          column.set_tool_tip_text(old_shell, nil)
          column.set_tool_tip_text(new_shell, column.attr_tool_tip_text)
        end
        i += 1
      end
    end
    
    typesig { [] }
    def get_background_color
      return get_base_color
    end
    
    typesig { [] }
    def get_client_area
      check_widget
      force_resize
      OS.gtk_widget_realize(self.attr_handle)
      # int
      fixed_window = OS._gtk_widget_window(self.attr_fixed_handle)
      # int
      bin_window = OS.gtk_tree_view_get_bin_window(self.attr_handle)
      bin_x = Array.typed(::Java::Int).new(1) { 0 }
      bin_y = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_origin(bin_window, bin_x, bin_y)
      fixed_x = Array.typed(::Java::Int).new(1) { 0 }
      fixed_y = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_origin(fixed_window, fixed_x, fixed_y)
      # int
      client_handle_ = client_handle
      width = !((self.attr_state & ZERO_WIDTH)).equal?(0) ? 0 : OS._gtk_widget_width(client_handle_)
      height = !((self.attr_state & ZERO_HEIGHT)).equal?(0) ? 0 : OS._gtk_widget_height(client_handle_)
      return Rectangle.new(fixed_x[0] - bin_x[0], fixed_y[0] - bin_y[0], width, height)
    end
    
    typesig { [] }
    def get_client_width
      w = Array.typed(::Java::Int).new(1) { 0 }
      h = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_widget_realize(self.attr_handle)
      OS.gdk_drawable_get_size(OS.gtk_tree_view_get_bin_window(self.attr_handle), w, h)
      return w[0]
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
      if ((@column_count).equal?(0))
        return Array.typed(::Java::Int).new(0) { 0 }
      end
      # int
      list = OS.gtk_tree_view_get_columns(self.attr_handle)
      if ((list).equal?(0))
        return Array.typed(::Java::Int).new(0) { 0 }
      end
      i = 0
      count = OS.g_list_length(list)
      order = Array.typed(::Java::Int).new(count) { 0 }
      # int
      temp = list
      while (!(temp).equal?(0))
        # int
        column = OS.g_list_data(temp)
        if (!(column).equal?(0))
          j = 0
          while j < @column_count
            if ((@columns[j].attr_handle).equal?(column))
              order[((i += 1) - 1)] = j
              break
            end
            j += 1
          end
        end
        temp = OS.g_list_next(temp)
      end
      OS.g_list_free(list)
      return order
    end
    
    typesig { [::Java::Int] }
    # int
    def get_column_types(column_count)
      # int
      # int
      types = Array.typed(::Java::Long).new(FIRST_COLUMN + (column_count * CELL_TYPES)) { 0 }
      # per row data
      types[ID_COLUMN] = OS._g_type_int
      types[CHECKED_COLUMN] = OS._g_type_boolean
      types[GRAYED_COLUMN] = OS._g_type_boolean
      types[FOREGROUND_COLUMN] = OS._gdk_type_color
      types[BACKGROUND_COLUMN] = OS._gdk_type_color
      types[FONT_COLUMN] = OS._pango_type_font_description
      # per cell data
      i = FIRST_COLUMN
      while i < types.attr_length
        types[i + CELL_PIXBUF] = OS._gdk_type_pixbuf
        types[i + CELL_TEXT] = OS._g_type_string
        types[i + CELL_FOREGROUND] = OS._gdk_type_color
        types[i + CELL_BACKGROUND] = OS._gdk_type_color
        types[i + CELL_FONT] = OS._pango_type_font_description
        i += CELL_TYPES
      end
      return types
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
    def get_focus_item
      # int
      # int
      path = Array.typed(::Java::Long).new(1) { 0 }
      OS.gtk_tree_view_get_cursor(self.attr_handle, path, nil)
      if ((path[0]).equal?(0))
        return nil
      end
      item = nil
      # int
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      if (OS.gtk_tree_model_get_iter(@model_handle, iter, path[0]))
        index = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_tree_model_get(@model_handle, iter, ID_COLUMN, index, -1)
        if (!(index[0]).equal?(-1))
          item = @items[index[0]]
        end # TODO should we be creating this item when index is -1?
      end
      OS.g_free(iter)
      OS.gtk_tree_path_free(path[0])
      return item
    end
    
    typesig { [] }
    def get_foreground_color
      return get_text_color
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
      if (!OS.gtk_tree_view_get_headers_visible(self.attr_handle))
        return 0
      end
      if (@column_count > 0)
        requisition = GtkRequisition.new
        height = 0
        i = 0
        while i < @column_count
          # int
          button_handle = @columns[i].attr_button_handle
          if (!(button_handle).equal?(0))
            OS.gtk_widget_size_request(button_handle, requisition)
            height = Math.max(height, requisition.attr_height)
          end
          i += 1
        end
        return height
      end
      OS.gtk_widget_realize(self.attr_handle)
      # int
      fixed_window = OS._gtk_widget_window(self.attr_fixed_handle)
      # int
      bin_window = OS.gtk_tree_view_get_bin_window(self.attr_handle)
      bin_y = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_origin(bin_window, nil, bin_y)
      fixed_y = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_origin(fixed_window, nil, fixed_y)
      return bin_y[0] - fixed_y[0]
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
      return OS.gtk_tree_view_get_headers_visible(self.attr_handle)
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
      if (!(0 <= index && index < OS.gtk_tree_model_iter_n_children(@model_handle, 0)))
        error(SWT::ERROR_INVALID_RANGE)
      end
      return __get_item(0, index)
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
      # int
      # int
      path = Array.typed(::Java::Long).new(1) { 0 }
      OS.gtk_widget_realize(self.attr_handle)
      # int
      # int
      column_handle = Array.typed(::Java::Long).new(1) { 0 }
      if (!OS.gtk_tree_view_get_path_at_pos(self.attr_handle, point.attr_x, point.attr_y, path, column_handle, nil, nil))
        return nil
      end
      if ((path[0]).equal?(0))
        return nil
      end
      item = nil
      # int
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      if (OS.gtk_tree_model_get_iter(@model_handle, iter, path[0]))
        over_expander = false
        if ((OS.gtk_tree_view_get_expander_column(self.attr_handle)).equal?(column_handle[0]))
          buffer = Array.typed(::Java::Int).new(1) { 0 }
          rect = GdkRectangle.new
          OS.gtk_tree_view_get_cell_area(self.attr_handle, path[0], column_handle[0], rect)
          if (OS::GTK_VERSION < OS._version(2, 8, 18))
            OS.gtk_widget_style_get(self.attr_handle, OS.attr_expander_size, buffer, 0)
            expander_size = buffer[0] + TreeItem::EXPANDER_EXTRA_PADDING
            over_expander = point.attr_x < rect.attr_x + expander_size
          else
            over_expander = point.attr_x < rect.attr_x
          end
        end
        if (!over_expander)
          item = __get_item(iter)
        end
      end
      OS.g_free(iter)
      OS.gtk_tree_path_free(path[0])
      return item
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
      return OS.gtk_tree_model_iter_n_children(@model_handle, 0)
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
      item_count = OS.gtk_tree_model_iter_n_children(@model_handle, 0)
      if ((item_count).equal?(0))
        # int
        column = OS.gtk_tree_view_get_column(self.attr_handle, 0)
        w = Array.typed(::Java::Int).new(1) { 0 }
        h = Array.typed(::Java::Int).new(1) { 0 }
        @ignore_size = true
        OS.gtk_tree_view_column_cell_get_size(column, nil, nil, nil, w, h)
        @ignore_size = false
        return h[0]
      else
        height = 0
        # int
        iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
        OS.gtk_tree_model_get_iter_first(@model_handle, iter)
        column_count = Math.max(1, @column_count)
        i = 0
        while i < column_count
          # int
          column = OS.gtk_tree_view_get_column(self.attr_handle, i)
          OS.gtk_tree_view_column_cell_set_cell_data(column, @model_handle, iter, false, false)
          w = Array.typed(::Java::Int).new(1) { 0 }
          h = Array.typed(::Java::Int).new(1) { 0 }
          OS.gtk_tree_view_column_cell_get_size(column, nil, nil, nil, w, h)
          height = Math.max(height, h[0])
          i += 1
        end
        OS.g_free(iter)
        return height
      end
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
      return get_items(0)
    end
    
    typesig { [::Java::Long] }
    # int
    def get_items(parent)
      length = OS.gtk_tree_model_iter_n_children(@model_handle, parent)
      result = Array.typed(TreeItem).new(length) { nil }
      if ((length).equal?(0))
        return result
      end
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        i = 0
        while i < length
          result[i] = __get_item(parent, i)
          i += 1
        end
      else
        i = 0
        index = Array.typed(::Java::Int).new(1) { 0 }
        # int
        iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
        valid = OS.gtk_tree_model_iter_children(@model_handle, iter, parent)
        while (valid)
          OS.gtk_tree_model_get(@model_handle, iter, ID_COLUMN, index, -1)
          result[((i += 1) - 1)] = @items[index[0]]
          valid = OS.gtk_tree_model_iter_next(@model_handle, iter)
        end
        OS.g_free(iter)
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
      return OS.gtk_tree_view_get_rules_hint(self.attr_handle)
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
    
    typesig { [::Java::Long] }
    # int
    # int
    def get_pixbuf_renderer(column)
      # int
      list = OS.gtk_tree_view_column_get_cell_renderers(column)
      if ((list).equal?(0))
        return 0
      end
      count = OS.g_list_length(list)
      # int
      pixbuf_renderer = 0
      i = 0
      while (i < count)
        # int
        renderer = OS.g_list_nth_data(list, i)
        if (OS._gtk_is_cell_renderer_pixbuf(renderer))
          pixbuf_renderer = renderer
          break
        end
        i += 1
      end
      OS.g_list_free(list)
      return pixbuf_renderer
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
      # int
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      if (OS::GTK_VERSION < OS._version(2, 2, 0))
        self.attr_display.attr_tree_selection_length = 0
        self.attr_display.attr_tree_selection = Array.typed(::Java::Int).new(@items.attr_length) { 0 }
        OS.gtk_tree_selection_selected_foreach(selection, self.attr_display.attr_tree_selection_proc, self.attr_handle)
        result = Array.typed(TreeItem).new(self.attr_display.attr_tree_selection_length) { nil }
        i = 0
        while i < result.attr_length
          result[i] = @items[self.attr_display.attr_tree_selection[i]]
          i += 1
        end
        return result
      end
      # Bug in GTK.  gtk_tree_selection_get_selected_rows() segmentation faults
      # in versions smaller than 2.2.4 if the model is NULL.  The fix is
      # to give a valid pointer instead.
      # 
      # int
      # int
      model = OS::GTK_VERSION < OS._version(2, 2, 4) ? Array.typed(::Java::Long).new(1) { 0 } : nil
      # int
      list = OS.gtk_tree_selection_get_selected_rows(selection, model)
      if (!(list).equal?(0))
        count = OS.g_list_length(list)
        tree_selection = Array.typed(TreeItem).new(count) { nil }
        length = 0
        i = 0
        while i < count
          # int
          data = OS.g_list_nth_data(list, i)
          # int
          iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
          if (OS.gtk_tree_model_get_iter(@model_handle, iter, data))
            tree_selection[length] = __get_item(iter)
            length += 1
          end
          OS.g_free(iter)
          i += 1
        end
        OS.g_list_free(list)
        if (length < count)
          temp = Array.typed(TreeItem).new(length) { nil }
          System.arraycopy(tree_selection, 0, temp, 0, length)
          tree_selection = temp
        end
        return tree_selection
      end
      return Array.typed(TreeItem).new(0) { nil }
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
      # int
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      if (OS::GTK_VERSION < OS._version(2, 2, 0))
        self.attr_display.attr_tree_selection_length = 0
        self.attr_display.attr_tree_selection = nil
        OS.gtk_tree_selection_selected_foreach(selection, self.attr_display.attr_tree_selection_proc, self.attr_handle)
        return self.attr_display.attr_tree_selection_length
      end
      return OS.gtk_tree_selection_count_selected_rows(selection)
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
    
    typesig { [::Java::Long] }
    # int
    # int
    def get_text_renderer(column)
      # int
      list = OS.gtk_tree_view_column_get_cell_renderers(column)
      if ((list).equal?(0))
        return 0
      end
      count = OS.g_list_length(list)
      # int
      text_renderer = 0
      i = 0
      while (i < count)
        # int
        renderer = OS.g_list_nth_data(list, i)
        if (OS._gtk_is_cell_renderer_text(renderer))
          text_renderer = renderer
          break
        end
        i += 1
      end
      OS.g_list_free(list)
      return text_renderer
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
      # int
      # int
      path = Array.typed(::Java::Long).new(1) { 0 }
      OS.gtk_widget_realize(self.attr_handle)
      if (!OS.gtk_tree_view_get_path_at_pos(self.attr_handle, 1, 1, path, nil, nil, nil))
        return nil
      end
      if ((path[0]).equal?(0))
        return nil
      end
      item = nil
      # int
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      if (OS.gtk_tree_model_get_iter(@model_handle, iter, path[0]))
        item = __get_item(iter)
      end
      OS.g_free(iter)
      OS.gtk_tree_path_free(path[0])
      return item
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_button_press_event(widget, event)
      gdk_event = GdkEventButton.new
      OS.memmove(gdk_event, event, GdkEventButton.attr_sizeof)
      if (!(gdk_event.attr_window).equal?(OS.gtk_tree_view_get_bin_window(self.attr_handle)))
        return 0
      end
      # int
      result = super(widget, event)
      if (!(result).equal?(0))
        return result
      end
      # Feature in GTK.  In a multi-select tree view, when multiple items are already
      # selected, the selection state of the item is toggled and the previous selection
      # is cleared. This is not the desired behaviour when bringing up a popup menu.
      # Also, when an item is reselected with the right button, the tree view issues
      # an unwanted selection event. The workaround is to detect that case and not
      # run the default handler when the item is already part of the current selection.
      button = gdk_event.attr_button
      if ((button).equal?(3) && (gdk_event.attr_type).equal?(OS::GDK_BUTTON_PRESS))
        # int
        # int
        path = Array.typed(::Java::Long).new(1) { 0 }
        if (OS.gtk_tree_view_get_path_at_pos(self.attr_handle, RJava.cast_to_int(gdk_event.attr_x), RJava.cast_to_int(gdk_event.attr_y), path, nil, nil, nil))
          if (!(path[0]).equal?(0))
            # int
            selection = OS.gtk_tree_view_get_selection(self.attr_handle)
            if (OS.gtk_tree_selection_path_is_selected(selection, path[0]))
              result = 1
            end
            OS.gtk_tree_path_free(path[0])
          end
        end
      end
      # Feature in GTK.  When the user clicks in a single selection GtkTreeView
      # and there are no selected items, the first item is selected automatically
      # before the click is processed, causing two selection events.  The is fix
      # is the set the cursor item to be same as the clicked item to stop the
      # widget from automatically selecting the first item.
      if (!((self.attr_style & SWT::SINGLE)).equal?(0) && (get_selection_count).equal?(0))
        # int
        # int
        path = Array.typed(::Java::Long).new(1) { 0 }
        if (OS.gtk_tree_view_get_path_at_pos(self.attr_handle, RJava.cast_to_int(gdk_event.attr_x), RJava.cast_to_int(gdk_event.attr_y), path, nil, nil, nil))
          if (!(path[0]).equal?(0))
            # int
            selection = OS.gtk_tree_view_get_selection(self.attr_handle)
            OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
            OS.gtk_tree_view_set_cursor(self.attr_handle, path[0], 0, false)
            OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
            OS.gtk_tree_path_free(path[0])
          end
        end
      end
      # Bug in GTK. GTK segments fault, if the GtkTreeView widget is
      # not in focus and all items in the widget are disposed before
      # it finishes processing a button press.  The fix is to give
      # focus to the widget before it starts processing the event.
      if (!OS._gtk_widget_has_focus(self.attr_handle))
        OS.gtk_widget_grab_focus(self.attr_handle)
      end
      return result
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_button_release_event(widget, event)
      # int
      window = OS._gdk_event_window(event)
      if (!(window).equal?(OS.gtk_tree_view_get_bin_window(self.attr_handle)))
        return 0
      end
      return super(widget, event)
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def gtk_changed(widget)
      item = get_focus_item
      if (!(item).nil?)
        event = Event.new
        event.attr_item = item
        post_event(SWT::Selection, event)
      end
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    # int
    def gtk_expand_collapse_cursor_row(widget, logical, expand, open_all)
      # FIXME - this flag is never cleared.  It should be cleared when the expand all operation completes.
      if (!(expand).equal?(0) && !(open_all).equal?(0))
        @expand_all = true
      end
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_key_press_event(widget, event_ptr)
      # int
      result = super(widget, event_ptr)
      if (!(result).equal?(0))
        return result
      end
      if (OS::GTK_VERSION < OS._version(2, 2, 0))
        # Feature in GTK 2.0.x.  When an item is default selected using
        # the return key, GTK does not issue notification. The fix is
        # to issue this notification when the return key is pressed.
        key_event = GdkEventKey.new
        OS.memmove(key_event, event_ptr, GdkEventKey.attr_sizeof)
        key = key_event.attr_keyval
        case (key)
        when OS::GDK_Return, OS::GDK_KP_Enter
          event = Event.new
          event.attr_item = get_focus_item
          post_event(SWT::DefaultSelection, event)
        end
      end
      return result
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_motion_notify_event(widget, event)
      # int
      window = OS._gdk_event_window(event)
      if (!(window).equal?(OS.gtk_tree_view_get_bin_window(self.attr_handle)))
        return 0
      end
      return super(widget, event)
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def gtk_popup_menu(widget)
      # int
      result = super(widget)
      # Bug in GTK.  The context menu for the typeahead in GtkTreeViewer
      # opens in the bottom right corner of the screen when Shift+F10
      # is pressed and the typeahead window was not visible.  The fix is
      # to prevent the context menu from opening by stopping the default
      # handler.
      # 
      # NOTE: The bug only happens in GTK 2.6.5 and lower.
      return OS::GTK_VERSION < OS._version(2, 6, 5) ? 1 : result
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    def gtk_row_activated(tree, path, column)
      if ((path).equal?(0))
        return 0
      end
      item = nil
      # int
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      if (OS.gtk_tree_model_get_iter(@model_handle, iter, path))
        index = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_tree_model_get(@model_handle, iter, ID_COLUMN, index, -1)
        item = @items[index[0]]
      end
      OS.g_free(iter)
      event = Event.new
      event.attr_item = item
      post_event(SWT::DefaultSelection, event)
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    def gtk_test_collapse_row(tree, iter, path)
      index = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_tree_model_get(@model_handle, iter, ID_COLUMN, index, -1)
      item = @items[index[0]]
      event = Event.new
      event.attr_item = item
      old_model_changed = @model_changed
      @model_changed = false
      send_event(SWT::Collapse, event)
      # Bug in GTK.  Collapsing the target row during the test_collapse_row
      # handler will cause a segmentation fault if the animation code is allowed
      # to run.  The fix is to block the animation if the row is already
      # collapsed.
      changed = @model_changed || !OS.gtk_tree_view_row_expanded(self.attr_handle, path)
      @model_changed = old_model_changed
      if (is_disposed || item.is_disposed)
        return 1
      end
      # Bug in GTK.  Expanding or collapsing a row which has no more
      # children causes the model state to become invalid, causing
      # GTK to give warnings and behave strangely.  Other changes to
      # the model can cause expansion to fail when using the multiple
      # expansion keys (such as *).  The fix is to stop the expansion
      # if there are model changes.
      # 
      # Note: This callback must return 0 for the collapsing
      # animation to occur.
      if (changed)
        OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, TEST_COLLAPSE_ROW)
        OS.gtk_tree_view_collapse_row(self.attr_handle, path)
        OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, TEST_COLLAPSE_ROW)
        return 1
      end
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    def gtk_test_expand_row(tree, iter, path)
      index = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_tree_model_get(@model_handle, iter, ID_COLUMN, index, -1)
      item = @items[index[0]]
      event = Event.new
      event.attr_item = item
      old_model_changed = @model_changed
      @model_changed = false
      send_event(SWT::Expand, event)
      # Bug in GTK.  Expanding the target row during the test_expand_row
      # handler will cause a segmentation fault if the animation code is allowed
      # to run.  The fix is to block the animation if the row is already
      # expanded.
      changed = @model_changed || OS.gtk_tree_view_row_expanded(self.attr_handle, path)
      @model_changed = old_model_changed
      if (is_disposed || item.is_disposed)
        return 1
      end
      # Bug in GTK.  Expanding or collapsing a row which has no more
      # children causes the model state to become invalid, causing
      # GTK to give warnings and behave strangely.  Other changes to
      # the model can cause expansion to fail when using the multiple
      # expansion keys (such as *).  The fix is to stop the expansion
      # if there are model changes.
      # 
      # Bug in GTK.  test-expand-row does not get called for each row
      # in an expand all operation.  The fix is to block the initial
      # expansion and only expand a single level.
      # 
      # Note: This callback must return 0 for the collapsing
      # animation to occur.
      if (changed || @expand_all)
        OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, TEST_EXPAND_ROW)
        OS.gtk_tree_view_expand_row(self.attr_handle, path, false)
        OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, TEST_EXPAND_ROW)
        return 1
      end
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_toggled(renderer, path_str)
      # int
      path = OS.gtk_tree_path_new_from_string(path_str)
      if ((path).equal?(0))
        return 0
      end
      item = nil
      # int
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      if (OS.gtk_tree_model_get_iter(@model_handle, iter, path))
        item = __get_item(iter)
      end
      OS.g_free(iter)
      OS.gtk_tree_path_free(path)
      if (!(item).nil?)
        item.set_checked(!item.get_checked)
        event = Event.new
        event.attr_detail = SWT::CHECK
        event.attr_item = item
        post_event(SWT::Selection, event)
      end
      return 0
    end
    
    typesig { [::Java::Long, GtkRequisition] }
    # int
    def gtk_widget_size_request(widget, requisition)
      # Bug in GTK.  For some reason, gtk_widget_size_request() fails
      # to include the height of the tree view items when there are
      # no columns visible.  The fix is to temporarily make one column
      # visible.
      if ((@column_count).equal?(0))
        super(widget, requisition)
        return
      end
      # int
      columns = OS.gtk_tree_view_get_columns(self.attr_handle)
      list = columns
      fix_visible = !(columns).equal?(0)
      while (!(list).equal?(0))
        # int
        column = OS.g_list_data(list)
        if (OS.gtk_tree_view_column_get_visible(column))
          fix_visible = false
          break
        end
        list = OS.g_list_next(list)
      end
      # int
      column_handle = 0
      if (fix_visible)
        column_handle = OS.g_list_data(columns)
        OS.gtk_tree_view_column_set_visible(column_handle, true)
      end
      super(widget, requisition)
      if (fix_visible)
        OS.gtk_tree_view_column_set_visible(column_handle, false)
      end
      if (!(columns).equal?(0))
        OS.g_list_free(columns)
      end
    end
    
    typesig { [] }
    def hide_first_column
      # int
      first_column = OS.gtk_tree_view_get_column(self.attr_handle, 0)
      OS.gtk_tree_view_column_set_visible(first_column, false)
    end
    
    typesig { [] }
    def hook_events
      super
      # int
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_connect_closure(selection, OS.attr_changed, self.attr_display.attr_closures[CHANGED], false)
      OS.g_signal_connect_closure(self.attr_handle, OS.attr_row_activated, self.attr_display.attr_closures[ROW_ACTIVATED], false)
      OS.g_signal_connect_closure(self.attr_handle, OS.attr_test_expand_row, self.attr_display.attr_closures[TEST_EXPAND_ROW], false)
      OS.g_signal_connect_closure(self.attr_handle, OS.attr_test_collapse_row, self.attr_display.attr_closures[TEST_COLLAPSE_ROW], false)
      OS.g_signal_connect_closure(self.attr_handle, OS.attr_expand_collapse_cursor_row, self.attr_display.attr_closures[EXPAND_COLLAPSE_CURSOR_ROW], false)
      if (!(@check_renderer).equal?(0))
        OS.g_signal_connect_closure(@check_renderer, OS.attr_toggled, self.attr_display.attr_closures[TOGGLED], false)
      end
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
      index = -1
      # int
      path = OS.gtk_tree_model_get_path(@model_handle, item.attr_handle)
      depth = OS.gtk_tree_path_get_depth(path)
      if ((depth).equal?(1))
        # int
        indices = OS.gtk_tree_path_get_indices(path)
        if (!(indices).equal?(0))
          temp = Array.typed(::Java::Int).new(1) { 0 }
          OS.memmove(temp, indices, 4)
          index = temp[0]
        end
      end
      OS.gtk_tree_path_free(path)
      return index
    end
    
    typesig { [::Java::Char] }
    def mnemonic_hit(key)
      i = 0
      while i < @column_count
        # int
        label_handle = @columns[i].attr_label_handle
        if (!(label_handle).equal?(0) && mnemonic_hit(label_handle, key))
          return true
        end
        i += 1
      end
      return false
    end
    
    typesig { [::Java::Char] }
    def mnemonic_match(key)
      i = 0
      while i < @column_count
        # int
        label_handle = @columns[i].attr_label_handle
        if (!(label_handle).equal?(0) && mnemonic_match(label_handle, key))
          return true
        end
        i += 1
      end
      return false
    end
    
    typesig { [] }
    # int
    def paint_window
      OS.gtk_widget_realize(self.attr_handle)
      return OS.gtk_tree_view_get_bin_window(self.attr_handle)
    end
    
    typesig { [] }
    def recreate_renderers
      if (!(@check_renderer).equal?(0))
        self.attr_display.remove_widget(@check_renderer)
        OS.g_object_unref(@check_renderer)
        @check_renderer = @owner_draw ? OS.g_object_new(self.attr_display.gtk_cell_renderer_toggle_get_type, 0) : OS.gtk_cell_renderer_toggle_new
        if ((@check_renderer).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.g_object_ref(@check_renderer)
        self.attr_display.add_widget(@check_renderer, self)
        OS.g_signal_connect_closure(@check_renderer, OS.attr_toggled, self.attr_display.attr_closures[TOGGLED], false)
      end
      if ((@column_count).equal?(0))
        create_renderers(OS.gtk_tree_view_get_column(self.attr_handle, 0), Tree::FIRST_COLUMN, true, 0)
      else
        i = 0
        while i < @column_count
          column = @columns[i]
          create_renderers(column.attr_handle, column.attr_model_index, (i).equal?(0), column.attr_style)
          i += 1
        end
      end
    end
    
    typesig { [] }
    def redraw_background_image
      control = find_background_control
      if (!(control).nil? && !(control.attr_background_image).nil?)
        redraw_widget(0, 0, 0, 0, true, false, false)
      end
    end
    
    typesig { [] }
    def register
      super
      self.attr_display.add_widget(OS.gtk_tree_view_get_selection(self.attr_handle), self)
      if (!(@check_renderer).equal?(0))
        self.attr_display.add_widget(@check_renderer, self)
      end
    end
    
    typesig { [TreeItem, ::Java::Boolean] }
    def release_item(item, release)
      index = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_tree_model_get(@model_handle, item.attr_handle, ID_COLUMN, index, -1)
      if ((index[0]).equal?(-1))
        return
      end
      if (release)
        item.release(false)
      end
      @items[index[0]] = nil
    end
    
    typesig { [::Java::Long] }
    # int
    def release_items(parent_iter)
      index = Array.typed(::Java::Int).new(1) { 0 }
      # int
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      valid = OS.gtk_tree_model_iter_children(@model_handle, iter, parent_iter)
      while (valid)
        release_items(iter)
        if (!is_disposed)
          OS.gtk_tree_model_get(@model_handle, iter, ID_COLUMN, index, -1)
          if (!(index[0]).equal?(-1))
            item = @items[index[0]]
            if (!(item).nil?)
              release_item(item, true)
            end
          end
        end
        valid = OS.gtk_tree_model_iter_next(@model_handle, iter)
      end
      OS.g_free(iter)
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      if (!(@items).nil?)
        i = 0
        while i < @items.attr_length
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
      if (!(@model_handle).equal?(0))
        OS.g_object_unref(@model_handle)
      end
      @model_handle = 0
      if (!(@check_renderer).equal?(0))
        OS.g_object_unref(@check_renderer)
      end
      @check_renderer = 0
      if (!(@image_list).nil?)
        @image_list.dispose
      end
      if (!(@header_image_list).nil?)
        @header_image_list.dispose
      end
      @image_list = @header_image_list = nil
      @current_item = nil
    end
    
    typesig { [::Java::Long, ::Java::Int, ::Java::Int] }
    # int
    def remove(parent_iter, start, end_)
      if (start > end_)
        return
      end
      item_count = OS.gtk_tree_model_iter_n_children(@model_handle, parent_iter)
      if (!(0 <= start && start <= end_ && end_ < item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      # int
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      # int
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      index = start
      i = start
      while i <= end_
        OS.gtk_tree_model_iter_nth_child(@model_handle, iter, parent_iter, index)
        value = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_tree_model_get(@model_handle, iter, ID_COLUMN, value, -1)
        item = !(value[0]).equal?(-1) ? @items[value[0]] : nil
        if (!(item).nil? && !item.is_disposed)
          item.dispose
        else
          OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
          OS.gtk_tree_store_remove(@model_handle, iter)
          OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
        end
        i += 1
      end
      OS.g_free(iter)
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
      # int
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.gtk_tree_store_clear(@model_handle)
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      # Disable searching when using VIRTUAL
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        # Bug in GTK. Until GTK 2.6.5, calling gtk_tree_view_set_enable_search(FALSE)
        # would prevent the user from being able to type in text to search the tree.
        # After 2.6.5, GTK introduced Ctrl+F as being the key binding for interactive
        # search. This meant that even if FALSE was passed to enable_search, the user
        # can still bring up the search pop up using the keybinding. GTK also introduced
        # the notion of passing a -1 to gtk_set_search_column to disable searching
        # (including the search key binding).  The fix is to use the right calls
        # for the right version.
        if (OS::GTK_VERSION >= OS._version(2, 6, 5))
          OS.gtk_tree_view_set_search_column(self.attr_handle, -1)
        else
          OS.gtk_tree_view_set_enable_search(self.attr_handle, false)
        end
      else
        # Set the search column whenever the model changes
        first_column = (@column_count).equal?(0) ? FIRST_COLUMN : @columns[0].attr_model_index
        OS.gtk_tree_view_set_search_column(self.attr_handle, first_column + CELL_TEXT)
      end
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
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    # int
    # int
    # int
    # int
    def renderer_get_size_proc(cell, widget, cell_area, x_offset, y_offset, width, height)
      # int
      g_class = OS.g_type_class_peek_parent(OS._g_object_get_class(cell))
      klass = GtkCellRendererClass.new
      OS.memmove(klass, g_class)
      # int
      result = OS.call(klass.attr_get_size, cell, self.attr_handle, cell_area, x_offset, y_offset, width, height)
      if (!@ignore_size && OS._gtk_is_cell_renderer_text(cell))
        # int
        iter = OS.g_object_get_qdata(cell, Display::SWT_OBJECT_INDEX2)
        item = nil
        if (!(iter).equal?(0))
          item = __get_item(iter)
        end
        if (!(item).nil?)
          column_index = 0
          if (@column_count > 0)
            # int
            column_handle = OS.g_object_get_qdata(cell, Display::SWT_OBJECT_INDEX1)
            i = 0
            while i < @column_count
              if ((@columns[i].attr_handle).equal?(column_handle))
                column_index = i
                break
              end
              i += 1
            end
          end
          if (hooks(SWT::MeasureItem))
            content_width = Array.typed(::Java::Int).new(1) { 0 }
            content_height = Array.typed(::Java::Int).new(1) { 0 }
            if (!(width).equal?(0))
              OS.memmove(content_width, width, 4)
            end
            if (!(height).equal?(0))
              OS.memmove(content_height, height, 4)
            end
            image = item.get_image(column_index)
            image_width = 0
            if (!(image).nil?)
              bounds = image.get_bounds
              image_width = bounds.attr_width
            end
            content_width[0] += image_width
            gc = SwtGC.new(self)
            gc.set_font(item.get_font(column_index))
            event = Event.new
            event.attr_item = item
            event.attr_index = column_index
            event.attr_gc = gc
            event.attr_width = content_width[0]
            event.attr_height = content_height[0]
            send_event(SWT::MeasureItem, event)
            gc.dispose
            content_width[0] = event.attr_width - image_width
            if (content_height[0] < event.attr_height)
              content_height[0] = event.attr_height
            end
            if (!(width).equal?(0))
              OS.memmove(width, content_width, 4)
            end
            if (!(height).equal?(0))
              OS.memmove(height, content_height, 4)
            end
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    # int
    # int
    # int
    # int
    # int
    def renderer_render_proc(cell, window, widget, background_area, cell_area, expose_area, flags)
      item = nil
      # int
      iter = OS.g_object_get_qdata(cell, Display::SWT_OBJECT_INDEX2)
      if (!(iter).equal?(0))
        item = __get_item(iter)
      end
      # int
      column_handle = OS.g_object_get_qdata(cell, Display::SWT_OBJECT_INDEX1)
      column_index = 0
      if (@column_count > 0)
        i = 0
        while i < @column_count
          if ((@columns[i].attr_handle).equal?(column_handle))
            column_index = i
            break
          end
          i += 1
        end
      end
      if (!(item).nil?)
        if (OS._gtk_is_cell_renderer_toggle(cell) || (OS._gtk_is_cell_renderer_pixbuf(cell) && (!(column_index).equal?(0) || ((self.attr_style & SWT::CHECK)).equal?(0))))
          # 64
          @draw_flags = RJava.cast_to_int(flags)
          @draw_state = SWT::FOREGROUND
          # int
          # int
          ptr = Array.typed(::Java::Long).new(1) { 0 }
          OS.gtk_tree_model_get(@model_handle, item.attr_handle, Tree::BACKGROUND_COLUMN, ptr, -1)
          if ((ptr[0]).equal?(0))
            model_index = (@column_count).equal?(0) ? Tree::FIRST_COLUMN : @columns[column_index].attr_model_index
            OS.gtk_tree_model_get(@model_handle, item.attr_handle, model_index + Tree::CELL_BACKGROUND, ptr, -1)
          end
          if (!(ptr[0]).equal?(0))
            @draw_state |= SWT::BACKGROUND
          end
          if (!((flags & OS::GTK_CELL_RENDERER_SELECTED)).equal?(0))
            @draw_state |= SWT::SELECTED
          end
          if (!((flags & OS::GTK_CELL_RENDERER_FOCUSED)).equal?(0))
            @draw_state |= SWT::FOCUSED
          end
          rect = GdkRectangle.new
          # int
          path = OS.gtk_tree_model_get_path(@model_handle, iter)
          OS.gtk_tree_view_get_background_area(self.attr_handle, path, column_handle, rect)
          OS.gtk_tree_path_free(path)
          if (((@draw_state & SWT::SELECTED)).equal?(0))
            control = find_background_control
            if (!(control).nil? && !(control.attr_background_image).nil?)
              OS.gdk_window_clear_area(window, rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
            end
          end
          if (hooks(SWT::EraseItem))
            was_selected = false
            if (!((@draw_state & SWT::SELECTED)).equal?(0))
              was_selected = true
              OS.gdk_window_clear_area(window, rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
            end
            gc = SwtGC.new(self)
            if (!((@draw_state & SWT::SELECTED)).equal?(0))
              gc.set_background(self.attr_display.get_system_color(SWT::COLOR_LIST_SELECTION))
              gc.set_foreground(self.attr_display.get_system_color(SWT::COLOR_LIST_SELECTION_TEXT))
            else
              gc.set_background(item.get_background(column_index))
              gc.set_foreground(item.get_foreground(column_index))
            end
            gc.set_font(item.get_font(column_index))
            if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
              rect.attr_x = get_client_width - rect.attr_width - rect.attr_x
            end
            gc.set_clipping(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
            event = Event.new
            event.attr_item = item
            event.attr_index = column_index
            event.attr_gc = gc
            event.attr_x = rect.attr_x
            event.attr_y = rect.attr_y
            event.attr_width = rect.attr_width
            event.attr_height = rect.attr_height
            event.attr_detail = @draw_state
            send_event(SWT::EraseItem, event)
            @draw_foreground = nil
            @draw_state = event.attr_doit ? event.attr_detail : 0
            @draw_flags &= ~(OS::GTK_CELL_RENDERER_FOCUSED | OS::GTK_CELL_RENDERER_SELECTED)
            if (!((@draw_state & SWT::SELECTED)).equal?(0))
              @draw_flags |= OS::GTK_CELL_RENDERER_SELECTED
            end
            if (!((@draw_state & SWT::FOCUSED)).equal?(0))
              @draw_flags |= OS::GTK_CELL_RENDERER_FOCUSED
            end
            if (!((@draw_state & SWT::SELECTED)).equal?(0))
              # int
              style = OS.gtk_widget_get_style(widget)
              # TODO - parity and sorted
              detail = Converter.wcs_to_mbcs(nil, "cell_odd", true)
              OS.gtk_paint_flat_box(style, window, OS::GTK_STATE_SELECTED, OS::GTK_SHADOW_NONE, rect, widget, detail, rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
            else
              if (was_selected)
                @draw_foreground = gc.get_foreground.attr_handle
              end
            end
            gc.dispose
          end
        end
      end
      # int
      result = 0
      if (!((@draw_state & SWT::BACKGROUND)).equal?(0) && ((@draw_state & SWT::SELECTED)).equal?(0))
        gc = SwtGC.new(self)
        gc.set_background(item.get_background(column_index))
        rect = GdkRectangle.new
        OS.memmove(rect, background_area, GdkRectangle.attr_sizeof)
        gc.fill_rectangle(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
        gc.dispose
      end
      if (!((@draw_state & SWT::FOREGROUND)).equal?(0) || OS._gtk_is_cell_renderer_toggle(cell))
        # int
        g_class = OS.g_type_class_peek_parent(OS._g_object_get_class(cell))
        klass = GtkCellRendererClass.new
        OS.memmove(klass, g_class)
        if (!(@draw_foreground).nil? && OS._gtk_is_cell_renderer_text(cell))
          OS.g_object_set(cell, OS.attr_foreground_gdk, @draw_foreground, 0)
        end
        result = OS.call(klass.attr_render, cell, window, self.attr_handle, background_area, cell_area, expose_area, @draw_flags)
      end
      if (!(item).nil?)
        if (OS._gtk_is_cell_renderer_text(cell))
          if (hooks(SWT::PaintItem))
            rect = GdkRectangle.new
            # int
            path = OS.gtk_tree_model_get_path(@model_handle, iter)
            OS.gtk_tree_view_get_cell_area(self.attr_handle, path, column_handle, rect)
            OS.gtk_tree_path_free(path)
            if (OS::GTK_VERSION < OS._version(2, 8, 18) && (OS.gtk_tree_view_get_expander_column(self.attr_handle)).equal?(column_handle))
              buffer = Array.typed(::Java::Int).new(1) { 0 }
              OS.gtk_widget_style_get(self.attr_handle, OS.attr_expander_size, buffer, 0)
              rect.attr_x += buffer[0] + TreeItem::EXPANDER_EXTRA_PADDING
              rect.attr_width -= buffer[0] + TreeItem::EXPANDER_EXTRA_PADDING
              # OS.gtk_widget_style_get (handle, OS.horizontal_separator, buffer, 0);
              # rect.x += buffer[0];
              # rect.width -= buffer [0]; // TODO Is this required for some versions?
            end
            @ignore_size = true
            content_x = Array.typed(::Java::Int).new(1) { 0 }
            content_width = Array.typed(::Java::Int).new(1) { 0 }
            OS.gtk_cell_renderer_get_size(cell, self.attr_handle, nil, nil, nil, content_width, nil)
            OS.gtk_tree_view_column_cell_get_position(column_handle, cell, content_x, nil)
            @ignore_size = false
            image = item.get_image(column_index)
            image_width = 0
            if (!(image).nil?)
              bounds = image.get_bounds
              image_width = bounds.attr_width
            end
            content_x[0] -= image_width
            content_width[0] += image_width
            gc = SwtGC.new(self)
            if (!((@draw_state & SWT::SELECTED)).equal?(0))
              gc.set_background(self.attr_display.get_system_color(SWT::COLOR_LIST_SELECTION))
              gc.set_foreground(self.attr_display.get_system_color(SWT::COLOR_LIST_SELECTION_TEXT))
            else
              gc.set_background(item.get_background(column_index))
              foreground = !(@draw_foreground).nil? ? Color.gtk_new(self.attr_display, @draw_foreground) : item.get_foreground(column_index)
              gc.set_foreground(foreground)
            end
            gc.set_font(item.get_font(column_index))
            if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
              rect.attr_x = get_client_width - rect.attr_width - rect.attr_x
            end
            gc.set_clipping(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
            event = Event.new
            event.attr_item = item
            event.attr_index = column_index
            event.attr_gc = gc
            event.attr_x = rect.attr_x + content_x[0]
            event.attr_y = rect.attr_y
            event.attr_width = content_width[0]
            event.attr_height = rect.attr_height
            event.attr_detail = @draw_state
            send_event(SWT::PaintItem, event)
            gc.dispose
          end
        end
      end
      return result
    end
    
    typesig { [] }
    def reset_custom_draw
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0) || @owner_draw)
        return
      end
      end_ = Math.max(1, @column_count)
      i = 0
      while i < end_
        custom_draw = !(@column_count).equal?(0) ? @columns[i].attr_custom_draw : @first_custom_draw
        if (custom_draw)
          # int
          column = OS.gtk_tree_view_get_column(self.attr_handle, i)
          # int
          text_renderer = get_text_renderer(column)
          OS.gtk_tree_view_column_set_cell_data_func(column, text_renderer, 0, 0, 0)
          if (!(@column_count).equal?(0))
            @columns[i].attr_custom_draw = false
          end
        end
        i += 1
      end
      @first_custom_draw = false
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
      if ((item).nil?)
        OS.gtk_tree_view_set_drag_dest_row(self.attr_handle, 0, OS::GTK_TREE_VIEW_DROP_BEFORE)
        return
      end
      if (item.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(item.attr_parent).equal?(self))
        return
      end
      rect = item.get_bounds
      # int
      # int
      path = Array.typed(::Java::Long).new(1) { 0 }
      OS.gtk_widget_realize(self.attr_handle)
      if (!OS.gtk_tree_view_get_path_at_pos(self.attr_handle, rect.attr_x, rect.attr_y, path, nil, nil, nil))
        return
      end
      if ((path[0]).equal?(0))
        return
      end
      position = before ? OS::GTK_TREE_VIEW_DROP_BEFORE : OS::GTK_TREE_VIEW_DROP_AFTER
      OS.gtk_tree_view_set_drag_dest_row(self.attr_handle, path[0], position)
      OS.gtk_tree_path_free(path[0])
    end
    
    typesig { [::Java::Long, ::Java::Int] }
    # int
    def set_item_count(parent_iter, count)
      item_count = OS.gtk_tree_model_iter_n_children(@model_handle, parent_iter)
      if ((count).equal?(item_count))
        return
      end
      is_virtual = !((self.attr_style & SWT::VIRTUAL)).equal?(0)
      if (!is_virtual)
        set_redraw(false)
      end
      remove(parent_iter, count, item_count - 1)
      if (is_virtual)
        i = item_count
        while i < count
          # int
          iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
          if ((iter).equal?(0))
            error(SWT::ERROR_NO_HANDLES)
          end
          OS.gtk_tree_store_append(@model_handle, iter, parent_iter)
          OS.gtk_tree_store_set(@model_handle, iter, ID_COLUMN, -1, -1)
          OS.g_free(iter)
          i += 1
        end
      else
        i = item_count
        while i < count
          TreeItem.new(self, parent_iter, SWT::NONE, i, true)
          i += 1
        end
      end
      if (!is_virtual)
        set_redraw(true)
      end
      @model_changed = true
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
      set_item_count(0, count)
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
      fix_column = show_first_column
      # int
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.gtk_tree_selection_select_iter(selection, item.attr_handle)
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      if (fix_column)
        hide_first_column
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
      fix_column = show_first_column
      # int
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.gtk_tree_selection_select_all(selection)
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      if (fix_column)
        hide_first_column
      end
    end
    
    typesig { [GdkColor] }
    def set_background_color(color)
      super(color)
      OS.gtk_widget_modify_base(self.attr_handle, 0, color)
    end
    
    typesig { [::Java::Long] }
    # int
    def set_background_pixmap(pixmap)
      super(pixmap)
      # int
      window = paint_window
      if (!(window).equal?(0))
        OS.gdk_window_set_back_pixmap(window, 0, true)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize)
      result = super(x, y, width, height, move, resize)
      # Bug on GTK.  The tree view sometimes does not get a paint
      # event or resizes to a one pixel square when resized in a new
      # shell that is not visible after any event loop has been run.  The
      # problem is intermittent. It doesn't seem to happen the first time
      # a new shell is created. The fix is to ensure the tree view is realized
      # after it has been resized.
      OS.gtk_widget_realize(self.attr_handle)
      # Bug in GTK.  An empty GtkTreeView fails to repaint the focus rectangle
      # correctly when resized on versions before 2.6.0.  The fix is to force
      # the widget to redraw.
      if (OS::GTK_VERSION < OS._version(2, 6, 0) && (OS.gtk_tree_model_iter_n_children(@model_handle, 0)).equal?(0))
        redraw(false)
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
        if (order.attr_length > 0)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        return
      end
      if (!(order.attr_length).equal?(@column_count))
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      seen = Array.typed(::Java::Boolean).new(@column_count) { false }
      i = 0
      while i < order.attr_length
        index = order[i]
        if (index < 0 || index >= @column_count)
          error(SWT::ERROR_INVALID_RANGE)
        end
        if (seen[index])
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        seen[index] = true
        i += 1
      end
      # int
      base_column = 0
      i_ = 0
      while i_ < order.attr_length
        # int
        column = @columns[order[i_]].attr_handle
        OS.gtk_tree_view_move_column_after(self.attr_handle, column, base_column)
        base_column = column
        i_ += 1
      end
    end
    
    typesig { [::Java::Long] }
    # int
    def set_font_description(font)
      super(font)
      columns = get_columns
      i = 0
      while i < columns.attr_length
        if (!(columns[i]).nil?)
          columns[i].set_font_description(font)
        end
        i += 1
      end
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
      OS.gtk_tree_view_set_headers_visible(self.attr_handle, show)
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
      OS.gtk_tree_view_set_rules_hint(self.attr_handle, show)
    end
    
    typesig { [] }
    def set_parent_background
      super
      # int
      window = paint_window
      if (!(window).equal?(0))
        OS.gdk_window_set_back_pixmap(window, 0, true)
      end
    end
    
    typesig { [::Java::Long] }
    # int
    def set_parent_window(widget)
      # int
      window = event_window
      OS.gtk_widget_set_parent_window(widget, window)
    end
    
    typesig { [::Java::Long, TreeItem] }
    # int
    def set_scroll_width(column, item)
      if (!(@column_count).equal?(0) || (@current_item).equal?(item))
        return
      end
      # Use GTK_TREE_VIEW_COLUMN_GROW_ONLY on GTK versions < 2.3.2
      # because fixed_height_mode is not supported.
      if ((!((self.attr_style & SWT::VIRTUAL)).equal?(0)) && OS::GTK_VERSION < OS._version(2, 3, 2))
        return
      end
      width = OS.gtk_tree_view_column_get_fixed_width(column)
      item_width = calculate_width(column, item.attr_handle, true)
      if (width < item_width)
        OS.gtk_tree_view_column_set_fixed_width(column, item_width)
      end
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
      length = items.attr_length
      if ((length).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length > 1))
        return
      end
      fix_column = show_first_column
      # int
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      first = true
      i = 0
      while i < length
        item = items[i]
        if ((item).nil?)
          i += 1
          next
        end
        if (item.is_disposed)
          break
        end
        if (!(item.attr_parent).equal?(self))
          i += 1
          next
        end
        # int
        path = OS.gtk_tree_model_get_path(@model_handle, item.attr_handle)
        show_item(path, false)
        if (first)
          OS.gtk_tree_view_set_cursor(self.attr_handle, path, 0, false)
        end
        OS.gtk_tree_selection_select_iter(selection, item.attr_handle)
        OS.gtk_tree_path_free(path)
        first = false
        i += 1
      end
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      if (fix_column)
        hide_first_column
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
      if (!(@sort_column).nil? && !@sort_column.is_disposed)
        OS.gtk_tree_view_column_set_sort_indicator(@sort_column.attr_handle, false)
      end
      @sort_column = column
      if (!(@sort_column).nil? && !(@sort_direction).equal?(SWT::NONE))
        OS.gtk_tree_view_column_set_sort_indicator(@sort_column.attr_handle, true)
        OS.gtk_tree_view_column_set_sort_order(@sort_column.attr_handle, (@sort_direction).equal?(SWT::DOWN) ? 0 : 1)
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
      @sort_direction = direction
      if ((@sort_column).nil? || @sort_column.is_disposed)
        return
      end
      if ((@sort_direction).equal?(SWT::NONE))
        OS.gtk_tree_view_column_set_sort_indicator(@sort_column.attr_handle, false)
      else
        OS.gtk_tree_view_column_set_sort_indicator(@sort_column.attr_handle, true)
        OS.gtk_tree_view_column_set_sort_order(@sort_column.attr_handle, (@sort_direction).equal?(SWT::DOWN) ? 0 : 1)
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
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (item.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(item.attr_parent).equal?(self))
        return
      end
      # int
      path = OS.gtk_tree_model_get_path(@model_handle, item.attr_handle)
      show_item(path, false)
      OS.gtk_tree_view_scroll_to_cell(self.attr_handle, path, 0, true, 0, 0)
      if (OS::GTK_VERSION < OS._version(2, 8, 0))
        # Bug in GTK.  According to the documentation, gtk_tree_view_scroll_to_cell
        # should vertically scroll the cell to the top if use_align is true and row_align is 0.
        # However, prior to version 2.8 it does not scroll at all.  The fix is to determine
        # the new location and use gtk_tree_view_scroll_to_point.
        # If the widget is a pinhead, calling gtk_tree_view_scroll_to_point
        # will have no effect. Therefore, it is still neccessary to call
        # gtk_tree_view_scroll_to_cell.
        OS.gtk_widget_realize(self.attr_handle)
        cell_rect = GdkRectangle.new
        OS.gtk_tree_view_get_cell_area(self.attr_handle, path, 0, cell_rect)
        tx = Array.typed(::Java::Int).new(1) { 0 }
        ty = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_tree_view_widget_to_tree_coords(self.attr_handle, cell_rect.attr_x, cell_rect.attr_y, tx, ty)
        OS.gtk_tree_view_scroll_to_point(self.attr_handle, -1, ty[0])
      end
      OS.gtk_tree_path_free(path)
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
      # This code is intentionally commented. According to the
      # documentation, gtk_tree_view_scroll_to_cell should scroll the
      # minimum amount to show the column but instead it scrolls strangely.
      # 
      # OS.gtk_tree_view_scroll_to_cell (handle, 0, column.handle, false, 0, 0);
      OS.gtk_widget_realize(self.attr_handle)
      cell_rect = GdkRectangle.new
      OS.gtk_tree_view_get_cell_area(self.attr_handle, 0, column.attr_handle, cell_rect)
      visible_rect = GdkRectangle.new
      OS.gtk_tree_view_get_visible_rect(self.attr_handle, visible_rect)
      if (cell_rect.attr_x < visible_rect.attr_x)
        OS.gtk_tree_view_scroll_to_point(self.attr_handle, cell_rect.attr_x, -1)
      else
        width = Math.min(visible_rect.attr_width, cell_rect.attr_width)
        if (cell_rect.attr_x + width > visible_rect.attr_x + visible_rect.attr_width)
          tree_x = cell_rect.attr_x + width - visible_rect.attr_width
          OS.gtk_tree_view_scroll_to_point(self.attr_handle, tree_x, -1)
        end
      end
    end
    
    typesig { [] }
    def show_first_column
      # Bug in GTK.  If no columns are visible, changing the selection
      # will fail.  The fix is to temporarily make a column visible.
      column_count = Math.max(1, @column_count)
      i = 0
      while i < column_count
        # int
        column = OS.gtk_tree_view_get_column(self.attr_handle, i)
        if (OS.gtk_tree_view_column_get_visible(column))
          return false
        end
        i += 1
      end
      # int
      first_column = OS.gtk_tree_view_get_column(self.attr_handle, 0)
      OS.gtk_tree_view_column_set_visible(first_column, true)
      return true
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
      items = get_selection
      if (!(items.attr_length).equal?(0) && !(items[0]).nil?)
        show_item(items[0])
      end
    end
    
    typesig { [::Java::Long, ::Java::Boolean] }
    # int
    def show_item(path, scroll)
      depth = OS.gtk_tree_path_get_depth(path)
      if (depth > 1)
        indices = Array.typed(::Java::Int).new(depth - 1) { 0 }
        # int
        indices_ptr = OS.gtk_tree_path_get_indices(path)
        OS.memmove(indices, indices_ptr, indices.attr_length * 4)
        # int
        temp_path = OS.gtk_tree_path_new
        i = 0
        while i < indices.attr_length
          OS.gtk_tree_path_append_index(temp_path, indices[i])
          OS.gtk_tree_view_expand_row(self.attr_handle, temp_path, false)
          i += 1
        end
        OS.gtk_tree_path_free(temp_path)
      end
      if (scroll)
        OS.gtk_widget_realize(self.attr_handle)
        cell_rect = GdkRectangle.new
        OS.gtk_tree_view_get_cell_area(self.attr_handle, path, 0, cell_rect)
        is_hidden = (cell_rect.attr_y).equal?(0) && (cell_rect.attr_height).equal?(0)
        tx = Array.typed(::Java::Int).new(1) { 0 }
        ty = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_tree_view_widget_to_tree_coords(self.attr_handle, cell_rect.attr_x, cell_rect.attr_y, tx, ty)
        visible_rect = GdkRectangle.new
        OS.gtk_tree_view_get_visible_rect(self.attr_handle, visible_rect)
        if (!is_hidden)
          if (ty[0] < visible_rect.attr_y || ty[0] + cell_rect.attr_height > visible_rect.attr_y + visible_rect.attr_height)
            is_hidden = true
          end
        end
        if (is_hidden)
          # This code intentionally commented.
          # Bug in GTK.  According to the documentation, gtk_tree_view_scroll_to_cell
          # should scroll the minimum amount to show the cell if use_align is false.
          # However, what actually happens is the cell is scrolled to the top.
          # The fix is to determine the new location and use gtk_tree_view_scroll_to_point.
          # If the widget is a pinhead, calling gtk_tree_view_scroll_to_point
          # will have no effect. Therefore, it is still neccessary to
          # call gtk_tree_view_scroll_to_cell.
          # 
          # OS.gtk_tree_view_scroll_to_cell (handle, path, 0, depth != 1, 0.5f, 0.0f);
          if (!(depth).equal?(1))
            OS.gtk_tree_view_scroll_to_cell(self.attr_handle, path, 0, true, 0.5, 0.0)
          else
            if (ty[0] < visible_rect.attr_y)
              OS.gtk_tree_view_scroll_to_point(self.attr_handle, -1, ty[0])
            else
              height = Math.min(visible_rect.attr_height, cell_rect.attr_height)
              if (ty[0] + height > visible_rect.attr_y + visible_rect.attr_height)
                OS.gtk_tree_view_scroll_to_point(self.attr_handle, -1, ty[0] + cell_rect.attr_height - visible_rect.attr_height)
              end
            end
          end
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
      if (!(item.attr_parent).equal?(self))
        return
      end
      # int
      path = OS.gtk_tree_model_get_path(@model_handle, item.attr_handle)
      show_item(path, true)
      OS.gtk_tree_path_free(path)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Long, Array.typed(::Java::Int), ::Java::Int] }
    # int
    # int
    # int
    # int
    def tree_selection_proc(model, path, iter, selection, length)
      if (!(selection).nil?)
        index = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_tree_model_get(@model_handle, iter, ID_COLUMN, index, -1)
        # 64
        selection[RJava.cast_to_int(length)] = index[0]
      end
      return 0
    end
    
    typesig { [ScrollBar] }
    def update_scroll_bar_value(bar)
      super(bar)
      # Bug in GTK. Scrolling changes the XWindow position
      # and makes the child widgets appear to scroll even
      # though when queried their position is unchanged.
      # The fix is to queue a resize event for each child to
      # force the position to be corrected.
      # 
      # int
      parent_handle = parenting_handle
      # int
      list = OS.gtk_container_get_children(parent_handle)
      if ((list).equal?(0))
        return
      end
      # int
      temp = list
      while (!(temp).equal?(0))
        # int
        widget = OS.g_list_data(temp)
        if (!(widget).equal?(0))
          OS.gtk_widget_queue_resize(widget)
        end
        temp = OS.g_list_next(temp)
      end
      OS.g_list_free(list)
    end
    
    private
    alias_method :initialize__tree, :initialize
  end
  
end
