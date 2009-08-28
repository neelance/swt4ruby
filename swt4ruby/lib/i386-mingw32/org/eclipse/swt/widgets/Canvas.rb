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
  module CanvasImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class provide a surface for drawing
  # arbitrary graphics.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>(none)</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # This class may be subclassed by custom control implementors
  # who are building controls that are <em>not</em> constructed
  # from aggregates of other controls. That is, they are either
  # painted using SWT graphics calls or are handled by native
  # methods.
  # </p>
  # 
  # @see Composite
  # @see <a href="http://www.eclipse.org/swt/snippets/#canvas">Canvas snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Canvas < CanvasImports.const_get :Composite
    include_class_members CanvasImports
    
    attr_accessor :caret
    alias_method :attr_caret, :caret
    undef_method :caret
    alias_method :attr_caret=, :caret=
    undef_method :caret=
    
    attr_accessor :ime
    alias_method :attr_ime, :ime
    undef_method :ime
    alias_method :attr_ime=, :ime=
    undef_method :ime=
    
    typesig { [] }
    # Prevents uninitialized instances from being created outside the package.
    def initialize
      @caret = nil
      @ime = nil
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
    # </ul>
    # 
    # @see SWT
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @caret = nil
      @ime = nil
      super(parent, style)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def clear_area(x, y, width, height)
      check_widget
      if (OS._is_window_visible(self.attr_handle))
        rect = RECT.new
        OS._set_rect(rect, x, y, x + width, y + height)
        # long
        h_dc = OS._get_dcex(self.attr_handle, 0, OS::DCX_CACHE | OS::DCX_CLIPCHILDREN | OS::DCX_CLIPSIBLINGS)
        draw_background(h_dc, rect)
        OS._release_dc(self.attr_handle, h_dc)
      end
    end
    
    typesig { [SwtGC, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Fills the interior of the rectangle specified by the arguments,
    # with the receiver's background.
    # 
    # @param gc the gc where the rectangle is to be filled
    # @param x the x coordinate of the rectangle to be filled
    # @param y the y coordinate of the rectangle to be filled
    # @param width the width of the rectangle to be filled
    # @param height the height of the rectangle to be filled
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the gc is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the gc has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def draw_background(gc, x, y, width, height)
      check_widget
      if ((gc).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (gc.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      rect = RECT.new
      OS._set_rect(rect, x, y, x + width, y + height)
      # long
      h_dc = gc.attr_handle
      pixel = (self.attr_background).equal?(-1) ? gc.get_background.attr_handle : -1
      draw_background(h_dc, rect, pixel)
    end
    
    typesig { [] }
    # Returns the caret.
    # <p>
    # The caret for the control is automatically hidden
    # and shown when the control is painted or resized,
    # when focus is gained or lost and when an the control
    # is scrolled.  To avoid drawing on top of the caret,
    # the programmer must hide and show the caret when
    # drawing in the window any other time.
    # </p>
    # 
    # @return the caret for the receiver, may be null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_caret
      check_widget
      return @caret
    end
    
    typesig { [] }
    # Returns the IME.
    # 
    # @return the IME
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def get_ime
      check_widget
      return @ime
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      if (!(@caret).nil?)
        @caret.release(false)
        @caret = nil
      end
      if (!(@ime).nil?)
        @ime.release(false)
        @ime = nil
      end
      super(destroy)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    # Scrolls a rectangular area of the receiver by first copying
    # the source area to the destination and then causing the area
    # of the source which is not covered by the destination to
    # be repainted. Children that intersect the rectangle are
    # optionally moved during the operation. In addition, outstanding
    # paint events are flushed before the source area is copied to
    # ensure that the contents of the canvas are drawn correctly.
    # 
    # @param destX the x coordinate of the destination
    # @param destY the y coordinate of the destination
    # @param x the x coordinate of the source
    # @param y the y coordinate of the source
    # @param width the width of the area
    # @param height the height of the area
    # @param all <code>true</code>if children should be scrolled, and <code>false</code> otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def scroll(dest_x, dest_y, x, y, width, height, all)
      check_widget
      force_resize
      is_focus = !(@caret).nil? && @caret.is_focus_caret
      if (is_focus)
        @caret.kill_focus
      end
      source_rect = RECT.new
      OS._set_rect(source_rect, x, y, x + width, y + height)
      client_rect = RECT.new
      OS._get_client_rect(self.attr_handle, client_rect)
      if (OS._intersect_rect(client_rect, source_rect, client_rect))
        if (OS::IsWinCE)
          OS._update_window(self.attr_handle)
        else
          flags = OS::RDW_UPDATENOW | OS::RDW_ALLCHILDREN
          OS._redraw_window(self.attr_handle, nil, 0, flags)
        end
      end
      delta_x = dest_x - x
      delta_y = dest_y - y
      if (!(find_image_control).nil?)
        if (OS::IsWinCE)
          OS._invalidate_rect(self.attr_handle, source_rect, true)
        else
          flags = OS::RDW_ERASE | OS::RDW_FRAME | OS::RDW_INVALIDATE
          if (all)
            flags |= OS::RDW_ALLCHILDREN
          end
          OS._redraw_window(self.attr_handle, source_rect, 0, flags)
        end
        OS._offset_rect(source_rect, delta_x, delta_y)
        if (OS::IsWinCE)
          OS._invalidate_rect(self.attr_handle, source_rect, true)
        else
          flags = OS::RDW_ERASE | OS::RDW_FRAME | OS::RDW_INVALIDATE
          if (all)
            flags |= OS::RDW_ALLCHILDREN
          end
          OS._redraw_window(self.attr_handle, source_rect, 0, flags)
        end
      else
        flags = OS::SW_INVALIDATE | OS::SW_ERASE
        # Feature in Windows.  If any child in the widget tree partially
        # intersects the scrolling rectangle, Windows moves the child
        # and copies the bits that intersect the scrolling rectangle but
        # does not redraw the child.
        # 
        # Feature in Windows.  When any child in the widget tree does not
        # intersect the scrolling rectangle but the parent does intersect,
        # Windows does not move the child.  This is the documented (but
        # strange) Windows behavior.
        # 
        # The fix is to not use SW_SCROLLCHILDREN and move the children
        # explicitly after scrolling.
        # 
        # if (all) flags |= OS.SW_SCROLLCHILDREN;
        OS._scroll_window_ex(self.attr_handle, delta_x, delta_y, source_rect, nil, 0, nil, flags)
      end
      if (all)
        children = __get_children
        i = 0
        while i < children.attr_length
          child = children[i]
          rect = child.get_bounds
          if (Math.min(x + width, rect.attr_x + rect.attr_width) >= Math.max(x, rect.attr_x) && Math.min(y + height, rect.attr_y + rect.attr_height) >= Math.max(y, rect.attr_y))
            child.set_location(rect.attr_x + delta_x, rect.attr_y + delta_y)
          end
          i += 1
        end
      end
      if (is_focus)
        @caret.set_focus
      end
    end
    
    typesig { [Caret] }
    # Sets the receiver's caret.
    # <p>
    # The caret for the control is automatically hidden
    # and shown when the control is painted or resized,
    # when focus is gained or lost and when an the control
    # is scrolled.  To avoid drawing on top of the caret,
    # the programmer must hide and show the caret when
    # drawing in the window any other time.
    # </p>
    # @param caret the new caret for the receiver, may be null
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the caret has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_caret(caret)
      check_widget
      new_caret = caret
      old_caret = @caret
      @caret = new_caret
      if (has_focus)
        if (!(old_caret).nil?)
          old_caret.kill_focus
        end
        if (!(new_caret).nil?)
          if (new_caret.is_disposed)
            error(SWT::ERROR_INVALID_ARGUMENT)
          end
          new_caret.set_focus
        end
      end
    end
    
    typesig { [Font] }
    def set_font(font)
      check_widget
      if (!(@caret).nil?)
        @caret.set_font(font)
      end
      super(font)
    end
    
    typesig { [IME] }
    # Sets the receiver's IME.
    # 
    # @param ime the new IME for the receiver, may be null
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the IME has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def set_ime(ime)
      check_widget
      if (!(ime).nil? && ime.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @ime = ime
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def window_proc(hwnd, msg, w_param, l_param)
      if ((msg).equal?(Display.attr_swt_restorecaret))
        if (!((self.attr_state & CANVAS)).equal?(0))
          if (!(@caret).nil?)
            @caret.kill_focus
            @caret.set_focus
            return 1
          end
        end
      end
      return super(hwnd, msg, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_char(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (!(@caret).nil?)
        # 64
        case (RJava.cast_to_int(w_param))
        when SWT::DEL, SWT::BS, SWT::ESC
        else
          if (OS._get_key_state(OS::VK_CONTROL) >= 0)
            value = Array.typed(::Java::Int).new(1) { 0 }
            if (OS._system_parameters_info(OS::SPI_GETMOUSEVANISH, 0, value, 0))
              if (!(value[0]).equal?(0))
                OS._set_cursor(0)
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
    def _wm_ime_composition(w_param, l_param)
      if (!(@ime).nil?)
        result = @ime._wm_ime_composition(w_param, l_param)
        if (!(result).nil?)
          return result
        end
      end
      # Bug in Windows.  On Korean Windows XP, the IME window
      # for the Korean Input System (MS-IME 2002) always opens
      # in the top left corner of the screen, despite the fact
      # that ImmSetCompositionWindow() was called to position
      # the IME when focus is gained.  The fix is to position
      # the IME on every WM_IME_COMPOSITION message.
      if (!OS::IsWinCE && (OS::WIN32_VERSION).equal?(OS._version(5, 1)))
        if (OS::IsDBLocale)
          lang_id = OS._get_system_default_uilanguage
          primary_lang = OS._primarylangid(lang_id)
          if ((primary_lang).equal?(OS::LANG_KOREAN))
            if (!(@caret).nil? && @caret.is_focus_caret)
              pt_current_pos = POINT.new
              if (OS._get_caret_pos(pt_current_pos))
                lp_comp_form = COMPOSITIONFORM.new
                lp_comp_form.attr_dw_style = OS::CFS_POINT
                lp_comp_form.attr_x = pt_current_pos.attr_x
                lp_comp_form.attr_y = pt_current_pos.attr_y
                # long
                h_imc = OS._imm_get_context(self.attr_handle)
                OS._imm_set_composition_window(h_imc, lp_comp_form)
                OS._imm_release_context(self.attr_handle, h_imc)
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
    def _wm_ime_composition_start(w_param, l_param)
      if (!(@ime).nil?)
        result = @ime._wm_ime_composition_start(w_param, l_param)
        if (!(result).nil?)
          return result
        end
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_ime_endcomposition(w_param, l_param)
      if (!(@ime).nil?)
        result = @ime._wm_ime_endcomposition(w_param, l_param)
        if (!(result).nil?)
          return result
        end
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_inputlangchange(w_param, l_param)
      result = super(w_param, l_param)
      if (!(@caret).nil? && @caret.is_focus_caret)
        @caret.set_imefont
        @caret.resize_ime
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_killfocus(w_param, l_param)
      if (!(@ime).nil?)
        result = @ime._wm_killfocus(w_param, l_param)
        if (!(result).nil?)
          return result
        end
      end
      result = super(w_param, l_param)
      if (!(@caret).nil?)
        @caret.kill_focus
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttondown(w_param, l_param)
      if (!(@ime).nil?)
        result = @ime._wm_lbuttondown(w_param, l_param)
        if (!(result).nil?)
          return result
        end
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setfocus(w_param, l_param)
      result = super(w_param, l_param)
      if (!(@caret).nil?)
        @caret.set_focus
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_size(w_param, l_param)
      result = super(w_param, l_param)
      if (!(@caret).nil? && @caret.is_focus_caret)
        @caret.resize_ime
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_windowposchanged(w_param, l_param)
      result = super(w_param, l_param)
      # if (result != null) return result;
      # 
      # Bug in Windows.  When a window with style WS_EX_LAYOUTRTL
      # that contains a caret is resized, Windows does not move the
      # caret in relation to the mirrored origin in the top right.
      # The fix is to hide the caret in WM_WINDOWPOSCHANGING and
      # show the caret in WM_WINDOWPOSCHANGED.
      is_focus = !((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0) && !(@caret).nil? && @caret.is_focus_caret
      if (is_focus)
        @caret.set_focus
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
      # Bug in Windows.  When a window with style WS_EX_LAYOUTRTL
      # that contains a caret is resized, Windows does not move the
      # caret in relation to the mirrored origin in the top right.
      # The fix is to hide the caret in WM_WINDOWPOSCHANGING and
      # show the caret in WM_WINDOWPOSCHANGED.
      is_focus = !((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0) && !(@caret).nil? && @caret.is_focus_caret
      if (is_focus)
        @caret.kill_focus
      end
      return result
    end
    
    private
    alias_method :initialize__canvas, :initialize
  end
  
end
