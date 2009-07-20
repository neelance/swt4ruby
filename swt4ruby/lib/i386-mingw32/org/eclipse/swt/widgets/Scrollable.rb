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
  module ScrollableImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # This class is the abstract superclass of all classes which
  # represent controls that have standard scroll bars.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>H_SCROLL, V_SCROLL</dd>
  # <dt><b>Events:</b>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Scrollable < ScrollableImports.const_get :Control
    include_class_members ScrollableImports
    
    attr_accessor :horizontal_bar
    alias_method :attr_horizontal_bar, :horizontal_bar
    undef_method :horizontal_bar
    alias_method :attr_horizontal_bar=, :horizontal_bar=
    undef_method :horizontal_bar=
    
    attr_accessor :vertical_bar
    alias_method :attr_vertical_bar, :vertical_bar
    undef_method :vertical_bar
    alias_method :attr_vertical_bar=, :vertical_bar=
    undef_method :vertical_bar=
    
    typesig { [] }
    # Prevents uninitialized instances from being created outside the package.
    def initialize
      @horizontal_bar = nil
      @vertical_bar = nil
      super()
    end
    
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
    # @see SWT#H_SCROLL
    # @see SWT#V_SCROLL
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @horizontal_bar = nil
      @vertical_bar = nil
      super(parent, style)
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
      return OS._def_window_proc(hwnd, msg, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Given a desired <em>client area</em> for the receiver
    # (as described by the arguments), returns the bounding
    # rectangle which would be required to produce that client
    # area.
    # <p>
    # In other words, it returns a rectangle such that, if the
    # receiver's bounds were set to that rectangle, the area
    # of the receiver which is capable of displaying data
    # (that is, not covered by the "trimmings") would be the
    # rectangle described by the arguments (relative to the
    # receiver's parent).
    # </p>
    # 
    # @param x the desired x coordinate of the client area
    # @param y the desired y coordinate of the client area
    # @param width the desired width of the client area
    # @param height the desired height of the client area
    # @return the required bounds to produce the given client area
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getClientArea
    def compute_trim(x, y, width, height)
      check_widget
      # long
      scrolled_handle_ = scrolled_handle
      rect = RECT.new
      OS._set_rect(rect, x, y, x + width, y + height)
      bits1 = OS._get_window_long(scrolled_handle_, OS::GWL_STYLE)
      bits2 = OS._get_window_long(scrolled_handle_, OS::GWL_EXSTYLE)
      OS._adjust_window_rect_ex(rect, bits1, false, bits2)
      if (!(@horizontal_bar).nil?)
        rect.attr_bottom += OS._get_system_metrics(OS::SM_CYHSCROLL)
      end
      if (!(@vertical_bar).nil?)
        rect.attr_right += OS._get_system_metrics(OS::SM_CXVSCROLL)
      end
      n_width = rect.attr_right - rect.attr_left
      n_height = rect.attr_bottom - rect.attr_top
      return Rectangle.new(rect.attr_left, rect.attr_top, n_width, n_height)
    end
    
    typesig { [::Java::Int] }
    def create_scroll_bar(type)
      bar = ScrollBar.new(self, type)
      if (!((self.attr_state & CANVAS)).equal?(0))
        bar.set_maximum(100)
        bar.set_thumb(10)
      end
      return bar
    end
    
    typesig { [] }
    def create_widget
      super
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        @horizontal_bar = create_scroll_bar(SWT::H_SCROLL)
      end
      if (!((self.attr_style & SWT::V_SCROLL)).equal?(0))
        @vertical_bar = create_scroll_bar(SWT::V_SCROLL)
      end
    end
    
    typesig { [::Java::Int] }
    def destroy_scroll_bar(type)
      # long
      hwnd = scrolled_handle
      bits = OS._get_window_long(hwnd, OS::GWL_STYLE)
      if (!((type & SWT::HORIZONTAL)).equal?(0))
        self.attr_style &= ~SWT::H_SCROLL
        bits &= ~OS::WS_HSCROLL
      end
      if (!((type & SWT::VERTICAL)).equal?(0))
        self.attr_style &= ~SWT::V_SCROLL
        bits &= ~OS::WS_VSCROLL
      end
      OS._set_window_long(hwnd, OS::GWL_STYLE, bits)
    end
    
    typesig { [] }
    # Returns a rectangle which describes the area of the
    # receiver which is capable of displaying data (that is,
    # not covered by the "trimmings").
    # 
    # @return the client area
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #computeTrim
    def get_client_area
      check_widget
      force_resize
      rect = RECT.new
      # long
      scrolled_handle_ = scrolled_handle
      OS._get_client_rect(scrolled_handle_, rect)
      x = rect.attr_left
      y = rect.attr_top
      width = rect.attr_right - rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      if (!(scrolled_handle_).equal?(self.attr_handle))
        OS._get_client_rect(self.attr_handle, rect)
        OS._map_window_points(self.attr_handle, scrolled_handle_, rect, 2)
        x = -rect.attr_left
        y = -rect.attr_top
      end
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [] }
    # Returns the receiver's horizontal scroll bar if it has
    # one, and null if it does not.
    # 
    # @return the horizontal scroll bar (or null)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_horizontal_bar
      check_widget
      return @horizontal_bar
    end
    
    typesig { [] }
    # Returns the receiver's vertical scroll bar if it has
    # one, and null if it does not.
    # 
    # @return the vertical scroll bar (or null)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_vertical_bar
      check_widget
      return @vertical_bar
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      if (!(@horizontal_bar).nil?)
        @horizontal_bar.release(false)
        @horizontal_bar = nil
      end
      if (!(@vertical_bar).nil?)
        @vertical_bar.release(false)
        @vertical_bar = nil
      end
      super(destroy)
    end
    
    typesig { [] }
    # long
    def scrolled_handle
      return self.attr_handle
    end
    
    typesig { [] }
    def widget_ext_style
      return super
      # This code is intentionally commented.  In future,
      # we may wish to support different standard Windows
      # edge styles.  The issue here is that not all of
      # these styles are available on the other platforms
      # this would need to be a hint.
      # 
      # if ((style & SWT.BORDER) != 0) return OS.WS_EX_CLIENTEDGE;
      # if ((style & SWT.SHADOW_IN) != 0) return OS.WS_EX_STATICEDGE;
      # return super.widgetExtStyle ();
    end
    
    typesig { [] }
    def widget_style
      bits = super | OS::WS_TABSTOP
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        bits |= OS::WS_HSCROLL
      end
      if (!((self.attr_style & SWT::V_SCROLL)).equal?(0))
        bits |= OS::WS_VSCROLL
      end
      return bits
    end
    
    typesig { [] }
    def window_class
      return self.attr_display.attr_window_class
    end
    
    typesig { [] }
    # long
    def window_proc
      return self.attr_display.attr_window_proc
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_hscroll(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Bug on WinCE.  lParam should be NULL when the message is not sent
      # by a scroll bar control, but it contains the handle to the window.
      # When the message is sent by a scroll bar control, it correctly
      # contains the handle to the scroll bar.  The fix is to check for
      # both.
      if (!(@horizontal_bar).nil? && ((l_param).equal?(0) || (l_param).equal?(self.attr_handle)))
        return wm_scroll(@horizontal_bar, !((self.attr_state & CANVAS)).equal?(0), self.attr_handle, OS::WM_HSCROLL, w_param, l_param)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mousewheel(w_param, l_param)
      scroll_remainder = self.attr_display.attr_scroll_remainder
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Translate WM_MOUSEWHEEL to WM_VSCROLL or WM_HSCROLL.
      if (!((self.attr_state & CANVAS)).equal?(0))
        if (!((w_param & (OS::MK_SHIFT | OS::MK_CONTROL))).equal?(0))
          return result
        end
        vertical = !(@vertical_bar).nil? && @vertical_bar.get_enabled
        horizontal = !(@horizontal_bar).nil? && @horizontal_bar.get_enabled
        msg = vertical ? OS::WM_VSCROLL : horizontal ? OS::WM_HSCROLL : 0
        if ((msg).equal?(0))
          return result
        end
        lines_to_scroll = Array.typed(::Java::Int).new(1) { 0 }
        OS._system_parameters_info(OS::SPI_GETWHEELSCROLLLINES, 0, lines_to_scroll, 0)
        delta = OS._get_wheel_delta_wparam(w_param)
        page_scroll = (lines_to_scroll[0]).equal?(OS::WHEEL_PAGESCROLL)
        if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
          bar = vertical ? @vertical_bar : @horizontal_bar
          info = SCROLLINFO.new
          info.attr_cb_size = SCROLLINFO.attr_sizeof
          info.attr_f_mask = OS::SIF_POS
          OS._get_scroll_info(self.attr_handle, bar.scroll_bar_type, info)
          if (vertical && !page_scroll)
            delta *= lines_to_scroll[0]
          end
          increment = page_scroll ? bar.get_page_increment : bar.get_increment
          info.attr_n_pos -= increment * delta / OS::WHEEL_DELTA
          OS._set_scroll_info(self.attr_handle, bar.scroll_bar_type, info, true)
          OS._send_message(self.attr_handle, msg, OS::SB_THUMBPOSITION, 0)
        else
          code = 0
          if (page_scroll)
            code = delta < 0 ? OS::SB_PAGEDOWN : OS::SB_PAGEUP
          else
            code = delta < 0 ? OS::SB_LINEDOWN : OS::SB_LINEUP
            if ((msg).equal?(OS::WM_VSCROLL))
              delta *= lines_to_scroll[0]
            end
          end
          # Check if the delta and the remainder have the same direction (sign)
          if ((delta ^ scroll_remainder) >= 0)
            delta += scroll_remainder
          end
          count = Math.abs(delta) / OS::WHEEL_DELTA
          i = 0
          while i < count
            OS._send_message(self.attr_handle, msg, code, 0)
            ((i += 1) - 1)
          end
        end
        return LRESULT::ZERO
      end
      # When the native widget scrolls inside WM_MOUSEWHEEL, it
      # may or may not send a WM_VSCROLL or WM_HSCROLL to do the
      # actual scrolling.  This depends on the implementation of
      # each native widget.  In order to ensure that application
      # code is notified when the scroll bar moves, compare the
      # scroll bar position before and after the WM_MOUSEWHEEL.
      # If the native control sends a WM_VSCROLL or WM_HSCROLL,
      # then the application has already been notified.  If not
      # explicitly send the event.
      v_position = (@vertical_bar).nil? ? 0 : @vertical_bar.get_selection
      h_position = (@horizontal_bar).nil? ? 0 : @horizontal_bar.get_selection
      # long
      code = call_window_proc(self.attr_handle, OS::WM_MOUSEWHEEL, w_param, l_param)
      if (!(@vertical_bar).nil?)
        position = @vertical_bar.get_selection
        if (!(position).equal?(v_position))
          event = Event.new
          event.attr_detail = position < v_position ? SWT::PAGE_UP : SWT::PAGE_DOWN
          @vertical_bar.send_event(SWT::Selection, event)
        end
      end
      if (!(@horizontal_bar).nil?)
        position = @horizontal_bar.get_selection
        if (!(position).equal?(h_position))
          event = Event.new
          event.attr_detail = position < h_position ? SWT::PAGE_UP : SWT::PAGE_DOWN
          @horizontal_bar.send_event(SWT::Selection, event)
        end
      end
      return LRESULT.new(code)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_size(w_param, l_param)
      # long
      code = call_window_proc(self.attr_handle, OS::WM_SIZE, w_param, l_param)
      super(w_param, l_param)
      # widget may be disposed at this point
      if ((code).equal?(0))
        return LRESULT::ZERO
      end
      return LRESULT.new(code)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_vscroll(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Bug on WinCE.  lParam should be NULL when the message is not sent
      # by a scroll bar control, but it contains the handle to the window.
      # When the message is sent by a scroll bar control, it correctly
      # contains the handle to the scroll bar.  The fix is to check for
      # both.
      if (!(@vertical_bar).nil? && ((l_param).equal?(0) || (l_param).equal?(self.attr_handle)))
        return wm_scroll(@vertical_bar, !((self.attr_state & CANVAS)).equal?(0), self.attr_handle, OS::WM_VSCROLL, w_param, l_param)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_ncpaint(hwnd, w_param, l_param)
      result = super(hwnd, w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Bug in Windows.  On XP only (not Vista), Windows sometimes
      # does not redraw the bottom right corner of a window that
      # has scroll bars, causing pixel corruption.  The fix is to
      # always draw the corner.
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        if (!OS::IsWinCE && OS::WIN32_VERSION < OS._version(6, 0))
          bits1 = OS._get_window_long(hwnd, OS::GWL_STYLE)
          if (!((bits1 & (OS::WS_HSCROLL | OS::WS_VSCROLL))).equal?(0))
            window_rect = RECT.new
            OS._get_window_rect(hwnd, window_rect)
            trim_rect = RECT.new
            bits2 = OS._get_window_long(hwnd, OS::GWL_EXSTYLE)
            OS._adjust_window_rect_ex(trim_rect, bits1, false, bits2)
            h_visible = false
            v_visible = false
            psbi = SCROLLBARINFO.new
            psbi.attr_cb_size = SCROLLBARINFO.attr_sizeof
            if (OS._get_scroll_bar_info(hwnd, OS::OBJID_HSCROLL, psbi))
              h_visible = ((psbi.attr_rgstate[0] & OS::STATE_SYSTEM_INVISIBLE)).equal?(0)
            end
            if (OS._get_scroll_bar_info(hwnd, OS::OBJID_VSCROLL, psbi))
              v_visible = ((psbi.attr_rgstate[0] & OS::STATE_SYSTEM_INVISIBLE)).equal?(0)
            end
            corner_rect = RECT.new
            corner_rect.attr_right = window_rect.attr_right - window_rect.attr_left - trim_rect.attr_right
            corner_rect.attr_bottom = window_rect.attr_bottom - window_rect.attr_top - trim_rect.attr_bottom
            corner_rect.attr_left = corner_rect.attr_right - (h_visible ? OS._get_system_metrics(OS::SM_CXVSCROLL) : 0)
            corner_rect.attr_top = corner_rect.attr_bottom - (v_visible ? OS._get_system_metrics(OS::SM_CYHSCROLL) : 0)
            if (!(corner_rect.attr_left).equal?(corner_rect.attr_right) && !(corner_rect.attr_top).equal?(corner_rect.attr_bottom))
              # long
              h_dc = OS._get_window_dc(hwnd)
              OS._fill_rect(h_dc, corner_rect, OS::COLOR_BTNFACE + 1)
              shell = menu_shell
              if (!((shell.attr_style & SWT::RESIZE)).equal?(0))
                # long
                hwnd_scroll = shell.scrolled_handle
                draw_gripper = (hwnd).equal?(hwnd_scroll)
                if (!draw_gripper)
                  shell_rect = RECT.new
                  OS._get_client_rect(hwnd_scroll, shell_rect)
                  OS._map_window_points(hwnd_scroll, 0, shell_rect, 2)
                  draw_gripper = (shell_rect.attr_right).equal?(window_rect.attr_right) && (shell_rect.attr_bottom).equal?(window_rect.attr_bottom)
                end
                if (draw_gripper)
                  OS._draw_theme_background(self.attr_display.h_scroll_bar_theme, h_dc, OS::SBP_SIZEBOX, 0, corner_rect, nil)
                end
              end
              OS._release_dc(hwnd, h_dc)
            end
          end
        end
      end
      return result
    end
    
    typesig { [ScrollBar, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_scroll(bar, update, hwnd, msg, w_param, l_param)
      result = nil
      if (update)
        type = (msg).equal?(OS::WM_HSCROLL) ? OS::SB_HORZ : OS::SB_VERT
        info = SCROLLINFO.new
        info.attr_cb_size = SCROLLINFO.attr_sizeof
        info.attr_f_mask = OS::SIF_TRACKPOS | OS::SIF_POS | OS::SIF_RANGE
        OS._get_scroll_info(hwnd, type, info)
        info.attr_f_mask = OS::SIF_POS
        code = OS._loword(w_param)
        case (code)
        when OS::SB_ENDSCROLL
          return nil
        when OS::SB_THUMBPOSITION, OS::SB_THUMBTRACK
          # Note: On WinCE, the value in SB_THUMBPOSITION is relative to nMin.
          # Same for SB_THUMBPOSITION 'except' for the very first thumb track
          # message which has the actual value of nMin. This is a problem when
          # nMin is not zero.
          info.attr_n_pos = info.attr_n_track_pos
        when OS::SB_TOP
          info.attr_n_pos = info.attr_n_min
        when OS::SB_BOTTOM
          info.attr_n_pos = info.attr_n_max
        when OS::SB_LINEDOWN
          info.attr_n_pos += bar.get_increment
        when OS::SB_LINEUP
          increment = bar.get_increment
          info.attr_n_pos = Math.max(info.attr_n_min, info.attr_n_pos - increment)
        when OS::SB_PAGEDOWN
          info.attr_n_pos += bar.get_page_increment
        when OS::SB_PAGEUP
          page_increment = bar.get_page_increment
          info.attr_n_pos = Math.max(info.attr_n_min, info.attr_n_pos - page_increment)
        end
        OS._set_scroll_info(hwnd, type, info, true)
      else
        # long
        code = call_window_proc(hwnd, msg, w_param, l_param)
        result = (code).equal?(0) ? LRESULT::ZERO : LRESULT.new(code)
      end
      bar.wm_scroll_child(w_param, l_param)
      return result
    end
    
    private
    alias_method :initialize__scrollable, :initialize
  end
  
end
