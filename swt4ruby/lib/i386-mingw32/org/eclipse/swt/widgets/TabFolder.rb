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
  module TabFolderImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # Instances of this class implement the notebook user interface
  # metaphor.  It allows the user to select a notebook page from
  # set of pages.
  # <p>
  # The item children that may be added to instances of this class
  # must be of type <code>TabItem</code>.
  # <code>Control</code> children are created and then set into a
  # tab item using <code>TabItem#setControl</code>.
  # </p><p>
  # Note that although this class is a subclass of <code>Composite</code>,
  # it does not make sense to set a layout on it.
  # </p><p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>TOP, BOTTOM</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles TOP and BOTTOM may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#tabfolder">TabFolder, TabItem snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class TabFolder < TabFolderImports.const_get :Composite
    include_class_members TabFolderImports
    
    attr_accessor :items
    alias_method :attr_items, :items
    undef_method :items
    alias_method :attr_items=, :items=
    undef_method :items=
    
    attr_accessor :image_list
    alias_method :attr_image_list, :image_list
    undef_method :image_list
    alias_method :attr_image_list=, :image_list=
    undef_method :image_list=
    
    class_module.module_eval {
      const_set_lazy(:TabFolderClass) { TCHAR.new(0, OS::WC_TABCONTROL, true) }
      const_attr_reader  :TabFolderClass
      
      # These are the undocumented control id's for the children of
      # a tab control.  Since there are no constants for these values,
      # they may change with different versions of Windows.
      const_set_lazy(:ID_UPDOWN) { 1 }
      const_attr_reader  :ID_UPDOWN
      
      when_class_loaded do
        lp_wnd_class = WNDCLASS.new
        OS._get_class_info(0, TabFolderClass, lp_wnd_class)
        const_set :TabFolderProc, lp_wnd_class.attr_lpfn_wnd_proc
        # Feature in Windows.  The tab control window class
        # uses the CS_HREDRAW and CS_VREDRAW style bits to
        # force a full redraw of the control and all children
        # when resized.  This causes flashing.  The fix is to
        # register a new window class without these bits and
        # implement special code that damages only the exposed
        # area.
        # 
        # NOTE:  Screen readers look for the exact class name
        # of the control in order to provide the correct kind
        # of assistance.  Therefore, it is critical that the
        # new window class have the same name.  It is possible
        # to register a local window class with the same name
        # as a global class.  Since bits that affect the class
        # are being changed, it is possible that other native
        # code, other than SWT, could create a control with
        # this class name, and fail unexpectedly.
        # 
        # long
        h_instance = OS._get_module_handle(nil)
        # long
        h_heap = OS._get_process_heap
        lp_wnd_class.attr_h_instance = h_instance
        lp_wnd_class.attr_style &= ~(OS::CS_HREDRAW | OS::CS_VREDRAW | OS::CS_GLOBALCLASS)
        byte_count = TabFolderClass.length * TCHAR.attr_sizeof
        # long
        lpsz_class_name = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
        OS._move_memory(lpsz_class_name, TabFolderClass, byte_count)
        lp_wnd_class.attr_lpsz_class_name = lpsz_class_name
        OS._register_class(lp_wnd_class)
        OS._heap_free(h_heap, 0, lpsz_class_name)
      end
    }
    
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
    # @see SWT
    # @see SWT#TOP
    # @see SWT#BOTTOM
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @items = nil
      @image_list = nil
      super(parent, check_style(style))
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the user changes the receiver's selection, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # When <code>widgetSelected</code> is called, the item field of the event object is valid.
    # <code>widgetDefaultSelected</code> is not called.
    # </p>
    # 
    # @param listener the listener which should be notified when the user changes the receiver's selection
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def call_window_proc(hwnd, msg, w_param, l_param)
      if ((self.attr_handle).equal?(0))
        return 0
      end
      return OS._call_window_proc(TabFolderProc, hwnd, msg, w_param, l_param)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        # When the SWT.TOP style has not been set, force the
        # tabs to be on the bottom for tab folders on PPC.
        if (OS::IsPPC)
          if (((style & SWT::TOP)).equal?(0))
            style |= SWT::BOTTOM
          end
        end
        style = check_bits(style, SWT::TOP, SWT::BOTTOM, 0, 0, 0, 0)
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      size = super(w_hint, h_hint, changed)
      inset_rect = RECT.new
      item_rect = RECT.new
      OS._send_message(self.attr_handle, OS::TCM_ADJUSTRECT, 0, inset_rect)
      width = inset_rect.attr_left - inset_rect.attr_right
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TCM_GETITEMCOUNT, 0, 0))
      if (!(count).equal?(0))
        OS._send_message(self.attr_handle, OS::TCM_GETITEMRECT, count - 1, item_rect)
        width = Math.max(width, item_rect.attr_right - inset_rect.attr_right)
      end
      rect = RECT.new
      OS._set_rect(rect, 0, 0, width, size.attr_y)
      OS._send_message(self.attr_handle, OS::TCM_ADJUSTRECT, 1, rect)
      border = get_border_width
      rect.attr_left -= border
      rect.attr_right += border
      width = rect.attr_right - rect.attr_left
      size.attr_x = Math.max(width, size.attr_x)
      return size
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_trim(x, y, width, height)
      check_widget
      rect = RECT.new
      OS._set_rect(rect, x, y, x + width, y + height)
      OS._send_message(self.attr_handle, OS::TCM_ADJUSTRECT, 1, rect)
      border = get_border_width
      rect.attr_left -= border
      rect.attr_right += border
      rect.attr_top -= border
      rect.attr_bottom += border
      new_width = rect.attr_right - rect.attr_left
      new_height = rect.attr_bottom - rect.attr_top
      return Rectangle.new(rect.attr_left, rect.attr_top, new_width, new_height)
    end
    
    typesig { [TabItem, ::Java::Int] }
    def create_item(item, index)
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TCM_GETITEMCOUNT, 0, 0))
      if (!(0 <= index && index <= count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      if ((count).equal?(@items.attr_length))
        new_items = Array.typed(TabItem).new(@items.attr_length + 4) { nil }
        System.arraycopy(@items, 0, new_items, 0, @items.attr_length)
        @items = new_items
      end
      tc_item = TCITEM.new
      if ((OS._send_message(self.attr_handle, OS::TCM_INSERTITEM, index, tc_item)).equal?(-1))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
      System.arraycopy(@items, index, @items, index + 1, count - index)
      @items[index] = item
      # Send a selection event when the item that is added becomes
      # the new selection.  This only happens when the first item
      # is added.
      if ((count).equal?(0))
        event = Event.new
        event.attr_item = @items[0]
        send_event___org_eclipse_swt_widgets_tab_folder_1(SWT::Selection, event)
        # the widget could be destroyed at this point
      end
    end
    
    typesig { [] }
    def create_handle
      super
      self.attr_state &= ~(CANVAS | THEME_BACKGROUND)
      # Enable the flat look for tab folders on PPC
      if (OS::IsPPC)
        # COMCTL32_VERSION
        OS._send_message(self.attr_handle, OS::CCM_SETVERSION, 0x20c, 0)
      end
      # Feature in Windows.  Despite the fact that the
      # tool tip text contains \r\n, the tooltip will
      # not honour the new line unless TTM_SETMAXTIPWIDTH
      # is set.  The fix is to set TTM_SETMAXTIPWIDTH to
      # a large value.
      # 
      # long
      hwnd_tool_tip = OS._send_message(self.attr_handle, OS::TCM_GETTOOLTIPS, 0, 0)
      OS._send_message(hwnd_tool_tip, OS::TTM_SETMAXTIPWIDTH, 0, 0x7fff)
    end
    
    typesig { [] }
    def create_widget
      super
      @items = Array.typed(TabItem).new(4) { nil }
    end
    
    typesig { [TabItem] }
    def destroy_item(item)
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TCM_GETITEMCOUNT, 0, 0))
      index = 0
      while (index < count)
        if ((@items[index]).equal?(item))
          break
        end
        index += 1
      end
      if ((index).equal?(count))
        return
      end
      # 64
      selection_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TCM_GETCURSEL, 0, 0))
      if ((OS._send_message(self.attr_handle, OS::TCM_DELETEITEM, index, 0)).equal?(0))
        error(SWT::ERROR_ITEM_NOT_REMOVED)
      end
      System.arraycopy(@items, index + 1, @items, index, (count -= 1) - index)
      @items[count] = nil
      if ((count).equal?(0))
        if (!(@image_list).nil?)
          OS._send_message(self.attr_handle, OS::TCM_SETIMAGELIST, 0, 0)
          self.attr_display.release_image_list(@image_list)
        end
        @image_list = nil
        @items = Array.typed(TabItem).new(4) { nil }
      end
      if (count > 0 && (index).equal?(selection_index))
        set_selection(Math.max(0, selection_index - 1), true)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, RECT] }
    # long
    # long
    def draw_theme_background(h_dc, hwnd, rect)
      rect2 = RECT.new
      OS._get_client_rect(self.attr_handle, rect2)
      OS._map_window_points(self.attr_handle, hwnd, rect2, 2)
      if (OS._intersect_rect(RECT.new, rect2, rect))
        OS._draw_theme_background(self.attr_display.h_tab_theme, h_dc, OS::TABP_BODY, 0, rect2, nil)
      end
    end
    
    typesig { [] }
    def find_theme_control
      # It is not possible to change the background of this control
      return self
    end
    
    typesig { [] }
    def get_client_area
      check_widget
      force_resize
      rect = RECT.new
      OS._get_client_rect(self.attr_handle, rect)
      OS._send_message(self.attr_handle, OS::TCM_ADJUSTRECT, 0, rect)
      width = rect.attr_right - rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      return Rectangle.new(rect.attr_left, rect.attr_top, width, height)
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
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TCM_GETITEMCOUNT, 0, 0))
      if (!(0 <= index && index < count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      return @items[index]
    end
    
    typesig { [Point] }
    # Returns the tab item at the given point in the receiver
    # or null if no such item exists. The point is in the
    # coordinate system of the receiver.
    # 
    # @param point the point used to locate the item
    # @return the tab item at the given point, or null if the point is not in a tab item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def get_item(point)
      check_widget
      if ((point).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      pinfo = TCHITTESTINFO.new
      pinfo.attr_x = point.attr_x
      pinfo.attr_y = point.attr_y
      # 64
      index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TCM_HITTEST, 0, pinfo))
      if ((index).equal?(-1))
        return nil
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
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TCM_GETITEMCOUNT, 0, 0))
    end
    
    typesig { [] }
    # Returns an array of <code>TabItem</code>s which are the items
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
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TCM_GETITEMCOUNT, 0, 0))
      result = Array.typed(TabItem).new(count) { nil }
      System.arraycopy(@items, 0, result, 0, count)
      return result
    end
    
    typesig { [] }
    # Returns an array of <code>TabItem</code>s that are currently
    # selected in the receiver. An empty array indicates that no
    # items are selected.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its selection, so modifying the array will
    # not affect the receiver.
    # </p>
    # @return an array representing the selection
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection
      check_widget
      # 64
      index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TCM_GETCURSEL, 0, 0))
      if ((index).equal?(-1))
        return Array.typed(TabItem).new(0) { nil }
      end
      return Array.typed(TabItem).new([@items[index]])
    end
    
    typesig { [] }
    # Returns the zero-relative index of the item which is currently
    # selected in the receiver, or -1 if no item is selected.
    # 
    # @return the index of the selected item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_index
      check_widget
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TCM_GETCURSEL, 0, 0))
    end
    
    typesig { [Image] }
    def image_index(image)
      if ((image).nil?)
        return OS::I_IMAGENONE
      end
      if ((@image_list).nil?)
        bounds = image.get_bounds
        @image_list = self.attr_display.get_image_list(self.attr_style & SWT::RIGHT_TO_LEFT, bounds.attr_width, bounds.attr_height)
        index = @image_list.add(image)
        # long
        h_image_list = @image_list.get_handle
        OS._send_message(self.attr_handle, OS::TCM_SETIMAGELIST, 0, h_image_list)
        return index
      end
      index = @image_list.index_of(image)
      if ((index).equal?(-1))
        index = @image_list.add(image)
      else
        @image_list.put(index, image)
      end
      return index
    end
    
    typesig { [TabItem] }
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
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TCM_GETITEMCOUNT, 0, 0))
      i = 0
      while i < count
        if ((@items[i]).equal?(item))
          return i
        end
        i += 1
      end
      return -1
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def minimum_size(w_hint, h_hint, flush_cache)
      children = __get_children
      width = 0
      height = 0
      i = 0
      while i < children.attr_length
        child = children[i]
        index = 0
        # 64
        count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TCM_GETITEMCOUNT, 0, 0))
        while (index < count)
          if ((@items[index].attr_control).equal?(child))
            break
          end
          index += 1
        end
        if ((index).equal?(count))
          rect = child.get_bounds
          width = Math.max(width, rect.attr_x + rect.attr_width)
          height = Math.max(height, rect.attr_y + rect.attr_height)
        else
          size = child.compute_size(w_hint, h_hint, flush_cache)
          width = Math.max(width, size.attr_x)
          height = Math.max(height, size.attr_y)
        end
        i += 1
      end
      return Point.new(width, height)
    end
    
    typesig { [::Java::Char] }
    def mnemonic_hit(key)
      i = 0
      while i < @items.attr_length
        item = @items[i]
        if (!(item).nil?)
          ch = find_mnemonic(item.get_text)
          if ((Character.to_upper_case(key)).equal?(Character.to_upper_case(ch)))
            if (force_focus)
              if (!(i).equal?(get_selection_index))
                set_selection(i, true)
              end
              return true
            end
          end
        end
        i += 1
      end
      return false
    end
    
    typesig { [::Java::Char] }
    def mnemonic_match(key)
      i = 0
      while i < @items.attr_length
        item = @items[i]
        if (!(item).nil?)
          ch = find_mnemonic(item.get_text)
          if ((Character.to_upper_case(key)).equal?(Character.to_upper_case(ch)))
            return true
          end
        end
        i += 1
      end
      return false
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      if (!(@items).nil?)
        # 64
        count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TCM_GETITEMCOUNT, 0, 0))
        i = 0
        while i < count
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
    def release_widget
      super
      if (!(@image_list).nil?)
        OS._send_message(self.attr_handle, OS::TCM_SETIMAGELIST, 0, 0)
        self.attr_display.release_image_list(@image_list)
      end
      @image_list = nil
    end
    
    typesig { [Control] }
    def remove_control(control)
      super(control)
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TCM_GETITEMCOUNT, 0, 0))
      i = 0
      while i < count
        item = @items[i]
        if ((item.attr_control).equal?(control))
          item.set_control(nil)
        end
        i += 1
      end
    end
    
    typesig { [SelectionListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the user changes the receiver's selection.
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
    
    typesig { [TabItem] }
    # Sets the receiver's selection to the given item.
    # The current selected is first cleared, then the new item is
    # selected.
    # 
    # @param item the item to select
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the item is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def set_selection(item)
      check_widget
      if ((item).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_selection(Array.typed(TabItem).new([item]))
    end
    
    typesig { [Array.typed(TabItem)] }
    # Sets the receiver's selection to be the given array of items.
    # The current selected is first cleared, then the new items are
    # selected.
    # 
    # @param items the array of items
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the items array is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(items)
      check_widget
      if ((items).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((items.attr_length).equal?(0))
        set_selection(-1, false)
      else
        i = items.attr_length - 1
        while i >= 0
          index = index_of(items[i])
          if (!(index).equal?(-1))
            set_selection(index, false)
          end
          (i -= 1)
        end
      end
    end
    
    typesig { [Font] }
    def set_font(font)
      check_widget
      old_rect = get_client_area
      super(font)
      new_rect = get_client_area
      if (!(old_rect == new_rect))
        send_resize
        # 64
        index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TCM_GETCURSEL, 0, 0))
        if (!(index).equal?(-1))
          item = @items[index]
          control = item.attr_control
          if (!(control).nil? && !control.is_disposed)
            control.set_bounds(get_client_area)
          end
        end
      end
    end
    
    typesig { [::Java::Int] }
    # Selects the item at the given zero-relative index in the receiver.
    # If the item at the index was already selected, it remains selected.
    # The current selection is first cleared, then the new items are
    # selected. Indices that are out of range are ignored.
    # 
    # @param index the index of the item to select
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(index)
      check_widget
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TCM_GETITEMCOUNT, 0, 0))
      if (!(0 <= index && index < count))
        return
      end
      set_selection(index, false)
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def set_selection(index, notify)
      # 64
      old_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TCM_GETCURSEL, 0, 0))
      if ((old_index).equal?(index))
        return
      end
      if (!(old_index).equal?(-1))
        item = @items[old_index]
        control = item.attr_control
        if (!(control).nil? && !control.is_disposed)
          control.set_visible(false)
        end
      end
      OS._send_message(self.attr_handle, OS::TCM_SETCURSEL, index, 0)
      # 64
      new_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TCM_GETCURSEL, 0, 0))
      if (!(new_index).equal?(-1))
        item = @items[new_index]
        control = item.attr_control
        if (!(control).nil? && !control.is_disposed)
          control.set_bounds(get_client_area)
          control.set_visible(true)
        end
        if (notify)
          event = Event.new
          event.attr_item = item
          send_event___org_eclipse_swt_widgets_tab_folder_3(SWT::Selection, event)
        end
      end
    end
    
    typesig { [NMTTDISPINFO] }
    def tool_tip_text(hdr)
      if (!((hdr.attr_u_flags & OS::TTF_IDISHWND)).equal?(0))
        return nil
      end
      # 64
      index = RJava.cast_to_int(hdr.attr_id_from)
      # long
      hwnd_tool_tip = OS._send_message(self.attr_handle, OS::TCM_GETTOOLTIPS, 0, 0)
      if ((hwnd_tool_tip).equal?(hdr.attr_hwnd_from))
        # Bug in Windows. For some reason the reading order
        # in NMTTDISPINFO is sometimes set incorrectly.  The
        # reading order seems to change every time the mouse
        # enters the control from the top edge.  The fix is
        # to explicitly set TTF_RTLREADING.
        if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
          hdr.attr_u_flags |= OS::TTF_RTLREADING
        else
          hdr.attr_u_flags &= ~OS::TTF_RTLREADING
        end
        if (!(self.attr_tool_tip_text).nil?)
          return ""
        end
        if (0 <= index && index < @items.attr_length)
          item = @items[index]
          if (!(item).nil?)
            return item.attr_tool_tip_text
          end
        end
      end
      return super(hdr)
    end
    
    typesig { [::Java::Boolean] }
    def traverse_page(next_)
      count = get_item_count
      if (count <= 1)
        return false
      end
      index = get_selection_index
      if ((index).equal?(-1))
        index = 0
      else
        offset = (next_) ? 1 : -1
        index = (index + offset + count) % count
      end
      set_selection(index, true)
      if ((index).equal?(get_selection_index))
        OS._send_message(self.attr_handle, OS::WM_CHANGEUISTATE, OS::UIS_INITIALIZE, 0)
        return true
      end
      return false
    end
    
    typesig { [] }
    def widget_style
      # Bug in Windows.  Under certain circumstances,
      # when TCM_SETITEM is used to change the text
      # in a tab item, the tab folder draws on top
      # of the client area.  The fix is ensure that
      # this cannot happen by setting WS_CLIPCHILDREN.
      bits = super | OS::WS_CLIPCHILDREN
      if (!((self.attr_style & SWT::NO_FOCUS)).equal?(0))
        bits |= OS::TCS_FOCUSNEVER
      end
      if (!((self.attr_style & SWT::BOTTOM)).equal?(0))
        bits |= OS::TCS_BOTTOM
      end
      return bits | OS::TCS_TABS | OS::TCS_TOOLTIPS
    end
    
    typesig { [] }
    def window_class
      return TabFolderClass
    end
    
    typesig { [] }
    # long
    def window_proc
      return TabFolderProc
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_getdlgcode(w_param, l_param)
      result = super(w_param, l_param)
      # Return DLGC_BUTTON so that mnemonics will be
      # processed without needing to press the ALT key
      # when the widget has focus.
      if (!(result).nil?)
        return result
      end
      return LRESULT.new(OS::DLGC_BUTTON | OS::DLGC_WANTARROWS)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mouseleave(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Bug in Windows.  On XP, when a tooltip is
      # hidden due to a time out or mouse press,
      # the tooltip remains active although no
      # longer visible and won't show again until
      # another tooltip becomes active.  If there
      # is only one tooltip in the window,  it will
      # never show again.  The fix is to remove the
      # current tooltip and add it again every time
      # the mouse leaves the control.
      if (OS::COMCTL32_MAJOR >= 6)
        lpti = TOOLINFO.new
        lpti.attr_cb_size = TOOLINFO.attr_sizeof
        # long
        hwnd_tool_tip = OS._send_message(self.attr_handle, OS::TCM_GETTOOLTIPS, 0, 0)
        if (!(OS._send_message(hwnd_tool_tip, OS::TTM_GETCURRENTTOOL, 0, lpti)).equal?(0))
          if (((lpti.attr_u_flags & OS::TTF_IDISHWND)).equal?(0))
            OS._send_message(hwnd_tool_tip, OS::TTM_DELTOOL, 0, lpti)
            OS._send_message(hwnd_tool_tip, OS::TTM_ADDTOOL, 0, lpti)
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_nchittest(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Feature in Windows.  The tab control implements
      # WM_NCHITTEST to return HTCLIENT when the cursor
      # is inside the tab buttons.  This causes mouse
      # events like WM_MOUSEMOVE to be delivered to the
      # parent.  Also, tool tips for the tab control are
      # never invoked because tool tips rely on mouse
      # events to be delivered to the window that wants
      # to display the tool tip.  The fix is to call the
      # default window proc that returns HTCLIENT when
      # the mouse is in the client area.
      # 
      # long
      hittest = OS._def_window_proc(self.attr_handle, OS::WM_NCHITTEST, w_param, l_param)
      return LRESULT.new(hittest)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_notify(w_param, l_param)
      # Feature in Windows.  When the tab folder window
      # proc processes WM_NOTIFY, it forwards this
      # message to its parent.  This is done so that
      # children of this control that send this message
      # type to their parent will notify not only
      # this control but also the parent of this control,
      # which is typically the application window and
      # the window that is looking for the message.
      # If the control did not forward the message,
      # applications would have to subclass the control
      # window to see the message. Because the control
      # window is subclassed by SWT, the message
      # is delivered twice, once by SWT and once when
      # the message is forwarded by the window proc.
      # The fix is to avoid calling the window proc
      # for this control.
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      return LRESULT::ZERO
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_parentnotify(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Feature in Windows.  Windows does not explicitly set the orientation of
      # the buddy control.  Instead, the orientation is inherited when WS_EX_LAYOUTRTL
      # is specified for the tab folder.  This means that when both WS_EX_LAYOUTRTL
      # and WS_EX_NOINHERITLAYOUT are specified for the tab folder, the buddy control
      # will not be oriented correctly.  The fix is to explicitly set the orientation
      # for the buddy control.
      # 
      # NOTE: WS_EX_LAYOUTRTL is not supported on Windows NT.
      if (OS::WIN32_VERSION < OS._version(4, 10))
        return result
      end
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        code = OS._loword(w_param)
        case (code)
        when OS::WM_CREATE
          id = OS._hiword(w_param)
          # long
          hwnd = l_param
          if ((id).equal?(ID_UPDOWN))
            bits = OS._get_window_long(hwnd, OS::GWL_EXSTYLE)
            OS._set_window_long(hwnd, OS::GWL_EXSTYLE, bits | OS::WS_EX_LAYOUTRTL)
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_size(w_param, l_param)
      result = super(w_param, l_param)
      # It is possible (but unlikely), that application
      # code could have disposed the widget in the resize
      # event.  If this happens, end the processing of the
      # Windows message by returning the result of the
      # WM_SIZE message.
      if (is_disposed)
        return result
      end
      # 64
      index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TCM_GETCURSEL, 0, 0))
      if (!(index).equal?(-1))
        item = @items[index]
        control = item.attr_control
        if (!(control).nil? && !control.is_disposed)
          control.set_bounds(get_client_area)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_windowposchanging(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (!OS._is_window_visible(self.attr_handle))
        return result
      end
      lpwp = WINDOWPOS.new
      OS._move_memory(lpwp, l_param, WINDOWPOS.attr_sizeof)
      if (!((lpwp.attr_flags & (OS::SWP_NOSIZE | OS::SWP_NOREDRAW))).equal?(0))
        return result
      end
      # TEMPORARY CODE
      # if (OS.COMCTL32_MAJOR >= 6 && OS.IsAppThemed ()) {
      # OS.InvalidateRect (handle, null, true);
      # return result;
      # }
      bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      if (!((bits & OS::TCS_MULTILINE)).equal?(0))
        OS._invalidate_rect(self.attr_handle, nil, true)
        return result
      end
      rect = RECT.new
      OS._set_rect(rect, 0, 0, lpwp.attr_cx, lpwp.attr_cy)
      OS._send_message(self.attr_handle, OS::WM_NCCALCSIZE, 0, rect)
      new_width = rect.attr_right - rect.attr_left
      new_height = rect.attr_bottom - rect.attr_top
      OS._get_client_rect(self.attr_handle, rect)
      old_width = rect.attr_right - rect.attr_left
      old_height = rect.attr_bottom - rect.attr_top
      if ((new_width).equal?(old_width) && (new_height).equal?(old_height))
        return result
      end
      inset = RECT.new
      OS._send_message(self.attr_handle, OS::TCM_ADJUSTRECT, 0, inset)
      margin_x = -inset.attr_right
      margin_y = -inset.attr_bottom
      if (!(new_width).equal?(old_width))
        left = old_width
        if (new_width < old_width)
          left = new_width
        end
        OS._set_rect(rect, left - margin_x, 0, new_width, new_height)
        OS._invalidate_rect(self.attr_handle, rect, true)
      end
      if (!(new_height).equal?(old_height))
        bottom = old_height
        if (new_height < old_height)
          bottom = new_height
        end
        if (new_width < old_width)
          old_width -= margin_x
        end
        OS._set_rect(rect, 0, bottom - margin_y, old_width, new_height)
        OS._invalidate_rect(self.attr_handle, rect, true)
      end
      return result
    end
    
    typesig { [NMHDR, ::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_notify_child(hdr, w_param, l_param)
      code = hdr.attr_code
      case (code)
      when OS::TCN_SELCHANGE, OS::TCN_SELCHANGING
        item = nil
        # 64
        index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::TCM_GETCURSEL, 0, 0))
        if (!(index).equal?(-1))
          item = @items[index]
        end
        if (!(item).nil?)
          control = item.attr_control
          if (!(control).nil? && !control.is_disposed)
            if ((code).equal?(OS::TCN_SELCHANGE))
              control.set_bounds(get_client_area)
            end
            control.set_visible((code).equal?(OS::TCN_SELCHANGE))
          end
        end
        if ((code).equal?(OS::TCN_SELCHANGE))
          event = Event.new
          event.attr_item = item
          post_event___org_eclipse_swt_widgets_tab_folder_5(SWT::Selection, event)
        end
      end
      return super(hdr, w_param, l_param)
    end
    
    private
    alias_method :initialize__tab_folder, :initialize
  end
  
end
