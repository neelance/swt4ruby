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
  module TreeItemImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Cocoa
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class represent a selectable user interface object
  # that represents a hierarchy of tree items in a tree widget.
  # 
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>(none)</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#tree">Tree, TreeItem, TreeColumn snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class TreeItem < TreeItemImports.const_get :Item
    include_class_members TreeItemImports
    
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
    
    attr_accessor :item_count
    alias_method :attr_item_count, :item_count
    undef_method :item_count
    alias_method :attr_item_count=, :item_count=
    undef_method :item_count=
    
    attr_accessor :strings
    alias_method :attr_strings, :strings
    undef_method :strings
    alias_method :attr_strings=, :strings=
    undef_method :strings=
    
    attr_accessor :images
    alias_method :attr_images, :images
    undef_method :images
    alias_method :attr_images=, :images=
    undef_method :images=
    
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
    
    attr_accessor :cached
    alias_method :attr_cached, :cached
    undef_method :cached
    alias_method :attr_cached=, :cached=
    undef_method :cached=
    
    attr_accessor :expanded
    alias_method :attr_expanded, :expanded
    undef_method :expanded
    alias_method :attr_expanded=, :expanded=
    undef_method :expanded=
    
    attr_accessor :foreground
    alias_method :attr_foreground, :foreground
    undef_method :foreground
    alias_method :attr_foreground=, :foreground=
    undef_method :foreground=
    
    attr_accessor :background
    alias_method :attr_background, :background
    undef_method :background
    alias_method :attr_background=, :background=
    undef_method :background=
    
    attr_accessor :cell_foreground
    alias_method :attr_cell_foreground, :cell_foreground
    undef_method :cell_foreground
    alias_method :attr_cell_foreground=, :cell_foreground=
    undef_method :cell_foreground=
    
    attr_accessor :cell_background
    alias_method :attr_cell_background, :cell_background
    undef_method :cell_background
    alias_method :attr_cell_background=, :cell_background=
    undef_method :cell_background=
    
    attr_accessor :font
    alias_method :attr_font, :font
    undef_method :font
    alias_method :attr_font=, :font=
    undef_method :font=
    
    attr_accessor :cell_font
    alias_method :attr_cell_font, :cell_font
    undef_method :cell_font
    alias_method :attr_cell_font=, :cell_font=
    undef_method :cell_font=
    
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    # the handle to the OS resource
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
    typesig { [Tree, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Tree</code> or a <code>TreeItem</code>)
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
    # @param parent a tree control which will be the parent of the new instance (cannot be null)
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
      initialize__tree_item(check_null(parent), nil, style, -1, true)
    end
    
    typesig { [Tree, ::Java::Int, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Tree</code> or a <code>TreeItem</code>),
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
    # @param parent a tree control which will be the parent of the new instance (cannot be null)
    # @param style the style of control to construct
    # @param index the zero-relative index to store the receiver in its parent
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the parent (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style, index)
      initialize__tree_item(check_null(parent), nil, style, check_index(index), true)
    end
    
    typesig { [TreeItem, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Tree</code> or a <code>TreeItem</code>)
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
    # @param parentItem a tree control which will be the parent of the new instance (cannot be null)
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
    def initialize(parent_item, style)
      initialize__tree_item(check_null(parent_item).attr_parent, parent_item, style, -1, true)
    end
    
    typesig { [TreeItem, ::Java::Int, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Tree</code> or a <code>TreeItem</code>),
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
    # @param parentItem a tree control which will be the parent of the new instance (cannot be null)
    # @param style the style of control to construct
    # @param index the zero-relative index to store the receiver in its parent
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the parent (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent_item, style, index)
      initialize__tree_item(check_null(parent_item).attr_parent, parent_item, style, check_index(index), true)
    end
    
    typesig { [Tree, TreeItem, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def initialize(parent, parent_item, style, index, create)
      @parent = nil
      @parent_item = nil
      @items = nil
      @item_count = 0
      @strings = nil
      @images = nil
      @checked = false
      @grayed = false
      @cached = false
      @expanded = false
      @foreground = nil
      @background = nil
      @cell_foreground = nil
      @cell_background = nil
      @font = nil
      @cell_font = nil
      @width = 0
      @handle = nil
      super(parent, style)
      @width = -1
      @parent = parent
      @parent_item = parent_item
      if (create)
        parent.create_item(self, parent_item, index)
      else
        @handle = SWTTreeItem.new.alloc.init
        create_jniref
        register
        @items = Array.typed(TreeItem).new(4) { nil }
      end
    end
    
    class_module.module_eval {
      typesig { [TreeItem] }
      def check_null(item)
        if ((item).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        return item
      end
      
      typesig { [Tree] }
      def check_null(parent)
        if ((parent).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        return parent
      end
      
      typesig { [::Java::Int] }
      def check_index(index)
        if (index < 0)
          SWT.error(SWT::ERROR_INVALID_RANGE)
        end
        return index
      end
    }
    
    typesig { [::Java::Int, SwtGC] }
    def calculate_width(index, gc)
      if ((index).equal?(0) && !(@width).equal?(-1))
        return @width
      end
      font = nil
      if (!(@cell_font).nil?)
        font = @cell_font[index]
      end
      if ((font).nil?)
        font = @font
      end
      if ((font).nil?)
        font = @parent.attr_font
      end
      if ((font).nil?)
        font = @parent.default_font
      end
      text = (index).equal?(0) ? self.attr_text : ((@strings).nil? ? "" : @strings[index])
      image = (index).equal?(0) ? self.attr_image : ((@images).nil? ? nil : @images[index])
      cell = @parent.attr_data_cell
      if (!(font.attr_extra_traits).equal?(0))
        attrib_str = @parent.create_string(text, font, nil, 0, true, false)
        cell.set_attributed_string_value(attrib_str)
        attrib_str.release
      else
        cell.set_font(font.attr_handle)
        cell.set_title(NSString.string_with(!(text).nil? ? text : ""))
      end
      # This code is inlined for performance
      super_struct = Objc_super.new
      super_struct.attr_receiver = cell.attr_id
      super_struct.attr_super_class = OS.objc_msg_send(cell.attr_id, OS.attr_sel_superclass)
      size = NSSize.new
      OS.objc_msg_send_super_stret(size, super_struct, OS.attr_sel_cell_size)
      if (!(image).nil?)
        size.attr_width += @parent.attr_image_bounds.attr_width + Table::IMAGE_GAP
      end
      # cell.setImage (image != null ? image.handle : null);
      # NSSize size = cell.cellSize ();
      width = RJava.cast_to_int(Math.ceil(size.attr_width))
      send_measure = true
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        send_measure = @cached
      end
      if (send_measure && @parent.hooks(SWT::MeasureItem))
        gc.set_font(font)
        event = Event.new
        event.attr_item = self
        event.attr_index = index
        event.attr_gc = gc
        widget = @parent.attr_view
        height = RJava.cast_to_int(widget.row_height)
        event.attr_width = width
        event.attr_height = height
        @parent.send_event(SWT::MeasureItem, event)
        if (height < event.attr_height)
          widget.set_row_height(event.attr_height)
          widget.set_needs_display(true)
        end
        width = event.attr_width
      end
      if ((index).equal?(0))
        outline_view = @parent.attr_view
        width += outline_view.indentation_per_level * (1 + outline_view.level_for_item(@handle))
        @width = width
      end
      return width
    end
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [] }
    def clear
      @cached = false
      self.attr_text = ""
      self.attr_image = nil
      @strings = nil
      @images = nil
      @checked = @grayed = false
      @foreground = @background = nil
      @cell_foreground = @cell_background = nil
      @font = nil
      @cell_font = nil
      @width = -1
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
        SWT.error(SWT::ERROR_INVALID_RANGE)
      end
      @parent.clear(self, index, all)
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
      @parent.clear_all(self, all)
    end
    
    typesig { [] }
    def clear_selection
      widget = @parent.attr_view
      # long
      row = widget.row_for_item(@handle)
      if (widget.is_row_selected(row))
        widget.deselect_row(row)
      end
      if (!(@items).nil? && get_expanded)
        i = 0
        while i < @items.attr_length
          item = @items[i]
          if (!(item).nil? && !item.is_disposed)
            item.clear_selection
          end
          i += 1
        end
      end
    end
    
    typesig { [::Java::Int] }
    def create_string(index)
      text = (index).equal?(0) ? self.attr_text : ((@strings).nil? ? "" : @strings[index])
      return NSString.string_with(!(text).nil? ? text : "")
    end
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget(@handle)
    end
    
    typesig { [] }
    def destroy_widget
      @parent.destroy_item(self)
      release_handle
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
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return !(@background).nil? ? @background : @parent.get_background
    end
    
    typesig { [::Java::Int] }
    # Returns the background color at the given column index in the receiver.
    # 
    # @param index the column index
    # @return the background color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def get_background(index)
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      count = Math.max(1, @parent.attr_column_count)
      if (0 > index || index > count - 1)
        return get_background
      end
      if ((@cell_background).nil? || (@cell_background[index]).nil?)
        return get_background
      end
      return @cell_background[index]
    end
    
    typesig { [] }
    # Returns a rectangle describing the receiver's size and location
    # relative to its parent.
    # 
    # @return the receiver's bounding rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_bounds
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      @parent.check_items
      outline_view = @parent.attr_view
      rect = outline_view.rect_of_row(outline_view.row_for_item(@handle))
      return Rectangle.new(RJava.cast_to_int(rect.attr_x), RJava.cast_to_int(rect.attr_y), RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height))
    end
    
    typesig { [::Java::Int] }
    # Returns a rectangle describing the receiver's size and location
    # relative to its parent at a column in the tree.
    # 
    # @param index the index that specifies the column
    # @return the receiver's bounding column rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def get_bounds(index)
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if (!(0 <= index && index < Math.max(1, @parent.attr_column_count)))
        return Rectangle.new(0, 0, 0, 0)
      end
      @parent.check_items
      outline_view = @parent.attr_view
      if ((@parent.attr_column_count).equal?(0))
        index = !((@parent.attr_style & SWT::CHECK)).equal?(0) ? 1 : 0
      else
        column = @parent.get_column(index)
        index = @parent.index_of(column.attr_ns_column)
      end
      rect = outline_view.frame_of_cell_at_column(index, outline_view.row_for_item(@handle))
      return Rectangle.new(RJava.cast_to_int(rect.attr_x), RJava.cast_to_int(rect.attr_y), RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height))
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is checked,
    # and false otherwise.  When the parent does not have
    # the <code>CHECK style, return false.
    # <p>
    # 
    # @return the checked state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_checked
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if (((@parent.attr_style & SWT::CHECK)).equal?(0))
        return false
      end
      return @checked
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is expanded,
    # and false otherwise.
    # <p>
    # 
    # @return the expanded state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_expanded
      check_widget
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
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return !(@font).nil? ? @font : @parent.get_font
    end
    
    typesig { [::Java::Int] }
    # Returns the font that the receiver will use to paint textual information
    # for the specified cell in this item.
    # 
    # @param index the column index
    # @return the receiver's font
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def get_font(index)
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      count = Math.max(1, @parent.attr_column_count)
      if (0 > index || index > count - 1)
        return get_font
      end
      if ((@cell_font).nil? || (@cell_font[index]).nil?)
        return get_font
      end
      return @cell_font[index]
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
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return !(@foreground).nil? ? @foreground : @parent.get_foreground
    end
    
    typesig { [::Java::Int] }
    # Returns the foreground color at the given column index in the receiver.
    # 
    # @param index the column index
    # @return the foreground color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def get_foreground(index)
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      count = Math.max(1, @parent.attr_column_count)
      if (0 > index || index > count - 1)
        return get_foreground
      end
      if ((@cell_foreground).nil? || (@cell_foreground[index]).nil?)
        return get_foreground
      end
      return @cell_foreground[index]
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is grayed,
    # and false otherwise. When the parent does not have
    # the <code>CHECK style, return false.
    # <p>
    # 
    # @return the grayed state of the checkbox
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_grayed
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if (((@parent.attr_style & SWT::CHECK)).equal?(0))
        return false
      end
      return @grayed
    end
    
    typesig { [] }
    def get_image
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return super
    end
    
    typesig { [::Java::Int] }
    # Returns the image stored at the given column index in the receiver,
    # or null if the image has not been set or if the column does not exist.
    # 
    # @param index the column index
    # @return the image stored at the given column index in the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def get_image(index)
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if ((index).equal?(0))
        return get_image
      end
      if (!(@images).nil?)
        if (0 <= index && index < @images.attr_length)
          return @images[index]
        end
      end
      return nil
    end
    
    typesig { [::Java::Int] }
    # Returns a rectangle describing the size and location
    # relative to its parent of an image at a column in the
    # tree.
    # 
    # @param index the index that specifies the column
    # @return the receiver's bounding image rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def get_image_bounds(index)
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if (!(0 <= index && index < Math.max(1, @parent.attr_column_count)))
        return Rectangle.new(0, 0, 0, 0)
      end
      @parent.check_items
      outline_view = @parent.attr_view
      image = (index).equal?(0) ? self.attr_image : (!(@images).nil?) ? @images[index] : nil
      if ((@parent.attr_column_count).equal?(0))
        index = !((@parent.attr_style & SWT::CHECK)).equal?(0) ? 1 : 0
      else
        column = @parent.get_column(index)
        index = @parent.index_of(column.attr_ns_column)
      end
      rect = outline_view.frame_of_cell_at_column(index, outline_view.row_for_item(@handle))
      rect.attr_x += Tree::IMAGE_GAP
      if (!(image).nil?)
        rect.attr_width = @parent.attr_image_bounds.attr_width
      else
        rect.attr_width = 0
      end
      return Rectangle.new(RJava.cast_to_int(rect.attr_x), RJava.cast_to_int(rect.attr_y), RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height))
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
      if (index < 0)
        error(SWT::ERROR_INVALID_RANGE)
      end
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if (index >= @item_count)
        error(SWT::ERROR_INVALID_RANGE)
      end
      return @parent.__get_item(self, index, true)
    end
    
    typesig { [] }
    # Returns the number of items contained in the receiver
    # that are direct item children of the receiver.
    # 
    # @return the number of items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_count
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return @item_count
    end
    
    typesig { [] }
    # Returns a (possibly empty) array of <code>TreeItem</code>s which
    # are the direct item children of the receiver.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of items, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return the receiver's items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_items
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      result = Array.typed(TreeItem).new(@item_count) { nil }
      i = 0
      while i < @item_count
        result[i] = @parent.__get_item(self, i, true)
        i += 1
      end
      return result
    end
    
    typesig { [] }
    def get_name_text
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        if (!@cached)
          return "*virtual*"
        end # $NON-NLS-1$
      end
      return super
    end
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>Tree</code>.
    # 
    # @return the receiver's parent
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_parent
      check_widget
      return @parent
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
      return @parent_item
    end
    
    typesig { [] }
    def get_text
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return super
    end
    
    typesig { [::Java::Int] }
    # Returns the text stored at the given column index in the receiver,
    # or empty string if the text has not been set.
    # 
    # @param index the column index
    # @return the text stored at the given column index in the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def get_text(index)
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if ((index).equal?(0))
        return get_text
      end
      if (!(@strings).nil?)
        if (0 <= index && index < @strings.attr_length)
          string = @strings[index]
          return !(string).nil? ? string : ""
        end
      end
      return ""
    end
    
    typesig { [::Java::Int] }
    # Returns a rectangle describing the size and location
    # relative to its parent of the text at a column in the
    # tree.
    # 
    # @param index the index that specifies the column
    # @return the receiver's bounding text rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.3
    def get_text_bounds(index)
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if (!(0 <= index && index < Math.max(1, @parent.attr_column_count)))
        return Rectangle.new(0, 0, 0, 0)
      end
      @parent.check_items
      outline_view = @parent.attr_view
      image = (index).equal?(0) ? self.attr_image : (!(@images).nil?) ? @images[index] : nil
      if ((@parent.attr_column_count).equal?(0))
        index = !((@parent.attr_style & SWT::CHECK)).equal?(0) ? 1 : 0
      else
        column = @parent.get_column(index)
        index = @parent.index_of(column.attr_ns_column)
      end
      rect = outline_view.frame_of_cell_at_column(index, outline_view.row_for_item(@handle))
      rect.attr_x += Tree::TEXT_GAP
      rect.attr_width -= Tree::TEXT_GAP
      if (!(image).nil?)
        offset = @parent.attr_image_bounds.attr_width + Tree::IMAGE_GAP
        rect.attr_x += offset
        rect.attr_width -= offset
      end
      return Rectangle.new(RJava.cast_to_int(rect.attr_x), RJava.cast_to_int(rect.attr_y), RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height))
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
      if (!(item.attr_parent_item).equal?(self))
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
    
    typesig { [::Java::Int] }
    def redraw(column_index)
      if (@parent.attr_ignore_redraw || !is_drawing)
        return
      end
      # redraw the full item if columnIndex == -1
      outline_view = @parent.attr_view
      rect = nil
      if ((column_index).equal?(-1) || @parent.hooks(SWT::MeasureItem) || @parent.hooks(SWT::EraseItem) || @parent.hooks(SWT::PaintItem))
        rect = outline_view.rect_of_row(outline_view.row_for_item(@handle))
      else
        index = 0
        if ((@parent.attr_column_count).equal?(0))
          index = !((@parent.attr_style & SWT::CHECK)).equal?(0) ? 1 : 0
        else
          if (0 <= column_index && column_index < @parent.attr_column_count)
            index = @parent.index_of(@parent.attr_columns[column_index].attr_ns_column)
          else
            return
          end
        end
        rect = outline_view.frame_of_cell_at_column(index, outline_view.row_for_item(@handle))
      end
      outline_view.set_needs_display_in_rect(rect)
    end
    
    typesig { [] }
    def register
      super
      self.attr_display.add_widget(@handle, self)
    end
    
    typesig { [::Java::Boolean] }
    def release(destroy)
      # Bug in Cocoa.  When removing selected items from an NSOutlineView, the selection
      # is not properly updated.  The fix is to ensure that the item and its subitems
      # are deselected before the item is removed by the reloadItem call.
      # 
      # This has to be done in release to avoid traversing the tree twice when items are
      # removed from the tree by setItemCount.
      if (destroy)
        clear_selection
      end
      super(destroy)
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
      @item_count = 0
      super(destroy)
    end
    
    typesig { [] }
    def release_handle
      super
      if (!(@handle).nil?)
        @handle.release
      end
      @handle = nil
      @parent_item = nil
      @parent = nil
    end
    
    typesig { [] }
    def release_widget
      super
      @strings = nil
      @images = nil
      @background = @foreground = nil
      @font = nil
      @cell_background = @cell_foreground = nil
      @cell_font = nil
    end
    
    typesig { [] }
    # Removes all of the items from the receiver.
    # <p>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def remove_all
      check_widget
      @parent.set_item_count(0)
    end
    
    typesig { [::Java::Boolean, ::Java::Boolean] }
    def send_expand(expand, recurse)
      if ((@item_count).equal?(0))
        return
      end
      if (!(@expanded).equal?(expand))
        event = Event.new
        event.attr_item = self
        @parent.send_event(expand ? SWT::Expand : SWT::Collapse, event)
        if (is_disposed)
          return
        end
        @expanded = expand
      end
      if (recurse)
        i = 0
        while i < @item_count
          if (!(@items[i]).nil?)
            @items[i].send_expand(expand, recurse)
          end
          i += 1
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
      old_color = @background
      if ((old_color).equal?(color))
        return
      end
      @background = color
      if (!(old_color).nil? && (old_color == color))
        return
      end
      @cached = true
      redraw(-1)
    end
    
    typesig { [::Java::Int, Color] }
    # Sets the background color at the given column index in the receiver
    # to the color specified by the argument, or to the default system color for the item
    # if the argument is null.
    # 
    # @param index the column index
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
    # @since 3.1
    def set_background(index, color)
      check_widget
      if (!(color).nil? && color.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      count = Math.max(1, @parent.attr_column_count)
      if (0 > index || index > count - 1)
        return
      end
      if ((@cell_background).nil?)
        if ((color).nil?)
          return
        end
        @cell_background = Array.typed(Color).new(count) { nil }
      end
      old_color = @cell_background[index]
      if ((old_color).equal?(color))
        return
      end
      @cell_background[index] = color
      if (!(old_color).nil? && (old_color == color))
        return
      end
      @cached = true
      redraw(index)
    end
    
    typesig { [::Java::Boolean] }
    # Sets the checked state of the receiver.
    # <p>
    # 
    # @param checked the new checked state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_checked(checked)
      check_widget
      if (((@parent.attr_style & SWT::CHECK)).equal?(0))
        return
      end
      if ((@checked).equal?(checked))
        return
      end
      @checked = checked
      @cached = true
      redraw(-1)
    end
    
    typesig { [::Java::Boolean] }
    # Sets the expanded state of the receiver.
    # <p>
    # 
    # @param expanded the new expanded state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_expanded(expanded)
      check_widget
      # Do nothing when the item is a leaf or already expanded
      if ((@item_count).equal?(0) || (expanded).equal?(get_expanded))
        return
      end
      @parent.check_items
      @parent.attr_ignore_expand = true
      @expanded = expanded
      if (expanded)
        (@parent.attr_view).expand_item(@handle)
      else
        (@parent.attr_view).collapse_item(@handle)
      end
      @parent.attr_ignore_expand = false
      @cached = true
      if (!expanded)
        @parent.set_scroll_width
      end
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
      old_font = @font
      if ((old_font).equal?(font))
        return
      end
      @font = font
      if (!(old_font).nil? && (old_font == font))
        return
      end
      @width = -1
      @cached = true
      redraw(-1)
    end
    
    typesig { [::Java::Int, Font] }
    # Sets the font that the receiver will use to paint textual information
    # for the specified cell in this item to the font specified by the
    # argument, or to the default font for that kind of control if the
    # argument is null.
    # 
    # @param index the column index
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
    # @since 3.1
    def set_font(index, font)
      check_widget
      if (!(font).nil? && font.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      count = Math.max(1, @parent.attr_column_count)
      if (0 > index || index > count - 1)
        return
      end
      if ((@cell_font).nil?)
        if ((font).nil?)
          return
        end
        @cell_font = Array.typed(Font).new(count) { nil }
      end
      old_font = @cell_font[index]
      if ((old_font).equal?(font))
        return
      end
      @cell_font[index] = font
      if (!(old_font).nil? && (old_font == font))
        return
      end
      @width = -1
      @cached = true
      redraw(index)
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
      old_color = @foreground
      if ((old_color).equal?(color))
        return
      end
      @foreground = color
      if (!(old_color).nil? && (old_color == color))
        return
      end
      @cached = true
      redraw(-1)
    end
    
    typesig { [::Java::Int, Color] }
    # Sets the foreground color at the given column index in the receiver
    # to the color specified by the argument, or to the default system color for the item
    # if the argument is null.
    # 
    # @param index the column index
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
    # @since 3.1
    def set_foreground(index, color)
      check_widget
      if (!(color).nil? && color.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      count = Math.max(1, @parent.attr_column_count)
      if (0 > index || index > count - 1)
        return
      end
      if ((@cell_foreground).nil?)
        if ((color).nil?)
          return
        end
        @cell_foreground = Array.typed(Color).new(count) { nil }
      end
      old_color = @cell_foreground[index]
      if ((old_color).equal?(color))
        return
      end
      @cell_foreground[index] = color
      if (!(old_color).nil? && (old_color == color))
        return
      end
      @cached = true
      redraw(index)
    end
    
    typesig { [::Java::Boolean] }
    # Sets the grayed state of the checkbox for this item.  This state change
    # only applies if the Tree was created with the SWT.CHECK style.
    # 
    # @param grayed the new grayed state of the checkbox
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_grayed(grayed)
      check_widget
      if (((@parent.attr_style & SWT::CHECK)).equal?(0))
        return
      end
      if ((@grayed).equal?(grayed))
        return
      end
      @grayed = grayed
      @cached = true
      redraw(-1)
    end
    
    typesig { [Array.typed(Image)] }
    # Sets the image for multiple columns in the tree.
    # 
    # @param images the array of new images
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the array of images is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if one of the images has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def set_image(images)
      check_widget
      if ((images).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      i = 0
      while i < images.attr_length
        set_image(i, images[i])
        i += 1
      end
    end
    
    typesig { [::Java::Int, Image] }
    # Sets the receiver's image at a column.
    # 
    # @param index the column index
    # @param image the new image
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the image has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def set_image(index, image)
      check_widget
      if (!(image).nil? && image.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((@parent.attr_image_bounds).nil? && !(image).nil?)
        @parent.set_item_height(image, nil, false)
      end
      if ((index).equal?(0))
        if (!(image).nil? && (image.attr_type).equal?(SWT::ICON))
          if ((image == self.attr_image))
            return
          end
        end
        @width = -1
        super(image)
      end
      count = Math.max(1, @parent.attr_column_count)
      if (0 <= index && index < count)
        if ((@images).nil?)
          @images = Array.typed(Image).new(count) { nil }
        end
        if (!(image).nil? && (image.attr_type).equal?(SWT::ICON))
          if ((image == @images[index]))
            return
          end
        end
        @images[index] = image
      end
      @cached = true
      if ((index).equal?(0))
        @parent.set_scroll_width(self)
      end
      if (0 <= index && index < count)
        redraw(index)
      end
    end
    
    typesig { [Image] }
    def set_image(image)
      check_widget
      set_image(0, image)
    end
    
    typesig { [::Java::Int] }
    # Sets the number of child items contained in the receiver.
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
      @parent.set_item_count(self, count)
    end
    
    typesig { [Array.typed(String)] }
    # Sets the text for multiple columns in the tree.
    # 
    # @param strings the array of new strings
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the text is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def set_text(strings)
      check_widget
      if ((strings).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      i = 0
      while i < strings.attr_length
        string = strings[i]
        if (!(string).nil?)
          set_text(i, string)
        end
        i += 1
      end
    end
    
    typesig { [::Java::Int, String] }
    # Sets the receiver's text at a column
    # 
    # @param index the column index
    # @param string the new text
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the text is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.1
    def set_text(index, string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((index).equal?(0))
        if ((string == self.attr_text))
          return
        end
        @width = -1
        super(string)
      end
      count = Math.max(1, @parent.attr_column_count)
      if (0 <= index && index < count)
        if ((@strings).nil?)
          @strings = Array.typed(String).new(count) { nil }
        end
        if ((string == @strings[index]))
          return
        end
        @strings[index] = string
      end
      @cached = true
      if ((index).equal?(0))
        @parent.set_scroll_width(self)
      end
      if (0 <= index && index < count)
        redraw(index)
      end
    end
    
    typesig { [String] }
    def set_text(string)
      check_widget
      set_text(0, string)
    end
    
    typesig { [] }
    def update_expanded
      if ((@item_count).equal?(0))
        return
      end
      outline_view = @parent.attr_view
      if (!(@expanded).equal?(outline_view.is_item_expanded(@handle)))
        if (@expanded)
          outline_view.expand_item(@handle)
        else
          outline_view.collapse_item(@handle)
        end
      end
      i = 0
      while i < @item_count
        if (!(@items[i]).nil?)
          @items[i].update_expanded
        end
        i += 1
      end
    end
    
    private
    alias_method :initialize__tree_item, :initialize
  end
  
end
