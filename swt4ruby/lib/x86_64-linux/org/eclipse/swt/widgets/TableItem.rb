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
  module TableItemImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class represent a selectable user interface object
  # that represents an item in a table.
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
  # @see <a href="http://www.eclipse.org/swt/snippets/#table">Table, TableItem, TableColumn snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class TableItem < TableItemImports.const_get :Item
    include_class_members TableItemImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
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
    
    attr_accessor :cached
    alias_method :attr_cached, :cached
    undef_method :cached
    alias_method :attr_cached=, :cached=
    undef_method :cached=
    
    attr_accessor :grayed
    alias_method :attr_grayed, :grayed
    undef_method :grayed
    alias_method :attr_grayed=, :grayed=
    undef_method :grayed=
    
    typesig { [Table, ::Java::Int, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Table</code>), a style value
    # describing its behavior and appearance, and the index
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
      initialize__table_item(parent, style, index, true)
    end
    
    typesig { [Table, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Table</code>) and a style value
    # describing its behavior and appearance. The item is added
    # to the end of the items maintained by its parent.
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
    # @see SWT
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      initialize__table_item(parent, style, check_null(parent).get_item_count, true)
    end
    
    typesig { [Table, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def initialize(parent, style, index, create)
      @parent = nil
      @font = nil
      @cell_font = nil
      @cached = false
      @grayed = false
      super(parent, style)
      @parent = parent
      if (create)
        parent.create_item(self, index)
      else
        self.attr_handle = OS.g_malloc(OS._gtk_tree_iter_sizeof)
        OS.gtk_tree_model_iter_nth_child(parent.attr_model_handle, self.attr_handle, 0, index)
      end
    end
    
    class_module.module_eval {
      typesig { [Table] }
      def check_null(control)
        if ((control).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        return control
      end
    }
    
    typesig { [] }
    def __get_background
      # int
      # int
      ptr = Array.typed(::Java::Long).new(1) { 0 }
      OS.gtk_tree_model_get(@parent.attr_model_handle, self.attr_handle, Table::BACKGROUND_COLUMN, ptr, -1)
      if ((ptr[0]).equal?(0))
        return @parent.get_background
      end
      gdk_color = GdkColor.new
      OS.memmove(gdk_color, ptr[0], GdkColor.attr_sizeof)
      return Color.gtk_new(self.attr_display, gdk_color)
    end
    
    typesig { [::Java::Int] }
    def __get_background(index)
      count = Math.max(1, @parent.attr_column_count)
      if (0 > index || index > count - 1)
        return __get_background
      end
      # int
      # int
      ptr = Array.typed(::Java::Long).new(1) { 0 }
      model_index = (@parent.attr_column_count).equal?(0) ? Table::FIRST_COLUMN : @parent.attr_columns[index].attr_model_index
      OS.gtk_tree_model_get(@parent.attr_model_handle, self.attr_handle, model_index + Table::CELL_BACKGROUND, ptr, -1)
      if ((ptr[0]).equal?(0))
        return __get_background
      end
      gdk_color = GdkColor.new
      OS.memmove(gdk_color, ptr[0], GdkColor.attr_sizeof)
      return Color.gtk_new(self.attr_display, gdk_color)
    end
    
    typesig { [] }
    def __get_checked
      # int
      # int
      ptr = Array.typed(::Java::Long).new(1) { 0 }
      OS.gtk_tree_model_get(@parent.attr_model_handle, self.attr_handle, Table::CHECKED_COLUMN, ptr, -1)
      return !(ptr[0]).equal?(0)
    end
    
    typesig { [] }
    def __get_foreground
      # int
      # int
      ptr = Array.typed(::Java::Long).new(1) { 0 }
      OS.gtk_tree_model_get(@parent.attr_model_handle, self.attr_handle, Table::FOREGROUND_COLUMN, ptr, -1)
      if ((ptr[0]).equal?(0))
        return @parent.get_foreground
      end
      gdk_color = GdkColor.new
      OS.memmove(gdk_color, ptr[0], GdkColor.attr_sizeof)
      return Color.gtk_new(self.attr_display, gdk_color)
    end
    
    typesig { [::Java::Int] }
    def __get_foreground(index)
      count = Math.max(1, @parent.attr_column_count)
      if (0 > index || index > count - 1)
        return __get_foreground
      end
      # int
      # int
      ptr = Array.typed(::Java::Long).new(1) { 0 }
      model_index = (@parent.attr_column_count).equal?(0) ? Table::FIRST_COLUMN : @parent.attr_columns[index].attr_model_index
      OS.gtk_tree_model_get(@parent.attr_model_handle, self.attr_handle, model_index + Table::CELL_FOREGROUND, ptr, -1)
      if ((ptr[0]).equal?(0))
        return __get_foreground
      end
      gdk_color = GdkColor.new
      OS.memmove(gdk_color, ptr[0], GdkColor.attr_sizeof)
      return Color.gtk_new(self.attr_display, gdk_color)
    end
    
    typesig { [::Java::Int] }
    def __get_image(index)
      count = Math.max(1, @parent.get_column_count)
      if (0 > index || index > count - 1)
        return nil
      end
      # int
      # int
      ptr = Array.typed(::Java::Long).new(1) { 0 }
      model_index = (@parent.attr_column_count).equal?(0) ? Table::FIRST_COLUMN : @parent.attr_columns[index].attr_model_index
      OS.gtk_tree_model_get(@parent.attr_model_handle, self.attr_handle, model_index + Table::CELL_PIXBUF, ptr, -1)
      if ((ptr[0]).equal?(0))
        return nil
      end
      image_list = @parent.attr_image_list
      image_index = image_list.index_of(ptr[0])
      if ((image_index).equal?(-1))
        return nil
      end
      return image_list.get(image_index)
    end
    
    typesig { [::Java::Int] }
    def __get_text(index)
      count = Math.max(1, @parent.get_column_count)
      if (0 > index || index > count - 1)
        return ""
      end
      # int
      # int
      ptr = Array.typed(::Java::Long).new(1) { 0 }
      model_index = (@parent.attr_column_count).equal?(0) ? Table::FIRST_COLUMN : @parent.attr_columns[index].attr_model_index
      OS.gtk_tree_model_get(@parent.attr_model_handle, self.attr_handle, model_index + Table::CELL_TEXT, ptr, -1)
      if ((ptr[0]).equal?(0))
        return ""
      end
      length = OS.strlen(ptr[0])
      buffer = Array.typed(::Java::Byte).new(length) { 0 }
      OS.memmove(buffer, ptr[0], length)
      OS.g_free(ptr[0])
      return String.new(Converter.mbcs_to_wcs(nil, buffer))
    end
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [] }
    def clear
      if ((@parent.attr_current_item).equal?(self))
        return
      end
      if (@cached || ((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        column_count = OS.gtk_tree_model_get_n_columns(@parent.attr_model_handle)
        i = 0
        while i < column_count
          OS.gtk_list_store_set(@parent.attr_model_handle, self.attr_handle, i, 0, -1)
          i += 1
        end
        # Bug in GTK.  When using fixed-height-mode,
        # row changes do not cause the row to be repainted.  The fix is to
        # invalidate the row when it is cleared.
        if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
          if (OS::GTK_VERSION >= OS._version(2, 3, 2) && OS::GTK_VERSION < OS._version(2, 6, 3))
            redraw
          end
        end
      end
      @cached = false
      @font = nil
      @cell_font = nil
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
      return __get_background
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
    # 
    # @since 3.2
    def get_bounds
      # TODO fully test on early and later versions of GTK
      # shifted a bit too far right on later versions of GTK - however, old Tree also had this problem
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      # int
      parent_handle = @parent.attr_handle
      # int
      column = OS.gtk_tree_view_get_column(parent_handle, 0)
      if ((column).equal?(0))
        return Rectangle.new(0, 0, 0, 0)
      end
      # int
      text_renderer = @parent.get_text_renderer(column)
      # int
      pixbuf_renderer = @parent.get_pixbuf_renderer(column)
      if ((text_renderer).equal?(0) || (pixbuf_renderer).equal?(0))
        return Rectangle.new(0, 0, 0, 0)
      end
      # int
      path = OS.gtk_tree_model_get_path(@parent.attr_model_handle, self.attr_handle)
      OS.gtk_widget_realize(parent_handle)
      is_expander = OS.gtk_tree_model_iter_n_children(@parent.attr_model_handle, self.attr_handle) > 0
      is_expanded = OS.gtk_tree_view_row_expanded(parent_handle, path)
      OS.gtk_tree_view_column_cell_set_cell_data(column, @parent.attr_model_handle, self.attr_handle, is_expander, is_expanded)
      rect = GdkRectangle.new
      OS.gtk_tree_view_get_cell_area(parent_handle, path, column, rect)
      OS.gtk_tree_path_free(path)
      if (!((@parent.get_style & SWT::MIRRORED)).equal?(0))
        rect.attr_x = @parent.get_client_width - rect.attr_width - rect.attr_x
      end
      right = rect.attr_x + rect.attr_width
      x = Array.typed(::Java::Int).new(1) { 0 }
      w = Array.typed(::Java::Int).new(1) { 0 }
      @parent.attr_ignore_size = true
      OS.gtk_cell_renderer_get_size(text_renderer, parent_handle, nil, nil, nil, w, nil)
      @parent.attr_ignore_size = false
      rect.attr_width = w[0]
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      if ((OS.gtk_tree_view_get_expander_column(parent_handle)).equal?(column))
        OS.gtk_widget_style_get(parent_handle, OS.attr_expander_size, buffer, 0)
        rect.attr_x += buffer[0] + TreeItem::EXPANDER_EXTRA_PADDING
      end
      OS.gtk_widget_style_get(parent_handle, OS.attr_horizontal_separator, buffer, 0)
      horizontal_separator = buffer[0]
      rect.attr_x += horizontal_separator
      if (OS::GTK_VERSION >= OS._version(2, 1, 3))
        OS.gtk_tree_view_column_cell_get_position(column, text_renderer, x, nil)
        rect.attr_x += x[0]
      else
        if (!((@parent.attr_style & SWT::CHECK)).equal?(0))
          OS.gtk_cell_renderer_get_size(@parent.attr_check_renderer, parent_handle, nil, nil, nil, w, nil)
          rect.attr_x += w[0] + horizontal_separator
        end
        OS.gtk_cell_renderer_get_size(pixbuf_renderer, parent_handle, nil, nil, nil, w, nil)
        rect.attr_x += w[0] + horizontal_separator
      end
      if (@parent.attr_column_count > 0)
        if (rect.attr_x + rect.attr_width > right)
          rect.attr_width = Math.max(0, right - rect.attr_x)
        end
      end
      width = OS.gtk_tree_view_column_get_visible(column) ? rect.attr_width + 1 : 0
      return Rectangle.new(rect.attr_x, rect.attr_y, width, rect.attr_height + 1)
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
    # @since 3.0
    def get_background(index)
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return __get_background(index)
    end
    
    typesig { [::Java::Int] }
    # Returns a rectangle describing the receiver's size and location
    # relative to its parent at a column in the table.
    # 
    # @param index the index that specifies the column
    # @return the receiver's bounding column rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_bounds(index)
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      # int
      parent_handle = @parent.attr_handle
      # int
      column = 0
      if (index >= 0 && index < @parent.attr_column_count)
        column = @parent.attr_columns[index].attr_handle
      else
        column = OS.gtk_tree_view_get_column(parent_handle, index)
      end
      if ((column).equal?(0))
        return Rectangle.new(0, 0, 0, 0)
      end
      # int
      path = OS.gtk_tree_model_get_path(@parent.attr_model_handle, self.attr_handle)
      OS.gtk_widget_realize(parent_handle)
      rect = GdkRectangle.new
      OS.gtk_tree_view_get_cell_area(parent_handle, path, column, rect)
      OS.gtk_tree_path_free(path)
      if (!((@parent.get_style & SWT::MIRRORED)).equal?(0))
        rect.attr_x = @parent.get_client_width - rect.attr_width - rect.attr_x
      end
      if ((index).equal?(0) && !((@parent.attr_style & SWT::CHECK)).equal?(0))
        if (OS::GTK_VERSION >= OS._version(2, 1, 3))
          x = Array.typed(::Java::Int).new(1) { 0 }
          w = Array.typed(::Java::Int).new(1) { 0 }
          OS.gtk_tree_view_column_cell_get_position(column, @parent.attr_check_renderer, x, w)
          rect.attr_x += x[0] + w[0]
          rect.attr_width -= x[0] + w[0]
        else
          w = Array.typed(::Java::Int).new(1) { 0 }
          OS.gtk_cell_renderer_get_size(@parent.attr_check_renderer, parent_handle, nil, nil, nil, w, nil)
          buffer = Array.typed(::Java::Int).new(1) { 0 }
          OS.gtk_widget_style_get(parent_handle, OS.attr_horizontal_separator, buffer, 0)
          rect.attr_x += w[0] + buffer[0]
          rect.attr_width -= w[0] + buffer[0]
        end
      end
      width = OS.gtk_tree_view_column_get_visible(column) ? rect.attr_width + 1 : 0
      return Rectangle.new(rect.attr_x, rect.attr_y, width, rect.attr_height + 1)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is checked,
    # and false otherwise.  When the parent does not have
    # the <code>CHECK</code> style, return false.
    # 
    # @return the checked state of the checkbox
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
      return __get_checked
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
    # @since 3.0
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
      return __get_foreground
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
    # @since 3.0
    def get_foreground(index)
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return __get_foreground(index)
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
      return get_image(0)
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
    def get_image(index)
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return __get_image(index)
    end
    
    typesig { [::Java::Int] }
    # Returns a rectangle describing the size and location
    # relative to its parent of an image at a column in the
    # table.  An empty rectangle is returned if index exceeds
    # the index of the table's last column.
    # 
    # @param index the index that specifies the column
    # @return the receiver's bounding image rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_image_bounds(index)
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      # int
      parent_handle = @parent.attr_handle
      # int
      column = 0
      if (index >= 0 && index < @parent.attr_column_count)
        column = @parent.attr_columns[index].attr_handle
      else
        column = OS.gtk_tree_view_get_column(parent_handle, index)
      end
      if ((column).equal?(0))
        return Rectangle.new(0, 0, 0, 0)
      end
      # int
      pixbuf_renderer = @parent.get_pixbuf_renderer(column)
      if ((pixbuf_renderer).equal?(0))
        return Rectangle.new(0, 0, 0, 0)
      end
      rect = GdkRectangle.new
      # int
      path = OS.gtk_tree_model_get_path(@parent.attr_model_handle, self.attr_handle)
      OS.gtk_widget_realize(parent_handle)
      OS.gtk_tree_view_get_cell_area(parent_handle, path, column, rect)
      OS.gtk_tree_path_free(path)
      if (!((@parent.get_style & SWT::MIRRORED)).equal?(0))
        rect.attr_x = @parent.get_client_width - rect.attr_width - rect.attr_x
      end
      # The OS call gtk_cell_renderer_get_size() provides the width of image to be drawn
      # by the cell renderer.  If there is no image in the cell, the width is zero.  If the table contains
      # images of varying widths, gtk_cell_renderer_get_size() will return the width of the image,
      # not the width of the area in which the image is drawn.
      # New API was added in GTK 2.1.3 for determining the full width of the renderer area.
      # For earlier versions of GTK, the result is only correct if all rows have images of the same
      # width.
      if (OS::GTK_VERSION >= OS._version(2, 1, 3))
        x = Array.typed(::Java::Int).new(1) { 0 }
        w = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_tree_view_column_cell_get_position(column, pixbuf_renderer, x, w)
        rect.attr_x += x[0]
        rect.attr_width = w[0]
      else
        w = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_tree_view_column_cell_set_cell_data(column, @parent.attr_model_handle, self.attr_handle, false, false)
        OS.gtk_cell_renderer_get_size(pixbuf_renderer, parent_handle, nil, nil, nil, w, nil)
        rect.attr_width = w[0]
      end
      width = OS.gtk_tree_view_column_get_visible(column) ? rect.attr_width : 0
      return Rectangle.new(rect.attr_x, rect.attr_y, width, rect.attr_height + 1)
    end
    
    typesig { [] }
    # Gets the image indent.
    # 
    # @return the indent
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_image_indent
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      # Image indent is not supported on GTK
      return 0
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
    # Returns the receiver's parent, which must be a <code>Table</code>.
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
    def get_text
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return get_text(0)
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
    def get_text(index)
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return __get_text(index)
    end
    
    typesig { [::Java::Int] }
    # Returns a rectangle describing the size and location
    # relative to its parent of the text at a column in the
    # table.  An empty rectangle is returned if index exceeds
    # the index of the table's last column.
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
      count = Math.max(1, @parent.get_column_count)
      if (0 > index || index > count - 1)
        return Rectangle.new(0, 0, 0, 0)
      end
      # TODO fully test on early and later versions of GTK
      # shifted a bit too far right on later versions of GTK - however, old Tree also had this problem
      # int
      parent_handle = @parent.attr_handle
      # int
      column = 0
      if (index >= 0 && index < @parent.attr_column_count)
        column = @parent.attr_columns[index].attr_handle
      else
        column = OS.gtk_tree_view_get_column(parent_handle, index)
      end
      if ((column).equal?(0))
        return Rectangle.new(0, 0, 0, 0)
      end
      # int
      text_renderer = @parent.get_text_renderer(column)
      # int
      pixbuf_renderer = @parent.get_pixbuf_renderer(column)
      if ((text_renderer).equal?(0) || (pixbuf_renderer).equal?(0))
        return Rectangle.new(0, 0, 0, 0)
      end
      # int
      path = OS.gtk_tree_model_get_path(@parent.attr_model_handle, self.attr_handle)
      OS.gtk_widget_realize(parent_handle)
      is_expander = OS.gtk_tree_model_iter_n_children(@parent.attr_model_handle, self.attr_handle) > 0
      is_expanded = OS.gtk_tree_view_row_expanded(parent_handle, path)
      OS.gtk_tree_view_column_cell_set_cell_data(column, @parent.attr_model_handle, self.attr_handle, is_expander, is_expanded)
      rect = GdkRectangle.new
      OS.gtk_tree_view_get_cell_area(parent_handle, path, column, rect)
      OS.gtk_tree_path_free(path)
      if (!((@parent.get_style & SWT::MIRRORED)).equal?(0))
        rect.attr_x = @parent.get_client_width - rect.attr_width - rect.attr_x
      end
      right = rect.attr_x + rect.attr_width
      x = Array.typed(::Java::Int).new(1) { 0 }
      w = Array.typed(::Java::Int).new(1) { 0 }
      @parent.attr_ignore_size = true
      OS.gtk_cell_renderer_get_size(text_renderer, parent_handle, nil, nil, nil, w, nil)
      @parent.attr_ignore_size = false
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      if ((OS.gtk_tree_view_get_expander_column(parent_handle)).equal?(column))
        OS.gtk_widget_style_get(parent_handle, OS.attr_expander_size, buffer, 0)
        rect.attr_x += buffer[0] + TreeItem::EXPANDER_EXTRA_PADDING
      end
      OS.gtk_widget_style_get(parent_handle, OS.attr_horizontal_separator, buffer, 0)
      horizontal_separator = buffer[0]
      rect.attr_x += horizontal_separator
      if (OS::GTK_VERSION >= OS._version(2, 1, 3))
        OS.gtk_tree_view_column_cell_get_position(column, text_renderer, x, nil)
        rect.attr_x += x[0]
      else
        if (!((@parent.attr_style & SWT::CHECK)).equal?(0))
          OS.gtk_cell_renderer_get_size(@parent.attr_check_renderer, parent_handle, nil, nil, nil, w, nil)
          rect.attr_x += w[0] + horizontal_separator
        end
        OS.gtk_cell_renderer_get_size(pixbuf_renderer, parent_handle, nil, nil, nil, w, nil)
        rect.attr_x += w[0] + horizontal_separator
      end
      if (@parent.attr_column_count > 0)
        if (rect.attr_x + rect.attr_width > right)
          rect.attr_width = Math.max(0, right - rect.attr_x)
        end
      end
      width = OS.gtk_tree_view_column_get_visible(column) ? rect.attr_width + 1 : 0
      return Rectangle.new(rect.attr_x, rect.attr_y, width, rect.attr_height + 1)
    end
    
    typesig { [] }
    def redraw
      if (!((OS._gtk_widget_flags(@parent.attr_handle) & OS::GTK_REALIZED)).equal?(0))
        # int
        parent_handle = @parent.attr_handle
        # int
        path = OS.gtk_tree_model_get_path(@parent.attr_model_handle, self.attr_handle)
        rect = GdkRectangle.new
        OS.gtk_tree_view_get_cell_area(parent_handle, path, 0, rect)
        OS.gtk_tree_path_free(path)
        # int
        window = OS.gtk_tree_view_get_bin_window(parent_handle)
        rect.attr_x = 0
        w = Array.typed(::Java::Int).new(1) { 0 }
        h = Array.typed(::Java::Int).new(1) { 0 }
        OS.gdk_drawable_get_size(window, w, h)
        rect.attr_width = w[0]
        OS.gdk_window_invalidate_rect(window, rect, false)
      end
    end
    
    typesig { [] }
    def release_handle
      if (!(self.attr_handle).equal?(0))
        OS.g_free(self.attr_handle)
      end
      self.attr_handle = 0
      super
      @parent = nil
    end
    
    typesig { [] }
    def release_widget
      super
      @font = nil
      @cell_font = nil
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
      if ((__get_background == color))
        return
      end
      gdk_color = !(color).nil? ? color.attr_handle : nil
      OS.gtk_list_store_set(@parent.attr_model_handle, self.attr_handle, Table::BACKGROUND_COLUMN, gdk_color, -1)
      # Bug in GTK.  When using fixed-height-mode,
      # row changes do not cause the row to be repainted.  The fix is to
      # invalidate the row when it is cleared.
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        if (OS::GTK_VERSION >= OS._version(2, 3, 2) && OS::GTK_VERSION < OS._version(2, 6, 3))
          redraw
        end
      end
      @cached = true
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
    # @since 3.0
    def set_background(index, color)
      check_widget
      if (!(color).nil? && color.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((__get_background(index) == color))
        return
      end
      count = Math.max(1, @parent.get_column_count)
      if (0 > index || index > count - 1)
        return
      end
      model_index = (@parent.attr_column_count).equal?(0) ? Table::FIRST_COLUMN : @parent.attr_columns[index].attr_model_index
      gdk_color = !(color).nil? ? color.attr_handle : nil
      OS.gtk_list_store_set(@parent.attr_model_handle, self.attr_handle, model_index + Table::CELL_BACKGROUND, gdk_color, -1)
      # Bug in GTK.  When using fixed-height-mode,
      # row changes do not cause the row to be repainted.  The fix is to
      # invalidate the row when it is cleared.
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        if (OS::GTK_VERSION >= OS._version(2, 3, 2) && OS::GTK_VERSION < OS._version(2, 6, 3))
          redraw
        end
      end
      @cached = true
      if (!(color).nil?)
        custom_draw = ((@parent.attr_column_count).equal?(0)) ? @parent.attr_first_custom_draw : @parent.attr_columns[index].attr_custom_draw
        if (!custom_draw)
          if (((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
            # int
            parent_handle = @parent.attr_handle
            # int
            column = 0
            if (@parent.attr_column_count > 0)
              column = @parent.attr_columns[index].attr_handle
            else
              column = OS.gtk_tree_view_get_column(parent_handle, index)
            end
            if ((column).equal?(0))
              return
            end
            # int
            text_renderer = @parent.get_text_renderer(column)
            # int
            image_renderer = @parent.get_pixbuf_renderer(column)
            OS.gtk_tree_view_column_set_cell_data_func(column, text_renderer, self.attr_display.attr_cell_data_proc, parent_handle, 0)
            OS.gtk_tree_view_column_set_cell_data_func(column, image_renderer, self.attr_display.attr_cell_data_proc, parent_handle, 0)
          end
          if ((@parent.attr_column_count).equal?(0))
            @parent.attr_first_custom_draw = true
          else
            @parent.attr_columns[index].attr_custom_draw = true
          end
        end
      end
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
      if (((@parent.attr_style & SWT::CHECK)).equal?(0))
        return
      end
      if ((__get_checked).equal?(checked))
        return
      end
      OS.gtk_list_store_set(@parent.attr_model_handle, self.attr_handle, Table::CHECKED_COLUMN, checked, -1)
      # GTK+'s "inconsistent" state does not match SWT's concept of grayed.  To
      # show checked+grayed differently from unchecked+grayed, we must toggle the
      # grayed state on check and uncheck.
      OS.gtk_list_store_set(@parent.attr_model_handle, self.attr_handle, Table::GRAYED_COLUMN, !checked ? false : @grayed, -1)
      @cached = true
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
      # int
      font_handle = !(font).nil? ? font.attr_handle : 0
      OS.gtk_list_store_set(@parent.attr_model_handle, self.attr_handle, Table::FONT_COLUMN, font_handle, -1)
      # Bug in GTK.  When using fixed-height-mode,
      # row changes do not cause the row to be repainted.  The fix is to
      # invalidate the row when it is cleared.
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        if (OS::GTK_VERSION >= OS._version(2, 3, 2) && OS::GTK_VERSION < OS._version(2, 6, 3))
          redraw
        end
      end
      @cached = true
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
    # @since 3.0
    def set_font(index, font)
      check_widget
      if (!(font).nil? && font.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      count = Math.max(1, @parent.get_column_count)
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
      model_index = (@parent.attr_column_count).equal?(0) ? Table::FIRST_COLUMN : @parent.attr_columns[index].attr_model_index
      # int
      font_handle = !(font).nil? ? font.attr_handle : 0
      OS.gtk_list_store_set(@parent.attr_model_handle, self.attr_handle, model_index + Table::CELL_FONT, font_handle, -1)
      # Bug in GTK.  When using fixed-height-mode,
      # row changes do not cause the row to be repainted.  The fix is to
      # invalidate the row when it is cleared.
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        if (OS::GTK_VERSION >= OS._version(2, 3, 2) && OS::GTK_VERSION < OS._version(2, 6, 3))
          redraw
        end
      end
      @cached = true
      if (!(font).nil?)
        custom_draw = ((@parent.attr_column_count).equal?(0)) ? @parent.attr_first_custom_draw : @parent.attr_columns[index].attr_custom_draw
        if (!custom_draw)
          if (((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
            # int
            parent_handle = @parent.attr_handle
            # int
            column = 0
            if (@parent.attr_column_count > 0)
              column = @parent.attr_columns[index].attr_handle
            else
              column = OS.gtk_tree_view_get_column(parent_handle, index)
            end
            if ((column).equal?(0))
              return
            end
            # int
            text_renderer = @parent.get_text_renderer(column)
            # int
            image_renderer = @parent.get_pixbuf_renderer(column)
            OS.gtk_tree_view_column_set_cell_data_func(column, text_renderer, self.attr_display.attr_cell_data_proc, parent_handle, 0)
            OS.gtk_tree_view_column_set_cell_data_func(column, image_renderer, self.attr_display.attr_cell_data_proc, parent_handle, 0)
          end
          if ((@parent.attr_column_count).equal?(0))
            @parent.attr_first_custom_draw = true
          else
            @parent.attr_columns[index].attr_custom_draw = true
          end
        end
      end
    end
    
    typesig { [Color] }
    # Sets the receiver's foreground color to the color specified
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
    def set_foreground(color)
      check_widget
      if (!(color).nil? && color.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((__get_foreground == color))
        return
      end
      gdk_color = !(color).nil? ? color.attr_handle : nil
      OS.gtk_list_store_set(@parent.attr_model_handle, self.attr_handle, Table::FOREGROUND_COLUMN, gdk_color, -1)
      # Bug in GTK.  When using fixed-height-mode,
      # row changes do not cause the row to be repainted.  The fix is to
      # invalidate the row when it is cleared.
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        if (OS::GTK_VERSION >= OS._version(2, 3, 2) && OS::GTK_VERSION < OS._version(2, 6, 3))
          redraw
        end
      end
      @cached = true
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
    # @since 3.0
    def set_foreground(index, color)
      check_widget
      if (!(color).nil? && color.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((__get_foreground(index) == color))
        return
      end
      count = Math.max(1, @parent.get_column_count)
      if (0 > index || index > count - 1)
        return
      end
      model_index = (@parent.attr_column_count).equal?(0) ? Table::FIRST_COLUMN : @parent.attr_columns[index].attr_model_index
      gdk_color = !(color).nil? ? color.attr_handle : nil
      OS.gtk_list_store_set(@parent.attr_model_handle, self.attr_handle, model_index + Table::CELL_FOREGROUND, gdk_color, -1)
      # Bug in GTK.  When using fixed-height-mode,
      # row changes do not cause the row to be repainted.  The fix is to
      # invalidate the row when it is cleared.
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        if (OS::GTK_VERSION >= OS._version(2, 3, 2) && OS::GTK_VERSION < OS._version(2, 6, 3))
          redraw
        end
      end
      @cached = true
      if (!(color).nil?)
        custom_draw = ((@parent.attr_column_count).equal?(0)) ? @parent.attr_first_custom_draw : @parent.attr_columns[index].attr_custom_draw
        if (!custom_draw)
          if (((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
            # int
            parent_handle = @parent.attr_handle
            # int
            column = 0
            if (@parent.attr_column_count > 0)
              column = @parent.attr_columns[index].attr_handle
            else
              column = OS.gtk_tree_view_get_column(parent_handle, index)
            end
            if ((column).equal?(0))
              return
            end
            # int
            text_renderer = @parent.get_text_renderer(column)
            # int
            image_renderer = @parent.get_pixbuf_renderer(column)
            OS.gtk_tree_view_column_set_cell_data_func(column, text_renderer, self.attr_display.attr_cell_data_proc, parent_handle, 0)
            OS.gtk_tree_view_column_set_cell_data_func(column, image_renderer, self.attr_display.attr_cell_data_proc, parent_handle, 0)
          end
          if ((@parent.attr_column_count).equal?(0))
            @parent.attr_first_custom_draw = true
          else
            @parent.attr_columns[index].attr_custom_draw = true
          end
        end
      end
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
    def set_grayed(grayed)
      check_widget
      if (((@parent.attr_style & SWT::CHECK)).equal?(0))
        return
      end
      if ((@grayed).equal?(grayed))
        return
      end
      @grayed = grayed
      # GTK+'s "inconsistent" state does not match SWT's concept of grayed.
      # Render checked+grayed as "inconsistent", unchecked+grayed as blank.
      # 
      # int
      # int
      ptr = Array.typed(::Java::Long).new(1) { 0 }
      OS.gtk_tree_model_get(@parent.attr_model_handle, self.attr_handle, Table::CHECKED_COLUMN, ptr, -1)
      OS.gtk_list_store_set(@parent.attr_model_handle, self.attr_handle, Table::GRAYED_COLUMN, (ptr[0]).equal?(0) ? false : grayed, -1)
      @cached = true
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
    def set_image(index, image)
      check_widget
      if (!(image).nil? && image.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(image).nil? && (image.attr_type).equal?(SWT::ICON))
        if ((image == __get_image(index)))
          return
        end
      end
      count = Math.max(1, @parent.get_column_count)
      if (0 > index || index > count - 1)
        return
      end
      # int
      pixbuf = 0
      if (!(image).nil?)
        image_list = @parent.attr_image_list
        if ((image_list).nil?)
          image_list = @parent.attr_image_list = ImageList.new
        end
        image_index = image_list.index_of(image)
        if ((image_index).equal?(-1))
          image_index = image_list.add(image)
        end
        pixbuf = image_list.get_pixbuf(image_index)
      end
      model_index = (@parent.attr_column_count).equal?(0) ? Table::FIRST_COLUMN : @parent.attr_columns[index].attr_model_index
      OS.gtk_list_store_set(@parent.attr_model_handle, self.attr_handle, model_index + Table::CELL_PIXBUF, pixbuf, -1)
      # Bug in GTK.  When using fixed-height-mode,
      # row changes do not cause the row to be repainted.  The fix is to
      # invalidate the row when it is cleared.
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        if (OS::GTK_VERSION >= OS._version(2, 3, 2) && OS::GTK_VERSION < OS._version(2, 6, 3))
          redraw
        end
      end
      # Bug in GTK.  When in fixed height mode, GTK does not recalculate the cell renderer width
      # when the image is changed in the model.  The fix is to force it to recalculate the width if
      # more space is required.
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0) && (@parent.attr_current_item).nil?)
        if (OS::GTK_VERSION >= OS._version(2, 3, 2))
          if (!(image).nil?)
            # int
            parent_handle = @parent.attr_handle
            # int
            column = OS.gtk_tree_view_get_column(parent_handle, index)
            w = Array.typed(::Java::Int).new(1) { 0 }
            # int
            pixbuf_renderer = @parent.get_pixbuf_renderer(column)
            OS.gtk_tree_view_column_cell_get_position(column, pixbuf_renderer, nil, w)
            if (w[0] < image.get_bounds.attr_width)
              # There is no direct way to clear the cell renderer width so we
              # are relying on the fact that it is done as part of modifying
              # the style.
              # 
              # int
              style = OS.gtk_widget_get_modifier_style(parent_handle)
              @parent.modify_style(parent_handle, style)
            end
          end
        end
      end
      @cached = true
    end
    
    typesig { [Image] }
    def set_image(image)
      check_widget
      set_image(0, image)
    end
    
    typesig { [Array.typed(Image)] }
    # Sets the image for multiple columns in the table.
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
    
    typesig { [::Java::Int] }
    # Sets the indent of the first column's image, expressed in terms of the image's width.
    # 
    # @param indent the new indent
    # 
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @deprecated this functionality is not supported on most platforms
    def set_image_indent(indent)
      check_widget
      if (indent < 0)
        return
      end
      # Image indent is not supported on GTK
      @cached = true
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
    def set_text(index, string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((__get_text(index) == string))
        return
      end
      count = Math.max(1, @parent.get_column_count)
      if (0 > index || index > count - 1)
        return
      end
      buffer = Converter.wcs_to_mbcs(nil, string, true)
      model_index = (@parent.attr_column_count).equal?(0) ? Table::FIRST_COLUMN : @parent.attr_columns[index].attr_model_index
      OS.gtk_list_store_set(@parent.attr_model_handle, self.attr_handle, model_index + Table::CELL_TEXT, buffer, -1)
      # Bug in GTK.  When using fixed-height-mode,
      # row changes do not cause the row to be repainted.  The fix is to
      # invalidate the row when it is cleared.
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        if (OS::GTK_VERSION >= OS._version(2, 3, 2) && OS::GTK_VERSION < OS._version(2, 6, 3))
          redraw
        end
      end
      @cached = true
    end
    
    typesig { [String] }
    def set_text(string)
      check_widget
      set_text(0, string)
    end
    
    typesig { [Array.typed(String)] }
    # Sets the text for multiple columns in the table.
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
    
    private
    alias_method :initialize__table_item, :initialize
  end
  
end
