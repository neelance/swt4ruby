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
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
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
    
    # long
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
    
    # long
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
    
    attr_accessor :ignore_accessibility
    alias_method :attr_ignore_accessibility, :ignore_accessibility
    undef_method :ignore_accessibility
    alias_method :attr_ignore_accessibility=, :ignore_accessibility=
    undef_method :ignore_accessibility=
    
    class_module.module_eval {
      const_set_lazy(:CHECKED_COLUMN) { 0 }
      const_attr_reader  :CHECKED_COLUMN
      
      const_set_lazy(:GRAYED_COLUMN) { 1 }
      const_attr_reader  :GRAYED_COLUMN
      
      const_set_lazy(:FOREGROUND_COLUMN) { 2 }
      const_attr_reader  :FOREGROUND_COLUMN
      
      const_set_lazy(:BACKGROUND_COLUMN) { 3 }
      const_attr_reader  :BACKGROUND_COLUMN
      
      const_set_lazy(:FONT_COLUMN) { 4 }
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
    # @see SWT#HIDE_SELECTION
    # @see SWT#VIRTUAL
    # @see SWT#NO_SCROLL
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @model_handle = 0
      @check_renderer = 0
      @item_count = 0
      @column_count = 0
      @last_index_of = 0
      @sort_direction = 0
      @ignore_cell = 0
      @items = nil
      @columns = nil
      @current_item = nil
      @sort_column = nil
      @image_list = nil
      @header_image_list = nil
      @first_custom_draw = false
      @draw_state = 0
      @draw_flags = 0
      @draw_foreground = nil
      @owner_draw = false
      @ignore_size = false
      @ignore_accessibility = false
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
    
    typesig { [::Java::Int] }
    def __get_item(index)
      if (((self.attr_style & SWT::VIRTUAL)).equal?(0))
        return @items[index]
      end
      if (!(@items[index]).nil?)
        return @items[index]
      end
      return @items[index] = TableItem.new(self, SWT::NONE, index, false)
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def cell_data_proc(tree_column, cell, tree_model, iter, data)
      if ((cell).equal?(@ignore_cell))
        return 0
      end
      # long
      path = OS.gtk_tree_model_get_path(tree_model, iter)
      index = Array.typed(::Java::Int).new(1) { 0 }
      OS.memmove(index, OS.gtk_tree_path_get_indices(path), 4)
      item = __get_item(index[0])
      OS.gtk_tree_path_free(path)
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
        model_index = Table::FIRST_COLUMN
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
          OS.gtk_widget_realize(self.attr_handle)
          visible = GdkRectangle.new
          OS.gtk_tree_view_get_visible_rect(self.attr_handle, visible)
          area = GdkRectangle.new
          path = OS.gtk_tree_model_get_path(tree_model, iter)
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
          @last_index_of = index[0]
          set_data = check_data(item)
        end
      end
      # long
      # long
      ptr = Array.typed(::Java::Int).new(1) { 0 }
      if (set_data)
        ptr[0] = 0
        if (is_pixbuf)
          OS.gtk_tree_model_get(tree_model, iter, model_index + CELL_PIXBUF, ptr, -1)
          OS.g_object_set(cell, OS.attr_pixbuf, ptr[0], 0)
        else
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
    
    typesig { [TableItem] }
    def check_data(item)
      if (item.attr_cached)
        return true
      end
      if (!((self.attr_style & SWT::VIRTUAL)).equal?(0))
        item.attr_cached = true
        event = Event.new
        event.attr_item = item
        event.attr_index = index_of(item)
        mask = OS::G_SIGNAL_MATCH_DATA | OS::G_SIGNAL_MATCH_ID
        signal_id = OS.g_signal_lookup(OS.attr_row_changed, OS.gtk_tree_model_get_type)
        OS.g_signal_handlers_block_matched(@model_handle, mask, signal_id, 0, 0, 0, self.attr_handle)
        @current_item = item
        send_event(SWT::SetData, event)
        # widget could be disposed at this point
        @current_item = nil
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
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def calculate_width(column, iter)
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
      OS.gtk_widget_style_get(self.attr_handle, OS.attr_focus_line_width, w, 0)
      width += 2 * w[0]
      # long
      list = OS.gtk_tree_view_column_get_cell_renderers(column)
      if ((list).equal?(0))
        return 0
      end
      # long
      temp = list
      while (!(temp).equal?(0))
        # long
        renderer = OS.g_list_data(temp)
        if (!(renderer).equal?(0))
          OS.gtk_cell_renderer_get_size(renderer, self.attr_handle, nil, nil, nil, w, nil)
          width += w[0]
        end
        temp = OS.g_list_next(temp)
      end
      OS.g_list_free(list)
      if (OS::GTK_VERSION >= OS._version(2, 12, 0) && OS.gtk_tree_view_get_rules_hint(self.attr_handle))
        OS.gtk_widget_style_get(self.attr_handle, OS.attr_grid_line_width, w, 0)
        width += 2 * w[0]
      end
      return width
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
        item.clear
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
          item = @items[i]
          if (!(item).nil?)
            item.clear
          end
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
        item = @items[indices[i_]]
        if (!(item).nil?)
          item.clear
        end
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
    
    typesig { [TableColumn, ::Java::Int] }
    def create_column(column, index)
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
          # long
          old_model = @model_handle
          # long
          types = get_column_types(@column_count + 4) # grow by 4 rows at a time
          # long
          new_model = OS.gtk_list_store_newv(types.attr_length, types)
          if ((new_model).equal?(0))
            error(SWT::ERROR_NO_HANDLES)
          end
          # long
          # long
          ptr = Array.typed(::Java::Int).new(1) { 0 }
          i_ = 0
          while i_ < @item_count
            # long
            new_item = OS.g_malloc(OS._gtk_tree_iter_sizeof)
            if ((new_item).equal?(0))
              error(SWT::ERROR_NO_HANDLES)
            end
            OS.gtk_list_store_append(new_model, new_item)
            item = @items[i_]
            if (!(item).nil?)
              # long
              old_item = item.attr_handle
              j = 0
              while j < model_length
                OS.gtk_tree_model_get(old_model, old_item, j, ptr, -1)
                OS.gtk_list_store_set(new_model, new_item, j, ptr[0], -1)
                if ((types[j]).equal?(OS._g_type_string))
                  OS.g_free((ptr[0]))
                end
                j += 1
              end
              OS.gtk_list_store_remove(old_model, old_item)
              OS.g_free(old_item)
              item.attr_handle = new_item
            else
              OS.g_free(new_item)
            end
            i_ += 1
          end
          OS.gtk_tree_view_set_model(self.attr_handle, new_model)
          OS.g_object_unref(old_model)
          @model_handle = new_model
        end
      end
      # long
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
      # long
      types = get_column_types(1)
      @model_handle = OS.gtk_list_store_newv(types.attr_length, types)
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
      # long
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
    
    typesig { [TableColumn, ::Java::Int] }
    def create_item(column, index)
      if (!(0 <= index && index <= @column_count))
        error(SWT::ERROR_INVALID_RANGE)
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
      # long
      box_handle = OS.gtk_hbox_new(false, 3)
      if ((box_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      # long
      label_handle = OS.gtk_label_new_with_mnemonic(nil)
      if ((label_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      # long
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
      # long
      widget = OS.gtk_widget_get_parent(box_handle)
      while (!(widget).equal?(self.attr_handle))
        if (OS._gtk_is_button(widget))
          column.attr_button_handle = widget
          break
        end
        widget = OS.gtk_widget_get_parent(widget)
      end
      if ((@column_count).equal?(@columns.attr_length))
        new_columns = Array.typed(TableColumn).new(@columns.attr_length + 4) { nil }
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
        while i < @item_count
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
      # Feature in GTK. The tree view does not resize immediately if a table
      # column is created when the table is not visible. If the width of the
      # new column is queried, GTK returns an incorrect value. The fix is to
      # ensure that the columns are resized before any queries.
      if (!is_visible)
        OS.gtk_container_resize_children(self.attr_handle)
      end
    end
    
    typesig { [TableItem, ::Java::Int] }
    def create_item(item, index)
      if (!(0 <= index && index <= @item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      if ((@item_count).equal?(@items.attr_length))
        length = self.attr_draw_count <= 0 ? @items.attr_length + 4 : Math.max(4, @items.attr_length * 3 / 2)
        new_items = Array.typed(TableItem).new(length) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
      end
      item.attr_handle = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      if ((item.attr_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      # Feature in GTK.  It is much faster to append to a list store
      # than to insert at the end using gtk_list_store_insert().
      if ((index).equal?(@item_count))
        OS.gtk_list_store_append(@model_handle, item.attr_handle)
      else
        OS.gtk_list_store_insert(@model_handle, item.attr_handle, index)
      end
      System.arraycopy(@items, index, @items, index + 1, ((@item_count += 1) - 1) - index)
      @items[index] = item
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int] }
    # long
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
      # long
      pixbuf_renderer = @owner_draw ? OS.g_object_new(self.attr_display.gtk_cell_renderer_pixbuf_get_type, 0) : OS.gtk_cell_renderer_pixbuf_new
      if ((pixbuf_renderer).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      # long
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
      # activate that renderer. The workaround is to set a second cell renderer
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
      @items = Array.typed(TableItem).new(4) { nil }
      @columns = Array.typed(TableColumn).new(4) { nil }
      @item_count = @column_count = 0
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
      self.attr_display.remove_widget(@model_handle)
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
      if (index < 0 || index >= @item_count)
        return
      end
      fix_column = show_first_column
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.gtk_tree_selection_unselect_iter(selection, __get_item(index).attr_handle)
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      if (fix_column)
        hide_first_column
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
      fix_column = show_first_column
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      index = start
      while index <= end_
        if (index < 0 || index >= @item_count)
          index += 1
          next
        end
        OS.gtk_tree_selection_unselect_iter(selection, __get_item(index).attr_handle)
        index += 1
      end
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      if (fix_column)
        hide_first_column
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
      fix_column = show_first_column
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      i = 0
      while i < indices.attr_length
        index = indices[i]
        if (index < 0 || index >= @item_count)
          i += 1
          next
        end
        OS.gtk_tree_selection_unselect_iter(selection, __get_item(index).attr_handle)
        i += 1
      end
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
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.gtk_tree_selection_unselect_all(selection)
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      if (fix_column)
        hide_first_column
      end
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
      if ((index).equal?(@column_count))
        return
      end
      # long
      column_handle = column.attr_handle
      if ((@column_count).equal?(1))
        @first_custom_draw = column.attr_custom_draw
      end
      System.arraycopy(@columns, index + 1, @columns, index, (@column_count -= 1) - index)
      @columns[@column_count] = nil
      OS.gtk_tree_view_remove_column(self.attr_handle, column_handle)
      if ((@column_count).equal?(0))
        # long
        old_model = @model_handle
        # long
        types = get_column_types(1)
        # long
        new_model = OS.gtk_list_store_newv(types.attr_length, types)
        if ((new_model).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        # long
        # long
        ptr = Array.typed(::Java::Int).new(1) { 0 }
        i = 0
        while i < @item_count
          # long
          new_item = OS.g_malloc(OS._gtk_tree_iter_sizeof)
          if ((new_item).equal?(0))
            error(SWT::ERROR_NO_HANDLES)
          end
          OS.gtk_list_store_append(new_model, new_item)
          item = @items[i]
          if (!(item).nil?)
            # long
            old_item = item.attr_handle
            j = 0
            while j < FIRST_COLUMN
              OS.gtk_tree_model_get(old_model, old_item, j, ptr, -1)
              OS.gtk_list_store_set(new_model, new_item, j, ptr[0], -1)
              j += 1
            end
            OS.gtk_tree_model_get(old_model, old_item, column.attr_model_index + CELL_PIXBUF, ptr, -1)
            OS.gtk_list_store_set(new_model, new_item, FIRST_COLUMN + CELL_PIXBUF, ptr[0], -1)
            OS.gtk_tree_model_get(old_model, old_item, column.attr_model_index + CELL_TEXT, ptr, -1)
            OS.gtk_list_store_set(new_model, new_item, FIRST_COLUMN + CELL_TEXT, ptr[0], -1)
            OS.g_free(ptr[0])
            OS.gtk_tree_model_get(old_model, old_item, column.attr_model_index + CELL_FOREGROUND, ptr, -1)
            OS.gtk_list_store_set(new_model, new_item, FIRST_COLUMN + CELL_FOREGROUND, ptr[0], -1)
            OS.gtk_tree_model_get(old_model, old_item, column.attr_model_index + CELL_BACKGROUND, ptr, -1)
            OS.gtk_list_store_set(new_model, new_item, FIRST_COLUMN + CELL_BACKGROUND, ptr[0], -1)
            OS.gtk_tree_model_get(old_model, old_item, column.attr_model_index + CELL_FONT, ptr, -1)
            OS.gtk_list_store_set(new_model, new_item, FIRST_COLUMN + CELL_FONT, ptr[0], -1)
            OS.gtk_list_store_remove(old_model, old_item)
            OS.g_free(old_item)
            item.attr_handle = new_item
          else
            OS.g_free(new_item)
          end
          i += 1
        end
        OS.gtk_tree_view_set_model(self.attr_handle, new_model)
        OS.g_object_unref(old_model)
        @model_handle = new_model
        create_column(nil, 0)
      else
        i = 0
        while i < @item_count
          item = @items[i]
          if (!(item).nil?)
            # long
            iter = item.attr_handle
            model_index = column.attr_model_index
            OS.gtk_list_store_set(@model_handle, iter, model_index + CELL_PIXBUF, 0, -1)
            OS.gtk_list_store_set(@model_handle, iter, model_index + CELL_TEXT, 0, -1)
            OS.gtk_list_store_set(@model_handle, iter, model_index + CELL_FOREGROUND, 0, -1)
            OS.gtk_list_store_set(@model_handle, iter, model_index + CELL_BACKGROUND, 0, -1)
            OS.gtk_list_store_set(@model_handle, iter, model_index + CELL_FONT, 0, -1)
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
          check_column = @columns[0]
          create_renderers(check_column.attr_handle, check_column.attr_model_index, true, check_column.attr_style)
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
    
    typesig { [TableItem] }
    def destroy_item(item)
      index = 0
      while (index < @item_count)
        if ((@items[index]).equal?(item))
          break
        end
        index += 1
      end
      if ((index).equal?(@item_count))
        return
      end
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.gtk_list_store_remove(@model_handle, item.attr_handle)
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      System.arraycopy(@items, index + 1, @items, index, (@item_count -= 1) - index)
      @items[@item_count] = nil
      if ((@item_count).equal?(0))
        reset_custom_draw
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Boolean)] }
    def drag_detect(x, y, filter, consume)
      selected = false
      if (filter)
        # long
        # long
        path = Array.typed(::Java::Int).new(1) { 0 }
        if (OS.gtk_tree_view_get_path_at_pos(self.attr_handle, x, y, path, nil, nil, nil))
          if (!(path[0]).equal?(0))
            # long
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
    # long
    def event_window
      return paint_window
    end
    
    typesig { [] }
    def fix_accessibility
      # Bug in GTK. With GTK 2.12, when assistive technologies is on, the time
      # it takes to add or remove several rows to the model is very long. This
      # happens because the accessible object asks each row for its data, including
      # the rows that are not visible. The the fix is to block the accessible object
      # from receiving row_added and row_removed signals and, at the end, send only
      # a notify signal with the "model" detail.
      # 
      # Note: The test bellow has to be updated when the real problem is fixed in
      # the accessible object.
      return OS::GTK_VERSION >= OS._version(2, 12, 0)
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
      # long
      fixed_window = OS._gtk_widget_window(self.attr_fixed_handle)
      # long
      bin_window = OS.gtk_tree_view_get_bin_window(self.attr_handle)
      bin_x = Array.typed(::Java::Int).new(1) { 0 }
      bin_y = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_origin(bin_window, bin_x, bin_y)
      fixed_x = Array.typed(::Java::Int).new(1) { 0 }
      fixed_y = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_origin(fixed_window, fixed_x, fixed_y)
      # long
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
    
    typesig { [::Java::Int] }
    # long
    def get_column_types(column_count)
      # long
      # long
      types = Array.typed(::Java::Int).new(FIRST_COLUMN + (column_count * CELL_TYPES)) { 0 }
      # per row data
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
      if ((@column_count).equal?(0))
        return Array.typed(::Java::Int).new(0) { 0 }
      end
      # long
      list = OS.gtk_tree_view_get_columns(self.attr_handle)
      if ((list).equal?(0))
        return Array.typed(::Java::Int).new(0) { 0 }
      end
      i = 0
      count = OS.g_list_length(list)
      order = Array.typed(::Java::Int).new(count) { 0 }
      # long
      temp = list
      while (!(temp).equal?(0))
        # long
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
    def get_focus_item
      # long
      # long
      path = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_tree_view_get_cursor(self.attr_handle, path, nil)
      if ((path[0]).equal?(0))
        return nil
      end
      item = nil
      # long
      indices = OS.gtk_tree_path_get_indices(path[0])
      if (!(indices).equal?(0))
        index = Array.typed(::Java::Int).new([-1])
        OS.memmove(index, indices, 4)
        item = __get_item(index[0])
      end
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
      if (!OS.gtk_tree_view_get_headers_visible(self.attr_handle))
        return 0
      end
      if (@column_count > 0)
        requisition = GtkRequisition.new
        height = 0
        i = 0
        while i < @column_count
          # long
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
      # long
      fixed_window = OS._gtk_widget_window(self.attr_fixed_handle)
      # long
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
      if ((point).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      # long
      # long
      path = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_widget_realize(self.attr_handle)
      if (!OS.gtk_tree_view_get_path_at_pos(self.attr_handle, point.attr_x, point.attr_y, path, nil, nil, nil))
        return nil
      end
      if ((path[0]).equal?(0))
        return nil
      end
      # long
      indices = OS.gtk_tree_path_get_indices(path[0])
      item = nil
      if (!(indices).equal?(0))
        index = Array.typed(::Java::Int).new(1) { 0 }
        OS.memmove(index, indices, 4)
        item = __get_item(index[0])
      end
      OS.gtk_tree_path_free(path[0])
      return item
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
      if ((@item_count).equal?(0))
        # long
        column = OS.gtk_tree_view_get_column(self.attr_handle, 0)
        w = Array.typed(::Java::Int).new(1) { 0 }
        h = Array.typed(::Java::Int).new(1) { 0 }
        @ignore_size = true
        OS.gtk_tree_view_column_cell_get_size(column, nil, nil, nil, w, h)
        @ignore_size = false
        return h[0]
      else
        height = 0
        # long
        iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
        OS.gtk_tree_model_get_iter_first(@model_handle, iter)
        column_count = Math.max(1, @column_count)
        i = 0
        while i < column_count
          # long
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
      return OS.gtk_tree_view_get_rules_hint(self.attr_handle)
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def get_pixbuf_renderer(column)
      # long
      list = OS.gtk_tree_view_column_get_cell_renderers(column)
      if ((list).equal?(0))
        return 0
      end
      count = OS.g_list_length(list)
      # long
      pixbuf_renderer = 0
      i = 0
      while (i < count)
        # long
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
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      if (OS::GTK_VERSION < OS._version(2, 2, 0))
        self.attr_display.attr_tree_selection_length = 0
        self.attr_display.attr_tree_selection = Array.typed(::Java::Int).new(@item_count) { 0 }
        OS.gtk_tree_selection_selected_foreach(selection, self.attr_display.attr_tree_selection_proc, self.attr_handle)
        result = Array.typed(TableItem).new(self.attr_display.attr_tree_selection_length) { nil }
        i = 0
        while i < result.attr_length
          result[i] = __get_item(self.attr_display.attr_tree_selection[i])
          i += 1
        end
        return result
      end
      # Bug in GTK.  gtk_tree_selection_get_selected_rows() segmentation faults
      # in versions smaller than 2.2.4 if the model is NULL.  The fix is
      # to give a valid pointer instead.
      # 
      # long
      # long
      model = OS::GTK_VERSION < OS._version(2, 2, 4) ? Array.typed(::Java::Int).new(1) { 0 } : nil
      # long
      list = OS.gtk_tree_selection_get_selected_rows(selection, model)
      if (!(list).equal?(0))
        count = OS.g_list_length(list)
        tree_selection = Array.typed(::Java::Int).new(count) { 0 }
        length = 0
        i = 0
        while i < count
          # long
          data = OS.g_list_nth_data(list, i)
          # long
          indices = OS.gtk_tree_path_get_indices(data)
          if (!(indices).equal?(0))
            index = Array.typed(::Java::Int).new(1) { 0 }
            OS.memmove(index, indices, 4)
            tree_selection[length] = index[0]
            length += 1
          end
          i += 1
        end
        OS.g_list_free(list)
        result = Array.typed(TableItem).new(length) { nil }
        i_ = 0
        while i_ < result.attr_length
          result[i_] = __get_item(tree_selection[i_])
          i_ += 1
        end
        return result
      end
      return Array.typed(TableItem).new(0) { nil }
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
      # long
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
      if (OS::GTK_VERSION < OS._version(2, 2, 0))
        self.attr_display.attr_tree_selection_length = 0
        self.attr_display.attr_tree_selection = Array.typed(::Java::Int).new(@item_count) { 0 }
        # long
        selection = OS.gtk_tree_view_get_selection(self.attr_handle)
        OS.gtk_tree_selection_selected_foreach(selection, self.attr_display.attr_tree_selection_proc, self.attr_handle)
        if ((self.attr_display.attr_tree_selection_length).equal?(0))
          return -1
        end
        return self.attr_display.attr_tree_selection[0]
      end
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      # Bug in GTK.  gtk_tree_selection_get_selected_rows() segmentation faults
      # in versions smaller than 2.2.4 if the model is NULL.  The fix is
      # to give a valid pointer instead.
      # 
      # long
      # long
      model = OS::GTK_VERSION < OS._version(2, 2, 4) ? Array.typed(::Java::Int).new(1) { 0 } : nil
      # long
      list = OS.gtk_tree_selection_get_selected_rows(selection, model)
      if (!(list).equal?(0))
        count = OS.g_list_length(list)
        index = Array.typed(::Java::Int).new(1) { 0 }
        i = 0
        while i < count
          # long
          data = OS.g_list_nth_data(list, i)
          # long
          indices = OS.gtk_tree_path_get_indices(data)
          if (!(indices).equal?(0))
            OS.memmove(index, indices, 4)
            break
          end
          i += 1
        end
        OS.g_list_free(list)
        return index[0]
      end
      return -1
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
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      if (OS::GTK_VERSION < OS._version(2, 2, 0))
        self.attr_display.attr_tree_selection_length = 0
        self.attr_display.attr_tree_selection = Array.typed(::Java::Int).new(@item_count) { 0 }
        OS.gtk_tree_selection_selected_foreach(selection, self.attr_display.attr_tree_selection_proc, self.attr_handle)
        if ((self.attr_display.attr_tree_selection_length).equal?(self.attr_display.attr_tree_selection.attr_length))
          return self.attr_display.attr_tree_selection
        end
        result = Array.typed(::Java::Int).new(self.attr_display.attr_tree_selection_length) { 0 }
        System.arraycopy(self.attr_display.attr_tree_selection, 0, result, 0, self.attr_display.attr_tree_selection_length)
        return result
      end
      # Bug in GTK.  gtk_tree_selection_get_selected_rows() segmentation faults
      # in versions smaller than 2.2.4 if the model is NULL.  The fix is
      # to give a valid pointer instead.
      # 
      # long
      # long
      model = OS::GTK_VERSION < OS._version(2, 2, 4) ? Array.typed(::Java::Int).new(1) { 0 } : nil
      # long
      list = OS.gtk_tree_selection_get_selected_rows(selection, model)
      if (!(list).equal?(0))
        count = OS.g_list_length(list)
        tree_selection = Array.typed(::Java::Int).new(count) { 0 }
        length = 0
        i = 0
        while i < count
          # long
          data = OS.g_list_nth_data(list, i)
          # long
          indices = OS.gtk_tree_path_get_indices(data)
          if (!(indices).equal?(0))
            index = Array.typed(::Java::Int).new(1) { 0 }
            OS.memmove(index, indices, 4)
            tree_selection[length] = index[0]
            length += 1
          end
          i += 1
        end
        OS.g_list_free(list)
        result = Array.typed(::Java::Int).new(length) { 0 }
        System.arraycopy(tree_selection, 0, result, 0, length)
        return result
      end
      return Array.typed(::Java::Int).new(0) { 0 }
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
    
    typesig { [::Java::Int] }
    # long
    # long
    def get_text_renderer(column)
      # long
      list = OS.gtk_tree_view_column_get_cell_renderers(column)
      if ((list).equal?(0))
        return 0
      end
      count = OS.g_list_length(list)
      # long
      text_renderer = 0
      i = 0
      while (i < count)
        # long
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
      # long
      # long
      path = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_widget_realize(self.attr_handle)
      if (!OS.gtk_tree_view_get_path_at_pos(self.attr_handle, 1, 1, path, nil, nil, nil))
        return 0
      end
      if ((path[0]).equal?(0))
        return 0
      end
      # long
      indices = OS.gtk_tree_path_get_indices(path[0])
      index = Array.typed(::Java::Int).new(1) { 0 }
      if (!(indices).equal?(0))
        OS.memmove(index, indices, 4)
      end
      OS.gtk_tree_path_free(path[0])
      return index[0]
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_button_press_event(widget, event)
      gdk_event = GdkEventButton.new
      OS.memmove(gdk_event, event, GdkEventButton.attr_sizeof)
      if (!(gdk_event.attr_window).equal?(OS.gtk_tree_view_get_bin_window(self.attr_handle)))
        return 0
      end
      # long
      result = super(widget, event)
      if (!(result).equal?(0))
        return result
      end
      # Feature in GTK.  In a multi-select table view, when multiple items are already
      # selected, the selection state of the item is toggled and the previous selection
      # is cleared. This is not the desired behaviour when bringing up a popup menu.
      # Also, when an item is reselected with the right button, the tree view issues
      # an unwanted selection event. The workaround is to detect that case and not
      # run the default handler when the item is already part of the current selection.
      button = gdk_event.attr_button
      if ((button).equal?(3) && (gdk_event.attr_type).equal?(OS::GDK_BUTTON_PRESS))
        # long
        # long
        path = Array.typed(::Java::Int).new(1) { 0 }
        if (OS.gtk_tree_view_get_path_at_pos(self.attr_handle, RJava.cast_to_int(gdk_event.attr_x), RJava.cast_to_int(gdk_event.attr_y), path, nil, nil, nil))
          if (!(path[0]).equal?(0))
            # long
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
        # long
        # long
        path = Array.typed(::Java::Int).new(1) { 0 }
        if (OS.gtk_tree_view_get_path_at_pos(self.attr_handle, RJava.cast_to_int(gdk_event.attr_x), RJava.cast_to_int(gdk_event.attr_y), path, nil, nil, nil))
          if (!(path[0]).equal?(0))
            # long
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
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_button_release_event(widget, event)
      # long
      window = OS._gdk_event_window(event)
      if (!(window).equal?(OS.gtk_tree_view_get_bin_window(self.attr_handle)))
        return 0
      end
      return super(widget, event)
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_changed(widget)
      item = get_focus_item
      if (!(item).nil?)
        event = Event.new
        event.attr_item = item
        post_event(SWT::Selection, event)
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_key_press_event(widget, event_ptr)
      # long
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
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_popup_menu(widget)
      # long
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
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_motion_notify_event(widget, event)
      # long
      window = OS._gdk_event_window(event)
      if (!(window).equal?(OS.gtk_tree_view_get_bin_window(self.attr_handle)))
        return 0
      end
      return super(widget, event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def gtk_row_activated(tree, path, column)
      item = nil
      # long
      indices = OS.gtk_tree_path_get_indices(path)
      if (!(indices).equal?(0))
        index = Array.typed(::Java::Int).new([-1])
        OS.memmove(index, indices, 4)
        item = __get_item(index[0])
      end
      event = Event.new
      event.attr_item = item
      post_event(SWT::DefaultSelection, event)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def gtk_row_deleted(model, path)
      if (@ignore_accessibility)
        OS.g_signal_stop_emission_by_name(model, OS.attr_row_deleted)
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def gtk_row_inserted(model, path, iter)
      if (@ignore_accessibility)
        OS.g_signal_stop_emission_by_name(model, OS.attr_row_inserted)
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_toggled(renderer, path_str)
      # long
      path = OS.gtk_tree_path_new_from_string(path_str)
      if ((path).equal?(0))
        return 0
      end
      # long
      indices = OS.gtk_tree_path_get_indices(path)
      if (!(indices).equal?(0))
        index = Array.typed(::Java::Int).new(1) { 0 }
        OS.memmove(index, indices, 4)
        item = __get_item(index[0])
        item.set_checked(!item.get_checked)
        event = Event.new
        event.attr_detail = SWT::CHECK
        event.attr_item = item
        post_event(SWT::Selection, event)
      end
      OS.gtk_tree_path_free(path)
      return 0
    end
    
    typesig { [::Java::Int, GtkRequisition] }
    # long
    def gtk_widget_size_request(widget, requisition)
      # Bug in GTK.  For some reason, gtk_widget_size_request() fails
      # to include the height of the tree view items when there are
      # no columns visible.  The fix is to temporarily make one column
      # visible.
      if ((@column_count).equal?(0))
        super(widget, requisition)
        return
      end
      # long
      columns = OS.gtk_tree_view_get_columns(self.attr_handle)
      list = columns
      fix_visible = !(columns).equal?(0)
      while (!(list).equal?(0))
        # long
        column = OS.g_list_data(list)
        if (OS.gtk_tree_view_column_get_visible(column))
          fix_visible = false
          break
        end
        list = OS.g_list_next(list)
      end
      # long
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
      # long
      first_column = OS.gtk_tree_view_get_column(self.attr_handle, 0)
      OS.gtk_tree_view_column_set_visible(first_column, false)
    end
    
    typesig { [] }
    def hook_events
      super
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_connect_closure(selection, OS.attr_changed, self.attr_display.attr_closures[CHANGED], false)
      OS.g_signal_connect_closure(self.attr_handle, OS.attr_row_activated, self.attr_display.attr_closures[ROW_ACTIVATED], false)
      if (!(@check_renderer).equal?(0))
        OS.g_signal_connect_closure(@check_renderer, OS.attr_toggled, self.attr_display.attr_closures[TOGGLED], false)
      end
      if (fix_accessibility)
        OS.g_signal_connect_closure(@model_handle, OS.attr_row_inserted, self.attr_display.attr_closures[ROW_INSERTED], true)
        OS.g_signal_connect_closure(@model_handle, OS.attr_row_deleted, self.attr_display.attr_closures[ROW_DELETED], true)
      end
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
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      buffer = Converter.wcs_to_mbcs(nil, JavaInteger.to_s(index), true)
      # long
      path = OS.gtk_tree_path_new_from_string(buffer)
      answer = OS.gtk_tree_selection_path_is_selected(selection, path)
      OS.gtk_tree_path_free(path)
      return answer
    end
    
    typesig { [::Java::Char] }
    def mnemonic_hit(key)
      i = 0
      while i < @column_count
        # long
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
        # long
        label_handle = @columns[i].attr_label_handle
        if (!(label_handle).equal?(0) && mnemonic_match(label_handle, key))
          return true
        end
        i += 1
      end
      return false
    end
    
    typesig { [] }
    # long
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
        create_renderers(OS.gtk_tree_view_get_column(self.attr_handle, 0), Table::FIRST_COLUMN, true, 0)
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
      self.attr_display.add_widget(@model_handle, self)
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
        error(SWT::ERROR_ITEM_NOT_REMOVED)
      end
      # long
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      item = @items[index]
      disposed = false
      if (!(item).nil?)
        disposed = item.is_disposed
        if (!disposed)
          OS.memmove(iter, item.attr_handle, OS._gtk_tree_iter_sizeof)
          item.release(false)
        end
      else
        OS.gtk_tree_model_iter_nth_child(@model_handle, iter, 0, index)
      end
      if (!disposed)
        # long
        selection = OS.gtk_tree_view_get_selection(self.attr_handle)
        OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
        OS.gtk_list_store_remove(@model_handle, iter)
        OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
        System.arraycopy(@items, index + 1, @items, index, (@item_count -= 1) - index)
        @items[@item_count] = nil
      end
      OS.g_free(iter)
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
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      # long
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      if ((iter).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      if (fix_accessibility)
        @ignore_accessibility = true
      end
      index = end_
      while (index >= start)
        OS.gtk_tree_model_iter_nth_child(@model_handle, iter, 0, index)
        item = @items[index]
        if (!(item).nil? && !item.is_disposed)
          item.release(false)
        end
        OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
        OS.gtk_list_store_remove(@model_handle, iter)
        OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
        index -= 1
      end
      if (fix_accessibility)
        @ignore_accessibility = false
        OS.g_object_notify(self.attr_handle, OS.attr_model)
      end
      OS.g_free(iter)
      index = end_ + 1
      System.arraycopy(@items, index, @items, start, @item_count - index)
      i = @item_count - (index - start)
      while i < @item_count
        @items[i] = nil
        i += 1
      end
      @item_count = @item_count - (index - start)
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
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      last = -1
      # long
      iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
      if ((iter).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      if (fix_accessibility)
        @ignore_accessibility = true
      end
      i = 0
      while i < new_indices.attr_length
        index = new_indices[i]
        if (!(index).equal?(last))
          item = @items[index]
          disposed = false
          if (!(item).nil?)
            disposed = item.is_disposed
            if (!disposed)
              OS.memmove(iter, item.attr_handle, OS._gtk_tree_iter_sizeof)
              item.release(false)
            end
          else
            OS.gtk_tree_model_iter_nth_child(@model_handle, iter, 0, index)
          end
          if (!disposed)
            OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
            OS.gtk_list_store_remove(@model_handle, iter)
            OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
            System.arraycopy(@items, index + 1, @items, index, (@item_count -= 1) - index)
            @items[@item_count] = nil
          end
          last = index
        end
        i += 1
      end
      if (fix_accessibility)
        @ignore_accessibility = false
        OS.g_object_notify(self.attr_handle, OS.attr_model)
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
      index = @item_count - 1
      while (index >= 0)
        item = @items[index]
        if (!(item).nil? && !item.is_disposed)
          item.release(false)
        end
        (index -= 1)
      end
      @items = Array.typed(TableItem).new(4) { nil }
      @item_count = 0
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      if (fix_accessibility)
        @ignore_accessibility = true
      end
      OS.gtk_list_store_clear(@model_handle)
      if (fix_accessibility)
        @ignore_accessibility = false
        OS.g_object_notify(self.attr_handle, OS.attr_model)
      end
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      reset_custom_draw
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    def renderer_get_size_proc(cell, widget, cell_area, x_offset, y_offset, width, height)
      # long
      g_class = OS.g_type_class_peek_parent(OS._g_object_get_class(cell))
      klass = GtkCellRendererClass.new
      OS.memmove(klass, g_class)
      # long
      result = OS.call(klass.attr_get_size, cell, self.attr_handle, cell_area, x_offset, y_offset, width, height)
      if (!@ignore_size && OS._gtk_is_cell_renderer_text(cell))
        # long
        iter = OS.g_object_get_qdata(cell, Display::SWT_OBJECT_INDEX2)
        item = nil
        if (!(iter).equal?(0))
          # long
          path = OS.gtk_tree_model_get_path(@model_handle, iter)
          buffer = Array.typed(::Java::Int).new(1) { 0 }
          OS.memmove(buffer, OS.gtk_tree_path_get_indices(path), 4)
          index = buffer[0]
          item = __get_item(index)
          OS.gtk_tree_path_free(path)
        end
        if (!(item).nil?)
          column_index = 0
          if (@column_count > 0)
            # long
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    def renderer_render_proc(cell, window, widget, background_area, cell_area, expose_area, flags)
      item = nil
      # long
      iter = OS.g_object_get_qdata(cell, Display::SWT_OBJECT_INDEX2)
      if (!(iter).equal?(0))
        # long
        path = OS.gtk_tree_model_get_path(@model_handle, iter)
        buffer = Array.typed(::Java::Int).new(1) { 0 }
        OS.memmove(buffer, OS.gtk_tree_path_get_indices(path), 4)
        index = buffer[0]
        item = __get_item(index)
        OS.gtk_tree_path_free(path)
      end
      # long
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
          # long
          # long
          ptr = Array.typed(::Java::Int).new(1) { 0 }
          OS.gtk_tree_model_get(@model_handle, item.attr_handle, Table::BACKGROUND_COLUMN, ptr, -1)
          if ((ptr[0]).equal?(0))
            model_index = (@column_count).equal?(0) ? Table::FIRST_COLUMN : @columns[column_index].attr_model_index
            OS.gtk_tree_model_get(@model_handle, item.attr_handle, model_index + Table::CELL_BACKGROUND, ptr, -1)
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
          # long
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
              # long
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
      # long
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
        # long
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
            # long
            path = OS.gtk_tree_model_get_path(@model_handle, iter)
            OS.gtk_tree_view_get_background_area(self.attr_handle, path, column_handle, rect)
            OS.gtk_tree_path_free(path)
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
          # long
          column = OS.gtk_tree_view_get_column(self.attr_handle, i)
          # long
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
      if (!(0 <= index && index < @item_count))
        return
      end
      fix_column = show_first_column
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      item = __get_item(index)
      OS.gtk_tree_selection_select_iter(selection, item.attr_handle)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # long
        path = OS.gtk_tree_model_get_path(@model_handle, item.attr_handle)
        OS.gtk_tree_view_set_cursor(self.attr_handle, path, 0, false)
        OS.gtk_tree_path_free(path)
      end
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      if (fix_column)
        hide_first_column
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
      start = Math.max(0, start)
      end_ = Math.min(end_, @item_count - 1)
      fix_column = show_first_column
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      index = start
      while index <= end_
        item = __get_item(index)
        OS.gtk_tree_selection_select_iter(selection, item.attr_handle)
        if (!((self.attr_style & SWT::SINGLE)).equal?(0))
          # long
          path = OS.gtk_tree_model_get_path(@model_handle, item.attr_handle)
          OS.gtk_tree_view_set_cursor(self.attr_handle, path, 0, false)
          OS.gtk_tree_path_free(path)
        end
        index += 1
      end
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      if (fix_column)
        hide_first_column
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
      length = indices.attr_length
      if ((length).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length > 1))
        return
      end
      fix_column = show_first_column
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      i = 0
      while i < length
        index = indices[i]
        if (!(0 <= index && index < @item_count))
          i += 1
          next
        end
        item = __get_item(index)
        OS.gtk_tree_selection_select_iter(selection, item.attr_handle)
        if (!((self.attr_style & SWT::SINGLE)).equal?(0))
          # long
          path = OS.gtk_tree_model_get_path(@model_handle, item.attr_handle)
          OS.gtk_tree_view_set_cursor(self.attr_handle, path, 0, false)
          OS.gtk_tree_path_free(path)
        end
        i += 1
      end
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
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.gtk_tree_selection_select_all(selection)
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      if (fix_column)
        hide_first_column
      end
    end
    
    typesig { [::Java::Int] }
    def select_focus_index(index)
      # Note that this method both selects and sets the focus to the
      # specified index, so any previous selection in the list will be lost.
      # gtk does not provide a way to just set focus to a specified list item.
      if (!(0 <= index && index < @item_count))
        return
      end
      item = __get_item(index)
      # long
      path = OS.gtk_tree_model_get_path(@model_handle, item.attr_handle)
      # long
      selection = OS.gtk_tree_view_get_selection(self.attr_handle)
      OS.g_signal_handlers_block_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.gtk_tree_view_set_cursor(self.attr_handle, path, 0, false)
      # Bug in GTK. For some reason, when an event loop is run from
      # within a key pressed handler and a dialog is displayed that
      # contains a GtkTreeView,  gtk_tree_view_set_cursor() does
      # not set the cursor or select the item.  The fix is to select the
      # item with gtk_tree_selection_select_iter() as well.
      # 
      # NOTE: This happens in GTK 2.2.1 and is fixed in GTK 2.2.4.
      OS.gtk_tree_selection_select_iter(selection, item.attr_handle)
      OS.g_signal_handlers_unblock_matched(selection, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CHANGED)
      OS.gtk_tree_path_free(path)
    end
    
    typesig { [GdkColor] }
    def set_background_color(color)
      super(color)
      OS.gtk_widget_modify_base(self.attr_handle, 0, color)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_background_pixmap(pixmap)
      super(pixmap)
      # long
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
      if (OS::GTK_VERSION < OS._version(2, 6, 0) && (@item_count).equal?(0))
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
      i_ = 0
      while i_ < order.attr_length
        # long
        column = @columns[order[i_]].attr_handle
        # long
        base_column = (i_).equal?(0) ? 0 : @columns[order[i_ - 1]].attr_handle
        OS.gtk_tree_view_move_column_after(self.attr_handle, column, base_column)
        i_ += 1
      end
    end
    
    typesig { [::Java::Int] }
    # long
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
    def set_header_visible(show)
      check_widget
      OS.gtk_tree_view_set_headers_visible(self.attr_handle, show)
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
      count = Math.max(0, count)
      if ((count).equal?(@item_count))
        return
      end
      is_virtual = !((self.attr_style & SWT::VIRTUAL)).equal?(0)
      if (!is_virtual)
        set_redraw(false)
      end
      remove(count, @item_count - 1)
      length = Math.max(4, (count + 3) / 4 * 4)
      new_items = Array.typed(TableItem).new(length) { nil }
      System.arraycopy(@items, 0, new_items, 0, @item_count)
      @items = new_items
      if (is_virtual)
        # long
        iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
        if ((iter).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        if (fix_accessibility)
          @ignore_accessibility = true
        end
        i = @item_count
        while i < count
          OS.gtk_list_store_append(@model_handle, iter)
          i += 1
        end
        if (fix_accessibility)
          @ignore_accessibility = false
          OS.g_object_notify(self.attr_handle, OS.attr_model)
        end
        OS.g_free(iter)
        @item_count = count
      else
        i = @item_count
        while i < count
          TableItem.new(self, SWT::NONE, i, true)
          i += 1
        end
      end
      if (!is_virtual)
        set_redraw(true)
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
      OS.gtk_tree_view_set_rules_hint(self.attr_handle, show)
      if (OS::GTK_VERSION >= OS._version(2, 12, 0))
        OS.gtk_tree_view_set_grid_lines(self.attr_handle, show ? OS::GTK_TREE_VIEW_GRID_LINES_VERTICAL : OS::GTK_TREE_VIEW_GRID_LINES_NONE)
      end
    end
    
    typesig { [] }
    def set_parent_background
      super
      # long
      window = paint_window
      if (!(window).equal?(0))
        OS.gdk_window_set_back_pixmap(window, 0, true)
      end
    end
    
    typesig { [::Java::Int] }
    # long
    def set_parent_window(widget)
      # long
      window = event_window
      OS.gtk_widget_set_parent_window(widget, window)
    end
    
    typesig { [::Java::Boolean] }
    def set_redraw(redraw_)
      check_widget
      super(redraw_)
      if (redraw_ && (self.attr_draw_count).equal?(0))
        # Resize the item array to match the item count
        if (@items.attr_length > 4 && @items.attr_length - @item_count > 3)
          length = Math.max(4, (@item_count + 3) / 4 * 4)
          new_items = Array.typed(TableItem).new(length) { nil }
          System.arraycopy(@items, 0, new_items, 0, @item_count)
          @items = new_items
        end
      end
    end
    
    typesig { [::Java::Int, TableItem] }
    # long
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
      item_width = calculate_width(column, item.attr_handle)
      if (width < item_width)
        OS.gtk_tree_view_column_set_fixed_width(column, item_width)
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
      fix_column = show_first_column
      deselect_all
      select_focus_index(index)
      show_selection
      if (fix_column)
        hide_first_column
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
      deselect_all
      if (end_ < 0 || start > end_ || (!((self.attr_style & SWT::SINGLE)).equal?(0) && !(start).equal?(end_)))
        return
      end
      if ((@item_count).equal?(0) || start >= @item_count)
        return
      end
      fix_column = show_first_column
      start = Math.max(0, start)
      end_ = Math.min(end_, @item_count - 1)
      select_focus_index(start)
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        select(start, end_)
      end
      show_selection
      if (fix_column)
        hide_first_column
      end
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
      deselect_all
      length = indices.attr_length
      if ((length).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length > 1))
        return
      end
      fix_column = show_first_column
      select_focus_index(indices[0])
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        select(indices)
      end
      show_selection
      if (fix_column)
        hide_first_column
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
      fix_column = show_first_column
      deselect_all
      length = items.attr_length
      if (!((length).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length > 1)))
        first = true
        i = 0
        while i < length
          index = index_of(items[i])
          if (!(index).equal?(-1))
            if (first)
              first = false
              select_focus_index(index)
            else
              select(index)
            end
          end
          i += 1
        end
        show_selection
      end
      if (fix_column)
        hide_first_column
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
      if (!(0 <= index && index < @item_count))
        return
      end
      # long
      path = OS.gtk_tree_model_get_path(@model_handle, __get_item(index).attr_handle)
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
        # long
        column = OS.gtk_tree_view_get_column(self.attr_handle, i)
        if (OS.gtk_tree_view_column_get_visible(column))
          return false
        end
        i += 1
      end
      # long
      first_column = OS.gtk_tree_view_get_column(self.attr_handle, 0)
      OS.gtk_tree_view_column_set_visible(first_column, true)
      return true
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
      if (!(item.attr_parent).equal?(self))
        return
      end
      show_item(item.attr_handle)
    end
    
    typesig { [::Java::Int] }
    # long
    def show_item(iter)
      # long
      path = OS.gtk_tree_model_get_path(@model_handle, iter)
      # This code intentionally commented.
      # Bug in GTK.  According to the documentation, gtk_tree_view_scroll_to_cell
      # should scroll the minimum amount to show the cell if use_align is false.
      # However, what actually happens is the cell is scrolled to the top.
      # The fix is to determine the new location and use gtk_tree_view_scroll_to_point.
      # If the widget is a pinhead, calling gtk_tree_view_scroll_to_point
      # will have no effect. Therefore, it is still neccessary to
      # call gtk_tree_view_scroll_to_cell.
      # 
      # OS.gtk_tree_view_scroll_to_cell (handle, path, 0, false, 0, 0);
      OS.gtk_widget_realize(self.attr_handle)
      visible_rect = GdkRectangle.new
      OS.gtk_tree_view_get_visible_rect(self.attr_handle, visible_rect)
      cell_rect = GdkRectangle.new
      OS.gtk_tree_view_get_cell_area(self.attr_handle, path, 0, cell_rect)
      tx = Array.typed(::Java::Int).new(1) { 0 }
      ty = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_tree_view_widget_to_tree_coords(self.attr_handle, cell_rect.attr_x, cell_rect.attr_y, tx, ty)
      if (ty[0] < visible_rect.attr_y)
        OS.gtk_tree_view_scroll_to_cell(self.attr_handle, path, 0, true, 0, 0)
        OS.gtk_tree_view_scroll_to_point(self.attr_handle, -1, ty[0])
      else
        height = Math.min(visible_rect.attr_height, cell_rect.attr_height)
        if (ty[0] + height > visible_rect.attr_y + visible_rect.attr_height)
          OS.gtk_tree_view_scroll_to_cell(self.attr_handle, path, 0, true, 1, 0)
          ty[0] += cell_rect.attr_height - visible_rect.attr_height
          OS.gtk_tree_view_scroll_to_point(self.attr_handle, -1, ty[0])
        end
      end
      OS.gtk_tree_path_free(path)
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
      selection = get_selection
      if ((selection.attr_length).equal?(0))
        return
      end
      item = selection[0]
      show_item(item.attr_handle)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
    # long
    # long
    # long
    # long
    def tree_selection_proc(model, path, iter, selection, length)
      if (!(selection).nil?)
        # long
        indices = OS.gtk_tree_path_get_indices(path)
        if (!(indices).equal?(0))
          index = Array.typed(::Java::Int).new(1) { 0 }
          OS.memmove(index, indices, 4)
          # 64
          selection[RJava.cast_to_int(length)] = index[0]
        end
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
      # long
      parent_handle = parenting_handle
      # long
      list = OS.gtk_container_get_children(parent_handle)
      if ((list).equal?(0))
        return
      end
      # long
      temp = list
      while (!(temp).equal?(0))
        # long
        widget = OS.g_list_data(temp)
        if (!(widget).equal?(0))
          OS.gtk_widget_queue_resize(widget)
        end
        temp = OS.g_list_next(temp)
      end
      OS.g_list_free(list)
    end
    
    private
    alias_method :initialize__table, :initialize
  end
  
end
