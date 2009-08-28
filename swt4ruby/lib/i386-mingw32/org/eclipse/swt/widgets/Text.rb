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
  module TextImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # Instances of this class are selectable user interface
  # objects that allow the user to enter and modify text.
  # Text controls can be either single or multi-line.
  # When a text control is created with a border, the
  # operating system includes a platform specific inset
  # around the contents of the control.  When created
  # without a border, an effort is made to remove the
  # inset such that the preferred size of the control
  # is the same size as the contents.
  # <p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>CANCEL, CENTER, LEFT, MULTI, PASSWORD, SEARCH, SINGLE, RIGHT, READ_ONLY, WRAP</dd>
  # <dt><b>Events:</b></dt>
  # <dd>DefaultSelection, Modify, Verify</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles MULTI and SINGLE may be specified,
  # and only one of the styles LEFT, CENTER, and RIGHT may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#text">Text snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Text < TextImports.const_get :Scrollable
    include_class_members TextImports
    
    attr_accessor :tabs
    alias_method :attr_tabs, :tabs
    undef_method :tabs
    alias_method :attr_tabs=, :tabs=
    undef_method :tabs=
    
    attr_accessor :old_start
    alias_method :attr_old_start, :old_start
    undef_method :old_start
    alias_method :attr_old_start=, :old_start=
    undef_method :old_start=
    
    attr_accessor :old_end
    alias_method :attr_old_end, :old_end
    undef_method :old_end
    alias_method :attr_old_end=, :old_end=
    undef_method :old_end=
    
    attr_accessor :double_click
    alias_method :attr_double_click, :double_click
    undef_method :double_click
    alias_method :attr_double_click=, :double_click=
    undef_method :double_click=
    
    attr_accessor :ignore_modify
    alias_method :attr_ignore_modify, :ignore_modify
    undef_method :ignore_modify
    alias_method :attr_ignore_modify=, :ignore_modify=
    undef_method :ignore_modify=
    
    attr_accessor :ignore_verify
    alias_method :attr_ignore_verify, :ignore_verify
    undef_method :ignore_verify
    alias_method :attr_ignore_verify=, :ignore_verify=
    undef_method :ignore_verify=
    
    attr_accessor :ignore_character
    alias_method :attr_ignore_character, :ignore_character
    undef_method :ignore_character
    alias_method :attr_ignore_character=, :ignore_character=
    undef_method :ignore_character=
    
    attr_accessor :message
    alias_method :attr_message, :message
    undef_method :message
    alias_method :attr_message=, :message=
    undef_method :message=
    
    class_module.module_eval {
      # This code is intentionally commented.
      # 
      # static final char PASSWORD;
      # 
      # These values can be different on different platforms.
      # Therefore they are not initialized in the declaration
      # to stop the compiler from inlining.
      when_class_loaded do
        const_set :LIMIT, OS::IsWinNT ? 0x7fffffff : 0x7fff
        const_set :DELIMITER, "\r\n"
      end
      
      const_set_lazy(:EditClass) { TCHAR.new(0, "EDIT", true) }
      const_attr_reader  :EditClass
      
      when_class_loaded do
        lp_wnd_class = WNDCLASS.new
        OS._get_class_info(0, EditClass, lp_wnd_class)
        const_set :EditProc, lp_wnd_class.attr_lpfn_wnd_proc
        # This code is intentionally commented.
        # 
        # int /*long*/ hwndText = OS.CreateWindowEx (0,
        # EditClass,
        # null,
        # OS.WS_OVERLAPPED | OS.ES_PASSWORD,
        # 0, 0, 0, 0,
        # 0,
        # 0,
        # OS.GetModuleHandle (null),
        # null);
        # char echo = (char) OS.SendMessage (hwndText, OS.EM_GETPASSWORDCHAR, 0, 0);
        # OS.DestroyWindow (hwndText);
        # PASSWORD = echo != 0 ? echo : '*';
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
    # @see SWT#READ_ONLY
    # @see SWT#WRAP
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @tabs = 0
      @old_start = 0
      @old_end = 0
      @double_click = false
      @ignore_modify = false
      @ignore_verify = false
      @ignore_character = false
      @message = nil
      super(parent, check_style(style))
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
      when OS::WM_ERASEBKGND
        if (!(find_image_control).nil?)
          return 0
        end
      when OS::WM_HSCROLL, OS::WM_VSCROLL
        redraw = !(find_image_control).nil? && (self.attr_draw_count).equal?(0) && OS._is_window_visible(self.attr_handle)
        if (redraw)
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 0, 0)
        end
      when OS::WM_PAINT
        if (!(find_image_control).nil?)
          # long
          paint_dc = 0
          ps = PAINTSTRUCT.new
          paint_dc = OS._begin_paint(self.attr_handle, ps)
          width = ps.attr_right - ps.attr_left
          height = ps.attr_bottom - ps.attr_top
          if (!(width).equal?(0) && !(height).equal?(0))
            # long
            h_dc = OS._create_compatible_dc(paint_dc)
            lp_point1 = POINT.new
            lp_point2 = POINT.new
            OS._set_window_org_ex(h_dc, ps.attr_left, ps.attr_top, lp_point1)
            OS._set_brush_org_ex(h_dc, ps.attr_left, ps.attr_top, lp_point2)
            # long
            h_bitmap = OS._create_compatible_bitmap(paint_dc, width, height)
            # long
            h_old_bitmap = OS._select_object(h_dc, h_bitmap)
            rect = RECT.new
            OS._set_rect(rect, ps.attr_left, ps.attr_top, ps.attr_right, ps.attr_bottom)
            draw_background(h_dc, rect)
            OS._call_window_proc(EditProc, hwnd, OS::WM_PAINT, h_dc, l_param)
            OS._set_window_org_ex(h_dc, lp_point1.attr_x, lp_point1.attr_y, nil)
            OS._set_brush_org_ex(h_dc, lp_point2.attr_x, lp_point2.attr_y, nil)
            OS._bit_blt(paint_dc, ps.attr_left, ps.attr_top, width, height, h_dc, 0, 0, OS::SRCCOPY)
            OS._select_object(h_dc, h_old_bitmap)
            OS._delete_object(h_bitmap)
            OS._delete_object(h_dc)
          end
          OS._end_paint(self.attr_handle, ps)
          return 0
        end
      end
      # long
      code = OS._call_window_proc(EditProc, hwnd, msg, w_param, l_param)
      case (msg)
      when OS::WM_HSCROLL, OS::WM_VSCROLL
        if (redraw)
          OS._def_window_proc(self.attr_handle, OS::WM_SETREDRAW, 1, 0)
          OS._invalidate_rect(self.attr_handle, nil, true)
        end
      end
      return code
    end
    
    typesig { [] }
    def create_handle
      super
      OS._send_message(self.attr_handle, OS::EM_LIMITTEXT, 0, 0)
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        if (((self.attr_style & (SWT::BORDER | SWT::H_SCROLL | SWT::V_SCROLL))).equal?(0))
          self.attr_state |= THEME_BACKGROUND
        end
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
    # be notified when the control is selected by the user, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # <code>widgetSelected</code> is not called for texts.
    # <code>widgetDefaultSelected</code> is typically called when ENTER is pressed in a single-line text,
    # or when ENTER is pressed in a search text. If the receiver has the <code>SWT.SEARCH | SWT.CANCEL</code> style
    # and the user cancels the search, the event object detail field contains the value <code>SWT.CANCEL</code>.
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
    def add_verify_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Verify, typed_listener)
    end
    
    typesig { [String] }
    # Appends a string.
    # <p>
    # The new text is appended to the text at
    # the end of the widget.
    # </p>
    # 
    # @param string the string to be appended
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def append(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      string = RJava.cast_to_string(Display.with_cr_lf(string))
      length = OS._get_window_text_length(self.attr_handle)
      if (hooks(SWT::Verify) || filters(SWT::Verify))
        string = RJava.cast_to_string(verify_text(string, length, length, nil))
        if ((string).nil?)
          return
        end
      end
      OS._send_message(self.attr_handle, OS::EM_SETSEL, length, length)
      buffer = TCHAR.new(get_code_page, string, true)
      # Feature in Windows.  When an edit control with ES_MULTILINE
      # style that does not have the WS_VSCROLL style is full (i.e.
      # there is no space at the end to draw any more characters),
      # EM_REPLACESEL sends a WM_CHAR with a backspace character
      # to remove any further text that is added.  This is an
      # implementation detail of the edit control that is unexpected
      # and can cause endless recursion when EM_REPLACESEL is sent
      # from a WM_CHAR handler.  The fix is to ignore calling the
      # handler from WM_CHAR.
      @ignore_character = true
      OS._send_message(self.attr_handle, OS::EM_REPLACESEL, 0, buffer)
      @ignore_character = false
      OS._send_message(self.attr_handle, OS::EM_SCROLLCARET, 0, 0)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        if (!((style & SWT::SEARCH)).equal?(0))
          style |= SWT::SINGLE | SWT::BORDER
          style &= ~SWT::PASSWORD
        end
        if (OS::COMCTL32_MAJOR < 6)
          style &= ~SWT::SEARCH
        end
        if (!((style & SWT::SINGLE)).equal?(0) && !((style & SWT::MULTI)).equal?(0))
          style &= ~SWT::MULTI
        end
        style = check_bits(style, SWT::LEFT, SWT::CENTER, SWT::RIGHT, 0, 0, 0)
        if (!((style & SWT::SINGLE)).equal?(0))
          style &= ~(SWT::H_SCROLL | SWT::V_SCROLL | SWT::WRAP)
        end
        if (!((style & SWT::WRAP)).equal?(0))
          style |= SWT::MULTI
          style &= ~SWT::H_SCROLL
        end
        if (!((style & SWT::MULTI)).equal?(0))
          style &= ~SWT::PASSWORD
        end
        if (!((style & (SWT::SINGLE | SWT::MULTI))).equal?(0))
          return style
        end
        if (!((style & (SWT::H_SCROLL | SWT::V_SCROLL))).equal?(0))
          return style | SWT::MULTI
        end
        return style | SWT::SINGLE
      end
    }
    
    typesig { [] }
    # Clears the selection.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def clear_selection
      check_widget
      if (OS::IsWinCE)
        # Bug in WinCE.  Calling EM_SETSEL with -1 and 0 is equivalent
        # to calling EM_SETSEL with 0 and -1.  It causes the entire
        # text to be selected instead of clearing the selection.  The
        # fix is to set the start of the selection to the  end of the
        # current selection.
        end_ = Array.typed(::Java::Int).new(1) { 0 }
        OS._send_message(self.attr_handle, OS::EM_GETSEL, nil, end_)
        OS._send_message(self.attr_handle, OS::EM_SETSEL, end_[0], end_[0])
      else
        OS._send_message(self.attr_handle, OS::EM_SETSEL, -1, 0)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      height = 0
      width = 0
      if ((w_hint).equal?(SWT::DEFAULT) || (h_hint).equal?(SWT::DEFAULT))
        # long
        new_font = 0
        old_font = 0
        # long
        h_dc = OS._get_dc(self.attr_handle)
        new_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
        if (!(new_font).equal?(0))
          old_font = OS._select_object(h_dc, new_font)
        end
        tm = OS::IsUnicode ? TEXTMETRICW.new : TEXTMETRICA.new
        OS._get_text_metrics(h_dc, tm)
        # 64
        count = !((self.attr_style & SWT::SINGLE)).equal?(0) ? 1 : RJava.cast_to_int(OS._send_message(self.attr_handle, OS::EM_GETLINECOUNT, 0, 0))
        height = count * tm.attr_tm_height
        rect = RECT.new
        flags = OS::DT_CALCRECT | OS::DT_EDITCONTROL | OS::DT_NOPREFIX
        wrap = !((self.attr_style & SWT::MULTI)).equal?(0) && !((self.attr_style & SWT::WRAP)).equal?(0)
        if (wrap && !(w_hint).equal?(SWT::DEFAULT))
          flags |= OS::DT_WORDBREAK
          rect.attr_right = w_hint
        end
        length = OS._get_window_text_length(self.attr_handle)
        if (!(length).equal?(0))
          buffer = TCHAR.new(get_code_page, length + 1)
          OS._get_window_text(self.attr_handle, buffer, length + 1)
          OS._draw_text(h_dc, buffer, length, rect, flags)
          width = rect.attr_right - rect.attr_left
        end
        # This code is intentionally commented
        # if (OS.COMCTL32_MAJOR >= 6) {
        # if ((style & SWT.SEARCH) != 0) {
        # length = message.length ();
        # if (length != 0) {
        # char [] buffer = new char [length + 1];
        # message.getChars (0, length, buffer, 0);
        # SIZE size = new SIZE ();
        # OS.GetTextExtentPoint32W (hDC, buffer, length, size);
        # width = Math.max (width, size.cx);
        # }
        # }
        # }
        if (wrap && (h_hint).equal?(SWT::DEFAULT))
          new_height = rect.attr_bottom - rect.attr_top
          if (!(new_height).equal?(0))
            height = new_height
          end
        end
        if (!(new_font).equal?(0))
          OS._select_object(h_dc, old_font)
        end
        OS._release_dc(self.attr_handle, h_dc)
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
      trim = compute_trim(0, 0, width, height)
      return Point.new(trim.attr_width, trim.attr_height)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_trim(x, y, width, height)
      check_widget
      rect = super(x, y, width, height)
      # The preferred height of a single-line text widget
      # has been hand-crafted to be the same height as
      # the single-line text widget in an editable combo
      # box.
      # 
      # long
      margins = OS._send_message(self.attr_handle, OS::EM_GETMARGINS, 0, 0)
      rect.attr_x -= OS._loword(margins)
      rect.attr_width += OS._loword(margins) + OS._hiword(margins)
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        rect.attr_width += 1
      end
      if (!((self.attr_style & SWT::BORDER)).equal?(0))
        rect.attr_x -= 1
        rect.attr_y -= 1
        rect.attr_width += 2
        rect.attr_height += 2
      end
      return rect
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
    def copy
      check_widget
      OS._send_message(self.attr_handle, OS::WM_COPY, 0, 0)
    end
    
    typesig { [] }
    def create_widget
      super
      @message = ""
      @double_click = true
      set_tab_stops(@tabs = 8)
      fix_alignment
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
    def cut
      check_widget
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return
      end
      OS._send_message(self.attr_handle, OS::WM_CUT, 0, 0)
    end
    
    typesig { [] }
    def default_background
      bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      return OS._get_sys_color(!((bits & OS::ES_READONLY)).equal?(0) ? OS::COLOR_3DFACE : OS::COLOR_WINDOW)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Boolean), Array.typed(::Java::Boolean)] }
    # long
    def drag_detect(hwnd, x, y, filter, detect, consume)
      if (filter)
        start = Array.typed(::Java::Int).new(1) { 0 }
        end_ = Array.typed(::Java::Int).new(1) { 0 }
        OS._send_message(self.attr_handle, OS::EM_GETSEL, start, end_)
        if (!(start[0]).equal?(end_[0]))
          # long
          l_param = OS._makelparam(x, y)
          position = OS._loword(OS._send_message(self.attr_handle, OS::EM_CHARFROMPOS, 0, l_param))
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
      return super(hwnd, x, y, filter, detect, consume)
    end
    
    typesig { [] }
    def fix_alignment
      # Feature in Windows.  When the edit control is not
      # mirrored, it uses WS_EX_RIGHT, WS_EX_RTLREADING and
      # WS_EX_LEFTSCROLLBAR to give the control a right to
      # left appearance.  This causes the control to be lead
      # aligned no matter what alignment was specified by
      # the programmer.  For example, setting ES_RIGHT and
      # WS_EX_LAYOUTRTL should cause the contents of the
      # control to be left (trail) aligned in a mirrored world.
      # When the orientation is changed by the user or
      # specified by the programmer, WS_EX_RIGHT conflicts
      # with the mirrored alignment.  The fix is to clear
      # or set WS_EX_RIGHT to achieve the correct alignment
      # according to the orientation and mirroring.
      if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
        return
      end
      bits1 = OS._get_window_long(self.attr_handle, OS::GWL_EXSTYLE)
      bits2 = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      if (!((self.attr_style & SWT::LEFT_TO_RIGHT)).equal?(0))
        # Bug in Windows 98. When the edit control is created
        # with the style ES_RIGHT it automatically sets the
        # WS_EX_LEFTSCROLLBAR bit.  The fix is to clear the
        # bit when the orientation of the control is left
        # to right.
        bits1 &= ~OS::WS_EX_LEFTSCROLLBAR
        if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          bits1 |= OS::WS_EX_RIGHT
          bits2 |= OS::ES_RIGHT
        end
        if (!((self.attr_style & SWT::LEFT)).equal?(0))
          bits1 &= ~OS::WS_EX_RIGHT
          bits2 &= ~OS::ES_RIGHT
        end
      else
        if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          bits1 &= ~OS::WS_EX_RIGHT
          bits2 &= ~OS::ES_RIGHT
        end
        if (!((self.attr_style & SWT::LEFT)).equal?(0))
          bits1 |= OS::WS_EX_RIGHT
          bits2 |= OS::ES_RIGHT
        end
      end
      if (!((self.attr_style & SWT::CENTER)).equal?(0))
        bits2 |= OS::ES_CENTER
      end
      OS._set_window_long(self.attr_handle, OS::GWL_EXSTYLE, bits1)
      OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits2)
    end
    
    typesig { [] }
    def get_border_width
      check_widget
      # Feature in Windows 2000 and XP.  Despite the fact that WS_BORDER
      # is set when the edit control is created, the style bit is cleared.
      # The fix is to avoid the check for WS_BORDER and use the SWT widget
      # style bits instead.
      # 
      # if ((style & SWT.BORDER) != 0 && (style & SWT.FLAT) != 0) {
      # return OS.GetSystemMetrics (OS.SM_CXBORDER);
      # }
      return super
    end
    
    typesig { [] }
    # Returns the line number of the caret.
    # <p>
    # The line number of the caret is returned.
    # </p>
    # 
    # @return the line number
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_caret_line_number
      check_widget
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::EM_LINEFROMCHAR, -1, 0))
    end
    
    typesig { [] }
    # Returns a point describing the receiver's location relative
    # to its parent (or its display if its parent is null).
    # <p>
    # The location of the caret is returned.
    # </p>
    # 
    # @return a point, the location of the caret
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_caret_location
      check_widget
      # Bug in Windows.  For some reason, Windows is unable
      # to return the pixel coordinates of the last character
      # in the widget.  The fix is to temporarily insert a
      # space, query the coordinates and delete the space.
      # The selection is always an i-beam in this case because
      # this is the only time the start of the selection can
      # be equal to the last character position in the widget.
      # If EM_POSFROMCHAR fails for any other reason, return
      # pixel coordinates (0,0).
      position = get_caret_position
      # long
      caret_pos = OS._send_message(self.attr_handle, OS::EM_POSFROMCHAR, position, 0)
      if ((caret_pos).equal?(-1))
        caret_pos = 0
        if (position >= OS._get_window_text_length(self.attr_handle))
          cp = get_code_page
          start = Array.typed(::Java::Int).new(1) { 0 }
          end_ = Array.typed(::Java::Int).new(1) { 0 }
          OS._send_message(self.attr_handle, OS::EM_GETSEL, start, end_)
          OS._send_message(self.attr_handle, OS::EM_SETSEL, position, position)
          # Feature in Windows.  When an edit control with ES_MULTILINE
          # style that does not have the WS_VSCROLL style is full (i.e.
          # there is no space at the end to draw any more characters),
          # EM_REPLACESEL sends a WM_CHAR with a backspace character
          # to remove any further text that is added.  This is an
          # implementation detail of the edit control that is unexpected
          # and can cause endless recursion when EM_REPLACESEL is sent
          # from a WM_CHAR handler.  The fix is to ignore calling the
          # handler from WM_CHAR.
          @ignore_character = @ignore_modify = true
          OS._send_message(self.attr_handle, OS::EM_REPLACESEL, 0, TCHAR.new(cp, " ", true))
          caret_pos = OS._send_message(self.attr_handle, OS::EM_POSFROMCHAR, position, 0)
          OS._send_message(self.attr_handle, OS::EM_SETSEL, position, position + 1)
          OS._send_message(self.attr_handle, OS::EM_REPLACESEL, 0, TCHAR.new(cp, "", true))
          @ignore_character = @ignore_modify = false
          OS._send_message(self.attr_handle, OS::EM_SETSEL, start[0], start[0])
          OS._send_message(self.attr_handle, OS::EM_SETSEL, start[0], end_[0])
        end
      end
      return Point.new(OS._get_x_lparam(caret_pos), OS._get_y_lparam(caret_pos))
    end
    
    typesig { [] }
    # Returns the character position of the caret.
    # <p>
    # Indexing is zero based.
    # </p>
    # 
    # @return the position of the caret
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_caret_position
      check_widget
      start = Array.typed(::Java::Int).new(1) { 0 }
      end_ = Array.typed(::Java::Int).new(1) { 0 }
      OS._send_message(self.attr_handle, OS::EM_GETSEL, start, end_)
      # In Windows, there is no API to get the position of the caret
      # when the selection is not an i-beam.  The best that can be done
      # is to query the pixel position of the current caret and compare
      # it to the pixel position of the start and end of the selection.
      # 
      # NOTE:  This does not work when the i-beam belongs to another
      # control.  In this case, guess that the i-beam is at the start
      # of the selection.
      caret = start[0]
      if (!(start[0]).equal?(end_[0]))
        # 64
        start_line = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::EM_LINEFROMCHAR, start[0], 0))
        # 64
        end_line = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::EM_LINEFROMCHAR, end_[0], 0))
        if ((start_line).equal?(end_line))
          if (!OS::IsWinCE)
            id_thread = OS._get_window_thread_process_id(self.attr_handle, nil)
            lpgui = GUITHREADINFO.new
            lpgui.attr_cb_size = GUITHREADINFO.attr_sizeof
            if (OS._get_guithread_info(id_thread, lpgui))
              if ((lpgui.attr_hwnd_caret).equal?(self.attr_handle) || (lpgui.attr_hwnd_caret).equal?(0))
                pt_current_pos = POINT.new
                if (OS._get_caret_pos(pt_current_pos))
                  # long
                  end_pos = OS._send_message(self.attr_handle, OS::EM_POSFROMCHAR, end_[0], 0)
                  if ((end_pos).equal?(-1))
                    # long
                    start_pos = OS._send_message(self.attr_handle, OS::EM_POSFROMCHAR, start[0], 0)
                    start_x = OS._get_x_lparam(start_pos)
                    if (pt_current_pos.attr_x > start_x)
                      caret = end_[0]
                    end
                  else
                    end_x = OS._get_x_lparam(end_pos)
                    if (pt_current_pos.attr_x >= end_x)
                      caret = end_[0]
                    end
                  end
                end
              end
            end
          end
        else
          # 64
          caret_pos = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::EM_LINEINDEX, -1, 0))
          # 64
          caret_line = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::EM_LINEFROMCHAR, caret_pos, 0))
          if ((caret_line).equal?(end_line))
            caret = end_[0]
          end
        end
      end
      if (!OS::IsUnicode && OS::IsDBLocale)
        caret = mbcs_to_wcs_pos(caret)
      end
      return caret
    end
    
    typesig { [] }
    # Returns the number of characters.
    # 
    # @return number of characters in the widget
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_char_count
      check_widget
      length = OS._get_window_text_length(self.attr_handle)
      if (!OS::IsUnicode && OS::IsDBLocale)
        length = mbcs_to_wcs_pos(length)
      end
      return length
    end
    
    typesig { [] }
    # Returns the double click enabled flag.
    # <p>
    # The double click flag enables or disables the
    # default action of the text widget when the user
    # double clicks.
    # </p>
    # 
    # @return whether or not double click is enabled
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_double_click_enabled
      check_widget
      return @double_click
    end
    
    typesig { [] }
    # Returns the echo character.
    # <p>
    # The echo character is the character that is
    # displayed when the user enters text or the
    # text is changed by the programmer.
    # </p>
    # 
    # @return the echo character
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setEchoChar
    def get_echo_char
      check_widget
      echo = RJava.cast_to_char(OS._send_message(self.attr_handle, OS::EM_GETPASSWORDCHAR, 0, 0))
      if (!(echo).equal?(0) && ((echo = Display.mbcs_to_wcs(echo, get_code_page))).equal?(0))
        echo = Character.new(?*.ord)
      end
      return echo
    end
    
    typesig { [] }
    # Returns the editable state.
    # 
    # @return whether or not the receiver is editable
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_editable
      check_widget
      bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      return ((bits & OS::ES_READONLY)).equal?(0)
    end
    
    typesig { [] }
    # Returns the number of lines.
    # 
    # @return the number of lines in the widget
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_line_count
      check_widget
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::EM_GETLINECOUNT, 0, 0))
    end
    
    typesig { [] }
    # Returns the line delimiter.
    # 
    # @return a string that is the line delimiter
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #DELIMITER
    def get_line_delimiter
      check_widget
      return DELIMITER
    end
    
    typesig { [] }
    # Returns the height of a line.
    # 
    # @return the height of a row of text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_line_height
      check_widget
      # long
      new_font = 0
      old_font = 0
      # long
      h_dc = OS._get_dc(self.attr_handle)
      new_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
      if (!(new_font).equal?(0))
        old_font = OS._select_object(h_dc, new_font)
      end
      tm = OS::IsUnicode ? TEXTMETRICW.new : TEXTMETRICA.new
      OS._get_text_metrics(h_dc, tm)
      if (!(new_font).equal?(0))
        OS._select_object(h_dc, old_font)
      end
      OS._release_dc(self.attr_handle, h_dc)
      return tm.attr_tm_height
    end
    
    typesig { [] }
    # Returns the orientation of the receiver, which will be one of the
    # constants <code>SWT.LEFT_TO_RIGHT</code> or <code>SWT.RIGHT_TO_LEFT</code>.
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
    # Returns the widget message. When the widget is created
    # with the style <code>SWT.SEARCH</code>, the message text
    # is displayed as a hint for the user, indicating the
    # purpose of the field.
    # <p>
    # Note: This operation is a <em>HINT</em> and is not
    # supported on platforms that do not have this concept.
    # </p>
    # 
    # @return the widget message
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.3
    def get_message
      check_widget
      return @message
    end
    
    typesig { [Point] }
    # Returns the character position at the given point in the receiver
    # or -1 if no such position exists. The point is in the coordinate
    # system of the receiver.
    # <p>
    # Indexing is zero based.
    # </p>
    # 
    # @return the position of the caret
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.3
    # 
    # TODO - Javadoc
    # public
    def get_position(point)
      check_widget
      if ((point).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      # long
      l_param = OS._makelparam(point.attr_x, point.attr_y)
      position = OS._loword(OS._send_message(self.attr_handle, OS::EM_CHARFROMPOS, 0, l_param))
      if (!OS::IsUnicode && OS::IsDBLocale)
        position = mbcs_to_wcs_pos(position)
      end
      return position
    end
    
    typesig { [] }
    # Returns a <code>Point</code> whose x coordinate is the
    # character position representing the start of the selected
    # text, and whose y coordinate is the character position
    # representing the end of the selection. An "empty" selection
    # is indicated by the x and y coordinates having the same value.
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
      start = Array.typed(::Java::Int).new(1) { 0 }
      end_ = Array.typed(::Java::Int).new(1) { 0 }
      OS._send_message(self.attr_handle, OS::EM_GETSEL, start, end_)
      if (!OS::IsUnicode && OS::IsDBLocale)
        start[0] = mbcs_to_wcs_pos(start[0])
        end_[0] = mbcs_to_wcs_pos(end_[0])
      end
      return Point.new(start[0], end_[0])
    end
    
    typesig { [] }
    # Returns the number of selected characters.
    # 
    # @return the number of selected characters.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_count
      check_widget
      selection = get_selection
      return selection.attr_y - selection.attr_x
    end
    
    typesig { [] }
    # Gets the selected text, or an empty string if there is no current selection.
    # 
    # @return the selected text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection_text
      check_widget
      length = OS._get_window_text_length(self.attr_handle)
      if ((length).equal?(0))
        return ""
      end
      start = Array.typed(::Java::Int).new(1) { 0 }
      end_ = Array.typed(::Java::Int).new(1) { 0 }
      OS._send_message(self.attr_handle, OS::EM_GETSEL, start, end_)
      if ((start[0]).equal?(end_[0]))
        return ""
      end
      buffer = TCHAR.new(get_code_page, length + 1)
      OS._get_window_text(self.attr_handle, buffer, length + 1)
      return buffer.to_s(start[0], end_[0] - start[0])
    end
    
    typesig { [] }
    # Returns the number of tabs.
    # <p>
    # Tab stop spacing is specified in terms of the
    # space (' ') character.  The width of a single
    # tab stop is the pixel width of the spaces.
    # </p>
    # 
    # @return the number of tab characters
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_tabs
      check_widget
      return @tabs
    end
    
    typesig { [::Java::Int] }
    def get_tab_width(tabs)
      # long
      old_font = 0
      rect = RECT.new
      # long
      h_dc = OS._get_dc(self.attr_handle)
      # long
      new_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
      if (!(new_font).equal?(0))
        old_font = OS._select_object(h_dc, new_font)
      end
      flags = OS::DT_CALCRECT | OS::DT_SINGLELINE | OS::DT_NOPREFIX
      space = TCHAR.new(get_code_page, " ", false)
      OS._draw_text(h_dc, space, space.length, rect, flags)
      if (!(new_font).equal?(0))
        OS._select_object(h_dc, old_font)
      end
      OS._release_dc(self.attr_handle, h_dc)
      return (rect.attr_right - rect.attr_left) * tabs
    end
    
    typesig { [] }
    # Returns the widget text.
    # <p>
    # The text for a text widget is the characters in the widget, or
    # an empty string if this has never been set.
    # </p>
    # 
    # @return the widget text
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
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns a range of text.  Returns an empty string if the
    # start of the range is greater than the end.
    # <p>
    # Indexing is zero based.  The range of
    # a selection is from 0..N-1 where N is
    # the number of characters in the widget.
    # </p>
    # 
    # @param start the start of the range
    # @param end the end of the range
    # @return the range of text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text(start, end_)
      check_widget
      if (!(start <= end_ && 0 <= end_))
        return ""
      end
      length_ = OS._get_window_text_length(self.attr_handle)
      if (!OS::IsUnicode && OS::IsDBLocale)
        length_ = mbcs_to_wcs_pos(length_)
      end
      start = Math.max(0, start)
      end_ = Math.min(end_, length_ - 1)
      # NOTE: The current implementation uses substring ()
      # which can reference a potentially large character
      # array.
      return get_text.substring(start, end_ + 1)
    end
    
    typesig { [] }
    # Returns the maximum number of characters that the receiver is capable of holding.
    # <p>
    # If this has not been changed by <code>setTextLimit()</code>,
    # it will be the constant <code>Text.LIMIT</code>.
    # </p>
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
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::EM_GETLIMITTEXT, 0, 0)) & 0x7fffffff
    end
    
    typesig { [] }
    # Returns the zero-relative index of the line which is currently
    # at the top of the receiver.
    # <p>
    # This index can change when lines are scrolled or new lines are added or removed.
    # </p>
    # 
    # @return the index of the top line
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_top_index
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        return 0
      end
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::EM_GETFIRSTVISIBLELINE, 0, 0))
    end
    
    typesig { [] }
    # Returns the top pixel.
    # <p>
    # The top pixel is the pixel position of the line
    # that is currently at the top of the widget.  On
    # some platforms, a text widget can be scrolled by
    # pixels instead of lines so that a partial line
    # is displayed at the top of the widget.
    # </p><p>
    # The top pixel changes when the widget is scrolled.
    # The top pixel does not include the widget trimming.
    # </p>
    # 
    # @return the pixel position of the top line
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_top_pixel
      check_widget
      # Note, EM_GETSCROLLPOS is implemented in Rich Edit 3.0
      # and greater.  The plain text widget and previous versions
      # of Rich Edit return zero.
      buffer = Array.typed(::Java::Int).new(2) { 0 }
      # long
      code = OS._send_message(self.attr_handle, OS::EM_GETSCROLLPOS, 0, buffer)
      if ((code).equal?(1))
        return buffer[1]
      end
      return get_top_index * get_line_height
    end
    
    typesig { [String] }
    # Inserts a string.
    # <p>
    # The old selection is replaced with the new text.
    # </p>
    # 
    # @param string the string
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is <code>null</code></li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def insert(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      string = RJava.cast_to_string(Display.with_cr_lf(string))
      if (hooks(SWT::Verify) || filters(SWT::Verify))
        start = Array.typed(::Java::Int).new(1) { 0 }
        end_ = Array.typed(::Java::Int).new(1) { 0 }
        OS._send_message(self.attr_handle, OS::EM_GETSEL, start, end_)
        string = RJava.cast_to_string(verify_text(string, start[0], end_[0], nil))
        if ((string).nil?)
          return
        end
      end
      buffer = TCHAR.new(get_code_page, string, true)
      # Feature in Windows.  When an edit control with ES_MULTILINE
      # style that does not have the WS_VSCROLL style is full (i.e.
      # there is no space at the end to draw any more characters),
      # EM_REPLACESEL sends a WM_CHAR with a backspace character
      # to remove any further text that is added.  This is an
      # implementation detail of the edit control that is unexpected
      # and can cause endless recursion when EM_REPLACESEL is sent
      # from a WM_CHAR handler.  The fix is to ignore calling the
      # handler from WM_CHAR.
      @ignore_character = true
      OS._send_message(self.attr_handle, OS::EM_REPLACESEL, 0, buffer)
      @ignore_character = false
    end
    
    typesig { [::Java::Int] }
    def mbcs_to_wcs_pos(mbcs_pos)
      if (mbcs_pos <= 0)
        return 0
      end
      if (OS::IsUnicode)
        return mbcs_pos
      end
      cp = get_code_page
      wcs_total = 0
      mbcs_total = 0
      buffer = Array.typed(::Java::Byte).new(128) { 0 }
      delimiter = get_line_delimiter
      delimiter_size = delimiter.length
      # 64
      count = RJava.cast_to_int(OS._send_message_a(self.attr_handle, OS::EM_GETLINECOUNT, 0, 0))
      line = 0
      while line < count
        wcs_size = 0
        # 64
        line_pos = RJava.cast_to_int(OS._send_message_a(self.attr_handle, OS::EM_LINEINDEX, line, 0))
        # 64
        mbcs_size = RJava.cast_to_int(OS._send_message_a(self.attr_handle, OS::EM_LINELENGTH, line_pos, 0))
        if (!(mbcs_size).equal?(0))
          if (mbcs_size + delimiter_size > buffer.attr_length)
            buffer = Array.typed(::Java::Byte).new(mbcs_size + delimiter_size) { 0 }
          end
          # ENDIAN
          buffer[0] = (mbcs_size & 0xff)
          buffer[1] = (mbcs_size >> 8)
          # 64
          mbcs_size = RJava.cast_to_int(OS._send_message_a(self.attr_handle, OS::EM_GETLINE, line, buffer))
          wcs_size = OS._multi_byte_to_wide_char(cp, OS::MB_PRECOMPOSED, buffer, mbcs_size, nil, 0)
        end
        if (!(line - 1).equal?(count))
          i = 0
          while i < delimiter_size
            buffer[((mbcs_size += 1) - 1)] = delimiter.char_at(i)
            i += 1
          end
          wcs_size += delimiter_size
        end
        if ((mbcs_total + mbcs_size) >= mbcs_pos)
          buffer_size = mbcs_pos - mbcs_total
          wcs_size = OS._multi_byte_to_wide_char(cp, OS::MB_PRECOMPOSED, buffer, buffer_size, nil, 0)
          return wcs_total + wcs_size
        end
        wcs_total += wcs_size
        mbcs_total += mbcs_size
        line += 1
      end
      return wcs_total
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
    def paste
      check_widget
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        return
      end
      OS._send_message(self.attr_handle, OS::WM_PASTE, 0, 0)
    end
    
    typesig { [] }
    def release_widget
      super
      @message = RJava.cast_to_string(nil)
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
    
    typesig { [] }
    # Selects all the text in the receiver.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def select_all
      check_widget
      OS._send_message(self.attr_handle, OS::EM_SETSEL, 0, -1)
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
      if (@ignore_verify)
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
      # Feature in Windows.  If the left button is down in
      # the text widget, it refuses the character.  The fix
      # is to detect this case and avoid sending a verify
      # event.
      if (OS._get_key_state(OS::VK_LBUTTON) < 0)
        if ((self.attr_handle).equal?(OS._get_capture))
          return true
        end
      end
      # Verify the character
      old_text = ""
      start = Array.typed(::Java::Int).new(1) { 0 }
      end_ = Array.typed(::Java::Int).new(1) { 0 }
      OS._send_message(self.attr_handle, OS::EM_GETSEL, start, end_)
      case (key)
      when 0x8
        # Bs
        if ((start[0]).equal?(end_[0]))
          if ((start[0]).equal?(0))
            return true
          end
          # 64
          line_start = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::EM_LINEINDEX, -1, 0))
          if ((start[0]).equal?(line_start))
            start[0] = start[0] - DELIMITER.length
          else
            start[0] = start[0] - 1
            if (!OS::IsUnicode && OS::IsDBLocale)
              new_start = Array.typed(::Java::Int).new(1) { 0 }
              new_end = Array.typed(::Java::Int).new(1) { 0 }
              OS._send_message(self.attr_handle, OS::EM_SETSEL, start[0], end_[0])
              OS._send_message(self.attr_handle, OS::EM_GETSEL, new_start, new_end)
              if (!(start[0]).equal?(new_start[0]))
                start[0] = start[0] - 1
              end
            end
          end
          start[0] = Math.max(start[0], 0)
        end
      when 0x7f
        # Del
        if ((start[0]).equal?(end_[0]))
          length_ = OS._get_window_text_length(self.attr_handle)
          if ((start[0]).equal?(length_))
            return true
          end
          # 64
          line = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::EM_LINEFROMCHAR, end_[0], 0))
          # 64
          line_start = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::EM_LINEINDEX, line + 1, 0))
          if ((end_[0]).equal?(line_start - DELIMITER.length))
            end_[0] = end_[0] + DELIMITER.length
          else
            end_[0] = end_[0] + 1
            if (!OS::IsUnicode && OS::IsDBLocale)
              new_start = Array.typed(::Java::Int).new(1) { 0 }
              new_end = Array.typed(::Java::Int).new(1) { 0 }
              OS._send_message(self.attr_handle, OS::EM_SETSEL, start[0], end_[0])
              OS._send_message(self.attr_handle, OS::EM_GETSEL, new_start, new_end)
              if (!(end_[0]).equal?(new_end[0]))
                end_[0] = end_[0] + 1
              end
            end
          end
          end_[0] = Math.min(end_[0], length_)
        end
      when Character.new(?\r.ord)
        # Return
        if (!((self.attr_style & SWT::SINGLE)).equal?(0))
          return true
        end
        old_text = DELIMITER
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
      new_text = RJava.cast_to_string(Display.with_cr_lf(new_text))
      buffer = TCHAR.new(get_code_page, new_text, true)
      OS._send_message(self.attr_handle, OS::EM_SETSEL, start[0], end_[0])
      # Feature in Windows.  When an edit control with ES_MULTILINE
      # style that does not have the WS_VSCROLL style is full (i.e.
      # there is no space at the end to draw any more characters),
      # EM_REPLACESEL sends a WM_CHAR with a backspace character
      # to remove any further text that is added.  This is an
      # implementation detail of the edit control that is unexpected
      # and can cause endless recursion when EM_REPLACESEL is sent
      # from a WM_CHAR handler.  The fix is to ignore calling the
      # handler from WM_CHAR.
      @ignore_character = true
      OS._send_message(self.attr_handle, OS::EM_REPLACESEL, 0, buffer)
      @ignore_character = false
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def set_bounds(x, y, width, height, flags)
      # Feature in Windows.  When the caret is moved,
      # the text widget scrolls to show the new location.
      # This means that the text widget may be scrolled
      # to the right in order to show the caret when the
      # widget is not large enough to show both the caret
      # location and all the text.  Unfortunately, when
      # the text widget is resized such that all the text
      # and the caret could be visible, Windows does not
      # scroll the widget back.  The fix is to resize the
      # text widget, set the selection to the start of the
      # text and then restore the selection.  This will
      # cause the text widget compute the correct scroll
      # position.
      if (((flags & OS::SWP_NOSIZE)).equal?(0) && !(width).equal?(0))
        rect = RECT.new
        OS._get_window_rect(self.attr_handle, rect)
        # long
        margins = OS._send_message(self.attr_handle, OS::EM_GETMARGINS, 0, 0)
        margin_width = OS._loword(margins) + OS._hiword(margins)
        if (rect.attr_right - rect.attr_left <= margin_width)
          start = Array.typed(::Java::Int).new(1) { 0 }
          end_ = Array.typed(::Java::Int).new(1) { 0 }
          OS._send_message(self.attr_handle, OS::EM_GETSEL, start, end_)
          if (!(start[0]).equal?(0) || !(end_[0]).equal?(0))
            _set_window_pos(self.attr_handle, 0, x, y, width, height, flags)
            OS._send_message(self.attr_handle, OS::EM_SETSEL, 0, 0)
            OS._send_message(self.attr_handle, OS::EM_SETSEL, start[0], end_[0])
            return
          end
        end
      end
      super(x, y, width, height, flags)
    end
    
    typesig { [] }
    def set_default_font
      super
      set_margins
    end
    
    typesig { [::Java::Boolean] }
    # Sets the double click enabled flag.
    # <p>
    # The double click flag enables or disables the
    # default action of the text widget when the user
    # double clicks.
    # </p><p>
    # Note: This operation is a hint and is not supported on
    # platforms that do not have this concept.
    # </p>
    # 
    # @param doubleClick the new double click flag
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_double_click_enabled(double_click)
      check_widget
      @double_click = double_click
    end
    
    typesig { [::Java::Char] }
    # Sets the echo character.
    # <p>
    # The echo character is the character that is
    # displayed when the user enters text or the
    # text is changed by the programmer. Setting
    # the echo character to '\0' clears the echo
    # character and redraws the original text.
    # If for any reason the echo character is invalid,
    # or if the platform does not allow modification
    # of the echo character, the default echo character
    # for the platform is used.
    # </p>
    # 
    # @param echo the new echo character
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_echo_char(echo)
      check_widget
      if (!((self.attr_style & SWT::MULTI)).equal?(0))
        return
      end
      if (!(echo).equal?(0))
        if (((echo = RJava.cast_to_char(Display.wcs_to_mbcs(echo, get_code_page)))).equal?(0))
          echo = Character.new(?*.ord)
        end
      end
      OS._send_message(self.attr_handle, OS::EM_SETPASSWORDCHAR, echo, 0)
      # Bug in Windows.  When the password character is changed,
      # Windows does not redraw to show the new password character.
      # The fix is to force a redraw when the character is set.
      OS._invalidate_rect(self.attr_handle, nil, true)
    end
    
    typesig { [::Java::Boolean] }
    # Sets the editable state.
    # 
    # @param editable the new editable state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_editable(editable)
      check_widget
      self.attr_style &= ~SWT::READ_ONLY
      if (!editable)
        self.attr_style |= SWT::READ_ONLY
      end
      OS._send_message(self.attr_handle, OS::EM_SETREADONLY, editable ? 0 : 1, 0)
    end
    
    typesig { [Font] }
    def set_font(font)
      check_widget
      super(font)
      set_tab_stops(@tabs)
      set_margins
    end
    
    typesig { [] }
    def set_margins
      # Bug in Windows.  When EM_SETCUEBANNER is used to set the
      # banner text, the control does not take into account the
      # margins, causing the first character to be clipped.  The
      # fix is to set the margins to zero.
      if (OS::COMCTL32_MAJOR >= 6)
        if (!((self.attr_style & SWT::SEARCH)).equal?(0))
          OS._send_message(self.attr_handle, OS::EM_SETMARGINS, OS::EC_LEFTMARGIN | OS::EC_RIGHTMARGIN, 0)
        end
      end
    end
    
    typesig { [String] }
    # Sets the widget message. When the widget is created
    # with the style <code>SWT.SEARCH</code>, the message text
    # is displayed as a hint for the user, indicating the
    # purpose of the field.
    # <p>
    # Note: This operation is a <em>HINT</em> and is not
    # supported on platforms that do not have this concept.
    # </p>
    # 
    # @param message the new message
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the message is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.3
    def set_message(message)
      check_widget
      if ((message).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      @message = message
      if (OS::COMCTL32_MAJOR >= 6)
        if (!((self.attr_style & SWT::SEARCH)).equal?(0))
          bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
          if (((bits & OS::ES_MULTILINE)).equal?(0))
            length_ = message.length
            chars = CharArray.new(length_ + 1)
            message.get_chars(0, length_, chars, 0)
            OS._send_message(self.attr_handle, OS::EM_SETCUEBANNER, 0, chars)
          end
        end
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the orientation of the receiver, which must be one
    # of the constants <code>SWT.LEFT_TO_RIGHT</code> or <code>SWT.RIGHT_TO_LEFT</code>.
    # <p>
    # Note: This operation is a hint and is not supported on
    # platforms that do not have this concept.
    # </p>
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
        bits |= OS::WS_EX_RTLREADING | OS::WS_EX_LEFTSCROLLBAR
      else
        bits &= ~(OS::WS_EX_RTLREADING | OS::WS_EX_LEFTSCROLLBAR)
      end
      OS._set_window_long(self.attr_handle, OS::GWL_EXSTYLE, bits)
      fix_alignment
    end
    
    typesig { [::Java::Int] }
    # Sets the selection.
    # <p>
    # Indexing is zero based.  The range of
    # a selection is from 0..N where N is
    # the number of characters in the widget.
    # </p><p>
    # Text selections are specified in terms of
    # caret positions.  In a text widget that
    # contains N characters, there are N+1 caret
    # positions, ranging from 0..N.  This differs
    # from other functions that address character
    # position such as getText () that use the
    # regular array indexing rules.
    # </p>
    # 
    # @param start new caret position
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(start)
      check_widget
      if (!OS::IsUnicode && OS::IsDBLocale)
        start = wcs_to_mbcs_pos(start)
      end
      OS._send_message(self.attr_handle, OS::EM_SETSEL, start, start)
      OS._send_message(self.attr_handle, OS::EM_SCROLLCARET, 0, 0)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Sets the selection to the range specified
    # by the given start and end indices.
    # <p>
    # Indexing is zero based.  The range of
    # a selection is from 0..N where N is
    # the number of characters in the widget.
    # </p><p>
    # Text selections are specified in terms of
    # caret positions.  In a text widget that
    # contains N characters, there are N+1 caret
    # positions, ranging from 0..N.  This differs
    # from other functions that address character
    # position such as getText () that use the
    # usual array indexing rules.
    # </p>
    # 
    # @param start the start of the range
    # @param end the end of the range
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(start, end_)
      check_widget
      if (!OS::IsUnicode && OS::IsDBLocale)
        start = wcs_to_mbcs_pos(start)
        end_ = wcs_to_mbcs_pos(end_)
      end
      OS._send_message(self.attr_handle, OS::EM_SETSEL, start, end_)
      OS._send_message(self.attr_handle, OS::EM_SCROLLCARET, 0, 0)
    end
    
    typesig { [::Java::Boolean] }
    def set_redraw(redraw)
      check_widget
      super(redraw)
      # Feature in Windows.  When WM_SETREDRAW is used to turn
      # redraw off, the edit control is not scrolled to show the
      # i-beam.  The fix is to detect that the i-beam has moved
      # while redraw is turned off and force it to be visible
      # when redraw is restored.
      if (!(self.attr_draw_count).equal?(0))
        return
      end
      start = Array.typed(::Java::Int).new(1) { 0 }
      end_ = Array.typed(::Java::Int).new(1) { 0 }
      OS._send_message(self.attr_handle, OS::EM_GETSEL, start, end_)
      if (!redraw)
        @old_start = start[0]
        @old_end = end_[0]
      else
        if ((@old_start).equal?(start[0]) && (@old_end).equal?(end_[0]))
          return
        end
        OS._send_message(self.attr_handle, OS::EM_SCROLLCARET, 0, 0)
      end
    end
    
    typesig { [Point] }
    # Sets the selection to the range specified
    # by the given point, where the x coordinate
    # represents the start index and the y coordinate
    # represents the end index.
    # <p>
    # Indexing is zero based.  The range of
    # a selection is from 0..N where N is
    # the number of characters in the widget.
    # </p><p>
    # Text selections are specified in terms of
    # caret positions.  In a text widget that
    # contains N characters, there are N+1 caret
    # positions, ranging from 0..N.  This differs
    # from other functions that address character
    # position such as getText () that use the
    # usual array indexing rules.
    # </p>
    # 
    # @param selection the point
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
      set_selection(selection.attr_x, selection.attr_y)
    end
    
    typesig { [::Java::Int] }
    # Sets the number of tabs.
    # <p>
    # Tab stop spacing is specified in terms of the
    # space (' ') character.  The width of a single
    # tab stop is the pixel width of the spaces.
    # </p>
    # 
    # @param tabs the number of tabs
    # 
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_tabs(tabs)
      check_widget
      if (tabs < 0)
        return
      end
      set_tab_stops(@tabs = tabs)
    end
    
    typesig { [::Java::Int] }
    def set_tab_stops(tabs)
      # Feature in Windows.  Windows expects the tab spacing in
      # dialog units so we must convert from space widths.  Due
      # to round off error, the tab spacing may not be the exact
      # number of space widths, depending on the font.
      width = (get_tab_width(tabs) * 4) / OS._loword(OS._get_dialog_base_units)
      OS._send_message(self.attr_handle, OS::EM_SETTABSTOPS, 1, Array.typed(::Java::Int).new([width]))
    end
    
    typesig { [String] }
    # Sets the contents of the receiver to the given string. If the receiver has style
    # SINGLE and the argument contains multiple lines of text, the result of this
    # operation is undefined and may vary from platform to platform.
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
      string = RJava.cast_to_string(Display.with_cr_lf(string))
      if (hooks(SWT::Verify) || filters(SWT::Verify))
        length_ = OS._get_window_text_length(self.attr_handle)
        string = RJava.cast_to_string(verify_text(string, 0, length_, nil))
        if ((string).nil?)
          return
        end
      end
      # 64
      limit = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::EM_GETLIMITTEXT, 0, 0)) & 0x7fffffff
      if (string.length > limit)
        string = RJava.cast_to_string(string.substring(0, limit))
      end
      buffer = TCHAR.new(get_code_page, string, true)
      OS._set_window_text(self.attr_handle, buffer)
      # Bug in Windows.  When the widget is multi line
      # text widget, it does not send a WM_COMMAND with
      # control code EN_CHANGE from SetWindowText () to
      # notify the application that the text has changed.
      # The fix is to send the event.
      bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      if (!((bits & OS::ES_MULTILINE)).equal?(0))
        send_event(SWT::Modify)
        # widget could be disposed at this point
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the maximum number of characters that the receiver
    # is capable of holding to be the argument.
    # <p>
    # Instead of trying to set the text limit to zero, consider
    # creating a read-only text widget.
    # </p><p>
    # To reset this value to the default, use <code>setTextLimit(Text.LIMIT)</code>.
    # Specifying a limit value larger than <code>Text.LIMIT</code> sets the
    # receiver's limit to <code>Text.LIMIT</code>.
    # </p>
    # 
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
      OS._send_message(self.attr_handle, OS::EM_SETLIMITTEXT, limit, 0)
    end
    
    typesig { [::Java::Int] }
    # Sets the zero-relative index of the line which is currently
    # at the top of the receiver. This index can change when lines
    # are scrolled or new lines are added and removed.
    # 
    # @param index the index of the top item
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_top_index(index)
      check_widget
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        return
      end
      # 64
      count = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::EM_GETLINECOUNT, 0, 0))
      index = Math.min(Math.max(index, 0), count - 1)
      # 64
      top_index = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::EM_GETFIRSTVISIBLELINE, 0, 0))
      OS._send_message(self.attr_handle, OS::EM_LINESCROLL, 0, index - top_index)
    end
    
    typesig { [] }
    # Shows the selection.
    # <p>
    # If the selection is already showing
    # in the receiver, this method simply returns.  Otherwise,
    # lines are scrolled until the selection is visible.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def show_selection
      check_widget
      OS._send_message(self.attr_handle, OS::EM_SCROLLCARET, 0, 0)
    end
    
    typesig { [String, ::Java::Int, ::Java::Int, Event] }
    def verify_text(string, start, end_, key_event)
      if (@ignore_verify)
        return string
      end
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
      cp = get_code_page
      wcs_total = 0
      mbcs_total = 0
      buffer = Array.typed(::Java::Byte).new(128) { 0 }
      delimiter = get_line_delimiter
      delimiter_size = delimiter.length
      # 64
      count = RJava.cast_to_int(OS._send_message_a(self.attr_handle, OS::EM_GETLINECOUNT, 0, 0))
      line = 0
      while line < count
        wcs_size = 0
        # 64
        line_pos = RJava.cast_to_int(OS._send_message_a(self.attr_handle, OS::EM_LINEINDEX, line, 0))
        # 64
        mbcs_size = RJava.cast_to_int(OS._send_message_a(self.attr_handle, OS::EM_LINELENGTH, line_pos, 0))
        if (!(mbcs_size).equal?(0))
          if (mbcs_size + delimiter_size > buffer.attr_length)
            buffer = Array.typed(::Java::Byte).new(mbcs_size + delimiter_size) { 0 }
          end
          # ENDIAN
          buffer[0] = (mbcs_size & 0xff)
          buffer[1] = (mbcs_size >> 8)
          # 64
          mbcs_size = RJava.cast_to_int(OS._send_message_a(self.attr_handle, OS::EM_GETLINE, line, buffer))
          wcs_size = OS._multi_byte_to_wide_char(cp, OS::MB_PRECOMPOSED, buffer, mbcs_size, nil, 0)
        end
        if (!(line - 1).equal?(count))
          i = 0
          while i < delimiter_size
            buffer[((mbcs_size += 1) - 1)] = delimiter.char_at(i)
            i += 1
          end
          wcs_size += delimiter_size
        end
        if ((wcs_total + wcs_size) >= wcs_pos)
          wcs_size = 0
          index = 0
          while (index < mbcs_size)
            if (((wcs_total + wcs_size)).equal?(wcs_pos))
              return mbcs_total + index
            end
            if (OS._is_dbcslead_byte(buffer[((index += 1) - 1)]))
              index += 1
            end
            wcs_size += 1
          end
          return mbcs_total + mbcs_size
        end
        wcs_total += wcs_size
        mbcs_total += mbcs_size
        line += 1
      end
      return mbcs_total
    end
    
    typesig { [] }
    def widget_style
      bits = super | OS::ES_AUTOHSCROLL
      if (!((self.attr_style & SWT::PASSWORD)).equal?(0))
        bits |= OS::ES_PASSWORD
      end
      if (!((self.attr_style & SWT::CENTER)).equal?(0))
        bits |= OS::ES_CENTER
      end
      if (!((self.attr_style & SWT::RIGHT)).equal?(0))
        bits |= OS::ES_RIGHT
      end
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        bits |= OS::ES_READONLY
      end
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # Feature in Windows.  When a text control is read-only,
        # uses COLOR_3DFACE for the background .  If the text
        # controls single-line and is within a tab folder or
        # some other themed control, using WM_ERASEBKGND and
        # WM_CTRCOLOR to draw the theme background results in
        # pixel corruption.  The fix is to use an ES_MULTILINE
        # text control instead.
        if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
          if (((self.attr_style & (SWT::BORDER | SWT::H_SCROLL | SWT::V_SCROLL))).equal?(0))
            if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
              bits |= OS::ES_MULTILINE
            end
          end
        end
        return bits
      end
      bits |= OS::ES_MULTILINE | OS::ES_NOHIDESEL | OS::ES_AUTOVSCROLL
      if (!((self.attr_style & SWT::WRAP)).equal?(0))
        bits &= ~(OS::WS_HSCROLL | OS::ES_AUTOHSCROLL)
      end
      return bits
    end
    
    typesig { [] }
    def window_class
      return EditClass
    end
    
    typesig { [] }
    # long
    def window_proc
      return EditProc
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def window_proc(hwnd, msg, w_param, l_param)
      if ((msg).equal?(OS::EM_UNDO))
        bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        if (((bits & OS::ES_MULTILINE)).equal?(0))
          result = wm_clipboard(OS::EM_UNDO, w_param, l_param)
          if (!(result).nil?)
            return result.attr_value
          end
          return call_window_proc(hwnd, OS::EM_UNDO, w_param, l_param)
        end
      end
      if ((msg).equal?(Display.attr_swt_restorecaret))
        call_window_proc(hwnd, OS::WM_KILLFOCUS, 0, 0)
        call_window_proc(hwnd, OS::WM_SETFOCUS, 0, 0)
        return 1
      end
      return super(hwnd, msg, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_char(w_param, l_param)
      if (@ignore_character)
        return nil
      end
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Bug in Windows.  When the user types CTRL and BS
      # in an edit control, a DEL character is generated.
      # Rather than deleting the text, the DEL character
      # is inserted into the control.  The fix is to detect
      # this case and not call the window proc.
      # 
      # 64
      case (RJava.cast_to_int(w_param))
      when SWT::DEL
        if (OS._get_key_state(OS::VK_CONTROL) < 0)
          return LRESULT::ZERO
        end
      end
      # Feature in Windows.  For some reason, when the
      # widget is a single line text widget, when the
      # user presses tab, return or escape, Windows beeps.
      # The fix is to look for these keys and not call
      # the window proc.
      if (!((self.attr_style & SWT::SINGLE)).equal?(0))
        # 64
        case (RJava.cast_to_int(w_param))
        # FALL THROUGH
        when SWT::CR
          post_event(SWT::DefaultSelection)
          return LRESULT::ZERO
        when SWT::TAB, SWT::ESC
          return LRESULT::ZERO
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_clear(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      return wm_clipboard(OS::WM_CLEAR, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_cut(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      return wm_clipboard(OS::WM_CUT, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_erasebkgnd(w_param, l_param)
      result = super(w_param, l_param)
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        if (((self.attr_style & (SWT::BORDER | SWT::H_SCROLL | SWT::V_SCROLL))).equal?(0))
          bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
          if (!((bits & OS::ES_MULTILINE)).equal?(0))
            control = find_background_control
            if ((control).nil? && (self.attr_background).equal?(-1))
              if (!((self.attr_state & THEME_BACKGROUND)).equal?(0))
                if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
                  control = find_theme_control
                  if (!(control).nil?)
                    rect = RECT.new
                    OS._get_client_rect(self.attr_handle, rect)
                    fill_theme_background(w_param, control, rect)
                    return LRESULT::ONE
                  end
                end
              end
            end
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_getdlgcode(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Bug in WinCE PPC.  For some reason, sending WM_GETDLGCODE
      # to a multi-line edit control causes it to ignore return and
      # tab keys.  The fix is to return the value which is normally
      # returned by the text window proc on other versions of Windows.
      if (OS::IsPPC)
        if (!((self.attr_style & SWT::MULTI)).equal?(0) && ((self.attr_style & SWT::READ_ONLY)).equal?(0) && (l_param).equal?(0))
          return LRESULT.new(OS::DLGC_HASSETSEL | OS::DLGC_WANTALLKEYS | OS::DLGC_WANTCHARS)
        end
      end
      # Feature in Windows.  Despite the fact that the
      # edit control is read only, it still returns a
      # dialog code indicating that it wants all keys.
      # The fix is to detect this case and clear the bits.
      # 
      # NOTE: A read only edit control processes arrow keys
      # so DLGC_WANTARROWS should not be cleared.
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        # long
        code = call_window_proc(self.attr_handle, OS::WM_GETDLGCODE, w_param, l_param)
        code &= ~(OS::DLGC_WANTALLKEYS | OS::DLGC_WANTTAB)
        return LRESULT.new(code)
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_ime_char(w_param, l_param)
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
      result = call_window_proc(self.attr_handle, OS::WM_IME_CHAR, w_param, l_param)
      msg = MSG.new
      flags = OS::PM_REMOVE | OS::PM_NOYIELD | OS::PM_QS_INPUT | OS::PM_QS_POSTMESSAGE
      while (OS._peek_message(msg, self.attr_handle, OS::WM_CHAR, OS::WM_CHAR, flags))
        OS._translate_message(msg)
        OS._dispatch_message(msg)
      end
      @ignore_character = false
      send_key_event(SWT::KeyUp, OS::WM_IME_CHAR, w_param, l_param)
      # widget could be disposed at this point
      display.attr_last_key = display.attr_last_ascii = 0
      return LRESULT.new(result)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttondblclk(w_param, l_param)
      # Prevent Windows from processing WM_LBUTTONDBLCLK
      # when double clicking behavior is disabled by not
      # calling the window proc.
      result = nil
      send_mouse_event(SWT::MouseDown, 1, self.attr_handle, OS::WM_LBUTTONDOWN, w_param, l_param)
      if (!send_mouse_event(SWT::MouseDoubleClick, 1, self.attr_handle, OS::WM_LBUTTONDBLCLK, w_param, l_param))
        result = LRESULT::ZERO
      end
      if (!self.attr_display.attr_capture_changed && !is_disposed)
        if (!(OS._get_capture).equal?(self.attr_handle))
          OS._set_capture(self.attr_handle)
        end
      end
      if (!@double_click)
        return LRESULT::ZERO
      end
      # Bug in Windows.  When the last line of text in the
      # widget is double clicked and the line is empty, Windows
      # hides the i-beam then moves it to the first line in
      # the widget but does not scroll to show the user.
      # If the user types without clicking the mouse, invalid
      # characters are displayed at the end of each line of
      # text in the widget.  The fix is to detect this case
      # and avoid calling the window proc.
      start = Array.typed(::Java::Int).new(1) { 0 }
      end_ = Array.typed(::Java::Int).new(1) { 0 }
      OS._send_message(self.attr_handle, OS::EM_GETSEL, start, end_)
      if ((start[0]).equal?(end_[0]))
        length_ = OS._get_window_text_length(self.attr_handle)
        if ((length_).equal?(start[0]))
          # 64
          code = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::EM_LINELENGTH, length_, 0))
          if ((code).equal?(0))
            return LRESULT::ZERO
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttondown(w_param, l_param)
      if (OS::IsPPC)
        result = nil
        display = self.attr_display
        display.attr_capture_changed = false
        dispatch = send_mouse_event(SWT::MouseDown, 1, self.attr_handle, OS::WM_LBUTTONDOWN, w_param, l_param)
        # Note: On WinCE PPC, only attempt to recognize the gesture for
        # a context menu when the control contains a valid menu or there
        # are listeners for the MenuDetect event.
        # 
        # Note: On WinCE PPC, the gesture that brings up a popup menu
        # on the text widget must keep the current text selection.  As a
        # result, the window proc is only called if the menu is not shown.
        has_menu = !(self.attr_menu).nil? && !self.attr_menu.is_disposed
        if (has_menu || hooks(SWT::MenuDetect))
          x = OS._get_x_lparam(l_param)
          y = OS._get_y_lparam(l_param)
          shrg = SHRGINFO.new
          shrg.attr_cb_size = SHRGINFO.attr_sizeof
          shrg.attr_hwnd_client = self.attr_handle
          shrg.attr_pt_down_x = x
          shrg.attr_pt_down_y = y
          shrg.attr_dw_flags = OS::SHRG_RETURNCMD
          type = OS._shrecognize_gesture(shrg)
          if ((type).equal?(OS::GN_CONTEXTMENU))
            show_menu(x, y)
            return LRESULT::ONE
          end
        end
        if (dispatch)
          result = LRESULT.new(call_window_proc(self.attr_handle, OS::WM_LBUTTONDOWN, w_param, l_param))
        else
          result = LRESULT::ZERO
        end
        if (!display.attr_capture_changed && !is_disposed)
          if (!(OS._get_capture).equal?(self.attr_handle))
            OS._set_capture(self.attr_handle)
          end
        end
        return result
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_paste(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      return wm_clipboard(OS::WM_PASTE, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_undo(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      return wm_clipboard(OS::WM_UNDO, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_clipboard(msg, w_param, l_param)
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
        OS._send_message(self.attr_handle, OS::EM_GETSEL, start, end_)
        if (!(start[0]).equal?(end_[0]))
          new_text = ""
          call = true
        end
      when OS::WM_PASTE
        OS._send_message(self.attr_handle, OS::EM_GETSEL, start, end_)
        new_text = RJava.cast_to_string(get_clipboard_text)
      when OS::EM_UNDO, OS::WM_UNDO
        if (!(OS._send_message(self.attr_handle, OS::EM_CANUNDO, 0, 0)).equal?(0))
          @ignore_modify = @ignore_character = true
          OS._send_message(self.attr_handle, OS::EM_GETSEL, start, end_)
          call_window_proc(self.attr_handle, msg, w_param, l_param)
          length_ = OS._get_window_text_length(self.attr_handle)
          new_start = Array.typed(::Java::Int).new(1) { 0 }
          new_end = Array.typed(::Java::Int).new(1) { 0 }
          OS._send_message(self.attr_handle, OS::EM_GETSEL, new_start, new_end)
          if (!(length_).equal?(0) && !(new_start[0]).equal?(new_end[0]))
            buffer = TCHAR.new(get_code_page, length_ + 1)
            OS._get_window_text(self.attr_handle, buffer, length_ + 1)
            new_text = RJava.cast_to_string(buffer.to_s(new_start[0], new_end[0] - new_start[0]))
          else
            new_text = ""
          end
          call_window_proc(self.attr_handle, msg, w_param, l_param)
          @ignore_modify = @ignore_character = false
        end
      end
      if (!(new_text).nil?)
        old_text = new_text
        new_text = RJava.cast_to_string(verify_text(new_text, start[0], end_[0], nil))
        if ((new_text).nil?)
          return LRESULT::ZERO
        end
        if (!(new_text == old_text))
          if (call)
            call_window_proc(self.attr_handle, msg, w_param, l_param)
          end
          new_text = RJava.cast_to_string(Display.with_cr_lf(new_text))
          buffer = TCHAR.new(get_code_page, new_text, true)
          # Feature in Windows.  When an edit control with ES_MULTILINE
          # style that does not have the WS_VSCROLL style is full (i.e.
          # there is no space at the end to draw any more characters),
          # EM_REPLACESEL sends a WM_CHAR with a backspace character
          # to remove any further text that is added.  This is an
          # implementation detail of the edit control that is unexpected
          # and can cause endless recursion when EM_REPLACESEL is sent
          # from a WM_CHAR handler.  The fix is to ignore calling the
          # handler from WM_CHAR.
          @ignore_character = true
          OS._send_message(self.attr_handle, OS::EM_REPLACESEL, 0, buffer)
          @ignore_character = false
          return LRESULT::ZERO
        end
      end
      if ((msg).equal?(OS::WM_UNDO))
        @ignore_verify = @ignore_character = true
        call_window_proc(self.attr_handle, OS::WM_UNDO, w_param, l_param)
        @ignore_verify = @ignore_character = false
        return LRESULT::ONE
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_color_child(w_param, l_param)
      if (!((self.attr_style & SWT::READ_ONLY)).equal?(0))
        if (((self.attr_style & (SWT::BORDER | SWT::H_SCROLL | SWT::V_SCROLL))).equal?(0))
          bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
          if (!((bits & OS::ES_MULTILINE)).equal?(0))
            control = find_background_control
            if ((control).nil? && (self.attr_background).equal?(-1))
              if (!((self.attr_state & THEME_BACKGROUND)).equal?(0))
                if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
                  control = find_theme_control
                  if (!(control).nil?)
                    OS._set_text_color(w_param, get_foreground_pixel)
                    OS._set_bk_color(w_param, get_background_pixel)
                    OS._set_bk_mode(w_param, OS::TRANSPARENT)
                    return LRESULT.new(OS._get_stock_object(OS::NULL_BRUSH))
                  end
                end
              end
            end
          end
        end
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_command_child(w_param, l_param)
      code = OS._hiword(w_param)
      catch(:break_case) do
        case (code)
        when OS::EN_CHANGE
          if (!(find_image_control).nil?)
            OS._invalidate_rect(self.attr_handle, nil, true)
          end
          if (@ignore_modify)
            throw :break_case, :thrown
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
        when OS::EN_ALIGN_LTR_EC
          self.attr_style &= ~SWT::RIGHT_TO_LEFT
          self.attr_style |= SWT::LEFT_TO_RIGHT
          fix_alignment
        when OS::EN_ALIGN_RTL_EC
          self.attr_style &= ~SWT::LEFT_TO_RIGHT
          self.attr_style |= SWT::RIGHT_TO_LEFT
          fix_alignment
        end
      end
      return super(w_param, l_param)
    end
    
    private
    alias_method :initialize__text, :initialize
  end
  
end
