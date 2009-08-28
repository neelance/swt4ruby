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
  module GroupImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class provide an etched border
  # with an optional title.
  # <p>
  # Shadow styles are hints and may not be honoured
  # by the platform.  To create a group with the
  # default shadow style for the platform, do not
  # specify a shadow style.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>SHADOW_ETCHED_IN, SHADOW_ETCHED_OUT, SHADOW_IN, SHADOW_OUT, SHADOW_NONE</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # Note: Only one of the above styles may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Group < GroupImports.const_get :Composite
    include_class_members GroupImports
    
    attr_accessor :text
    alias_method :attr_text, :text
    undef_method :text
    alias_method :attr_text=, :text=
    undef_method :text=
    
    class_module.module_eval {
      const_set_lazy(:CLIENT_INSET) { 3 }
      const_attr_reader  :CLIENT_INSET
      
      const_set_lazy(:GroupClass) { TCHAR.new(0, OS::IsWinCE ? "BUTTON" : "SWT_GROUP", true) }
      const_attr_reader  :GroupClass
      
      when_class_loaded do
        # Feature in Windows.  The group box window class
        # uses the CS_HREDRAW and CS_VREDRAW style bits to
        # force a full redraw of the control and all children
        # when resized.  This causes flashing.  The fix is to
        # register a new window class without these bits and
        # implement special code that damages only the control.
        # 
        # Feature in WinCE.  On certain devices, defining
        # a new window class which looks like BUTTON causes
        # CreateWindowEx() to crash.  The workaround is to use
        # the class Button directly.
        lp_wnd_class = WNDCLASS.new
        if (OS::IsWinCE)
          OS._get_class_info(0, GroupClass, lp_wnd_class)
          const_set :GroupProc, lp_wnd_class.attr_lpfn_wnd_proc
        else
          wc_button = TCHAR.new(0, "BUTTON", true)
          OS._get_class_info(0, wc_button, lp_wnd_class)
          const_set :GroupProc, lp_wnd_class.attr_lpfn_wnd_proc
          # long
          h_instance = OS._get_module_handle(nil)
          if (!OS._get_class_info(h_instance, GroupClass, lp_wnd_class))
            # long
            h_heap = OS._get_process_heap
            lp_wnd_class.attr_h_instance = h_instance
            lp_wnd_class.attr_style &= ~(OS::CS_HREDRAW | OS::CS_VREDRAW)
            byte_count = GroupClass.length * TCHAR.attr_sizeof
            # long
            lpsz_class_name = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
            OS._move_memory(lpsz_class_name, GroupClass, byte_count)
            lp_wnd_class.attr_lpsz_class_name = lpsz_class_name
            OS._register_class(lp_wnd_class)
            OS._heap_free(h_heap, 0, lpsz_class_name)
          end
        end
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
    # @see SWT#SHADOW_ETCHED_IN
    # @see SWT#SHADOW_ETCHED_OUT
    # @see SWT#SHADOW_IN
    # @see SWT#SHADOW_OUT
    # @see SWT#SHADOW_NONE
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @text = nil
      super(parent, check_style(style))
      @text = ""
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
      # Feature in Windows.  When the user clicks on the group
      # box label, the group box takes focus.  This is unwanted.
      # The fix is to avoid calling the group box window proc.
      case (msg)
      when OS::WM_LBUTTONDOWN, OS::WM_LBUTTONDBLCLK
        return OS._def_window_proc(hwnd, msg, w_param, l_param)
      end
      return OS._call_window_proc(GroupProc, hwnd, msg, w_param, l_param)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        style |= SWT::NO_FOCUS
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
      length_ = @text.length
      if (!(length_).equal?(0))
        # Bug in Windows.  When a group control is right-to-left and
        # is disabled, the first pixel of the text is clipped.  The
        # fix is to add a space to both sides of the text.  Note that
        # the work around must run all the time to stop the preferred
        # size from changing when a group is enabled and disabled.
        string = @text
        if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
          if (OS::COMCTL32_MAJOR < 6 || !OS._is_app_themed)
            string = " " + string + " "
          end
        end
        # If the group has text, and the text is wider than the
        # client area, pad the width so the text is not clipped.
        buffer = TCHAR.new(get_code_page, string, true)
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
        flags = OS::DT_CALCRECT | OS::DT_SINGLELINE
        OS._draw_text(h_dc, buffer, -1, rect, flags)
        if (!(new_font).equal?(0))
          OS._select_object(h_dc, old_font)
        end
        OS._release_dc(self.attr_handle, h_dc)
        offset_y = OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed ? 0 : 1
        size.attr_x = Math.max(size.attr_x, rect.attr_right - rect.attr_left + CLIENT_INSET * 6 + offset_y)
      end
      return size
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_trim(x, y, width, height)
      check_widget
      trim = super(x, y, width, height)
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
      offset_y = OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed ? 0 : 1
      trim.attr_x -= CLIENT_INSET
      trim.attr_y -= tm.attr_tm_height + offset_y
      trim.attr_width += CLIENT_INSET * 2
      trim.attr_height += tm.attr_tm_height + CLIENT_INSET
      return trim
    end
    
    typesig { [] }
    def create_handle
      # Feature in Windows.  When a button is created,
      # it clears the UI state for all controls in the
      # shell by sending WM_CHANGEUISTATE with UIS_SET,
      # UISF_HIDEACCEL and UISF_HIDEFOCUS to the parent.
      # This is undocumented and unexpected.  The fix
      # is to ignore the WM_CHANGEUISTATE, when sent
      # from CreateWindowEx().
      self.attr_parent.attr_state |= IGNORE_WM_CHANGEUISTATE
      super
      self.attr_parent.attr_state &= ~IGNORE_WM_CHANGEUISTATE
      self.attr_state |= DRAW_BACKGROUND
      self.attr_state &= ~CANVAS
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      super(enabled)
      # Bug in Windows.  When a group control is right-to-left and
      # is disabled, the first pixel of the text is clipped.  The
      # fix is to add a space to both sides of the text.
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        if (OS::COMCTL32_MAJOR < 6 || !OS._is_app_themed)
          string = enabled || (@text.length).equal?(0) ? @text : " " + @text + " "
          buffer = TCHAR.new(get_code_page, string, true)
          OS._set_window_text(self.attr_handle, buffer)
        end
      end
    end
    
    typesig { [] }
    def get_client_area
      check_widget
      force_resize
      rect = RECT.new
      OS._get_client_rect(self.attr_handle, rect)
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
      offset_y = OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed ? 0 : 1
      x = CLIENT_INSET
      y = tm.attr_tm_height + offset_y
      width = Math.max(0, rect.attr_right - CLIENT_INSET * 2)
      height = Math.max(0, rect.attr_bottom - y - CLIENT_INSET)
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [] }
    def get_name_text
      return get_text
    end
    
    typesig { [] }
    # Returns the receiver's text, which is the string that the
    # is used as the <em>title</em>. If the text has not previously
    # been set, returns an empty string.
    # 
    # @return the text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text
      check_widget
      return @text
    end
    
    typesig { [::Java::Char] }
    def mnemonic_hit(key)
      return set_focus
    end
    
    typesig { [::Java::Char] }
    def mnemonic_match(key)
      mnemonic = find_mnemonic(get_text)
      if ((mnemonic).equal?(Character.new(?\0.ord)))
        return false
      end
      return (Character.to_upper_case(key)).equal?(Character.to_upper_case(mnemonic))
    end
    
    typesig { [::Java::Int, SwtGC] }
    # long
    def print_widget(hwnd, gc)
      # Bug in Windows.  For some reason, PrintWindow() fails
      # when it is called on a push button.  The fix is to
      # detect the failure and use WM_PRINT instead.  Note
      # that WM_PRINT cannot be used all the time because it
      # fails for browser controls when the browser has focus.
      # 
      # long
      h_dc = gc.attr_handle
      if (!OS._print_window(hwnd, h_dc, 0))
        # Bug in Windows.  For some reason, WM_PRINT when called
        # with PRF_CHILDREN will not draw the tool bar divider
        # for tool bar children that do not have CCS_NODIVIDER.
        # The fix is to draw the group box and iterate through
        # the children, drawing each one.
        flags = OS::PRF_CLIENT | OS::PRF_NONCLIENT | OS::PRF_ERASEBKGND
        OS._send_message(hwnd, OS::WM_PRINT, h_dc, flags)
        n_saved_dc = OS._save_dc(h_dc)
        children = __get_children
        rect = get_bounds
        OS._intersect_clip_rect(h_dc, 0, 0, rect.attr_width, rect.attr_height)
        i = children.attr_length - 1
        while i >= 0
          location = children[i].get_location
          OS._set_window_org_ex(h_dc, -location.attr_x, -location.attr_y, nil)
          children[i].print(gc)
          (i -= 1)
        end
        OS._restore_dc(h_dc, n_saved_dc)
      end
    end
    
    typesig { [] }
    def release_widget
      super
      @text = RJava.cast_to_string(nil)
    end
    
    typesig { [Font] }
    def set_font(font)
      check_widget
      old_rect = get_client_area
      super(font)
      new_rect = get_client_area
      if (!(old_rect == new_rect))
        send_resize
      end
    end
    
    typesig { [String] }
    # Sets the receiver's text, which is the string that will
    # be displayed as the receiver's <em>title</em>, to the argument,
    # which may not be null. The string may include the mnemonic character.
    # </p>
    # Mnemonics are indicated by an '&amp;' that causes the next
    # character to be the mnemonic.  When the user presses a
    # key sequence that matches the mnemonic, focus is assigned
    # to the first child of the group. On most platforms, the
    # mnemonic appears underlined but may be emphasised in a
    # platform specific manner.  The mnemonic indicator character
    # '&amp;' can be escaped by doubling it in the string, causing
    # a single '&amp;' to be displayed.
    # </p>
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
      @text = string
      # Bug in Windows.  When a group control is right-to-left and
      # is disabled, the first pixel of the text is clipped.  The
      # fix is to add a space to both sides of the text.
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        if (OS::COMCTL32_MAJOR < 6 || !OS._is_app_themed)
          if (!OS._is_window_enabled(self.attr_handle))
            if (!(string.length).equal?(0))
              string = " " + string + " "
            end
          end
        end
      end
      buffer = TCHAR.new(get_code_page, string, true)
      OS._set_window_text(self.attr_handle, buffer)
    end
    
    typesig { [] }
    def widget_style
      # Bug in Windows.  When GetDCEx() is called with DCX_INTERSECTUPDATE,
      # the HDC that is returned does not include the current update region.
      # This was confirmed under DEBUG Windows when GetDCEx() complained about
      # invalid flags.  Therefore, it is not easily possible to get an HDC from
      # outside of WM_PAINT that includes the current damage and clips children.
      # Because the receiver has children and draws a frame and label, it is
      # necessary that the receiver always draw clipped, in the current damaged
      # area.  The fix is to force the receiver to be fully clipped by including
      # WS_CLIPCHILDREN and WS_CLIPSIBLINGS in the default style bits.
      return super | OS::BS_GROUPBOX | OS::WS_CLIPCHILDREN | OS::WS_CLIPSIBLINGS
    end
    
    typesig { [] }
    def window_class
      return GroupClass
    end
    
    typesig { [] }
    # long
    def window_proc
      return GroupProc
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_erasebkgnd(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Feature in Windows.  Group boxes do not erase
      # the background before drawing.  The fix is to
      # fill the background.
      draw_background(w_param)
      return LRESULT::ONE
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_nchittest(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Feature in Windows.  The window proc for the group box
      # returns HTTRANSPARENT indicating that mouse messages
      # should not be delivered to the receiver and any children.
      # Normally, group boxes in Windows do not have children and
      # this is the correct behavior for this case.  Because we
      # allow children, answer HTCLIENT to allow mouse messages
      # to be delivered to the children.
      # 
      # long
      code = call_window_proc(self.attr_handle, OS::WM_NCHITTEST, w_param, l_param)
      if ((code).equal?(OS::HTTRANSPARENT))
        code = OS::HTCLIENT
      end
      return LRESULT.new(code)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mousemove(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Feature in Windows.  In version 6.00 of COMCTL32.DLL,
      # every time the mouse moves, the group title redraws.
      # This only happens when WM_NCHITTEST returns HTCLIENT.
      # The fix is to avoid calling the group window proc.
      return LRESULT::ZERO
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_printclient(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Feature in Windows.  In version 6.00 of COMCTL32.DLL,
      # when WM_PRINTCLIENT is sent from a child BS_GROUP
      # control to a parent BS_GROUP, the parent BS_GROUP
      # clears the font from the HDC.  Normally, group boxes
      # in Windows do not have children so this behavior is
      # undefined.  When the parent of a BS_GROUP is not a
      # BS_GROUP, there is no problem.  The fix is to save
      # and restore the current font.
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        n_saved_dc = OS._save_dc(w_param)
        # long
        code = call_window_proc(self.attr_handle, OS::WM_PRINTCLIENT, w_param, l_param)
        OS._restore_dc(w_param, n_saved_dc)
        return LRESULT.new(code)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_updateuistate(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Feature in Windows.  When WM_UPDATEUISTATE is sent to
      # a group, it sends WM_CTLCOLORBTN to get the foreground
      # and background.  If drawing happens in WM_CTLCOLORBTN,
      # it will overwrite the contents of the control.  The
      # fix is draw the group without drawing the background
      # and avoid the group window proc.
      redraw = !(find_image_control).nil?
      if (!redraw)
        if (!((self.attr_state & THEME_BACKGROUND)).equal?(0))
          if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
            redraw = !(find_theme_control).nil?
          end
        end
        if (!redraw)
          redraw = !(find_background_control).nil?
        end
      end
      if (redraw)
        OS._invalidate_rect(self.attr_handle, nil, false)
        # long
        code = OS._def_window_proc(self.attr_handle, OS::WM_UPDATEUISTATE, w_param, l_param)
        return LRESULT.new(code)
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
      # Invalidate the portion of the group widget that needs to
      # be redrawn.  Note that for some reason, invalidating the
      # group from inside WM_SIZE causes pixel corruption for
      # radio button children.
      if (OS::IsWinCE)
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
      if (!(new_width).equal?(old_width))
        left = old_width
        if (new_width < old_width)
          left = new_width
        end
        OS._set_rect(rect, left - CLIENT_INSET, 0, new_width, new_height)
        OS._invalidate_rect(self.attr_handle, rect, true)
      end
      if (!(new_height).equal?(old_height))
        bottom = old_height
        if (new_height < old_height)
          bottom = new_height
        end
        if (new_width < old_width)
          old_width -= CLIENT_INSET
        end
        OS._set_rect(rect, 0, bottom - CLIENT_INSET, old_width, new_height)
        OS._invalidate_rect(self.attr_handle, rect, true)
      end
      return result
    end
    
    private
    alias_method :initialize__group, :initialize
  end
  
end
