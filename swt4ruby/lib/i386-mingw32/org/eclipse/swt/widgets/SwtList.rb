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
  module ListImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # Instances of this class represent a selectable user interface
  # object that displays a list of strings and issues notification
  # when a string is selected.  A list may be single or multi select.
  # <p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>SINGLE, MULTI</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection, DefaultSelection</dd>
  # </dl>
  # <p>
  # Note: Only one of SINGLE and MULTI may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#list">List snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class SwtList < ListImports.const_get :Scrollable
    include_class_members ListImports
    
    class_module.module_eval {
      const_set_lazy(:INSET) { 3 }
      const_attr_reader  :INSET
      
      const_set_lazy(:ListClass) { TCHAR.new(0, "LISTBOX", true) }
      const_attr_reader  :ListClass
      
      when_class_loaded do
        lp_wnd_class = WNDCLASS.new
        OS._get_class_info(0, ListClass, lp_wnd_class)
        const_set :ListProc, lp_wnd_class.attr_lpfn_wnd_proc
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
    # @see SWT#SINGLE
    # @see SWT#MULTI
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      super(parent, check_style(style))
    end
    
    typesig { [String] }
    # Adds the argument to the end of the receiver's list.
    # 
    # @param string the new item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #add(String,int)
    def add(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      buffer = TCHAR.new(get_code_page, string, true)
      # 64
      result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_ADDSTRING, 0, buffer))
      if ((result).equal?(OS::LB_ERR))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
      if ((result).equal?(OS::LB_ERRSPACE))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        set_scroll_width(buffer, true)
      end
    end
    
    typesig { [String, ::Java::Int] }
    # Adds the argument to the receiver's list at the given
    # zero-relative index.
    # <p>
    # Note: To add an item at the end of the list, use the
    # result of calling <code>getItemCount()</code> as the
    # index or use <code>add(String)</code>.
    # </p>
    # 
    # @param string the new item
    # @param index the index for the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #add(String)
    def add(string, index)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((index).equal?(-1))
        error(SWT::ERROR_INVALID_RANGE)
      end
      buffer = TCHAR.new(get_code_page, string, true)
      # 64
      result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_INSERTSTRING, index, buffer))
      if ((result).equal?(OS::LB_ERRSPACE))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
      if ((result).equal?(OS::LB_ERR))
        # 64
        count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
        if (0 <= index && index <= count)
          error(SWT::ERROR_ITEM_NOT_ADDED)
        else
          error(SWT::ERROR_INVALID_RANGE)
        end
      end
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        set_scroll_width(buffer, true)
      end
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the user changes the receiver's selection, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # <code>widgetSelected</code> is called when the selection changes.
    # <code>widgetDefaultSelected</code> is typically called when an item is double-clicked.
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
      redraw = false
      case (msg)
      when OS::WM_HSCROLL, OS::WM_VSCROLL
        redraw = !(find_image_control).nil? && (self.attr_draw_count).equal?(0) && OS._is_window_visible(self.attr_handle)
        if (redraw)
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
        end
      end
      # long
      code = OS._call_window_proc(ListProc, hwnd, msg, w_param, l_param)
      case (msg)
      when OS::WM_HSCROLL, OS::WM_VSCROLL
        if (redraw)
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
          OS._invalidate_rect(self.attr_handle, nil, true)
        end
      end
      return code
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        return check_bits(style, SWT::SINGLE, SWT::MULTI, 0, 0, 0, 0)
      end
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      width = 0
      height = 0
      if ((w_hint).equal?(SWT::DEFAULT))
        if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
          # 64
          width = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETHORIZONTALEXTENT, 0, 0))
          width -= INSET
        else
          # 64
          count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
          # long
          new_font = 0
          old_font = 0
          # long
          h_dc = OS._get_dc(self.attr_handle)
          new_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
          if (!(new_font).equal?(0))
            old_font = OS._select_object(h_dc, new_font)
          end
          rect = RECT.new
          flags = OS::DT_CALCRECT | OS::DT_SINGLELINE | OS::DT_NOPREFIX
          cp = get_code_page
          buffer = TCHAR.new(cp, 64 + 1)
          i = 0
          while i < count
            # 64
            length = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTEXTLEN, i, 0))
            if (!(length).equal?(OS::LB_ERR))
              if (length + 1 > buffer.length)
                buffer = TCHAR.new(cp, length + 1)
              end
              # 64
              result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTEXT, i, buffer))
              if (!(result).equal?(OS::LB_ERR))
                OS._draw_text(h_dc, buffer, length, rect, flags)
                width = Math.max(width, rect.attr_right - rect.attr_left)
              end
            end
            i += 1
          end
          if (!(new_font).equal?(0))
            OS._select_object(h_dc, old_font)
          end
          OS._release_dc(self.attr_handle, h_dc)
        end
      end
      if ((h_hint).equal?(SWT::DEFAULT))
        # 64
        count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
        # 64
        item_height = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETITEMHEIGHT, 0, 0))
        height = count * item_height
      end
      if ((width).equal?(0))
        width = DEFAULT_WIDTH
      end
      if ((height).equal?(0))
        height = DEFAULT_HEIGHT
      end
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint
      end
      border = get_border_width
      width += border * 2 + INSET
      height += border * 2
      if (!((self.attr_style & SWT::V_SCROLL)).equal?(0))
        width += OS._get_system_metrics(OS::SM_CXVSCROLL)
      end
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        height += OS._get_system_metrics(OS::SM_CYHSCROLL)
      end
      return Point.new(width, height)
    end
    
    typesig { [] }
    def default_background
      return OS._get_sys_color(OS::COLOR_WINDOW)
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Deselects the items at the given zero-relative indices in the receiver.
    # If the item at the given zero-relative index in the receiver
    # is selected, it is deselected.  If the item at the index
    # was not selected, it remains deselected. Indices that are out
    # of range and duplicate indices are ignored.
    # 
    # @param indices the array of indices for the items to deselect
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the set of indices is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def deselect(indices)
      check_widget
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((indices.attr_length).equal?(0))
        return
      end
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # 64
        old_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCURSEL, 0, 0))
        if ((old_index).equal?(OS::LB_ERR))
          return
        end
        i = 0
        while i < indices.attr_length
          if ((old_index).equal?(indices[i]))
            OS._send_message(self.attr_handle, OS::LB_SETCURSEL, -1, 0)
            return
          end
          i += 1
        end
        return
      end
      i = 0
      while i < indices.attr_length
        index = indices[i]
        if (!(index).equal?(-1))
          OS._send_message(self.attr_handle, OS::LB_SETSEL, 0, index)
        end
        i += 1
      end
    end
    
    typesig { [::Java::Int] }
    # Deselects the item at the given zero-relative index in the receiver.
    # If the item at the index was already deselected, it remains
    # deselected. Indices that are out of range are ignored.
    # 
    # @param index the index of the item to deselect
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def deselect(index)
      check_widget
      if ((index).equal?(-1))
        return
      end
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # 64
        old_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCURSEL, 0, 0))
        if ((old_index).equal?(OS::LB_ERR))
          return
        end
        if ((old_index).equal?(index))
          OS._send_message(self.attr_handle, OS::LB_SETCURSEL, -1, 0)
        end
        return
      end
      OS._send_message(self.attr_handle, OS::LB_SETSEL, 0, index)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Deselects the items at the given zero-relative indices in the receiver.
    # If the item at the given zero-relative index in the receiver
    # is selected, it is deselected.  If the item at the index
    # was not selected, it remains deselected.  The range of the
    # indices is inclusive. Indices that are out of range are ignored.
    # 
    # @param start the start index of the items to deselect
    # @param end the end index of the items to deselect
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def deselect(start, end_)
      check_widget
      if (start > end_)
        return
      end
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # 64
        old_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCURSEL, 0, 0))
        if ((old_index).equal?(OS::LB_ERR))
          return
        end
        if (start <= old_index && old_index <= end_)
          OS._send_message(self.attr_handle, OS::LB_SETCURSEL, -1, 0)
        end
        return
      end
      # Ensure that at least one item is contained in
      # the range from start to end.  Note that when
      # start = end, LB_SELITEMRANGEEX deselects the
      # item.
      # 
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
      if (start < 0 && end_ < 0)
        return
      end
      if (start >= count && end_ >= count)
        return
      end
      start = Math.min(count - 1, Math.max(0, start))
      end_ = Math.min(count - 1, Math.max(0, end_))
      OS._send_message(self.attr_handle, OS::LB_SELITEMRANGEEX, end_, start)
    end
    
    typesig { [] }
    # Deselects all selected items in the receiver.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def deselect_all
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        OS._send_message(self.attr_handle, OS::LB_SETCURSEL, -1, 0)
      else
        OS._send_message(self.attr_handle, OS::LB_SETSEL, 0, -1)
      end
    end
    
    typesig { [] }
    # Returns the zero-relative index of the item which currently
    # has the focus in the receiver, or -1 if no item has focus.
    # 
    # @return the index of the selected item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_focus_index
      check_widget
      # 64
      result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCARETINDEX, 0, 0))
      if ((result).equal?(0))
        # 64
        count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
        if ((count).equal?(0))
          return -1
        end
      end
      return result
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
      length_ = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTEXTLEN, index, 0))
      if (!(length_).equal?(OS::LB_ERR))
        buffer = TCHAR.new(get_code_page, length_ + 1)
        # 64
        result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTEXT, index, buffer))
        if (!(result).equal?(OS::LB_ERR))
          return buffer.to_s(0, length_)
        end
      end
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
      if (0 <= index && index < count)
        error(SWT::ERROR_CANNOT_GET_ITEM)
      end
      error(SWT::ERROR_INVALID_RANGE)
      return ""
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
      result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
      if ((result).equal?(OS::LB_ERR))
        error(SWT::ERROR_CANNOT_GET_COUNT)
      end
      return result
    end
    
    typesig { [] }
    # Returns the height of the area which would be used to
    # display <em>one</em> of the items in the list.
    # 
    # @return the height of one item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_item_height
      check_widget
      # 64
      result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETITEMHEIGHT, 0, 0))
      if ((result).equal?(OS::LB_ERR))
        error(SWT::ERROR_CANNOT_GET_ITEM_HEIGHT)
      end
      return result
    end
    
    typesig { [] }
    # Returns a (possibly empty) array of <code>String</code>s which
    # are the items in the receiver.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its list of items, so modifying the array will
    # not affect the receiver.
    # </p>
    # 
    # @return the items in the receiver's list
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_items
      check_widget
      count = get_item_count
      result = Array.typed(String).new(count) { nil }
      i = 0
      while i < count
        result[i] = get_item(i)
        i += 1
      end
      return result
    end
    
    typesig { [] }
    # Returns an array of <code>String</code>s that are currently
    # selected in the receiver.  The order of the items is unspecified.
    # An empty array indicates that no items are selected.
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
      indices = get_selection_indices
      result = Array.typed(String).new(indices.attr_length) { nil }
      i = 0
      while i < indices.attr_length
        result[i] = get_item(indices[i])
        i += 1
      end
      return result
    end
    
    typesig { [] }
    # Returns the number of selected items contained in the receiver.
    # 
    # @return the number of selected items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_count
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # 64
        result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCURSEL, 0, 0))
        if ((result).equal?(OS::LB_ERR))
          return 0
        end
        return 1
      end
      # 64
      result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETSELCOUNT, 0, 0))
      if ((result).equal?(OS::LB_ERR))
        error(SWT::ERROR_CANNOT_GET_COUNT)
      end
      return result
    end
    
    typesig { [] }
    # Returns the zero-relative index of the item which is currently
    # selected in the receiver, or -1 if no item is selected.
    # 
    # @return the index of the selected item or -1
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_index
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # 64
        return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCURSEL, 0, 0))
      end
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETSELCOUNT, 0, 0))
      if ((count).equal?(OS::LB_ERR))
        error(SWT::ERROR_CANNOT_GET_SELECTION)
      end
      if ((count).equal?(0))
        return -1
      end
      # 64
      index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCARETINDEX, 0, 0))
      # 64
      result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETSEL, index, 0))
      if ((result).equal?(OS::LB_ERR))
        error(SWT::ERROR_CANNOT_GET_SELECTION)
      end
      if (!(result).equal?(0))
        return index
      end
      buffer = Array.typed(::Java::Int).new(1) { 0 }
      # 64
      result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETSELITEMS, 1, buffer))
      if (!(result).equal?(1))
        error(SWT::ERROR_CANNOT_GET_SELECTION)
      end
      return buffer[0]
    end
    
    typesig { [] }
    # Returns the zero-relative indices of the items which are currently
    # selected in the receiver.  The order of the indices is unspecified.
    # The array is empty if no items are selected.
    # <p>
    # Note: This is not the actual structure used by the receiver
    # to maintain its selection, so modifying the array will
    # not affect the receiver.
    # </p>
    # @return the array of indices of the selected items
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_indices
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # 64
        result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCURSEL, 0, 0))
        if ((result).equal?(OS::LB_ERR))
          return Array.typed(::Java::Int).new(0) { 0 }
        end
        return Array.typed(::Java::Int).new([result])
      end
      # 64
      length_ = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETSELCOUNT, 0, 0))
      if ((length_).equal?(OS::LB_ERR))
        error(SWT::ERROR_CANNOT_GET_SELECTION)
      end
      indices = Array.typed(::Java::Int).new(length_) { 0 }
      # 64
      result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETSELITEMS, length_, indices))
      if (!(result).equal?(length_))
        error(SWT::ERROR_CANNOT_GET_SELECTION)
      end
      return indices
    end
    
    typesig { [] }
    # Returns the zero-relative index of the item which is currently
    # at the top of the receiver. This index can change when items are
    # scrolled or new items are added or removed.
    # 
    # @return the index of the top item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_top_index
      check_widget
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTOPINDEX, 0, 0))
    end
    
    typesig { [String] }
    # Gets the index of an item.
    # <p>
    # The list is searched starting at 0 until an
    # item is found that is equal to the search item.
    # If no item is found, -1 is returned.  Indexing
    # is zero based.
    # 
    # @param string the search item
    # @return the index of the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def index_of(string)
      return index_of(string, 0)
    end
    
    typesig { [String, ::Java::Int] }
    # Searches the receiver's list starting at the given,
    # zero-relative index until an item is found that is equal
    # to the argument, and returns the index of that item. If
    # no item is found or the starting index is out of range,
    # returns -1.
    # 
    # @param string the search item
    # @param start the zero-relative index at which to start the search
    # @return the index of the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def index_of(string, start)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      # Bug in Windows.  For some reason, LB_FINDSTRINGEXACT
      # will not find empty strings even though it is legal
      # to insert an empty string into a list.  The fix is
      # to search the list, an item at a time.
      if ((string.length).equal?(0))
        count = get_item_count
        i = start
        while i < count
          if ((string == get_item(i)))
            return i
          end
          i += 1
        end
        return -1
      end
      # Use LB_FINDSTRINGEXACT to search for the item
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
      if (!(0 <= start && start < count))
        return -1
      end
      index = start - 1
      last = 0
      buffer = TCHAR.new(get_code_page, string, true)
      begin
        # 64
        index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_FINDSTRINGEXACT, last = index, buffer))
        if ((index).equal?(OS::LB_ERR) || index <= last)
          return -1
        end
      end while (!(string == get_item(index)))
      return index
    end
    
    typesig { [::Java::Int] }
    # Returns <code>true</code> if the item is selected,
    # and <code>false</code> otherwise.  Indices out of
    # range are ignored.
    # 
    # @param index the index of the item
    # @return the selection state of the item at the index
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def is_selected(index)
      check_widget
      # 64
      result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETSEL, index, 0))
      return (!(result).equal?(0)) && (!(result).equal?(OS::LB_ERR))
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Removes the items from the receiver at the given
    # zero-relative indices.
    # 
    # @param indices the array of indices of the items
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # <li>ERROR_NULL_ARGUMENT - if the indices array is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove(indices)
      check_widget
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((indices.attr_length).equal?(0))
        return
      end
      new_indices = Array.typed(::Java::Int).new(indices.attr_length) { 0 }
      System.arraycopy(indices, 0, new_indices, 0, indices.attr_length)
      sort(new_indices)
      start = new_indices[new_indices.attr_length - 1]
      end_ = new_indices[0]
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
      if (!(0 <= start && start <= end_ && end_ < count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      # 64
      top_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTOPINDEX, 0, 0))
      rect = nil
      # long
      h_dc = 0
      old_font = 0
      new_font = 0
      new_width = 0
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        rect = RECT.new
        h_dc = OS._get_dc(self.attr_handle)
        new_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
        if (!(new_font).equal?(0))
          old_font = OS._select_object(h_dc, new_font)
        end
      end
      cp = get_code_page
      i = 0
      top_count = 0
      last = -1
      while (i < new_indices.attr_length)
        index = new_indices[i]
        if (!(index).equal?(last))
          buffer = nil
          if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
            # 64
            length_ = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTEXTLEN, index, 0))
            if ((length_).equal?(OS::LB_ERR))
              break
            end
            buffer = TCHAR.new(cp, length_ + 1)
            # 64
            result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTEXT, index, buffer))
            if ((result).equal?(OS::LB_ERR))
              break
            end
          end
          # 64
          result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_DELETESTRING, index, 0))
          if ((result).equal?(OS::LB_ERR))
            break
          end
          if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
            flags = OS::DT_CALCRECT | OS::DT_SINGLELINE | OS::DT_NOPREFIX
            OS._draw_text(h_dc, buffer, -1, rect, flags)
            new_width = Math.max(new_width, rect.attr_right - rect.attr_left)
          end
          if (index < top_index)
            top_count += 1
          end
          last = index
        end
        i += 1
      end
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        if (!(new_font).equal?(0))
          OS._select_object(h_dc, old_font)
        end
        OS._release_dc(self.attr_handle, h_dc)
        set_scroll_width(new_width, false)
      end
      if (top_count > 0)
        top_index -= top_count
        OS._send_message(self.attr_handle, OS::LB_SETTOPINDEX, top_index, 0)
      end
      if (i < new_indices.attr_length)
        error(SWT::ERROR_ITEM_NOT_REMOVED)
      end
    end
    
    typesig { [::Java::Int] }
    # Removes the item from the receiver at the given
    # zero-relative index.
    # 
    # @param index the index for the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove(index)
      check_widget
      buffer = nil
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        # 64
        length_ = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTEXTLEN, index, 0))
        if ((length_).equal?(OS::LB_ERR))
          # 64
          count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
          if (0 <= index && index < count)
            error(SWT::ERROR_ITEM_NOT_REMOVED)
          end
          error(SWT::ERROR_INVALID_RANGE)
        end
        buffer = TCHAR.new(get_code_page, length_ + 1)
        # 64
        result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTEXT, index, buffer))
        if ((result).equal?(OS::LB_ERR))
          # 64
          count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
          if (0 <= index && index < count)
            error(SWT::ERROR_ITEM_NOT_REMOVED)
          end
          error(SWT::ERROR_INVALID_RANGE)
        end
      end
      # 64
      top_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTOPINDEX, 0, 0))
      # 64
      result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_DELETESTRING, index, 0))
      if ((result).equal?(OS::LB_ERR))
        # 64
        count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
        if (0 <= index && index < count)
          error(SWT::ERROR_ITEM_NOT_REMOVED)
        end
        error(SWT::ERROR_INVALID_RANGE)
      end
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        set_scroll_width(buffer, false)
      end
      if (index < top_index)
        OS._send_message(self.attr_handle, OS::LB_SETTOPINDEX, top_index - 1, 0)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Removes the items from the receiver which are
    # between the given zero-relative start and end
    # indices (inclusive).
    # 
    # @param start the start of the range
    # @param end the end of the range
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if either the start or end are not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove(start, end_)
      check_widget
      if (start > end_)
        return
      end
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
      if (!(0 <= start && start <= end_ && end_ < count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      if ((start).equal?(0) && (end_).equal?(count - 1))
        remove_all
        return
      end
      # 64
      top_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTOPINDEX, 0, 0))
      rect = nil
      # long
      h_dc = 0
      old_font = 0
      new_font = 0
      new_width = 0
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        rect = RECT.new
        h_dc = OS._get_dc(self.attr_handle)
        new_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
        if (!(new_font).equal?(0))
          old_font = OS._select_object(h_dc, new_font)
        end
      end
      cp = get_code_page
      index = start
      flags = OS::DT_CALCRECT | OS::DT_SINGLELINE | OS::DT_NOPREFIX
      while (index <= end_)
        buffer = nil
        if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
          # 64
          length_ = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTEXTLEN, start, 0))
          if ((length_).equal?(OS::LB_ERR))
            break
          end
          buffer = TCHAR.new(cp, length_ + 1)
          # 64
          result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTEXT, start, buffer))
          if ((result).equal?(OS::LB_ERR))
            break
          end
        end
        # 64
        result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_DELETESTRING, start, 0))
        if ((result).equal?(OS::LB_ERR))
          break
        end
        if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
          OS._draw_text(h_dc, buffer, -1, rect, flags)
          new_width = Math.max(new_width, rect.attr_right - rect.attr_left)
        end
        index += 1
      end
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        if (!(new_font).equal?(0))
          OS._select_object(h_dc, old_font)
        end
        OS._release_dc(self.attr_handle, h_dc)
        set_scroll_width(new_width, false)
      end
      if (end_ < top_index)
        top_index -= end_ - start + 1
        OS._send_message(self.attr_handle, OS::LB_SETTOPINDEX, top_index, 0)
      end
      if (index <= end_)
        error(SWT::ERROR_ITEM_NOT_REMOVED)
      end
    end
    
    typesig { [String] }
    # Searches the receiver's list starting at the first item
    # until an item is found that is equal to the argument,
    # and removes that item from the list.
    # 
    # @param string the item to remove
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the string is not found in the list</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      index = index_of(string, 0)
      if ((index).equal?(-1))
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      remove(index)
    end
    
    typesig { [] }
    # Removes all of the items from the receiver.
    # <p>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove_all
      check_widget
      OS._send_message(self.attr_handle, OS::LB_RESETCONTENT, 0, 0)
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        OS._send_message(self.attr_handle, OS::LB_SETHORIZONTALEXTENT, 0, 0)
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
    
    typesig { [Array.typed(::Java::Int)] }
    # Selects the items at the given zero-relative indices in the receiver.
    # The current selection is not cleared before the new items are selected.
    # <p>
    # If the item at a given index is not selected, it is selected.
    # If the item at a given index was already selected, it remains selected.
    # Indices that are out of range and duplicate indices are ignored.
    # If the receiver is single-select and multiple indices are specified,
    # then all indices are ignored.
    # 
    # @param indices the array of indices for the items to select
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the array of indices is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see List#setSelection(int[])
    def select(indices)
      check_widget
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      length_ = indices.attr_length
      if ((length_).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length_ > 1))
        return
      end
      select(indices, false)
    end
    
    typesig { [Array.typed(::Java::Int), ::Java::Boolean] }
    def select(indices, scroll)
      i = 0
      while (i < indices.attr_length)
        index = indices[i]
        if (!(index).equal?(-1))
          select(index, false)
        end
        i += 1
      end
      if (scroll)
        show_selection
      end
    end
    
    typesig { [::Java::Int] }
    # Selects the item at the given zero-relative index in the receiver's
    # list.  If the item at the index was already selected, it remains
    # selected. Indices that are out of range are ignored.
    # 
    # @param index the index of the item to select
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def select(index)
      check_widget
      select(index, false)
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def select(index, scroll)
      if (index < 0)
        return
      end
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
      if (index >= count)
        return
      end
      if (scroll)
        if (!((self.attr_style & SWT::SINGLE)).equal?(0))
          OS._send_message(self.attr_handle, OS::LB_SETCURSEL, index, 0)
        else
          OS._send_message(self.attr_handle, OS::LB_SETSEL, 1, index)
        end
        return
      end
      # 64
      top_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTOPINDEX, 0, 0))
      item_rect = RECT.new
      selected_rect = nil
      OS._send_message(self.attr_handle, OS::LB_GETITEMRECT, index, item_rect)
      redraw = (self.attr_draw_count).equal?(0) && OS._is_window_visible(self.attr_handle)
      if (redraw)
        OS._update_window(self.attr_handle)
        OS._send_message(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
      end
      focus_index = -1
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # 64
        old_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCURSEL, 0, 0))
        if (!(old_index).equal?(-1))
          selected_rect = RECT.new
          OS._send_message(self.attr_handle, OS::LB_GETITEMRECT, old_index, selected_rect)
        end
        OS._send_message(self.attr_handle, OS::LB_SETCURSEL, index, 0)
      else
        # 64
        focus_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCARETINDEX, 0, 0))
        OS._send_message(self.attr_handle, OS::LB_SETSEL, 1, index)
      end
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        if (!(focus_index).equal?(-1))
          OS._send_message(self.attr_handle, OS::LB_SETCARETINDEX, focus_index, 0)
        end
      end
      OS._send_message(self.attr_handle, OS::LB_SETTOPINDEX, top_index, 0)
      if (redraw)
        OS._send_message(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
        OS._validate_rect(self.attr_handle, nil)
        OS._invalidate_rect(self.attr_handle, item_rect, true)
        if (!(selected_rect).nil?)
          OS._invalidate_rect(self.attr_handle, selected_rect, true)
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Selects the items in the range specified by the given zero-relative
    # indices in the receiver. The range of indices is inclusive.
    # The current selection is not cleared before the new items are selected.
    # <p>
    # If an item in the given range is not selected, it is selected.
    # If an item in the given range was already selected, it remains selected.
    # Indices that are out of range are ignored and no items will be selected
    # if start is greater than end.
    # If the receiver is single-select and there is more than one item in the
    # given range, then all indices are ignored.
    # 
    # @param start the start of the range
    # @param end the end of the range
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see List#setSelection(int,int)
    def select(start, end_)
      check_widget
      if (end_ < 0 || start > end_ || (!((self.attr_style & SWT::SINGLE)).equal?(0) && !(start).equal?(end_)))
        return
      end
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
      if ((count).equal?(0) || start >= count)
        return
      end
      start = Math.max(0, start)
      end_ = Math.min(end_, count - 1)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        select(start, false)
      else
        select(start, end_, false)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def select(start, end_, scroll)
      # Note that when start = end, LB_SELITEMRANGEEX
      # deselects the item.
      if ((start).equal?(end_))
        select(start, scroll)
        return
      end
      OS._send_message(self.attr_handle, OS::LB_SELITEMRANGEEX, start, end_)
      if (scroll)
        show_selection
      end
    end
    
    typesig { [] }
    # Selects all of the items in the receiver.
    # <p>
    # If the receiver is single-select, do nothing.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def select_all
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        return
      end
      OS._send_message(self.attr_handle, OS::LB_SETSEL, 1, -1)
    end
    
    typesig { [::Java::Int] }
    def set_focus_index(index)
      # checkWidget ();
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
      if (!(0 <= index && index < count))
        return
      end
      OS._send_message(self.attr_handle, OS::LB_SETCARETINDEX, index, 0)
    end
    
    typesig { [Font] }
    def set_font(font)
      check_widget
      super(font)
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        set_scroll_width
      end
    end
    
    typesig { [::Java::Int, String] }
    # Sets the text of the item in the receiver's list at the given
    # zero-relative index to the string argument.
    # 
    # @param index the index for the item
    # @param string the new text for the item
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the list minus 1 (inclusive)</li>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_item(index, string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      top_index = get_top_index
      is_selected_ = is_selected(index)
      remove(index)
      add(string, index)
      if (is_selected_)
        select(index, false)
      end
      set_top_index(top_index)
    end
    
    typesig { [Array.typed(String)] }
    # Sets the receiver's items to be the given array of items.
    # 
    # @param items the array of items
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the items array is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if an item in the items array is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_items(items)
      check_widget
      if ((items).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      i = 0
      while i < items.attr_length
        if ((items[i]).nil?)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        i += 1
      end
      # long
      old_proc = OS._get_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC)
      OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, ListProc)
      redraw = (self.attr_draw_count).equal?(0) && OS._is_window_visible(self.attr_handle)
      if (redraw)
        OS._send_message(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
      end
      rect = nil
      # long
      h_dc = 0
      old_font = 0
      new_font = 0
      new_width = 0
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        rect = RECT.new
        h_dc = OS._get_dc(self.attr_handle)
        new_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
        if (!(new_font).equal?(0))
          old_font = OS._select_object(h_dc, new_font)
        end
        OS._send_message(self.attr_handle, OS::LB_SETHORIZONTALEXTENT, 0, 0)
      end
      length_ = items.attr_length
      OS._send_message(self.attr_handle, OS::LB_RESETCONTENT, 0, 0)
      OS._send_message(self.attr_handle, OS::LB_INITSTORAGE, length_, length_ * 32)
      index = 0
      cp = get_code_page
      while (index < length_)
        string = items[index]
        buffer = TCHAR.new(cp, string, true)
        # 64
        result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_ADDSTRING, 0, buffer))
        if ((result).equal?(OS::LB_ERR) || (result).equal?(OS::LB_ERRSPACE))
          break
        end
        if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
          flags = OS::DT_CALCRECT | OS::DT_SINGLELINE | OS::DT_NOPREFIX
          OS._draw_text(h_dc, buffer, -1, rect, flags)
          new_width = Math.max(new_width, rect.attr_right - rect.attr_left)
        end
        index += 1
      end
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        if (!(new_font).equal?(0))
          OS._select_object(h_dc, old_font)
        end
        OS._release_dc(self.attr_handle, h_dc)
        OS._send_message(self.attr_handle, OS::LB_SETHORIZONTALEXTENT, new_width + INSET, 0)
      end
      if (redraw)
        OS._send_message(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
        # This code is intentionally commented.  The window proc
        # for the list box implements WM_SETREDRAW to invalidate
        # and erase the widget.  This is undocumented behavior.
        # The commented code below shows what is actually happening
        # and reminds us that we are relying on this undocumented
        # behavior.
        # 
        # int flags = OS.RDW_ERASE | OS.RDW_FRAME | OS.RDW_INVALIDATE;
        # OS.RedrawWindow (handle, null, 0, flags);
      end
      OS._set_window_long_ptr(self.attr_handle, OS::GWLP_WNDPROC, old_proc)
      if (index < items.attr_length)
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
    end
    
    typesig { [] }
    def set_scroll_width
      new_width = 0
      rect = RECT.new
      # long
      new_font = 0
      old_font = 0
      # long
      h_dc = OS._get_dc(self.attr_handle)
      new_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
      if (!(new_font).equal?(0))
        old_font = OS._select_object(h_dc, new_font)
      end
      cp = get_code_page
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
      flags = OS::DT_CALCRECT | OS::DT_SINGLELINE | OS::DT_NOPREFIX
      i = 0
      while i < count
        # 64
        length_ = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTEXTLEN, i, 0))
        if (!(length_).equal?(OS::LB_ERR))
          buffer = TCHAR.new(cp, length_ + 1)
          # 64
          result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTEXT, i, buffer))
          if (!(result).equal?(OS::LB_ERR))
            OS._draw_text(h_dc, buffer, -1, rect, flags)
            new_width = Math.max(new_width, rect.attr_right - rect.attr_left)
          end
        end
        i += 1
      end
      if (!(new_font).equal?(0))
        OS._select_object(h_dc, old_font)
      end
      OS._release_dc(self.attr_handle, h_dc)
      OS._send_message(self.attr_handle, OS::LB_SETHORIZONTALEXTENT, new_width + INSET, 0)
    end
    
    typesig { [TCHAR, ::Java::Boolean] }
    def set_scroll_width(buffer, grow)
      rect = RECT.new
      # long
      new_font = 0
      old_font = 0
      # long
      h_dc = OS._get_dc(self.attr_handle)
      new_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
      if (!(new_font).equal?(0))
        old_font = OS._select_object(h_dc, new_font)
      end
      flags = OS::DT_CALCRECT | OS::DT_SINGLELINE | OS::DT_NOPREFIX
      OS._draw_text(h_dc, buffer, -1, rect, flags)
      if (!(new_font).equal?(0))
        OS._select_object(h_dc, old_font)
      end
      OS._release_dc(self.attr_handle, h_dc)
      set_scroll_width(rect.attr_right - rect.attr_left, grow)
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def set_scroll_width(new_width, grow)
      new_width += INSET
      # 64
      width = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETHORIZONTALEXTENT, 0, 0))
      if (grow)
        if (new_width <= width)
          return
        end
        OS._send_message(self.attr_handle, OS::LB_SETHORIZONTALEXTENT, new_width, 0)
      else
        if (new_width < width)
          return
        end
        set_scroll_width
      end
    end
    
    typesig { [Array.typed(::Java::Int)] }
    # Selects the items at the given zero-relative indices in the receiver.
    # The current selection is cleared before the new items are selected.
    # <p>
    # Indices that are out of range and duplicate indices are ignored.
    # If the receiver is single-select and multiple indices are specified,
    # then all indices are ignored.
    # 
    # @param indices the indices of the items to select
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the array of indices is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see List#deselectAll()
    # @see List#select(int[])
    def set_selection(indices)
      check_widget
      if ((indices).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      deselect_all
      length_ = indices.attr_length
      if ((length_).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length_ > 1))
        return
      end
      select(indices, true)
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        focus_index = indices[0]
        if (focus_index >= 0)
          set_focus_index(focus_index)
        end
      end
    end
    
    typesig { [Array.typed(String)] }
    # Sets the receiver's selection to be the given array of items.
    # The current selection is cleared before the new items are selected.
    # <p>
    # Items that are not in the receiver are ignored.
    # If the receiver is single-select and multiple items are specified,
    # then all items are ignored.
    # 
    # @param items the array of items
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the array of items is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see List#deselectAll()
    # @see List#select(int[])
    # @see List#setSelection(int[])
    def set_selection(items)
      check_widget
      if ((items).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      deselect_all
      length_ = items.attr_length
      if ((length_).equal?(0) || (!((self.attr_style & SWT::SINGLE)).equal?(0) && length_ > 1))
        return
      end
      focus_index = -1
      i = length_ - 1
      while i >= 0
        string = items[i]
        index = 0
        if (!(string).nil?)
          local_focus = -1
          while (!((index = index_of(string, index))).equal?(-1))
            if ((local_focus).equal?(-1))
              local_focus = index
            end
            select(index, false)
            if (!((self.attr_style & SWT::SINGLE)).equal?(0) && is_selected(index))
              show_selection
              return
            end
            index += 1
          end
          if (!(local_focus).equal?(-1))
            focus_index = local_focus
          end
        end
        (i -= 1)
      end
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        if (focus_index >= 0)
          set_focus_index(focus_index)
        end
      end
    end
    
    typesig { [::Java::Int] }
    # Selects the item at the given zero-relative index in the receiver.
    # If the item at the index was already selected, it remains selected.
    # The current selection is first cleared, then the new item is selected.
    # Indices that are out of range are ignored.
    # 
    # @param index the index of the item to select
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # @see List#deselectAll()
    # @see List#select(int)
    def set_selection(index)
      check_widget
      deselect_all
      select(index, true)
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        if (index >= 0)
          set_focus_index(index)
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Selects the items in the range specified by the given zero-relative
    # indices in the receiver. The range of indices is inclusive.
    # The current selection is cleared before the new items are selected.
    # <p>
    # Indices that are out of range are ignored and no items will be selected
    # if start is greater than end.
    # If the receiver is single-select and there is more than one item in the
    # given range, then all indices are ignored.
    # 
    # @param start the start index of the items to select
    # @param end the end index of the items to select
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see List#deselectAll()
    # @see List#select(int,int)
    def set_selection(start, end_)
      check_widget
      deselect_all
      if (end_ < 0 || start > end_ || (!((self.attr_style & SWT::SINGLE)).equal?(0) && !(start).equal?(end_)))
        return
      end
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
      if ((count).equal?(0) || start >= count)
        return
      end
      start = Math.max(0, start)
      end_ = Math.min(end_, count - 1)
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        select(start, true)
      else
        select(start, end_, true)
        set_focus_index(start)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the zero-relative index of the item which is currently
    # at the top of the receiver. This index can change when items
    # are scrolled or new items are added and removed.
    # 
    # @param index the index of the top item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_top_index(index)
      check_widget
      # 64
      result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_SETTOPINDEX, index, 0))
      if ((result).equal?(OS::LB_ERR))
        # 64
        count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
        index = Math.min(count - 1, Math.max(0, index))
        OS._send_message(self.attr_handle, OS::LB_SETTOPINDEX, index, 0)
      end
    end
    
    typesig { [] }
    # Shows the selection.  If the selection is already showing in the receiver,
    # this method simply returns.  Otherwise, the items are scrolled until
    # the selection is visible.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def show_selection
      check_widget
      index = 0
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # 64
        index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCURSEL, 0, 0))
      else
        indices = Array.typed(::Java::Int).new(1) { 0 }
        # 64
        result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETSELITEMS, 1, indices))
        index = indices[0]
        if (!(result).equal?(1))
          index = -1
        end
      end
      if ((index).equal?(-1))
        return
      end
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
      if ((count).equal?(0))
        return
      end
      # 64
      height = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETITEMHEIGHT, 0, 0))
      force_resize
      rect = RECT.new
      OS._get_client_rect(self.attr_handle, rect)
      # 64
      top_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTOPINDEX, 0, 0))
      visible_count = Math.max(rect.attr_bottom / height, 1)
      bottom_index = Math.min(top_index + visible_count, count) - 1
      if (top_index <= index && index <= bottom_index)
        return
      end
      new_top = Math.min(Math.max(index - (visible_count / 2), 0), count - 1)
      OS._send_message(self.attr_handle, OS::LB_SETTOPINDEX, new_top, 0)
    end
    
    typesig { [] }
    def widget_style
      bits = super | OS::LBS_NOTIFY | OS::LBS_NOINTEGRALHEIGHT
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        return bits
      end
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        if (!((self.attr_style & SWT::SIMPLE)).equal?(0))
          return bits | OS::LBS_MULTIPLESEL
        end
        return bits | OS::LBS_EXTENDEDSEL
      end
      return bits
    end
    
    typesig { [] }
    def window_class
      return ListClass
    end
    
    typesig { [] }
    # long
    def window_proc
      return ListProc
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_char(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Feature in Windows.  The Windows list box does not implement
      # the control key interface for multi-select list boxes, making
      # it inaccessible from the keyboard.  The fix is to implement
      # the key processing.
      if (OS._get_key_state(OS::VK_CONTROL) < 0 && OS._get_key_state(OS::VK_SHIFT) >= 0)
        bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        if (!((bits & OS::LBS_EXTENDEDSEL)).equal?(0))
          catch(:break_case) do
            # 64
            case (RJava.cast_to_int(w_param))
            when OS::VK_SPACE
              # 64
              index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCARETINDEX, 0, 0))
              # 64
              code = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETSEL, index, 0))
              if ((code).equal?(OS::LB_ERR))
                throw :break_case, :thrown
              end
              OS._send_message(self.attr_handle, OS::LB_SETSEL, !(code).equal?(0) ? 0 : 1, index)
              OS._send_message(self.attr_handle, OS::LB_SETANCHORINDEX, index, 0)
              post_event(SWT::Selection)
              return LRESULT::ZERO
            end
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_keydown(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Feature in Windows.  The Windows list box does not implement
      # the control key interface for multi-select list boxes, making
      # it inaccessible from the keyboard.  The fix is to implement
      # the key processing.
      if (OS._get_key_state(OS::VK_CONTROL) < 0 && OS._get_key_state(OS::VK_SHIFT) >= 0)
        bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        if (!((bits & OS::LBS_EXTENDEDSEL)).equal?(0))
          location = -1
          catch(:break_case) do
            # 64
            case (RJava.cast_to_int(w_param))
            when OS::VK_SPACE
              # Ensure that the window proc does not process VK_SPACE
              # so that it can be handled in WM_CHAR.  This allows the
              # application to cancel an operation that is normally
              # performed in WM_KEYDOWN from WM_CHAR.
              return LRESULT::ZERO
            when OS::VK_UP, OS::VK_DOWN
              # 64
              index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCARETINDEX, 0, 0))
              # 64
              location = Math.max(0, index + (((RJava.cast_to_int(w_param))).equal?(OS::VK_UP) ? -1 : 1))
            when OS::VK_PRIOR
              # 64
              index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCARETINDEX, 0, 0))
              # 64
              top_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTOPINDEX, 0, 0))
              if (!(index).equal?(top_index))
                location = top_index
              else
                force_resize
                rect = RECT.new
                OS._get_client_rect(self.attr_handle, rect)
                # 64
                item_height = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETITEMHEIGHT, 0, 0))
                page_size = Math.max(2, (rect.attr_bottom / item_height))
                location = Math.max(0, top_index - (page_size - 1))
              end
            when OS::VK_NEXT
              # 64
              index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCARETINDEX, 0, 0))
              # 64
              top_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTOPINDEX, 0, 0))
              force_resize
              rect = RECT.new
              OS._get_client_rect(self.attr_handle, rect)
              # 64
              item_height = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETITEMHEIGHT, 0, 0))
              page_size = Math.max(2, (rect.attr_bottom / item_height))
              bottom_index = top_index + page_size - 1
              if (!(index).equal?(bottom_index))
                location = bottom_index
              else
                location = bottom_index + page_size - 1
              end
              # 64
              count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
              if (!(count).equal?(OS::LB_ERR))
                location = Math.min(count - 1, location)
              end
            when OS::VK_HOME
              location = 0
            when OS::VK_END
              # 64
              count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCOUNT, 0, 0))
              if ((count).equal?(OS::LB_ERR))
                throw :break_case, :thrown
              end
              location = count - 1
            end
          end
          if (!(location).equal?(-1))
            OS._send_message(self.attr_handle, OS::WM_CHANGEUISTATE, OS::UIS_INITIALIZE, 0)
            OS._send_message(self.attr_handle, OS::LB_SETCARETINDEX, location, 0)
            return LRESULT::ZERO
          end
        end
      end
      # Feature in Windows.  When the user changes focus using
      # the keyboard, the focus indicator does not draw.  The
      # fix is to update the UI state for the control whenever
      # the focus indicator changes as a result of something
      # the user types.
      # 
      # 64
      ui_state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::WM_QUERYUISTATE, 0, 0))
      if (!((ui_state & OS::UISF_HIDEFOCUS)).equal?(0))
        # 64
        old_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCARETINDEX, 0, 0))
        # long
        code = call_window_proc(self.attr_handle, OS::WM_KEYDOWN, w_param, l_param)
        # 64
        new_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETCARETINDEX, 0, 0))
        if (!(old_index).equal?(new_index))
          OS._send_message(self.attr_handle, OS::WM_CHANGEUISTATE, OS::UIS_INITIALIZE, 0)
          # Bug in Windows.  When the WM_CHANGEUISTATE is used
          # to update the UI state for a list that has been
          # selected using Shift+Arrow, the focus indicator
          # has pixel corruption.  The fix is to redraw the
          # focus item.
          item_rect = RECT.new
          OS._send_message(self.attr_handle, OS::LB_GETITEMRECT, new_index, item_rect)
          OS._invalidate_rect(self.attr_handle, item_rect, true)
        end
        return LRESULT.new(code)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_size(w_param, l_param)
      # Bug in Windows.  If the top index is changed while the
      # list is being resized, Windows does not redraw properly
      # when their is white space at the bottom of the control.
      # The fix is to detect when the top index has changed and
      # redraw the control.
      # 
      # Bug in Windows.  If the receiver is scrolled horizontally
      # and is resized, the list does not redraw properly.  The fix
      # is to redraw the control when the horizontal scroll bar is
      # not at the beginning.
      # 
      # 64
      old_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTOPINDEX, 0, 0))
      result = super(w_param, l_param)
      if (!is_disposed)
        info = SCROLLINFO.new
        info.attr_cb_size = SCROLLINFO.attr_sizeof
        info.attr_f_mask = OS::SIF_POS
        if (OS._get_scroll_info(self.attr_handle, OS::SB_HORZ, info))
          if (!(info.attr_n_pos).equal?(0))
            OS._invalidate_rect(self.attr_handle, nil, true)
          end
        end
        # 64
        new_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::LB_GETTOPINDEX, 0, 0))
        if (!(old_index).equal?(new_index))
          OS._invalidate_rect(self.attr_handle, nil, true)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_command_child(w_param, l_param)
      code = OS._hiword(w_param)
      case (code)
      when OS::LBN_SELCHANGE
        post_event(SWT::Selection)
      when OS::LBN_DBLCLK
        post_event(SWT::DefaultSelection)
      end
      return super(w_param, l_param)
    end
    
    private
    alias_method :initialize__list, :initialize
  end
  
end
