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
  module MenuImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class are user interface objects that contain
  # menu items.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>BAR, DROP_DOWN, POP_UP, NO_RADIO_GROUP</dd>
  # <dd>LEFT_TO_RIGHT, RIGHT_TO_LEFT</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Help, Hide, Show </dd>
  # </dl>
  # <p>
  # Note: Only one of BAR, DROP_DOWN and POP_UP may be specified.
  # Only one of LEFT_TO_RIGHT or RIGHT_TO_LEFT may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#menu">Menu snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class Menu < MenuImports.const_get :Widget
    include_class_members MenuImports
    
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    attr_accessor :has_location
    alias_method :attr_has_location, :has_location
    undef_method :has_location
    alias_method :attr_has_location=, :has_location=
    undef_method :has_location=
    
    attr_accessor :cascade
    alias_method :attr_cascade, :cascade
    undef_method :cascade
    alias_method :attr_cascade=, :cascade=
    undef_method :cascade=
    
    attr_accessor :selected_item
    alias_method :attr_selected_item, :selected_item
    undef_method :selected_item
    alias_method :attr_selected_item=, :selected_item=
    undef_method :selected_item=
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    # long
    attr_accessor :im_item
    alias_method :attr_im_item, :im_item
    undef_method :im_item
    alias_method :attr_im_item=, :im_item=
    undef_method :im_item=
    
    attr_accessor :im_separator
    alias_method :attr_im_separator, :im_separator
    undef_method :im_separator
    alias_method :attr_im_separator=, :im_separator=
    undef_method :im_separator=
    
    attr_accessor :im_handle
    alias_method :attr_im_handle, :im_handle
    undef_method :im_handle
    alias_method :attr_im_handle=, :im_handle=
    undef_method :im_handle=
    
    attr_accessor :image_list
    alias_method :attr_image_list, :image_list
    undef_method :image_list
    alias_method :attr_image_list=, :image_list=
    undef_method :image_list=
    
    typesig { [Control] }
    # Constructs a new instance of this class given its parent,
    # and sets the style for the instance so that the instance
    # will be a popup menu on the given parent's shell.
    # <p>
    # After constructing a menu, it can be set into its parent
    # using <code>parent.setMenu(menu)</code>.  In this case, the parent may
    # be any control in the same widget tree as the parent.
    # </p>
    # 
    # @param parent a control which will be the parent of the new instance (cannot be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT#POP_UP
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent)
      initialize__menu(check_null(parent).menu_shell, SWT::POP_UP)
    end
    
    typesig { [Decorations, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Decorations</code>) and a style value
    # describing its behavior and appearance.
    # <p>
    # The style value is either one of the style constants defined in
    # class <code>SWT</code> which is applicable to instances of this
    # class, or must be built by <em>bitwise OR</em>'ing together
    # (that is, using the <code>int</code> "|" operator) two or more
    # of those <code>SWT</code> style constants. The class description
    # lists the style constants that are applicable to the class.
    # Style bits are also inherited from superclasses.
    # </p><p>
    # After constructing a menu or menuBar, it can be set into its parent
    # using <code>parent.setMenu(menu)</code> or <code>parent.setMenuBar(menuBar)</code>.
    # </p>
    # 
    # @param parent a decorations control which will be the parent of the new instance (cannot be null)
    # @param style the style of menu to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT#BAR
    # @see SWT#DROP_DOWN
    # @see SWT#POP_UP
    # @see SWT#NO_RADIO_GROUP
    # @see SWT#LEFT_TO_RIGHT
    # @see SWT#RIGHT_TO_LEFT
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @x = 0
      @y = 0
      @has_location = false
      @cascade = nil
      @selected_item = nil
      @parent = nil
      @im_item = 0
      @im_separator = 0
      @im_handle = 0
      @image_list = nil
      super(parent, check_style(style))
      @parent = parent
      create_widget(0)
    end
    
    typesig { [Menu] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>Menu</code>) and sets the style
    # for the instance so that the instance will be a drop-down
    # menu on the given parent's parent.
    # <p>
    # After constructing a drop-down menu, it can be set into its parentMenu
    # using <code>parentMenu.setMenu(menu)</code>.
    # </p>
    # 
    # @param parentMenu a menu which will be the parent of the new instance (cannot be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT#DROP_DOWN
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent_menu)
      initialize__menu(check_null(parent_menu).attr_parent, SWT::DROP_DOWN)
    end
    
    typesig { [MenuItem] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>MenuItem</code>) and sets the style
    # for the instance so that the instance will be a drop-down
    # menu on the given parent's parent menu.
    # <p>
    # After constructing a drop-down menu, it can be set into its parentItem
    # using <code>parentItem.setMenu(menu)</code>.
    # </p>
    # 
    # @param parentItem a menu item which will be the parent of the new instance (cannot be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT#DROP_DOWN
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent_item)
      initialize__menu(check_null(parent_item).attr_parent)
    end
    
    class_module.module_eval {
      typesig { [Control] }
      def check_null(control)
        if ((control).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        return control
      end
      
      typesig { [Menu] }
      def check_null(menu)
        if ((menu).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        return menu
      end
      
      typesig { [MenuItem] }
      def check_null(item)
        if ((item).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        return item
      end
      
      typesig { [::Java::Int] }
      def check_style(style)
        return check_bits(style, SWT::POP_UP, SWT::BAR, SWT::DROP_DOWN, 0, 0, 0)
      end
    }
    
    typesig { [::Java::Boolean] }
    def __set_visible(visible)
      if ((visible).equal?(OS._gtk_widget_mapped(self.attr_handle)))
        return
      end
      if (visible)
        send_event(SWT::Show)
        if (!(get_item_count).equal?(0))
          if ((OS::GTK_VERSION >= OS._version(2, 8, 0)))
            # Feature in GTK. ON_TOP shells will send out
            # SWT.Deactivate whenever a context menu is shown.
            # The fix is to prevent the menu from taking focus
            # when it is being shown in an ON_TOP shell.
            if (!((@parent.__get_shell.attr_style & SWT::ON_TOP)).equal?(0))
              OS.gtk_menu_shell_set_take_focus(self.attr_handle, false)
            end
          end
          # long
          address = @has_location ? self.attr_display.attr_menu_position_proc : 0
          # Bug in GTK.  The timestamp passed into gtk_menu_popup is used
          # to perform an X pointer grab.  It cannot be zero, else the grab
          # will fail.  The fix is to ensure that the timestamp of the last
          # event processed is used.
          OS.gtk_menu_popup(self.attr_handle, 0, 0, address, 0, 0, self.attr_display.get_last_event_time)
        else
          send_event(SWT::Hide)
        end
      else
        OS.gtk_menu_popdown(self.attr_handle)
      end
    end
    
    typesig { [::Java::Int] }
    # long
    def add_accelerators(accel_group)
      items = get_items
      i = 0
      while i < items.attr_length
        item = items[i]
        item.add_accelerators(accel_group)
        i += 1
      end
    end
    
    typesig { [MenuListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when menus are hidden or shown, by sending it
    # one of the messages defined in the <code>MenuListener</code>
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
    # @see MenuListener
    # @see #removeMenuListener
    def add_menu_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Hide, typed_listener)
      add_listener(SWT::Show, typed_listener)
    end
    
    typesig { [HelpListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when help events are generated for the control,
    # by sending it one of the messages defined in the
    # <code>HelpListener</code> interface.
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
    
    typesig { [::Java::Int] }
    def create_handle(index)
      self.attr_state |= HANDLE
      if (!((self.attr_style & SWT::BAR)).equal?(0))
        self.attr_handle = OS.gtk_menu_bar_new
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        # long
        vbox_handle = @parent.attr_vbox_handle
        OS.gtk_container_add(vbox_handle, self.attr_handle)
        OS.gtk_box_set_child_packing(vbox_handle, self.attr_handle, false, true, 0, OS::GTK_PACK_START)
      else
        self.attr_handle = OS.gtk_menu_new
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
      end
    end
    
    typesig { [::Java::Int] }
    # long
    def create_immenu(im_handle)
      if ((@im_handle).equal?(im_handle))
        return
      end
      @im_handle = im_handle
      if ((im_handle).equal?(0))
        if (!(@im_item).equal?(0))
          OS.gtk_widget_destroy(@im_item)
          @im_item = 0
        end
        if (!(@im_separator).equal?(0))
          OS.gtk_widget_destroy(@im_separator)
          @im_separator = 0
        end
        return
      end
      if ((@im_separator).equal?(0))
        @im_separator = OS.gtk_separator_menu_item_new
        OS.gtk_widget_show(@im_separator)
        OS.gtk_menu_shell_insert(self.attr_handle, @im_separator, -1)
      end
      if ((@im_item).equal?(0))
        buffer = Converter.wcs_to_mbcs(nil, SWT.get_message("SWT_InputMethods"), true)
        @im_item = OS.gtk_image_menu_item_new_with_label(buffer)
        OS.gtk_widget_show(@im_item)
        OS.gtk_menu_shell_insert(self.attr_handle, @im_item, -1)
      end
      # long
      im_submenu = OS.gtk_menu_new
      OS.gtk_im_multicontext_append_menuitems(im_handle, im_submenu)
      OS.gtk_menu_item_set_submenu(@im_item, im_submenu)
    end
    
    typesig { [::Java::Int] }
    def create_widget(index)
      check_orientation(@parent)
      super(index)
      @parent.add_menu(self)
    end
    
    typesig { [Decorations] }
    def fix_menus(new_parent)
      items = get_items
      i = 0
      while i < items.attr_length
        items[i].fix_menus(new_parent)
        i += 1
      end
      @parent.remove_menu(self)
      new_parent.add_menu(self)
      @parent = new_parent
    end
    
    typesig { [] }
    # public
    def get_bounds
      check_widget
      if (!OS._gtk_widget_mapped(self.attr_handle))
        return Rectangle.new(0, 0, 0, 0)
      end
      # long
      window = OS._gtk_widget_window(self.attr_handle)
      origin_x = Array.typed(::Java::Int).new(1) { 0 }
      origin_y = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_origin(window, origin_x, origin_y)
      x = origin_x[0] + OS._gtk_widget_x(self.attr_handle)
      y = origin_y[0] + OS._gtk_widget_y(self.attr_handle)
      width = OS._gtk_widget_width(self.attr_handle)
      height = OS._gtk_widget_height(self.attr_handle)
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [] }
    # Returns the default menu item or null if none has
    # been previously set.
    # 
    # @return the default menu item.
    # 
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_default_item
      check_widget
      return nil
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is enabled, and
    # <code>false</code> otherwise. A disabled menu is typically
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
    def get_item(index)
      check_widget
      # long
      list = OS.gtk_container_get_children(self.attr_handle)
      if ((list).equal?(0))
        error(SWT::ERROR_CANNOT_GET_ITEM)
      end
      count = OS.g_list_length(list)
      if (!(@im_separator).equal?(0))
        count -= 1
      end
      if (!(@im_item).equal?(0))
        count -= 1
      end
      if (!(0 <= index && index < count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      # long
      data = OS.g_list_nth_data(list, index)
      OS.g_list_free(list)
      if ((data).equal?(0))
        error(SWT::ERROR_CANNOT_GET_ITEM)
      end
      return self.attr_display.get_widget(data)
    end
    
    typesig { [] }
    # Returns the number of items contained in the receiver.
    # 
    # @return the number of items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_count
      check_widget
      # long
      list = OS.gtk_container_get_children(self.attr_handle)
      if ((list).equal?(0))
        return 0
      end
      count = OS.g_list_length(list)
      OS.g_list_free(list)
      if (!(@im_separator).equal?(0))
        count -= 1
      end
      if (!(@im_item).equal?(0))
        count -= 1
      end
      return count
    end
    
    typesig { [] }
    # Returns a (possibly empty) array of <code>MenuItem</code>s which
    # are the items in the receiver.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of items, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return the items in the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_items
      check_widget
      # long
      list = OS.gtk_container_get_children(self.attr_handle)
      if ((list).equal?(0))
        return Array.typed(MenuItem).new(0) { nil }
      end
      count = OS.g_list_length(list)
      if (!(@im_separator).equal?(0))
        count -= 1
      end
      if (!(@im_item).equal?(0))
        count -= 1
      end
      items = Array.typed(MenuItem).new(count) { nil }
      index = 0
      i = 0
      while i < count
        # long
        data = OS.g_list_nth_data(list, i)
        item = self.attr_display.get_widget(data)
        if (!(item).nil?)
          items[((index += 1) - 1)] = item
        end
        i += 1
      end
      OS.g_list_free(list)
      if (!(index).equal?(items.attr_length))
        new_items = Array.typed(MenuItem).new(index) { nil }
        System.arraycopy(items, 0, new_items, 0, index)
        items = new_items
      end
      return items
    end
    
    typesig { [] }
    def get_name_text
      result = ""
      items = get_items
      length = items.attr_length
      if (length > 0)
        i = 0
        while i < length - 1
          result = result + RJava.cast_to_string(items[i].get_name_text) + ", "
          i += 1
        end
        result = result + RJava.cast_to_string(items[length - 1].get_name_text)
      end
      return result
    end
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>Decorations</code>.
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
    # <code>MenuItem</code> or null when the receiver is a
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
      return @cascade
    end
    
    typesig { [] }
    # Returns the receiver's parent item, which must be a
    # <code>Menu</code> or null when the receiver is a
    # root.
    # 
    # @return the receiver's parent item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_parent_menu
      check_widget
      if ((@cascade).nil?)
        return nil
      end
      return @cascade.get_parent
    end
    
    typesig { [] }
    # Returns the receiver's shell. For all controls other than
    # shells, this simply returns the control's nearest ancestor
    # shell. Shells return themselves, even if they are children
    # of other shells.
    # 
    # @return the receiver's shell
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getParent
    def get_shell
      check_widget
      return @parent.get_shell
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is visible, and
    # <code>false</code> otherwise.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, this method
    # may still indicate that it is considered visible even though
    # it may not actually be showing.
    # </p>
    # 
    # @return the receiver's visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_visible
      check_widget
      if (!((self.attr_style & SWT::POP_UP)).equal?(0))
        popups = self.attr_display.attr_popups
        if (!(popups).nil?)
          i = 0
          while i < popups.attr_length
            if ((popups[i]).equal?(self))
              return true
            end
            i += 1
          end
        end
      end
      return OS._gtk_widget_mapped(self.attr_handle)
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_hide(widget)
      if (!((self.attr_style & SWT::POP_UP)).equal?(0))
        if (!(self.attr_display.attr_active_shell).nil?)
          self.attr_display.attr_active_shell = get_shell
        end
      end
      if (OS::GTK_VERSION >= OS._version(2, 6, 0))
        send_event(SWT::Hide)
      else
        # Bug in GTK.  In GTK 2.4 and earlier
        # a crash could occur if a menu item
        # was disposed within gtk_hide.  The
        # workaroud is to post the event instead
        # of send it on these platforms
        post_event(SWT::Hide)
      end
      return 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_show(widget)
      if (!((self.attr_style & SWT::POP_UP)).equal?(0))
        if (!(self.attr_display.attr_active_shell).nil?)
          self.attr_display.attr_active_shell = get_shell
        end
        return 0
      end
      send_event(SWT::Show)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_show_help(widget, help_type)
      if (send_help_event(help_type))
        OS.gtk_menu_shell_deactivate(self.attr_handle)
        return 1
      end
      return 0
    end
    
    typesig { [] }
    def hook_events
      super
      OS.g_signal_connect_closure_by_id(self.attr_handle, self.attr_display.attr_signal_ids[SHOW], 0, self.attr_display.attr_closures[SHOW], false)
      OS.g_signal_connect_closure_by_id(self.attr_handle, self.attr_display.attr_signal_ids[HIDE], 0, self.attr_display.attr_closures[HIDE], false)
      OS.g_signal_connect_closure_by_id(self.attr_handle, self.attr_display.attr_signal_ids[SHOW_HELP], 0, self.attr_display.attr_closures[SHOW_HELP], false)
    end
    
    typesig { [MenuItem] }
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
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def index_of(item)
      check_widget
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      items = get_items
      i = 0
      while i < items.attr_length
        if ((items[i]).equal?(item))
          return i
        end
        i += 1
      end
      return -1
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is enabled and all
    # of the receiver's ancestors are enabled, and <code>false</code>
    # otherwise. A disabled menu is typically not selectable from the
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
      parent_menu = get_parent_menu
      if ((parent_menu).nil?)
        return get_enabled && @parent.is_enabled
      end
      return get_enabled && parent_menu.is_enabled
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is visible and all
    # of the receiver's ancestors are visible and <code>false</code>
    # otherwise.
    # 
    # @return the receiver's visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getVisible
    def is_visible
      check_widget
      return get_visible
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def menu_position_proc(menu, x, y, push_in, user_data)
      # Feature in GTK.  The menu position function sets the position of the
      # top-left pixel of the menu.  If the menu would be off-screen, GTK will
      # add a scroll arrow at the bottom and position the first menu entry at
      # the specified position.  The fix is to flip the menu location to be
      # completely inside the screen.
      # 
      # NOTE: This code doesn't work for multiple monitors.
      requisition = GtkRequisition.new
      OS.gtk_widget_size_request(menu, requisition)
      screen_height = OS.gdk_screen_height
      reqy = @y
      if (reqy + requisition.attr_height > screen_height)
        reqy = Math.max(0, reqy - requisition.attr_height)
      end
      screen_width = OS.gdk_screen_width
      reqx = @x
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        if (reqx - requisition.attr_width >= 0)
          reqx -= requisition.attr_width
        end
      else
        if (reqx + requisition.attr_width > screen_width)
          reqx -= requisition.attr_width
        end
      end
      if (!(x).equal?(0))
        OS.memmove___org_eclipse_swt_widgets_menu_1(x, Array.typed(::Java::Int).new([reqx]), 4)
      end
      if (!(y).equal?(0))
        OS.memmove___org_eclipse_swt_widgets_menu_3(y, Array.typed(::Java::Int).new([reqy]), 4)
      end
      if (!(push_in).equal?(0))
        OS.memmove___org_eclipse_swt_widgets_menu_5(push_in, Array.typed(::Java::Int).new([1]), 4)
      end
      return 0
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      items = get_items
      i = 0
      while i < items.attr_length
        item = items[i]
        if (!(item).nil? && !item.is_disposed)
          item.release(false)
        end
        i += 1
      end
      super(destroy)
    end
    
    typesig { [] }
    def release_parent
      super
      if (!(@cascade).nil?)
        @cascade.set_menu(nil)
      end
      if (!((self.attr_style & SWT::BAR)).equal?(0) && (self).equal?(@parent.attr_menu_bar))
        @parent.set_menu_bar(nil)
      else
        if (!((self.attr_style & SWT::POP_UP)).equal?(0))
          self.attr_display.remove_popup(self)
        end
      end
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@parent).nil?)
        @parent.remove_menu(self)
      end
      @parent = nil
      @cascade = nil
      @im_item = @im_separator = @im_handle = 0
      if (!(@image_list).nil?)
        @image_list.dispose
      end
      @image_list = nil
    end
    
    typesig { [MenuListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the menu events are generated for the control.
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
    # @see MenuListener
    # @see #addMenuListener
    def remove_menu_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Hide, listener)
      self.attr_event_table.unhook(SWT::Show, listener)
    end
    
    typesig { [::Java::Int] }
    # long
    def remove_accelerators(accel_group)
      items = get_items
      i = 0
      while i < items.attr_length
        item = items[i]
        item.remove_accelerators(accel_group)
        i += 1
      end
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
    
    typesig { [::Java::Int] }
    # long
    def send_help_event(help_type)
      if (!(@selected_item).nil? && !@selected_item.is_disposed)
        if (@selected_item.hooks(SWT::Help))
          @selected_item.post_event(SWT::Help)
          return true
        end
      end
      if (hooks(SWT::Help))
        post_event(SWT::Help)
        return true
      end
      return @parent.send_help_event(help_type)
    end
    
    typesig { [MenuItem] }
    # Sets the default menu item to the argument or removes
    # the default emphasis when the argument is <code>null</code>.
    # 
    # @param item the default menu item or null
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the menu item has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_default_item(item)
      check_widget
    end
    
    typesig { [::Java::Boolean] }
    # Enables the receiver if the argument is <code>true</code>,
    # and disables it otherwise. A disabled menu is typically
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
      if (enabled)
        OS._gtk_widget_set_flags(self.attr_handle, OS::GTK_SENSITIVE)
      else
        OS._gtk_widget_unset_flags(self.attr_handle, OS::GTK_SENSITIVE)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Sets the location of the receiver, which must be a popup,
    # to the point specified by the arguments which are relative
    # to the display.
    # <p>
    # Note that this is different from most widgets where the
    # location of the widget is relative to the parent.
    # </p><p>
    # Note that the platform window manager ultimately has control
    # over the location of popup menus.
    # </p>
    # 
    # @param x the new x coordinate for the receiver
    # @param y the new y coordinate for the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_location(x, y)
      check_widget
      if (!((self.attr_style & (SWT::BAR | SWT::DROP_DOWN))).equal?(0))
        return
      end
      @x = x
      @y = y
      @has_location = true
    end
    
    typesig { [Point] }
    # Sets the location of the receiver, which must be a popup,
    # to the point specified by the argument which is relative
    # to the display.
    # <p>
    # Note that this is different from most widgets where the
    # location of the widget is relative to the parent.
    # </p><p>
    # Note that the platform window manager ultimately has control
    # over the location of popup menus.
    # </p>
    # 
    # @param location the new location for the receiver
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.1
    def set_location(location)
      check_widget
      if ((location).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_location(location.attr_x, location.attr_y)
    end
    
    typesig { [] }
    def set_orientation
      if (!((@parent.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        if (!(self.attr_handle).equal?(0))
          OS.gtk_widget_set_direction(self.attr_handle, OS::GTK_TEXT_DIR_RTL)
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    # Marks the receiver as visible if the argument is <code>true</code>,
    # and marks it invisible otherwise.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, marking
    # it visible may not actually cause it to be displayed.
    # </p>
    # 
    # @param visible the new visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_visible(visible)
      check_widget
      if (!((self.attr_style & (SWT::BAR | SWT::DROP_DOWN))).equal?(0))
        return
      end
      if (visible)
        self.attr_display.add_popup(self)
      else
        self.attr_display.remove_popup(self)
        __set_visible(false)
      end
    end
    
    private
    alias_method :initialize__menu, :initialize
  end
  
end
