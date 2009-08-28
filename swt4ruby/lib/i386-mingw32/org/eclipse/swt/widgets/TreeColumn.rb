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
  module TreeColumnImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
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
    
    attr_accessor :resizable
    alias_method :attr_resizable, :resizable
    undef_method :resizable
    alias_method :attr_resizable=, :resizable=
    undef_method :resizable=
    
    attr_accessor :moveable
    alias_method :attr_moveable, :moveable
    undef_method :moveable
    alias_method :attr_moveable=, :moveable=
    undef_method :moveable=
    
    attr_accessor :tool_tip_text
    alias_method :attr_tool_tip_text, :tool_tip_text
    undef_method :tool_tip_text
    alias_method :attr_tool_tip_text=, :tool_tip_text=
    undef_method :tool_tip_text=
    
    attr_accessor :id
    alias_method :attr_id, :id
    undef_method :id
    alias_method :attr_id=, :id=
    undef_method :id=
    
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
      @resizable = false
      @moveable = false
      @tool_tip_text = nil
      @id = 0
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
      @resizable = false
      @moveable = false
      @tool_tip_text = nil
      @id = 0
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
      return @moveable
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return 0
      end
      # long
      hwnd_header = @parent.attr_hwnd_header
      if ((hwnd_header).equal?(0))
        return 0
      end
      hd_item = HDITEM.new
      hd_item.attr_mask = OS::HDI_WIDTH
      OS._send_message(hwnd_header, OS::HDM_GETITEM, index, hd_item)
      return hd_item.attr_cxy
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return
      end
      column_width = 0
      # long
      hwnd = @parent.attr_handle
      hwnd_header = @parent.attr_hwnd_header
      header_rect = RECT.new
      OS._send_message(hwnd_header, OS::HDM_GETITEMRECT, index, header_rect)
      # long
      h_dc = OS._get_dc(hwnd)
      # long
      old_font = 0
      new_font = OS._send_message(hwnd, OS::WM_GETFONT, 0, 0)
      if (!(new_font).equal?(0))
        old_font = OS._select_object(h_dc, new_font)
      end
      tv_item = TVITEM.new
      tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_PARAM
      tv_item.attr_h_item = OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_ROOT, 0)
      while (!(tv_item.attr_h_item).equal?(0))
        OS._send_message(hwnd, OS::TVM_GETITEM, 0, tv_item)
        # 64
        item = !(tv_item.attr_l_param).equal?(-1) ? @parent.attr_items[RJava.cast_to_int(tv_item.attr_l_param)] : nil
        if (!(item).nil?)
          item_right = 0
          if (@parent.hooks(SWT::MeasureItem))
            event = @parent.send_measure_item_event(item, index, h_dc)
            if (is_disposed || @parent.is_disposed)
              break
            end
            item_right = event.attr_x + event.attr_width
          else
            # long
            h_font = item.font_handle(index)
            if (!(h_font).equal?(-1))
              h_font = OS._select_object(h_dc, h_font)
            end
            item_rect = item.get_bounds(index, true, true, false, false, false, h_dc)
            if (!(h_font).equal?(-1))
              OS._select_object(h_dc, h_font)
            end
            item_right = item_rect.attr_right
          end
          column_width = Math.max(column_width, item_right - header_rect.attr_left)
        end
        tv_item.attr_h_item = OS._send_message(hwnd, OS::TVM_GETNEXTITEM, OS::TVGN_NEXTVISIBLE, tv_item.attr_h_item)
      end
      rect = RECT.new
      flags = OS::DT_CALCRECT | OS::DT_NOPREFIX
      buffer = TCHAR.new(@parent.get_code_page, self.attr_text, false)
      OS._draw_text(h_dc, buffer, buffer.length, rect, flags)
      header_width = rect.attr_right - rect.attr_left + Tree::HEADER_MARGIN
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        header_width += Tree::HEADER_EXTRA
      end
      if (!(self.attr_image).nil? || (@parent.attr_sort_column).equal?(self))
        header_image = nil
        if ((@parent.attr_sort_column).equal?(self) && !(@parent.attr_sort_direction).equal?(SWT::NONE))
          if (OS::COMCTL32_MAJOR < 6)
            header_image = self.attr_display.get_sort_image(@parent.attr_sort_direction)
          else
            header_width += Tree::SORT_WIDTH
          end
        else
          header_image = self.attr_image
        end
        if (!(header_image).nil?)
          bounds = header_image.get_bounds
          header_width += bounds.attr_width
        end
        margin = 0
        if (!(hwnd_header).equal?(0) && OS::COMCTL32_VERSION >= OS._version(5, 80))
          # 64
          margin = RJava.cast_to_int(OS._send_message(hwnd_header, OS::HDM_GETBITMAPMARGIN, 0, 0))
        else
          margin = OS._get_system_metrics(OS::SM_CXEDGE) * 3
        end
        header_width += margin * 2
      end
      if (!(new_font).equal?(0))
        OS._select_object(h_dc, old_font)
      end
      OS._release_dc(hwnd, h_dc)
      grid_width = @parent.attr_lines_visible ? Tree::GRID_WIDTH : 0
      set_width(Math.max(header_width, column_width + grid_width))
    end
    
    typesig { [] }
    def release_handle
      super
      @parent = nil
    end
    
    typesig { [] }
    def release_parent
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
      # long
      hwnd_header = @parent.attr_hwnd_header
      if ((hwnd_header).equal?(0))
        return
      end
      hd_item = HDITEM.new
      hd_item.attr_mask = OS::HDI_FORMAT
      OS._send_message(hwnd_header, OS::HDM_GETITEM, index, hd_item)
      hd_item.attr_fmt &= ~OS::HDF_JUSTIFYMASK
      if (((self.attr_style & SWT::LEFT)).equal?(SWT::LEFT))
        hd_item.attr_fmt |= OS::HDF_LEFT
      end
      if (((self.attr_style & SWT::CENTER)).equal?(SWT::CENTER))
        hd_item.attr_fmt |= OS::HDF_CENTER
      end
      if (((self.attr_style & SWT::RIGHT)).equal?(SWT::RIGHT))
        hd_item.attr_fmt |= OS::HDF_RIGHT
      end
      OS._send_message(hwnd_header, OS::HDM_SETITEM, index, hd_item)
      if (!(index).equal?(0))
        # long
        hwnd = @parent.attr_handle
        @parent.force_resize
        rect = RECT.new
        header_rect = RECT.new
        OS._get_client_rect(hwnd, rect)
        OS._send_message(hwnd_header, OS::HDM_GETITEMRECT, index, header_rect)
        rect.attr_left = header_rect.attr_left
        rect.attr_right = header_rect.attr_right
        OS._invalidate_rect(hwnd, rect, true)
      end
    end
    
    typesig { [Image] }
    def set_image(image)
      check_widget
      if (!(image).nil? && image.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      super(image)
      if (!(@parent.attr_sort_column).equal?(self) || !(@parent.attr_sort_direction).equal?(SWT::NONE))
        set_image(image, false, false)
      end
    end
    
    typesig { [Image, ::Java::Boolean, ::Java::Boolean] }
    def set_image(image, sort, right)
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return
      end
      # long
      hwnd_header = @parent.attr_hwnd_header
      if ((hwnd_header).equal?(0))
        return
      end
      hd_item = HDITEM.new
      hd_item.attr_mask = OS::HDI_FORMAT | OS::HDI_IMAGE | OS::HDI_BITMAP
      OS._send_message(hwnd_header, OS::HDM_GETITEM, index, hd_item)
      hd_item.attr_fmt &= ~OS::HDF_BITMAP_ON_RIGHT
      if (!(image).nil?)
        if (sort)
          hd_item.attr_mask &= ~OS::HDI_IMAGE
          hd_item.attr_fmt &= ~OS::HDF_IMAGE
          hd_item.attr_fmt |= OS::HDF_BITMAP
          hd_item.attr_hbm = image.attr_handle
        else
          hd_item.attr_mask &= ~OS::HDI_BITMAP
          hd_item.attr_fmt &= ~OS::HDF_BITMAP
          hd_item.attr_fmt |= OS::HDF_IMAGE
          hd_item.attr_i_image = @parent.image_index_header(image)
        end
        if (right)
          hd_item.attr_fmt |= OS::HDF_BITMAP_ON_RIGHT
        end
      else
        hd_item.attr_mask &= ~(OS::HDI_IMAGE | OS::HDI_BITMAP)
        hd_item.attr_fmt &= ~(OS::HDF_IMAGE | OS::HDF_BITMAP)
      end
      OS._send_message(hwnd_header, OS::HDM_SETITEM, index, hd_item)
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
      @moveable = moveable
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
    end
    
    typesig { [::Java::Int] }
    def set_sort_direction(direction)
      if (OS::COMCTL32_MAJOR >= 6)
        # long
        hwnd_header = @parent.attr_hwnd_header
        if (!(hwnd_header).equal?(0))
          index = @parent.index_of(self)
          if ((index).equal?(-1))
            return
          end
          hd_item = HDITEM.new
          hd_item.attr_mask = OS::HDI_FORMAT | OS::HDI_IMAGE
          OS._send_message(hwnd_header, OS::HDM_GETITEM, index, hd_item)
          case (direction)
          when SWT::UP
            hd_item.attr_fmt &= ~(OS::HDF_IMAGE | OS::HDF_SORTDOWN)
            hd_item.attr_fmt |= OS::HDF_SORTUP
            if ((self.attr_image).nil?)
              hd_item.attr_mask &= ~OS::HDI_IMAGE
            end
          when SWT::DOWN
            hd_item.attr_fmt &= ~(OS::HDF_IMAGE | OS::HDF_SORTUP)
            hd_item.attr_fmt |= OS::HDF_SORTDOWN
            if ((self.attr_image).nil?)
              hd_item.attr_mask &= ~OS::HDI_IMAGE
            end
          when SWT::NONE
            hd_item.attr_fmt &= ~(OS::HDF_SORTUP | OS::HDF_SORTDOWN)
            if (!(self.attr_image).nil?)
              hd_item.attr_fmt |= OS::HDF_IMAGE
              hd_item.attr_i_image = @parent.image_index_header(self.attr_image)
            else
              hd_item.attr_fmt &= ~OS::HDF_IMAGE
              hd_item.attr_mask &= ~OS::HDI_IMAGE
            end
          end
          OS._send_message(hwnd_header, OS::HDM_SETITEM, index, hd_item)
          if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
            # long
            hwnd = @parent.attr_handle
            @parent.force_resize
            rect = RECT.new
            header_rect = RECT.new
            OS._get_client_rect(hwnd, rect)
            OS._send_message(hwnd_header, OS::HDM_GETITEMRECT, index, header_rect)
            rect.attr_left = header_rect.attr_left
            rect.attr_right = header_rect.attr_right
            OS._invalidate_rect(hwnd, rect, true)
          end
        end
      else
        case (direction)
        when SWT::UP, SWT::DOWN
          set_image(self.attr_display.get_sort_image(direction), true, true)
        when SWT::NONE
          set_image(self.attr_image, false, false)
        end
      end
    end
    
    typesig { [String] }
    def set_text(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((string == self.attr_text))
        return
      end
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return
      end
      super(string)
      # Bug in Windows.  When a column header contains a
      # mnemonic character, Windows does not measure the
      # text properly.  This causes '...' to always appear
      # at the end of the text.  The fix is to remove
      # mnemonic characters and replace doubled mnemonics
      # with spaces.
      # 
      # long
      h_heap = OS._get_process_heap
      buffer = TCHAR.new(@parent.get_code_page, fix_mnemonic(string, true), true)
      byte_count = buffer.length * TCHAR.attr_sizeof
      # long
      psz_text = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
      OS._move_memory(psz_text, buffer, byte_count)
      # long
      hwnd_header = @parent.attr_hwnd_header
      if ((hwnd_header).equal?(0))
        return
      end
      hd_item = HDITEM.new
      hd_item.attr_mask = OS::HDI_TEXT
      hd_item.attr_psz_text = psz_text
      # long
      result = OS._send_message(hwnd_header, OS::HDM_SETITEM, index, hd_item)
      if (!(psz_text).equal?(0))
        OS._heap_free(h_heap, 0, psz_text)
      end
      if ((result).equal?(0))
        error(SWT::ERROR_CANNOT_SET_TEXT)
      end
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
      # long
      hwnd_header_tool_tip = @parent.attr_header_tool_tip_handle
      if ((hwnd_header_tool_tip).equal?(0))
        @parent.create_header_tool_tips
        @parent.update_header_tool_tips
      end
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
      index = @parent.index_of(self)
      if ((index).equal?(-1))
        return
      end
      # long
      hwnd_header = @parent.attr_hwnd_header
      if ((hwnd_header).equal?(0))
        return
      end
      hd_item = HDITEM.new
      hd_item.attr_mask = OS::HDI_WIDTH
      hd_item.attr_cxy = width
      OS._send_message(hwnd_header, OS::HDM_SETITEM, index, hd_item)
      header_rect = RECT.new
      OS._send_message(hwnd_header, OS::HDM_GETITEMRECT, index, header_rect)
      @parent.force_resize
      # long
      hwnd = @parent.attr_handle
      rect = RECT.new
      OS._get_client_rect(hwnd, rect)
      rect.attr_left = header_rect.attr_left
      OS._invalidate_rect(hwnd, rect, true)
      @parent.set_scroll_width
    end
    
    typesig { [::Java::Int] }
    def update_tool_tip(index)
      # long
      hwnd_header_tool_tip = @parent.attr_header_tool_tip_handle
      if (!(hwnd_header_tool_tip).equal?(0))
        # long
        hwnd_header = @parent.attr_hwnd_header
        rect = RECT.new
        if (!(OS._send_message(hwnd_header, OS::HDM_GETITEMRECT, index, rect)).equal?(0))
          lpti = TOOLINFO.new
          lpti.attr_cb_size = TOOLINFO.attr_sizeof
          lpti.attr_hwnd = hwnd_header
          lpti.attr_u_id = @id
          lpti.attr_left = rect.attr_left
          lpti.attr_top = rect.attr_top
          lpti.attr_right = rect.attr_right
          lpti.attr_bottom = rect.attr_bottom
          OS._send_message(hwnd_header_tool_tip, OS::TTM_NEWTOOLRECT, 0, lpti)
        end
      end
    end
    
    private
    alias_method :initialize__tree_column, :initialize
  end
  
end
