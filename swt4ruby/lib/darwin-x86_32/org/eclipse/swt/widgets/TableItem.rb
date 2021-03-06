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
  module TableItemImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Cocoa
      include ::Org::Eclipse::Swt
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
  # @noextend This class is not intended to be subclassed by clients.
  class TableItem < TableItemImports.const_get :Item
    include_class_members TableItemImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
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
    
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
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
    
    typesig { [Table, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def initialize(parent, style, index, create)
      @parent = nil
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
      @width = 0
      super(parent, style)
      @width = -1
      @parent = parent
      if (create)
        parent.create_item(self, index)
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
        @parent.send_event___org_eclipse_swt_widgets_table_item_1(SWT::MeasureItem, event)
        if (height < event.attr_height)
          widget.set_row_height(event.attr_height)
          widget.set_needs_display(true)
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
      self.attr_text = ""
      self.attr_image = nil
      @strings = nil
      @images = nil
      @checked = @grayed = @cached = false
      @foreground = @background = nil
      @cell_foreground = @cell_background = nil
      @font = nil
      @cell_font = nil
      @width = -1
    end
    
    typesig { [::Java::Int] }
    def create_string(index)
      text = (index).equal?(0) ? self.attr_text : ((@strings).nil? ? "" : @strings[index])
      return NSString.string_with(!(text).nil? ? text : "")
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
    # @since 3.0
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
    # 
    # @since 3.2
    def get_bounds
      check_widget
      if (!@parent.check_data(self))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      table_view = @parent.attr_view
      rect = table_view.rect_of_row(@parent.index_of(self))
      return Rectangle.new(RJava.cast_to_int(rect.attr_x), RJava.cast_to_int(rect.attr_y), RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height))
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
      if (!(0 <= index && index < Math.max(1, @parent.attr_column_count)))
        return Rectangle.new(0, 0, 0, 0)
      end
      table_view = @parent.attr_view
      if ((@parent.attr_column_count).equal?(0))
        index = !((@parent.attr_style & SWT::CHECK)).equal?(0) ? 1 : 0
      else
        column = @parent.get_column(index)
        index = @parent.index_of(column.attr_ns_column)
      end
      rect = table_view.frame_of_cell_at_column(index, @parent.index_of(self))
      return Rectangle.new(RJava.cast_to_int(rect.attr_x), RJava.cast_to_int(rect.attr_y), RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height))
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
      return @checked
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
    # @since 3.0
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
      if (!(0 <= index && index < Math.max(1, @parent.attr_column_count)))
        return Rectangle.new(0, 0, 0, 0)
      end
      table_view = @parent.attr_view
      image = (index).equal?(0) ? self.attr_image : (!(@images).nil?) ? @images[index] : nil
      if ((@parent.attr_column_count).equal?(0))
        index = !((@parent.attr_style & SWT::CHECK)).equal?(0) ? 1 : 0
      else
        column = @parent.get_column(index)
        index = @parent.index_of(column.attr_ns_column)
      end
      rect = table_view.frame_of_cell_at_column(index, @parent.index_of(self))
      rect.attr_x += Tree::IMAGE_GAP
      if (!(image).nil?)
        rect.attr_width = @parent.attr_image_bounds.attr_width
      else
        rect.attr_width = 0
      end
      return Rectangle.new(RJava.cast_to_int(rect.attr_x), RJava.cast_to_int(rect.attr_y), RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height))
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
      if (!(0 <= index && index < Math.max(1, @parent.attr_column_count)))
        return Rectangle.new(0, 0, 0, 0)
      end
      table_view = @parent.attr_view
      image = (index).equal?(0) ? self.attr_image : (!(@images).nil?) ? @images[index] : nil
      if ((@parent.attr_column_count).equal?(0))
        index = !((@parent.attr_style & SWT::CHECK)).equal?(0) ? 1 : 0
      else
        column = @parent.get_column(index)
        index = @parent.index_of(column.attr_ns_column)
      end
      rect = table_view.frame_of_cell_at_column(index, @parent.index_of(self))
      rect.attr_x += Tree::TEXT_GAP
      rect.attr_width -= Tree::TEXT_GAP
      if (!(image).nil?)
        offset = @parent.attr_image_bounds.attr_width + Tree::IMAGE_GAP
        rect.attr_x += offset
        rect.attr_width -= offset
      end
      return Rectangle.new(RJava.cast_to_int(rect.attr_x), RJava.cast_to_int(rect.attr_y), RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height))
    end
    
    typesig { [::Java::Int] }
    def redraw(column_index)
      if ((@parent.attr_current_item).equal?(self) || !is_drawing)
        return
      end
      # redraw the full item if columnIndex == -1
      table_view = @parent.attr_view
      rect = nil
      if ((column_index).equal?(-1) || @parent.hooks(SWT::MeasureItem) || @parent.hooks(SWT::EraseItem) || @parent.hooks(SWT::PaintItem))
        rect = table_view.rect_of_row(@parent.index_of(self))
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
        rect = table_view.frame_of_cell_at_column(index, @parent.index_of(self))
      end
      table_view.set_needs_display_in_rect(rect)
    end
    
    typesig { [] }
    def release_handle
      super
      @parent = nil
    end
    
    typesig { [] }
    def release_parent
      super
      # parent.checkItems (true);
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
    # @since 3.0
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
      if ((@checked).equal?(checked))
        return
      end
      @checked = checked
      @cached = true
      redraw(-1)
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
    # @since 3.0
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
    # @since 3.0
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
      @cached = true
      redraw(-1)
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
      item_index = @parent.index_of(self)
      if ((item_index).equal?(-1))
        return
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
      redraw(index)
    end
    
    typesig { [Image] }
    def set_image(image)
      check_widget
      set_image(0, image)
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
      @cached = true
      # Image indent is not supported on the Macintosh
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
      redraw(index)
    end
    
    typesig { [String] }
    def set_text(string)
      check_widget
      set_text(0, string)
    end
    
    private
    alias_method :initialize__table_item, :initialize
  end
  
end
