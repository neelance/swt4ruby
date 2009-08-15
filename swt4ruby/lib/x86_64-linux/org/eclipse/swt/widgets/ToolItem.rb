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
  module ToolItemImports
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
  
  # Instances of this class represent a selectable user interface object
  # that represents a button in a tool bar.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>PUSH, CHECK, RADIO, SEPARATOR, DROP_DOWN</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles CHECK, PUSH, RADIO, SEPARATOR and DROP_DOWN
  # may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#toolbar">ToolBar, ToolItem snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class ToolItem < ToolItemImports.const_get :Item
    include_class_members ToolItemImports
    
    # int
    attr_accessor :box_handle
    alias_method :attr_box_handle, :box_handle
    undef_method :box_handle
    alias_method :attr_box_handle=, :box_handle=
    undef_method :box_handle=
    
    attr_accessor :arrow_handle
    alias_method :attr_arrow_handle, :arrow_handle
    undef_method :arrow_handle
    alias_method :attr_arrow_handle=, :arrow_handle=
    undef_method :arrow_handle=
    
    attr_accessor :arrow_box_handle
    alias_method :attr_arrow_box_handle, :arrow_box_handle
    undef_method :arrow_box_handle
    alias_method :attr_arrow_box_handle=, :arrow_box_handle=
    undef_method :arrow_box_handle=
    
    attr_accessor :separator_handle
    alias_method :attr_separator_handle, :separator_handle
    undef_method :separator_handle
    alias_method :attr_separator_handle=, :separator_handle=
    undef_method :separator_handle=
    
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
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :control
    alias_method :attr_control, :control
    undef_method :control
    alias_method :attr_control=, :control=
    undef_method :control=
    
    attr_accessor :hot_image
    alias_method :attr_hot_image, :hot_image
    undef_method :hot_image
    alias_method :attr_hot_image=, :hot_image=
    undef_method :hot_image=
    
    attr_accessor :disabled_image
    alias_method :attr_disabled_image, :disabled_image
    undef_method :disabled_image
    alias_method :attr_disabled_image=, :disabled_image=
    undef_method :disabled_image=
    
    attr_accessor :tool_tip_text
    alias_method :attr_tool_tip_text, :tool_tip_text
    undef_method :tool_tip_text
    alias_method :attr_tool_tip_text=, :tool_tip_text=
    undef_method :tool_tip_text=
    
    attr_accessor :draw_hot_image
    alias_method :attr_draw_hot_image, :draw_hot_image
    undef_method :draw_hot_image
    alias_method :attr_draw_hot_image=, :draw_hot_image=
    undef_method :draw_hot_image=
    
    typesig { [ToolBar, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>ToolBar</code>) and a style value
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
    # @see SWT#PUSH
    # @see SWT#CHECK
    # @see SWT#RADIO
    # @see SWT#SEPARATOR
    # @see SWT#DROP_DOWN
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @box_handle = 0
      @arrow_handle = 0
      @arrow_box_handle = 0
      @separator_handle = 0
      @label_handle = 0
      @image_handle = 0
      @parent = nil
      @control = nil
      @hot_image = nil
      @disabled_image = nil
      @tool_tip_text = nil
      @draw_hot_image = false
      super(parent, check_style(style))
      @parent = parent
      create_widget(parent.get_item_count)
    end
    
    typesig { [ToolBar, ::Java::Int, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>ToolBar</code>), a style value
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
    # @see SWT#PUSH
    # @see SWT#CHECK
    # @see SWT#RADIO
    # @see SWT#SEPARATOR
    # @see SWT#DROP_DOWN
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style, index)
      @box_handle = 0
      @arrow_handle = 0
      @arrow_box_handle = 0
      @separator_handle = 0
      @label_handle = 0
      @image_handle = 0
      @parent = nil
      @control = nil
      @hot_image = nil
      @disabled_image = nil
      @tool_tip_text = nil
      @draw_hot_image = false
      super(parent, check_style(style))
      @parent = parent
      count = parent.get_item_count
      if (!(0 <= index && index <= count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      create_widget(index)
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the control is selected by the user, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # When <code>widgetSelected</code> is called when the mouse is over the arrow portion of a drop-down tool,
    # the event object detail field contains the value <code>SWT.ARROW</code>.
    # <code>widgetDefaultSelected</code> is not called.
    # </p>
    # 
    # @param listener the listener which should be notified when the control is selected by the user,
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
        return check_bits(style, SWT::PUSH, SWT::CHECK, SWT::RADIO, SWT::SEPARATOR, SWT::DROP_DOWN, 0)
      end
    }
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [::Java::Int] }
    def create_handle(index)
      self.attr_state |= HANDLE
      if (((self.attr_style & SWT::SEPARATOR)).equal?(0))
        @box_handle = !((@parent.attr_style & SWT::RIGHT)).equal?(0) ? OS.gtk_hbox_new(false, 0) : OS.gtk_vbox_new(false, 0)
        if ((@box_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        @label_handle = OS.gtk_label_new_with_mnemonic(nil)
        if ((@label_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        @image_handle = OS.gtk_image_new
        if ((@image_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.gtk_container_add(@box_handle, @image_handle)
        OS.gtk_container_add(@box_handle, @label_handle)
        if (!((@parent.attr_style & SWT::VERTICAL)).equal?(0))
          # Align text and images to the left
          OS.gtk_box_set_child_packing(@box_handle, @image_handle, false, false, 0, OS::GTK_PACK_START)
          OS.gtk_box_set_child_packing(@box_handle, @label_handle, false, false, 2, OS::GTK_PACK_START)
        end
      end
      bits = SWT::SEPARATOR | SWT::RADIO | SWT::CHECK | SWT::PUSH | SWT::DROP_DOWN
      case (self.attr_style & bits)
      # This code is intentionally commented.  Because GTK
      # enforces radio behavior in a button group a radio group
      # is not created for each set of contiguous buttons, each
      # radio button will not draw unpressed.  The fix is to use
      # toggle buttons instead.
      # 
      # handle = OS.gtk_radio_button_new (0);
      # if (handle == 0) error (SWT.ERROR_NO_HANDLES);
      # OS.gtk_toggle_button_set_mode (handle, false);
      # OS.gtk_container_add (handle, boxHandle);
      # break;
      when SWT::SEPARATOR
        self.attr_handle = OS.gtk_hbox_new(false, 0)
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        is_vertical = !((@parent.attr_style & SWT::VERTICAL)).equal?(0)
        @separator_handle = is_vertical ? OS.gtk_hseparator_new : OS.gtk_vseparator_new
        if ((@separator_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.gtk_widget_set_size_request(@separator_handle, is_vertical ? 15 : 6, is_vertical ? 6 : 15)
        OS.gtk_widget_set_size_request(self.attr_handle, is_vertical ? 15 : 6, is_vertical ? 6 : 15)
        OS.gtk_container_add(self.attr_handle, @separator_handle)
      when SWT::DROP_DOWN
        self.attr_handle = OS.gtk_button_new
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        @arrow_box_handle = OS.gtk_hbox_new(false, 0)
        if ((@arrow_box_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        @arrow_handle = OS.gtk_arrow_new(OS::GTK_ARROW_DOWN, OS::GTK_SHADOW_NONE)
        if ((@arrow_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.gtk_widget_set_size_request(@arrow_handle, 8, 6)
        OS.gtk_container_add(self.attr_handle, @arrow_box_handle)
        OS.gtk_container_add(@arrow_box_handle, @box_handle)
        OS.gtk_container_add(@arrow_box_handle, @arrow_handle)
      when SWT::RADIO, SWT::CHECK
        self.attr_handle = OS.gtk_toggle_button_new
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.gtk_toggle_button_set_mode(self.attr_handle, false)
        OS.gtk_container_add(self.attr_handle, @box_handle)
      when SWT::PUSH
        self.attr_handle = OS.gtk_button_new
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.gtk_container_add(self.attr_handle, @box_handle)
      else
        self.attr_handle = OS.gtk_button_new
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.gtk_container_add(self.attr_handle, @box_handle)
      end
      if (((self.attr_style & SWT::SEPARATOR)).equal?(0))
        relief = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_widget_style_get(@parent.attr_handle, OS.attr_button_relief, relief, 0)
        OS.gtk_button_set_relief(self.attr_handle, relief[0])
      end
      OS._gtk_widget_unset_flags(self.attr_handle, OS::GTK_CAN_FOCUS)
      # This code is intentionally commented.
      # long /*int*/ fontHandle = parent.fontHandle ();
      # GdkColor color = new GdkColor ();
      # long /*int*/ style = OS.gtk_widget_get_style (fontHandle);
      # OS.gtk_style_get_fg (style, OS.GTK_STATE_NORMAL, color);
      # long /*int*/ font = OS.gtk_style_get_font_desc (style);
      # setForegroundColor (color);
      # setFontDescription (font);
      if (!((@parent.attr_state & FOREGROUND)).equal?(0))
        set_foreground_color(@parent.get_foreground_color)
      end
      if (!((@parent.attr_state & FONT)).equal?(0))
        set_font_description(@parent.get_font_description)
      end
    end
    
    typesig { [::Java::Int] }
    def create_widget(index)
      super(index)
      show_widget(index)
      @parent.relayout
    end
    
    typesig { [] }
    def deregister
      super
      if (!(@label_handle).equal?(0))
        self.attr_display.remove_widget(@label_handle)
      end
    end
    
    typesig { [] }
    def dispose
      if (is_disposed)
        return
      end
      parent = @parent
      super
      parent.relayout
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
      @parent.force_resize
      # int
      top_handle_ = top_handle
      x = 0
      y = 0
      width = 0
      height = 0
      # Bug in GTK.  Toolbar items are only allocated their minimum size
      # in versions before 2.4.0.  The fix is to use the total size
      # available minus any borders.
      if (OS::GTK_VERSION < OS._version(2, 4, 0) && !(@control).nil? && !@control.is_disposed)
        border = OS.gtk_container_get_border_width(@parent.attr_handle)
        shadow_type = Converter.wcs_to_mbcs(nil, "shadow_type", true)
        shadow = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_widget_style_get(@parent.attr_handle, shadow_type, shadow, 0)
        if (!(shadow[0]).equal?(OS::GTK_SHADOW_NONE))
          border += OS.gtk_style_get_xthickness(OS.gtk_widget_get_style(@parent.attr_handle))
        end
        if (!((@parent.attr_style & SWT::VERTICAL)).equal?(0))
          x = border
          y = OS._gtk_widget_y(top_handle_) + border
          width = OS._gtk_widget_width(@parent.attr_handle) - border * 2
          height = OS._gtk_widget_height(top_handle_)
        else
          x = OS._gtk_widget_x(top_handle_) + border
          y = border
          width = OS._gtk_widget_width(top_handle_)
          height = OS._gtk_widget_height(@parent.attr_handle) - border * 2
        end
      else
        x = OS._gtk_widget_x(top_handle_)
        y = OS._gtk_widget_y(top_handle_)
        width = OS._gtk_widget_width(top_handle_)
        height = OS._gtk_widget_height(top_handle_)
      end
      if (!((@parent.attr_style & SWT::MIRRORED)).equal?(0))
        x = @parent.get_client_width - width - x
      end
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0) && !(@control).nil?)
        height = Math.max(height, 23)
      end
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [] }
    # Returns the control that is used to fill the bounds of
    # the item when the item is a <code>SEPARATOR</code>.
    # 
    # @return the control
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_control
      check_widget
      return @control
    end
    
    typesig { [] }
    # Returns the receiver's disabled image if it has one, or null
    # if it does not.
    # <p>
    # The disabled image is displayed when the receiver is disabled.
    # </p>
    # 
    # @return the receiver's disabled image
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_disabled_image
      check_widget
      return @disabled_image
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is enabled, and
    # <code>false</code> otherwise. A disabled control is typically
    # not selectable from the user interface and draws with an
    # inactive or "grayed" look.
    # 
    # @return the receiver's enabled state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #isEnabled
    def get_enabled
      check_widget
      # int
      top_handle_ = top_handle
      return OS._gtk_widget_sensitive(top_handle_)
    end
    
    typesig { [] }
    # Returns the receiver's hot image if it has one, or null
    # if it does not.
    # <p>
    # The hot image is displayed when the mouse enters the receiver.
    # </p>
    # 
    # @return the receiver's hot image
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_hot_image
      check_widget
      return @hot_image
    end
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>ToolBar</code>.
    # 
    # @return the receiver's parent
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_parent
      check_widget
      if ((@parent).nil?)
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return @parent
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is selected,
    # and false otherwise.
    # <p>
    # When the receiver is of type <code>CHECK</code> or <code>RADIO</code>,
    # it is selected when it is checked (which some platforms draw as a
    # pushed in button). If the receiver is of any other type, this method
    # returns false.
    # </p>
    # 
    # @return the selection state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection
      check_widget
      if (((self.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0))
        return false
      end
      return OS.gtk_toggle_button_get_active(self.attr_handle)
    end
    
    typesig { [] }
    # Returns the receiver's tool tip text, or null if it has not been set.
    # 
    # @return the receiver's tool tip text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
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
      @parent.force_resize
      # int
      top_handle_ = top_handle
      return OS._gtk_widget_width(top_handle_)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_button_press_event(widget, event)
      gdk_event = GdkEventButton.new
      OS.memmove(gdk_event, event, GdkEventButton.attr_sizeof)
      x = gdk_event.attr_x
      gdk_event.attr_x += OS._gtk_widget_x(self.attr_handle)
      y = gdk_event.attr_y
      gdk_event.attr_y += OS._gtk_widget_y(self.attr_handle)
      OS.memmove(event, gdk_event, GdkEventButton.attr_sizeof)
      # int
      result = @parent.gtk_button_press_event(widget, event)
      gdk_event.attr_x = x
      gdk_event.attr_y = y
      OS.memmove(event, gdk_event, GdkEventButton.attr_sizeof)
      return result
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_button_release_event(widget, event)
      gdk_event = GdkEventButton.new
      OS.memmove(gdk_event, event, GdkEventButton.attr_sizeof)
      x = gdk_event.attr_x
      gdk_event.attr_x += OS._gtk_widget_x(self.attr_handle)
      y = gdk_event.attr_y
      gdk_event.attr_y += OS._gtk_widget_y(self.attr_handle)
      OS.memmove(event, gdk_event, GdkEventButton.attr_sizeof)
      # int
      result = @parent.gtk_button_release_event(widget, event)
      gdk_event.attr_x = x
      gdk_event.attr_y = y
      OS.memmove(event, gdk_event, GdkEventButton.attr_sizeof)
      return result
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def gtk_clicked(widget)
      event = Event.new
      if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
        # int
        event_ptr = OS.gtk_get_current_event
        if (!(event_ptr).equal?(0))
          gdk_event = GdkEvent.new
          OS.memmove(gdk_event, event_ptr, GdkEvent.attr_sizeof)
          case (gdk_event.attr_type)
          when OS::GDK_BUTTON_PRESS, OS::GDK_2BUTTON_PRESS, OS::GDK_BUTTON_RELEASE
            x_win = Array.typed(::Java::Double).new(1) { 0.0 }
            y_win = Array.typed(::Java::Double).new(1) { 0.0 }
            OS.gdk_event_get_coords(event_ptr, x_win, y_win)
            x = OS._gtk_widget_x(@arrow_handle) - OS._gtk_widget_x(self.attr_handle)
            width = OS._gtk_widget_width(@arrow_handle)
            if (((((@parent.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0)) && x <= RJava.cast_to_int(x_win[0])) || ((!((@parent.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0)) && RJava.cast_to_int(x_win[0]) <= x + width))
              event.attr_detail = SWT::ARROW
              # int
              top_handle_ = top_handle
              event.attr_x = OS._gtk_widget_x(top_handle_)
              if (!((@parent.attr_style & SWT::MIRRORED)).equal?(0))
                event.attr_x = @parent.get_client_width - OS._gtk_widget_width(top_handle_) - event.attr_x
              end
              event.attr_y = OS._gtk_widget_y(top_handle_) + OS._gtk_widget_height(top_handle_)
            end
          end
          OS.gdk_event_free(event_ptr)
        end
      end
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        if (((@parent.get_style & SWT::NO_RADIO_GROUP)).equal?(0))
          select_radio
        end
      end
      post_event(SWT::Selection, event)
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_enter_notify_event(widget, event)
      @parent.gtk_enter_notify_event(widget, event)
      @draw_hot_image = !((@parent.attr_style & SWT::FLAT)).equal?(0) && !(@hot_image).nil?
      if (@draw_hot_image && !(@image_handle).equal?(0))
        image_list = @parent.attr_image_list
        if (!(image_list).nil?)
          index = image_list.index_of(@hot_image)
          if (!(index).equal?(-1))
            # int
            pixbuf = image_list.get_pixbuf(index)
            OS.gtk_image_set_from_pixbuf(@image_handle, pixbuf)
          end
        end
      end
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_event_after(widget, gdk_event)
      event = GdkEvent.new
      OS.memmove(event, gdk_event, GdkEvent.attr_sizeof)
      case (event.attr_type)
      when OS::GDK_BUTTON_PRESS
        gdk_event_button = GdkEventButton.new
        OS.memmove(gdk_event_button, gdk_event, GdkEventButton.attr_sizeof)
        if ((gdk_event_button.attr_button).equal?(3))
          @parent.show_menu(RJava.cast_to_int(gdk_event_button.attr_x_root), RJava.cast_to_int(gdk_event_button.attr_y_root))
        end
      end
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_focus_out_event(widget, event)
      OS._gtk_widget_unset_flags(self.attr_handle, OS::GTK_CAN_FOCUS)
      @parent.attr_last_focus = self
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_leave_notify_event(widget, event)
      @parent.gtk_leave_notify_event(widget, event)
      if (@draw_hot_image)
        @draw_hot_image = false
        if (!(@image_handle).equal?(0) && !(self.attr_image).nil?)
          image_list = @parent.attr_image_list
          if (!(image_list).nil?)
            index = image_list.index_of(self.attr_image)
            if (!(index).equal?(-1))
              # int
              pixbuf = image_list.get_pixbuf(index)
              OS.gtk_image_set_from_pixbuf(@image_handle, pixbuf)
            end
          end
        end
      end
      return 0
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def gtk_map(widget)
      @parent.fix_zorder
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_mnemonic_activate(widget, arg1)
      return @parent.gtk_mnemonic_activate(widget, arg1)
    end
    
    typesig { [] }
    def has_focus
      return OS._gtk_widget_has_focus(self.attr_handle)
    end
    
    typesig { [] }
    def hook_events
      super
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      OS.g_signal_connect_closure(self.attr_handle, OS.attr_clicked, self.attr_display.attr_closures[CLICKED], false)
      OS.g_signal_connect_closure_by_id(self.attr_handle, self.attr_display.attr_signal_ids[ENTER_NOTIFY_EVENT], 0, self.attr_display.attr_closures[ENTER_NOTIFY_EVENT], false)
      OS.g_signal_connect_closure_by_id(self.attr_handle, self.attr_display.attr_signal_ids[LEAVE_NOTIFY_EVENT], 0, self.attr_display.attr_closures[LEAVE_NOTIFY_EVENT], false)
      if (!(@label_handle).equal?(0))
        OS.g_signal_connect_closure_by_id(@label_handle, self.attr_display.attr_signal_ids[MNEMONIC_ACTIVATE], 0, self.attr_display.attr_closures[MNEMONIC_ACTIVATE], false)
      end
      OS.g_signal_connect_closure_by_id(self.attr_handle, self.attr_display.attr_signal_ids[FOCUS_OUT_EVENT], 0, self.attr_display.attr_closures[FOCUS_OUT_EVENT], false)
      # Feature in GTK.  Usually, GTK widgets propagate all events to their
      # parent when they are done their own processing.  However, in contrast
      # to other widgets, the buttons that make up the tool items, do not propagate
      # the mouse up/down events. It is interesting to note that they DO propagate
      # mouse motion events.  The fix is to explicitly forward mouse up/down events
      # to the parent.
      mask = OS::GDK_EXPOSURE_MASK | OS::GDK_POINTER_MOTION_MASK | OS::GDK_BUTTON_PRESS_MASK | OS::GDK_BUTTON_RELEASE_MASK | OS::GDK_ENTER_NOTIFY_MASK | OS::GDK_LEAVE_NOTIFY_MASK | OS::GDK_KEY_PRESS_MASK | OS::GDK_KEY_RELEASE_MASK | OS::GDK_FOCUS_CHANGE_MASK
      OS.gtk_widget_add_events(self.attr_handle, mask)
      OS.g_signal_connect_closure_by_id(self.attr_handle, self.attr_display.attr_signal_ids[BUTTON_PRESS_EVENT], 0, self.attr_display.attr_closures[BUTTON_PRESS_EVENT], false)
      OS.g_signal_connect_closure_by_id(self.attr_handle, self.attr_display.attr_signal_ids[BUTTON_RELEASE_EVENT], 0, self.attr_display.attr_closures[BUTTON_RELEASE_EVENT], false)
      OS.g_signal_connect_closure_by_id(self.attr_handle, self.attr_display.attr_signal_ids[EVENT_AFTER], 0, self.attr_display.attr_closures[EVENT_AFTER], false)
      # int
      top_handle_ = top_handle
      OS.g_signal_connect_closure_by_id(top_handle_, self.attr_display.attr_signal_ids[MAP], 0, self.attr_display.attr_closures[MAP], true)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is enabled and all
    # of the receiver's ancestors are enabled, and <code>false</code>
    # otherwise. A disabled control is typically not selectable from the
    # user interface and draws with an inactive or "grayed" look.
    # 
    # @return the receiver's enabled state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getEnabled
    def is_enabled
      check_widget
      return get_enabled && @parent.is_enabled
    end
    
    typesig { [] }
    def register
      super
      if (!(@label_handle).equal?(0))
        self.attr_display.add_widget(@label_handle, self)
      end
    end
    
    typesig { [] }
    def release_handle
      super
      @box_handle = @arrow_handle = @separator_handle = @label_handle = @image_handle = 0
    end
    
    typesig { [] }
    def release_widget
      super
      if ((@parent.attr_last_focus).equal?(self))
        @parent.attr_last_focus = nil
      end
      @parent = nil
      @control = nil
      @hot_image = @disabled_image = nil
      @tool_tip_text = RJava.cast_to_string(nil)
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
    
    typesig { [] }
    def resize_control
      if (!(@control).nil? && !@control.is_disposed)
        if (!(@separator_handle).equal?(0))
          OS.gtk_widget_hide(@separator_handle)
        end
        # Set the size and location of the control
        # separately to minimize flashing in the
        # case where the control does not resize
        # to the size that was requested.  This
        # case can occur when the control is a
        # combo box.
        item_rect = get_bounds
        @control.set_size(item_rect.attr_width, item_rect.attr_height)
        OS.gtk_widget_set_size_request(self.attr_handle, item_rect.attr_width, item_rect.attr_height)
        rect = @control.get_bounds
        rect.attr_x = item_rect.attr_x + (item_rect.attr_width - rect.attr_width) / 2
        rect.attr_y = item_rect.attr_y + (item_rect.attr_height - rect.attr_height) / 2
        @control.set_location(rect.attr_x, rect.attr_y)
      else
        if (!(@separator_handle).equal?(0))
          OS.gtk_widget_show(@separator_handle)
        end
      end
    end
    
    typesig { [] }
    def select_radio
      index = 0
      items = @parent.get_items
      while (index < items.attr_length && !(items[index]).equal?(self))
        index += 1
      end
      i = index - 1
      while (i >= 0 && items[i].set_radio_selection(false))
        (i -= 1)
      end
      j = index + 1
      while (j < items.attr_length && items[j].set_radio_selection(false))
        j += 1
      end
      set_selection(true)
    end
    
    typesig { [Control] }
    # Sets the control that is used to fill the bounds of
    # the item when the item is a <code>SEPARATOR</code>.
    # 
    # @param control the new control
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the control has been disposed</li>
    # <li>ERROR_INVALID_PARENT - if the control is not in the same widget tree</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_control(control)
      check_widget
      if (!(control).nil?)
        if (control.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (!(control.attr_parent).equal?(@parent))
          error(SWT::ERROR_INVALID_PARENT)
        end
      end
      if (((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      if ((@control).equal?(control))
        return
      end
      @control = control
      @parent.relayout
    end
    
    typesig { [Image] }
    # Sets the receiver's disabled image to the argument, which may be
    # null indicating that no disabled image should be displayed.
    # <p>
    # The disabled image is displayed when the receiver is disabled.
    # </p>
    # 
    # @param image the disabled image to display on the receiver (may be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the image has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_disabled_image(image)
      check_widget
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      @disabled_image = image
    end
    
    typesig { [::Java::Boolean] }
    # Enables the receiver if the argument is <code>true</code>,
    # and disables it otherwise.
    # <p>
    # A disabled control is typically
    # not selectable from the user interface and draws with an
    # inactive or "grayed" look.
    # </p>
    # 
    # @param enabled the new enabled state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_enabled(enabled)
      check_widget
      # int
      top_handle_ = top_handle
      OS.gtk_widget_set_sensitive(top_handle_, enabled)
      if (enabled)
        # Bug in GTK.  GtkButton requires an enter notify before it
        # allows the button to be pressed, but events are dropped when
        # widgets are insensitive.  The fix is to hide and show the
        # button if the pointer is within its bounds.
        x = Array.typed(::Java::Int).new(1) { 0 }
        y = Array.typed(::Java::Int).new(1) { 0 }
        OS.gdk_window_get_pointer(@parent.paint_window, x, y, nil)
        if (get_bounds.contains(x[0], y[0]))
          OS.gtk_widget_hide(self.attr_handle)
          OS.gtk_widget_show(self.attr_handle)
        end
      end
    end
    
    typesig { [] }
    def set_focus
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return false
      end
      if (!OS.gtk_widget_get_child_visible(self.attr_handle))
        return false
      end
      OS._gtk_widget_set_flags(self.attr_handle, OS::GTK_CAN_FOCUS)
      OS.gtk_widget_grab_focus(self.attr_handle)
      result = OS.gtk_widget_is_focus(self.attr_handle)
      if (!result)
        OS._gtk_widget_unset_flags(self.attr_handle, OS::GTK_CAN_FOCUS)
      end
      return result
    end
    
    typesig { [::Java::Long] }
    # int
    def set_font_description(font)
      OS.gtk_widget_modify_font(self.attr_handle, font)
      if (!(@label_handle).equal?(0))
        OS.gtk_widget_modify_font(@label_handle, font)
      end
      if (!(@image_handle).equal?(0))
        OS.gtk_widget_modify_font(@image_handle, font)
      end
    end
    
    typesig { [GdkColor] }
    def set_foreground_color(color)
      set_foreground_color(self.attr_handle, color)
      if (!(@label_handle).equal?(0))
        set_foreground_color(@label_handle, color)
      end
      if (!(@image_handle).equal?(0))
        set_foreground_color(@image_handle, color)
      end
    end
    
    typesig { [Image] }
    # Sets the receiver's hot image to the argument, which may be
    # null indicating that no hot image should be displayed.
    # <p>
    # The hot image is displayed when the mouse enters the receiver.
    # </p>
    # 
    # @param image the hot image to display on the receiver (may be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the image has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_hot_image(image)
      check_widget
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      @hot_image = image
      if (!(image).nil?)
        image_list = @parent.attr_image_list
        if ((image_list).nil?)
          image_list = @parent.attr_image_list = ImageList.new
        end
        image_index = image_list.index_of(image)
        if ((image_index).equal?(-1))
          image_index = image_list.add(image)
        else
          image_list.put(image_index, image)
        end
      end
    end
    
    typesig { [Image] }
    def set_image(image)
      check_widget
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      super(image)
      if ((@image_handle).equal?(0))
        return
      end
      if (!(image).nil?)
        image_list = @parent.attr_image_list
        if ((image_list).nil?)
          image_list = @parent.attr_image_list = ImageList.new
        end
        image_index = image_list.index_of(image)
        if ((image_index).equal?(-1))
          image_index = image_list.add(image)
        else
          image_list.put(image_index, image)
        end
        # int
        pixbuf = image_list.get_pixbuf(image_index)
        OS.gtk_image_set_from_pixbuf(@image_handle, pixbuf)
        OS.gtk_widget_show(@image_handle)
      else
        OS.gtk_image_set_from_pixbuf(@image_handle, 0)
        OS.gtk_widget_hide(@image_handle)
      end
      @parent.relayout
    end
    
    typesig { [] }
    def set_orientation
      if (!((@parent.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        if (!(self.attr_handle).equal?(0))
          OS.gtk_widget_set_direction(self.attr_handle, OS::GTK_TEXT_DIR_RTL)
        end
        if (!(@label_handle).equal?(0))
          OS.gtk_widget_set_direction(@label_handle, OS::GTK_TEXT_DIR_RTL)
        end
        if (!(@image_handle).equal?(0))
          OS.gtk_widget_set_direction(@image_handle, OS::GTK_TEXT_DIR_RTL)
        end
        if (!(@separator_handle).equal?(0))
          OS.gtk_widget_set_direction(@separator_handle, OS::GTK_TEXT_DIR_RTL)
        end
        if (!(@arrow_handle).equal?(0))
          OS.gtk_widget_set_direction(@arrow_handle, OS::GTK_TEXT_DIR_RTL)
        end
        if (!(@box_handle).equal?(0))
          OS.gtk_widget_set_direction(@box_handle, OS::GTK_TEXT_DIR_RTL)
        end
        if (!(@arrow_box_handle).equal?(0))
          OS.gtk_widget_set_direction(@arrow_box_handle, OS::GTK_TEXT_DIR_RTL)
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    def set_radio_selection(value)
      if (((self.attr_style & SWT::RADIO)).equal?(0))
        return false
      end
      if (!(get_selection).equal?(value))
        set_selection(value)
        post_event(SWT::Selection)
      end
      return true
    end
    
    typesig { [::Java::Boolean] }
    # Sets the selection state of the receiver.
    # <p>
    # When the receiver is of type <code>CHECK</code> or <code>RADIO</code>,
    # it is selected when it is checked (which some platforms draw as a
    # pushed in button).
    # </p>
    # 
    # @param selected the new selection state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(selected)
      check_widget
      if (((self.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0))
        return
      end
      OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CLICKED)
      OS.gtk_toggle_button_set_active(self.attr_handle, selected)
      OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, CLICKED)
    end
    
    typesig { [String] }
    # Sets the receiver's text. The string may include
    # the mnemonic character.
    # </p>
    # <p>
    # Mnemonics are indicated by an '&amp;' that causes the next
    # character to be the mnemonic.  When the user presses a
    # key sequence that matches the mnemonic, a selection
    # event occurs. On most platforms, the mnemonic appears
    # underlined but may be emphasised in a platform specific
    # manner.  The mnemonic indicator character '&amp;' can be
    # escaped by doubling it in the string, causing a single
    # '&amp;' to be displayed.
    # </p>
    # 
    # @param string the new text
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the text is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_text(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      super(string)
      if ((@label_handle).equal?(0))
        return
      end
      chars = fix_mnemonic(string)
      buffer = Converter.wcs_to_mbcs(nil, chars, true)
      OS.gtk_label_set_text_with_mnemonic(@label_handle, buffer)
      if (!(string.length).equal?(0))
        OS.gtk_widget_show(@label_handle)
      else
        OS.gtk_widget_hide(@label_handle)
      end
      @parent.relayout
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
    def set_tool_tip_text(string)
      check_widget
      if ((@parent.attr_tool_tip_text).nil?)
        shell = @parent.__get_shell
        set_tool_tip_text(shell, string)
      end
      @tool_tip_text = string
    end
    
    typesig { [Shell, String] }
    def set_tool_tip_text(shell, new_string)
      shell.set_tool_tip_text(self.attr_handle, new_string)
    end
    
    typesig { [::Java::Int] }
    # Sets the width of the receiver, for <code>SEPARATOR</code> ToolItems.
    # 
    # @param width the new width
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_width(width)
      check_widget
      if (((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      if (width < 0)
        return
      end
      is_vertical = !((@parent.attr_style & SWT::VERTICAL)).equal?(0)
      OS.gtk_widget_set_size_request(@separator_handle, width, is_vertical ? 6 : 15)
      OS.gtk_widget_set_size_request(self.attr_handle, width, is_vertical ? 6 : 15)
      @parent.relayout
    end
    
    typesig { [::Java::Int] }
    def show_widget(index)
      if (!(self.attr_handle).equal?(0))
        OS.gtk_widget_show(self.attr_handle)
      end
      if (!(@box_handle).equal?(0))
        OS.gtk_widget_show(@box_handle)
      end
      if (!(@separator_handle).equal?(0))
        OS.gtk_widget_show(@separator_handle)
      end
      if (!(@arrow_box_handle).equal?(0))
        OS.gtk_widget_show(@arrow_box_handle)
      end
      if (!(@arrow_handle).equal?(0))
        OS.gtk_widget_show(@arrow_handle)
      end
      OS.gtk_toolbar_insert_widget(@parent.attr_handle, self.attr_handle, nil, nil, index)
    end
    
    private
    alias_method :initialize__tool_item, :initialize
  end
  
end
