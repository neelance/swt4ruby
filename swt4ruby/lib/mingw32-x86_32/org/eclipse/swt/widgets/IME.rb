require "rjava"

# Copyright (c) 2007, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Widgets
  module IMEImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class represent input method editors.
  # These are typically in-line pre-edit text areas that allow
  # the user to compose characters from Far Eastern languages
  # such as Japanese, Chinese or Korean.
  # 
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>(none)</dd>
  # <dt><b>Events:</b></dt>
  # <dd>ImeComposition</dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.4
  # @noextend This class is not intended to be subclassed by clients.
  class IME < IMEImports.const_get :Widget
    include_class_members IMEImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :caret_offset
    alias_method :attr_caret_offset, :caret_offset
    undef_method :caret_offset
    alias_method :attr_caret_offset=, :caret_offset=
    undef_method :caret_offset=
    
    attr_accessor :start_offset
    alias_method :attr_start_offset, :start_offset
    undef_method :start_offset
    alias_method :attr_start_offset=, :start_offset=
    undef_method :start_offset=
    
    attr_accessor :commit_count
    alias_method :attr_commit_count, :commit_count
    undef_method :commit_count
    alias_method :attr_commit_count=, :commit_count=
    undef_method :commit_count=
    
    attr_accessor :text
    alias_method :attr_text, :text
    undef_method :text
    alias_method :attr_text=, :text=
    undef_method :text=
    
    attr_accessor :ranges
    alias_method :attr_ranges, :ranges
    undef_method :ranges
    alias_method :attr_ranges=, :ranges=
    undef_method :ranges=
    
    attr_accessor :styles
    alias_method :attr_styles, :styles
    undef_method :styles
    alias_method :attr_styles=, :styles=
    undef_method :styles=
    
    class_module.module_eval {
      const_set_lazy(:WM_MSIME_MOUSE) { OS._register_window_message(TCHAR.new(0, "MSIMEMouseOperation", true)) }
      const_attr_reader  :WM_MSIME_MOUSE
      
      # $NON-NLS-1$
      const_set_lazy(:IID_ITfInputProcessorProfiles) { Array.typed(::Java::Byte).new(16) { 0 } }
      const_attr_reader  :IID_ITfInputProcessorProfiles
      
      const_set_lazy(:IID_ITfDisplayAttributeProvider) { Array.typed(::Java::Byte).new(16) { 0 } }
      const_attr_reader  :IID_ITfDisplayAttributeProvider
      
      const_set_lazy(:CLSID_TF_InputProcessorProfiles) { Array.typed(::Java::Byte).new(16) { 0 } }
      const_attr_reader  :CLSID_TF_InputProcessorProfiles
      
      const_set_lazy(:GUID_TFCAT_TIP_KEYBOARD) { Array.typed(::Java::Byte).new(16) { 0 } }
      const_attr_reader  :GUID_TFCAT_TIP_KEYBOARD
      
      when_class_loaded do
        OS._iidfrom_string("{1F02B6C5-7842-4EE6-8A0B-9A24183A95CA}\0".to_char_array, IID_ITfInputProcessorProfiles) # $NON-NLS-1$
        OS._iidfrom_string("{fee47777-163c-4769-996a-6e9c50ad8f54}\0".to_char_array, IID_ITfDisplayAttributeProvider) # $NON-NLS-1$
        OS._iidfrom_string("{33C53A50-F456-4884-B049-85FD643ECFED}\0".to_char_array, CLSID_TF_InputProcessorProfiles) # $NON-NLS-1$
        OS._iidfrom_string("{34745C63-B2F0-4784-8B67-5E12C8701A31}\0".to_char_array, GUID_TFCAT_TIP_KEYBOARD) # $NON-NLS-1$
      end
      
      # TextLayout has a copy of these constants
      const_set_lazy(:UNDERLINE_IME_DOT) { 1 << 16 }
      const_attr_reader  :UNDERLINE_IME_DOT
      
      const_set_lazy(:UNDERLINE_IME_DASH) { 2 << 16 }
      const_attr_reader  :UNDERLINE_IME_DASH
      
      const_set_lazy(:UNDERLINE_IME_THICK) { 3 << 16 }
      const_attr_reader  :UNDERLINE_IME_THICK
    }
    
    typesig { [] }
    # Prevents uninitialized instances from being created outside the package.
    def initialize
      @parent = nil
      @caret_offset = 0
      @start_offset = 0
      @commit_count = 0
      @text = nil
      @ranges = nil
      @styles = nil
      super()
    end
    
    typesig { [Canvas, ::Java::Int] }
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
    # @param parent a canvas control which will be the parent of the new instance (cannot be null)
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
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @parent = nil
      @caret_offset = 0
      @start_offset = 0
      @commit_count = 0
      @text = nil
      @ranges = nil
      @styles = nil
      super(parent, style)
      @parent = parent
      create_widget
    end
    
    typesig { [] }
    def create_widget
      @text = "" # $NON-NLS-1$
      @start_offset = -1
      if ((@parent.get_ime).nil?)
        @parent.set_ime(self)
      end
    end
    
    typesig { [] }
    # Returns the offset of the caret from the start of the document.
    # The caret is within the current composition.
    # 
    # @return the caret offset
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_caret_offset
      check_widget
      return @start_offset + @caret_offset
    end
    
    typesig { [] }
    # Returns the commit count of the composition.  This is the
    # number of characters that have been composed.  When the
    # commit count is equal to the length of the composition
    # text, then the in-line edit operation is complete.
    # 
    # @return the commit count
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see IME#getText
    def get_commit_count
      check_widget
      return @commit_count
    end
    
    typesig { [] }
    # Returns the offset of the composition from the start of the document.
    # This is the start offset of the composition within the document and
    # in not changed by the input method editor itself during the in-line edit
    # session.
    # 
    # @return the offset of the composition
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_composition_offset
      check_widget
      return @start_offset
    end
    
    typesig { [::Java::Short, ::Java::Int] }
    def get_display_attribute(langid, att_info)
      # long
      # long
      p_profiles = Array.typed(::Java::Int).new(1) { 0 }
      hr = OS._co_create_instance(CLSID_TF_InputProcessorProfiles, 0, OS::CLSCTX_INPROC_SERVER, IID_ITfInputProcessorProfiles, p_profiles)
      pda = nil
      if ((hr).equal?(OS::S_OK))
        pclsid = Array.typed(::Java::Byte).new(16) { 0 }
        pguid_profile = Array.typed(::Java::Byte).new(16) { 0 }
        # pProfiles.GetDefaultLanguageProfile ()
        hr = OS._vtbl_call(8, p_profiles[0], langid, GUID_TFCAT_TIP_KEYBOARD, pclsid, pguid_profile)
        if ((hr).equal?(OS::S_OK))
          # long
          # long
          p_provider = Array.typed(::Java::Int).new(1) { 0 }
          hr = OS._co_create_instance(pclsid, 0, OS::CLSCTX_INPROC_SERVER, IID_ITfDisplayAttributeProvider, p_provider)
          if ((hr).equal?(OS::S_OK))
            # long
            # long
            p_enum = Array.typed(::Java::Int).new(1) { 0 }
            # pProvider.EnumDisplayAttributeInfo ()
            hr = OS._vtbl_call(3, p_provider[0], p_enum)
            if ((hr).equal?(OS::S_OK))
              # long
              # long
              p_disp_info = Array.typed(::Java::Int).new(1) { 0 }
              temp_pda = TF_DISPLAYATTRIBUTE.new
              # pEnum.Next ()
              while (((hr = OS._vtbl_call(4, p_enum[0], 1, p_disp_info, nil))).equal?(OS::S_OK))
                # pDispInfo.GetAttributeInfo();
                OS._vtbl_call(5, p_disp_info[0], temp_pda)
                # pDispInfo.Release ()
                OS._vtbl_call(2, p_disp_info[0])
                if ((temp_pda.attr_b_attr).equal?(att_info))
                  pda = temp_pda
                  break
                end
              end
              # pEnum.Release ()
              hr = OS._vtbl_call(2, p_enum[0])
            end
            # pProvider.Release ()
            hr = OS._vtbl_call(2, p_provider[0])
          end
        end
        # pProfiles.Release ()
        hr = OS._vtbl_call(2, p_profiles[0])
      end
      if ((pda).nil?)
        pda = TF_DISPLAYATTRIBUTE.new
        case (att_info)
        when OS::TF_ATTR_INPUT
          pda.attr_ls_style = OS::TF_LS_SQUIGGLE
        when OS::TF_ATTR_CONVERTED, OS::TF_ATTR_TARGET_CONVERTED
          pda.attr_ls_style = OS::TF_LS_SOLID
          pda.attr_f_bold_line = (att_info).equal?(OS::TF_ATTR_TARGET_CONVERTED)
        end
      end
      return pda
    end
    
    typesig { [] }
    # Returns the ranges for the style that should be applied during the
    # in-line edit session.
    # <p>
    # The ranges array contains start and end pairs.  Each pair refers to
    # the corresponding style in the styles array.  For example, the pair
    # that starts at ranges[n] and ends at ranges[n+1] uses the style
    # at styles[n/2] returned by <code>getStyles()</code>.
    # </p>
    # @return the ranges for the styles
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see IME#getStyles
    def get_ranges
      check_widget
      if ((@ranges).nil?)
        return Array.typed(::Java::Int).new(0) { 0 }
      end
      result = Array.typed(::Java::Int).new(@ranges.attr_length) { 0 }
      i = 0
      while i < result.attr_length
        result[i] = @ranges[i] + @start_offset
        i += 1
      end
      return result
    end
    
    typesig { [] }
    # Returns the styles for the ranges.
    # <p>
    # The ranges array contains start and end pairs.  Each pair refers to
    # the corresponding style in the styles array.  For example, the pair
    # that starts at ranges[n] and ends at ranges[n+1] uses the style
    # at styles[n/2].
    # </p>
    # 
    # @return the ranges for the styles
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see IME#getRanges
    def get_styles
      check_widget
      if ((@styles).nil?)
        return Array.typed(TextStyle).new(0) { nil }
      end
      result = Array.typed(TextStyle).new(@styles.attr_length) { nil }
      System.arraycopy(@styles, 0, result, 0, @styles.attr_length)
      return result
    end
    
    typesig { [] }
    # Returns the composition text.
    # <p>
    # The text for an IME is the characters in the widget that
    # are in the current composition. When the commit count is
    # equal to the length of the composition text, then the
    # in-line edit operation is complete.
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
      return @text
    end
    
    typesig { [] }
    # Returns <code>true</code> if the caret should be wide, and
    # <code>false</code> otherwise.  In some languages, for example
    # Korean, the caret is typically widened to the width of the
    # current character in the in-line edit session.
    # 
    # @return the wide caret state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_wide_caret
      check_widget
      # long
      layout = OS._get_keyboard_layout(0)
      lang_id = RJava.cast_to_short(OS._loword(layout))
      return (OS._primarylangid(lang_id)).equal?(OS::LANG_KOREAN)
    end
    
    typesig { [] }
    def is_inline_enabled
      if (OS::IsWinCE || OS::WIN32_VERSION < OS._version(5, 1))
        return false
      end
      return OS::IsDBLocale && hooks(SWT::ImeComposition)
    end
    
    typesig { [] }
    def release_parent
      super
      if ((self).equal?(@parent.get_ime))
        @parent.set_ime(nil)
      end
    end
    
    typesig { [] }
    def release_widget
      super
      @parent = nil
      @text = RJava.cast_to_string(nil)
      @styles = nil
      @ranges = nil
    end
    
    typesig { [::Java::Int] }
    # Sets the offset of the composition from the start of the document.
    # This is the start offset of the composition within the document and
    # in not changed by the input method editor itself during the in-line edit
    # session but may need to be changed by clients of the IME.  For example,
    # if during an in-line edit operation, a text editor inserts characters
    # above the IME, then the IME must be informed that the composition
    # offset has changed.
    # 
    # @param offset the offset of the composition
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_composition_offset(offset)
      check_widget
      if (offset < 0)
        return
      end
      if (!(@start_offset).equal?(-1))
        @start_offset = offset
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_ime_composition(w_param, l_param)
      if (!is_inline_enabled)
        return nil
      end
      @ranges = nil
      @styles = nil
      @caret_offset = @commit_count = 0
      # long
      hwnd = @parent.attr_handle
      # long
      h_imc = OS._imm_get_context(hwnd)
      code_page = @parent.get_code_page
      if (!(h_imc).equal?(0))
        buffer = nil
        if (!((l_param & OS::GCS_RESULTSTR)).equal?(0))
          length = OS._imm_get_composition_string(h_imc, OS::GCS_RESULTSTR, nil, 0)
          if (length > 0)
            buffer = TCHAR.new(code_page, length / TCHAR.attr_sizeof)
            OS._imm_get_composition_string(h_imc, OS::GCS_RESULTSTR, buffer, length)
            if ((@start_offset).equal?(-1))
              event = Event.new
              event.attr_detail = SWT::COMPOSITION_SELECTION
              send_event___org_eclipse_swt_widgets_ime_1(SWT::ImeComposition, event)
              @start_offset = event.attr_start
            end
            event = Event.new
            event.attr_detail = SWT::COMPOSITION_CHANGED
            event.attr_start = @start_offset
            event.attr_end = @start_offset + @text.length
            event.attr_text = @text = RJava.cast_to_string(!(buffer).nil? ? buffer.to_s : "") # $NON-NLS-1$
            @commit_count = @text.length
            send_event___org_eclipse_swt_widgets_ime_3(SWT::ImeComposition, event)
            chars = @text
            @text = "" # $NON-NLS-1$
            @start_offset = -1
            @commit_count = 0
            if (event.attr_doit)
              display = self.attr_display
              display.attr_last_key = 0
              display.attr_last_virtual = display.attr_last_null = display.attr_last_dead = false
              length = chars.length
              i = 0
              while i < length
                c = chars.char_at(i)
                display.attr_last_ascii = c
                event = Event.new
                event.attr_character = c
                @parent.send_event___org_eclipse_swt_widgets_ime_5(SWT::KeyDown, event)
                i += 1
              end
            end
          end
          if (((l_param & OS::GCS_COMPSTR)).equal?(0))
            return LRESULT::ONE
          end
        end
        buffer = nil
        if (!((l_param & OS::GCS_COMPSTR)).equal?(0))
          length_ = OS._imm_get_composition_string(h_imc, OS::GCS_COMPSTR, nil, 0)
          if (length_ > 0)
            buffer = TCHAR.new(code_page, length_ / TCHAR.attr_sizeof)
            OS._imm_get_composition_string(h_imc, OS::GCS_COMPSTR, buffer, length_)
            if (!((l_param & OS::GCS_CURSORPOS)).equal?(0))
              @caret_offset = OS._imm_get_composition_string(h_imc, OS::GCS_CURSORPOS, nil, 0)
            end
            clauses = nil
            if (!((l_param & OS::GCS_COMPCLAUSE)).equal?(0))
              length_ = OS._imm_get_composition_string(h_imc, OS::GCS_COMPCLAUSE, nil, 0)
              if (length_ > 0)
                clauses = Array.typed(::Java::Int).new(length_ / 4) { 0 }
                OS._imm_get_composition_string(h_imc, OS::GCS_COMPCLAUSE, clauses, length_)
              end
            end
            if (!((l_param & OS::GCS_COMPATTR)).equal?(0) && !(clauses).nil?)
              length_ = OS._imm_get_composition_string(h_imc, OS::GCS_COMPATTR, nil, 0)
              if (length_ > 0)
                attrs = Array.typed(::Java::Byte).new(length_) { 0 }
                OS._imm_get_composition_string(h_imc, OS::GCS_COMPATTR, attrs, length_)
                length_ = clauses.attr_length - 1
                @ranges = Array.typed(::Java::Int).new(length_ * 2) { 0 }
                @styles = Array.typed(TextStyle).new(length_) { nil }
                # long
                layout = OS._get_keyboard_layout(0)
                lang_id = RJava.cast_to_short(OS._loword(layout))
                attr = nil
                style = nil
                i = 0
                while i < length_
                  @ranges[i * 2] = clauses[i]
                  @ranges[i * 2 + 1] = clauses[i + 1] - 1
                  @styles[i] = style = TextStyle.new
                  attr = get_display_attribute(lang_id, attrs[clauses[i]])
                  if (!(attr).nil?)
                    case (attr.attr_cr_text.attr_type)
                    when OS::TF_CT_COLORREF
                      style.attr_foreground = Color.win32_new(self.attr_display, attr.attr_cr_text.attr_cr)
                    when OS::TF_CT_SYSCOLOR
                      color_ref = OS._get_sys_color(attr.attr_cr_text.attr_cr)
                      style.attr_foreground = Color.win32_new(self.attr_display, color_ref)
                    end
                    case (attr.attr_cr_bk.attr_type)
                    when OS::TF_CT_COLORREF
                      style.attr_background = Color.win32_new(self.attr_display, attr.attr_cr_bk.attr_cr)
                    when OS::TF_CT_SYSCOLOR
                      color_ref = OS._get_sys_color(attr.attr_cr_bk.attr_cr)
                      style.attr_background = Color.win32_new(self.attr_display, color_ref)
                    end
                    case (attr.attr_cr_line.attr_type)
                    when OS::TF_CT_COLORREF
                      style.attr_underline_color = Color.win32_new(self.attr_display, attr.attr_cr_line.attr_cr)
                    when OS::TF_CT_SYSCOLOR
                      color_ref = OS._get_sys_color(attr.attr_cr_line.attr_cr)
                      style.attr_underline_color = Color.win32_new(self.attr_display, color_ref)
                    end
                    style.attr_underline = !(attr.attr_ls_style).equal?(OS::TF_LS_NONE)
                    case (attr.attr_ls_style)
                    when OS::TF_LS_SQUIGGLE
                      style.attr_underline_style = SWT::UNDERLINE_SQUIGGLE
                    when OS::TF_LS_DASH
                      style.attr_underline_style = UNDERLINE_IME_DASH
                    when OS::TF_LS_DOT
                      style.attr_underline_style = UNDERLINE_IME_DOT
                    when OS::TF_LS_SOLID
                      style.attr_underline_style = attr.attr_f_bold_line ? UNDERLINE_IME_THICK : SWT::UNDERLINE_SINGLE
                    end
                  end
                  i += 1
                end
              end
            end
          end
          OS._imm_release_context(hwnd, h_imc)
        end
        end_ = @start_offset + @text.length
        if ((@start_offset).equal?(-1))
          event = Event.new
          event.attr_detail = SWT::COMPOSITION_SELECTION
          send_event___org_eclipse_swt_widgets_ime_7(SWT::ImeComposition, event)
          @start_offset = event.attr_start
          end_ = event.attr_end
        end
        event = Event.new
        event.attr_detail = SWT::COMPOSITION_CHANGED
        event.attr_start = @start_offset
        event.attr_end = end_
        event.attr_text = @text = RJava.cast_to_string(!(buffer).nil? ? buffer.to_s : "") # $NON-NLS-1$
        send_event___org_eclipse_swt_widgets_ime_9(SWT::ImeComposition, event)
        if ((@text.length).equal?(0))
          @start_offset = -1
          @ranges = nil
          @styles = nil
        end
      end
      return LRESULT::ONE
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_ime_composition_start(w_param, l_param)
      return is_inline_enabled ? LRESULT::ONE : nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_ime_endcomposition(w_param, l_param)
      return is_inline_enabled ? LRESULT::ONE : nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_killfocus(w_param, l_param)
      if (!is_inline_enabled)
        return nil
      end
      # long
      hwnd = @parent.attr_handle
      # long
      h_imc = OS._imm_get_context(hwnd)
      if (!(h_imc).equal?(0))
        if (OS._imm_get_open_status(h_imc))
          OS._imm_notify_ime(h_imc, OS::NI_COMPOSITIONSTR, OS::CPS_COMPLETE, 0)
        end
        OS._imm_release_context(hwnd, h_imc)
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _wm_lbuttondown(w_param, l_param)
      if (!is_inline_enabled)
        return nil
      end
      # long
      hwnd = @parent.attr_handle
      # long
      h_imc = OS._imm_get_context(hwnd)
      if (!(h_imc).equal?(0))
        if (OS._imm_get_open_status(h_imc))
          if (OS._imm_get_composition_string(h_imc, OS::GCS_COMPSTR, nil, 0) > 0)
            event = Event.new
            event.attr_detail = SWT::COMPOSITION_OFFSET
            event.attr_x = OS._get_x_lparam(l_param)
            event.attr_y = OS._get_y_lparam(l_param)
            send_event___org_eclipse_swt_widgets_ime_11(SWT::ImeComposition, event)
            offset = event.attr_index
            length_ = @text.length
            if (!(offset).equal?(-1) && !(@start_offset).equal?(-1) && @start_offset <= offset && offset < @start_offset + length_)
              # long
              ime_wnd = OS._imm_get_default_imewnd(hwnd)
              offset = event.attr_index + event.attr_count - @start_offset
              trailing = event.attr_count > 0 ? 1 : 2
              # long
              param = OS._makewparam(OS._makeword(OS::IMEMOUSE_LDOWN, trailing), offset)
              OS._send_message(ime_wnd, WM_MSIME_MOUSE, param, h_imc)
            else
              OS._imm_notify_ime(h_imc, OS::NI_COMPOSITIONSTR, OS::CPS_COMPLETE, 0)
            end
          end
        end
        OS._imm_release_context(hwnd, h_imc)
      end
      return nil
    end
    
    private
    alias_method :initialize__ime, :initialize
  end
  
end
