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
  module ComboImports
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
  
  # Instances of this class are controls that allow the user
  # to choose an item from a list of items, or optionally
  # enter a new value by typing it into an editable text
  # field. Often, <code>Combo</code>s are used in the same place
  # where a single selection <code>List</code> widget could
  # be used but space is limited. A <code>Combo</code> takes
  # less space than a <code>List</code> widget and shows
  # similar information.
  # <p>
  # Note: Since <code>Combo</code>s can contain both a list
  # and an editable text field, it is possible to confuse methods
  # which access one versus the other (compare for example,
  # <code>clearSelection()</code> and <code>deselectAll()</code>).
  # The API documentation is careful to indicate either "the
  # receiver's list" or the "the receiver's text field" to
  # distinguish between the two cases.
  # </p><p>
  # Note that although this class is a subclass of <code>Composite</code>,
  # it does not make sense to add children to it, or set a layout on it.
  # </p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>DROP_DOWN, READ_ONLY, SIMPLE</dd>
  # <dt><b>Events:</b></dt>
  # <dd>DefaultSelection, Modify, Selection, Verify</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles DROP_DOWN and SIMPLE may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see List
  # @see <a href="http://www.eclipse.org/swt/snippets/#combo">Combo snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Combo < ComboImports.const_get :Composite
    include_class_members ComboImports
    
    attr_accessor :no_selection
    alias_method :attr_no_selection, :no_selection
    undef_method :no_selection
    alias_method :attr_no_selection=, :no_selection=
    undef_method :no_selection=
    
    attr_accessor :ignore_default_selection
    alias_method :attr_ignore_default_selection, :ignore_default_selection
    undef_method :ignore_default_selection
    alias_method :attr_ignore_default_selection=, :ignore_default_selection=
    undef_method :ignore_default_selection=
    
    attr_accessor :ignore_character
    alias_method :attr_ignore_character, :ignore_character
    undef_method :ignore_character
    alias_method :attr_ignore_character=, :ignore_character=
    undef_method :ignore_character=
    
    attr_accessor :ignore_modify
    alias_method :attr_ignore_modify, :ignore_modify
    undef_method :ignore_modify
    alias_method :attr_ignore_modify=, :ignore_modify=
    undef_method :ignore_modify=
    
    attr_accessor :ignore_resize
    alias_method :attr_ignore_resize, :ignore_resize
    undef_method :ignore_resize
    alias_method :attr_ignore_resize=, :ignore_resize=
    undef_method :ignore_resize=
    
    attr_accessor :scroll_width
    alias_method :attr_scroll_width, :scroll_width
    undef_method :scroll_width
    alias_method :attr_scroll_width=, :scroll_width=
    undef_method :scroll_width=
    
    attr_accessor :visible_count
    alias_method :attr_visible_count, :visible_count
    undef_method :visible_count
    alias_method :attr_visible_count=, :visible_count=
    undef_method :visible_count=
    
    # long
    attr_accessor :cbt_hook
    alias_method :attr_cbt_hook, :cbt_hook
    undef_method :cbt_hook
    alias_method :attr_cbt_hook=, :cbt_hook=
    undef_method :cbt_hook=
    
    class_module.module_eval {
      # These values can be different on different platforms.
      # Therefore they are not initialized in the declaration
      # to stop the compiler from inlining.
      when_class_loaded do
        const_set :LIMIT, OS::IsWinNT ? 0x7fffffff : 0x7fff
      end
      
      # These are the undocumented control id's for the children of
      # a combo box.  Since there are no constants for these values,
      # they may change with different versions of Windows (but have
      # been the same since Windows 3.0).
      const_set_lazy(:CBID_LIST) { 1000 }
      const_attr_reader  :CBID_LIST
      
      const_set_lazy(:CBID_EDIT) { 1001 }
      const_attr_reader  :CBID_EDIT
      
      # final
      # long
      
      def edit_proc
        defined?(@@edit_proc) ? @@edit_proc : @@edit_proc= 0
      end
      alias_method :attr_edit_proc, :edit_proc
      
      def edit_proc=(value)
        @@edit_proc = value
      end
      alias_method :attr_edit_proc=, :edit_proc=
      
      
      def list_proc
        defined?(@@list_proc) ? @@list_proc : @@list_proc= 0
      end
      alias_method :attr_list_proc, :list_proc
      
      def list_proc=(value)
        @@list_proc = value
      end
      alias_method :attr_list_proc=, :list_proc=
      
      const_set_lazy(:ComboClass) { TCHAR.new(0, "COMBOBOX", true) }
      const_attr_reader  :ComboClass
      
      when_class_loaded do
        lp_wnd_class = WNDCLASS.new
        OS._get_class_info(0, ComboClass, lp_wnd_class)
        const_set :ComboProc, lp_wnd_class.attr_lpfn_wnd_proc
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
    # @see SWT#DROP_DOWN
    # @see SWT#READ_ONLY
    # @see SWT#SIMPLE
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @no_selection = false
      @ignore_default_selection = false
      @ignore_character = false
      @ignore_modify = false
      @ignore_resize = false
      @scroll_width = 0
      @visible_count = 0
      @cbt_hook = 0
      super(parent, check_style(style))
      @visible_count = 5
      # This code is intentionally commented
      # if ((style & SWT.H_SCROLL) != 0) this.style |= SWT.H_SCROLL;
      self.attr_style |= SWT::H_SCROLL
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
      result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_ADDSTRING, 0, buffer))
      if ((result).equal?(OS::CB_ERR))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
      if ((result).equal?(OS::CB_ERRSPACE))
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
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCOUNT, 0, 0))
      if (!(0 <= index && index <= count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      buffer = TCHAR.new(get_code_page, string, true)
      # 64
      result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_INSERTSTRING, index, buffer))
      if ((result).equal?(OS::CB_ERRSPACE) || (result).equal?(OS::CB_ERR))
        error(SWT::ERROR_ITEM_NOT_ADDED)
      end
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        set_scroll_width(buffer, true)
      end
    end
    
    typesig { [ModifyListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the receiver's text is modified, by sending
    # it one of the messages defined in the <code>ModifyListener</code>
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
    # @see ModifyListener
    # @see #removeModifyListener
    def add_modify_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Modify, typed_listener)
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the user changes the receiver's selection, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # <code>widgetSelected</code> is called when the user changes the combo's list selection.
    # <code>widgetDefaultSelected</code> is typically called when ENTER is pressed the combo's text area.
    # </p>
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
    
    typesig { [VerifyListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the receiver's text is verified, by sending
    # it one of the messages defined in the <code>VerifyListener</code>
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
    # @see VerifyListener
    # @see #removeVerifyListener
    # 
    # @since 3.1
    def add_verify_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Verify, typed_listener)
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
      if ((hwnd).equal?(self.attr_handle))
        case (msg)
        when OS::WM_SIZE
          @ignore_resize = true
          # long
          result = OS._call_window_proc(ComboProc, hwnd, msg, w_param, l_param)
          @ignore_resize = false
          return result
        end
        return OS._call_window_proc(ComboProc, hwnd, msg, w_param, l_param)
      end
      # long
      hwnd_text = OS._get_dlg_item(self.attr_handle, CBID_EDIT)
      if ((hwnd).equal?(hwnd_text))
        return OS._call_window_proc(self.attr_edit_proc, hwnd, msg, w_param, l_param)
      end
      # long
      hwnd_list = OS._get_dlg_item(self.attr_handle, CBID_LIST)
      if ((hwnd).equal?(hwnd_list))
        return OS._call_window_proc(self.attr_list_proc, hwnd, msg, w_param, l_param)
      end
      return OS._def_window_proc(hwnd, msg, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def _cbtproc(n_code, w_param, l_param)
      # 64
      if ((RJava.cast_to_int(n_code)).equal?(OS::HCBT_CREATEWND))
        buffer = TCHAR.new(0, 128)
        OS._get_class_name(w_param, buffer, buffer.length)
        class_name = buffer.to_s(0, buffer.strlen)
        if ((class_name == "Edit") || (class_name == "EDIT"))
          # $NON-NLS-1$  //$NON-NLS-2$
          bits = OS._get_window_long(w_param, OS::GWL_STYLE)
          OS._set_window_long(w_param, OS::GWL_STYLE, bits & ~OS::ES_NOHIDESEL)
        end
      end
      # 64
      return OS._call_next_hook_ex(@cbt_hook, RJava.cast_to_int(n_code), w_param, l_param)
    end
    
    typesig { [::Java::Int] }
    # long
    def check_handle(hwnd)
      return (hwnd).equal?(self.attr_handle) || (hwnd).equal?(OS._get_dlg_item(self.attr_handle, CBID_EDIT)) || (hwnd).equal?(OS._get_dlg_item(self.attr_handle, CBID_LIST))
    end
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        # Feature in Windows.  It is not possible to create
        # a combo box that has a border using Windows style
        # bits.  All combo boxes draw their own border and
        # do not use the standard Windows border styles.
        # Therefore, no matter what style bits are specified,
        # clear the BORDER bits so that the SWT style will
        # match the Windows widget.
        # 
        # The Windows behavior is currently implemented on
        # all platforms.
        style &= ~SWT::BORDER
        # Even though it is legal to create this widget
        # with scroll bars, they serve no useful purpose
        # because they do not automatically scroll the
        # widget's client area.  The fix is to clear
        # the SWT style.
        style &= ~(SWT::H_SCROLL | SWT::V_SCROLL)
        style = check_bits(style, SWT::DROP_DOWN, SWT::SIMPLE, 0, 0, 0, 0)
        if (!((style & SWT::SIMPLE)).equal?(0))
          return style & ~SWT::READ_ONLY
        end
        return style
      end
    }
    
    typesig { [] }
    # Sets the selection in the receiver's text field to an empty
    # selection starting just before the first character. If the
    # text field is editable, this has the effect of placing the
    # i-beam at the start of the text.
    # <p>
    # Note: To clear the selected items in the receiver's list,
    # use <code>deselectAll()</code>.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #deselectAll
    def clear_selection
      check_widget
      OS._send_message(self.attr_handle, OS::CB_SETEDITSEL, 0, -1)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      width = 0
      height = 0
      if ((w_hint).equal?(SWT::DEFAULT))
        # long
        new_font = 0
        old_font = 0
        # long
        h_dc = OS._get_dc(self.attr_handle)
        new_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
        if (!(new_font).equal?(0))
          old_font = OS._select_object(h_dc, new_font)
        end
        # 64
        count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCOUNT, 0, 0))
        rect = RECT.new
        flags = OS::DT_CALCRECT | OS::DT_NOPREFIX
        if (((self.attr_style & SWT::READ_ONLY)).equal?(0))
          flags |= OS::DT_EDITCONTROL
        end
        length_ = OS._get_window_text_length(self.attr_handle)
        cp = get_code_page
        buffer = TCHAR.new(cp, length_ + 1)
        OS._get_window_text(self.attr_handle, buffer, length_ + 1)
        OS._draw_text(h_dc, buffer, length_, rect, flags)
        width = Math.max(width, rect.attr_right - rect.attr_left)
        if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
          width = Math.max(width, @scroll_width)
        else
          i = 0
          while i < count
            # 64
            length_ = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETLBTEXTLEN, i, 0))
            if (!(length_).equal?(OS::CB_ERR))
              if (length_ + 1 > buffer.length)
                buffer = TCHAR.new(cp, length_ + 1)
              end
              # 64
              result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETLBTEXT, i, buffer))
              if (!(result).equal?(OS::CB_ERR))
                OS._draw_text(h_dc, buffer, length_, rect, flags)
                width = Math.max(width, rect.attr_right - rect.attr_left)
              end
            end
            i += 1
          end
        end
        if (!(new_font).equal?(0))
          OS._select_object(h_dc, old_font)
        end
        OS._release_dc(self.attr_handle, h_dc)
      end
      if ((h_hint).equal?(SWT::DEFAULT))
        if (!((self.attr_style & SWT::SIMPLE)).equal?(0))
          # 64
          count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCOUNT, 0, 0))
          # 64
          item_height = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETITEMHEIGHT, 0, 0))
          height = count * item_height
        end
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
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        width += 8
      else
        # long
        hwnd_text = OS._get_dlg_item(self.attr_handle, CBID_EDIT)
        if (!(hwnd_text).equal?(0))
          # long
          margins = OS._send_message(hwnd_text, OS::EM_GETMARGINS, 0, 0)
          margin_width = OS._loword(margins) + OS._hiword(margins)
          width += margin_width + 3
        end
      end
      pcbi = COMBOBOXINFO.new
      pcbi.attr_cb_size = COMBOBOXINFO.attr_sizeof
      if ((((self.attr_style & SWT::SIMPLE)).equal?(0)) && !OS::IsWinCE && OS._get_combo_box_info(self.attr_handle, pcbi))
        width += pcbi.attr_item_left + (pcbi.attr_button_right - pcbi.attr_button_left)
        height = (pcbi.attr_button_bottom - pcbi.attr_button_top) + pcbi.attr_button_top * 2
      else
        border = OS._get_system_metrics(OS::SM_CXEDGE)
        width += OS._get_system_metrics(OS::SM_CXVSCROLL) + border * 2
        # 64
        text_height = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETITEMHEIGHT, -1, 0))
        if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
          height = text_height + 6
        else
          height += text_height + 10
        end
      end
      if (!((self.attr_style & SWT::SIMPLE)).equal?(0) && !((self.attr_style & SWT::H_SCROLL)).equal?(0))
        height += OS._get_system_metrics(OS::SM_CYHSCROLL)
      end
      return Point.new(width, height)
    end
    
    typesig { [] }
    # Copies the selected text.
    # <p>
    # The current selection is copied to the clipboard.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.1
    def copy
      check_widget
      OS._send_message(self.attr_handle, OS::WM_COPY, 0, 0)
    end
    
    typesig { [] }
    def create_handle
      # Feature in Windows.  When the selection changes in a combo box,
      # Windows draws the selection, even when the combo box does not
      # have focus.  Strictly speaking, this is the correct Windows
      # behavior because the combo box sets ES_NOHIDESEL on the text
      # control that it creates.  Despite this, it looks strange because
      # Windows also clears the selection and selects all the text when
      # the combo box gets focus.  The fix is use the CBT hook to clear
      # the ES_NOHIDESEL style bit when the text control is created.
      if (OS::IsWinCE || !((self.attr_style & (SWT::READ_ONLY | SWT::SIMPLE))).equal?(0))
        super
      else
        thread_id = OS._get_current_thread_id
        cbt_callback = Callback.new(self, "CBTProc", 3) # $NON-NLS-1$
        # long
        cbt_proc = cbt_callback.get_address
        if ((cbt_proc).equal?(0))
          error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        @cbt_hook = OS._set_windows_hook_ex(OS::WH_CBT, cbt_proc, 0, thread_id)
        super
        if (!(@cbt_hook).equal?(0))
          OS._unhook_windows_hook_ex(@cbt_hook)
        end
        @cbt_hook = 0
        cbt_callback.dispose
      end
      self.attr_state &= ~(CANVAS | THEME_BACKGROUND)
      # Get the text and list window procs
      # long
      hwnd_text = OS._get_dlg_item(self.attr_handle, CBID_EDIT)
      if (!(hwnd_text).equal?(0) && (self.attr_edit_proc).equal?(0))
        self.attr_edit_proc = OS._get_window_long_ptr(hwnd_text, OS::GWLP_WNDPROC)
      end
      # long
      hwnd_list = OS._get_dlg_item(self.attr_handle, CBID_LIST)
      if (!(hwnd_list).equal?(0) && (self.attr_list_proc).equal?(0))
        self.attr_list_proc = OS._get_window_long_ptr(hwnd_list, OS::GWLP_WNDPROC)
      end
      # Bug in Windows.  If the combo box has the CBS_SIMPLE style,
      # the list portion of the combo box is not drawn correctly the
      # first time, causing pixel corruption.  The fix is to ensure
      # that the combo box has been resized more than once.
      if (!((self.attr_style & SWT::SIMPLE)).equal?(0))
        flags = OS::SWP_NOZORDER | OS::SWP_DRAWFRAME | OS::SWP_NOACTIVATE
        _set_window_pos(self.attr_handle, 0, 0, 0, 0x3fff, 0x3fff, flags)
        _set_window_pos(self.attr_handle, 0, 0, 0, 0, 0, flags)
      end
    end
    
    typesig { [] }
    # Cuts the selected text.
    # <p>
    # The current selection is first copied to the
    # clipboard and then deleted from the widget.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.1
    def cut
      check_widget
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return
      end
      OS._send_message(self.attr_handle, OS::WM_CUT, 0, 0)
    end
    
    typesig { [] }
    def default_background
      return OS._get_sys_color(OS::COLOR_WINDOW)
    end
    
    typesig { [] }
    def deregister
      super
      # long
      hwnd_text = OS._get_dlg_item(self.attr_handle, CBID_EDIT)
      if (!(hwnd_text).equal?(0))
        self.attr_display.remove_control(hwnd_text)
      end
      # long
      hwnd_list = OS._get_dlg_item(self.attr_handle, CBID_LIST)
      if (!(hwnd_list).equal?(0))
        self.attr_display.remove_control(hwnd_list)
      end
    end
    
    typesig { [::Java::Int] }
    # Deselects the item at the given zero-relative index in the receiver's
    # list.  If the item at the index was already deselected, it remains
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
      # 64
      selection = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCURSEL, 0, 0))
      if (!(index).equal?(selection))
        return
      end
      OS._send_message(self.attr_handle, OS::CB_SETCURSEL, -1, 0)
      send_event(SWT::Modify)
      # widget could be disposed at this point
    end
    
    typesig { [] }
    # Deselects all selected items in the receiver's list.
    # <p>
    # Note: To clear the selection in the receiver's text field,
    # use <code>clearSelection()</code>.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #clearSelection
    def deselect_all
      check_widget
      OS._send_message(self.attr_handle, OS::CB_SETCURSEL, -1, 0)
      send_event(SWT::Modify)
      # widget could be disposed at this point
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Boolean), Array.typed(::Java::Boolean)] }
    # long
    def drag_detect(hwnd, x, y, filter, detect, consume)
      if (filter && ((self.attr_style & SWT::READ_ONLY)).equal?(0))
        # long
        hwnd_text = OS._get_dlg_item(self.attr_handle, CBID_EDIT)
        if (!(hwnd_text).equal?(0))
          start = Array.typed(::Java::Int).new(1) { 0 }
          end_ = Array.typed(::Java::Int).new(1) { 0 }
          OS._send_message(self.attr_handle, OS::CB_GETEDITSEL, start, end_)
          if (!(start[0]).equal?(end_[0]))
            # long
            l_param = OS._makelparam(x, y)
            position = OS._loword(OS._send_message(hwnd_text, OS::EM_CHARFROMPOS, 0, l_param))
            if (start[0] <= position && position < end_[0])
              if (super(hwnd, x, y, filter, detect, consume))
                if (!(consume).nil?)
                  consume[0] = true
                end
                return true
              end
            end
          end
          return false
        end
      end
      return super(hwnd, x, y, filter, detect, consume)
    end
    
    typesig { [::Java::Int] }
    # Returns the item at the given, zero-relative index in the
    # receiver's list. Throws an exception if the index is out
    # of range.
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
      length_ = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETLBTEXTLEN, index, 0))
      if (!(length_).equal?(OS::CB_ERR))
        buffer = TCHAR.new(get_code_page, length_ + 1)
        # 64
        result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETLBTEXT, index, buffer))
        if (!(result).equal?(OS::CB_ERR))
          return buffer.to_s(0, length_)
        end
      end
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCOUNT, 0, 0))
      if (0 <= index && index < count)
        error(SWT::ERROR_CANNOT_GET_ITEM)
      end
      error(SWT::ERROR_INVALID_RANGE)
      return ""
    end
    
    typesig { [] }
    # Returns the number of items contained in the receiver's list.
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
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCOUNT, 0, 0))
      if ((count).equal?(OS::CB_ERR))
        error(SWT::ERROR_CANNOT_GET_COUNT)
      end
      return count
    end
    
    typesig { [] }
    # Returns the height of the area which would be used to
    # display <em>one</em> of the items in the receiver's list.
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
      result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETITEMHEIGHT, 0, 0))
      if ((result).equal?(OS::CB_ERR))
        error(SWT::ERROR_CANNOT_GET_ITEM_HEIGHT)
      end
      return result
    end
    
    typesig { [] }
    # Returns a (possibly empty) array of <code>String</code>s which are
    # the items in the receiver's list.
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
    # Returns <code>true</code> if the receiver's list is visible,
    # and <code>false</code> otherwise.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, this method
    # may still indicate that it is considered visible even though
    # it may not actually be showing.
    # </p>
    # 
    # @return the receiver's list's visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def get_list_visible
      check_widget
      if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
        return !(OS._send_message(self.attr_handle, OS::CB_GETDROPPEDSTATE, 0, 0)).equal?(0)
      end
      return true
    end
    
    typesig { [] }
    def get_name_text
      return get_text
    end
    
    typesig { [::Java::Boolean] }
    # Marks the receiver's list as visible if the argument is <code>true</code>,
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
    # 
    # @since 3.4
    def set_list_visible(visible)
      check_widget
      OS._send_message(self.attr_handle, OS::CB_SHOWDROPDOWN, visible ? 1 : 0, 0)
    end
    
    typesig { [] }
    # Returns the orientation of the receiver.
    # 
    # @return the orientation style
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.1.2
    def get_orientation
      check_widget
      return self.attr_style & (SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT)
    end
    
    typesig { [] }
    # Returns a <code>Point</code> whose x coordinate is the
    # character position representing the start of the selection
    # in the receiver's text field, and whose y coordinate is the
    # character position representing the end of the selection.
    # An "empty" selection is indicated by the x and y coordinates
    # having the same value.
    # <p>
    # Indexing is zero based.  The range of a selection is from
    # 0..N where N is the number of characters in the widget.
    # </p>
    # 
    # @return a point representing the selection start and end
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection
      check_widget
      if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0) && !((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return Point.new(0, OS._get_window_text_length(self.attr_handle))
      end
      start = Array.typed(::Java::Int).new(1) { 0 }
      end_ = Array.typed(::Java::Int).new(1) { 0 }
      OS._send_message(self.attr_handle, OS::CB_GETEDITSEL, start, end_)
      if (!OS::IsUnicode && OS::IsDBLocale)
        start[0] = mbcs_to_wcs_pos(start[0])
        end_[0] = mbcs_to_wcs_pos(end_[0])
      end
      return Point.new(start[0], end_[0])
    end
    
    typesig { [] }
    # Returns the zero-relative index of the item which is currently
    # selected in the receiver's list, or -1 if no item is selected.
    # 
    # @return the index of the selected item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_index
      check_widget
      if (@no_selection)
        return -1
      end
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCURSEL, 0, 0))
    end
    
    typesig { [] }
    # Returns a string containing a copy of the contents of the
    # receiver's text field, or an empty string if there are no
    # contents.
    # 
    # @return the receiver's text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text
      check_widget
      length_ = OS._get_window_text_length(self.attr_handle)
      if ((length_).equal?(0))
        return ""
      end
      buffer = TCHAR.new(get_code_page, length_ + 1)
      OS._get_window_text(self.attr_handle, buffer, length_ + 1)
      return buffer.to_s(0, length_)
    end
    
    typesig { [] }
    # Returns the height of the receivers's text field.
    # 
    # @return the text height
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text_height
      check_widget
      pcbi = COMBOBOXINFO.new
      pcbi.attr_cb_size = COMBOBOXINFO.attr_sizeof
      if ((((self.attr_style & SWT::SIMPLE)).equal?(0)) && !OS::IsWinCE && OS._get_combo_box_info(self.attr_handle, pcbi))
        return (pcbi.attr_button_bottom - pcbi.attr_button_top) + pcbi.attr_button_top * 2
      end
      # 64
      result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETITEMHEIGHT, -1, 0))
      if ((result).equal?(OS::CB_ERR))
        error(SWT::ERROR_CANNOT_GET_ITEM_HEIGHT)
      end
      return !((self.attr_style & SWT::DROP_DOWN)).equal?(0) ? result + 6 : result + 10
    end
    
    typesig { [] }
    # Returns the maximum number of characters that the receiver's
    # text field is capable of holding. If this has not been changed
    # by <code>setTextLimit()</code>, it will be the constant
    # <code>Combo.LIMIT</code>.
    # 
    # @return the text limit
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #LIMIT
    def get_text_limit
      check_widget
      # long
      hwnd_text = OS._get_dlg_item(self.attr_handle, CBID_EDIT)
      if ((hwnd_text).equal?(0))
        return LIMIT
      end
      # 64
      return RJava.cast_to_int(OS._send_message(hwnd_text, OS::EM_GETLIMITTEXT, 0, 0)) & 0x7fffffff
    end
    
    typesig { [] }
    # Gets the number of items that are visible in the drop
    # down portion of the receiver's list.
    # <p>
    # Note: This operation is a hint and is not supported on
    # platforms that do not have this concept.
    # </p>
    # 
    # @return the number of items that are visible
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_visible_item_count
      check_widget
      return @visible_count
    end
    
    typesig { [] }
    def has_focus
      # long
      hwnd_focus = OS._get_focus
      if ((hwnd_focus).equal?(self.attr_handle))
        return true
      end
      if ((hwnd_focus).equal?(0))
        return false
      end
      # long
      hwnd_text = OS._get_dlg_item(self.attr_handle, CBID_EDIT)
      if ((hwnd_focus).equal?(hwnd_text))
        return true
      end
      # long
      hwnd_list = OS._get_dlg_item(self.attr_handle, CBID_LIST)
      if ((hwnd_focus).equal?(hwnd_list))
        return true
      end
      return false
    end
    
    typesig { [String] }
    # Searches the receiver's list starting at the first item
    # (index 0) until an item is found that is equal to the
    # argument, and returns the index of that item. If no item
    # is found, returns -1.
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
    # @param start the zero-relative index at which to begin the search
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
      # Bug in Windows.  For some reason, CB_FINDSTRINGEXACT
      # will not find empty strings even though it is legal
      # to insert an empty string into a combo.  The fix is
      # to search the combo, an item at a time.
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
      # Use CB_FINDSTRINGEXACT to search for the item
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCOUNT, 0, 0))
      if (!(0 <= start && start < count))
        return -1
      end
      index = start - 1
      last = 0
      buffer = TCHAR.new(get_code_page, string, true)
      begin
        # 64
        index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_FINDSTRINGEXACT, last = index, buffer))
        if ((index).equal?(OS::CB_ERR) || index <= last)
          return -1
        end
      end while (!(string == get_item(index)))
      return index
    end
    
    typesig { [::Java::Int] }
    def mbcs_to_wcs_pos(mbcs_pos)
      if (mbcs_pos <= 0)
        return 0
      end
      if (OS::IsUnicode)
        return mbcs_pos
      end
      # long
      hwnd_text = OS._get_dlg_item(self.attr_handle, CBID_EDIT)
      if ((hwnd_text).equal?(0))
        return mbcs_pos
      end
      mbcs_size = OS._get_window_text_length_a(hwnd_text)
      if ((mbcs_size).equal?(0))
        return 0
      end
      if (mbcs_pos >= mbcs_size)
        return mbcs_size
      end
      buffer = Array.typed(::Java::Byte).new(mbcs_size + 1) { 0 }
      OS._get_window_text_a(hwnd_text, buffer, mbcs_size + 1)
      return OS._multi_byte_to_wide_char(get_code_page, OS::MB_PRECOMPOSED, buffer, mbcs_pos, nil, 0)
    end
    
    typesig { [] }
    # Pastes text from clipboard.
    # <p>
    # The selected text is deleted from the widget
    # and new text inserted from the clipboard.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.1
    def paste
      check_widget
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return
      end
      OS._send_message(self.attr_handle, OS::WM_PASTE, 0, 0)
    end
    
    typesig { [] }
    def register
      super
      # long
      hwnd_text = OS._get_dlg_item(self.attr_handle, CBID_EDIT)
      if (!(hwnd_text).equal?(0))
        self.attr_display.add_control(hwnd_text, self)
      end
      # long
      hwnd_list = OS._get_dlg_item(self.attr_handle, CBID_LIST)
      if (!(hwnd_list).equal?(0))
        self.attr_display.add_control(hwnd_list, self)
      end
    end
    
    typesig { [::Java::Int] }
    # Removes the item from the receiver's list at the given
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
      remove(index, true)
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def remove(index, notify)
      buffer = nil
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        # 64
        length_ = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETLBTEXTLEN, index, 0))
        if ((length_).equal?(OS::CB_ERR))
          # 64
          count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCOUNT, 0, 0))
          if (0 <= index && index < count)
            error(SWT::ERROR_ITEM_NOT_REMOVED)
          end
          error(SWT::ERROR_INVALID_RANGE)
        end
        buffer = TCHAR.new(get_code_page, length_ + 1)
        # 64
        result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETLBTEXT, index, buffer))
        if ((result).equal?(OS::CB_ERR))
          # 64
          count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCOUNT, 0, 0))
          if (0 <= index && index < count)
            error(SWT::ERROR_ITEM_NOT_REMOVED)
          end
          error(SWT::ERROR_INVALID_RANGE)
        end
      end
      length_ = OS._get_window_text_length(self.attr_handle)
      # 64
      code = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_DELETESTRING, index, 0))
      if ((code).equal?(OS::CB_ERR))
        # 64
        count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCOUNT, 0, 0))
        if (0 <= index && index < count)
          error(SWT::ERROR_ITEM_NOT_REMOVED)
        end
        error(SWT::ERROR_INVALID_RANGE)
      end
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        set_scroll_width(buffer, true)
      end
      if (notify && !(length_).equal?(OS._get_window_text_length(self.attr_handle)))
        send_event(SWT::Modify)
        if (is_disposed)
          return
        end
      end
      # Bug in Windows.  When the combo box is read only
      # with exactly one item that is currently selected
      # and that item is removed, the combo box does not
      # redraw to clear the text area.  The fix is to
      # force a redraw.
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        # 64
        count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCOUNT, 0, 0))
        if ((count).equal?(0))
          OS._invalidate_rect(self.attr_handle, nil, true)
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Removes the items from the receiver's list which are
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
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCOUNT, 0, 0))
      if (!(0 <= start && start <= end_ && end_ < count))
        error(SWT::ERROR_INVALID_RANGE)
      end
      text_length = OS._get_window_text_length(self.attr_handle)
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
      flags = OS::DT_CALCRECT | OS::DT_SINGLELINE | OS::DT_NOPREFIX
      i = start
      while i <= end_
        buffer = nil
        if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
          # 64
          length_ = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETLBTEXTLEN, start, 0))
          if ((length_).equal?(OS::CB_ERR))
            break
          end
          buffer = TCHAR.new(cp, length_ + 1)
          # 64
          result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETLBTEXT, start, buffer))
          if ((result).equal?(OS::CB_ERR))
            break
          end
        end
        # 64
        result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_DELETESTRING, start, 0))
        if ((result).equal?(OS::CB_ERR))
          error(SWT::ERROR_ITEM_NOT_REMOVED)
        end
        if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
          OS._draw_text(h_dc, buffer, -1, rect, flags)
          new_width = Math.max(new_width, rect.attr_right - rect.attr_left)
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
      if (!(text_length).equal?(OS._get_window_text_length(self.attr_handle)))
        send_event(SWT::Modify)
        if (is_disposed)
          return
        end
      end
      # Bug in Windows.  When the combo box is read only
      # with exactly one item that is currently selected
      # and that item is removed, the combo box does not
      # redraw to clear the text area.  The fix is to
      # force a redraw.
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        # 64
        count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCOUNT, 0, 0))
        if ((count).equal?(0))
          OS._invalidate_rect(self.attr_handle, nil, true)
        end
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
    # Removes all of the items from the receiver's list and clear the
    # contents of receiver's text field.
    # <p>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def remove_all
      check_widget
      OS._send_message(self.attr_handle, OS::CB_RESETCONTENT, 0, 0)
      send_event(SWT::Modify)
      if (is_disposed)
        return
      end
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        set_scroll_width(0)
      end
    end
    
    typesig { [ModifyListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the receiver's text is modified.
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
    # @see ModifyListener
    # @see #addModifyListener
    def remove_modify_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Modify, listener)
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
    
    typesig { [VerifyListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the control is verified.
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
    # @see VerifyListener
    # @see #addVerifyListener
    # 
    # @since 3.1
    def remove_verify_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Verify, listener)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Event] }
    # long
    # long
    def send_key_event(type, msg, w_param, l_param, event)
      if (!super(type, msg, w_param, l_param, event))
        return false
      end
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return true
      end
      if (!(type).equal?(SWT::KeyDown))
        return true
      end
      if (!(msg).equal?(OS::WM_CHAR) && !(msg).equal?(OS::WM_KEYDOWN) && !(msg).equal?(OS::WM_IME_CHAR))
        return true
      end
      if ((event.attr_character).equal?(0))
        return true
      end
      if (!hooks(SWT::Verify) && !filters(SWT::Verify))
        return true
      end
      key = event.attr_character
      state_mask = event.attr_state_mask
      # Disable all magic keys that could modify the text
      # and don't send events when Alt, Shift or Ctrl is
      # pressed.
      case (msg)
      # FALL THROUGH
      when OS::WM_CHAR
        if (!(key).equal?(0x8) && !(key).equal?(0x7f) && !(key).equal?(Character.new(?\r.ord)) && !(key).equal?(Character.new(?\t.ord)) && !(key).equal?(Character.new(?\n.ord)))
        end
      when OS::WM_KEYDOWN
        if (!((state_mask & (SWT::ALT | SWT::SHIFT | SWT::CONTROL))).equal?(0))
          return false
        end
      end
      # If the left button is down, the text widget refuses the character.
      if (OS._get_key_state(OS::VK_LBUTTON) < 0)
        return true
      end
      # Verify the character
      old_text = ""
      start = Array.typed(::Java::Int).new(1) { 0 }
      end_ = Array.typed(::Java::Int).new(1) { 0 }
      # long
      hwnd_text = OS._get_dlg_item(self.attr_handle, CBID_EDIT)
      if ((hwnd_text).equal?(0))
        return true
      end
      OS._send_message(hwnd_text, OS::EM_GETSEL, start, end_)
      case (key)
      when 0x8
        # Bs
        if ((start[0]).equal?(end_[0]))
          if ((start[0]).equal?(0))
            return true
          end
          start[0] = start[0] - 1
          if (!OS::IsUnicode && OS::IsDBLocale)
            new_start = Array.typed(::Java::Int).new(1) { 0 }
            new_end = Array.typed(::Java::Int).new(1) { 0 }
            OS._send_message(hwnd_text, OS::EM_SETSEL, start[0], end_[0])
            OS._send_message(hwnd_text, OS::EM_GETSEL, new_start, new_end)
            if (!(start[0]).equal?(new_start[0]))
              start[0] = start[0] - 1
            end
          end
          start[0] = Math.max(start[0], 0)
        end
      when 0x7f
        # Del
        if ((start[0]).equal?(end_[0]))
          length_ = OS._get_window_text_length(hwnd_text)
          if ((start[0]).equal?(length_))
            return true
          end
          end_[0] = end_[0] + 1
          if (!OS::IsUnicode && OS::IsDBLocale)
            new_start = Array.typed(::Java::Int).new(1) { 0 }
            new_end = Array.typed(::Java::Int).new(1) { 0 }
            OS._send_message(hwnd_text, OS::EM_SETSEL, start[0], end_[0])
            OS._send_message(hwnd_text, OS::EM_GETSEL, new_start, new_end)
            if (!(end_[0]).equal?(new_end[0]))
              end_[0] = end_[0] + 1
            end
          end
          end_[0] = Math.min(end_[0], length_)
        end
      when Character.new(?\r.ord)
        # Return
        return true
      else
        # Tab and other characters
        if (!(key).equal?(Character.new(?\t.ord)) && key < 0x20)
          return true
        end
        old_text = RJava.cast_to_string(String.new(Array.typed(::Java::Char).new([key])))
      end
      new_text = verify_text(old_text, start[0], end_[0], event)
      if ((new_text).nil?)
        return false
      end
      if ((new_text).equal?(old_text))
        return true
      end
      buffer = TCHAR.new(get_code_page, new_text, true)
      OS._send_message(hwnd_text, OS::EM_SETSEL, start[0], end_[0])
      OS._send_message(hwnd_text, OS::EM_REPLACESEL, 0, buffer)
      return false
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
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCOUNT, 0, 0))
      if (0 <= index && index < count)
        # 64
        selection = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCURSEL, 0, 0))
        # 64
        code = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_SETCURSEL, index, 0))
        if (!(code).equal?(OS::CB_ERR) && !(code).equal?(selection))
          send_event(SWT::Modify)
          # widget could be disposed at this point
        end
      end
    end
    
    typesig { [::Java::Int] }
    # long
    def set_background_image(h_bitmap)
      super(h_bitmap)
      # long
      hwnd_text = OS._get_dlg_item(self.attr_handle, CBID_EDIT)
      if (!(hwnd_text).equal?(0))
        OS._invalidate_rect(hwnd_text, nil, true)
      end
      # long
      hwnd_list = OS._get_dlg_item(self.attr_handle, CBID_LIST)
      if (!(hwnd_list).equal?(0))
        OS._invalidate_rect(hwnd_list, nil, true)
      end
    end
    
    typesig { [::Java::Int] }
    def set_background_pixel(pixel)
      super(pixel)
      # long
      hwnd_text = OS._get_dlg_item(self.attr_handle, CBID_EDIT)
      if (!(hwnd_text).equal?(0))
        OS._invalidate_rect(hwnd_text, nil, true)
      end
      # long
      hwnd_list = OS._get_dlg_item(self.attr_handle, CBID_LIST)
      if (!(hwnd_list).equal?(0))
        OS._invalidate_rect(hwnd_list, nil, true)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def set_bounds(x, y, width, height, flags)
      # Feature in Windows.  If the combo box has the CBS_DROPDOWN
      # or CBS_DROPDOWNLIST style, Windows uses the height that the
      # programmer sets in SetWindowPos () to control height of the
      # drop down list.  When the width is non-zero, Windows remembers
      # this value and sets the height to be the height of the text
      # field part of the combo box.  If the width is zero, Windows
      # allows the height to have any value.  Therefore, when the
      # programmer sets and then queries the height, the values can
      # be different depending on the width.  The problem occurs when
      # the programmer uses computeSize () to determine the preferred
      # height (always the height of the text field) and then uses
      # this value to set the height of the combo box.  The result
      # is a combo box with a zero size drop down list.  The fix, is
      # to always set the height to show a fixed number of combo box
      # items and ignore the height value that the programmer supplies.
      if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
        height = get_text_height + (get_item_height * @visible_count) + 2
        # Feature in Windows.  When a drop down combo box is resized,
        # the combo box resizes the height of the text field and uses
        # the height provided in SetWindowPos () to determine the height
        # of the drop down list.  For some reason, the combo box redraws
        # the whole area, not just the text field.  The fix is to set the
        # SWP_NOSIZE bits when the height of text field and the drop down
        # list is the same as the requested height.
        # 
        # NOTE:  Setting the width of a combo box to zero does not update
        # the width of the drop down control rect.  If the width of the
        # combo box is zero, then do not set SWP_NOSIZE.
        rect = RECT.new
        OS._get_window_rect(self.attr_handle, rect)
        if (!(rect.attr_right - rect.attr_left).equal?(0))
          if (!(OS._send_message(self.attr_handle, OS::CB_GETDROPPEDCONTROLRECT, 0, rect)).equal?(0))
            old_width = rect.attr_right - rect.attr_left
            old_height = rect.attr_bottom - rect.attr_top
            if ((old_width).equal?(width) && (old_height).equal?(height))
              flags |= OS::SWP_NOSIZE
            end
          end
        end
        _set_window_pos(self.attr_handle, 0, x, y, width, height, flags)
      else
        super(x, y, width, height, flags)
      end
    end
    
    typesig { [Font] }
    def set_font(font)
      check_widget
      super(font)
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        set_scroll_width
      end
    end
    
    typesig { [::Java::Int] }
    def set_foreground_pixel(pixel)
      super(pixel)
      # long
      hwnd_text = OS._get_dlg_item(self.attr_handle, CBID_EDIT)
      if (!(hwnd_text).equal?(0))
        OS._invalidate_rect(hwnd_text, nil, true)
      end
      # long
      hwnd_list = OS._get_dlg_item(self.attr_handle, CBID_LIST)
      if (!(hwnd_list).equal?(0))
        OS._invalidate_rect(hwnd_list, nil, true)
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
      selection = get_selection_index
      remove(index, false)
      if (is_disposed)
        return
      end
      add(string, index)
      if (!(selection).equal?(-1))
        select(selection)
      end
    end
    
    typesig { [Array.typed(String)] }
    # Sets the receiver's list to be the given array of items.
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
        set_scroll_width(0)
      end
      OS._send_message(self.attr_handle, OS::CB_RESETCONTENT, 0, 0)
      code_page = get_code_page
      i_ = 0
      while i_ < items.attr_length
        string = items[i_]
        buffer = TCHAR.new(code_page, string, true)
        # 64
        code = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_ADDSTRING, 0, buffer))
        if ((code).equal?(OS::CB_ERR))
          error(SWT::ERROR_ITEM_NOT_ADDED)
        end
        if ((code).equal?(OS::CB_ERRSPACE))
          error(SWT::ERROR_ITEM_NOT_ADDED)
        end
        if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
          flags = OS::DT_CALCRECT | OS::DT_SINGLELINE | OS::DT_NOPREFIX
          OS._draw_text(h_dc, buffer, -1, rect, flags)
          new_width = Math.max(new_width, rect.attr_right - rect.attr_left)
        end
        i_ += 1
      end
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        if (!(new_font).equal?(0))
          OS._select_object(h_dc, old_font)
        end
        OS._release_dc(self.attr_handle, h_dc)
        set_scroll_width(new_width + 3)
      end
      send_event(SWT::Modify)
      # widget could be disposed at this point
    end
    
    typesig { [::Java::Int] }
    # Sets the orientation of the receiver, which must be one
    # of the constants <code>SWT.LEFT_TO_RIGHT</code> or <code>SWT.RIGHT_TO_LEFT</code>.
    # <p>
    # 
    # @param orientation new orientation style
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.1.2
    def set_orientation(orientation)
      check_widget
      if (OS::IsWinCE)
        return
      end
      if (OS::WIN32_VERSION < OS._version(4, 10))
        return
      end
      flags = SWT::RIGHT_TO_LEFT | SWT::LEFT_TO_RIGHT
      if (((orientation & flags)).equal?(0) || ((orientation & flags)).equal?(flags))
        return
      end
      self.attr_style &= ~flags
      self.attr_style |= orientation & flags
      bits = OS._get_window_long(self.attr_handle, OS::GWL_EXSTYLE)
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        self.attr_style |= SWT::MIRRORED
        bits |= OS::WS_EX_LAYOUTRTL
      else
        self.attr_style &= ~SWT::MIRRORED
        bits &= ~OS::WS_EX_LAYOUTRTL
      end
      OS._set_window_long(self.attr_handle, OS::GWL_EXSTYLE, bits)
      # long
      hwnd_text = 0
      hwnd_list = 0
      pcbi = COMBOBOXINFO.new
      pcbi.attr_cb_size = COMBOBOXINFO.attr_sizeof
      if (OS._get_combo_box_info(self.attr_handle, pcbi))
        hwnd_text = pcbi.attr_hwnd_item
        hwnd_list = pcbi.attr_hwnd_list
      end
      if (!(hwnd_text).equal?(0))
        bits1 = OS._get_window_long(hwnd_text, OS::GWL_EXSTYLE)
        bits2 = OS._get_window_long(hwnd_text, OS::GWL_STYLE)
        if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
          bits1 |= OS::WS_EX_RIGHT | OS::WS_EX_RTLREADING
          bits2 |= OS::ES_RIGHT
        else
          bits1 &= ~(OS::WS_EX_RIGHT | OS::WS_EX_RTLREADING)
          bits2 &= ~OS::ES_RIGHT
        end
        OS._set_window_long(hwnd_text, OS::GWL_EXSTYLE, bits1)
        OS._set_window_long(hwnd_text, OS::GWL_STYLE, bits2)
        # Bug in Windows.  For some reason, the single line text field
        # portion of the combo box does not redraw to reflect the new
        # style bits.  The fix is to force the widget to be resized by
        # temporarily shrinking and then growing the width and height.
        rect = RECT.new
        OS._get_window_rect(hwnd_text, rect)
        width = rect.attr_right - rect.attr_left
        height = rect.attr_bottom - rect.attr_top
        OS._get_window_rect(self.attr_handle, rect)
        width_combo = rect.attr_right - rect.attr_left
        height_combo = rect.attr_bottom - rect.attr_top
        u_flags = OS::SWP_NOMOVE | OS::SWP_NOZORDER | OS::SWP_NOACTIVATE
        _set_window_pos(hwnd_text, 0, 0, 0, width - 1, height - 1, u_flags)
        _set_window_pos(self.attr_handle, 0, 0, 0, width_combo - 1, height_combo - 1, u_flags)
        _set_window_pos(hwnd_text, 0, 0, 0, width, height, u_flags)
        _set_window_pos(self.attr_handle, 0, 0, 0, width_combo, height_combo, u_flags)
        OS._invalidate_rect(self.attr_handle, nil, true)
      end
      if (!(hwnd_list).equal?(0))
        bits1 = OS._get_window_long(hwnd_list, OS::GWL_EXSTYLE)
        if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
          bits1 |= OS::WS_EX_LAYOUTRTL
        else
          bits1 &= ~OS::WS_EX_LAYOUTRTL
        end
        OS._set_window_long(hwnd_list, OS::GWL_EXSTYLE, bits1)
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
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCOUNT, 0, 0))
      flags = OS::DT_CALCRECT | OS::DT_SINGLELINE | OS::DT_NOPREFIX
      i = 0
      while i < count
        # 64
        length_ = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETLBTEXTLEN, i, 0))
        if (!(length_).equal?(OS::CB_ERR))
          buffer = TCHAR.new(cp, length_ + 1)
          # 64
          result = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETLBTEXT, i, buffer))
          if (!(result).equal?(OS::CB_ERR))
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
      set_scroll_width(new_width + 3)
    end
    
    typesig { [::Java::Int] }
    def set_scroll_width(scroll_width)
      @scroll_width = scroll_width
      if (!((self.attr_style & SWT::SIMPLE)).equal?(0))
        OS._send_message(self.attr_handle, OS::CB_SETHORIZONTALEXTENT, scroll_width, 0)
        return
      end
      scroll = false
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCOUNT, 0, 0))
      if (count > 3)
        max_width = 0
        if (OS::IsWinCE || OS::WIN32_VERSION < OS._version(4, 10))
          rect = RECT.new
          OS._system_parameters_info(OS::SPI_GETWORKAREA, 0, rect, 0)
          max_width = (rect.attr_right - rect.attr_left) / 4
        else
          # long
          hmonitor = OS._monitor_from_window(self.attr_handle, OS::MONITOR_DEFAULTTONEAREST)
          lpmi = MONITORINFO.new
          lpmi.attr_cb_size = MONITORINFO.attr_sizeof
          OS._get_monitor_info(hmonitor, lpmi)
          max_width = (lpmi.attr_rc_work_right - lpmi.attr_rc_work_left) / 4
        end
        scroll = scroll_width > max_width
      end
      if (scroll)
        OS._send_message(self.attr_handle, OS::CB_SETDROPPEDWIDTH, 0, 0)
        OS._send_message(self.attr_handle, OS::CB_SETHORIZONTALEXTENT, scroll_width, 0)
      else
        scroll_width += OS._get_system_metrics(OS::SM_CYHSCROLL)
        OS._send_message(self.attr_handle, OS::CB_SETDROPPEDWIDTH, scroll_width, 0)
        OS._send_message(self.attr_handle, OS::CB_SETHORIZONTALEXTENT, 0, 0)
      end
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
      if (grow)
        if (new_width <= @scroll_width)
          return
        end
        set_scroll_width(new_width + 3)
      else
        if (new_width < @scroll_width)
          return
        end
        set_scroll_width
      end
    end
    
    typesig { [Point] }
    # Sets the selection in the receiver's text field to the
    # range specified by the argument whose x coordinate is the
    # start of the selection and whose y coordinate is the end
    # of the selection.
    # 
    # @param selection a point representing the new selection start and end
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(selection)
      check_widget
      if ((selection).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      start = selection.attr_x
      end_ = selection.attr_y
      if (!OS::IsUnicode && OS::IsDBLocale)
        start = wcs_to_mbcs_pos(start)
        end_ = wcs_to_mbcs_pos(end_)
      end
      # long
      bits = OS._makelparam(start, end_)
      OS._send_message(self.attr_handle, OS::CB_SETEDITSEL, 0, bits)
    end
    
    typesig { [String] }
    # Sets the contents of the receiver's text field to the
    # given string.
    # <p>
    # Note: The text field in a <code>Combo</code> is typically
    # only capable of displaying a single line of text. Thus,
    # setting the text to a string containing line breaks or
    # other special characters will probably cause it to
    # display incorrectly.
    # </p>
    # 
    # @param string the new text
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
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
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        index = index_of(string)
        if (!(index).equal?(-1))
          select(index)
        end
        return
      end
      limit = LIMIT
      # long
      hwnd_text = OS._get_dlg_item(self.attr_handle, CBID_EDIT)
      if (!(hwnd_text).equal?(0))
        # 64
        limit = RJava.cast_to_int(OS._send_message(hwnd_text, OS::EM_GETLIMITTEXT, 0, 0)) & 0x7fffffff
      end
      if (string.length > limit)
        string = RJava.cast_to_string(string.substring(0, limit))
      end
      buffer = TCHAR.new(get_code_page, string, true)
      if (OS._set_window_text(self.attr_handle, buffer))
        send_event(SWT::Modify)
        # widget could be disposed at this point
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the maximum number of characters that the receiver's
    # text field is capable of holding to be the argument.
    # <p>
    # To reset this value to the default, use <code>setTextLimit(Combo.LIMIT)</code>.
    # Specifying a limit value larger than <code>Combo.LIMIT</code> sets the
    # receiver's limit to <code>Combo.LIMIT</code>.
    # </p>
    # @param limit new text limit
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_CANNOT_BE_ZERO - if the limit is zero</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #LIMIT
    def set_text_limit(limit)
      check_widget
      if ((limit).equal?(0))
        error(SWT::ERROR_CANNOT_BE_ZERO)
      end
      OS._send_message(self.attr_handle, OS::CB_LIMITTEXT, limit, 0)
    end
    
    typesig { [Shell, String] }
    def set_tool_tip_text(shell, string)
      # long
      hwnd_text = OS._get_dlg_item(self.attr_handle, CBID_EDIT)
      # long
      hwnd_list = OS._get_dlg_item(self.attr_handle, CBID_LIST)
      if (!(hwnd_text).equal?(0))
        shell.set_tool_tip_text(hwnd_text, string)
      end
      if (!(hwnd_list).equal?(0))
        shell.set_tool_tip_text(hwnd_list, string)
      end
      shell.set_tool_tip_text(self.attr_handle, string)
    end
    
    typesig { [::Java::Int] }
    # Sets the number of items that are visible in the drop
    # down portion of the receiver's list.
    # <p>
    # Note: This operation is a hint and is not supported on
    # platforms that do not have this concept.
    # </p>
    # 
    # @param count the new number of items to be visible
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_visible_item_count(count)
      check_widget
      if (count < 0)
        return
      end
      @visible_count = count
      if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
        force_resize
        rect = RECT.new
        OS._get_window_rect(self.attr_handle, rect)
        flags = OS::SWP_NOMOVE | OS::SWP_NOZORDER | OS::SWP_DRAWFRAME | OS::SWP_NOACTIVATE
        set_bounds(0, 0, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top, flags)
      end
    end
    
    typesig { [] }
    def subclass
      super
      # long
      new_proc = self.attr_display.attr_window_proc
      # long
      hwnd_text = OS._get_dlg_item(self.attr_handle, CBID_EDIT)
      if (!(hwnd_text).equal?(0))
        OS._set_window_long_ptr(hwnd_text, OS::GWLP_WNDPROC, new_proc)
      end
      # long
      hwnd_list = OS._get_dlg_item(self.attr_handle, CBID_LIST)
      if (!(hwnd_list).equal?(0))
        OS._set_window_long_ptr(hwnd_list, OS::GWLP_WNDPROC, new_proc)
      end
    end
    
    typesig { [MSG] }
    def translate_traversal(msg)
      # When the combo box is dropped down, allow return
      # to select an item in the list and escape to close
      # the combo box.
      # 
      # 64
      case (RJava.cast_to_int((msg.attr_w_param)))
      when OS::VK_RETURN, OS::VK_ESCAPE
        if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
          if (!(OS._send_message(self.attr_handle, OS::CB_GETDROPPEDSTATE, 0, 0)).equal?(0))
            return false
          end
        end
      end
      return super(msg)
    end
    
    typesig { [] }
    def traverse_escape
      if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
        if (!(OS._send_message(self.attr_handle, OS::CB_GETDROPPEDSTATE, 0, 0)).equal?(0))
          OS._send_message(self.attr_handle, OS::CB_SHOWDROPDOWN, 0, 0)
          return true
        end
      end
      return super
    end
    
    typesig { [] }
    def traverse_return
      if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
        if (!(OS._send_message(self.attr_handle, OS::CB_GETDROPPEDSTATE, 0, 0)).equal?(0))
          OS._send_message(self.attr_handle, OS::CB_SHOWDROPDOWN, 0, 0)
          return true
        end
      end
      return super
    end
    
    typesig { [] }
    def unsubclass
      super
      # long
      hwnd_text = OS._get_dlg_item(self.attr_handle, CBID_EDIT)
      if (!(hwnd_text).equal?(0) && !(self.attr_edit_proc).equal?(0))
        OS._set_window_long_ptr(hwnd_text, OS::GWLP_WNDPROC, self.attr_edit_proc)
      end
      # long
      hwnd_list = OS._get_dlg_item(self.attr_handle, CBID_LIST)
      if (!(hwnd_list).equal?(0) && !(self.attr_list_proc).equal?(0))
        OS._set_window_long_ptr(hwnd_list, OS::GWLP_WNDPROC, self.attr_list_proc)
      end
    end
    
    typesig { [String, ::Java::Int, ::Java::Int, Event] }
    def verify_text(string, start, end_, key_event)
      event = Event.new
      event.attr_text = string
      event.attr_start = start
      event.attr_end = end_
      if (!(key_event).nil?)
        event.attr_character = key_event.attr_character
        event.attr_key_code = key_event.attr_key_code
        event.attr_state_mask = key_event.attr_state_mask
      end
      if (!OS::IsUnicode && OS::IsDBLocale)
        event.attr_start = mbcs_to_wcs_pos(start)
        event.attr_end = mbcs_to_wcs_pos(end_)
      end
      # It is possible (but unlikely), that application
      # code could have disposed the widget in the verify
      # event.  If this happens, answer null to cancel
      # the operation.
      send_event(SWT::Verify, event)
      if (!event.attr_doit || is_disposed)
        return nil
      end
      return event.attr_text
    end
    
    typesig { [::Java::Int] }
    def wcs_to_mbcs_pos(wcs_pos)
      if (wcs_pos <= 0)
        return 0
      end
      if (OS::IsUnicode)
        return wcs_pos
      end
      # long
      hwnd_text = OS._get_dlg_item(self.attr_handle, CBID_EDIT)
      if ((hwnd_text).equal?(0))
        return wcs_pos
      end
      mbcs_size = OS._get_window_text_length_a(hwnd_text)
      if ((mbcs_size).equal?(0))
        return 0
      end
      buffer = Array.typed(::Java::Byte).new(mbcs_size + 1) { 0 }
      OS._get_window_text_a(hwnd_text, buffer, mbcs_size + 1)
      mbcs_pos = 0
      wcs_count = 0
      while (mbcs_pos < mbcs_size)
        if ((wcs_pos).equal?(wcs_count))
          break
        end
        if (OS._is_dbcslead_byte(buffer[((mbcs_pos += 1) - 1)]))
          mbcs_pos += 1
        end
        wcs_count += 1
      end
      return mbcs_pos
    end
    
    typesig { [] }
    def widget_ext_style
      return super & ~OS::WS_EX_NOINHERITLAYOUT
    end
    
    typesig { [] }
    def widget_style
      bits = super | OS::CBS_AUTOHSCROLL | OS::CBS_NOINTEGRALHEIGHT | OS::WS_HSCROLL | OS::WS_VSCROLL
      if (!((self.attr_style & SWT::SIMPLE)).equal?(0))
        return bits | OS::CBS_SIMPLE
      end
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return bits | OS::CBS_DROPDOWNLIST
      end
      return bits | OS::CBS_DROPDOWN
    end
    
    typesig { [] }
    def window_class
      return ComboClass
    end
    
    typesig { [] }
    # long
    def window_proc
      return ComboProc
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def window_proc(hwnd, msg, w_param, l_param)
      if ((self.attr_handle).equal?(0))
        return 0
      end
      if (!(hwnd).equal?(self.attr_handle))
        # long
        hwnd_text = OS._get_dlg_item(self.attr_handle, CBID_EDIT)
        # long
        hwnd_list = OS._get_dlg_item(self.attr_handle, CBID_LIST)
        if ((!(hwnd_text).equal?(0) && (hwnd).equal?(hwnd_text)) || (!(hwnd_list).equal?(0) && (hwnd).equal?(hwnd_list)))
          result = nil
          case (msg)
          # Keyboard messages
          # Mouse Messages
          # case OS.WM_MOUSEWHEEL:		result = wmMouseWheel (hwnd, wParam, lParam); break;
          # Paint messages
          # Menu messages
          # Clipboard messages
          when OS::WM_CHAR
            result = wm_char(hwnd, w_param, l_param)
          when OS::WM_IME_CHAR
            result = wm_imechar(hwnd, w_param, l_param)
          when OS::WM_KEYDOWN
            result = wm_key_down(hwnd, w_param, l_param)
          when OS::WM_KEYUP
            result = wm_key_up(hwnd, w_param, l_param)
          when OS::WM_SYSCHAR
            result = wm_sys_char(hwnd, w_param, l_param)
          when OS::WM_SYSKEYDOWN
            result = wm_sys_key_down(hwnd, w_param, l_param)
          when OS::WM_SYSKEYUP
            result = wm_sys_key_up(hwnd, w_param, l_param)
          when OS::WM_CAPTURECHANGED
            result = wm_capture_changed(hwnd, w_param, l_param)
          when OS::WM_LBUTTONDBLCLK
            result = wm_lbutton_dbl_clk(hwnd, w_param, l_param)
          when OS::WM_LBUTTONDOWN
            result = wm_lbutton_down(hwnd, w_param, l_param)
          when OS::WM_LBUTTONUP
            result = wm_lbutton_up(hwnd, w_param, l_param)
          when OS::WM_MBUTTONDBLCLK
            result = wm_mbutton_dbl_clk(hwnd, w_param, l_param)
          when OS::WM_MBUTTONDOWN
            result = wm_mbutton_down(hwnd, w_param, l_param)
          when OS::WM_MBUTTONUP
            result = wm_mbutton_up(hwnd, w_param, l_param)
          when OS::WM_MOUSEHOVER
            result = wm_mouse_hover(hwnd, w_param, l_param)
          when OS::WM_MOUSELEAVE
            result = wm_mouse_leave(hwnd, w_param, l_param)
          when OS::WM_MOUSEMOVE
            result = wm_mouse_move(hwnd, w_param, l_param)
          when OS::WM_RBUTTONDBLCLK
            result = wm_rbutton_dbl_clk(hwnd, w_param, l_param)
          when OS::WM_RBUTTONDOWN
            result = wm_rbutton_down(hwnd, w_param, l_param)
          when OS::WM_RBUTTONUP
            result = wm_rbutton_up(hwnd, w_param, l_param)
          when OS::WM_XBUTTONDBLCLK
            result = wm_xbutton_dbl_clk(hwnd, w_param, l_param)
          when OS::WM_XBUTTONDOWN
            result = wm_xbutton_down(hwnd, w_param, l_param)
          when OS::WM_XBUTTONUP
            result = wm_xbutton_up(hwnd, w_param, l_param)
          when OS::WM_PAINT
            result = wm_paint(hwnd, w_param, l_param)
          when OS::WM_CONTEXTMENU
            result = wm_context_menu(hwnd, w_param, l_param)
          when OS::WM_CLEAR, OS::WM_CUT, OS::WM_PASTE, OS::WM_UNDO, OS::EM_UNDO, OS::WM_SETTEXT
            if ((hwnd).equal?(hwnd_text))
              result = wm_clipboard(hwnd, msg, w_param, l_param)
            end
          end
          if (!(result).nil?)
            return result.attr_value
          end
          return call_window_proc(hwnd, msg, w_param, l_param)
        end
      end
      if ((msg).equal?(OS::CB_SETCURSEL))
        if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
          if (hooks(SWT::Verify) || filters(SWT::Verify))
            old_text = get_text
            new_text = nil
            if ((w_param).equal?(-1))
              new_text = ""
            else
              if (0 <= w_param && w_param < get_item_count)
                # 64
                new_text = RJava.cast_to_string(get_item(RJava.cast_to_int(w_param)))
              end
            end
            if (!(new_text).nil? && !(new_text == old_text))
              length_ = OS._get_window_text_length(self.attr_handle)
              old_text = new_text
              new_text = RJava.cast_to_string(verify_text(new_text, 0, length_, nil))
              if ((new_text).nil?)
                return 0
              end
              if (!(new_text == old_text))
                index = index_of(new_text)
                if (!(index).equal?(-1) && !(index).equal?(w_param))
                  return call_window_proc(self.attr_handle, OS::CB_SETCURSEL, index, l_param)
                end
              end
            end
          end
        end
      end
      return super(hwnd, msg, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_ctlcolor(w_param, l_param)
      return wm_color_child(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_getdlgcode(w_param, l_param)
      # long
      code = call_window_proc(self.attr_handle, OS::WM_GETDLGCODE, w_param, l_param)
      return LRESULT.new(code | OS::DLGC_WANTARROWS)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_killfocus(w_param, l_param)
      # Bug in Windows.  When a combo box that is read only
      # is disposed in CBN_KILLFOCUS, Windows segment faults.
      # The fix is to send focus from WM_KILLFOCUS instead
      # of CBN_KILLFOCUS.
      # 
      # NOTE: In version 6 of COMCTL32.DLL, the bug is fixed.
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return super(w_param, l_param)
      end
      # Return NULL - Focus notification is
      # done in WM_COMMAND by CBN_KILLFOCUS.
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttondown(w_param, l_param)
      # Feature in Windows.  When an editable combo box is dropped
      # down and the text in the entry field partially matches an
      # item in the list, Windows selects the item but doesn't send
      # WM_COMMAND with CBN_SELCHANGE.  The fix is to detect that
      # the selection has changed and issue the notification.
      # 
      # 64
      old_selection = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCURSEL, 0, 0))
      result = super(w_param, l_param)
      if ((result).equal?(LRESULT::ZERO))
        return result
      end
      if (((self.attr_style & SWT::READ_ONLY)).equal?(0))
        # 64
        new_selection = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCURSEL, 0, 0))
        if (!(old_selection).equal?(new_selection))
          send_event(SWT::Modify)
          if (is_disposed)
            return LRESULT::ZERO
          end
          send_event(SWT::Selection)
          if (is_disposed)
            return LRESULT::ZERO
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setfocus(w_param, l_param)
      # Return NULL - Focus notification is
      # done by WM_COMMAND with CBN_SETFOCUS.
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_size(w_param, l_param)
      # Feature in Windows.  When a combo box is resized,
      # the size of the drop down rectangle is specified
      # using the height and then the combo box resizes
      # to be the height of the text field.  This causes
      # two WM_SIZE messages to be sent and two SWT.Resize
      # events to be issued.  The fix is to ignore the
      # second resize.
      if (@ignore_resize)
        return nil
      end
      # Bug in Windows.  If the combo box has the CBS_SIMPLE style,
      # the list portion of the combo box is not redrawn when the
      # combo box is resized.  The fix is to force a redraw when
      # the size has changed.
      if (!((self.attr_style & SWT::SIMPLE)).equal?(0))
        result = super(w_param, l_param)
        if (OS._is_window_visible(self.attr_handle))
          if (OS::IsWinCE)
            # long
            hwnd_text = OS._get_dlg_item(self.attr_handle, CBID_EDIT)
            if (!(hwnd_text).equal?(0))
              OS._invalidate_rect(hwnd_text, nil, true)
            end
            # long
            hwnd_list = OS._get_dlg_item(self.attr_handle, CBID_LIST)
            if (!(hwnd_list).equal?(0))
              OS._invalidate_rect(hwnd_list, nil, true)
            end
          else
            u_flags = OS::RDW_ERASE | OS::RDW_INVALIDATE | OS::RDW_ALLCHILDREN
            OS._redraw_window(self.attr_handle, nil, 0, u_flags)
          end
        end
        return result
      end
      # Feature in Windows.  When an editable drop down combo box
      # contains text that does not correspond to an item in the
      # list, when the widget is resized, it selects the closest
      # match from the list.  The fix is to remember the original
      # text and reset it after the widget is resized.
      result = nil
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        result = super(w_param, l_param)
      else
        # 64
        index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCURSEL, 0, 0))
        redraw = false
        buffer = nil
        start = nil
        end_ = nil
        if ((index).equal?(OS::CB_ERR))
          length_ = OS._get_window_text_length(self.attr_handle)
          if (!(length_).equal?(0))
            buffer = TCHAR.new(get_code_page, length_ + 1)
            OS._get_window_text(self.attr_handle, buffer, length_ + 1)
            start = Array.typed(::Java::Int).new(1) { 0 }
            end_ = Array.typed(::Java::Int).new(1) { 0 }
            OS._send_message(self.attr_handle, OS::CB_GETEDITSEL, start, end_)
            redraw = (self.attr_draw_count).equal?(0) && OS._is_window_visible(self.attr_handle)
            if (redraw)
              set_redraw(false)
            end
          end
        end
        result = super(w_param, l_param)
        # It is possible (but unlikely), that application
        # code could have disposed the widget in the resize
        # event.  If this happens, end the processing of the
        # Windows message by returning the result of the
        # WM_SIZE message.
        if (is_disposed)
          return result
        end
        if (!(buffer).nil?)
          OS._set_window_text(self.attr_handle, buffer)
          # long
          bits = OS._makelparam(start[0], end_[0])
          OS._send_message(self.attr_handle, OS::CB_SETEDITSEL, 0, bits)
          if (redraw)
            set_redraw(true)
          end
        end
      end
      # Feature in Windows.  When CB_SETDROPPEDWIDTH is called with
      # a width that is smaller than the current size of the combo
      # box, it is ignored.  This the fix is to set the width after
      # the combo box has been resized.
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        set_scroll_width(@scroll_width)
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
      # Feature in Windows.  When a combo box is resized,
      # the size of the drop down rectangle is specified
      # using the height and then the combo box resizes
      # to be the height of the text field.  This causes
      # sibling windows that intersect with the original
      # bounds to redrawn.  The fix is to stop the redraw
      # using SWP_NOREDRAW and then damage the combo box
      # text field and the area in the parent where the
      # combo box used to be.
      if (OS::IsWinCE)
        return result
      end
      if (!(self.attr_draw_count).equal?(0))
        return result
      end
      if (!OS._is_window_visible(self.attr_handle))
        return result
      end
      if (@ignore_resize)
        lpwp = WINDOWPOS.new
        OS._move_memory(lpwp, l_param, WINDOWPOS.attr_sizeof)
        if (((lpwp.attr_flags & OS::SWP_NOSIZE)).equal?(0))
          lpwp.attr_flags |= OS::SWP_NOREDRAW
          OS._move_memory(l_param, lpwp, WINDOWPOS.attr_sizeof)
          OS._invalidate_rect(self.attr_handle, nil, true)
          rect = RECT.new
          OS._get_window_rect(self.attr_handle, rect)
          width = rect.attr_right - rect.attr_left
          height = rect.attr_bottom - rect.attr_top
          if (!(width).equal?(0) && !(height).equal?(0))
            # long
            hwnd_parent = self.attr_parent.attr_handle
            # long
            hwnd_child = OS._get_window(hwnd_parent, OS::GW_CHILD)
            OS._map_window_points(0, hwnd_parent, rect, 2)
            # long
            rgn1 = OS._create_rect_rgn(rect.attr_left, rect.attr_top, rect.attr_right, rect.attr_bottom)
            while (!(hwnd_child).equal?(0))
              if (!(hwnd_child).equal?(self.attr_handle))
                OS._get_window_rect(hwnd_child, rect)
                OS._map_window_points(0, hwnd_parent, rect, 2)
                # long
                rgn2 = OS._create_rect_rgn(rect.attr_left, rect.attr_top, rect.attr_right, rect.attr_bottom)
                OS._combine_rgn(rgn1, rgn1, rgn2, OS::RGN_DIFF)
                OS._delete_object(rgn2)
              end
              hwnd_child = OS._get_window(hwnd_child, OS::GW_HWNDNEXT)
            end
            flags = OS::RDW_ERASE | OS::RDW_FRAME | OS::RDW_INVALIDATE
            OS._redraw_window(hwnd_parent, nil, rgn1, flags)
            OS._delete_object(rgn1)
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_char(hwnd, w_param, l_param)
      if (@ignore_character)
        return nil
      end
      result = super(hwnd, w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Feature in Windows.  For some reason, when the
      # widget is a single line text widget, when the
      # user presses tab, return or escape, Windows beeps.
      # The fix is to look for these keys and not call
      # the window proc.
      # 
      # NOTE: This only happens when the drop down list
      # is not visible.
      # 
      # 64
      case (RJava.cast_to_int(w_param))
      # FALL THROUGH
      when SWT::TAB
        return LRESULT::ZERO
      when SWT::CR
        if (!@ignore_default_selection)
          post_event(SWT::DefaultSelection)
        end
        @ignore_default_selection = false
        if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
          if ((OS._send_message(self.attr_handle, OS::CB_GETDROPPEDSTATE, 0, 0)).equal?(0))
            return LRESULT::ZERO
          end
        end
      when SWT::ESC
        if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
          if ((OS._send_message(self.attr_handle, OS::CB_GETDROPPEDSTATE, 0, 0)).equal?(0))
            return LRESULT::ZERO
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_clipboard(hwnd_text, msg, w_param, l_param)
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return nil
      end
      if (!hooks(SWT::Verify) && !filters(SWT::Verify))
        return nil
      end
      call = false
      start = Array.typed(::Java::Int).new(1) { 0 }
      end_ = Array.typed(::Java::Int).new(1) { 0 }
      new_text = nil
      case (msg)
      when OS::WM_CLEAR, OS::WM_CUT
        OS._send_message(hwnd_text, OS::EM_GETSEL, start, end_)
        if (!(start[0]).equal?(end_[0]))
          new_text = ""
          call = true
        end
      when OS::WM_PASTE
        OS._send_message(hwnd_text, OS::EM_GETSEL, start, end_)
        new_text = RJava.cast_to_string(get_clipboard_text)
      when OS::EM_UNDO, OS::WM_UNDO
        if (!(OS._send_message(hwnd_text, OS::EM_CANUNDO, 0, 0)).equal?(0))
          @ignore_modify = true
          OS._send_message(hwnd_text, OS::EM_GETSEL, start, end_)
          OS._call_window_proc(self.attr_edit_proc, hwnd_text, msg, w_param, l_param)
          length_ = OS._get_window_text_length(hwnd_text)
          new_start = Array.typed(::Java::Int).new(1) { 0 }
          new_end = Array.typed(::Java::Int).new(1) { 0 }
          OS._send_message(hwnd_text, OS::EM_GETSEL, new_start, new_end)
          if (!(length_).equal?(0) && !(new_start[0]).equal?(new_end[0]))
            buffer = TCHAR.new(get_code_page, length_ + 1)
            OS._get_window_text(hwnd_text, buffer, length_ + 1)
            new_text = RJava.cast_to_string(buffer.to_s(new_start[0], new_end[0] - new_start[0]))
          else
            new_text = ""
          end
          OS._call_window_proc(self.attr_edit_proc, hwnd_text, msg, w_param, l_param)
          @ignore_modify = false
        end
      when OS::WM_SETTEXT
        end_[0] = OS._get_window_text_length(hwnd_text)
        length_ = OS::IsUnicode ? OS.wcslen(l_param) : OS.strlen(l_param)
        buffer = TCHAR.new(get_code_page, length_)
        byte_count = buffer.length * TCHAR.attr_sizeof
        OS._move_memory(buffer, l_param, byte_count)
        new_text = RJava.cast_to_string(buffer.to_s(0, length_))
      end
      if (!(new_text).nil?)
        old_text = new_text
        new_text = RJava.cast_to_string(verify_text(new_text, start[0], end_[0], nil))
        if ((new_text).nil?)
          return LRESULT::ZERO
        end
        if (!(new_text == old_text))
          if (call)
            OS._call_window_proc(self.attr_edit_proc, hwnd_text, msg, w_param, l_param)
          end
          buffer = TCHAR.new(get_code_page, new_text, true)
          if ((msg).equal?(OS::WM_SETTEXT))
            # long
            h_heap = OS._get_process_heap
            byte_count = buffer.length * TCHAR.attr_sizeof
            # long
            psz_text = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
            OS._move_memory(psz_text, buffer, byte_count)
            # long
            code = OS._call_window_proc(self.attr_edit_proc, hwnd_text, msg, w_param, psz_text)
            OS._heap_free(h_heap, 0, psz_text)
            return LRESULT.new(code)
          else
            OS._send_message(hwnd_text, OS::EM_REPLACESEL, 0, buffer)
            return LRESULT::ZERO
          end
        end
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_command_child(w_param, l_param)
      code = OS._hiword(w_param)
      catch(:break_case) do
        case (code)
        when OS::CBN_EDITCHANGE
          if (@ignore_modify)
            throw :break_case, :thrown
          end
          # Feature in Windows.  If the combo box list selection is
          # queried using CB_GETCURSEL before the WM_COMMAND (with
          # CBN_EDITCHANGE) returns, CB_GETCURSEL returns the previous
          # selection in the list.  It seems that the combo box sends
          # the WM_COMMAND before it makes the selection in the list box
          # match the entry field.  The fix is remember that no selection
          # in the list should exist in this case.
          @no_selection = true
          send_event(SWT::Modify)
          if (is_disposed)
            return LRESULT::ZERO
          end
          @no_selection = false
        when OS::CBN_SELCHANGE
          # Feature in Windows.  If the text in an editable combo box
          # is queried using GetWindowText () before the WM_COMMAND
          # (with CBN_SELCHANGE) returns, GetWindowText () returns is
          # the previous text in the combo box.  It seems that the combo
          # box sends the WM_COMMAND before it updates the text field to
          # match the list selection.  The fix is to force the text field
          # to match the list selection by re-selecting the list item.
          # 
          # 64
          index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCURSEL, 0, 0))
          if (!(index).equal?(OS::CB_ERR))
            OS._send_message(self.attr_handle, OS::CB_SETCURSEL, index, 0)
          end
          # It is possible (but unlikely), that application
          # code could have disposed the widget in the modify
          # event.  If this happens, end the processing of the
          # Windows message by returning zero as the result of
          # the window proc.
          send_event(SWT::Modify)
          if (is_disposed)
            return LRESULT::ZERO
          end
          post_event(SWT::Selection)
        when OS::CBN_SETFOCUS
          send_focus_event(SWT::FocusIn)
          if (is_disposed)
            return LRESULT::ZERO
          end
        when OS::CBN_KILLFOCUS
          # Bug in Windows.  When a combo box that is read only
          # is disposed in CBN_KILLFOCUS, Windows segment faults.
          # The fix is to send focus from WM_KILLFOCUS instead
          # of CBN_KILLFOCUS.
          # 
          # NOTE: In version 6 of COMCTL32.DLL, the bug is fixed.
          if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
            throw :break_case, :thrown
          end
          send_focus_event(SWT::FocusOut)
          if (is_disposed)
            return LRESULT::ZERO
          end
        end
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_imechar(hwnd, w_param, l_param)
      # Process a DBCS character
      display = self.attr_display
      display.attr_last_key = 0
      # 64
      display.attr_last_ascii = RJava.cast_to_int(w_param)
      display.attr_last_virtual = display.attr_last_null = display.attr_last_dead = false
      if (!send_key_event(SWT::KeyDown, OS::WM_IME_CHAR, w_param, l_param))
        return LRESULT::ZERO
      end
      # Feature in Windows.  The Windows text widget uses
      # two 2 WM_CHAR's to process a DBCS key instead of
      # using WM_IME_CHAR.  The fix is to allow the text
      # widget to get the WM_CHAR's but ignore sending
      # them to the application.
      @ignore_character = true
      # long
      result = call_window_proc(hwnd, OS::WM_IME_CHAR, w_param, l_param)
      msg = MSG.new
      flags = OS::PM_REMOVE | OS::PM_NOYIELD | OS::PM_QS_INPUT | OS::PM_QS_POSTMESSAGE
      while (OS._peek_message(msg, hwnd, OS::WM_CHAR, OS::WM_CHAR, flags))
        OS._translate_message(msg)
        OS._dispatch_message(msg)
      end
      @ignore_character = false
      send_key_event(SWT::KeyUp, OS::WM_IME_CHAR, w_param, l_param)
      # widget could be disposed at this point
      display.attr_last_key = display.attr_last_ascii = 0
      return LRESULT.new(result)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_key_down(hwnd, w_param, l_param)
      if (@ignore_character)
        return nil
      end
      result = super(hwnd, w_param, l_param)
      if (!(result).nil?)
        return result
      end
      @ignore_default_selection = false
      if ((w_param).equal?(OS::VK_RETURN))
        if (!((self.attr_style & SWT::DROP_DOWN)).equal?(0))
          if (!(OS._send_message(self.attr_handle, OS::CB_GETDROPPEDSTATE, 0, 0)).equal?(0))
            @ignore_default_selection = true
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_sys_key_down(hwnd, w_param, l_param)
      # Feature in Windows.  When an editable combo box is dropped
      # down using Alt+Down and the text in the entry field partially
      # matches an item in the list, Windows selects the item but doesn't
      # send WM_COMMAND with CBN_SELCHANGE.  The fix is to detect that
      # the selection has changed and issue the notification.
      # 
      # 64
      old_selection = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCURSEL, 0, 0))
      result = super(hwnd, w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (((self.attr_style & SWT::READ_ONLY)).equal?(0))
        if ((w_param).equal?(OS::VK_DOWN))
          # long
          code = call_window_proc(hwnd, OS::WM_SYSKEYDOWN, w_param, l_param)
          # 64
          new_selection = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::CB_GETCURSEL, 0, 0))
          if (!(old_selection).equal?(new_selection))
            send_event(SWT::Modify)
            if (is_disposed)
              return LRESULT::ZERO
            end
            send_event(SWT::Selection)
            if (is_disposed)
              return LRESULT::ZERO
            end
          end
          return LRESULT.new(code)
        end
      end
      return result
    end
    
    private
    alias_method :initialize__combo, :initialize
  end
  
end
