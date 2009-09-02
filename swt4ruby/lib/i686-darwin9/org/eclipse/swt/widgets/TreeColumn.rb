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
  module TreeColumnImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Cocoa
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # Instances of this class represent a column in a tree widget.
  # <p><dl>
  # <dt><b>Styles:</b></dt>
  # <dd>LEFT, RIGHT, CENTER</dd>
  # <dt><b>Events:</b></dt>
  # <dd> Move, Resize, Selection</dd>
  # </dl>
  # </p><p>
  # Note: Only one of the styles LEFT, RIGHT and CENTER may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#tree">Tree, TreeItem, TreeColumn snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.1
  # @noextend This class is not intended to be subclassed by clients.
  class TreeColumn < TreeColumnImports.const_get :Item
    include_class_members TreeColumnImports
    
    attr_accessor :ns_column
    alias_method :attr_ns_column, :ns_column
    undef_method :ns_column
    alias_method :attr_ns_column=, :ns_column=
    undef_method :ns_column=
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :tool_tip_text
    alias_method :attr_tool_tip_text, :tool_tip_text
    undef_method :tool_tip_text
    alias_method :attr_tool_tip_text=, :tool_tip_text=
    undef_method :tool_tip_text=
    
    attr_accessor :display_text
    alias_method :attr_display_text, :display_text
    undef_method :display_text
    alias_method :attr_display_text=, :display_text=
    undef_method :display_text=
    
    attr_accessor :movable
    alias_method :attr_movable, :movable
    undef_method :movable
    alias_method :attr_movable=, :movable=
    undef_method :movable=
    
    class_module.module_eval {
      const_set_lazy(:MARGIN) { 2 }
      const_attr_reader  :MARGIN
    }
    
    typesig { [Tree, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Tree</code>) and a style value
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
    # @see SWT#LEFT
    # @see SWT#RIGHT
    # @see SWT#CENTER
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @ns_column = nil
      @parent = nil
      @tool_tip_text = nil
      @display_text = nil
      @movable = false
      super(parent, check_style(style))
      @parent = parent
      parent.create_item(self, parent.attr_column_count)
    end
    
    typesig { [Tree, ::Java::Int, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Tree</code>), a style value
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
    # <p>
    # Note that due to a restriction on some platforms, the first column
    # is always left aligned.
    # </p>
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
    # @see SWT#LEFT
    # @see SWT#RIGHT
    # @see SWT#CENTER
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style, index)
      @ns_column = nil
      @parent = nil
      @tool_tip_text = nil
      @display_text = nil
      @movable = false
      super(parent, check_style(style))
      @parent = parent
      parent.create_item(self, index)
    end
    
    typesig { [ControlListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the control is moved or resized, by sending
    # it one of the messages defined in the <code>ControlListener</code>
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
    # @see ControlListener
    # @see #removeControlListener
    def add_control_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Resize, typed_listener)
      add_listener(SWT::Move, typed_listener)
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the control is selected by the user, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # <code>widgetSelected</code> is called when the column header is selected.
    # <code>widgetDefaultSelected</code> is not called.
    # </p>
    # 
    # @param listener the listener which should be notified when the control is selected by the user
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
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        return check_bits(style, SWT::LEFT, SWT::CENTER, SWT::RIGHT, 0, 0, 0)
      end
    }
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget(@ns_column.header_cell)
    end
    
    typesig { [] }
    def destroy_widget
      @parent.destroy_item(self)
      release_handle
    end
    
    typesig { [::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
    # long
    # long
    # long
    def draw_interior_with_frame_in_view(id, sel, cell_rect, view)
      # Feature in Cocoa.  When the last column in a tree does not reach the
      # rightmost edge of the tree view, the cell that draws the rightmost-
      # column's header is also invoked to draw the header space between its
      # right edge and the tree's right edge.  If this case is detected then
      # nothing should be drawn.
      column_index = @parent.index_of(@ns_column)
      header_rect = @parent.attr_header_view.header_rect_of_column(column_index)
      if (!(header_rect.attr_x).equal?(cell_rect.attr_x) || !(header_rect.attr_width).equal?(cell_rect.attr_width))
        return
      end
      context = NSGraphicsContext.current_context
      context.save_graphics_state
      content_width = 0
      string_size = nil
      image_size = nil
      attr_string = nil
      header_cell_ = @ns_column.header_cell
      if (!(@display_text).nil?)
        font_ = Font.cocoa_new(self.attr_display, header_cell_.font)
        attr_string = @parent.create_string(@display_text, font_, nil, SWT::LEFT, ((@parent.attr_state & DISABLED)).equal?(0), false)
        string_size = attr_string.size
        content_width += Math.ceil(string_size.attr_width)
        if (!(self.attr_image).nil?)
          content_width += MARGIN
        end
        # space between image and text
      end
      if (!(self.attr_image).nil?)
        image_size = self.attr_image.attr_handle.size
        content_width += Math.ceil(image_size.attr_width)
      end
      if ((@parent.attr_sort_column).equal?(self) && !(@parent.attr_sort_direction).equal?(SWT::NONE))
        ascending = (@parent.attr_sort_direction).equal?(SWT::UP)
        header_cell_.draw_sort_indicator_with_frame(cell_rect, NSView.new(view), ascending, 0)
        # remove the arrow's space from the available drawing width
        sort_rect = header_cell_.sort_indicator_rect_for_bounds(cell_rect)
        cell_rect.attr_width = Math.max(0, sort_rect.attr_x - cell_rect.attr_x)
      end
      draw_x = 0
      if (!((self.attr_style & SWT::CENTER)).equal?(0))
        draw_x = RJava.cast_to_int((cell_rect.attr_x + Math.max(MARGIN, ((cell_rect.attr_width - content_width) / 2))))
      else
        if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          draw_x = RJava.cast_to_int((cell_rect.attr_x + Math.max(MARGIN, cell_rect.attr_width - content_width - MARGIN)))
        else
          draw_x = RJava.cast_to_int(cell_rect.attr_x) + MARGIN
        end
      end
      if (!(self.attr_image).nil?)
        dest_rect = NSRect.new
        dest_rect.attr_x = draw_x
        dest_rect.attr_y = cell_rect.attr_y
        dest_rect.attr_width = Math.min(image_size.attr_width, cell_rect.attr_width - 2 * MARGIN)
        dest_rect.attr_height = Math.min(image_size.attr_height, cell_rect.attr_height)
        is_flipped = NSView.new(view).is_flipped
        if (is_flipped)
          context.save_graphics_state
          transform_ = NSAffineTransform.transform
          transform_.scale_xby(1, -1)
          transform_.translate_xby(0, -(dest_rect.attr_height + 2 * dest_rect.attr_y))
          transform_.concat
        end
        source_rect = NSRect.new
        source_rect.attr_width = dest_rect.attr_width
        source_rect.attr_height = dest_rect.attr_height
        self.attr_image.attr_handle.draw_in_rect(dest_rect, source_rect, OS::NSCompositeSourceOver, 1)
        if (is_flipped)
          context.restore_graphics_state
        end
        draw_x += dest_rect.attr_width
      end
      if (!(@display_text).nil? && @display_text.length > 0)
        if (!(self.attr_image).nil?)
          draw_x += MARGIN
        end
        # space between image and text
        dest_rect = NSRect.new
        dest_rect.attr_x = draw_x
        dest_rect.attr_y = cell_rect.attr_y
        dest_rect.attr_width = Math.min(string_size.attr_width, cell_rect.attr_x + cell_rect.attr_width - MARGIN - draw_x)
        dest_rect.attr_height = Math.min(string_size.attr_height, cell_rect.attr_height)
        attr_string.draw_in_rect(dest_rect)
      end
      if (!(attr_string).nil?)
        attr_string.release
      end
      context.restore_graphics_state
    end
    
    typesig { [] }
    # Returns a value which describes the position of the
    # text or image in the receiver. The value will be one of
    # <code>LEFT</code>, <code>RIGHT</code> or <code>CENTER</code>.
    # 
    # @return the alignment
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_alignment
      check_widget
      if (!((self.attr_style & SWT::LEFT)).equal?(0))
        return SWT::LEFT
      end
      if (!((self.attr_style & SWT::CENTER)).equal?(0))
        return SWT::CENTER
      end
      if (!((self.attr_style & SWT::RIGHT)).equal?(0))
        return SWT::RIGHT
      end
      return SWT::LEFT
    end
    
    typesig { [] }
    def get_name_text
      return get_text
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
    # Gets the moveable attribute. A column that is
    # not moveable cannot be reordered by the user
    # by dragging the header but may be reordered
    # by the programmer.
    # 
    # @return the moveable attribute
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Tree#getColumnOrder()
    # @see Tree#setColumnOrder(int[])
    # @see TreeColumn#setMoveable(boolean)
    # @see SWT#Move
    # 
    # @since 3.2
    def get_moveable
      check_widget
      return @movable
    end
    
    typesig { [] }
    # Gets the resizable attribute. A column that is
    # not resizable cannot be dragged by the user but
    # may be resized by the programmer.
    # 
    # @return the resizable attribute
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_resizable
      check_widget
      return !(@ns_column.resizing_mask).equal?(OS::NSTableColumnNoResizing)
    end
    
    typesig { [] }
    # Returns the receiver's tool tip text, or null if it has
    # not been set.
    # 
    # @return the receiver's tool tip text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def get_tool_tip_text
      check_widget
      return @tool_tip_text
    end
    
    typesig { [] }
    # Gets the width of the receiver.
    # 
    # @return the width
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_width
      check_widget
      width_ = RJava.cast_to_int(@ns_column.width)
      # TODO how to differentiate 0 and 1 cases?
      if (width_ > 0)
        width_ += Tree::CELL_GAP
      end
      return width_
    end
    
    typesig { [] }
    # Causes the receiver to be resized to its preferred size.
    # For a composite, this involves computing the preferred size
    # from its layout, if there is one.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def pack
      check_widget
      width_ = 0
      # compute header width
      if (!(@display_text).nil?)
        header_cell_ = @ns_column.header_cell
        font_ = Font.cocoa_new(self.attr_display, header_cell_.font)
        attr_string = @parent.create_string(@display_text, font_, nil, 0, true, false)
        string_size = attr_string.size
        attr_string.release
        width_ += Math.ceil(string_size.attr_width)
        if (!(self.attr_image).nil?)
          width_ += MARGIN
        end
        # space between image and text
      end
      if (!(self.attr_image).nil?)
        image_size = self.attr_image.attr_handle.size
        width_ += Math.ceil(image_size.attr_width)
      end
      if ((@parent.attr_sort_column).equal?(self) && !(@parent.attr_sort_direction).equal?(SWT::NONE))
        header_cell_ = @ns_column.header_cell
        rect = NSRect.new
        rect.attr_width = rect.attr_height = Float::MAX_VALUE
        cell_size = header_cell_.cell_size_for_bounds(rect)
        rect.attr_height = cell_size.attr_height
        sort_rect = header_cell_.sort_indicator_rect_for_bounds(rect)
        width_ += Math.ceil(sort_rect.attr_width)
      end
      # compute item widths down column
      gc = SwtGC.new(@parent)
      width_ = Math.max(width_, @parent.calculate_width(@parent.attr_items, @parent.index_of(self), gc, true))
      gc.dispose
      set_width(width_)
    end
    
    typesig { [] }
    def release_handle
      super
      if (!(@ns_column).nil?)
        @ns_column.header_cell.release
        @ns_column.release
      end
      @ns_column = nil
      @parent = nil
    end
    
    typesig { [] }
    def release_widget
      super
      if ((@parent.attr_sort_column).equal?(self))
        @parent.attr_sort_column = nil
      end
    end
    
    typesig { [ControlListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the control is moved or resized.
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
    # @see ControlListener
    # @see #addControlListener
    def remove_control_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Move, listener)
      self.attr_event_table.unhook(SWT::Resize, listener)
    end
    
    typesig { [SelectionListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the control is selected by the user.
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
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Selection, listener)
      self.attr_event_table.unhook(SWT::DefaultSelection, listener)
    end
    
    typesig { [::Java::Int] }
    # Controls how text and images will be displayed in the receiver.
    # The argument should be one of <code>LEFT</code>, <code>RIGHT</code>
    # or <code>CENTER</code>.
    # <p>
    # Note that due to a restriction on some platforms, the first column
    # is always left aligned.
    # </p>
    # @param alignment the new alignment
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_alignment(alignment)
      check_widget
      if (((alignment & (SWT::LEFT | SWT::RIGHT | SWT::CENTER))).equal?(0))
        return
      end
      index = @parent.index_of(self)
      if ((index).equal?(-1) || (index).equal?(0))
        return
      end
      self.attr_style &= ~(SWT::LEFT | SWT::RIGHT | SWT::CENTER)
      self.attr_style |= alignment & (SWT::LEFT | SWT::RIGHT | SWT::CENTER)
      outline_view = (@parent.attr_view)
      header_view_ = outline_view.header_view
      if ((header_view_).nil?)
        return
      end
      index = @parent.index_of(@ns_column)
      rect = header_view_.header_rect_of_column(index)
      header_view_.set_needs_display_in_rect(rect)
      rect = outline_view.rect_of_column(index)
      @parent.attr_view.set_needs_display_in_rect(rect)
    end
    
    typesig { [Image] }
    def set_image(image)
      check_widget
      if (!(image).nil? && image.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      super(image)
      header_view_ = (@parent.attr_view).header_view
      if ((header_view_).nil?)
        return
      end
      index = @parent.index_of(@ns_column)
      rect = header_view_.header_rect_of_column(index)
      header_view_.set_needs_display_in_rect(rect)
    end
    
    typesig { [::Java::Boolean] }
    # Sets the moveable attribute.  A column that is
    # moveable can be reordered by the user by dragging
    # the header. A column that is not moveable cannot be
    # dragged by the user but may be reordered
    # by the programmer.
    # 
    # @param moveable the moveable attribute
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Tree#setColumnOrder(int[])
    # @see Tree#getColumnOrder()
    # @see TreeColumn#getMoveable()
    # @see SWT#Move
    # 
    # @since 3.2
    def set_moveable(moveable)
      check_widget
      @movable = moveable
    end
    
    typesig { [::Java::Boolean] }
    # Sets the resizable attribute.  A column that is
    # not resizable cannot be dragged by the user but
    # may be resized by the programmer.
    # 
    # @param resizable the resize attribute
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_resizable(resizable)
      check_widget
      @ns_column.set_resizing_mask(resizable ? OS::NSTableColumnUserResizingMask : OS::NSTableColumnNoResizing)
    end
    
    typesig { [String] }
    def set_text(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      super(string)
      buffer = CharArray.new(self.attr_text.length)
      self.attr_text.get_chars(0, buffer.attr_length, buffer, 0)
      length_ = fix_mnemonic(buffer)
      @display_text = RJava.cast_to_string(String.new(buffer, 0, length_))
      title = NSString.string_with(@display_text)
      @ns_column.header_cell.set_title(title)
      header_view_ = (@parent.attr_view).header_view
      if ((header_view_).nil?)
        return
      end
      index = @parent.index_of(@ns_column)
      rect = header_view_.header_rect_of_column(index)
      header_view_.set_needs_display_in_rect(rect)
    end
    
    typesig { [String] }
    # Sets the receiver's tool tip text to the argument, which
    # may be null indicating that the default tool tip for the
    # control will be shown. For a control that has a default
    # tool tip, such as the Tree control on Windows, setting
    # the tool tip text to an empty string replaces the default,
    # causing no tool tip text to be shown.
    # <p>
    # The mnemonic indicator (character '&amp;') is not displayed in a tool tip.
    # To display a single '&amp;' in the tool tip, the character '&amp;' can be
    # escaped by doubling it in the string.
    # </p>
    # 
    # @param string the new tool tip text (or null)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def set_tool_tip_text(string)
      check_widget
      @tool_tip_text = string
      @parent.check_tool_tip(self)
    end
    
    typesig { [::Java::Int] }
    # Sets the width of the receiver.
    # 
    # @param width the new width
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_width(width_)
      check_widget
      if (width_ < 0)
        return
      end
      # TODO how to differentiate 0 and 1 cases?
      width_ = Math.max(0, width_ - Tree::CELL_GAP)
      @ns_column.set_width(width_)
    end
    
    typesig { [] }
    def tooltip_text
      return @tool_tip_text
    end
    
    private
    alias_method :initialize__tree_column, :initialize
  end
  
end
