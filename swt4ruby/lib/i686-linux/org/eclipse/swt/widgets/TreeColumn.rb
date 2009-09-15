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
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
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
    
    # long
    attr_accessor :label_handle
    alias_method :attr_label_handle, :label_handle
    undef_method :label_handle
    alias_method :attr_label_handle=, :label_handle=
    undef_method :label_handle=
    
    attr_accessor :image_handle
    alias_method :attr_image_handle, :image_handle
    undef_method :image_handle
    alias_method :attr_image_handle=, :image_handle=
    undef_method :image_handle=
    
    attr_accessor :button_handle
    alias_method :attr_button_handle, :button_handle
    undef_method :button_handle
    alias_method :attr_button_handle=, :button_handle=
    undef_method :button_handle=
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :model_index
    alias_method :attr_model_index, :model_index
    undef_method :model_index
    alias_method :attr_model_index=, :model_index=
    undef_method :model_index=
    
    attr_accessor :last_button
    alias_method :attr_last_button, :last_button
    undef_method :last_button
    alias_method :attr_last_button=, :last_button=
    undef_method :last_button=
    
    attr_accessor :last_time
    alias_method :attr_last_time, :last_time
    undef_method :last_time
    alias_method :attr_last_time=, :last_time=
    undef_method :last_time=
    
    attr_accessor :last_x
    alias_method :attr_last_x, :last_x
    undef_method :last_x
    alias_method :attr_last_x=, :last_x=
    undef_method :last_x=
    
    attr_accessor :last_width
    alias_method :attr_last_width, :last_width
    undef_method :last_width
    alias_method :attr_last_width=, :last_width=
    undef_method :last_width=
    
    attr_accessor :custom_draw
    alias_method :attr_custom_draw, :custom_draw
    undef_method :custom_draw
    alias_method :attr_custom_draw=, :custom_draw=
    undef_method :custom_draw=
    
    attr_accessor :use_fixed_width
    alias_method :attr_use_fixed_width, :use_fixed_width
    undef_method :use_fixed_width
    alias_method :attr_use_fixed_width=, :use_fixed_width=
    undef_method :use_fixed_width=
    
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
      @label_handle = 0
      @image_handle = 0
      @button_handle = 0
      @parent = nil
      @model_index = 0
      @last_button = 0
      @last_time = 0
      @last_x = 0
      @last_width = 0
      @custom_draw = false
      @use_fixed_width = false
      @tool_tip_text = nil
      super(parent, check_style(style))
      @parent = parent
      create_widget(parent.get_column_count)
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
      @label_handle = 0
      @image_handle = 0
      @button_handle = 0
      @parent = nil
      @model_index = 0
      @last_button = 0
      @last_time = 0
      @last_x = 0
      @last_width = 0
      @custom_draw = false
      @use_fixed_width = false
      @tool_tip_text = nil
      super(parent, check_style(style))
      @parent = parent
      create_widget(index)
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
    
    typesig { [::Java::Int] }
    def create_widget(index)
      @parent.create_item(self, index)
      set_orientation
      hook_events
      register
      self.attr_text = ""
    end
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget(self.attr_handle)
      if (!(@button_handle).equal?(0))
        self.attr_display.remove_widget(@button_handle)
      end
      if (!(@label_handle).equal?(0))
        self.attr_display.remove_widget(@label_handle)
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
      return OS.gtk_tree_view_column_get_reorderable(self.attr_handle)
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
      return OS.gtk_tree_view_column_get_resizable(self.attr_handle)
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
      if (!OS.gtk_tree_view_column_get_visible(self.attr_handle))
        return 0
      end
      if (@use_fixed_width)
        return OS.gtk_tree_view_column_get_fixed_width(self.attr_handle)
      end
      return OS.gtk_tree_view_column_get_width(self.attr_handle)
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_clicked(widget)
      # There is no API to get a double click on a table column.  Normally, when
      # the mouse is double clicked, this is indicated by GDK_2BUTTON_PRESS
      # but the table column sends the click signal on button release.  The fix is to
      # test for double click by remembering the last click time and mouse button
      # and testing for the double click interval.
      double_click = false
      post_event = true
      # long
      event_ptr = OS.gtk_get_current_event
      if (!(event_ptr).equal?(0))
        gdk_event = GdkEventButton.new
        OS.memmove___org_eclipse_swt_widgets_tree_column_1(gdk_event, event_ptr, GdkEventButton.attr_sizeof)
        OS.gdk_event_free(event_ptr)
        case (gdk_event.attr_type)
        when OS::GDK_BUTTON_RELEASE
          click_time = self.attr_display.get_double_click_time
          event_time = gdk_event.attr_time
          event_button = gdk_event.attr_button
          if ((@last_button).equal?(event_button) && !(@last_time).equal?(0) && Math.abs(@last_time - event_time) <= click_time)
            double_click = true
          end
          @last_time = (event_time).equal?(0) ? 1 : event_time
          @last_button = event_button
        when OS::GDK_MOTION_NOTIFY
          # Bug in GTK.  Dragging a column in a GtkTreeView causes a clicked
          # signal to be emitted even though the mouse button was never released.
          # The fix to ignore the signal if the current GDK event is a motion notify.
          # The GTK bug was fixed in version 2.6
          if (OS::GTK_VERSION < OS._version(2, 6, 0))
            post_event = false
          end
        end
      end
      if (post_event)
        post_event___org_eclipse_swt_widgets_tree_column_3(double_click ? SWT::DefaultSelection : SWT::Selection)
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_event_after(widget, gdk_event)
      event = GdkEvent.new
      OS.memmove___org_eclipse_swt_widgets_tree_column_5(event, gdk_event, GdkEvent.attr_sizeof)
      case (event.attr_type)
      when OS::GDK_BUTTON_PRESS
        gdk_event_button = GdkEventButton.new
        OS.memmove___org_eclipse_swt_widgets_tree_column_7(gdk_event_button, gdk_event, GdkEventButton.attr_sizeof)
        if ((gdk_event_button.attr_button).equal?(3))
          @parent.show_menu(RJava.cast_to_int(gdk_event_button.attr_x_root), RJava.cast_to_int(gdk_event_button.attr_y_root))
        end
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_mnemonic_activate(widget, arg1)
      return @parent.gtk_mnemonic_activate(widget, arg1)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_size_allocate(widget, allocation)
      @use_fixed_width = false
      x = OS._gtk_widget_x(widget)
      width = OS._gtk_widget_width(widget)
      if (!(x).equal?(@last_x))
        @last_x = x
        send_event(SWT::Move)
      end
      if (!(width).equal?(@last_width))
        @last_width = width
        send_event(SWT::Resize)
      end
      return 0
    end
    
    typesig { [] }
    def hook_events
      super
      OS.g_signal_connect_closure(self.attr_handle, OS.attr_clicked, self.attr_display.attr_closures[CLICKED], false)
      if (!(@button_handle).equal?(0))
        OS.g_signal_connect_closure_by_id(@button_handle, self.attr_display.attr_signal_ids[SIZE_ALLOCATE], 0, self.attr_display.attr_closures[SIZE_ALLOCATE], false)
        OS.g_signal_connect_closure_by_id(@button_handle, self.attr_display.attr_signal_ids[EVENT_AFTER], 0, self.attr_display.attr_closures[EVENT_AFTER], false)
      end
      if (!(@label_handle).equal?(0))
        OS.g_signal_connect_closure_by_id(@label_handle, self.attr_display.attr_signal_ids[MNEMONIC_ACTIVATE], 0, self.attr_display.attr_closures[MNEMONIC_ACTIVATE], false)
      end
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
      width = 0
      if (!(@button_handle).equal?(0))
        requisition = GtkRequisition.new
        OS.gtk_widget_size_request(@button_handle, requisition)
        width = requisition.attr_width
      end
      if (!((@parent.attr_style & SWT::VIRTUAL)).equal?(0))
        # NOT DONE
      else
        # long
        iter = OS.g_malloc(OS._gtk_tree_iter_sizeof)
        if (OS.gtk_tree_model_get_iter_first(@parent.attr_model_handle, iter))
          begin
            width = Math.max(width, @parent.calculate_width(self.attr_handle, iter, true))
          end while (OS.gtk_tree_model_iter_next(@parent.attr_model_handle, iter))
        end
        OS.g_free(iter)
      end
      set_width(width)
    end
    
    typesig { [] }
    def register
      super
      self.attr_display.add_widget(self.attr_handle, self)
      if (!(@button_handle).equal?(0))
        self.attr_display.add_widget(@button_handle, self)
      end
      if (!(@label_handle).equal?(0))
        self.attr_display.add_widget(@label_handle, self)
      end
    end
    
    typesig { [] }
    def release_handle
      super
      self.attr_handle = @button_handle = @label_handle = @image_handle = 0
      @model_index = -1
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
      @parent.create_renderers(self.attr_handle, @model_index, (index).equal?(0), self.attr_style)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_font_description(font)
      OS.gtk_widget_modify_font(@label_handle, font)
      OS.gtk_widget_modify_font(@image_handle, font)
    end
    
    typesig { [Image] }
    def set_image(image)
      check_widget
      super(image)
      if (!(image).nil?)
        header_image_list = @parent.attr_header_image_list
        if ((header_image_list).nil?)
          header_image_list = @parent.attr_header_image_list = ImageList.new
        end
        image_index = header_image_list.index_of(image)
        if ((image_index).equal?(-1))
          image_index = header_image_list.add(image)
        end
        # long
        pixbuf = header_image_list.get_pixbuf(image_index)
        OS.gtk_image_set_from_pixbuf(@image_handle, pixbuf)
        OS.gtk_widget_show(@image_handle)
      else
        OS.gtk_image_set_from_pixbuf(@image_handle, 0)
        OS.gtk_widget_hide(@image_handle)
      end
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
      OS.gtk_tree_view_column_set_reorderable(self.attr_handle, moveable)
    end
    
    typesig { [] }
    def set_orientation
      if (!((@parent.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        if (!(@button_handle).equal?(0))
          OS.gtk_widget_set_direction(@button_handle, OS::GTK_TEXT_DIR_RTL)
          OS.gtk_container_forall(@button_handle, self.attr_display.attr_set_direction_proc, OS::GTK_TEXT_DIR_RTL)
        end
      end
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
      OS.gtk_tree_view_column_set_resizable(self.attr_handle, resizable)
    end
    
    typesig { [String] }
    def set_text(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      super(string)
      chars = fix_mnemonic(string)
      buffer = Converter.wcs_to_mbcs(nil, chars, true)
      OS.gtk_label_set_text_with_mnemonic(@label_handle, buffer)
      if (!(string.length).equal?(0))
        OS.gtk_widget_show(@label_handle)
      else
        OS.gtk_widget_hide(@label_handle)
      end
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
      shell = @parent.__get_shell
      set_tool_tip_text(shell, string)
      @tool_tip_text = string
    end
    
    typesig { [Shell, String] }
    def set_tool_tip_text(shell, new_string)
      shell.set_tool_tip_text(@button_handle, new_string)
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
      if ((width).equal?(@last_width))
        return
      end
      if (width > 0)
        @use_fixed_width = true
        OS.gtk_tree_view_column_set_fixed_width(self.attr_handle, width)
      end
      # Bug in GTK.  For some reason, calling gtk_tree_view_column_set_visible()
      # when the parent is not realized fails to show the column. The fix is to
      # ensure that the table has been realized.
      if (!(width).equal?(0))
        OS.gtk_widget_realize(@parent.attr_handle)
      end
      OS.gtk_tree_view_column_set_visible(self.attr_handle, !(width).equal?(0))
      @last_width = width
      send_event(SWT::Resize)
    end
    
    private
    alias_method :initialize__tree_column, :initialize
  end
  
end
