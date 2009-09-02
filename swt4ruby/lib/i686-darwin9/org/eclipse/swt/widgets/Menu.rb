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
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
    
    # the handle to the OS resource
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    attr_accessor :ns_menu
    alias_method :attr_ns_menu, :ns_menu
    undef_method :ns_menu
    alias_method :attr_ns_menu=, :ns_menu=
    undef_method :ns_menu=
    
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
    
    attr_accessor :item_count
    alias_method :attr_item_count, :item_count
    undef_method :item_count
    alias_method :attr_item_count=, :item_count=
    undef_method :item_count=
    
    attr_accessor :has_location
    alias_method :attr_has_location, :has_location
    undef_method :has_location
    alias_method :attr_has_location=, :has_location=
    undef_method :has_location=
    
    attr_accessor :visible
    alias_method :attr_visible, :visible
    undef_method :visible
    alias_method :attr_visible=, :visible=
    undef_method :visible=
    
    attr_accessor :items
    alias_method :attr_items, :items
    undef_method :items
    alias_method :attr_items=, :items=
    undef_method :items=
    
    attr_accessor :cascade
    alias_method :attr_cascade, :cascade
    undef_method :cascade
    alias_method :attr_cascade=, :cascade=
    undef_method :cascade=
    
    attr_accessor :default_item
    alias_method :attr_default_item, :default_item
    undef_method :default_item
    alias_method :attr_default_item=, :default_item=
    undef_method :default_item=
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
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
      @ns_menu = nil
      @x = 0
      @y = 0
      @item_count = 0
      @has_location = false
      @visible = false
      @items = nil
      @cascade = nil
      @default_item = nil
      @parent = nil
      super(parent, check_style(style))
      @parent = parent
      create_widget
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
      if (!((self.attr_style & (SWT::BAR | SWT::DROP_DOWN))).equal?(0))
        return
      end
      tray_item = self.attr_display.attr_current_tray_item
      if (!(tray_item).nil? && visible)
        tray_item.show_menu(self)
        return
      end
      if (visible)
        shell = get_shell
        window = shell.attr_window
        location = nil
        if (@has_location)
          top_view = window.content_view
          shell_coord = self.attr_display.map(nil, shell, Point.new(@x, @y))
          location = NSPoint.new
          location.attr_x = shell_coord.attr_x
          location.attr_y = top_view.frame.attr_height - shell_coord.attr_y
        else
          location = window.mouse_location_outside_of_event_stream
        end
        # Hold on to window in case it is disposed while the popup is open.
        window.retain
        ns_event = NSEvent.other_event_with_type(OS::NSApplicationDefined, location, 0, 0.0, window.window_number, window.graphics_context, RJava.cast_to_short(0), 0, 0)
        NSMenu.pop_up_context_menu(@ns_menu, ns_event, shell.attr_view)
        window.release
      else
        @ns_menu.cancel_tracking
      end
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
    
    typesig { [] }
    def create_handle
      self.attr_display.add_menu(self)
      widget = SWTMenu.new.alloc
      widget = widget.init_with_title(NSString.string_with(""))
      widget.set_autoenables_items(false)
      widget.set_delegate(widget)
      @ns_menu = widget
    end
    
    typesig { [MenuItem, ::Java::Int] }
    def create_item(item, index)
      if (!(0 <= index && index <= @item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      ns_item = nil
      if (!((item.attr_style & SWT::SEPARATOR)).equal?(0))
        ns_item = NSMenuItem.separator_item
        ns_item.retain
      else
        ns_item = SWTMenuItem.new.alloc
        ns_item.init_with_title(NSString.string_with(""), 0, NSString.string_with(""))
        ns_item.set_target(ns_item)
        ns_item.set_action(OS.attr_sel_send_selection)
      end
      item.attr_ns_item = ns_item
      item.create_jniref
      item.register
      @ns_menu.insert_item(ns_item, index)
      if ((@item_count).equal?(@items.attr_length))
        new_items = Array.typed(MenuItem).new(@items.attr_length + 4) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
      end
      System.arraycopy(@items, index, @items, index + 1, ((@item_count += 1) - 1) - index)
      @items[index] = item
      empty_menu = item.create_empty_menu
      if (!(empty_menu).nil?)
        ns_item.set_submenu(empty_menu)
        empty_menu.release
      end
      if ((self.attr_display.attr_menu_bar).equal?(self))
        application = self.attr_display.attr_application
        menubar = application.main_menu
        if (!(menubar).nil?)
          ns_item.set_menu(nil)
          menubar.insert_item(ns_item, index + 1)
        end
      end
      # TODO - find a way to disable the menu instead of each item
      if (!get_enabled)
        ns_item.set_enabled(false)
      end
    end
    
    typesig { [] }
    def create_widget
      check_orientation(@parent)
      super
      @items = Array.typed(MenuItem).new(4) { nil }
    end
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget(@ns_menu)
    end
    
    typesig { [MenuItem] }
    def destroy_item(item)
      index = 0
      while (index < @item_count)
        if ((@items[index]).equal?(item))
          break
        end
        index += 1
      end
      if ((index).equal?(@item_count))
        return
      end
      System.arraycopy(@items, index + 1, @items, index, (@item_count -= 1) - index)
      @items[@item_count] = nil
      if ((@item_count).equal?(0))
        @items = Array.typed(MenuItem).new(4) { nil }
      end
      @ns_menu.remove_item(item.attr_ns_item)
      if ((self.attr_display.attr_menu_bar).equal?(self))
        application = self.attr_display.attr_application
        menubar = application.main_menu
        if (!(menubar).nil?)
          ns_item = item.attr_ns_item
          menubar.remove_item(ns_item)
        end
      end
    end
    
    typesig { [Decorations] }
    def fix_menus(new_parent)
      @parent = new_parent
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
      return @default_item
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
      return ((self.attr_state & DISABLED)).equal?(0)
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
      if (!(0 <= index && index < @item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      return @items[index]
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
      return @item_count
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
      result = Array.typed(MenuItem).new(@item_count) { nil }
      index = 0
      if (!(@items).nil?)
        i = 0
        while i < @item_count
          item = @items[i]
          if (!(item).nil? && !item.is_disposed)
            result[((index += 1) - 1)] = item
          end
          i += 1
        end
      end
      if (!(index).equal?(result.attr_length))
        new_items = Array.typed(MenuItem).new(index) { nil }
        System.arraycopy(result, 0, new_items, 0, index)
        result = new_items
      end
      return result
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
      if (!(@cascade).nil?)
        return @cascade.attr_parent
      end
      return nil
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
      if (!((self.attr_style & SWT::BAR)).equal?(0))
        return (self).equal?(@parent.menu_shell.attr_menu_bar)
      end
      if (!((self.attr_style & SWT::POP_UP)).equal?(0))
        popups = self.attr_display.attr_popups
        if ((popups).nil?)
          return false
        end
        i = 0
        while i < popups.attr_length
          if ((popups[i]).equal?(self))
            return true
          end
          i += 1
        end
      end
      return @visible
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
      i = 0
      while i < @item_count
        if ((@items[i]).equal?(item))
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def menu_will_highlight_item(id, sel, menu, item_id)
      widget = self.attr_display.get_widget(item_id)
      if (widget.is_a?(MenuItem))
        item = widget
        item.send_event(SWT::Arm)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def menu_needs_update(id, sel, menu)
      # This code is intentionally commented
      # sendEvent (SWT.Show);
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def menu_will_open(id, sel, menu)
      @visible = true
      send_event(SWT::Show)
      i = 0
      while i < @items.attr_length
        item = @items[i]
        if (!(item).nil?)
          item.update_accelerator(true)
        end
        i += 1
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def menu_did_close(id, sel, menu)
      send_event(SWT::Hide)
      @visible = false
      i = 0
      while i < @items.attr_length
        item = @items[i]
        if (!(item).nil?)
          item.update_accelerator(false)
        end
        i += 1
      end
    end
    
    typesig { [] }
    def register
      super
      self.attr_display.add_widget(@ns_menu, self)
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      if (!(@items).nil?)
        i = 0
        while i < @items.attr_length
          item = @items[i]
          if (!(item).nil? && !item.is_disposed)
            item.release(false)
          end
          i += 1
        end
        @items = nil
      end
      super(destroy)
    end
    
    typesig { [] }
    def release_handle
      super
      if (!(@ns_menu).nil?)
        @ns_menu.release
      end
      @ns_menu = nil
    end
    
    typesig { [] }
    def release_parent
      super
      if (!(@cascade).nil?)
        @cascade.set_menu(nil)
      end
      if (!((self.attr_style & SWT::BAR)).equal?(0) && (self).equal?(@parent.attr_menu_bar))
        @parent.set_menu_bar(nil)
      end
    end
    
    typesig { [] }
    def release_widget
      super
      self.attr_display.remove_menu(self)
      @parent = nil
      @cascade = @default_item = nil
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
      if (!(item).nil? && item.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @default_item = item
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
        self.attr_state &= ~DISABLED
      else
        self.attr_state |= DISABLED
      end
      # TODO - find a way to disable the menu instead of each item
      i = 0
      while i < @items.attr_length
        item = @items[i]
        if (!(item).nil?)
          # Feature in the Macintosh.  When a cascade menu
          # item is disabled, rather than disabling the item,
          # the submenu is disabled.
          # 
          # There is no fix for this at this time.
          item.attr_ns_item.set_enabled(enabled && item.get_enabled)
        end
        i += 1
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
      end
    end
    
    private
    alias_method :initialize__menu, :initialize
  end
  
end
