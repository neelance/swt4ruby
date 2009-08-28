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
  module TreeItemImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :DataBrowserCallbacks
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Rect
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
    
    attr_accessor :id
    alias_method :attr_id, :id
    undef_method :id
    alias_method :attr_id=, :id=
    undef_method :id=
    
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    attr_accessor :item_count
    alias_method :attr_item_count, :item_count
    undef_method :item_count
    alias_method :attr_item_count=, :item_count=
    undef_method :item_count=
    
    attr_accessor :child_ids
    alias_method :attr_child_ids, :child_ids
    undef_method :child_ids
    alias_method :attr_child_ids=, :child_ids=
    undef_method :child_ids=
    
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
      @strings = nil
      @images = nil
      @checked = false
      @grayed = false
      @cached = false
      @foreground = nil
      @background = nil
      @cell_foreground = nil
      @cell_background = nil
      @font = nil
      @cell_font = nil
      @id = 0
      @width = 0
      @item_count = 0
      @child_ids = nil
      super(parent, style)
      @width = -1
      @item_count = 0
      @parent = parent
      @parent_item = parent_item
      if (create)
        parent.create_item(self, parent_item, index)
      end
    end
    
    typesig { [] }
    def __get_expanded
      state = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_data_browser_item_state(@parent.attr_handle, @id, state)
      return !((state[0] & OS.attr_k_data_browser_container_is_open)).equal?(0)
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
      width = 0
      image = (index).equal?(0) ? self.attr_image : ((@images).nil? ? nil : @images[index])
      text = (index).equal?(0) ? self.attr_text : ((@strings).nil? ? "" : @strings[index])
      font = nil
      if (!(@cell_font).nil?)
        font = @cell_font[index]
      end
      if ((font).nil?)
        font = @font
      end
      if ((font).nil?)
        font = @parent.get_font
      end
      gc.set_font(font)
      if (!(image).nil?)
        width += image.get_bounds.attr_width + @parent.get_gap
      end
      if (!(text).nil? && text.length > 0)
        width += gc.string_extent(text).attr_x
      end
      if (@parent.hooks(SWT::MeasureItem))
        event = Event.new
        event.attr_item = self
        event.attr_index = index
        event.attr_gc = gc
        height = Array.typed(::Java::Short).new(1) { 0 }
        OS._get_data_browser_table_view_row_height(@parent.attr_handle, height)
        event.attr_width = width
        event.attr_height = height[0]
        @parent.send_event(SWT::MeasureItem, event)
        if (height[0] < event.attr_height)
          OS._set_data_browser_table_view_row_height(@parent.attr_handle, RJava.cast_to_short(event.attr_height))
          redraw_widget(@parent.attr_handle, false)
        end
        width = event.attr_width
      end
      if ((index).equal?(0))
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
      count = @parent.get_item_count(self)
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
    def destroy_widget
      # TEMPORARY CODE
      # parent.releaseItem (this, false);
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
      if (!@parent.check_data(self, true))
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
      if (!@parent.check_data(self, true))
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
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      rect = Rect.new
      column_id = (@parent.attr_column_count).equal?(0) ? @parent.attr_column_id : @parent.attr_columns[0].attr_id
      if (!(OS._get_data_browser_item_part_bounds(@parent.attr_handle, @id, column_id, OS.attr_k_data_browser_property_content_part, rect)).equal?(OS.attr_no_err))
        return Rectangle.new(0, 0, 0, 0)
      end
      x = rect.attr_left
      y = rect.attr_top
      width = 0
      if (!(self.attr_image).nil?)
        bounds = self.attr_image.get_bounds
        x += bounds.attr_width + @parent.get_gap
      end
      gc = SwtGC.new(@parent)
      extent = gc.string_extent(self.attr_text)
      gc.dispose
      width += extent.attr_x
      if (@parent.attr_column_count > 0)
        width = Math.min(width, rect.attr_right - x)
      end
      height = rect.attr_bottom - rect.attr_top
      return Rectangle.new(x, y, width, height)
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
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if (!(index).equal?(0) && !(0 <= index && index < @parent.attr_column_count))
        return Rectangle.new(0, 0, 0, 0)
      end
      rect = Rect.new
      column_id = (@parent.attr_column_count).equal?(0) ? @parent.attr_column_id : @parent.attr_columns[index].attr_id
      if (!(OS._get_data_browser_item_part_bounds(@parent.attr_handle, @id, column_id, OS.attr_k_data_browser_property_enclosing_part, rect)).equal?(OS.attr_no_err))
        return Rectangle.new(0, 0, 0, 0)
      end
      disclosure = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_data_browser_list_view_disclosure_column(@parent.attr_handle, disclosure, Array.typed(::Java::Boolean).new(1) { false })
      x = 0
      y = 0
      width = 0
      height = 0
      if (OS::VERSION >= 0x1040 && !(disclosure[0]).equal?(column_id))
        if (@parent.get_lines_visible)
          rect.attr_left += Tree::GRID_WIDTH
          rect.attr_top += Tree::GRID_WIDTH
        end
        x = rect.attr_left
        y = rect.attr_top
        width = rect.attr_right - rect.attr_left
        height = rect.attr_bottom - rect.attr_top
      else
        rect2 = Rect.new
        if (!(OS._get_data_browser_item_part_bounds(@parent.attr_handle, @id, column_id, OS.attr_k_data_browser_property_content_part, rect2)).equal?(OS.attr_no_err))
          return Rectangle.new(0, 0, 0, 0)
        end
        x = rect2.attr_left
        y = rect2.attr_top
        width = rect.attr_right - rect2.attr_left + 1
        height = rect2.attr_bottom - rect2.attr_top + 1
      end
      return Rectangle.new(x, y, width, height)
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
      if (!@parent.check_data(self, true))
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
      return !((self.attr_state & EXPANDING)).equal?(0) ? false : __get_expanded
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
      if (!@parent.check_data(self, true))
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
      if (!@parent.check_data(self, true))
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
      if (!@parent.check_data(self, true))
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
      if (!@parent.check_data(self, true))
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
      if (!@parent.check_data(self, true))
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
      if (!@parent.check_data(self, true))
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
      if (!@parent.check_data(self, true))
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
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if (!(index).equal?(0) && !(0 <= index && index < @parent.attr_column_count))
        return Rectangle.new(0, 0, 0, 0)
      end
      rect = Rect.new
      column_id = (@parent.attr_column_count).equal?(0) ? @parent.attr_column_id : @parent.attr_columns[index].attr_id
      if (!(OS._get_data_browser_item_part_bounds(@parent.attr_handle, @id, column_id, OS.attr_k_data_browser_property_content_part, rect)).equal?(OS.attr_no_err))
        return Rectangle.new(0, 0, 0, 0)
      end
      x = rect.attr_left
      y = rect.attr_top
      width = 0
      if ((index).equal?(0) && !(self.attr_image).nil?)
        bounds = self.attr_image.get_bounds
        width += bounds.attr_width
      end
      if (!(index).equal?(0) && !(@images).nil? && !(@images[index]).nil?)
        bounds = @images[index].get_bounds
        width += bounds.attr_width
      end
      height = rect.attr_bottom - rect.attr_top + 1
      return Rectangle.new(x, y, width, height)
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
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if (index >= @item_count)
        error(SWT::ERROR_INVALID_RANGE)
      end
      return @parent.__get_item(self, index)
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
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return @parent.get_item_count(self)
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
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return @parent.get_items(self)
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
      if (!@parent.check_data(self, true))
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
      if (!@parent.check_data(self, true))
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
      if (!@parent.check_data(self, true))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if (!(index).equal?(0) && !(0 <= index && index < @parent.attr_column_count))
        return Rectangle.new(0, 0, 0, 0)
      end
      rect = Rect.new
      column_id = (@parent.attr_column_count).equal?(0) ? @parent.attr_column_id : @parent.attr_columns[index].attr_id
      if (!(OS._get_data_browser_item_part_bounds(@parent.attr_handle, @id, column_id, OS.attr_k_data_browser_property_enclosing_part, rect)).equal?(OS.attr_no_err))
        return Rectangle.new(0, 0, 0, 0)
      end
      disclosure = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_data_browser_list_view_disclosure_column(@parent.attr_handle, disclosure, Array.typed(::Java::Boolean).new(1) { false })
      image_width = 0
      margin = (index).equal?(0) ? 0 : @parent.get_inset_width(column_id, false) / 2
      image = get_image(index)
      if (!(image).nil?)
        bounds = image.get_bounds
        image_width = bounds.attr_width + @parent.get_gap
      end
      x = 0
      y = 0
      width = 0
      height = 0
      if (OS::VERSION >= 0x1040 && !(disclosure[0]).equal?(column_id))
        if (@parent.get_lines_visible)
          rect.attr_left += Tree::GRID_WIDTH
          rect.attr_top += Tree::GRID_WIDTH
        end
        x = rect.attr_left + image_width + margin
        y = rect.attr_top
        width = Math.max(0, rect.attr_right - rect.attr_left - image_width - margin * 2)
        height = rect.attr_bottom - rect.attr_top
      else
        rect2 = Rect.new
        if (!(OS._get_data_browser_item_part_bounds(@parent.attr_handle, @id, column_id, OS.attr_k_data_browser_property_content_part, rect2)).equal?(OS.attr_no_err))
          return Rectangle.new(0, 0, 0, 0)
        end
        x = rect2.attr_left + image_width + margin
        y = rect2.attr_top
        width = Math.max(0, rect.attr_right - rect2.attr_left + 1 - image_width - margin * 2)
        height = rect2.attr_bottom - rect2.attr_top + 1
      end
      return Rectangle.new(x, y, width, height)
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
      return @parent.__index_of(self, item)
    end
    
    typesig { [::Java::Int] }
    def redraw(property_id)
      if (@parent.attr_ignore_redraw)
        return
      end
      if (!(@parent.attr_draw_count).equal?(0) && !(property_id).equal?(Tree::CHECK_COLUMN_ID))
        return
      end
      parent_handle = @parent.attr_handle
      parent_id = (@parent_item).nil? ? OS.attr_k_data_browser_no_item : @parent_item.attr_id
      # Feature in Carbon.  Calling UpdateDataBrowserItems with kDataBrowserNoItem
      # updates all columns associated with the items in the items array.  This is
      # much slower than updating the items array for a specific column.  The fix
      # is to give the specific column ids instead.
      callbacks = DataBrowserCallbacks.new
      OS._get_data_browser_callbacks(@parent.attr_handle, callbacks)
      callbacks.attr_v1_item_compare_callback = 0
      OS._set_data_browser_callbacks(@parent.attr_handle, callbacks)
      ids = Array.typed(::Java::Int).new([@id])
      if ((property_id).equal?(OS.attr_k_data_browser_no_item))
        if (!((@parent.attr_style & SWT::CHECK)).equal?(0))
          OS._update_data_browser_items(parent_handle, parent_id, ids.attr_length, ids, OS.attr_k_data_browser_item_no_property, Tree::CHECK_COLUMN_ID)
        end
        if ((@parent.attr_column_count).equal?(0))
          OS._update_data_browser_items(parent_handle, parent_id, ids.attr_length, ids, OS.attr_k_data_browser_item_no_property, @parent.attr_column_id)
        else
          i = 0
          while i < @parent.attr_column_count
            OS._update_data_browser_items(parent_handle, parent_id, ids.attr_length, ids, OS.attr_k_data_browser_item_no_property, @parent.attr_columns[i].attr_id)
            i += 1
          end
        end
      else
        OS._update_data_browser_items(parent_handle, parent_id, ids.attr_length, ids, OS.attr_k_data_browser_item_no_property, property_id)
      end
      callbacks.attr_v1_item_compare_callback = self.attr_display.attr_item_compare_proc
      OS._set_data_browser_callbacks(@parent.attr_handle, callbacks)
      # Bug in the Macintosh. When the height of the row is smaller than the
      # check box, the tail of the check mark draws outside of the item part
      # bounds. This means it will not be redrawn when the item is unckeched.
      # The fix is to redraw the area.
      if ((property_id).equal?(Tree::CHECK_COLUMN_ID))
        rect = Rect.new
        if ((OS._get_data_browser_item_part_bounds(parent_handle, @id, property_id, OS.attr_k_data_browser_property_enclosing_part, rect)).equal?(OS.attr_no_err))
          x = rect.attr_left
          y = rect.attr_top - 1
          width = rect.attr_right - rect.attr_left
          height = 1
          redraw_widget(parent_handle, x, y, width, height, false)
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      if (destroy)
        @parent.release_items(@child_ids)
      end
      super(destroy)
    end
    
    typesig { [] }
    def release_handle
      super
      @parent_item = nil
      @id = 0
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
      i = @item_count - 1
      while i >= 0
        item = @parent.__get_item(@child_ids[i], false)
        if (!(item).nil? && !item.is_disposed)
          item.dispose
        end
        i -= 1
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
      redraw(OS.attr_k_data_browser_no_item)
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
      column_id = (@parent.attr_column_count).equal?(0) ? @parent.attr_column_id : @parent.attr_columns[index].attr_id
      redraw(column_id)
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
      set_checked(checked, false)
    end
    
    typesig { [::Java::Boolean, ::Java::Boolean] }
    def set_checked(checked, notify)
      @checked = checked
      @cached = true
      redraw(Tree::CHECK_COLUMN_ID)
      if (notify)
        event = Event.new
        event.attr_item = self
        event.attr_detail = SWT::CHECK
        @parent.post_event(SWT::Selection, event)
      end
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
      if ((expanded).equal?(get_expanded))
        return
      end
      @parent.attr_ignore_expand = true
      if (expanded)
        OS._open_data_browser_container(@parent.attr_handle, @id)
      else
        OS._close_data_browser_container(@parent.attr_handle, @id)
      end
      @parent.attr_ignore_expand = false
      @cached = true
      if (expanded)
        @parent.set_scroll_width(false, @child_ids, false)
      else
        @parent.set_scroll_width(true)
        @parent.fix_scroll_bar
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
      @cached = true
      redraw(OS.attr_k_data_browser_no_item)
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
      @cached = true
      column_id = (@parent.attr_column_count).equal?(0) ? @parent.attr_column_id : @parent.attr_columns[index].attr_id
      redraw(column_id)
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
      redraw(OS.attr_k_data_browser_no_item)
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
      column_id = (@parent.attr_column_count).equal?(0) ? @parent.attr_column_id : @parent.attr_columns[index].attr_id
      redraw(column_id)
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
      redraw(Tree::CHECK_COLUMN_ID)
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
        @parent.set_item_height(image)
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
        column_id = (@parent.attr_column_count).equal?(0) ? @parent.attr_column_id : @parent.attr_columns[index].attr_id
        redraw(column_id)
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
        column_id = (@parent.attr_column_count).equal?(0) ? @parent.attr_column_id : @parent.attr_columns[index].attr_id
        redraw(column_id)
      end
    end
    
    typesig { [String] }
    def set_text(string)
      check_widget
      set_text(0, string)
    end
    
    private
    alias_method :initialize__tree_item, :initialize
  end
  
end
