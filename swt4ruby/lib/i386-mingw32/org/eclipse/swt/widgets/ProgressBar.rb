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
  module ProgressBarImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of the receiver represent an unselectable
  # user interface object that is used to display progress,
  # typically in the form of a bar.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>SMOOTH, HORIZONTAL, VERTICAL, INDETERMINATE</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles HORIZONTAL and VERTICAL may be specified.
  # </p><p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#progressbar">ProgressBar snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class ProgressBar < ProgressBarImports.const_get :Control
    include_class_members ProgressBarImports
    
    class_module.module_eval {
      const_set_lazy(:DELAY) { 100 }
      const_attr_reader  :DELAY
      
      const_set_lazy(:TIMER_ID) { 100 }
      const_attr_reader  :TIMER_ID
      
      const_set_lazy(:MINIMUM_WIDTH) { 100 }
      const_attr_reader  :MINIMUM_WIDTH
      
      const_set_lazy(:ProgressBarClass) { TCHAR.new(0, OS::PROGRESS_CLASS, true) }
      const_attr_reader  :ProgressBarClass
      
      when_class_loaded do
        lp_wnd_class = WNDCLASS.new
        OS._get_class_info(0, ProgressBarClass, lp_wnd_class)
        const_set :ProgressBarProc, lp_wnd_class.attr_lpfn_wnd_proc
        # Feature in Windows.  The progress bar window class
        # does not include CS_DBLCLKS.  This means that these
        # controls will not get double click messages such as
        # WM_LBUTTONDBLCLK.  The fix is to register a new
        # window class with CS_DBLCLKS.
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
        lp_wnd_class.attr_style &= ~OS::CS_GLOBALCLASS
        lp_wnd_class.attr_style |= OS::CS_DBLCLKS
        byte_count = ProgressBarClass.length * TCHAR.attr_sizeof
        # long
        lpsz_class_name = OS._heap_alloc(h_heap, OS::HEAP_ZERO_MEMORY, byte_count)
        OS._move_memory(lpsz_class_name, ProgressBarClass, byte_count)
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
    # @see SWT#SMOOTH
    # @see SWT#HORIZONTAL
    # @see SWT#VERTICAL
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
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
      return OS._call_window_proc(ProgressBarProc, hwnd, msg, w_param, l_param)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        style |= SWT::NO_FOCUS
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
        width += OS._get_system_metrics(OS::SM_CXHSCROLL) * 10
        height += OS._get_system_metrics(OS::SM_CYHSCROLL)
      else
        width += OS._get_system_metrics(OS::SM_CXVSCROLL)
        height += OS._get_system_metrics(OS::SM_CYVSCROLL) * 10
      end
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint + (border * 2)
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint + (border * 2)
      end
      return Point.new(width, height)
    end
    
    typesig { [] }
    def create_handle
      super
      start_timer
    end
    
    typesig { [] }
    def default_foreground
      return OS._get_sys_color(OS::COLOR_HIGHLIGHT)
    end
    
    typesig { [] }
    # Returns the maximum value which the receiver will allow.
    # 
    # @return the maximum
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_maximum
      check_widget
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::PBM_GETRANGE, 0, 0))
    end
    
    typesig { [] }
    # Returns the minimum value which the receiver will allow.
    # 
    # @return the minimum
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_minimum
      check_widget
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::PBM_GETRANGE, 1, 0))
    end
    
    typesig { [] }
    # Returns the single 'selection' that is the receiver's position.
    # 
    # @return the selection
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection
      check_widget
      # 64
      return RJava.cast_to_int(OS._send_message(self.attr_handle, OS::PBM_GETPOS, 0, 0))
    end
    
    typesig { [] }
    # Returns the state of the receiver. The value will be one of:
    # <ul>
    # <li>{@link SWT#NORMAL}</li>
    # <li>{@link SWT#ERROR}</li>
    # <li>{@link SWT#PAUSED}</li>
    # </ul>
    # 
    # @return the state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def get_state
      check_widget
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
        # 64
        state = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::PBM_GETSTATE, 0, 0))
        case (state)
        when OS::PBST_NORMAL
          return SWT::NORMAL
        when OS::PBST_ERROR
          return SWT::ERROR
        when OS::PBST_PAUSED
          return SWT::PAUSED
        end
      end
      return SWT::NORMAL
    end
    
    typesig { [] }
    def release_widget
      super
      stop_timer
    end
    
    typesig { [] }
    def start_timer
      if (!((self.attr_style & SWT::INDETERMINATE)).equal?(0))
        bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        if (OS::COMCTL32_MAJOR < 6 || ((bits & OS::PBS_MARQUEE)).equal?(0))
          OS._set_timer(self.attr_handle, TIMER_ID, DELAY, 0)
        else
          OS._send_message(self.attr_handle, OS::PBM_SETMARQUEE, 1, DELAY)
        end
      end
    end
    
    typesig { [] }
    def stop_timer
      if (!((self.attr_style & SWT::INDETERMINATE)).equal?(0))
        bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        if (OS::COMCTL32_MAJOR < 6 || ((bits & OS::PBS_MARQUEE)).equal?(0))
          OS._kill_timer(self.attr_handle, TIMER_ID)
        else
          OS._send_message(self.attr_handle, OS::PBM_SETMARQUEE, 0, 0)
        end
      end
    end
    
    typesig { [::Java::Int] }
    def set_background_pixel(pixel)
      if ((pixel).equal?(-1))
        pixel = OS::CLR_DEFAULT
      end
      OS._send_message(self.attr_handle, OS::PBM_SETBKCOLOR, 0, pixel)
    end
    
    typesig { [::Java::Int] }
    def set_foreground_pixel(pixel)
      if ((pixel).equal?(-1))
        pixel = OS::CLR_DEFAULT
      end
      OS._send_message(self.attr_handle, OS::PBM_SETBARCOLOR, 0, pixel)
    end
    
    typesig { [::Java::Int] }
    # Sets the maximum value that the receiver will allow.  This new
    # value will be ignored if it is not greater than the receiver's current
    # minimum value.  If the new maximum is applied then the receiver's
    # selection value will be adjusted if necessary to fall within its new range.
    # 
    # @param value the new maximum, which must be greater than the current minimum
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_maximum(value)
      check_widget
      # 64
      minimum = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::PBM_GETRANGE, 1, 0))
      if (0 <= minimum && minimum < value)
        OS._send_message(self.attr_handle, OS::PBM_SETRANGE32, minimum, value)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the minimum value that the receiver will allow.  This new
    # value will be ignored if it is negative or is not less than the receiver's
    # current maximum value.  If the new minimum is applied then the receiver's
    # selection value will be adjusted if necessary to fall within its new range.
    # 
    # @param value the new minimum, which must be nonnegative and less than the current maximum
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_minimum(value)
      check_widget
      # 64
      maximum = RJava.cast_to_int(OS._send_message(self.attr_handle, OS::PBM_GETRANGE, 0, 0))
      if (0 <= value && value < maximum)
        OS._send_message(self.attr_handle, OS::PBM_SETRANGE32, value, maximum)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the single 'selection' that is the receiver's
    # position to the argument which must be greater than or equal
    # to zero.
    # 
    # @param value the new selection (must be zero or greater)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(value)
      check_widget
      # Feature in Vista.  When the progress bar is not in
      # a normal state, PBM_SETPOS does not set the position.
      # This is undocumented.  The fix is to temporarily
      # set the state to PBST_NORMAL, set the position, then
      # reset the state.
      # 
      # long
      state = 0
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
        state = OS._send_message(self.attr_handle, OS::PBM_GETSTATE, 0, 0)
        OS._send_message(self.attr_handle, OS::PBM_SETSTATE, OS::PBST_NORMAL, 0)
      end
      OS._send_message(self.attr_handle, OS::PBM_SETPOS, value, 0)
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
        OS._send_message(self.attr_handle, OS::PBM_SETSTATE, state, 0)
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the state of the receiver. The state must be one of these values:
    # <ul>
    # <li>{@link SWT#NORMAL}</li>
    # <li>{@link SWT#ERROR}</li>
    # <li>{@link SWT#PAUSED}</li>
    # </ul>
    # 
    # @param state the new state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def set_state(state)
      check_widget
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
        case (state)
        when SWT::NORMAL
          OS._send_message(self.attr_handle, OS::PBM_SETSTATE, OS::PBST_NORMAL, 0)
        when SWT::ERROR
          OS._send_message(self.attr_handle, OS::PBM_SETSTATE, OS::PBST_ERROR, 0)
        when SWT::PAUSED
          OS._send_message(self.attr_handle, OS::PBM_SETSTATE, OS::PBST_PAUSED, 0)
        end
      end
    end
    
    typesig { [] }
    def widget_style
      bits = super
      if (!((self.attr_style & SWT::SMOOTH)).equal?(0))
        bits |= OS::PBS_SMOOTH
      end
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        bits |= OS::PBS_VERTICAL
      end
      if (!((self.attr_style & SWT::INDETERMINATE)).equal?(0))
        bits |= OS::PBS_MARQUEE
      end
      return bits
    end
    
    typesig { [] }
    def window_class
      return ProgressBarClass
    end
    
    typesig { [] }
    # long
    def window_proc
      return ProgressBarProc
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_getdlgcode(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Feature in Windows.  The progress bar does
      # not implement WM_GETDLGCODE.  As a result,
      # a progress bar takes focus and takes part
      # in tab traversal.  This behavior, while
      # unspecified, is unwanted.  The fix is to
      # implement WM_GETDLGCODE to behave like a
      # STATIC control.
      return LRESULT.new(OS::DLGC_STATIC)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_size(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Feature in Windows.  When a progress bar with the style
      # PBS_MARQUEE becomes too small, the animation (currently
      # a small bar moving from right to left) does not have
      # enough space to draw.  The result is that the progress
      # bar does not appear to be moving.  The fix is to detect
      # this case, clear the PBS_MARQUEE style and emulate the
      # animation using PBM_STEPIT.
      # 
      # NOTE:  This only happens on Window XP.
      if (!((self.attr_style & SWT::INDETERMINATE)).equal?(0))
        if (OS::COMCTL32_MAJOR >= 6)
          force_resize
          rect = RECT.new
          OS._get_client_rect(self.attr_handle, rect)
          old_bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
          new_bits = old_bits
          if (rect.attr_right - rect.attr_left < MINIMUM_WIDTH)
            new_bits &= ~OS::PBS_MARQUEE
          else
            new_bits |= OS::PBS_MARQUEE
          end
          if (!(new_bits).equal?(old_bits))
            stop_timer
            OS._set_window_long(self.attr_handle, OS::GWL_STYLE, new_bits)
            start_timer
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_timer(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (!((self.attr_style & SWT::INDETERMINATE)).equal?(0))
        bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        if (OS::COMCTL32_MAJOR < 6 || ((bits & OS::PBS_MARQUEE)).equal?(0))
          if ((w_param).equal?(TIMER_ID))
            OS._send_message(self.attr_handle, OS::PBM_STEPIT, 0, 0)
          end
        end
      end
      return result
    end
    
    private
    alias_method :initialize__progress_bar, :initialize
  end
  
end
