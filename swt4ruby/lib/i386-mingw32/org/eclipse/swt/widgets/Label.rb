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
  module LabelImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class represent a non-selectable
  # user interface object that displays a string or image.
  # When SEPARATOR is specified, displays a single
  # vertical or horizontal line.
  # <p>
  # Shadow styles are hints and may not be honoured
  # by the platform.  To create a separator label
  # with the default shadow style for the platform,
  # do not specify a shadow style.
  # </p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>SEPARATOR, HORIZONTAL, VERTICAL</dd>
  # <dd>SHADOW_IN, SHADOW_OUT, SHADOW_NONE</dd>
  # <dd>CENTER, LEFT, RIGHT, WRAP</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # Note: Only one of SHADOW_IN, SHADOW_OUT and SHADOW_NONE may be specified.
  # SHADOW_NONE is a HINT. Only one of HORIZONTAL and VERTICAL may be specified.
  # Only one of CENTER, LEFT and RIGHT may be specified.
  # </p><p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#label">Label snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Label < LabelImports.const_get :Control
    include_class_members LabelImports
    
    attr_accessor :text
    alias_method :attr_text, :text
    undef_method :text
    alias_method :attr_text=, :text=
    undef_method :text=
    
    attr_accessor :image
    alias_method :attr_image, :image
    undef_method :image
    alias_method :attr_image=, :image=
    undef_method :image=
    
    class_module.module_eval {
      const_set_lazy(:MARGIN) { 4 }
      const_attr_reader  :MARGIN
      
      const_set_lazy(:IMAGE_AND_TEXT) { false }
      const_attr_reader  :IMAGE_AND_TEXT
      
      const_set_lazy(:LabelClass) { TCHAR.new(0, "STATIC", true) }
      const_attr_reader  :LabelClass
      
      when_class_loaded do
        lp_wnd_class = WNDCLASS.new
        OS._get_class_info(0, LabelClass, lp_wnd_class)
        const_set :LabelProc, lp_wnd_class.attr_lpfn_wnd_proc
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
    # @see SWT#SEPARATOR
    # @see SWT#HORIZONTAL
    # @see SWT#VERTICAL
    # @see SWT#SHADOW_IN
    # @see SWT#SHADOW_OUT
    # @see SWT#SHADOW_NONE
    # @see SWT#CENTER
    # @see SWT#LEFT
    # @see SWT#RIGHT
    # @see SWT#WRAP
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @text = nil
      @image = nil
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
      return OS._call_window_proc(LabelProc, hwnd, msg, w_param, l_param)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        style |= SWT::NO_FOCUS
        if (!((style & SWT::SEPARATOR)).equal?(0))
          style = check_bits(style, SWT::VERTICAL, SWT::HORIZONTAL, 0, 0, 0, 0)
          return check_bits(style, SWT::SHADOW_OUT, SWT::SHADOW_IN, SWT::SHADOW_NONE, 0, 0, 0)
        end
        return check_bits(style, SWT::LEFT, SWT::CENTER, SWT::RIGHT, 0, 0, 0)
      end
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      width = 0
      height = 0
      border = get_border_width
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        line_width = OS._get_system_metrics(OS::SM_CXBORDER)
        if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
          width = DEFAULT_WIDTH
          height = line_width * 2
        else
          width = line_width * 2
          height = DEFAULT_HEIGHT
        end
        if (!(w_hint).equal?(SWT::DEFAULT))
          width = w_hint
        end
        if (!(h_hint).equal?(SWT::DEFAULT))
          height = h_hint
        end
        width += border * 2
        height += border * 2
        return Point.new(width, height)
      end
      bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      draw_text = true
      draw_image = ((bits & OS::SS_OWNERDRAW)).equal?(OS::SS_OWNERDRAW)
      if (draw_image)
        if (!(@image).nil?)
          rect = @image.get_bounds
          width += rect.attr_width
          height += rect.attr_height
          if (IMAGE_AND_TEXT)
            if (!(@text.length).equal?(0))
              width += MARGIN
            end
          else
            draw_text = false
          end
        end
      end
      if (draw_text)
        # long
        h_dc = OS._get_dc(self.attr_handle)
        # long
        new_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
        # long
        old_font = OS._select_object(h_dc, new_font)
        length_ = OS._get_window_text_length(self.attr_handle)
        if ((length_).equal?(0))
          tm = OS::IsUnicode ? TEXTMETRICW.new : TEXTMETRICA.new
          OS._get_text_metrics(h_dc, tm)
          height = Math.max(height, tm.attr_tm_height)
        else
          rect = RECT.new
          flags = OS::DT_CALCRECT | OS::DT_EDITCONTROL | OS::DT_EXPANDTABS
          if (!((self.attr_style & SWT::WRAP)).equal?(0) && !(w_hint).equal?(SWT::DEFAULT))
            flags |= OS::DT_WORDBREAK
            rect.attr_right = Math.max(0, w_hint - width)
          end
          buffer = TCHAR.new(get_code_page, length_ + 1)
          OS._get_window_text(self.attr_handle, buffer, length_ + 1)
          OS._draw_text(h_dc, buffer, length_, rect, flags)
          width += rect.attr_right - rect.attr_left
          height = Math.max(height, rect.attr_bottom - rect.attr_top)
        end
        if (!(new_font).equal?(0))
          OS._select_object(h_dc, old_font)
        end
        OS._release_dc(self.attr_handle, h_dc)
      end
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint
      end
      width += border * 2
      height += border * 2
      # Feature in WinCE PPC.  Text labels have a trim
      # of one pixel wide on the right and left side.
      # The fix is to increase the width to include
      # this trim.
      if (OS::IsWinCE && !draw_image)
        width += 2
      end
      return Point.new(width, height)
    end
    
    typesig { [] }
    def create_handle
      super
      self.attr_state |= THEME_BACKGROUND
    end
    
    typesig { [] }
    # Returns a value which describes the position of the
    # text or image in the receiver. The value will be one of
    # <code>LEFT</code>, <code>RIGHT</code> or <code>CENTER</code>
    # unless the receiver is a <code>SEPARATOR</code> label, in
    # which case, <code>NONE</code> is returned.
    # 
    # @return the alignment
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_alignment
      check_widget
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return 0
      end
      if (!((self.attr_style & SWT::LEFT)).equal?(0))
        return SWT::LEFT
      end
      if (!((self.attr_style & SWT::CENTER)).equal?(0))
        return SWT::CENTER
      end
      if (!((self.attr_style & SWT::RIGHT)).equal?(0))
        return SWT::RIGHT
      end
      return SWT::LEFT
    end
    
    typesig { [] }
    # Returns the receiver's image if it has one, or null
    # if it does not.
    # 
    # @return the receiver's image
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_image
      check_widget
      return @image
    end
    
    typesig { [] }
    def get_name_text
      return get_text
    end
    
    typesig { [] }
    # Returns the receiver's text, which will be an empty
    # string if it has never been set or if the receiver is
    # a <code>SEPARATOR</code> label.
    # 
    # @return the receiver's text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text
      check_widget
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return ""
      end
      return @text
    end
    
    typesig { [::Java::Char] }
    def mnemonic_hit(key)
      control = self.attr_parent
      while (!(control).nil?)
        children = control.__get_children
        index = 0
        while (index < children.attr_length)
          if ((children[index]).equal?(self))
            break
          end
          ((index += 1) - 1)
        end
        ((index += 1) - 1)
        if (index < children.attr_length)
          if (children[index].set_focus)
            return true
          end
        end
        control = control.attr_parent
      end
      return false
    end
    
    typesig { [::Java::Char] }
    def mnemonic_match(key)
      mnemonic = find_mnemonic(get_text)
      if ((mnemonic).equal?(Character.new(?\0.ord)))
        return false
      end
      return (Character.to_upper_case(key)).equal?(Character.to_upper_case(mnemonic))
    end
    
    typesig { [] }
    def release_widget
      super
      @text = (nil).to_s
      @image = nil
    end
    
    typesig { [::Java::Int] }
    # Controls how text and images will be displayed in the receiver.
    # The argument should be one of <code>LEFT</code>, <code>RIGHT</code>
    # or <code>CENTER</code>.  If the receiver is a <code>SEPARATOR</code>
    # label, the argument is ignored and the alignment is not changed.
    # 
    # @param alignment the new alignment
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_alignment(alignment)
      check_widget
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      if (((alignment & (SWT::LEFT | SWT::RIGHT | SWT::CENTER))).equal?(0))
        return
      end
      self.attr_style &= ~(SWT::LEFT | SWT::RIGHT | SWT::CENTER)
      self.attr_style |= alignment & (SWT::LEFT | SWT::RIGHT | SWT::CENTER)
      bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      if (!((bits & OS::SS_OWNERDRAW)).equal?(OS::SS_OWNERDRAW))
        bits &= ~(OS::SS_LEFTNOWORDWRAP | OS::SS_CENTER | OS::SS_RIGHT)
        if (!((self.attr_style & SWT::LEFT)).equal?(0))
          if (!((self.attr_style & SWT::WRAP)).equal?(0))
            bits |= OS::SS_LEFT
          else
            bits |= OS::SS_LEFTNOWORDWRAP
          end
        end
        if (!((self.attr_style & SWT::CENTER)).equal?(0))
          bits |= OS::SS_CENTER
        end
        if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          bits |= OS::SS_RIGHT
        end
        OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits)
      end
      OS._invalidate_rect(self.attr_handle, nil, true)
    end
    
    typesig { [Image] }
    # Sets the receiver's image to the argument, which may be
    # null indicating that no image should be displayed.
    # 
    # @param image the image to display on the receiver (may be null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the image has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_image(image)
      check_widget
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      if (!(image).nil? && image.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @image = image
      bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      if (!((bits & OS::SS_OWNERDRAW)).equal?(OS::SS_OWNERDRAW))
        bits &= ~(OS::SS_LEFTNOWORDWRAP | OS::SS_CENTER | OS::SS_RIGHT)
        bits |= OS::SS_OWNERDRAW
        OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits)
      end
      OS._invalidate_rect(self.attr_handle, nil, true)
    end
    
    typesig { [String] }
    # Sets the receiver's text.
    # <p>
    # This method sets the widget label.  The label may include
    # the mnemonic character and line delimiters.
    # </p>
    # <p>
    # Mnemonics are indicated by an '&amp;' that causes the next
    # character to be the mnemonic.  When the user presses a
    # key sequence that matches the mnemonic, focus is assigned
    # to the control that follows the label. On most platforms,
    # the mnemonic appears underlined but may be emphasised in a
    # platform specific manner.  The mnemonic indicator character
    # '&amp;' can be escaped by doubling it in the string, causing
    # a single '&amp;' to be displayed.
    # </p>
    # 
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
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      # Feature in Windows.  For some reason, SetWindowText() for
      # static controls redraws the control, even when the text has
      # has not changed.  The fix is to check for this case and do
      # nothing.
      if ((string == @text))
        return
      end
      @text = string
      if ((@image).nil? || !IMAGE_AND_TEXT)
        old_bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        new_bits = old_bits
        new_bits &= ~OS::SS_OWNERDRAW
        if (!((self.attr_style & SWT::LEFT)).equal?(0))
          if (!((self.attr_style & SWT::WRAP)).equal?(0))
            new_bits |= OS::SS_LEFT
          else
            new_bits |= OS::SS_LEFTNOWORDWRAP
          end
        end
        if (!((self.attr_style & SWT::CENTER)).equal?(0))
          new_bits |= OS::SS_CENTER
        end
        if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          new_bits |= OS::SS_RIGHT
        end
        if (!(old_bits).equal?(new_bits))
          OS._set_window_long(self.attr_handle, OS::GWL_STYLE, new_bits)
        end
      end
      string = (Display.with_cr_lf(string)).to_s
      buffer = TCHAR.new(get_code_page, string, true)
      OS._set_window_text(self.attr_handle, buffer)
      # Bug in Windows.  For some reason, the HBRUSH that
      # is returned from WM_CTRLCOLOR is misaligned when
      # the label uses it to draw.  If the brush is a solid
      # color, this does not matter.  However, if the brush
      # contains an image, the image is misaligned.  The
      # fix is to draw the background in WM_ERASEBKGND.
      if (OS::COMCTL32_MAJOR < 6)
        if (!(find_image_control).nil?)
          OS._invalidate_rect(self.attr_handle, nil, true)
        end
      end
    end
    
    typesig { [] }
    def widget_ext_style
      bits = super & ~OS::WS_EX_CLIENTEDGE
      if (!((self.attr_style & SWT::BORDER)).equal?(0))
        return bits | OS::WS_EX_STATICEDGE
      end
      return bits
    end
    
    typesig { [] }
    def widget_style
      bits = super | OS::SS_NOTIFY
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return bits | OS::SS_OWNERDRAW
      end
      if (OS::WIN32_VERSION >= OS._version(5, 0))
        if (!((self.attr_style & SWT::WRAP)).equal?(0))
          bits |= OS::SS_EDITCONTROL
        end
      end
      if (!((self.attr_style & SWT::CENTER)).equal?(0))
        return bits | OS::SS_CENTER
      end
      if (!((self.attr_style & SWT::RIGHT)).equal?(0))
        return bits | OS::SS_RIGHT
      end
      if (!((self.attr_style & SWT::WRAP)).equal?(0))
        return bits | OS::SS_LEFT
      end
      return bits | OS::SS_LEFTNOWORDWRAP
    end
    
    typesig { [] }
    def window_class
      return LabelClass
    end
    
    typesig { [] }
    # long
    def window_proc
      return LabelProc
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_erasebkgnd(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      if (((bits & OS::SS_OWNERDRAW)).equal?(OS::SS_OWNERDRAW))
        return LRESULT::ONE
      end
      # Bug in Windows.  For some reason, the HBRUSH that
      # is returned from WM_CTRLCOLOR is misaligned when
      # the label uses it to draw.  If the brush is a solid
      # color, this does not matter.  However, if the brush
      # contains an image, the image is misaligned.  The
      # fix is to draw the background in WM_ERASEBKGND.
      if (OS::COMCTL32_MAJOR < 6)
        if (!(find_image_control).nil?)
          draw_background(w_param)
          return LRESULT::ONE
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_size(w_param, l_param)
      result = super(w_param, l_param)
      if (is_disposed)
        return result
      end
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        OS._invalidate_rect(self.attr_handle, nil, true)
        return result
      end
      bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      if (((bits & OS::SS_OWNERDRAW)).equal?(OS::SS_OWNERDRAW))
        OS._invalidate_rect(self.attr_handle, nil, true)
        return result
      end
      # Bug in Windows.  For some reason, a label with
      # style SS_LEFT, SS_CENTER or SS_RIGHT does not
      # redraw the text in the new position when resized.
      # Note that SS_LEFTNOWORDWRAP does not have the
      # problem.  The fix is to force the redraw.
      if (!((bits & OS::SS_LEFTNOWORDWRAP)).equal?(OS::SS_LEFTNOWORDWRAP))
        OS._invalidate_rect(self.attr_handle, nil, true)
        return result
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
      # a static control, it sends WM_CTLCOLORSTATIC to get the
      # foreground and background.  If any drawing happens in
      # WM_CTLCOLORSTATIC, it overwrites the contents of the control.
      # The fix is draw the static without drawing the background
      # and avoid the static window proc.
      redraw = !(find_image_control).nil?
      if (!redraw)
        if (!((self.attr_state & THEME_BACKGROUND)).equal?(0))
          if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
            redraw = !(find_theme_control).nil?
          end
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
    def wm_color_child(w_param, l_param)
      # Bug in Windows.  For some reason, the HBRUSH that
      # is returned from WM_CTRLCOLOR is misaligned when
      # the label uses it to draw.  If the brush is a solid
      # color, this does not matter.  However, if the brush
      # contains an image, the image is misaligned.  The
      # fix is to draw the background in WM_ERASEBKGND.
      result = super(w_param, l_param)
      if (OS::COMCTL32_MAJOR < 6)
        bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        if (!((bits & OS::SS_OWNERDRAW)).equal?(OS::SS_OWNERDRAW))
          if (!(find_image_control).nil?)
            OS._set_bk_mode(w_param, OS::TRANSPARENT)
            return LRESULT.new(OS._get_stock_object(OS::NULL_BRUSH))
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_paint(w_param, l_param)
      if (OS::IsWinCE)
        draw_image = !(@image).nil?
        draw_separator = !((self.attr_style & SWT::SEPARATOR)).equal?(0) && ((self.attr_style & SWT::SHADOW_NONE)).equal?(0)
        if (draw_image || draw_separator)
          result = nil
          ps = PAINTSTRUCT.new
          data = SwtGCData.new
          data.attr_ps = ps
          data.attr_hwnd = self.attr_handle
          gc = new__gc(data)
          if (!(gc).nil?)
            draw_background(gc.attr_handle)
            client_rect = RECT.new
            OS._get_client_rect(self.attr_handle, client_rect)
            if (draw_separator)
              rect = RECT.new
              line_width = OS._get_system_metrics(OS::SM_CXBORDER)
              flags = !((self.attr_style & SWT::SHADOW_IN)).equal?(0) ? OS::EDGE_SUNKEN : OS::EDGE_ETCHED
              if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
                bottom = client_rect.attr_top + Math.max(line_width * 2, (client_rect.attr_bottom - client_rect.attr_top) / 2)
                OS._set_rect(rect, client_rect.attr_left, client_rect.attr_top, client_rect.attr_right, bottom)
                OS._draw_edge(gc.attr_handle, rect, flags, OS::BF_BOTTOM)
              else
                right = client_rect.attr_left + Math.max(line_width * 2, (client_rect.attr_right - client_rect.attr_left) / 2)
                OS._set_rect(rect, client_rect.attr_left, client_rect.attr_top, right, client_rect.attr_bottom)
                OS._draw_edge(gc.attr_handle, rect, flags, OS::BF_RIGHT)
              end
              result = LRESULT::ONE
            end
            if (draw_image)
              image_bounds = @image.get_bounds
              x = 0
              if (!((self.attr_style & SWT::CENTER)).equal?(0))
                x = Math.max(0, (client_rect.attr_right - image_bounds.attr_width) / 2)
              else
                if (!((self.attr_style & SWT::RIGHT)).equal?(0))
                  x = Math.max(0, (client_rect.attr_right - image_bounds.attr_width))
                end
              end
              gc.draw_image(@image, x, Math.max(0, (client_rect.attr_bottom - image_bounds.attr_height) / 2))
              result = LRESULT::ONE
            end
            width = ps.attr_right - ps.attr_left
            height = ps.attr_bottom - ps.attr_top
            if (!(width).equal?(0) && !(height).equal?(0))
              event = Event.new
              event.attr_gc = gc
              event.attr_x = ps.attr_left
              event.attr_y = ps.attr_top
              event.attr_width = width
              event.attr_height = height
              send_event(SWT::Paint, event)
              # widget could be disposed at this point
              event.attr_gc = nil
            end
            gc.dispose
          end
          return result
        end
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_draw_child(w_param, l_param)
      struct = DRAWITEMSTRUCT.new
      OS._move_memory(struct, l_param, DRAWITEMSTRUCT.attr_sizeof)
      draw_background(struct.attr_h_dc)
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        if (!((self.attr_style & SWT::SHADOW_NONE)).equal?(0))
          return nil
        end
        rect = RECT.new
        line_width = OS._get_system_metrics(OS::SM_CXBORDER)
        flags = !((self.attr_style & SWT::SHADOW_IN)).equal?(0) ? OS::EDGE_SUNKEN : OS::EDGE_ETCHED
        if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
          bottom = struct.attr_top + Math.max(line_width * 2, (struct.attr_bottom - struct.attr_top) / 2)
          OS._set_rect(rect, struct.attr_left, struct.attr_top, struct.attr_right, bottom)
          OS._draw_edge(struct.attr_h_dc, rect, flags, OS::BF_BOTTOM)
        else
          right = struct.attr_left + Math.max(line_width * 2, (struct.attr_right - struct.attr_left) / 2)
          OS._set_rect(rect, struct.attr_left, struct.attr_top, right, struct.attr_bottom)
          OS._draw_edge(struct.attr_h_dc, rect, flags, OS::BF_RIGHT)
        end
      else
        width = struct.attr_right - struct.attr_left
        height = struct.attr_bottom - struct.attr_top
        if (!(width).equal?(0) && !(height).equal?(0))
          draw_image_ = !(@image).nil?
          draw_text = IMAGE_AND_TEXT && !(@text.length).equal?(0)
          margin = draw_text && draw_image_ ? MARGIN : 0
          image_width = 0
          image_height = 0
          if (draw_image_)
            rect = @image.get_bounds
            image_width = rect.attr_width
            image_height = rect.attr_height
          end
          rect = nil
          buffer = nil
          text_width = 0
          text_height = 0
          flags = 0
          if (draw_text)
            rect = RECT.new
            flags = OS::DT_CALCRECT | OS::DT_EDITCONTROL | OS::DT_EXPANDTABS
            if (!((self.attr_style & SWT::LEFT)).equal?(0))
              flags |= OS::DT_LEFT
            end
            if (!((self.attr_style & SWT::CENTER)).equal?(0))
              flags |= OS::DT_CENTER
            end
            if (!((self.attr_style & SWT::RIGHT)).equal?(0))
              flags |= OS::DT_RIGHT
            end
            if (!((self.attr_style & SWT::WRAP)).equal?(0))
              flags |= OS::DT_WORDBREAK
              rect.attr_right = Math.max(0, width - image_width - margin)
            end
            buffer = TCHAR.new(get_code_page, @text, true)
            OS._draw_text(struct.attr_h_dc, buffer, -1, rect, flags)
            text_width = rect.attr_right - rect.attr_left
            text_height = rect.attr_bottom - rect.attr_top
          end
          x = 0
          if (!((self.attr_style & SWT::CENTER)).equal?(0))
            x = Math.max(0, (width - image_width - text_width - margin) / 2)
          else
            if (!((self.attr_style & SWT::RIGHT)).equal?(0))
              x = width - image_width - text_width - margin
            end
          end
          if (draw_image_)
            data = SwtGCData.new
            data.attr_device = self.attr_display
            gc = SwtGC.win32_new(struct.attr_h_dc, data)
            image = get_enabled ? @image : Image.new(self.attr_display, @image, SWT::IMAGE_DISABLE)
            gc.draw_image(image, x, Math.max(0, (height - image_height) / 2))
            if (!(image).equal?(@image))
              image.dispose
            end
            gc.dispose
            x += image_width + margin
          end
          if (draw_text)
            flags &= ~OS::DT_CALCRECT
            rect.attr_left = x
            rect.attr_right += rect.attr_left
            rect.attr_top = Math.max(0, (height - text_height) / 2)
            rect.attr_bottom += rect.attr_top
            OS._draw_text(struct.attr_h_dc, buffer, -1, rect, flags)
          end
        end
      end
      return nil
    end
    
    private
    alias_method :initialize__label, :initialize
  end
  
end
