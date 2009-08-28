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
  module ButtonImports #:nodoc:
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
  
  # Instances of this class represent a selectable user interface object that
  # issues notification when pressed and released.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>ARROW, CHECK, PUSH, RADIO, TOGGLE, FLAT</dd>
  # <dd>UP, DOWN, LEFT, RIGHT, CENTER</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles ARROW, CHECK, PUSH, RADIO, and TOGGLE
  # may be specified.
  # </p><p>
  # Note: Only one of the styles LEFT, RIGHT, and CENTER may be specified.
  # </p><p>
  # Note: Only one of the styles UP, DOWN, LEFT, and RIGHT may be specified
  # when the ARROW style is specified.
  # </p><p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#button">Button snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Button < ButtonImports.const_get :Control
    include_class_members ButtonImports
    
    attr_accessor :text
    alias_method :attr_text, :text
    undef_method :text
    alias_method :attr_text=, :text=
    undef_method :text=
    
    attr_accessor :message
    alias_method :attr_message, :message
    undef_method :message
    alias_method :attr_message=, :message=
    undef_method :message=
    
    attr_accessor :image
    alias_method :attr_image, :image
    undef_method :image
    alias_method :attr_image=, :image=
    undef_method :image=
    
    attr_accessor :image2
    alias_method :attr_image2, :image2
    undef_method :image2
    alias_method :attr_image2=, :image2=
    undef_method :image2=
    
    attr_accessor :disabled_image
    alias_method :attr_disabled_image, :disabled_image
    undef_method :disabled_image
    alias_method :attr_disabled_image=, :disabled_image=
    undef_method :disabled_image=
    
    attr_accessor :image_list
    alias_method :attr_image_list, :image_list
    undef_method :image_list
    alias_method :attr_image_list=, :image_list=
    undef_method :image_list=
    
    attr_accessor :ignore_mouse
    alias_method :attr_ignore_mouse, :ignore_mouse
    undef_method :ignore_mouse
    alias_method :attr_ignore_mouse=, :ignore_mouse=
    undef_method :ignore_mouse=
    
    attr_accessor :grayed
    alias_method :attr_grayed, :grayed
    undef_method :grayed
    alias_method :attr_grayed=, :grayed=
    undef_method :grayed=
    
    class_module.module_eval {
      const_set_lazy(:MARGIN) { 4 }
      const_attr_reader  :MARGIN
      
      const_set_lazy(:ICON_WIDTH) { 128 }
      const_attr_reader  :ICON_WIDTH
      
      const_set_lazy(:ICON_HEIGHT) { 128 }
      const_attr_reader  :ICON_HEIGHT
      
      const_set_lazy(:COMMAND_LINK) { false }
      const_attr_reader  :COMMAND_LINK
      
      const_set_lazy(:ButtonClass) { TCHAR.new(0, "BUTTON", true) }
      const_attr_reader  :ButtonClass
      
      when_class_loaded do
        # long
        h_bitmap = OS._load_bitmap(0, OS::OBM_CHECKBOXES)
        if ((h_bitmap).equal?(0))
          const_set :CHECK_WIDTH, OS._get_system_metrics(OS::IsWinCE ? OS::SM_CXSMICON : OS::SM_CXVSCROLL)
          const_set :CHECK_HEIGHT, OS._get_system_metrics(OS::IsWinCE ? OS::SM_CYSMICON : OS::SM_CYVSCROLL)
        else
          bitmap = BITMAP.new
          OS._get_object(h_bitmap, BITMAP.attr_sizeof, bitmap)
          OS._delete_object(h_bitmap)
          const_set :CHECK_WIDTH, bitmap.attr_bm_width / 4
          const_set :CHECK_HEIGHT, bitmap.attr_bm_height / 3
        end
        lp_wnd_class = WNDCLASS.new
        OS._get_class_info(0, ButtonClass, lp_wnd_class)
        const_set :ButtonProc, lp_wnd_class.attr_lpfn_wnd_proc
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
    # @see SWT#ARROW
    # @see SWT#CHECK
    # @see SWT#PUSH
    # @see SWT#RADIO
    # @see SWT#TOGGLE
    # @see SWT#FLAT
    # @see SWT#LEFT
    # @see SWT#RIGHT
    # @see SWT#CENTER
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @text = nil
      @message = nil
      @image = nil
      @image2 = nil
      @disabled_image = nil
      @image_list = nil
      @ignore_mouse = false
      @grayed = false
      super(parent, check_style(style))
      @text = ""
      @message = ""
    end
    
    typesig { [Image] }
    def __set_image(image)
      if (!((self.attr_style & SWT::COMMAND)).equal?(0))
        return
      end
      if (OS::COMCTL32_MAJOR >= 6)
        if (!(@image_list).nil?)
          @image_list.dispose
        end
        @image_list = nil
        if (!(image).nil?)
          @image_list = ImageList.new(self.attr_style & SWT::RIGHT_TO_LEFT)
          if (OS._is_window_enabled(self.attr_handle))
            @image_list.add(image)
          else
            if (!(@disabled_image).nil?)
              @disabled_image.dispose
            end
            @disabled_image = Image.new(self.attr_display, image, SWT::IMAGE_DISABLE)
            @image_list.add(@disabled_image)
          end
          button_image_list = BUTTON_IMAGELIST.new
          button_image_list.attr_himl = @image_list.get_handle
          old_bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
          new_bits = old_bits
          new_bits &= ~(OS::BS_LEFT | OS::BS_CENTER | OS::BS_RIGHT)
          if (!((self.attr_style & SWT::LEFT)).equal?(0))
            new_bits |= OS::BS_LEFT
          end
          if (!((self.attr_style & SWT::CENTER)).equal?(0))
            new_bits |= OS::BS_CENTER
          end
          if (!((self.attr_style & SWT::RIGHT)).equal?(0))
            new_bits |= OS::BS_RIGHT
          end
          if ((@text.length).equal?(0))
            if (!((self.attr_style & SWT::LEFT)).equal?(0))
              button_image_list.attr_u_align = OS::BUTTON_IMAGELIST_ALIGN_LEFT
            end
            if (!((self.attr_style & SWT::CENTER)).equal?(0))
              button_image_list.attr_u_align = OS::BUTTON_IMAGELIST_ALIGN_CENTER
            end
            if (!((self.attr_style & SWT::RIGHT)).equal?(0))
              button_image_list.attr_u_align = OS::BUTTON_IMAGELIST_ALIGN_RIGHT
            end
          else
            button_image_list.attr_u_align = OS::BUTTON_IMAGELIST_ALIGN_LEFT
            button_image_list.attr_margin_left = compute_left_margin
            button_image_list.attr_margin_right = MARGIN
            new_bits &= ~(OS::BS_CENTER | OS::BS_RIGHT)
            new_bits |= OS::BS_LEFT
          end
          if (!(new_bits).equal?(old_bits))
            OS._set_window_long(self.attr_handle, OS::GWL_STYLE, new_bits)
            OS._invalidate_rect(self.attr_handle, nil, true)
          end
          OS._send_message(self.attr_handle, OS::BCM_SETIMAGELIST, 0, button_image_list)
        else
          OS._send_message(self.attr_handle, OS::BCM_SETIMAGELIST, 0, 0)
        end
        # Bug in Windows.  Under certain cirumstances yet to be
        # isolated, BCM_SETIMAGELIST does not redraw the control
        # when a new image is set.  The fix is to force a redraw.
        OS._invalidate_rect(self.attr_handle, nil, true)
      else
        if (!(@image2).nil?)
          @image2.dispose
        end
        @image2 = nil
        # long
        h_image = 0
        image_bits = 0
        f_image_type = 0
        if (!(image).nil?)
          case (image.attr_type)
          when SWT::BITMAP
            rect = image.get_bounds
            data = image.get_image_data
            case (data.get_transparency_type)
            # FALL THROUGH
            when SWT::TRANSPARENCY_PIXEL
              if (rect.attr_width <= ICON_WIDTH && rect.attr_height <= ICON_HEIGHT)
                @image2 = Image.new(self.attr_display, data, data.get_transparency_mask)
                h_image = @image2.attr_handle
                image_bits = OS::BS_ICON
                f_image_type = OS::IMAGE_ICON
              end
            when SWT::TRANSPARENCY_ALPHA
              @image2 = Image.new(self.attr_display, rect.attr_width, rect.attr_height)
              gc = SwtGC.new(@image2)
              gc.set_background(get_background)
              gc.fill_rectangle(rect)
              gc.draw_image(image, 0, 0)
              gc.dispose
              h_image = @image2.attr_handle
              image_bits = OS::BS_BITMAP
              f_image_type = OS::IMAGE_BITMAP
            when SWT::TRANSPARENCY_NONE
              h_image = image.attr_handle
              image_bits = OS::BS_BITMAP
              f_image_type = OS::IMAGE_BITMAP
            end
          when SWT::ICON
            h_image = image.attr_handle
            image_bits = OS::BS_ICON
            f_image_type = OS::IMAGE_ICON
          end
          # Feature in Windows.  The button control mirrors its image when the
          # flag WS_EX_LAYOUTRTL is set. This behaviour is not desirable in SWT.
          # The fix is to set a mirrored version of real image in the button.
          if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
            if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(4, 10))
              rect = image.get_bounds
              # long
              h_dc = OS._get_dc(self.attr_handle)
              # long
              dst_hdc = OS._create_compatible_dc(h_dc)
              # long
              h_bitmap = OS._create_compatible_bitmap(h_dc, rect.attr_width, rect.attr_height)
              # long
              old_bitmap = OS._select_object(dst_hdc, h_bitmap)
              OS._set_layout(dst_hdc, OS::LAYOUT_RTL)
              if ((f_image_type).equal?(OS::IMAGE_BITMAP))
                # long
                src_hdc = OS._create_compatible_dc(h_dc)
                # long
                old_src_bitmap = OS._select_object(src_hdc, h_image)
                OS._set_layout(dst_hdc, 0)
                OS._bit_blt(dst_hdc, 0, 0, rect.attr_width, rect.attr_height, src_hdc, 0, 0, OS::SRCCOPY)
                OS._select_object(src_hdc, old_src_bitmap)
                OS._delete_dc(src_hdc)
              else
                control = find_background_control
                if ((control).nil?)
                  control = self
                end
                # long
                new_brush = OS._create_solid_brush(control.get_background_pixel)
                # long
                old_brush = OS._select_object(dst_hdc, new_brush)
                OS._pat_blt(dst_hdc, 0, 0, rect.attr_width, rect.attr_height, OS::PATCOPY)
                OS._draw_icon_ex(dst_hdc, 0, 0, h_image, 0, 0, 0, 0, OS::DI_NORMAL)
                OS._select_object(dst_hdc, old_brush)
                OS._delete_object(new_brush)
              end
              OS._select_object(dst_hdc, old_bitmap)
              OS._delete_dc(dst_hdc)
              OS._release_dc(self.attr_handle, h_dc)
              if (!(@image2).nil?)
                @image2.dispose
              end
              @image2 = Image.win32_new(self.attr_display, SWT::BITMAP, h_bitmap)
              image_bits = OS::BS_BITMAP
              f_image_type = OS::IMAGE_BITMAP
              h_image = h_bitmap
            end
          end
        end
        new_bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        old_bits = new_bits
        new_bits &= ~(OS::BS_BITMAP | OS::BS_ICON)
        new_bits |= image_bits
        if (!(new_bits).equal?(old_bits))
          OS._set_window_long(self.attr_handle, OS::GWL_STYLE, new_bits)
        end
        OS._send_message(self.attr_handle, OS::BM_SETIMAGE, f_image_type, h_image)
      end
    end
    
    typesig { [String] }
    def __set_text(text)
      old_bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      new_bits = old_bits
      if (OS::COMCTL32_MAJOR >= 6)
        new_bits &= ~(OS::BS_LEFT | OS::BS_CENTER | OS::BS_RIGHT)
        if (!((self.attr_style & SWT::LEFT)).equal?(0))
          new_bits |= OS::BS_LEFT
        end
        if (!((self.attr_style & SWT::CENTER)).equal?(0))
          new_bits |= OS::BS_CENTER
        end
        if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          new_bits |= OS::BS_RIGHT
        end
        if (!(@image_list).nil?)
          button_image_list = BUTTON_IMAGELIST.new
          button_image_list.attr_himl = @image_list.get_handle
          if ((text.length).equal?(0))
            if (!((self.attr_style & SWT::LEFT)).equal?(0))
              button_image_list.attr_u_align = OS::BUTTON_IMAGELIST_ALIGN_LEFT
            end
            if (!((self.attr_style & SWT::CENTER)).equal?(0))
              button_image_list.attr_u_align = OS::BUTTON_IMAGELIST_ALIGN_CENTER
            end
            if (!((self.attr_style & SWT::RIGHT)).equal?(0))
              button_image_list.attr_u_align = OS::BUTTON_IMAGELIST_ALIGN_RIGHT
            end
          else
            button_image_list.attr_u_align = OS::BUTTON_IMAGELIST_ALIGN_LEFT
            button_image_list.attr_margin_left = compute_left_margin
            button_image_list.attr_margin_right = MARGIN
            new_bits &= ~(OS::BS_CENTER | OS::BS_RIGHT)
            new_bits |= OS::BS_LEFT
          end
          OS._send_message(self.attr_handle, OS::BCM_SETIMAGELIST, 0, button_image_list)
        end
      else
        new_bits &= ~(OS::BS_BITMAP | OS::BS_ICON)
      end
      if (!(new_bits).equal?(old_bits))
        OS._set_window_long(self.attr_handle, OS::GWL_STYLE, new_bits)
        OS._invalidate_rect(self.attr_handle, nil, true)
      end
      # Bug in Windows.  When a Button control is right-to-left and
      # is disabled, the first pixel of the text is clipped.  The
      # fix is to add a space to both sides of the text.
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        if (OS::COMCTL32_MAJOR < 6 || !OS._is_app_themed)
          text = RJava.cast_to_string(OS._is_window_enabled(self.attr_handle) ? text : " " + text + " ")
        end
      end
      buffer = TCHAR.new(get_code_page, text, true)
      OS._set_window_text(self.attr_handle, buffer)
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the control is selected by the user, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # <code>widgetSelected</code> is called when the control is selected by the user.
    # <code>widgetDefaultSelected</code> is not called.
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def call_window_proc(hwnd, msg, w_param, l_param)
      if ((self.attr_handle).equal?(0))
        return 0
      end
      return OS._call_window_proc(ButtonProc, hwnd, msg, w_param, l_param)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        style = check_bits(style, SWT::PUSH, SWT::ARROW, SWT::CHECK, SWT::RADIO, SWT::TOGGLE, COMMAND_LINK ? SWT::COMMAND : 0)
        if (!((style & (SWT::PUSH | SWT::TOGGLE))).equal?(0))
          return check_bits(style, SWT::CENTER, SWT::LEFT, SWT::RIGHT, 0, 0, 0)
        end
        if (!((style & (SWT::CHECK | SWT::RADIO))).equal?(0))
          return check_bits(style, SWT::LEFT, SWT::RIGHT, SWT::CENTER, 0, 0, 0)
        end
        if (!((style & SWT::ARROW)).equal?(0))
          style |= SWT::NO_FOCUS
          return check_bits(style, SWT::UP, SWT::DOWN, SWT::LEFT, SWT::RIGHT, 0, 0)
        end
        return style
      end
    }
    
    typesig { [] }
    def click
      # Feature in Windows.  BM_CLICK sends a fake WM_LBUTTONDOWN and
      # WM_LBUTTONUP in order to click the button.  This causes the
      # application to get unexpected mouse events.  The fix is to
      # ignore mouse events when they are caused by BM_CLICK.
      @ignore_mouse = true
      OS._send_message(self.attr_handle, OS::BM_CLICK, 0, 0)
      @ignore_mouse = false
    end
    
    typesig { [] }
    def compute_left_margin
      if (OS::COMCTL32_MAJOR < 6)
        return MARGIN
      end
      if (((self.attr_style & (SWT::PUSH | SWT::TOGGLE))).equal?(0))
        return MARGIN
      end
      margin = 0
      if (!(@image).nil? && !(@text.length).equal?(0))
        bounds = @image.get_bounds
        margin += bounds.attr_width + MARGIN * 2
        # long
        old_font = 0
        # long
        h_dc = OS._get_dc(self.attr_handle)
        # long
        new_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
        if (!(new_font).equal?(0))
          old_font = OS._select_object(h_dc, new_font)
        end
        buffer = TCHAR.new(get_code_page, @text, true)
        rect = RECT.new
        flags = OS::DT_CALCRECT | OS::DT_SINGLELINE
        OS._draw_text(h_dc, buffer, -1, rect, flags)
        margin += rect.attr_right - rect.attr_left
        if (!(new_font).equal?(0))
          OS._select_object(h_dc, old_font)
        end
        OS._release_dc(self.attr_handle, h_dc)
        OS._get_client_rect(self.attr_handle, rect)
        margin = Math.max(MARGIN, (rect.attr_right - rect.attr_left - margin) / 2)
      end
      return margin
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      width = 0
      height = 0
      border = get_border_width
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        if (!((self.attr_style & (SWT::UP | SWT::DOWN))).equal?(0))
          width += OS._get_system_metrics(OS::SM_CXVSCROLL)
          height += OS._get_system_metrics(OS::SM_CYVSCROLL)
        else
          width += OS._get_system_metrics(OS::SM_CXHSCROLL)
          height += OS._get_system_metrics(OS::SM_CYHSCROLL)
        end
      else
        if (!((self.attr_style & SWT::COMMAND)).equal?(0))
          size = SIZE.new
          if (!(w_hint).equal?(SWT::DEFAULT))
            size.attr_cx = w_hint
            OS._send_message(self.attr_handle, OS::BCM_GETIDEALSIZE, 0, size)
            width = size.attr_cx
            height = size.attr_cy
          else
            OS._send_message(self.attr_handle, OS::BCM_GETIDEALSIZE, 0, size)
            width = size.attr_cy
            height = size.attr_cy
            size.attr_cy = 0
            while (!(size.attr_cy).equal?(height))
              size.attr_cx = ((width += 1) - 1)
              size.attr_cy = 0
              OS._send_message(self.attr_handle, OS::BCM_GETIDEALSIZE, 0, size)
            end
          end
        else
          extra = 0
          has_image = !(@image).nil?
          has_text = true
          if (OS::COMCTL32_MAJOR < 6)
            if (((self.attr_style & SWT::PUSH)).equal?(0))
              bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
              has_image = !((bits & (OS::BS_BITMAP | OS::BS_ICON))).equal?(0)
              if (has_image)
                has_text = false
              end
            end
          end
          if (has_image)
            if (!(@image).nil?)
              rect = @image.get_bounds
              width = rect.attr_width
              if (has_text && !(@text.length).equal?(0))
                width += MARGIN * 2
              end
              height = rect.attr_height
              extra = MARGIN * 2
            end
          end
          if (has_text)
            # long
            old_font = 0
            # long
            h_dc = OS._get_dc(self.attr_handle)
            # long
            new_font = OS._send_message(self.attr_handle, OS::WM_GETFONT, 0, 0)
            if (!(new_font).equal?(0))
              old_font = OS._select_object(h_dc, new_font)
            end
            lptm = OS::IsUnicode ? TEXTMETRICW.new : TEXTMETRICA.new
            OS._get_text_metrics(h_dc, lptm)
            length_ = @text.length
            if ((length_).equal?(0))
              height = Math.max(height, lptm.attr_tm_height)
            else
              extra = Math.max(MARGIN * 2, lptm.attr_tm_ave_char_width)
              buffer = TCHAR.new(get_code_page, @text, true)
              rect = RECT.new
              flags = OS::DT_CALCRECT | OS::DT_SINGLELINE
              OS._draw_text(h_dc, buffer, -1, rect, flags)
              width += rect.attr_right - rect.attr_left
              height = Math.max(height, rect.attr_bottom - rect.attr_top)
            end
            if (!(new_font).equal?(0))
              OS._select_object(h_dc, old_font)
            end
            OS._release_dc(self.attr_handle, h_dc)
          end
          if (!((self.attr_style & (SWT::CHECK | SWT::RADIO))).equal?(0))
            width += CHECK_WIDTH + extra
            height = Math.max(height, CHECK_HEIGHT + 3)
          end
          if (!((self.attr_style & (SWT::PUSH | SWT::TOGGLE))).equal?(0))
            width += 12
            height += 10
          end
        end
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
      # Set the theme background
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        # NOTE: On Vista this causes problems when the tab
        # key is pressed for push buttons so disable the
        # theme background drawing for these widgets for
        # now.
        if (!OS::IsWinCE && OS::WIN32_VERSION < OS._version(6, 0))
          self.attr_state |= THEME_BACKGROUND
        else
          if (((self.attr_style & (SWT::PUSH | SWT::TOGGLE))).equal?(0))
            self.attr_state |= THEME_BACKGROUND
          end
        end
      end
      # Bug in Windows.  For some reason, the HBRUSH that
      # is returned from WM_CTRLCOLOR is misaligned when
      # the button uses it to draw.  If the brush is a solid
      # color, this does not matter.  However, if the brush
      # contains an image, the image is misaligned.  The
      # fix is to draw the background in WM_CTRLCOLOR.
      # 
      # NOTE: For comctl32.dll 6.0 with themes disabled,
      # drawing in WM_ERASEBKGND will draw on top of the
      # text of the control.
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        if (!((self.attr_style & SWT::RADIO)).equal?(0))
          self.attr_state |= DRAW_BACKGROUND
        end
      end
      # Feature in Windows.  Push buttons draw border around
      # the button using the default background color instead
      # of using the color provided by WM_CTRLCOLOR.  The fix
      # is to draw the background in WM_CTRLCOLOR.
      # 
      # NOTE: On Vista this causes problems when the tab key
      # is pressed for push buttons so disable the fix for now.
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        if (!OS::IsWinCE && OS::WIN32_VERSION < OS._version(6, 0))
          if (!((self.attr_style & (SWT::PUSH | SWT::TOGGLE))).equal?(0))
            self.attr_state |= DRAW_BACKGROUND
          end
        end
      end
    end
    
    typesig { [] }
    def default_background
      if (!((self.attr_style & (SWT::PUSH | SWT::TOGGLE))).equal?(0))
        return OS._get_sys_color(OS::COLOR_BTNFACE)
      end
      return super
    end
    
    typesig { [] }
    def default_foreground
      return OS._get_sys_color(OS::COLOR_BTNTEXT)
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      super(enabled)
      # Bug in Windows.  When a button control is right-to-left and
      # is disabled, the first pixel of the text is clipped.   The
      # fix is to add a space to both sides of the text.
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        if (OS::COMCTL32_MAJOR < 6 || !OS._is_app_themed)
          bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
          has_image = !((bits & (OS::BS_BITMAP | OS::BS_ICON))).equal?(0)
          if (!has_image)
            string = enabled ? @text : " " + @text + " "
            buffer = TCHAR.new(get_code_page, string, true)
            OS._set_window_text(self.attr_handle, buffer)
          end
        end
      end
      # Bug in Windows.  When a button has the style BS_CHECKBOX
      # or BS_RADIOBUTTON, is checked, and is displaying both an
      # image and some text, when BCM_SETIMAGELIST is used to
      # assign an image list for each of the button states, the
      # button does not draw properly.  When the user drags the
      # mouse in and out of the button, it draws using a blank
      # image.  The fix is to set the complete image list only
      # when the button is disabled.
      if (OS::COMCTL32_MAJOR >= 6)
        if (!(@image_list).nil?)
          button_image_list = BUTTON_IMAGELIST.new
          OS._send_message(self.attr_handle, OS::BCM_GETIMAGELIST, 0, button_image_list)
          if (!(@image_list).nil?)
            @image_list.dispose
          end
          @image_list = ImageList.new(self.attr_style & SWT::RIGHT_TO_LEFT)
          if (OS._is_window_enabled(self.attr_handle))
            @image_list.add(@image)
          else
            if (!(@disabled_image).nil?)
              @disabled_image.dispose
            end
            @disabled_image = Image.new(self.attr_display, @image, SWT::IMAGE_DISABLE)
            @image_list.add(@disabled_image)
          end
          button_image_list.attr_himl = @image_list.get_handle
          OS._send_message(self.attr_handle, OS::BCM_SETIMAGELIST, 0, button_image_list)
          # Bug in Windows.  Under certain cirumstances yet to be
          # isolated, BCM_SETIMAGELIST does not redraw the control
          # when an image is set.  The fix is to force a redraw.
          OS._invalidate_rect(self.attr_handle, nil, true)
        end
      end
    end
    
    typesig { [] }
    # Returns a value which describes the position of the
    # text or image in the receiver. The value will be one of
    # <code>LEFT</code>, <code>RIGHT</code> or <code>CENTER</code>
    # unless the receiver is an <code>ARROW</code> button, in
    # which case, the alignment will indicate the direction of
    # the arrow (one of <code>LEFT</code>, <code>RIGHT</code>,
    # <code>UP</code> or <code>DOWN</code>).
    # 
    # @return the alignment
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_alignment
      check_widget
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        if (!((self.attr_style & SWT::UP)).equal?(0))
          return SWT::UP
        end
        if (!((self.attr_style & SWT::DOWN)).equal?(0))
          return SWT::DOWN
        end
        if (!((self.attr_style & SWT::LEFT)).equal?(0))
          return SWT::LEFT
        end
        if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          return SWT::RIGHT
        end
        return SWT::UP
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
    def get_default
      if (((self.attr_style & SWT::PUSH)).equal?(0))
        return false
      end
      bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      return !((bits & OS::BS_DEFPUSHBUTTON)).equal?(0)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is grayed,
    # and false otherwise. When the widget does not have
    # the <code>CHECK</code> style, return false.
    # 
    # @return the grayed state of the checkbox
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def get_grayed
      check_widget
      if (((self.attr_style & SWT::CHECK)).equal?(0))
        return false
      end
      return @grayed
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
    # Returns the widget message. When the widget is created
    # with the style <code>SWT.COMMAND</code>, the message text
    # is displayed to provide further information for the user.
    # 
    # @return the widget message
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.3
    # 
    # public
    def get_message
      check_widget
      return @message
    end
    
    typesig { [] }
    def get_name_text
      return get_text
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is selected,
    # and false otherwise.
    # <p>
    # When the receiver is of type <code>CHECK</code> or <code>RADIO</code>,
    # it is selected when it is checked. When it is of type <code>TOGGLE</code>,
    # it is selected when it is pushed in. If the receiver is of any other type,
    # this method returns false.
    # 
    # @return the selection state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_selection
      check_widget
      if (((self.attr_style & (SWT::CHECK | SWT::RADIO | SWT::TOGGLE))).equal?(0))
        return false
      end
      # long
      flags = OS._send_message(self.attr_handle, OS::BM_GETCHECK, 0, 0)
      return !(flags).equal?(OS::BST_UNCHECKED)
    end
    
    typesig { [] }
    # Returns the receiver's text, which will be an empty
    # string if it has never been set or if the receiver is
    # an <code>ARROW</code> button.
    # 
    # @return the receiver's text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_text
      check_widget
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        return ""
      end
      return @text
    end
    
    typesig { [] }
    def is_tab_item
      if (!((self.attr_style & SWT::PUSH)).equal?(0))
        return is_tab_group
      end
      return super
    end
    
    typesig { [::Java::Char] }
    def mnemonic_hit(ch)
      if (!set_focus)
        return false
      end
      # Feature in Windows.  When a radio button gets focus,
      # it selects the button in WM_SETFOCUS.  Therefore, it
      # is not necessary to click the button or send events
      # because this has already happened in WM_SETFOCUS.
      if (((self.attr_style & SWT::RADIO)).equal?(0))
        click
      end
      return true
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
        flags = OS::PRF_CLIENT | OS::PRF_NONCLIENT | OS::PRF_ERASEBKGND | OS::PRF_CHILDREN
        OS._send_message(hwnd, OS::WM_PRINT, h_dc, flags)
      end
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@image_list).nil?)
        @image_list.dispose
      end
      @image_list = nil
      if (!(@disabled_image).nil?)
        @disabled_image.dispose
      end
      @disabled_image = nil
      if (!(@image2).nil?)
        @image2.dispose
      end
      @image2 = nil
      @text = RJava.cast_to_string(nil)
      @image = nil
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
    def select_radio
      # This code is intentionally commented.  When two groups
      # of radio buttons with the same parent are separated by
      # another control, the correct behavior should be that
      # the two groups act independently.  This is consistent
      # with radio tool and menu items.  The commented code
      # implements this behavior.
      # 
      # int index = 0;
      # Control [] children = parent._getChildren ();
      # while (index < children.length && children [index] != this) index++;
      # int i = index - 1;
      # while (i >= 0 && children [i].setRadioSelection (false)) --i;
      # int j = index + 1;
      # while (j < children.length && children [j].setRadioSelection (false)) j++;
      # setSelection (true);
      children = self.attr_parent.__get_children
      i = 0
      while i < children.attr_length
        child = children[i]
        if (!(self).equal?(child))
          child.set_radio_selection(false)
        end
        i += 1
      end
      set_selection(true)
    end
    
    typesig { [::Java::Int] }
    # Controls how text, images and arrows will be displayed
    # in the receiver. The argument should be one of
    # <code>LEFT</code>, <code>RIGHT</code> or <code>CENTER</code>
    # unless the receiver is an <code>ARROW</code> button, in
    # which case, the argument indicates the direction of
    # the arrow (one of <code>LEFT</code>, <code>RIGHT</code>,
    # <code>UP</code> or <code>DOWN</code>).
    # 
    # @param alignment the new alignment
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_alignment(alignment)
      check_widget
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        if (((self.attr_style & (SWT::UP | SWT::DOWN | SWT::LEFT | SWT::RIGHT))).equal?(0))
          return
        end
        self.attr_style &= ~(SWT::UP | SWT::DOWN | SWT::LEFT | SWT::RIGHT)
        self.attr_style |= alignment & (SWT::UP | SWT::DOWN | SWT::LEFT | SWT::RIGHT)
        OS._invalidate_rect(self.attr_handle, nil, true)
        return
      end
      if (((alignment & (SWT::LEFT | SWT::RIGHT | SWT::CENTER))).equal?(0))
        return
      end
      self.attr_style &= ~(SWT::LEFT | SWT::RIGHT | SWT::CENTER)
      self.attr_style |= alignment & (SWT::LEFT | SWT::RIGHT | SWT::CENTER)
      old_bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      new_bits = old_bits
      new_bits &= ~(OS::BS_LEFT | OS::BS_CENTER | OS::BS_RIGHT)
      if (!((self.attr_style & SWT::LEFT)).equal?(0))
        new_bits |= OS::BS_LEFT
      end
      if (!((self.attr_style & SWT::CENTER)).equal?(0))
        new_bits |= OS::BS_CENTER
      end
      if (!((self.attr_style & SWT::RIGHT)).equal?(0))
        new_bits |= OS::BS_RIGHT
      end
      if (OS::COMCTL32_MAJOR >= 6)
        if (!(@image_list).nil?)
          button_image_list = BUTTON_IMAGELIST.new
          button_image_list.attr_himl = @image_list.get_handle
          if ((@text.length).equal?(0))
            if (!((self.attr_style & SWT::LEFT)).equal?(0))
              button_image_list.attr_u_align = OS::BUTTON_IMAGELIST_ALIGN_LEFT
            end
            if (!((self.attr_style & SWT::CENTER)).equal?(0))
              button_image_list.attr_u_align = OS::BUTTON_IMAGELIST_ALIGN_CENTER
            end
            if (!((self.attr_style & SWT::RIGHT)).equal?(0))
              button_image_list.attr_u_align = OS::BUTTON_IMAGELIST_ALIGN_RIGHT
            end
          else
            button_image_list.attr_u_align = OS::BUTTON_IMAGELIST_ALIGN_LEFT
            button_image_list.attr_margin_left = compute_left_margin
            button_image_list.attr_margin_right = MARGIN
            new_bits &= ~(OS::BS_CENTER | OS::BS_RIGHT)
            new_bits |= OS::BS_LEFT
          end
          OS._send_message(self.attr_handle, OS::BCM_SETIMAGELIST, 0, button_image_list)
        end
      end
      if (!(new_bits).equal?(old_bits))
        OS._set_window_long(self.attr_handle, OS::GWL_STYLE, new_bits)
        OS._invalidate_rect(self.attr_handle, nil, true)
      end
    end
    
    typesig { [::Java::Boolean] }
    def set_default(value)
      if (((self.attr_style & SWT::PUSH)).equal?(0))
        return
      end
      # long
      hwnd_shell = menu_shell.attr_handle
      bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      if (value)
        bits |= OS::BS_DEFPUSHBUTTON
        OS._send_message(hwnd_shell, OS::DM_SETDEFID, self.attr_handle, 0)
      else
        bits &= ~OS::BS_DEFPUSHBUTTON
        OS._send_message(hwnd_shell, OS::DM_SETDEFID, 0, 0)
      end
      OS._send_message(self.attr_handle, OS::BM_SETSTYLE, bits, 1)
    end
    
    typesig { [] }
    def set_fixed_focus
      # Feature in Windows.  When a radio button gets focus,
      # it selects the button in WM_SETFOCUS.  The fix is to
      # not assign focus to an unselected radio button.
      if (!((self.attr_style & SWT::RADIO)).equal?(0) && !get_selection)
        return false
      end
      return super
    end
    
    typesig { [Image] }
    # Sets the receiver's image to the argument, which may be
    # <code>null</code> indicating that no image should be displayed.
    # <p>
    # Note that a Button can display an image and text simultaneously
    # on Windows (starting with XP), GTK+ and OSX.  On other platforms,
    # a Button that has an image and text set into it will display the
    # image or text that was set most recently.
    # </p>
    # @param image the image to display on the receiver (may be <code>null</code>)
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
      if (!(image).nil? && image.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        return
      end
      @image = image
      # This code is intentionally commented
      # if (OS.COMCTL32_MAJOR < 6) {
      # if (image == null || text.length () != 0) {
      # _setText (text);
      # return;
      # }
      # }
      __set_image(image)
    end
    
    typesig { [::Java::Boolean] }
    # Sets the grayed state of the receiver.  This state change
    # only applies if the control was created with the SWT.CHECK
    # style.
    # 
    # @param grayed the new grayed state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def set_grayed(grayed)
      check_widget
      if (((self.attr_style & SWT::CHECK)).equal?(0))
        return
      end
      @grayed = grayed
      # long
      flags = OS._send_message(self.attr_handle, OS::BM_GETCHECK, 0, 0)
      if (grayed)
        if ((flags).equal?(OS::BST_CHECKED))
          update_selection(OS::BST_INDETERMINATE)
        end
      else
        if ((flags).equal?(OS::BST_INDETERMINATE))
          update_selection(OS::BST_CHECKED)
        end
      end
    end
    
    typesig { [String] }
    # Sets the widget message. When the widget is created
    # with the style <code>SWT.COMMAND</code>, the message text
    # is displayed to provide further information for the user.
    # 
    # @param message the new message
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the string is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.3
    # 
    # public
    def set_message(message)
      check_widget
      if ((message).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      @message = message
      if (OS::COMCTL32_VERSION >= OS._version(6, 1))
        if (!((self.attr_style & SWT::COMMAND)).equal?(0))
          length_ = message.length
          chars = CharArray.new(length_ + 1)
          message.get_chars(0, length_, chars, 0)
          OS._send_message(self.attr_handle, OS::BCM_SETNOTE, 0, chars)
        end
      end
    end
    
    typesig { [] }
    def set_radio_focus
      if (((self.attr_style & SWT::RADIO)).equal?(0) || !get_selection)
        return false
      end
      return set_focus
    end
    
    typesig { [::Java::Boolean] }
    def set_radio_selection(value)
      if (((self.attr_style & SWT::RADIO)).equal?(0))
        return false
      end
      if (!(get_selection).equal?(value))
        set_selection(value)
        post_event(SWT::Selection)
      end
      return true
    end
    
    typesig { [] }
    def set_saved_focus
      # Feature in Windows.  When a radio button gets focus,
      # it selects the button in WM_SETFOCUS.  If the previous
      # saved focus widget was a radio button, allowing the shell
      # to automatically restore the focus to the previous radio
      # button will unexpectedly check that button.  The fix is to
      # not assign focus to an unselected radio button.
      if (!((self.attr_style & SWT::RADIO)).equal?(0) && !get_selection)
        return false
      end
      return super
    end
    
    typesig { [::Java::Boolean] }
    # Sets the selection state of the receiver, if it is of type <code>CHECK</code>,
    # <code>RADIO</code>, or <code>TOGGLE</code>.
    # 
    # <p>
    # When the receiver is of type <code>CHECK</code> or <code>RADIO</code>,
    # it is selected when it is checked. When it is of type <code>TOGGLE</code>,
    # it is selected when it is pushed in.
    # 
    # @param selected the new selection state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_selection(selected)
      check_widget
      if (((self.attr_style & (SWT::CHECK | SWT::RADIO | SWT::TOGGLE))).equal?(0))
        return
      end
      flags = selected ? OS::BST_CHECKED : OS::BST_UNCHECKED
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        if (selected && @grayed)
          flags = OS::BST_INDETERMINATE
        end
      end
      update_selection(flags)
    end
    
    typesig { [String] }
    # Sets the receiver's text.
    # <p>
    # This method sets the button label.  The label may include
    # the mnemonic character but must not contain line delimiters.
    # </p>
    # <p>
    # Mnemonics are indicated by an '&amp;' that causes the next
    # character to be the mnemonic.  When the user presses a
    # key sequence that matches the mnemonic, a selection
    # event occurs. On most platforms, the mnemonic appears
    # underlined but may be emphasized in a platform specific
    # manner.  The mnemonic indicator character '&amp;' can be
    # escaped by doubling it in the string, causing a single
    # '&amp;' to be displayed.
    # </p><p>
    # Note that a Button can display an image and text simultaneously
    # on Windows (starting with XP), GTK+ and OSX.  On other platforms,
    # a Button that has an image and text set into it will display the
    # image or text that was set most recently.
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
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        return
      end
      @text = string
      # This code is intentionally commented
      # if (OS.COMCTL32_MAJOR < 6) {
      # if (text.length () == 0 && image != null) {
      # _setImage (image);
      # return;
      # }
      # }
      __set_text(string)
    end
    
    typesig { [::Java::Int] }
    def update_selection(flags)
      if (!(flags).equal?(OS._send_message(self.attr_handle, OS::BM_GETCHECK, 0, 0)))
        # Feature in Windows. When BM_SETCHECK is used
        # to set the checked state of a radio or check
        # button, it sets the WM_TABSTOP style.  This
        # is undocumented and unwanted.  The fix is
        # to save and restore the window style bits.
        bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
        if (!((self.attr_style & SWT::CHECK)).equal?(0))
          if ((flags).equal?(OS::BST_INDETERMINATE))
            bits &= ~OS::BS_CHECKBOX
            bits |= OS::BS_3STATE
          else
            bits |= OS::BS_CHECKBOX
            bits &= ~OS::BS_3STATE
          end
          if (!(bits).equal?(OS._get_window_long(self.attr_handle, OS::GWL_STYLE)))
            OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits)
          end
        end
        OS._send_message(self.attr_handle, OS::BM_SETCHECK, flags, 0)
        if (!(bits).equal?(OS._get_window_long(self.attr_handle, OS::GWL_STYLE)))
          OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits)
        end
      end
    end
    
    typesig { [] }
    def widget_style
      bits = super
      if (!((self.attr_style & SWT::FLAT)).equal?(0))
        bits |= OS::BS_FLAT
      end
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        return bits | OS::BS_OWNERDRAW
      end
      if (!((self.attr_style & SWT::LEFT)).equal?(0))
        bits |= OS::BS_LEFT
      end
      if (!((self.attr_style & SWT::CENTER)).equal?(0))
        bits |= OS::BS_CENTER
      end
      if (!((self.attr_style & SWT::RIGHT)).equal?(0))
        bits |= OS::BS_RIGHT
      end
      if (!((self.attr_style & SWT::PUSH)).equal?(0))
        return bits | OS::BS_PUSHBUTTON | OS::WS_TABSTOP
      end
      if (!((self.attr_style & SWT::CHECK)).equal?(0))
        return bits | OS::BS_CHECKBOX | OS::WS_TABSTOP
      end
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        return bits | OS::BS_RADIOBUTTON
      end
      if (!((self.attr_style & SWT::TOGGLE)).equal?(0))
        return bits | OS::BS_PUSHLIKE | OS::BS_CHECKBOX | OS::WS_TABSTOP
      end
      if (!((self.attr_style & SWT::COMMAND)).equal?(0))
        return bits | OS::BS_COMMANDLINK | OS::WS_TABSTOP
      end
      return bits | OS::BS_PUSHBUTTON | OS::WS_TABSTOP
    end
    
    typesig { [] }
    def window_class
      return ButtonClass
    end
    
    typesig { [] }
    # long
    def window_proc
      return ButtonProc
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def _wm_erasebkgnd(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      # Bug in Windows.  For some reason, the HBRUSH that
      # is returned from WM_CTRLCOLOR is misaligned when
      # the button uses it to draw.  If the brush is a solid
      # color, this does not matter.  However, if the brush
      # contains an image, the image is misaligned.  The
      # fix is to draw the background in WM_ERASEBKGND.
      if (OS::COMCTL32_MAJOR < 6)
        if (!((self.attr_style & (SWT::RADIO | SWT::CHECK))).equal?(0))
          if (!(find_image_control).nil?)
            draw_background(w_param)
            return LRESULT::ONE
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
      if (!((self.attr_style & SWT::ARROW)).equal?(0))
        return LRESULT.new(OS::DLGC_STATIC)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_killfocus(w_param, l_param)
      result = super(w_param, l_param)
      if (!((self.attr_style & SWT::PUSH)).equal?(0) && get_default)
        menu_shell.set_default_button(nil, false)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttondown(w_param, l_param)
      if (@ignore_mouse)
        return nil
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttonup(w_param, l_param)
      if (@ignore_mouse)
        return nil
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_setfocus(w_param, l_param)
      # Feature in Windows. When Windows sets focus to
      # a radio button, it sets the WM_TABSTOP style.
      # This is undocumented and unwanted.  The fix is
      # to save and restore the window style bits.
      bits = 0
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        bits = OS._get_window_long(self.attr_handle, OS::GWL_STYLE)
      end
      result = super(w_param, l_param)
      if (!((self.attr_style & SWT::RADIO)).equal?(0))
        OS._set_window_long(self.attr_handle, OS::GWL_STYLE, bits)
      end
      if (!((self.attr_style & SWT::PUSH)).equal?(0))
        menu_shell.set_default_button(self, false)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_size(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (OS::COMCTL32_MAJOR >= 6)
        if (!((self.attr_style & (SWT::PUSH | SWT::TOGGLE))).equal?(0))
          if (!(@image_list).nil? && !(@text.length).equal?(0))
            button_image_list = BUTTON_IMAGELIST.new
            OS._send_message(self.attr_handle, OS::BCM_GETIMAGELIST, 0, button_image_list)
            button_image_list.attr_u_align = OS::BUTTON_IMAGELIST_ALIGN_LEFT
            button_image_list.attr_margin_left = compute_left_margin
            button_image_list.attr_margin_right = MARGIN
            OS._send_message(self.attr_handle, OS::BCM_SETIMAGELIST, 0, button_image_list)
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_syscolorchange(w_param, l_param)
      result = super(w_param, l_param)
      if (!(result).nil?)
        return result
      end
      if (!(@image2).nil?)
        __set_image(@image)
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
      # a button, it sends WM_CTLCOLORBTN to get the foreground
      # and background.  If drawing happens in WM_CTLCOLORBTN,
      # it will overwrite the contents of the control.  The
      # fix is draw the button without drawing the background
      # and avoid the button window proc.
      # 
      # NOTE:  This only happens for radio, check and toggle
      # buttons.
      if (!OS::IsWinCE && OS::WIN32_VERSION >= OS._version(6, 0))
        if (!((self.attr_style & (SWT::RADIO | SWT::CHECK | SWT::TOGGLE))).equal?(0))
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
      when OS::BN_CLICKED, OS::BN_DOUBLECLICKED
        if (!((self.attr_style & (SWT::CHECK | SWT::TOGGLE))).equal?(0))
          set_selection(!get_selection)
        else
          if (!((self.attr_style & SWT::RADIO)).equal?(0))
            if (!((self.attr_parent.get_style & SWT::NO_RADIO_GROUP)).equal?(0))
              set_selection(!get_selection)
            else
              select_radio
            end
          end
        end
        post_event(SWT::Selection)
      end
      return super(w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def wm_color_child(w_param, l_param)
      # Bug in Windows.  For some reason, the HBRUSH that
      # is returned from WM_CTRLCOLOR is misaligned when
      # the button uses it to draw.  If the brush is a solid
      # color, this does not matter.  However, if the brush
      # contains an image, the image is misaligned.  The
      # fix is to draw the background in WM_ERASEBKGND.
      result = super(w_param, l_param)
      if (OS::COMCTL32_MAJOR < 6)
        if (!((self.attr_style & (SWT::RADIO | SWT::CHECK))).equal?(0))
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
    def wm_draw_child(w_param, l_param)
      if (((self.attr_style & SWT::ARROW)).equal?(0))
        return super(w_param, l_param)
      end
      struct = DRAWITEMSTRUCT.new
      OS._move_memory(struct, l_param, DRAWITEMSTRUCT.attr_sizeof)
      rect = RECT.new
      OS._set_rect(rect, struct.attr_left, struct.attr_top, struct.attr_right, struct.attr_bottom)
      if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
        i_state_id = OS::ABS_LEFTNORMAL
        case (self.attr_style & (SWT::UP | SWT::DOWN | SWT::LEFT | SWT::RIGHT))
        when SWT::UP
          i_state_id = OS::ABS_UPNORMAL
        when SWT::DOWN
          i_state_id = OS::ABS_DOWNNORMAL
        when SWT::LEFT
          i_state_id = OS::ABS_LEFTNORMAL
        when SWT::RIGHT
          i_state_id = OS::ABS_RIGHTNORMAL
        end
        # NOTE: The normal, hot, pressed and disabled state is
        # computed relying on the fact that the increment between
        # the direction states is invariant (always separated by 4).
        if (!get_enabled)
          i_state_id += OS::ABS_UPDISABLED - OS::ABS_UPNORMAL
        end
        if (!((struct.attr_item_state & OS::ODS_SELECTED)).equal?(0))
          i_state_id += OS::ABS_UPPRESSED - OS::ABS_UPNORMAL
        end
        OS._draw_theme_background(self.attr_display.h_scroll_bar_theme, struct.attr_h_dc, OS::SBP_ARROWBTN, i_state_id, rect, nil)
      else
        u_state = OS::DFCS_SCROLLLEFT
        case (self.attr_style & (SWT::UP | SWT::DOWN | SWT::LEFT | SWT::RIGHT))
        when SWT::UP
          u_state = OS::DFCS_SCROLLUP
        when SWT::DOWN
          u_state = OS::DFCS_SCROLLDOWN
        when SWT::LEFT
          u_state = OS::DFCS_SCROLLLEFT
        when SWT::RIGHT
          u_state = OS::DFCS_SCROLLRIGHT
        end
        if (!get_enabled)
          u_state |= OS::DFCS_INACTIVE
        end
        if (((self.attr_style & SWT::FLAT)).equal?(SWT::FLAT))
          u_state |= OS::DFCS_FLAT
        end
        if (!((struct.attr_item_state & OS::ODS_SELECTED)).equal?(0))
          u_state |= OS::DFCS_PUSHED
        end
        OS._draw_frame_control(struct.attr_h_dc, rect, OS::DFC_SCROLL, u_state)
      end
      return nil
    end
    
    private
    alias_method :initialize__button, :initialize
  end
  
end
