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
  module ToolBarImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class support the layout of selectable
  # tool bar items.
  # <p>
  # The item children that may be added to instances of this class
  # must be of type <code>ToolItem</code>.
  # </p><p>
  # Note that although this class is a subclass of <code>Composite</code>,
  # it does not make sense to add <code>Control</code> children to it,
  # or set a layout on it.
  # </p><p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>FLAT, WRAP, RIGHT, HORIZONTAL, VERTICAL, SHADOW_OUT</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles HORIZONTAL and VERTICAL may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#toolbar">ToolBar, ToolItem snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class ToolBar < ToolBarImports.const_get :Composite
    include_class_members ToolBarImports
    
    attr_accessor :last_focus
    alias_method :attr_last_focus, :last_focus
    undef_method :last_focus
    alias_method :attr_last_focus=, :last_focus=
    undef_method :last_focus=
    
    attr_accessor :image_list
    alias_method :attr_image_list, :image_list
    undef_method :image_list
    alias_method :attr_image_list=, :image_list=
    undef_method :image_list=
    
    typesig { [Composite, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # and a style value describing its behavior and appearance.
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
    # @see SWT#FLAT
    # @see SWT#WRAP
    # @see SWT#RIGHT
    # @see SWT#HORIZONTAL
    # @see SWT#SHADOW_OUT
    # @see SWT#VERTICAL
    # @see Widget#checkSubclass()
    # @see Widget#getStyle()
    def initialize(parent, style)
      @last_focus = nil
      @image_list = nil
      super(parent, check_style(style))
      # Ensure that either of HORIZONTAL or VERTICAL is set.
      # NOTE: HORIZONTAL and VERTICAL have the same values
      # as H_SCROLL and V_SCROLL so it is necessary to first
      # clear these bits to avoid scroll bars and then reset
      # the bits using the original style supplied by the
      # programmer.
      if (!((style & SWT::VERTICAL)).equal?(0))
        self.attr_style |= SWT::VERTICAL
      else
        self.attr_style |= SWT::HORIZONTAL
      end
      orientation = !((style & SWT::VERTICAL)).equal?(0) ? OS::GTK_ORIENTATION_VERTICAL : OS::GTK_ORIENTATION_HORIZONTAL
      OS.gtk_toolbar_set_orientation(self.attr_handle, orientation)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        # Feature in GTK.  It is not possible to create
        # a toolbar that wraps.  Therefore, no matter what
        # style bits are specified,	clear the WRAP bits so
        # that the style matches the behavior.
        if (!((style & SWT::WRAP)).equal?(0))
          style &= ~SWT::WRAP
        end
        # Even though it is legal to create this widget
        # with scroll bars, they serve no useful purpose
        # because they do not automatically scroll the
        # widget's client area.  The fix is to clear
        # the SWT style.
        return style & ~(SWT::H_SCROLL | SWT::V_SCROLL)
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
      self.attr_state |= HANDLE | THEME_BACKGROUND
      self.attr_fixed_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
      if ((self.attr_fixed_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_fixed_set_has_window(self.attr_fixed_handle, true)
      self.attr_handle = OS.gtk_toolbar_new
      if ((self.attr_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_container_add(self.attr_fixed_handle, self.attr_handle)
      if (!((self.attr_style & SWT::FLAT)).equal?(0))
        swt_toolbar_flat = Converter.wcs_to_mbcs(nil, "swt-toolbar-flat", true)
        OS.gtk_widget_set_name(self.attr_handle, swt_toolbar_flat)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      if (!(w_hint).equal?(SWT::DEFAULT) && w_hint < 0)
        w_hint = 0
      end
      if (!(h_hint).equal?(SWT::DEFAULT) && h_hint < 0)
        h_hint = 0
      end
      return compute_native_size(self.attr_handle, w_hint, h_hint, changed)
    end
    
    typesig { [] }
    # int
    def event_handle
      return self.attr_fixed_handle
    end
    
    typesig { [] }
    # int
    def enter_exit_handle
      return self.attr_handle
    end
    
    typesig { [Shell, Shell, Decorations, Decorations, Array.typed(Menu)] }
    def fix_children(new_shell, old_shell, new_decorations, old_decorations, menus)
      super(new_shell, old_shell, new_decorations, old_decorations, menus)
      items = get_items
      if ((self.attr_tool_tip_text).nil?)
        i = 0
        while i < items.attr_length
          item = items[i]
          if (!(item.attr_tool_tip_text).nil?)
            item.set_tool_tip_text(old_shell, nil)
            item.set_tool_tip_text(new_shell, item.attr_tool_tip_text)
          end
          ((i += 1) - 1)
        end
      end
    end
    
    typesig { [::Java::Long] }
    # int
    def force_focus(focus_handle)
      if (!(@last_focus).nil? && @last_focus.set_focus)
        return true
      end
      items = get_items
      i = 0
      while i < items.attr_length
        item = items[i]
        if (item.set_focus)
          return true
        end
        ((i += 1) - 1)
      end
      return super(focus_handle)
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
      if (!(0 <= index && index < get_item_count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      return get_items[index]
    end
    
    typesig { [Point] }
    # Returns the item at the given point in the receiver
    # or null if no such item exists. The point is in the
    # coordinate system of the receiver.
    # 
    # @param point the point used to locate the item
    # @return the item at the given point
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item(point)
      check_widget
      if ((point).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      items = get_items
      i = 0
      while i < items.attr_length
        if (items[i].get_bounds.contains(point))
          return items[i]
        end
        ((i += 1) - 1)
      end
      return nil
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
      # int
      list = OS.gtk_container_get_children(self.attr_handle)
      if ((list).equal?(0))
        return 0
      end
      item_count = OS.g_list_length(list)
      OS.g_list_free(list)
      return item_count
    end
    
    typesig { [] }
    # Returns an array of <code>ToolItem</code>s which are the items
    # in the receiver.
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
      # int
      list = OS.gtk_container_get_children(self.attr_handle)
      if ((list).equal?(0))
        return Array.typed(ToolItem).new(0) { nil }
      end
      count = OS.g_list_length(list)
      result = Array.typed(ToolItem).new(count) { nil }
      i = 0
      while i < count
        # int
        data = OS.g_list_nth_data(list, i)
        widget = self.attr_display.get_widget(data)
        result[i] = widget
        ((i += 1) - 1)
      end
      OS.g_list_free(list)
      return result
    end
    
    typesig { [] }
    # Returns the number of rows in the receiver. When
    # the receiver has the <code>WRAP</code> style, the
    # number of rows can be greater than one.  Otherwise,
    # the number of rows is always one.
    # 
    # @return the number of items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_row_count
      check_widget
      # On GTK, toolbars cannot wrap
      return 1
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_key_press_event(widget, event_ptr)
      if (!has_focus)
        return 0
      end
      # int
      result = super(widget, event_ptr)
      if (!(result).equal?(0))
        return result
      end
      items = get_items
      length = items.attr_length
      index = 0
      while (index < length)
        if (items[index].has_focus)
          break
        end
        ((index += 1) - 1)
      end
      gdk_event = GdkEventKey.new
      OS.memmove(gdk_event, event_ptr, GdkEventKey.attr_sizeof)
      next_ = false
      case (gdk_event.attr_keyval)
      when OS::GDK_Up, OS::GDK_Left
        next_ = false
      when OS::GDK_Down
        if (0 <= index && index < length)
          item = items[index]
          if (!((item.attr_style & SWT::DROP_DOWN)).equal?(0))
            event = Event.new
            event.attr_detail = SWT::ARROW
            # int
            top_handle_ = item.top_handle
            event.attr_x = OS._gtk_widget_x(top_handle_)
            event.attr_y = OS._gtk_widget_y(top_handle_) + OS._gtk_widget_height(top_handle_)
            if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
              event.attr_x = get_client_width - OS._gtk_widget_width(top_handle_) - event.attr_x
            end
            item.post_event(SWT::Selection, event)
            return result
          end
        end
        # FALL THROUGH
      when OS::GDK_Right
        next_ = true
      else
        return result
      end
      if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
        next_ = !next_
      end
      start = index
      offset = next_ ? 1 : -1
      while (!((index = (index + offset + length) % length)).equal?(start))
        item = items[index]
        if (item.set_focus)
          return result
        end
      end
      return result
    end
    
    typesig { [] }
    def has_focus
      items = get_items
      i = 0
      while i < items.attr_length
        item = items[i]
        if (item.has_focus)
          return true
        end
        ((i += 1) - 1)
      end
      return super
    end
    
    typesig { [ToolItem] }
    # Searches the receiver's list starting at the first item
    # (index 0) until an item is found that is equal to the
    # argument, and returns the index of that item. If no item
    # is found, returns -1.
    # 
    # @param item the search item
    # @return the index of the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the tool item is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the tool item has been disposed</li>
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
        if ((item).equal?(items[i]))
          return i
        end
        ((i += 1) - 1)
      end
      return -1
    end
    
    typesig { [::Java::Char] }
    def mnemonic_hit(key)
      items = get_items
      i = 0
      while i < items.attr_length
        # int
        label_handle = items[i].attr_label_handle
        if (!(label_handle).equal?(0) && mnemonic_hit(label_handle, key))
          return true
        end
        ((i += 1) - 1)
      end
      return false
    end
    
    typesig { [::Java::Char] }
    def mnemonic_match(key)
      items = get_items
      i = 0
      while i < items.attr_length
        # int
        label_handle = items[i].attr_label_handle
        if (!(label_handle).equal?(0) && mnemonic_match(label_handle, key))
          return true
        end
        ((i += 1) - 1)
      end
      return false
    end
    
    typesig { [] }
    def relayout
      items = get_items
      i = 0
      while i < items.attr_length
        item = items[i]
        if (!(item).nil?)
          item.resize_control
        end
        ((i += 1) - 1)
      end
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
        ((i += 1) - 1)
      end
      super(destroy)
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@image_list).nil?)
        @image_list.dispose
      end
      @image_list = nil
    end
    
    typesig { [Control] }
    def remove_control(control)
      super(control)
      items = get_items
      i = 0
      while i < items.attr_length
        item = items[i]
        if ((item.attr_control).equal?(control))
          item.set_control(nil)
        end
        ((i += 1) - 1)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize)
      result = super(x, y, width, height, move, resize)
      if (!((result & RESIZED)).equal?(0))
        relayout
      end
      return result
    end
    
    typesig { [::Java::Long] }
    # int
    def set_font_description(font)
      super(font)
      items = get_items
      i = 0
      while i < items.attr_length
        items[i].set_font_description(font)
        ((i += 1) - 1)
      end
      relayout
    end
    
    typesig { [GdkColor] }
    def set_foreground_color(color)
      super(color)
      items = get_items
      i = 0
      while i < items.attr_length
        items[i].set_foreground_color(color)
        ((i += 1) - 1)
      end
    end
    
    typesig { [String] }
    def set_tool_tip_text(string)
      check_widget
      super(string)
      shell = __get_shell
      items = get_items
      i = 0
      while i < items.attr_length
        new_string = !(string).nil? ? nil : items[i].attr_tool_tip_text
        shell.set_tool_tip_text(items[i].attr_handle, new_string)
        ((i += 1) - 1)
      end
    end
    
    private
    alias_method :initialize__tool_bar, :initialize
  end
  
end
