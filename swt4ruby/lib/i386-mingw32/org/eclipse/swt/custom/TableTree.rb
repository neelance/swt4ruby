require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module TableTreeImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # A TableTree is a selectable user interface object
  # that displays a hierarchy of items, and issues
  # notification when an item is selected.
  # A TableTree may be single or multi select.
  # <p>
  # The item children that may be added to instances of this class
  # must be of type <code>TableTreeItem</code>.
  # </p><p>
  # Note that although this class is a subclass of <code>Composite</code>,
  # it does not make sense to add <code>Control</code> children to it,
  # or set a layout on it.
  # </p><p>
  # <dl>
  # <dt><b>Styles:</b> <dd> SINGLE, MULTI, CHECK, FULL_SELECTION
  # <dt><b>Events:</b> <dd> Selection, DefaultSelection, Collapse, Expand
  # </dl>
  # <p>
  # Note: Only one of the styles SINGLE, and MULTI may be specified.
  # </p>
  # 
  # @deprecated As of 3.1 use Tree, TreeItem and TreeColumn
  class TableTree < TableTreeImports.const_get :Composite
    include_class_members TableTreeImports
    
    attr_accessor :table
    alias_method :attr_table, :table
    undef_method :table
    alias_method :attr_table=, :table=
    undef_method :table=
    
    attr_accessor :items
    alias_method :attr_items, :items
    undef_method :items
    alias_method :attr_items=, :items=
    undef_method :items=
    
    attr_accessor :plus_image
    alias_method :attr_plus_image, :plus_image
    undef_method :plus_image
    alias_method :attr_plus_image=, :plus_image=
    undef_method :plus_image=
    
    attr_accessor :minus_image
    alias_method :attr_minus_image, :minus_image
    undef_method :minus_image
    alias_method :attr_minus_image=, :minus_image=
    undef_method :minus_image=
    
    attr_accessor :size_image
    alias_method :attr_size_image, :size_image
    undef_method :size_image
    alias_method :attr_size_image=, :size_image=
    undef_method :size_image=
    
    # TableTreeItems are not treated as children but rather as items.
    # When the TableTree is disposed, all children are disposed because
    # TableTree inherits this behaviour from Composite.  The items
    # must be disposed separately.  Because TableTree is not part of
    # the org.eclipse.swt.widgets package, the method releaseWidget can
    # not be overridden (this is how items are disposed of in Table and Tree).
    # Instead, the items are disposed of in response to the dispose event on the
    # TableTree.  The "inDispose" flag is used to distinguish between disposing
    # one TableTreeItem (e.g. when removing an entry from the TableTree) and
    # disposing the entire TableTree.
    attr_accessor :in_dispose
    alias_method :attr_in_dispose, :in_dispose
    undef_method :in_dispose
    alias_method :attr_in_dispose=, :in_dispose=
    undef_method :in_dispose=
    
    class_module.module_eval {
      const_set_lazy(:EMPTY_ITEMS) { Array.typed(TableTreeItem).new(0) { nil } }
      const_attr_reader  :EMPTY_ITEMS
      
      const_set_lazy(:EMPTY_TEXTS) { Array.typed(String).new(0) { nil } }
      const_attr_reader  :EMPTY_TEXTS
      
      const_set_lazy(:EMPTY_IMAGES) { Array.typed(Image).new(0) { nil } }
      const_attr_reader  :EMPTY_IMAGES
      
      const_set_lazy(:ITEMID) { "TableTreeItemID" }
      const_attr_reader  :ITEMID
    }
    
    typesig { [Composite, ::Java::Int] }
    # $NON-NLS-1$
    # 
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
    # @param parent a widget which will be the parent of the new instance (cannot be null)
    # @param style the style of widget to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # </ul>
    # 
    # @see SWT#SINGLE
    # @see SWT#MULTI
    # @see SWT#CHECK
    # @see SWT#FULL_SELECTION
    # @see #getStyle
    def initialize(parent, style)
      @table = nil
      @items = nil
      @plus_image = nil
      @minus_image = nil
      @size_image = nil
      @in_dispose = false
      super(parent, check_style(style))
      @items = EMPTY_ITEMS
      @in_dispose = false
      @table = Table.new(self, style)
      table_listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members TableTree
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |e|
          case (e.attr_type)
          when SWT::MouseDown
            on_mouse_down(e)
          when SWT::Selection
            on_selection(e)
          when SWT::DefaultSelection
            on_selection(e)
          when SWT::KeyDown
            on_key_down(e)
          end
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      table_events = Array.typed(::Java::Int).new([SWT::MouseDown, SWT::Selection, SWT::DefaultSelection, SWT::KeyDown])
      i = 0
      while i < table_events.attr_length
        @table.add_listener(table_events[i], table_listener)
        i += 1
      end
      listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members TableTree
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |e|
          case (e.attr_type)
          when SWT::Dispose
            on_dispose(e)
          when SWT::Resize
            on_resize(e)
          when SWT::FocusIn
            on_focus_in(e)
          end
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      events = Array.typed(::Java::Int).new([SWT::Dispose, SWT::Resize, SWT::FocusIn])
      i_ = 0
      while i_ < events.attr_length
        add_listener(events[i_], listener)
        i_ += 1
      end
    end
    
    typesig { [TableTreeItem, ::Java::Int] }
    def add_item(item, index)
      if (index < 0 || index > @items.attr_length)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      new_items = Array.typed(TableTreeItem).new(@items.attr_length + 1) { nil }
      System.arraycopy(@items, 0, new_items, 0, index)
      new_items[index] = item
      System.arraycopy(@items, index, new_items, index + 1, @items.attr_length - index)
      @items = new_items
      # Return the index in the table where this table should be inserted
      if ((index).equal?(@items.attr_length - 1))
        return @table.get_item_count
      else
        return @table.index_of(@items[index + 1].attr_table_item)
      end
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the user changes the receiver's selection, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # When <code>widgetSelected</code> is called, the item field of the event object is valid.
    # If the receiver has <code>SWT.CHECK</code> style set and the check selection changes,
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
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
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
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Expand, typed_listener)
      add_listener(SWT::Collapse, typed_listener)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        mask = SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT
        style = style & mask
        return style
      end
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      return @table.compute_size(w_hint, h_hint, changed)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_trim(x, y, width, height)
      check_widget
      return @table.compute_trim(x, y, width, height)
    end
    
    typesig { [] }
    # Deselects all items.
    # <p>
    # If an item is selected, it is deselected.
    # If an item is not selected, it remains unselected.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed
    # </ul>
    def deselect_all
      check_widget
      @table.deselect_all
    end
    
    typesig { [TableTreeItem] }
    # Expand upward from the specified leaf item.
    def expand_item(item)
      if ((item).nil?)
        return
      end
      expand_item(item.attr_parent_item)
      if (!item.get_visible)
        item.set_visible(true)
      end
      if (!item.attr_expanded && item.attr_items.attr_length > 0)
        item.set_expanded(true)
        event = Event.new
        event.attr_item = item
        notify_listeners(SWT::Expand, event)
      end
    end
    
    typesig { [] }
    def get_background
      # This method must be overridden otherwise, in a TableTree in which the first
      # item has no sub items, a grey (Widget background colour) square will appear in
      # the first column of the first item.
      # It is not possible in the constructor to set the background of the TableTree
      # to be the same as the background of the Table because this interferes with
      # the TableTree adapting to changes in the System color settings.
      return @table.get_background
    end
    
    typesig { [] }
    def get_client_area
      return @table.get_client_area
    end
    
    typesig { [] }
    def get_foreground
      return @table.get_foreground
    end
    
    typesig { [] }
    def get_font
      return @table.get_font
    end
    
    typesig { [] }
    # Gets the number of items.
    # <p>
    # @return the number of items in the widget
    def get_item_count
      # checkWidget();
      return @items.attr_length
    end
    
    typesig { [] }
    # Gets the height of one item.
    # <p>
    # This operation will fail if the height of
    # one item could not be queried from the OS.
    # 
    # @return the height of one item in the widget
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed
    # </ul>
    def get_item_height
      check_widget
      return @table.get_item_height
    end
    
    typesig { [] }
    # Gets the items.
    # <p>
    # @return the items in the widget
    def get_items
      # checkWidget();
      new_items = Array.typed(TableTreeItem).new(@items.attr_length) { nil }
      System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
      return new_items
    end
    
    typesig { [] }
    # Gets the selected items.
    # <p>
    # This operation will fail if the selected
    # items cannot be queried from the OS.
    # 
    # @return the selected items in the widget
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    def get_selection
      check_widget
      selection = @table.get_selection
      result = Array.typed(TableTreeItem).new(selection.attr_length) { nil }
      i = 0
      while i < selection.attr_length
        result[i] = selection[i].get_data(ITEMID)
        i += 1
      end
      return result
    end
    
    typesig { [] }
    # Gets the number of selected items.
    # <p>
    # This operation will fail if the number of selected
    # items cannot be queried from the OS.
    # 
    # @return the number of selected items in the widget
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    def get_selection_count
      check_widget
      return @table.get_selection_count
    end
    
    typesig { [] }
    def get_style
      check_widget
      return @table.get_style
    end
    
    typesig { [] }
    # Returns the underlying Table control.
    # 
    # @return the underlying Table control
    def get_table
      # checkWidget();
      return @table
    end
    
    typesig { [] }
    def create_images
      item_height = @size_image.get_bounds.attr_height
      # Calculate border around image.
      # At least 9 pixels are needed to draw the image
      # Leave at least a 6 pixel border.
      indent = Math.min(6, (item_height - 9) / 2)
      indent = Math.max(0, indent)
      size = Math.max(10, item_height - 2 * indent)
      size = ((size + 1) / 2) * 2 # size must be an even number
      midpoint = indent + size / 2
      foreground = get_foreground
      plus_minus = get_display.get_system_color(SWT::COLOR_WIDGET_NORMAL_SHADOW)
      background = get_background
      # Plus image
      palette = PaletteData.new(Array.typed(RGB).new([foreground.get_rgb, background.get_rgb, plus_minus.get_rgb]))
      image_data = ImageData.new(item_height, item_height, 4, palette)
      image_data.attr_transparent_pixel = 1
      @plus_image = Image.new(get_display, image_data)
      gc = SwtGC.new(@plus_image)
      gc.set_background(background)
      gc.fill_rectangle(0, 0, item_height, item_height)
      gc.set_foreground(plus_minus)
      gc.draw_rectangle(indent, indent, size, size)
      gc.set_foreground(foreground)
      gc.draw_line(midpoint, indent + 2, midpoint, indent + size - 2)
      gc.draw_line(indent + 2, midpoint, indent + size - 2, midpoint)
      gc.dispose
      # Minus image
      palette = PaletteData.new(Array.typed(RGB).new([foreground.get_rgb, background.get_rgb, plus_minus.get_rgb]))
      image_data = ImageData.new(item_height, item_height, 4, palette)
      image_data.attr_transparent_pixel = 1
      @minus_image = Image.new(get_display, image_data)
      gc = SwtGC.new(@minus_image)
      gc.set_background(background)
      gc.fill_rectangle(0, 0, item_height, item_height)
      gc.set_foreground(plus_minus)
      gc.draw_rectangle(indent, indent, size, size)
      gc.set_foreground(foreground)
      gc.draw_line(indent + 2, midpoint, indent + size - 2, midpoint)
      gc.dispose
    end
    
    typesig { [] }
    def get_plus_image
      if ((@plus_image).nil?)
        create_images
      end
      return @plus_image
    end
    
    typesig { [] }
    def get_minus_image
      if ((@minus_image).nil?)
        create_images
      end
      return @minus_image
    end
    
    typesig { [TableTreeItem] }
    # Gets the index of an item.
    # 
    # <p>The widget is searched starting at 0 until an
    # item is found that is equal to the search item.
    # If no item is found, -1 is returned.  Indexing
    # is zero based.  This index is relative to the parent only.
    # 
    # @param item the search item
    # @return the index of the item or -1
    def index_of(item)
      # checkWidget();
      i = 0
      while i < @items.attr_length
        if ((item).equal?(@items[i]))
          return i
        end
        i += 1
      end
      return -1
    end
    
    typesig { [Event] }
    def on_dispose(e)
      # Usually when an item is disposed, destroyItem will change the size of the items array
      # and dispose of the underlying table items.
      # Since the whole table tree is being disposed, this is not necessary.  For speed
      # the inDispose flag is used to skip over this part of the item dispose.
      @in_dispose = true
      i = 0
      while i < @items.attr_length
        @items[i].dispose
        i += 1
      end
      @in_dispose = false
      if (!(@plus_image).nil?)
        @plus_image.dispose
      end
      if (!(@minus_image).nil?)
        @minus_image.dispose
      end
      if (!(@size_image).nil?)
        @size_image.dispose
      end
      @plus_image = @minus_image = @size_image = nil
    end
    
    typesig { [Event] }
    def on_resize(e)
      size = get_size
      @table.set_bounds(0, 0, size.attr_x, size.attr_y)
    end
    
    typesig { [Event] }
    def on_selection(e)
      event = Event.new
      table_item = e.attr_item
      item = get_item(table_item)
      event.attr_item = item
      if ((e.attr_type).equal?(SWT::Selection) && (e.attr_detail).equal?(SWT::CHECK) && !(item).nil?)
        event.attr_detail = SWT::CHECK
        item.attr_checked = table_item.get_checked
      end
      notify_listeners(e.attr_type, event)
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
      count = @items.attr_length
      if (!(0 <= index && index < count))
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      return @items[index]
    end
    
    typesig { [Point] }
    # Returns the item at the given point in the receiver
    # or null if no such item exists. The point is in the
    # coordinate system of the receiver.
    # 
    # @param point the point used to locate the item
    # @return the item at the given point
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
      item = @table.get_item(point)
      if ((item).nil?)
        return nil
      end
      return get_item(item)
    end
    
    typesig { [TableItem] }
    def get_item(table_item)
      if ((table_item).nil?)
        return nil
      end
      i = 0
      while i < @items.attr_length
        item = @items[i].get_item(table_item)
        if (!(item).nil?)
          return item
        end
        i += 1
      end
      return nil
    end
    
    typesig { [Event] }
    def on_focus_in(e)
      @table.set_focus
    end
    
    typesig { [Event] }
    def on_key_down(e)
      selection = get_selection
      if ((selection.attr_length).equal?(0))
        return
      end
      item = selection[0]
      type = 0
      if ((e.attr_key_code).equal?(SWT::ARROW_RIGHT) || (e.attr_key_code).equal?(SWT::ARROW_LEFT))
        trail_key = !((get_style & SWT::MIRRORED)).equal?(0) ? SWT::ARROW_LEFT : SWT::ARROW_RIGHT
        if ((e.attr_key_code).equal?(trail_key))
          if ((item.get_item_count).equal?(0))
            return
          end
          if (item.get_expanded)
            new_selection = item.get_items[0]
            @table.set_selection(Array.typed(TableItem).new([new_selection.attr_table_item]))
            show_item(new_selection)
            type = SWT::Selection
          else
            item.set_expanded(true)
            type = SWT::Expand
          end
        else
          if (item.get_expanded)
            item.set_expanded(false)
            type = SWT::Collapse
          else
            parent = item.get_parent_item
            if (!(parent).nil?)
              index = parent.index_of(item)
              if (!(index).equal?(0))
                return
              end
              @table.set_selection(Array.typed(TableItem).new([parent.attr_table_item]))
              type = SWT::Selection
            end
          end
        end
      end
      if ((e.attr_character).equal?(Character.new(?*.ord)))
        item.expand_all(true)
      end
      if ((e.attr_character).equal?(Character.new(?-.ord)))
        if (item.get_expanded)
          item.set_expanded(false)
          type = SWT::Collapse
        end
      end
      if ((e.attr_character).equal?(Character.new(?+.ord)))
        if (item.get_item_count > 0 && !item.get_expanded)
          item.set_expanded(true)
          type = SWT::Expand
        end
      end
      if ((type).equal?(0))
        return
      end
      event = Event.new
      event.attr_item = item
      notify_listeners(type, event)
    end
    
    typesig { [Event] }
    def on_mouse_down(event)
      # If user clicked on the [+] or [-], expand or collapse the tree.
      items = @table.get_items
      i = 0
      while i < items.attr_length
        rect = items[i].get_image_bounds(0)
        if (rect.contains(event.attr_x, event.attr_y))
          item = items[i].get_data(ITEMID)
          event = Event.new
          event.attr_item = item
          item.set_expanded(!item.get_expanded)
          if (item.get_expanded)
            notify_listeners(SWT::Expand, event)
          else
            notify_listeners(SWT::Collapse, event)
          end
          return
        end
        i += 1
      end
    end
    
    typesig { [] }
    # Removes all items.
    # <p>
    # This operation will fail when an item
    # could not be removed in the OS.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed
    # </ul>
    def remove_all
      check_widget
      set_redraw(false)
      i = @items.attr_length - 1
      while i >= 0
        @items[i].dispose
        i -= 1
      end
      @items = EMPTY_ITEMS
      set_redraw(true)
    end
    
    typesig { [TableTreeItem] }
    def remove_item(item)
      index = 0
      while (index < @items.attr_length && !(@items[index]).equal?(item))
        index += 1
      end
      if ((index).equal?(@items.attr_length))
        return
      end
      new_items = Array.typed(TableTreeItem).new(@items.attr_length - 1) { nil }
      System.arraycopy(@items, 0, new_items, 0, index)
      System.arraycopy(@items, index + 1, new_items, index, @items.attr_length - index - 1)
      @items = new_items
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
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      remove_listener(SWT::Selection, listener)
      remove_listener(SWT::DefaultSelection, listener)
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
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      remove_listener(SWT::Expand, listener)
      remove_listener(SWT::Collapse, listener)
    end
    
    typesig { [] }
    # Selects all of the items in the receiver.
    # <p>
    # If the receiver is single-select, do nothing.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed
    # </ul>
    def select_all
      check_widget
      @table.select_all
    end
    
    typesig { [Color] }
    def set_background(color)
      super(color)
      @table.set_background(color)
      if (!(@size_image).nil?)
        gc = SwtGC.new(@size_image)
        gc.set_background(get_background)
        size = @size_image.get_bounds
        gc.fill_rectangle(size)
        gc.dispose
      end
    end
    
    typesig { [::Java::Boolean] }
    def set_enabled(enabled)
      super(enabled)
      @table.set_enabled(enabled)
    end
    
    typesig { [Font] }
    def set_font(font)
      super(font)
      @table.set_font(font)
    end
    
    typesig { [Color] }
    def set_foreground(color)
      super(color)
      @table.set_foreground(color)
    end
    
    typesig { [Menu] }
    def set_menu(menu)
      super(menu)
      @table.set_menu(menu)
    end
    
    typesig { [Array.typed(TableTreeItem)] }
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
    # <li>ERROR_INVALID_ARGUMENT - if one of the item has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see TableTree#deselectAll()
    def set_selection(items)
      check_widget
      if ((items).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      length = items.attr_length
      if ((length).equal?(0) || (!((@table.get_style & SWT::SINGLE)).equal?(0) && length > 1))
        deselect_all
        return
      end
      table_items = Array.typed(TableItem).new(length) { nil }
      i = 0
      while i < length
        if ((items[i]).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        if (!items[i].get_visible)
          expand_item(items[i])
        end
        table_items[i] = items[i].attr_table_item
        i += 1
      end
      @table.set_selection(table_items)
    end
    
    typesig { [String] }
    def set_tool_tip_text(string)
      super(string)
      @table.set_tool_tip_text(string)
    end
    
    typesig { [TableTreeItem] }
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
    # @see TableTree#showSelection()
    def show_item(item)
      check_widget
      if ((item).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (!item.get_visible)
        expand_item(item)
      end
      table_item = item.attr_table_item
      @table.show_item(table_item)
    end
    
    typesig { [] }
    # Shows the selection.
    # <p>
    # If there is no selection or the selection
    # is already visible, this method does nothing.
    # If the selection is scrolled out of view,
    # the top index of the widget is changed such
    # that selection becomes visible.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed
    # </ul>
    def show_selection
      check_widget
      @table.show_selection
    end
    
    private
    alias_method :initialize__table_tree, :initialize
  end
  
end
