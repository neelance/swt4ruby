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
  module MenuItemImports #:nodoc:
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
  # that issues notification when pressed and released.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>CHECK, CASCADE, PUSH, RADIO, SEPARATOR</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Arm, Help, Selection</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles CHECK, CASCADE, PUSH, RADIO and SEPARATOR
  # may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class MenuItem < MenuItemImports.const_get :Item
    include_class_members MenuItemImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :menu
    alias_method :attr_menu, :menu
    undef_method :menu
    alias_method :attr_menu=, :menu=
    undef_method :menu=
    
    # int
    attr_accessor :group_handle
    alias_method :attr_group_handle, :group_handle
    undef_method :group_handle
    alias_method :attr_group_handle=, :group_handle=
    undef_method :group_handle=
    
    attr_accessor :accelerator
    alias_method :attr_accelerator, :accelerator
    undef_method :accelerator
    alias_method :attr_accelerator=, :accelerator=
    undef_method :accelerator=
    
    typesig { [Menu, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Menu</code>) and a style value
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
    # @param parent a menu control which will be the parent of the new instance (cannot be null)
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
    # @see SWT#CHECK
    # @see SWT#CASCADE
    # @see SWT#PUSH
    # @see SWT#RADIO
    # @see SWT#SEPARATOR
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @parent = nil
      @menu = nil
      @group_handle = 0
      @accelerator = 0
      super(parent, check_style(style))
      @parent = parent
      create_widget(parent.get_item_count)
    end
    
    typesig { [Menu, ::Java::Int, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Menu</code>), a style value
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
    # @param parent a menu control which will be the parent of the new instance (cannot be null)
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
    # @see SWT#CHECK
    # @see SWT#CASCADE
    # @see SWT#PUSH
    # @see SWT#RADIO
    # @see SWT#SEPARATOR
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style, index)
      @parent = nil
      @menu = nil
      @group_handle = 0
      @accelerator = 0
      super(parent, check_style(style))
      @parent = parent
      count = parent.get_item_count
      if (!(0 <= index && index <= count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      create_widget(index)
    end
    
    typesig { [::Java::Long] }
    # int
    def add_accelerator(accel_group)
      update_accelerator(accel_group, true)
    end
    
    typesig { [::Java::Long] }
    # int
    def add_accelerators(accel_group)
      add_accelerator(accel_group)
      if (!(@menu).nil?)
        @menu.add_accelerators(accel_group)
      end
    end
    
    typesig { [ArmListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the arm events are generated for the control, by sending
    # it one of the messages defined in the <code>ArmListener</code>
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
    # @see ArmListener
    # @see #removeArmListener
    def add_arm_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Arm, typed_listener)
    end
    
    typesig { [HelpListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the help events are generated for the control, by sending
    # it one of the messages defined in the <code>HelpListener</code>
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
    # @see HelpListener
    # @see #removeHelpListener
    def add_help_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Help, typed_listener)
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the menu item is selected by the user, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # When <code>widgetSelected</code> is called, the stateMask field of the event object is valid.
    # <code>widgetDefaultSelected</code> is not called.
    # </p>
    # 
    # @param listener the listener which should be notified when the menu item is selected by the user
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
        return check_bits(style, SWT::PUSH, SWT::CHECK, SWT::RADIO, SWT::SEPARATOR, SWT::CASCADE, 0)
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
      buffer = Array.typed(::Java::Byte).new(1) { 0 }
      bits = SWT::CHECK | SWT::RADIO | SWT::PUSH | SWT::SEPARATOR
      case (self.attr_style & bits)
      when SWT::SEPARATOR
        self.attr_handle = OS.gtk_separator_menu_item_new
      when SWT::RADIO
        # Feature in GTK.  In GTK, radio button must always be part of
        # a radio button group.  In a GTK radio group, one button is always
        # selected.  This means that it is not possible to have a single
        # radio button that is unselected.  This is necessary to allow
        # applications to implement their own radio behavior or use radio
        # buttons outside of radio groups.  The fix is to create a hidden
        # radio button for each radio button we create and add them
        # to the same group.  This allows the visible button to be
        # unselected.
        @group_handle = OS.gtk_radio_menu_item_new(0)
        if ((@group_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.g_object_ref(@group_handle)
        OS.gtk_object_sink(@group_handle)
        # int
        group = OS.gtk_radio_menu_item_get_group(@group_handle)
        self.attr_handle = OS.gtk_radio_menu_item_new_with_label(group, buffer)
      when SWT::CHECK
        self.attr_handle = OS.gtk_check_menu_item_new_with_label(buffer)
      when SWT::PUSH
        self.attr_handle = OS.gtk_image_menu_item_new_with_label(buffer)
      else
        self.attr_handle = OS.gtk_image_menu_item_new_with_label(buffer)
      end
      if ((self.attr_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      if (((self.attr_style & SWT::SEPARATOR)).equal?(0))
        # int
        label = OS.gtk_bin_get_child(self.attr_handle)
        OS.gtk_accel_label_set_accel_widget(label, 0)
      end
      # int
      parent_handle = @parent.attr_handle
      enabled = OS._gtk_widget_sensitive(parent_handle)
      if (!enabled)
        OS._gtk_widget_set_flags(parent_handle, OS::GTK_SENSITIVE)
      end
      OS.gtk_menu_shell_insert(parent_handle, self.attr_handle, index)
      if (!enabled)
        OS._gtk_widget_unset_flags(parent_handle, OS::GTK_SENSITIVE)
      end
      OS.gtk_widget_show(self.attr_handle)
    end
    
    typesig { [Decorations] }
    def fix_menus(new_parent)
      if (!(@menu).nil?)
        @menu.fix_menus(new_parent)
      end
    end
    
    typesig { [] }
    # Returns the widget accelerator.  An accelerator is the bit-wise
    # OR of zero or more modifier masks and a key. Examples:
    # <code>SWT.CONTROL | SWT.SHIFT | 'T', SWT.ALT | SWT.F2</code>.
    # The default value is zero, indicating that the menu item does
    # not have an accelerator.
    # 
    # @return the accelerator or 0
    # 
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_accelerator
      check_widget
      return @accelerator
    end
    
    typesig { [] }
    # int
    def get_accel_group
      menu = @parent
      while (!(menu).nil? && !(menu.attr_cascade).nil?)
        menu = menu.attr_cascade.attr_parent
      end
      if ((menu).nil?)
        return 0
      end
      shell = menu.attr_parent
      return (shell.attr_menu_bar).equal?(menu) ? shell.attr_accel_group : 0
    end
    
    typesig { [] }
    # public
    def get_bounds
      check_widget
      if (!OS._gtk_widget_mapped(self.attr_handle))
        return Rectangle.new(0, 0, 0, 0)
      end
      x = OS._gtk_widget_x(self.attr_handle)
      y = OS._gtk_widget_y(self.attr_handle)
      width = OS._gtk_widget_width(self.attr_handle)
      height = OS._gtk_widget_height(self.attr_handle)
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is enabled, and
    # <code>false</code> otherwise. A disabled menu item is typically
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
      return OS._gtk_widget_sensitive(self.attr_handle)
    end
    
    typesig { [] }
    # Returns the receiver's cascade menu if it has one or null
    # if it does not. Only <code>CASCADE</code> menu items can have
    # a pull down menu. The sequence of key strokes, button presses
    # and/or button releases that are used to request a pull down
    # menu is platform specific.
    # 
    # @return the receiver's menu
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_menu
      check_widget
      return @menu
    end
    
    typesig { [] }
    def get_name_text
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return "|"
      end
      return super
    end
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>Menu</code>.
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
    # Returns <code>true</code> if the receiver is selected,
    # and false otherwise.
    # <p>
    # When the receiver is of type <code>CHECK</code> or <code>RADIO</code>,
    # it is selected when it is checked.
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
      return OS.gtk_check_menu_item_get_active(self.attr_handle)
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def gtk_activate(widget)
      if (!((self.attr_style & SWT::CASCADE)).equal?(0) && !(@menu).nil?)
        return 0
      end
      # Bug in GTK.  When an ancestor menu is disabled and
      # the user types an accelerator key, GTK delivers the
      # the activate signal even though the menu item cannot
      # be invoked using the mouse.  The fix is to ignore
      # activate signals when an ancestor menu is disabled.
      if (!is_enabled)
        return 0
      end
      event = Event.new
      # int
      ptr = OS.gtk_get_current_event
      if (!(ptr).equal?(0))
        gdk_event = GdkEvent.new
        OS.memmove___org_eclipse_swt_widgets_menu_item_1(gdk_event, ptr, GdkEvent.attr_sizeof)
        case (gdk_event.attr_type)
        when OS::GDK_KEY_PRESS, OS::GDK_KEY_RELEASE, OS::GDK_BUTTON_PRESS, OS::GDK_2BUTTON_PRESS, OS::GDK_BUTTON_RELEASE
          state = Array.typed(::Java::Int).new(1) { 0 }
          OS.gdk_event_get_state(ptr, state)
          set_input_state(event, state[0])
        end
        OS.gdk_event_free(ptr)
      end
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        if (((@parent.get_style & SWT::NO_RADIO_GROUP)).equal?(0))
          select_radio
        end
      end
      post_event___org_eclipse_swt_widgets_menu_item_3(SWT::Selection, event)
      return 0
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def gtk_select(item)
      @parent.attr_selected_item = self
      send_event(SWT::Arm)
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_show_help(widget, help_type)
      handled = hooks(SWT::Help)
      if (handled)
        post_event___org_eclipse_swt_widgets_menu_item_5(SWT::Help)
      else
        handled = @parent.send_help_event(help_type)
      end
      if (handled)
        OS.gtk_menu_shell_deactivate(@parent.attr_handle)
        return 1
      end
      return 0
    end
    
    typesig { [] }
    def hook_events
      super
      OS.g_signal_connect_closure(self.attr_handle, OS.attr_activate, self.attr_display.attr_closures[ACTIVATE], false)
      OS.g_signal_connect_closure(self.attr_handle, OS.attr_select, self.attr_display.attr_closures[SELECT], false)
      OS.g_signal_connect_closure_by_id(self.attr_handle, self.attr_display.attr_signal_ids[SHOW_HELP], 0, self.attr_display.attr_closures[SHOW_HELP], false)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is enabled and all
    # of the receiver's ancestors are enabled, and <code>false</code>
    # otherwise. A disabled menu item is typically not selectable from the
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
      return get_enabled && @parent.is_enabled
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      if (!(@menu).nil?)
        @menu.release(false)
        @menu = nil
      end
      super(destroy)
    end
    
    typesig { [] }
    def release_parent
      super
      if (!(@menu).nil?)
        if ((@menu.attr_selected_item).equal?(self))
          @menu.attr_selected_item = nil
        end
        @menu.dispose
      end
      @menu = nil
    end
    
    typesig { [] }
    def release_widget
      super
      # int
      accel_group = get_accel_group
      if (!(accel_group).equal?(0))
        remove_accelerator(accel_group)
      end
      if (!(@group_handle).equal?(0))
        OS.g_object_unref(@group_handle)
      end
      @group_handle = 0
      @accelerator = 0
      @parent = nil
    end
    
    typesig { [::Java::Long] }
    # int
    def remove_accelerator(accel_group)
      update_accelerator(accel_group, false)
    end
    
    typesig { [::Java::Long] }
    # int
    def remove_accelerators(accel_group)
      remove_accelerator(accel_group)
      if (!(@menu).nil?)
        @menu.remove_accelerators(accel_group)
      end
    end
    
    typesig { [ArmListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the arm events are generated for the control.
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
    # @see ArmListener
    # @see #addArmListener
    def remove_arm_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Arm, listener)
    end
    
    typesig { [HelpListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the help events are generated for the control.
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
    # @see HelpListener
    # @see #addHelpListener
    def remove_help_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Help, listener)
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
    
    typesig { [::Java::Int] }
    # Sets the widget accelerator.  An accelerator is the bit-wise
    # OR of zero or more modifier masks and a key. Examples:
    # <code>SWT.MOD1 | SWT.MOD2 | 'T', SWT.MOD3 | SWT.F2</code>.
    # <code>SWT.CONTROL | SWT.SHIFT | 'T', SWT.ALT | SWT.F2</code>.
    # The default value is zero, indicating that the menu item does
    # not have an accelerator.
    # 
    # @param accelerator an integer that is the bit-wise OR of masks and a key
    # 
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_accelerator(accelerator)
      check_widget
      if ((@accelerator).equal?(accelerator))
        return
      end
      # int
      accel_group = get_accel_group
      if (!(accel_group).equal?(0))
        remove_accelerator(accel_group)
      end
      @accelerator = accelerator
      if (!(accel_group).equal?(0))
        add_accelerator(accel_group)
      end
    end
    
    typesig { [::Java::Boolean] }
    # Enables the receiver if the argument is <code>true</code>,
    # and disables it otherwise. A disabled menu item is typically
    # not selectable from the user interface and draws with an
    # inactive or "grayed" look.
    # 
    # @param enabled the new enabled state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_enabled(enabled)
      check_widget
      if ((OS._gtk_widget_sensitive(self.attr_handle)).equal?(enabled))
        return
      end
      # int
      accel_group = get_accel_group
      if (!(accel_group).equal?(0))
        remove_accelerator(accel_group)
      end
      OS.gtk_widget_set_sensitive(self.attr_handle, enabled)
      if (!(accel_group).equal?(0))
        add_accelerator(accel_group)
      end
    end
    
    typesig { [Image] }
    # Sets the image the receiver will display to the argument.
    # <p>
    # Note: This operation is a hint and is not supported on
    # platforms that do not have this concept (for example, Windows NT).
    # Furthermore, some platforms (such as GTK), cannot display both
    # a check box and an image at the same time.  Instead, they hide
    # the image and display the check box.
    # </p>
    # 
    # @param image the image to display
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_image(image)
      check_widget
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      super(image)
      if (!OS._gtk_is_image_menu_item(self.attr_handle))
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
        # int
        image_handle = OS.gtk_image_new_from_pixbuf(pixbuf)
        OS.gtk_image_menu_item_set_image(self.attr_handle, image_handle)
        OS.gtk_widget_show(image_handle)
      else
        OS.gtk_image_menu_item_set_image(self.attr_handle, 0)
      end
    end
    
    typesig { [Menu] }
    # Sets the receiver's pull down menu to the argument.
    # Only <code>CASCADE</code> menu items can have a
    # pull down menu. The sequence of key strokes, button presses
    # and/or button releases that are used to request a pull down
    # menu is platform specific.
    # <p>
    # Note: Disposing of a menu item that has a pull down menu
    # will dispose of the menu.  To avoid this behavior, set the
    # menu to null before the menu item is disposed.
    # </p>
    # 
    # @param menu the new pull down menu
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_MENU_NOT_DROP_DOWN - if the menu is not a drop down menu</li>
    # <li>ERROR_MENUITEM_NOT_CASCADE - if the menu item is not a <code>CASCADE</code></li>
    # <li>ERROR_INVALID_ARGUMENT - if the menu has been disposed</li>
    # <li>ERROR_INVALID_PARENT - if the menu is not in the same widget tree</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_menu(menu)
      check_widget
      # Check to make sure the new menu is valid
      if (((self.attr_style & SWT::CASCADE)).equal?(0))
        error(SWT::ERROR_MENUITEM_NOT_CASCADE)
      end
      if (!(menu).nil?)
        if (((menu.attr_style & SWT::DROP_DOWN)).equal?(0))
          error(SWT::ERROR_MENU_NOT_DROP_DOWN)
        end
        if (!(menu.attr_parent).equal?(@parent.attr_parent))
          error(SWT::ERROR_INVALID_PARENT)
        end
      end
      # Assign the new menu
      old_menu = @menu
      if ((old_menu).equal?(menu))
        return
      end
      # int
      accel_group = get_accel_group
      if (!(accel_group).equal?(0))
        remove_accelerators(accel_group)
      end
      if (!(old_menu).nil?)
        old_menu.attr_cascade = nil
        # Add a reference to the menu we are about
        # to replace or GTK will destroy it.
        OS.g_object_ref(old_menu.attr_handle)
        OS.gtk_menu_item_remove_submenu(self.attr_handle)
      end
      if (!((@menu = menu)).nil?)
        menu.attr_cascade = self
        OS.gtk_menu_item_set_submenu(self.attr_handle, menu.attr_handle)
      end
      if (!(accel_group).equal?(0))
        add_accelerators(accel_group)
      end
    end
    
    typesig { [] }
    def set_orientation
      if (!((@parent.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        if (!(self.attr_handle).equal?(0))
          OS.gtk_widget_set_direction(self.attr_handle, OS::GTK_TEXT_DIR_RTL)
          OS.gtk_container_forall(self.attr_handle, self.attr_display.attr_set_direction_proc, OS::GTK_TEXT_DIR_RTL)
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
        post_event___org_eclipse_swt_widgets_menu_item_7(SWT::Selection)
      end
      return true
    end
    
    typesig { [::Java::Boolean] }
    # Sets the selection state of the receiver.
    # <p>
    # When the receiver is of type <code>CHECK</code> or <code>RADIO</code>,
    # it is selected when it is checked.
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
      OS.g_signal_handlers_block_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, ACTIVATE)
      OS.gtk_check_menu_item_set_active(self.attr_handle, selected)
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        OS.gtk_check_menu_item_set_active(@group_handle, !selected)
      end
      OS.g_signal_handlers_unblock_matched(self.attr_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, ACTIVATE)
    end
    
    typesig { [String] }
    # Sets the receiver's text. The string may include
    # the mnemonic character and accelerator text.
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
    # <p>
    # Accelerator text is indicated by the '\t' character.
    # On platforms that support accelerator text, the text
    # that follows the '\t' character is displayed to the user,
    # typically indicating the key stroke that will cause
    # the item to become selected.  On most platforms, the
    # accelerator text appears right aligned in the menu.
    # Setting the accelerator text does not install the
    # accelerator key sequence. The accelerator key sequence
    # is installed using #setAccelerator.
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
    # 
    # @see #setAccelerator
    def set_text(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      if ((self.attr_text == string))
        return
      end
      super(string)
      accel_string = ""
      index = string.index_of(Character.new(?\t.ord))
      if (!(index).equal?(-1))
        is_rtl = !((@parent.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0)
        accel_string = RJava.cast_to_string((is_rtl ? "" : "  ") + string.substring(index + 1, string.length) + (is_rtl ? "  " : ""))
        string = RJava.cast_to_string(string.substring(0, index))
      end
      chars = fix_mnemonic(string)
      buffer = Converter.wcs_to_mbcs(nil, chars, true)
      # int
      label = OS.gtk_bin_get_child(self.attr_handle)
      OS.gtk_label_set_text_with_mnemonic(label, buffer)
      buffer = Converter.wcs_to_mbcs(nil, accel_string, true)
      # int
      ptr = OS.g_malloc(buffer.attr_length)
      OS.memmove___org_eclipse_swt_widgets_menu_item_9(ptr, buffer, buffer.attr_length)
      # int
      old_ptr = OS._gtk_accel_label_get_accel_string(label)
      OS._gtk_accel_label_set_accel_string(label, ptr)
      if (!(old_ptr).equal?(0))
        OS.g_free(old_ptr)
      end
    end
    
    typesig { [::Java::Long, ::Java::Boolean] }
    # int
    def update_accelerator(accel_group, add_)
      if ((@accelerator).equal?(0) || !get_enabled)
        return
      end
      if (!((@accelerator & SWT::COMMAND)).equal?(0))
        return
      end
      mask = 0
      if (!((@accelerator & SWT::ALT)).equal?(0))
        mask |= OS::GDK_MOD1_MASK
      end
      if (!((@accelerator & SWT::SHIFT)).equal?(0))
        mask |= OS::GDK_SHIFT_MASK
      end
      if (!((@accelerator & SWT::CONTROL)).equal?(0))
        mask |= OS::GDK_CONTROL_MASK
      end
      keysym = @accelerator & SWT::KEY_MASK
      new_key = Display.untranslate_key(keysym)
      if (!(new_key).equal?(0))
        keysym = new_key
      else
        case (keysym)
        when Character.new(?\r.ord)
          keysym = OS::GDK_Return
        else
          keysym = Display.wcs_to_mbcs(RJava.cast_to_char(keysym))
        end
      end
      # When accel_key is zero, it causes GTK warnings
      if (!(keysym).equal?(0))
        if (add_)
          OS.gtk_widget_add_accelerator(self.attr_handle, OS.attr_activate, accel_group, keysym, mask, OS::GTK_ACCEL_VISIBLE)
        else
          OS.gtk_widget_remove_accelerator(self.attr_handle, accel_group, keysym, mask)
        end
      end
    end
    
    private
    alias_method :initialize__menu_item, :initialize
  end
  
end
