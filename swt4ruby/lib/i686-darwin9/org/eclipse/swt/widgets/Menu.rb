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
  module MenuImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :ATSFontMetrics
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :GDevice
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :MenuTrackingData
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Rect
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
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
    attr_accessor :id
    alias_method :attr_id, :id
    undef_method :id
    alias_method :attr_id=, :id=
    undef_method :id=
    
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
    
    # int width, height;
    attr_accessor :has_location
    alias_method :attr_has_location, :has_location
    undef_method :has_location
    alias_method :attr_has_location=, :has_location=
    undef_method :has_location=
    
    attr_accessor :modified
    alias_method :attr_modified, :modified
    undef_method :modified
    alias_method :attr_modified=, :modified=
    undef_method :modified=
    
    attr_accessor :closed
    alias_method :attr_closed, :closed
    undef_method :closed
    alias_method :attr_closed=, :closed=
    undef_method :closed=
    
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
    
    attr_accessor :last_target
    alias_method :attr_last_target, :last_target
    undef_method :last_target
    alias_method :attr_last_target=, :last_target=
    undef_method :last_target=
    
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
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @handle = 0
      @id = 0
      @x = 0
      @y = 0
      @item_count = 0
      @has_location = false
      @modified = false
      @closed = false
      @items = nil
      @cascade = nil
      @default_item = nil
      @last_target = nil
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
      if (visible)
        where = Org::Eclipse::Swt::Internal::Carbon::Point.new
        if (@has_location)
          where.attr_h = RJava.cast_to_short(@x)
          where.attr_v = RJava.cast_to_short(@y)
        else
          OS._get_global_mouse(where)
        end
        # Bug in the Macintosh.  When a menu is open with ContextualMenuSelect() the
        # system will add other items before displaying it and remove the items before
        # returning from the function.  If the menu is changed in kEventMenuOpening, the
        # system will fail to remove those items.  The fix is to send SWT.Show before
        # calling ContextualMenuSelect() instead of in kEventMenuOpening.
        send_event(SWT::Show)
        @modified = false
        # Feature in the Macintosh.  When the application FruitMenu is installed,
        # the output parameters cannot be NULL or ContextualMenuSelect() crashes.
        # The fix is to ensure they are not NULL.
        OS._contextual_menu_select(@handle, where, false, OS.attr_k_cmhelp_item_remove_help, nil, nil, Array.typed(::Java::Int).new(1) { 0 }, Array.typed(::Java::Short).new(1) { 0 }, Array.typed(::Java::Short).new(1) { 0 })
      else
        OS._cancel_menu_tracking(@handle, true, 0)
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
      out_menu_ref = Array.typed(::Java::Int).new(1) { 0 }
      OS._create_new_menu(@id, 0, out_menu_ref)
      if ((out_menu_ref[0]).equal?(0))
        self.attr_display.remove_menu(self)
        error(SWT::ERROR_NO_HANDLES)
      end
      @handle = out_menu_ref[0]
    end
    
    typesig { [MenuItem, ::Java::Int] }
    def create_item(item, index)
      check_widget
      if (!(0 <= index && index <= @item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      attributes = OS.attr_k_menu_item_attr_auto_repeat | OS.attr_k_menu_item_attr_custom_draw
      if (!((item.attr_style & SWT::SEPARATOR)).equal?(0))
        attributes = OS.attr_k_menu_item_attr_separator
      end
      result = OS._insert_menu_item_text_with_cfstring(@handle, 0, RJava.cast_to_short(index), attributes, 0)
      if (!(result).equal?(OS.attr_no_err))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
      if ((@item_count).equal?(@items.attr_length))
        new_items = Array.typed(MenuItem).new(@items.attr_length + 4) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
      end
      System.arraycopy(@items, index, @items, index + 1, ((@item_count += 1) - 1) - index)
      @items[index] = item
      @modified = true
      empty_menu = item.create_empty_menu
      if (!(empty_menu).equal?(0))
        OS._set_menu_item_hierarchical_menu(@handle, RJava.cast_to_short((index + 1)), empty_menu)
        OS._release_menu(empty_menu)
      end
    end
    
    typesig { [] }
    def create_widget
      check_orientation(@parent)
      super
      @items = Array.typed(MenuItem).new(4) { nil }
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
      @modified = true
      OS._delete_menu_item(@handle, RJava.cast_to_short((index + 1)))
    end
    
    typesig { [] }
    def destroy_widget
      the_menu = @handle
      release_handle
      if (!(the_menu).equal?(0))
        OS._dispose_menu(the_menu)
      end
    end
    
    typesig { [Decorations] }
    def fix_menus(new_parent)
      @parent = new_parent
    end
    
    typesig { [] }
    # public
    def get_bounds
      check_widget
      if (!((self.attr_style & SWT::BAR)).equal?(0))
        menu = self.attr_display.get_menu_bar
        if (!(self).equal?(menu))
          return Rectangle.new(0, 0, 0, 0)
        end
        height = OS._get_mbar_height
        gdevice = OS._get_main_device
        ptr = Array.typed(::Java::Int).new(1) { 0 }
        OS.memmove(ptr, gdevice, 4)
        device = GDevice.new
        OS.memmove(device, ptr[0], GDevice.attr_sizeof)
        return Rectangle.new(0, 0, device.attr_right - device.attr_left, height)
      end
      OS._calc_menu_size(@handle)
      return Rectangle.new(@x, @y, 0, 0)
      # return new Rectangle (x, y, width, height);
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
          result = result + (items[i].get_name_text).to_s + ", "
          i += 1
        end
        result = result + (items[length - 1].get_name_text).to_s
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
      out_data = MenuTrackingData.new
      return (OS._get_menu_tracking_data(@handle, out_data)).equal?(OS.attr_no_err)
    end
    
    typesig { [] }
    def hook_events
      super
      menu_proc = self.attr_display.attr_menu_proc
      mask = Array.typed(::Java::Int).new([OS.attr_k_event_class_menu, OS.attr_k_event_menu_calculate_size, OS.attr_k_event_class_menu, OS.attr_k_event_menu_closed, OS.attr_k_event_class_menu, OS.attr_k_event_menu_create_frame_view, OS.attr_k_event_class_menu, OS.attr_k_event_menu_draw_item, OS.attr_k_event_class_menu, OS.attr_k_event_menu_draw_item_content, OS.attr_k_event_class_menu, OS.attr_k_event_menu_measure_item_width, OS.attr_k_event_class_menu, OS.attr_k_event_menu_opening, OS.attr_k_event_class_menu, OS.attr_k_event_menu_target_item, ])
      menu_target = OS._get_menu_event_target(@handle)
      OS._install_event_handler(menu_target, menu_proc, mask.attr_length / 2, mask, @handle, nil)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_menu_calculate_size(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      the_control = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_control_ref, OS.attr_type_control_ref, nil, 4, nil, the_control)
      menu_proc = self.attr_display.attr_menu_proc
      mask = Array.typed(::Java::Int).new([OS.attr_k_event_class_menu, OS.attr_k_event_menu_get_frame_bounds, ])
      control_target = OS._get_control_event_target(the_control[0])
      # TODO - installed multi-times, does this matter?
      OS._install_event_handler(control_target, menu_proc, mask.attr_length / 2, mask, @handle, nil)
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_menu_closed(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      @closed = true
      # width = height = 0;
      # int count = OS.CountMenuItems (handle);
      # for (int i=0; i<count; i++) {
      # MenuItem item = items [i];
      # item.x = item.y = item.width = item.height = 0;
      # }
      # 
      # Feature in the Macintosh.  In order to populate the search field of
      # the help menu, the events kEventMenuOpening, kEventMenuClosed and
      # others are sent to sub menus even when the cascade item of the submenu
      # is disabled.  Normally, the user can never get to these submenus.
      # This means that application code does not expect SWT.Show and SWT.Hide
      # events.  The fix is to avoid the events when the cascade item is
      # disabled.
      send = true
      if (!(@cascade).nil? && !@cascade.get_enabled)
        send = false
      end
      if (send)
        send_event(SWT::Hide)
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_menu_create_frame_view(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      the_control = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_control_ref, OS.attr_type_control_ref, nil, 4, nil, the_control)
      menu_proc = self.attr_display.attr_menu_proc
      mask = Array.typed(::Java::Int).new([OS.attr_k_event_class_menu, OS.attr_k_event_menu_get_frame_bounds, ])
      control_target = OS._get_control_event_target(the_control[0])
      OS._install_event_handler(control_target, menu_proc, mask.attr_length / 2, mask, @handle, nil)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_menu_draw_item(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      # short [] index = new short [1];
      # OS.GetEventParameter (theEvent, OS.kEventParamMenuItemIndex, OS.typeMenuItemIndex, null, 2, null, index);
      # MenuItem item = items [index [0] - 1];
      # Rect rect = new Rect ();
      # OS.GetEventParameter (theEvent, OS.kEventParamMenuItemBounds, OS.typeQDRectangle, null, Rect.sizeof, null, rect);
      # item.x = rect.left - x;
      # item.y = rect.top - y;
      # item.width = rect.right - rect.left;
      # item.height = rect.bottom - rect.top;
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_menu_draw_item_content(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      index = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_menu_item_index, OS.attr_type_menu_item_index, nil, 2, nil, index)
      if (!(0 < index[0] && index[0] <= @item_count))
        return result
      end
      item = @items[index[0] - 1]
      if ((item.attr_accelerator).equal?(0))
        accel_index = item.attr_text.index_of(Character.new(?\t.ord))
        if (!(accel_index).equal?(-1))
          accel_text = item.attr_text.substring(accel_index + 1)
          length_ = accel_text.length
          if (!(length_).equal?(0))
            result = OS._call_next_event_handler(next_handler, the_event)
            rect = Rect.new
            OS._get_event_parameter(the_event, OS.attr_k_event_param_menu_item_bounds, OS.attr_type_qdrectangle, nil, Rect.attr_sizeof, nil, rect)
            context = Array.typed(::Java::Int).new(1) { 0 }
            OS._get_event_parameter(the_event, OS.attr_k_event_param_cgcontext_ref, OS.attr_type_cgcontext_ref, nil, 4, nil, context)
            # Draw the key
            modifier_index_ = modifier_index(accel_text)
            buffer = CharArray.new(length_ - modifier_index_ - 1)
            accel_text.get_chars(modifier_index_ + 1, length_, buffer, 0)
            theme_font = OS.attr_k_theme_menu_item_font
            if (buffer.attr_length > 1)
              theme_font = OS.attr_k_theme_menu_item_cmd_key_font
            end
            family = Array.typed(::Java::Byte).new(256) { 0 }
            size = Array.typed(::Java::Short).new(1) { 0 }
            style = Array.typed(::Java::Byte).new(1) { 0 }
            OS._get_theme_font(RJava.cast_to_short(theme_font), RJava.cast_to_short(OS.attr_sm_system_script), family, size, style)
            id = OS._fmget_font_family_from_name(family)
            font = Array.typed(::Java::Int).new(1) { 0 }
            OS._fmget_font_from_font_family_instance(id, style[0], font, nil)
            ats_font = OS._fmget_atsfont_ref_from_font(font[0])
            font_metrics = ATSFontMetrics.new
            OS._atsfont_get_vertical_metrics(ats_font, OS.attr_k_atsoption_flags_default, font_metrics)
            OS._atsfont_get_horizontal_metrics(ats_font, OS.attr_k_atsoption_flags_default, font_metrics)
            metric = Array.typed(::Java::Int).new(1) { 0 }
            OS._get_theme_metric(OS.attr_k_theme_metric_menu_icon_trailing_edge_margin, metric)
            str = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
            size1 = Org::Eclipse::Swt::Internal::Carbon::Point.new
            OS._get_theme_text_dimensions(str, RJava.cast_to_short(theme_font), 0, false, size1, nil)
            rect.attr_left = RJava.cast_to_short((rect.attr_right - Math.max(RJava.cast_to_int((font_metrics.attr_max_advance_width * size[0])), size1.attr_h) - metric[0]))
            OS._draw_theme_text_box(str, RJava.cast_to_short(theme_font), OS.attr_k_theme_state_active, false, rect, RJava.cast_to_short(OS.attr_te_flush_left), context[0])
            OS._cfrelease(str)
            # Draw the modifiers
            if (!(modifier_index_).equal?(-1))
              buffer = CharArray.new(modifier_index_ + 1)
              accel_text.get_chars(0, buffer.attr_length, buffer, 0)
              str = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
              OS._get_theme_text_dimensions(str, RJava.cast_to_short(OS.attr_k_theme_menu_item_cmd_key_font), 0, false, size1, nil)
              rect.attr_right = rect.attr_left
              rect.attr_left = RJava.cast_to_short((rect.attr_right - size1.attr_h))
              OS._draw_theme_text_box(str, RJava.cast_to_short(OS.attr_k_theme_menu_item_cmd_key_font), OS.attr_k_theme_state_active, false, rect, RJava.cast_to_short(OS.attr_te_flush_left), context[0])
              OS._cfrelease(str)
            end
            return result
          end
        end
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_menu_get_frame_bounds(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      result = OS._call_next_event_handler(next_handler, the_event)
      # CGRect rect = new CGRect ();
      # OS.GetEventParameter (theEvent, OS.kEventParamBounds, OS.typeHIRect, null, CGRect.sizeof, null, rect);
      # x = (int) rect.x;
      # y = (int) rect.y;
      # width = (int) rect.width;
      # height = (int) rect.height;
      # if (cascade != null) {
      # OS.GetEventParameter (theEvent, OS.kEventParamMenuItemBounds, OS.typeHIRect, null, CGRect.sizeof, null, rect);
      # cascade.x = (int) rect.x - x;
      # cascade.y = (int) rect.y - y;
      # cascade.width = (int) rect.width;
      # cascade.height = (int) rect.height;
      # }
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_menu_measure_item_width(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      index = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_menu_item_index, OS.attr_type_menu_item_index, nil, 2, nil, index)
      if (!(0 < index[0] && index[0] <= @item_count))
        return result
      end
      item = @items[index[0] - 1]
      if ((item.attr_accelerator).equal?(0))
        accel_index = item.attr_text.index_of(Character.new(?\t.ord))
        if (!(accel_index).equal?(-1))
          accel_text = item.attr_text.substring(accel_index + 1)
          if (!(accel_text.length).equal?(0))
            result = OS._call_next_event_handler(next_handler, the_event)
            buffer = CharArray.new(accel_text.length)
            accel_text.get_chars(0, buffer.attr_length, buffer, 0)
            str = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
            size = Org::Eclipse::Swt::Internal::Carbon::Point.new
            OS._get_theme_text_dimensions(str, RJava.cast_to_short(OS.attr_k_theme_menu_item_cmd_key_font), 0, false, size, nil)
            OS._cfrelease(str)
            width = Array.typed(::Java::Short).new(1) { 0 }
            OS._get_event_parameter(the_event, OS.attr_k_event_param_menu_item_width, OS.attr_type_sint16, nil, 2, nil, width)
            metric = Array.typed(::Java::Int).new(1) { 0 }
            OS._get_theme_metric(OS.attr_k_theme_metric_menu_text_trailing_edge_margin, metric)
            width[0] += metric[0] + size.attr_h
            OS._set_event_parameter(the_event, OS.attr_k_event_param_menu_item_width, OS.attr_type_sint16, 2, width)
            return result
          end
        end
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_menu_opening(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      @closed = false
      # Bug in the Macintosh.  When a menu is open with ContextualMenuSelect() the
      # system will add other items before displaying it and remove the items before
      # returning from the function.  If the menu is changed in kEventMenuOpening, the
      # system will fail to remove those items.  The fix is to send SWT.Show before
      # calling ContextualMenuSelect() instead of in kEventMenuOpening.
      if (((self.attr_style & SWT::POP_UP)).equal?(0))
        # Feature in the Macintosh.  In order to populate the search field of
        # the help menu, the events kEventMenuOpening, kEventMenuClosed and
        # others are sent to sub menus even when the cascade item of the submenu
        # is disabled.  Normally, the user can never get to these submenus.
        # This means that application code does not expect SWT.Show and SWT.Hide
        # events.  The fix is to avoid the events when the cascade item is
        # disabled.
        send = true
        if (!(@cascade).nil? && !@cascade.get_enabled)
          send = false
        end
        if (send)
          send_event(SWT::Show)
          @modified = false
        end
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_menu_target_item(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        return result
      end
      @last_target = nil
      index = Array.typed(::Java::Short).new(1) { 0 }
      if ((OS._get_event_parameter(the_event, OS.attr_k_event_param_menu_item_index, OS.attr_type_menu_item_index, nil, 2, nil, index)).equal?(OS.attr_no_err))
        if (0 < index[0] && index[0] <= @item_count)
          @last_target = @items[index[0] - 1]
        end
        if (!(@last_target).nil?)
          @last_target.send_event(SWT::Arm)
        end
      end
      return OS.attr_event_not_handled_err
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
    
    typesig { [String] }
    def modifier_index(accel_text)
      start = accel_text.length - 1
      index = start
      while (index >= 0)
        c = accel_text.char_at(index)
        case (c)
        when Character.new(?\s.ord)
          if (!(index).equal?(start))
            return index
          end
        when Character.new(0x2303), Character.new(0x2325), Character.new(0x21E7), Character.new(0x2318)
          return index
        end
        index -= 1
      end
      return -1
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
      @handle = 0
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
      @cascade = @default_item = @last_target = nil
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
        OS._enable_menu_item(@handle, RJava.cast_to_short(0))
      else
        self.attr_state |= DISABLED
        OS._disable_menu_item(@handle, RJava.cast_to_short(0))
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
        __set_visible(false)
      end
    end
    
    private
    alias_method :initialize__menu, :initialize
  end
  
end
