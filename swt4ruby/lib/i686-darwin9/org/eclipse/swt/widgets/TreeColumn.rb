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
  module TreeColumnImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :DataBrowserListViewHeaderDesc
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
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
  class TreeColumn < TreeColumnImports.const_get :Item
    include_class_members TreeColumnImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :id
    alias_method :attr_id, :id
    undef_method :id
    alias_method :attr_id=, :id=
    undef_method :id=
    
    attr_accessor :last_width
    alias_method :attr_last_width, :last_width
    undef_method :last_width
    alias_method :attr_last_width=, :last_width=
    undef_method :last_width=
    
    attr_accessor :last_position
    alias_method :attr_last_position, :last_position
    undef_method :last_position
    alias_method :attr_last_position=, :last_position=
    undef_method :last_position=
    
    attr_accessor :icon_ref
    alias_method :attr_icon_ref, :icon_ref
    undef_method :icon_ref
    alias_method :attr_icon_ref=, :icon_ref=
    undef_method :icon_ref=
    
    attr_accessor :resizable
    alias_method :attr_resizable, :resizable
    undef_method :resizable
    alias_method :attr_resizable=, :resizable=
    undef_method :resizable=
    
    attr_accessor :tool_tip_text
    alias_method :attr_tool_tip_text, :tool_tip_text
    undef_method :tool_tip_text
    alias_method :attr_tool_tip_text=, :tool_tip_text=
    undef_method :tool_tip_text=
    
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
      @parent = nil
      @id = 0
      @last_width = 0
      @last_position = 0
      @icon_ref = 0
      @resizable = false
      @tool_tip_text = nil
      super(parent, check_style(style))
      @resizable = true
      @parent = parent
      parent.create_item(self, parent.get_column_count)
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
      @parent = nil
      @id = 0
      @last_width = 0
      @last_position = 0
      @icon_ref = 0
      @resizable = false
      @tool_tip_text = nil
      super(parent, check_style(style))
      @resizable = true
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
    def destroy_widget
      @parent.destroy_item(self)
      release_handle
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
      flags = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_data_browser_property_flags(@parent.attr_handle, @id, flags)
      return !((flags[0] & OS.attr_k_data_browser_list_view_movable_column)).equal?(0)
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
      return @resizable
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
      width = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_data_browser_table_view_named_column_width(@parent.attr_handle, @id, width)
      return Math.max(0, width[0] + @parent.get_left_disclosure_inset(@id))
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
      gc = SwtGC.new(@parent)
      width = gc.string_extent(self.attr_text).attr_x
      if (!(@icon_ref).equal?(0) || (!(self.attr_image).nil? && OS::VERSION >= 0x1040))
        # Note that the image is stretched to the header height
        width += @parent.attr_header_height
        if (!(self.attr_text.length).equal?(0))
          width += @parent.get_gap
        end
      end
      index = @parent.index_of(self)
      width = Math.max(width, calculate_width(@parent.attr_child_ids, index, gc, width))
      gc.dispose
      set_width(width + @parent.get_inset_width(@id, true))
    end
    
    typesig { [Array.typed(::Java::Int), ::Java::Int, SwtGC, ::Java::Int] }
    def calculate_width(ids, index, gc, width)
      max_ = width
      if ((ids).nil?)
        return max_
      end
      i = 0
      while i < ids.attr_length
        item = @parent.__get_item(ids[i], false)
        if (!(item).nil? && item.attr_cached)
          max_ = Math.max(max_, item.calculate_width(index, gc))
          if (item.get_expanded)
            max_ = Math.max(max_, calculate_width(item.attr_child_ids, index, gc, max_))
          end
        end
        ((i += 1) - 1)
      end
      return max_
    end
    
    typesig { [] }
    def release_handle
      super
      @id = -1
      @parent = nil
    end
    
    typesig { [] }
    def release_widget
      super
      if ((@parent.attr_sort_column).equal?(self))
        @parent.attr_sort_column = nil
      end
      if (!(@icon_ref).equal?(0))
        OS._release_icon_ref(@icon_ref)
      end
      @icon_ref = 0
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
    def resized(new_width)
      @last_width = new_width
      send_event(SWT::Resize)
      if (is_disposed)
        return
      end
      moved = false
      order = @parent.get_column_order
      columns = @parent.get_columns
      i = 0
      while i < order.attr_length
        column = columns[order[i]]
        if (moved && !column.is_disposed)
          column.send_event(SWT::Move)
        end
        if ((column).equal?(self))
          moved = true
        end
        ((i += 1) - 1)
      end
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
      update_header
    end
    
    typesig { [Image] }
    def set_image(image)
      check_widget
      if (!(image).nil? && image.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return
      end
      if (!(@icon_ref).equal?(0))
        OS._release_icon_ref(@icon_ref)
        @icon_ref = 0
      end
      super(image)
      if (!(image).nil?)
        if (OS::VERSION < 0x1040)
          @icon_ref = create_icon_ref(image)
        end
      end
      update_header
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
      flags = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_data_browser_property_flags(@parent.attr_handle, @id, flags)
      if (moveable)
        flags[0] |= OS.attr_k_data_browser_list_view_movable_column
      else
        flags[0] &= ~OS.attr_k_data_browser_list_view_movable_column
      end
      OS._set_data_browser_property_flags(@parent.attr_handle, @id, flags[0])
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
      @resizable = resizable
      update_header
    end
    
    typesig { [String] }
    def set_text(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      super(string)
      update_header
    end
    
    typesig { [String] }
    # Sets the receiver's tool tip text to the argument, which
    # may be null indicating that no tool tip text should be shown.
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
    def set_width(width)
      check_widget
      if (width < 0)
        return
      end
      # Feature in the Macintosh. The data browser widget adds the left inset
      # of the disclosure column to the specified width making the column too
      # wide. The fix is to subtract this value from the column width.
      width -= @parent.get_left_disclosure_inset(@id)
      if (width < 0)
        width = 0
      end
      OS._set_data_browser_table_view_named_column_width(@parent.attr_handle, @id, RJava.cast_to_short(width))
      update_header
      if (!(width).equal?(@last_width))
        resized(width)
      end
    end
    
    typesig { [] }
    def update_header
      buffer = CharArray.new(self.attr_text.length)
      self.attr_text.get_chars(0, buffer.attr_length, buffer, 0)
      length_ = fix_mnemonic(buffer)
      str = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, length_)
      if ((str).equal?(0))
        error(SWT::ERROR_CANNOT_SET_TEXT)
      end
      desc = DataBrowserListViewHeaderDesc.new
      desc.attr_version = OS.attr_k_data_browser_list_view_latest_header_desc
      desc.attr_btn_font_style_just = OS.attr_te_flush_left
      if (!(@parent.index_of(self)).equal?(0))
        if (!((self.attr_style & SWT::CENTER)).equal?(0))
          desc.attr_btn_font_style_just = OS.attr_te_center
        end
        if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          desc.attr_btn_font_style_just = OS.attr_te_flush_right
        end
      end
      desc.attr_btn_font_style_flags |= OS.attr_k_control_use_just_mask
      if (@resizable)
        desc.attr_minimum_width = 0
        desc.attr_maximum_width = 0x7fff
      else
        width = Array.typed(::Java::Short).new(1) { 0 }
        OS._get_data_browser_table_view_named_column_width(@parent.attr_handle, @id, width)
        desc.attr_minimum_width = desc.attr_maximum_width = width[0]
      end
      desc.attr_title_string = str
      if (OS::VERSION < 0x1040)
        desc.attr_btn_content_info_content_type = RJava.cast_to_short((!(@icon_ref).equal?(0) ? OS.attr_k_control_content_icon_ref : OS.attr_k_control_content_text_only))
        desc.attr_btn_content_info_icon_ref = @icon_ref
      else
        if (!(self.attr_image).nil?)
          desc.attr_btn_content_info_content_type = OS.attr_k_control_content_cgimage_ref
          desc.attr_btn_content_info_icon_ref = self.attr_image.attr_handle
        end
      end
      OS._set_data_browser_list_view_header_desc(@parent.attr_handle, @id, desc)
      OS._cfrelease(str)
    end
    
    private
    alias_method :initialize__tree_column, :initialize
  end
  
end
