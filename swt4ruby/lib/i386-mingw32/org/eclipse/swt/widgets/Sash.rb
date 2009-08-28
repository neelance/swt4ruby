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
  module SashImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # Instances of the receiver represent a selectable user interface object
  # that allows the user to drag a rubber banded outline of the sash within
  # the parent control.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>HORIZONTAL, VERTICAL, SMOOTH</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles HORIZONTAL and VERTICAL may be specified.
  # </p><p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#sash">Sash snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Sash < SashImports.const_get :Control
    include_class_members SashImports
    
    attr_accessor :dragging
    alias_method :attr_dragging, :dragging
    undef_method :dragging
    alias_method :attr_dragging=, :dragging=
    undef_method :dragging=
    
    attr_accessor :start_x
    alias_method :attr_start_x, :start_x
    undef_method :start_x
    alias_method :attr_start_x=, :start_x=
    undef_method :start_x=
    
    attr_accessor :start_y
    alias_method :attr_start_y, :start_y
    undef_method :start_y
    alias_method :attr_start_y=, :start_y=
    undef_method :start_y=
    
    attr_accessor :last_x
    alias_method :attr_last_x, :last_x
    undef_method :last_x
    alias_method :attr_last_x=, :last_x=
    undef_method :last_x=
    
    attr_accessor :last_y
    alias_method :attr_last_y, :last_y
    undef_method :last_y
    alias_method :attr_last_y=, :last_y=
    undef_method :last_y=
    
    class_module.module_eval {
      const_set_lazy(:INCREMENT) { 1 }
      const_attr_reader  :INCREMENT
      
      const_set_lazy(:PAGE_INCREMENT) { 9 }
      const_attr_reader  :PAGE_INCREMENT
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
    # @see SWT#HORIZONTAL
    # @see SWT#VERTICAL
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @dragging = false
      @start_x = 0
      @start_y = 0
      @last_x = 0
      @last_y = 0
      super(parent, check_style(style))
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the control is selected by the user, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # When <code>widgetSelected</code> is called, the x, y, width, and height fields of the event object are valid.
    # If the receiver is being dragged, the event object detail field contains the value <code>SWT.DRAG</code>.
    # <code>widgetDefaultSelected</code> is not called.
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
    
    typesig { [] }
    def create_handle
      super
      self.attr_state |= THEME_BACKGROUND
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        return check_bits(style, SWT::HORIZONTAL, SWT::VERTICAL, 0, 0, 0, 0)
      end
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      border = get_border_width
      width = border * 2
      height = border * 2
      if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
        width += DEFAULT_WIDTH
        height += 3
      else
        width += 3
        height += DEFAULT_HEIGHT
      end
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint + (border * 2)
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint + (border * 2)
      end
      return Point.new(width, height)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def draw_band(x, y, width, height)
      if (!((self.attr_style & SWT::SMOOTH)).equal?(0))
        return
      end
      # long
      hwnd_track = self.attr_parent.attr_handle
      bits = Array.typed(::Java::Byte).new([-86, 0, 85, 0, -86, 0, 85, 0, -86, 0, 85, 0, -86, 0, 85, 0])
      # long
      stipple_bitmap = OS._create_bitmap(8, 8, 1, 1, bits)
      # long
      stipple_brush = OS._create_pattern_brush(stipple_bitmap)
      # long
      h_dc = OS._get_dcex(hwnd_track, 0, OS::DCX_CACHE)
      # long
      old_brush = OS._select_object(h_dc, stipple_brush)
      OS._pat_blt(h_dc, x, y, width, height, OS::PATINVERT)
      OS._select_object(h_dc, old_brush)
      OS._release_dc(hwnd_track, h_dc)
      OS._delete_object(stipple_brush)
      OS._delete_object(stipple_bitmap)
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
    def _wm_erasebkgnd(w_param, l_param)
      super(w_param, l_param)
      draw_background(w_param)
      return LRESULT::ONE
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_keydown(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      catch(:break_case) do
        # 64
        case (RJava.cast_to_int(w_param))
        when OS::VK_LEFT, OS::VK_RIGHT, OS::VK_UP, OS::VK_DOWN
          # Calculate the new x or y position
          if (OS._get_key_state(OS::VK_LBUTTON) < 0)
            return result
          end
          step = OS._get_key_state(OS::VK_CONTROL) < 0 ? INCREMENT : PAGE_INCREMENT
          pt = POINT.new
          if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
            if ((w_param).equal?(OS::VK_UP) || (w_param).equal?(OS::VK_DOWN))
              throw :break_case, :thrown
            end
            pt.attr_x = (w_param).equal?(OS::VK_LEFT) ? -step : step
          else
            if ((w_param).equal?(OS::VK_LEFT) || (w_param).equal?(OS::VK_RIGHT))
              throw :break_case, :thrown
            end
            pt.attr_y = (w_param).equal?(OS::VK_UP) ? -step : step
          end
          # long
          hwnd_track = self.attr_parent.attr_handle
          OS._map_window_points(self.attr_handle, hwnd_track, pt, 1)
          rect = RECT.new
          client_rect = RECT.new
          OS._get_window_rect(self.attr_handle, rect)
          width = rect.attr_right - rect.attr_left
          height = rect.attr_bottom - rect.attr_top
          OS._get_client_rect(hwnd_track, client_rect)
          client_width = client_rect.attr_right - client_rect.attr_left
          client_height = client_rect.attr_bottom - client_rect.attr_top
          new_x = @last_x
          new_y = @last_y
          if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
            new_x = Math.min(Math.max(0, pt.attr_x - @start_x), client_width - width)
          else
            new_y = Math.min(Math.max(0, pt.attr_y - @start_y), client_height - height)
          end
          if ((new_x).equal?(@last_x) && (new_y).equal?(@last_y))
            return result
          end
          # Update the pointer position
          cursor_pt = POINT.new
          cursor_pt.attr_x = pt.attr_x
          cursor_pt.attr_y = pt.attr_y
          OS._client_to_screen(hwnd_track, cursor_pt)
          if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
            cursor_pt.attr_y += height / 2
          else
            cursor_pt.attr_x += width / 2
          end
          OS._set_cursor_pos(cursor_pt.attr_x, cursor_pt.attr_y)
          event = Event.new
          event.attr_x = new_x
          event.attr_y = new_y
          event.attr_width = width
          event.attr_height = height
          send_event(SWT::Selection, event)
          if (is_disposed)
            return LRESULT::ZERO
          end
          if (event.attr_doit)
            if (!((self.attr_style & SWT::SMOOTH)).equal?(0))
              set_bounds(event.attr_x, event.attr_y, width, height)
            end
          end
          return result
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_getdlgcode(w_param, l_param)
      return LRESULT.new(OS::DLGC_STATIC)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttondown(w_param, l_param)
      result = super(w_param, l_param)
      if ((result).equal?(LRESULT::ZERO))
        return result
      end
      # Compute the banding rectangle
      # long
      hwnd_track = self.attr_parent.attr_handle
      pt = POINT.new
      OS._pointstopoint(pt, l_param)
      rect = RECT.new
      OS._get_window_rect(self.attr_handle, rect)
      OS._map_window_points(self.attr_handle, 0, pt, 1)
      @start_x = pt.attr_x - rect.attr_left
      @start_y = pt.attr_y - rect.attr_top
      OS._map_window_points(0, hwnd_track, rect, 2)
      @last_x = rect.attr_left
      @last_y = rect.attr_top
      width = rect.attr_right - rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      # The event must be sent because doit flag is used
      event = Event.new
      event.attr_x = @last_x
      event.attr_y = @last_y
      event.attr_width = width
      event.attr_height = height
      if (((self.attr_style & SWT::SMOOTH)).equal?(0))
        event.attr_detail = SWT::DRAG
      end
      send_event(SWT::Selection, event)
      if (is_disposed)
        return LRESULT::ZERO
      end
      # Draw the banding rectangle
      if (event.attr_doit)
        @dragging = true
        @last_x = event.attr_x
        @last_y = event.attr_y
        menu_shell.bring_to_top
        if (is_disposed)
          return LRESULT::ZERO
        end
        if (OS::IsWinCE)
          OS._update_window(hwnd_track)
        else
          flags = OS::RDW_UPDATENOW | OS::RDW_ALLCHILDREN
          OS._redraw_window(hwnd_track, nil, 0, flags)
        end
        draw_band(event.attr_x, event.attr_y, width, height)
        if (!((self.attr_style & SWT::SMOOTH)).equal?(0))
          set_bounds(event.attr_x, event.attr_y, width, height)
          # widget could be disposed at this point
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttonup(w_param, l_param)
      result = super(w_param, l_param)
      if ((result).equal?(LRESULT::ZERO))
        return result
      end
      # Compute the banding rectangle
      if (!@dragging)
        return result
      end
      @dragging = false
      rect = RECT.new
      OS._get_window_rect(self.attr_handle, rect)
      width = rect.attr_right - rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      # The event must be sent because doit flag is used
      event = Event.new
      event.attr_x = @last_x
      event.attr_y = @last_y
      event.attr_width = width
      event.attr_height = height
      draw_band(event.attr_x, event.attr_y, width, height)
      send_event(SWT::Selection, event)
      if (is_disposed)
        return result
      end
      if (event.attr_doit)
        if (!((self.attr_style & SWT::SMOOTH)).equal?(0))
          set_bounds(event.attr_x, event.attr_y, width, height)
          # widget could be disposed at this point
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_mousemove(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (!@dragging || ((w_param & OS::MK_LBUTTON)).equal?(0))
        return result
      end
      # Compute the banding rectangle
      pt = POINT.new
      OS._pointstopoint(pt, l_param)
      # long
      hwnd_track = self.attr_parent.attr_handle
      OS._map_window_points(self.attr_handle, hwnd_track, pt, 1)
      rect = RECT.new
      client_rect = RECT.new
      OS._get_window_rect(self.attr_handle, rect)
      width = rect.attr_right - rect.attr_left
      height = rect.attr_bottom - rect.attr_top
      OS._get_client_rect(hwnd_track, client_rect)
      new_x = @last_x
      new_y = @last_y
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        client_width = client_rect.attr_right - client_rect.attr_left
        new_x = Math.min(Math.max(0, pt.attr_x - @start_x), client_width - width)
      else
        client_height = client_rect.attr_bottom - client_rect.attr_top
        new_y = Math.min(Math.max(0, pt.attr_y - @start_y), client_height - height)
      end
      if ((new_x).equal?(@last_x) && (new_y).equal?(@last_y))
        return result
      end
      draw_band(@last_x, @last_y, width, height)
      # The event must be sent because doit flag is used
      event = Event.new
      event.attr_x = new_x
      event.attr_y = new_y
      event.attr_width = width
      event.attr_height = height
      if (((self.attr_style & SWT::SMOOTH)).equal?(0))
        event.attr_detail = SWT::DRAG
      end
      send_event(SWT::Selection, event)
      if (is_disposed)
        return LRESULT::ZERO
      end
      if (event.attr_doit)
        @last_x = event.attr_x
        @last_y = event.attr_y
      end
      if (OS::IsWinCE)
        OS._update_window(hwnd_track)
      else
        flags = OS::RDW_UPDATENOW | OS::RDW_ALLCHILDREN
        OS._redraw_window(hwnd_track, nil, 0, flags)
      end
      draw_band(@last_x, @last_y, width, height)
      if (!((self.attr_style & SWT::SMOOTH)).equal?(0))
        set_bounds(@last_x, @last_y, width, height)
        # widget could be disposed at this point
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setcursor(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      hit_test = RJava.cast_to_short(OS._loword(l_param))
      if ((hit_test).equal?(OS::HTCLIENT))
        # long
        h_cursor = 0
        if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
          h_cursor = OS._load_cursor(0, OS::IDC_SIZENS)
        else
          h_cursor = OS._load_cursor(0, OS::IDC_SIZEWE)
        end
        OS._set_cursor(h_cursor)
        return LRESULT::ONE
      end
      return result
    end
    
    private
    alias_method :initialize__sash, :initialize
  end
  
end
