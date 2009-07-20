require "rjava"

# Copyright (c) 2007, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Widgets
  module IMEImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :TextRange
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
      const_set_lazy(:UNDERLINE_IME_INPUT) { 1 << 16 }
      const_attr_reader  :UNDERLINE_IME_INPUT
      
      const_set_lazy(:UNDERLINE_IME_TARGET_CONVERTED) { 2 << 16 }
      const_attr_reader  :UNDERLINE_IME_TARGET_CONVERTED
      
      const_set_lazy(:UNDERLINE_IME_CONVERTED) { 3 << 16 }
      const_attr_reader  :UNDERLINE_IME_CONVERTED
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
      @text = ""
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
      return false
    end
    
    typesig { [] }
    def is_inline_enabled
      return hooks(SWT::ImeComposition)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_text_input_offset_to_pos(next_handler, the_event, user_data)
      if (!is_inline_enabled)
        return OS.attr_event_not_handled_err
      end
      caret = @parent.attr_caret
      if ((caret).nil?)
        return OS.attr_event_not_handled_err
      end
      pt = Org::Eclipse::Swt::Internal::Carbon::Point.new
      sizeof = Org::Eclipse::Swt::Internal::Carbon::Point.attr_sizeof
      point = @parent.to_display(caret.attr_x, caret.attr_y + caret.attr_height)
      pt.attr_h = RJava.cast_to_short(point.attr_x)
      pt.attr_v = RJava.cast_to_short(point.attr_y)
      OS._set_event_parameter(the_event, OS.attr_k_event_param_text_input_reply_point, OS.attr_type_qdpoint, sizeof, pt)
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_text_input_pos_to_offset(next_handler, the_event, user_data)
      if (!is_inline_enabled)
        return OS.attr_event_not_handled_err
      end
      if ((@start_offset).equal?(-1))
        return OS.attr_event_not_handled_err
      end
      pt = Org::Eclipse::Swt::Internal::Carbon::Point.new
      sizeof = Org::Eclipse::Swt::Internal::Carbon::Point.attr_sizeof
      OS._get_event_parameter(the_event, OS.attr_k_event_param_text_input_send_current_point, OS.attr_type_qdpoint, nil, sizeof, nil, pt)
      point = @parent.to_control(pt.attr_h, pt.attr_v)
      event = Event.new
      event.attr_detail = SWT::COMPOSITION_OFFSET
      event.attr_x = point.attr_x
      event.attr_y = point.attr_y
      send_event(SWT::ImeComposition, event)
      hit_test = 0
      offset = event.attr_index + event.attr_count
      if ((offset).equal?(-1))
        hit_test = OS.attr_k_tsmoutside_of_body
      else
        if (@start_offset <= offset && offset < @start_offset + @text.length)
          hit_test = OS.attr_k_tsminside_of_active_input_area
          offset -= @start_offset
        else
          hit_test = OS.attr_k_tsminside_of_body
        end
      end
      OS._set_event_parameter(the_event, OS.attr_k_event_param_text_input_reply_text_offset, OS.attr_type_long_integer, 4, Array.typed(::Java::Int).new([offset * 2]))
      OS._set_event_parameter(the_event, OS.attr_k_event_param_text_input_reply_region_class, OS.attr_type_long_integer, 4, Array.typed(::Java::Int).new([hit_test]))
      OS._set_event_parameter(the_event, OS.attr_k_event_param_text_input_reply_leading_edge, OS.attr_type_boolean, 4, Array.typed(::Java::Boolean).new([(event.attr_count).equal?(0)]))
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_text_input_get_selected_text(next_handler, the_event, user_data)
      event = Event.new
      event.attr_detail = SWT::COMPOSITION_SELECTION
      send_event(SWT::ImeComposition, event)
      text = event.attr_text
      if (text.length > 0)
        buffer = CharArray.new(text.length)
        text.get_chars(0, buffer.attr_length, buffer, 0)
        OS._set_event_parameter(the_event, OS.attr_k_event_param_text_input_reply_text, OS.attr_type_unicode_text, buffer.attr_length * 2, buffer)
        return OS.attr_no_err
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_text_input_update_active_input_area(next_handler, the_event, user_data)
      if (!is_inline_enabled)
        return OS.attr_event_not_handled_err
      end
      @ranges = nil
      @styles = nil
      @caret_offset = @commit_count = 0
      length_ = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_text_input_send_text, OS.attr_type_unicode_text, nil, 0, length_, nil)
      chars = CharArray.new(length_[0])
      OS._get_event_parameter(the_event, OS.attr_k_event_param_text_input_send_text, OS.attr_type_unicode_text, nil, length_[0], nil, chars)
      fixed_length = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_text_input_send_fix_len, OS.attr_type_long_integer, nil, 4, nil, fixed_length)
      range_size = Array.typed(::Java::Int).new(1) { 0 }
      rc = OS._get_event_parameter(the_event, OS.attr_k_event_param_text_input_send_hilite_rng, OS.attr_type_text_range_array, nil, 0, range_size, nil)
      if ((rc).equal?(OS.attr_no_err))
        first_selected_converted = -1
        has_converted_text = false
        text_ranges = OS._new_ptr(range_size[0])
        OS._get_event_parameter(the_event, OS.attr_k_event_param_text_input_send_hilite_rng, OS.attr_type_text_range_array, nil, range_size[0], nil, text_ranges)
        n_ranges = Array.typed(::Java::Short).new(1) { 0 }
        OS.memmove(n_ranges, text_ranges, 2)
        count = n_ranges[0]
        if (count > 0)
          range = TextRange.new
          @ranges = Array.typed(::Java::Int).new((count - 1) * 2) { 0 }
          @styles = Array.typed(TextStyle).new(count - 1) { nil }
          i = 0
          j = 0
          while i < count
            OS.memmove(range, text_ranges + 2 + (i * TextRange.attr_sizeof), TextRange.attr_sizeof)
            case (range.attr_f_hilite_style)
            when OS.attr_k_caret_position
              @caret_offset = range.attr_f_start / 2
            when OS.attr_k_converted_text, OS.attr_k_selected_converted_text, OS.attr_k_selected_raw_text, OS.attr_k_raw_text
              @ranges[j * 2] = range.attr_f_start / 2
              @ranges[j * 2 + 1] = range.attr_f_end / 2 - 1
              @styles[j] = TextStyle.new
              @styles[j].attr_underline = true
              @styles[j].attr_underline_style = UNDERLINE_IME_INPUT
              if ((range.attr_f_hilite_style).equal?(OS.attr_k_converted_text))
                @styles[j].attr_underline_style = UNDERLINE_IME_CONVERTED
                has_converted_text = true
              end
              if ((range.attr_f_hilite_style).equal?(OS.attr_k_selected_converted_text))
                @styles[j].attr_underline_style = UNDERLINE_IME_TARGET_CONVERTED
                if ((first_selected_converted).equal?(-1))
                  first_selected_converted = range.attr_f_start
                end
              end
              j += 1
            end
            i += 1
          end
        end
        OS._dispose_ptr(text_ranges)
        if (has_converted_text && !(first_selected_converted).equal?(-1))
          @caret_offset = first_selected_converted / 2
        end
      end
      end_ = @start_offset + @text.length
      if ((@start_offset).equal?(-1))
        event = Event.new
        event.attr_detail = SWT::COMPOSITION_SELECTION
        send_event(SWT::ImeComposition, event)
        @start_offset = event.attr_start
        end_ = event.attr_end
      end
      event = Event.new
      event.attr_detail = SWT::COMPOSITION_CHANGED
      event.attr_start = @start_offset
      event.attr_end = end_
      event.attr_text = @text = (String.new(chars, 0, length_[0] / 2)).to_s
      @commit_count = !(fixed_length[0]).equal?(-1) ? fixed_length[0] / 2 : length_[0] / 2
      send_event(SWT::ImeComposition, event)
      if ((@commit_count).equal?(@text.length))
        @text = ""
        @caret_offset = @commit_count = 0
        @start_offset = -1
        @ranges = nil
        @styles = nil
      end
      if (event.attr_doit)
        if ((fixed_length[0]).equal?(-1) || (fixed_length[0]).equal?(length_[0]))
          i = 0
          while i < chars.attr_length
            if ((chars[i]).equal?(0))
              break
            end
            event = Event.new
            event.attr_character = chars[i]
            @parent.send_key_event(SWT::KeyDown, event)
            i += 1
          end
        end
      end
      return OS.attr_no_err
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
      @text = (nil).to_s
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
    # @return the offset of the composition
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
    
    private
    alias_method :initialize__ime, :initialize
  end
  
end
