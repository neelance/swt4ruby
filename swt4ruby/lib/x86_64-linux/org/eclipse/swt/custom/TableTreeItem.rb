require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module TableTreeItemImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # A TableTreeItem is a selectable user interface object
  # that represents an item in a hierarchy of items in a
  # TableTree.
  # 
  # @deprecated As of 3.1 use Tree, TreeItem and TreeColumn
  class TableTreeItem < TableTreeItemImports.const_get :Item
    include_class_members TableTreeItemImports
    
    attr_accessor :table_item
    alias_method :attr_table_item, :table_item
    undef_method :table_item
    alias_method :attr_table_item=, :table_item=
    undef_method :table_item=
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :parent_item
    alias_method :attr_parent_item, :parent_item
    undef_method :parent_item
    alias_method :attr_parent_item=, :parent_item=
    undef_method :parent_item=
    
    attr_accessor :items
    alias_method :attr_items, :items
    undef_method :items
    alias_method :attr_items=, :items=
    undef_method :items=
    
    attr_accessor :texts
    alias_method :attr_texts, :texts
    undef_method :texts
    alias_method :attr_texts=, :texts=
    undef_method :texts=
    
    attr_accessor :images
    alias_method :attr_images, :images
    undef_method :images
    alias_method :attr_images=, :images=
    undef_method :images=
    
    attr_accessor :background
    alias_method :attr_background, :background
    undef_method :background
    alias_method :attr_background=, :background=
    undef_method :background=
    
    attr_accessor :foreground
    alias_method :attr_foreground, :foreground
    undef_method :foreground
    alias_method :attr_foreground=, :foreground=
    undef_method :foreground=
    
    attr_accessor :font
    alias_method :attr_font, :font
    undef_method :font
    alias_method :attr_font=, :font=
    undef_method :font=
    
    attr_accessor :expanded
    alias_method :attr_expanded, :expanded
    undef_method :expanded
    alias_method :attr_expanded=, :expanded=
    undef_method :expanded=
    
    attr_accessor :checked
    alias_method :attr_checked, :checked
    undef_method :checked
    alias_method :attr_checked=, :checked=
    undef_method :checked=
    
    attr_accessor :grayed
    alias_method :attr_grayed, :grayed
    undef_method :grayed
    alias_method :attr_grayed=, :grayed=
    undef_method :grayed=
    
    typesig { [TableTree, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>TableTree</code>)
    # and a style value describing its behavior and appearance.
    # The item is added to the end of the items maintained by its parent.
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
    # </ul>
    # 
    # @see SWT
    # @see Widget#getStyle()
    def initialize(parent, style)
      initialize__table_tree_item(parent, style, parent.get_item_count)
    end
    
    typesig { [TableTree, ::Java::Int, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>TableTree</code>,
    # a style value describing its behavior and appearance, and the index
    # at which to place it in the items maintained by its parent.
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
    # @param index the index to store the receiver in its parent
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # </ul>
    # 
    # @see SWT
    # @see Widget#getStyle()
    def initialize(parent, style, index)
      initialize__table_tree_item(parent, nil, style, index)
    end
    
    typesig { [TableTreeItem, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>TableTreeItem</code>)
    # and a style value describing its behavior and appearance.
    # The item is added to the end of the items maintained by its parent.
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
    # </ul>
    # 
    # @see SWT
    # @see Widget#getStyle()
    def initialize(parent, style)
      initialize__table_tree_item(parent, style, parent.get_item_count)
    end
    
    typesig { [TableTreeItem, ::Java::Int, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>TableTreeItem</code>),
    # a style value describing its behavior and appearance, and the index
    # at which to place it in the items maintained by its parent.
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
    # @param index the index to store the receiver in its parent
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # </ul>
    # 
    # @see SWT
    # @see Widget#getStyle()
    def initialize(parent, style, index)
      initialize__table_tree_item(parent.get_parent, parent, style, index)
    end
    
    typesig { [TableTree, TableTreeItem, ::Java::Int, ::Java::Int] }
    def initialize(parent, parent_item, style, index)
      @table_item = nil
      @parent = nil
      @parent_item = nil
      @items = nil
      @texts = nil
      @images = nil
      @background = nil
      @foreground = nil
      @font = nil
      @expanded = false
      @checked = false
      @grayed = false
      super(parent, style)
      @items = TableTree::EMPTY_ITEMS
      @texts = TableTree::EMPTY_TEXTS
      @images = TableTree::EMPTY_IMAGES
      @parent = parent
      @parent_item = parent_item
      if ((parent_item).nil?)
        # Root items are visible immediately
        table_index = parent.add_item(self, index)
        @table_item = TableItem.new(parent.get_table, style, table_index)
        @table_item.set_data(TableTree::ITEMID, self)
        add_check
        # Feature in the Table.  The table uses the first image that
        # is inserted into the table to size the table rows.  If the
        # user is allowed to insert the first image, this will cause
        # the +/- images to be scaled.  The fix is to insert a dummy
        # image to force the size.
        if ((parent.attr_size_image).nil?)
          item_height = parent.get_item_height
          parent.attr_size_image = Image.new(parent.get_display, item_height, item_height)
          gc = SwtGC.new(parent.attr_size_image)
          gc.set_background(parent.get_background)
          gc.fill_rectangle(0, 0, item_height, item_height)
          gc.dispose
          @table_item.set_image(0, parent.attr_size_image)
        end
      else
        parent_item.add_item(self, index)
      end
    end
    
    typesig { [] }
    def add_check
      table = @parent.get_table
      if (((table.get_style & SWT::CHECK)).equal?(0))
        return
      end
      @table_item.set_checked(@checked)
      @table_item.set_grayed(@grayed)
    end
    
    typesig { [TableTreeItem, ::Java::Int] }
    def add_item(item, index)
      if ((item).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (index < 0 || index > @items.attr_length)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      # Now that item has a sub-node it must indicate that it can be expanded
      if ((@items.attr_length).equal?(0) && (index).equal?(0))
        if (!(@table_item).nil?)
          image = @expanded ? @parent.get_minus_image : @parent.get_plus_image
          @table_item.set_image(0, image)
        end
      end
      # Put the item in the items list
      new_items = Array.typed(TableTreeItem).new(@items.attr_length + 1) { nil }
      System.arraycopy(@items, 0, new_items, 0, index)
      new_items[index] = item
      System.arraycopy(@items, index, new_items, index + 1, @items.attr_length - index)
      @items = new_items
      if (@expanded)
        item.set_visible(true)
      end
    end
    
    typesig { [] }
    # Returns the receiver's background color.
    # 
    # @return the background color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.0
    def get_background
      check_widget
      return ((@background).nil?) ? @parent.get_background : @background
    end
    
    typesig { [::Java::Int] }
    # Returns a rectangle describing the receiver's size and location
    # relative to its parent.
    # 
    # @return the receiver's bounding rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_bounds(index)
      check_widget
      if (!(@table_item).nil?)
        return @table_item.get_bounds(index)
      else
        return Rectangle.new(0, 0, 0, 0)
      end
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is checked,
    # and false otherwise.  When the parent does not have
    # the <code>CHECK style, return false.
    # 
    # @return the checked state of the checkbox
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_checked
      check_widget
      if ((@table_item).nil?)
        return @checked
      end
      return @table_item.get_checked
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is grayed,
    # and false otherwise. When the parent does not have
    # the <code>CHECK</code> style, return false.
    # 
    # @return the grayed state of the checkbox
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.1
    def get_grayed
      check_widget
      if ((@table_item).nil?)
        return @grayed
      end
      return @table_item.get_grayed
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is expanded,
    # and false otherwise.
    # <p>
    # 
    # @return the expanded state
    def get_expanded
      # checkWidget();
      return @expanded
    end
    
    typesig { [] }
    # Returns the font that the receiver will use to paint textual information for this item.
    # 
    # @return the receiver's font
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_font
      check_widget
      return ((@font).nil?) ? @parent.get_font : @font
    end
    
    typesig { [] }
    # Returns the foreground color that the receiver will use to draw.
    # 
    # @return the receiver's foreground color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.0
    def get_foreground
      check_widget
      return ((@foreground).nil?) ? @parent.get_foreground : @foreground
    end
    
    typesig { [] }
    # Gets the first image.
    # <p>
    # The image in column 0 is reserved for the [+] and [-]
    # images of the tree, therefore getImage(0) will return null.
    # 
    # @return the image at index 0
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_image
      check_widget
      return get_image(0)
    end
    
    typesig { [::Java::Int] }
    # Gets the image at the specified index.
    # <p>
    # Indexing is zero based. The image can be null.
    # The image in column 0 is reserved for the [+] and [-]
    # images of the tree, therefore getImage(0) will return null.
    # Return null if the index is out of range.
    # 
    # @param index the index of the image
    # @return the image at the specified index or null
    def get_image(index)
      # checkWidget();
      if (0 < index && index < @images.attr_length)
        return @images[index]
      end
      return nil
    end
    
    typesig { [] }
    def get_indent
      if ((@parent_item).nil?)
        return 0
      end
      return @parent_item.get_indent + 1
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
    
    typesig { [] }
    # Returns the number of items contained in the receiver
    # that are direct item children of the receiver.
    # 
    # @return the number of items
    def get_item_count
      # checkWidget();
      return @items.attr_length
    end
    
    typesig { [] }
    # Returns an array of <code>TableTreeItem</code>s which are the
    # direct item children of the receiver.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of items, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return the receiver's items
    def get_items
      # checkWidget();
      new_items = Array.typed(TableTreeItem).new(@items.attr_length) { nil }
      System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
      return new_items
    end
    
    typesig { [TableItem] }
    def get_item(table_item)
      if ((table_item).nil?)
        return nil
      end
      if ((@table_item).equal?(table_item))
        return self
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
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>TableTree</code>.
    # 
    # @return the receiver's parent
    def get_parent
      # checkWidget();
      return @parent
    end
    
    typesig { [] }
    # Returns the receiver's parent item, which must be a
    # <code>TableTreeItem</code> or null when the receiver is a
    # root.
    # 
    # @return the receiver's parent item
    def get_parent_item
      # checkWidget();
      return @parent_item
    end
    
    typesig { [] }
    def get_text
      check_widget
      return get_text(0)
    end
    
    typesig { [::Java::Int] }
    # Gets the item text at the specified index.
    # <p>
    # Indexing is zero based.
    # 
    # This operation will fail when the index is out
    # of range or an item could not be queried from
    # the OS.
    # 
    # @param index the index of the item
    # @return the item text at the specified index, which can be null
    def get_text(index)
      # checkWidget();
      if (0 <= index && index < @texts.attr_length)
        return @texts[index]
      end
      return nil
    end
    
    typesig { [] }
    def get_visible
      return !(@table_item).nil?
    end
    
    typesig { [TableTreeItem] }
    # Gets the index of the specified item.
    # 
    # <p>The widget is searched starting at 0 until an
    # item is found that is equal to the search item.
    # If no item is found, -1 is returned.  Indexing
    # is zero based.  This index is relative to the parent only.
    # 
    # @param item the search item
    # @return the index of the item or -1 if the item is not found
    def index_of(item)
      # checkWidget();
      i = 0
      while i < @items.attr_length
        if ((@items[i]).equal?(item))
          return i
        end
        i += 1
      end
      return -1
    end
    
    typesig { [::Java::Boolean] }
    def expand_all(notify)
      if ((@items.attr_length).equal?(0))
        return
      end
      if (!@expanded)
        set_expanded(true)
        if (notify)
          event = Event.new
          event.attr_item = self
          @parent.notify_listeners(SWT::Expand, event)
        end
      end
      i = 0
      while i < @items.attr_length
        @items[i].expand_all(notify)
        i += 1
      end
    end
    
    typesig { [TableTreeItem] }
    def expanded_index_of(item)
      index = 0
      i = 0
      while i < @items.attr_length
        if ((@items[i]).equal?(item))
          return index
        end
        if (@items[i].attr_expanded)
          index += @items[i].visible_children_count
        end
        index += 1
        i += 1
      end
      return -1
    end
    
    typesig { [] }
    def visible_children_count
      count = 0
      i = 0
      while i < @items.attr_length
        if (@items[i].get_visible)
          count += 1 + @items[i].visible_children_count
        end
        i += 1
      end
      return count
    end
    
    typesig { [] }
    def dispose
      if (is_disposed)
        return
      end
      i = @items.attr_length - 1
      while i >= 0
        @items[i].dispose
        i -= 1
      end
      super
      if (!@parent.attr_in_dispose)
        if (!(@parent_item).nil?)
          @parent_item.remove_item(self)
        else
          @parent.remove_item(self)
        end
        if (!(@table_item).nil?)
          @table_item.dispose
        end
      end
      @items = nil
      @parent_item = nil
      @parent = nil
      @images = nil
      @texts = nil
      @table_item = nil
      @foreground = nil
      @background = nil
      @font = nil
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
      if ((@items.attr_length).equal?(0))
        if (!(@table_item).nil?)
          @table_item.set_image(0, nil)
        end
      end
    end
    
    typesig { [Color] }
    # Sets the receiver's background color to the color specified
    # by the argument, or to the default system color for the item
    # if the argument is null.
    # 
    # @param color the new color (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.0
    def set_background(color)
      check_widget
      if (!(color).nil? && color.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(@table_item).nil?)
        @table_item.set_background(color)
      end
      @background = color
    end
    
    typesig { [::Java::Boolean] }
    # Sets the checked state of the checkbox for this item.  This state change
    # only applies if the Table was created with the SWT.CHECK style.
    # 
    # @param checked the new checked state of the checkbox
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_checked(checked)
      check_widget
      table = @parent.get_table
      if (((table.get_style & SWT::CHECK)).equal?(0))
        return
      end
      if (!(@table_item).nil?)
        @table_item.set_checked(checked)
      end
      @checked = checked
    end
    
    typesig { [::Java::Boolean] }
    # Sets the grayed state of the checkbox for this item.  This state change
    # only applies if the Table was created with the SWT.CHECK style.
    # 
    # @param grayed the new grayed state of the checkbox;
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.1
    def set_grayed(grayed)
      check_widget
      table = @parent.get_table
      if (((table.get_style & SWT::CHECK)).equal?(0))
        return
      end
      if (!(@table_item).nil?)
        @table_item.set_grayed(grayed)
      end
      @grayed = grayed
    end
    
    typesig { [::Java::Boolean] }
    # Sets the expanded state.
    # <p>
    # @param expanded the new expanded state.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    def set_expanded(expanded)
      check_widget
      if ((@items.attr_length).equal?(0))
        return
      end
      if ((@expanded).equal?(expanded))
        return
      end
      @expanded = expanded
      if ((@table_item).nil?)
        return
      end
      @parent.set_redraw(false)
      i = 0
      while i < @items.attr_length
        @items[i].set_visible(expanded)
        i += 1
      end
      image = expanded ? @parent.get_minus_image : @parent.get_plus_image
      @table_item.set_image(0, image)
      @parent.set_redraw(true)
    end
    
    typesig { [Font] }
    # Sets the font that the receiver will use to paint textual information
    # for this item to the font specified by the argument, or to the default font
    # for that kind of control if the argument is null.
    # 
    # @param font the new font (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_font(font)
      check_widget
      if (!(font).nil? && font.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(@table_item).nil?)
        @table_item.set_font(font)
      end
      @font = font
    end
    
    typesig { [Color] }
    # Sets the receiver's foreground color to the color specified
    # by the argument, or to the default system color for the item
    # if the argument is null.
    # 
    # @param color the new color (or null)
    # 
    # @since 2.0
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.0
    def set_foreground(color)
      check_widget
      if (!(color).nil? && color.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(@table_item).nil?)
        @table_item.set_foreground(color)
      end
      @foreground = color
    end
    
    typesig { [::Java::Int, Image] }
    # Sets the image at an index.
    # <p>
    # The image can be null.
    # The image in column 0 is reserved for the [+] and [-]
    # images of the tree, therefore do nothing if index is 0.
    # 
    # @param image the new image or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    def set_image(index, image)
      check_widget
      column_count = Math.max(@parent.get_table.get_column_count, 1)
      if (index <= 0 || index >= column_count)
        return
      end
      if (@images.attr_length < column_count)
        new_images = Array.typed(Image).new(column_count) { nil }
        System.arraycopy(@images, 0, new_images, 0, @images.attr_length)
        @images = new_images
      end
      @images[index] = image
      if (!(@table_item).nil?)
        @table_item.set_image(index, image)
      end
    end
    
    typesig { [Image] }
    # Sets the first image.
    # <p>
    # The image can be null.
    # The image in column 0 is reserved for the [+] and [-]
    # images of the tree, therefore do nothing.
    # 
    # @param image the new image or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    def set_image(image)
      set_image(0, image)
    end
    
    typesig { [::Java::Int, String] }
    # Sets the widget text.
    # <p>
    # 
    # The widget text for an item is the label of the
    # item or the label of the text specified by a column
    # number.
    # 
    # @param index the column number
    # @param text the new text
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the text is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    def set_text(index, text)
      check_widget
      if ((text).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      column_count = Math.max(@parent.get_table.get_column_count, 1)
      if (index < 0 || index >= column_count)
        return
      end
      if (@texts.attr_length < column_count)
        new_texts = Array.typed(String).new(column_count) { nil }
        System.arraycopy(@texts, 0, new_texts, 0, @texts.attr_length)
        @texts = new_texts
      end
      @texts[index] = text
      if (!(@table_item).nil?)
        @table_item.set_text(index, text)
      end
    end
    
    typesig { [String] }
    def set_text(string)
      set_text(0, string)
    end
    
    typesig { [::Java::Boolean] }
    def set_visible(show)
      if ((@parent_item).nil?)
        return
      end # this is a root and can not be toggled between visible and hidden
      if ((get_visible).equal?(show))
        return
      end
      if (show)
        if (!@parent_item.get_visible)
          return
        end # parentItem must already be visible
        # create underlying table item and set data in table item to stored data
        table = @parent.get_table
        parent_index = table.index_of(@parent_item.attr_table_item)
        index = @parent_item.expanded_index_of(self) + parent_index + 1
        if (index < 0)
          return
        end
        @table_item = TableItem.new(table, get_style, index)
        @table_item.set_data(TableTree::ITEMID, self)
        @table_item.set_image_indent(get_indent)
        if (!(@background).nil?)
          @table_item.set_background(@background)
        end
        if (!(@foreground).nil?)
          @table_item.set_foreground(@foreground)
        end
        if (!(@font).nil?)
          @table_item.set_font(@font)
        end
        add_check
        # restore fields to item
        # ignore any images in the first column
        column_count = Math.max(table.get_column_count, 1)
        i = 0
        while i < column_count
          if (i < @texts.attr_length && !(@texts[i]).nil?)
            set_text(i, @texts[i])
          end
          if (i < @images.attr_length && !(@images[i]).nil?)
            set_image(i, @images[i])
          end
          i += 1
        end
        # display the children and the appropriate [+]/[-] symbol as required
        if (!(@items.attr_length).equal?(0))
          if (@expanded)
            @table_item.set_image(0, @parent.get_minus_image)
            i_ = 0
            length = @items.attr_length
            while i_ < length
              @items[i_].set_visible(true)
              i_ += 1
            end
          else
            @table_item.set_image(0, @parent.get_plus_image)
          end
        end
      else
        i = 0
        length = @items.attr_length
        while i < length
          @items[i].set_visible(false)
          i += 1
        end
        # remove row from table
        @table_item.dispose
        @table_item = nil
      end
    end
    
    private
    alias_method :initialize__table_tree_item, :initialize
  end
  
end
