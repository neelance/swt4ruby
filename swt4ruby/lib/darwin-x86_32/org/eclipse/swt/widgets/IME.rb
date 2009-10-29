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
      include_const ::Org::Eclipse::Swt, :SWT
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
      const_set_lazy(:UNDERLINE_THICK) { 1 << 16 }
      const_attr_reader  :UNDERLINE_THICK
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def attributed_substring_from_range(id, sel, range_ptr)
      event = Event.new
      event.attr_detail = SWT::COMPOSITION_SELECTION
      send_event___org_eclipse_swt_widgets_ime_1(SWT::ImeComposition, event)
      range = NSRange.new
      OS.memmove___org_eclipse_swt_widgets_ime_3(range, range_ptr, NSRange.attr_sizeof)
      # 64
      start = RJava.cast_to_int(range.attr_location)
      # 64
      end_ = RJava.cast_to_int((range.attr_location + range.attr_length))
      if (event.attr_start <= start && start <= event.attr_end && event.attr_start <= end_ && end_ <= event.attr_end)
        str = NSString.string_with(event.attr_text.substring(start - event.attr_start, end_ - event.attr_start))
        attri_str = (NSAttributedString.new.alloc).init_with_string(str, nil)
        attri_str.autorelease
        return attri_str.attr_id
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def character_index_for_point(id, sel, point)
      if (!is_inline_enabled)
        return OS::NSNotFound
      end
      pt = NSPoint.new
      OS.memmove___org_eclipse_swt_widgets_ime_5(pt, point, NSPoint.attr_sizeof)
      view = @parent.attr_view
      pt = view.window.convert_screen_to_base(pt)
      pt = view.convert_point_from_view_(pt, nil)
      event = Event.new
      event.attr_detail = SWT::COMPOSITION_OFFSET
      event.attr_x = RJava.cast_to_int(pt.attr_x)
      event.attr_y = RJava.cast_to_int(pt.attr_y)
      send_event___org_eclipse_swt_widgets_ime_7(SWT::ImeComposition, event)
      offset = event.attr_index + event.attr_count
      return !(offset).equal?(-1) ? offset : OS::NSNotFound
    end
    
    typesig { [] }
    def create_widget
      @text = ""
      @start_offset = -1
      if ((@parent.get_ime).nil?)
        @parent.set_ime(self)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def first_rect_for_character_range(id, sel, range)
      rect = NSRect.new
      caret = @parent.attr_caret
      if (!(caret).nil?)
        view = @parent.attr_view
        pt = NSPoint.new
        pt.attr_x = caret.attr_x
        pt.attr_y = caret.attr_y + caret.attr_height
        pt = view.convert_point_to_view_(pt, nil)
        pt = view.window.convert_base_to_screen(pt)
        rect.attr_x = pt.attr_x
        rect.attr_y = pt.attr_y
        rect.attr_width = caret.attr_width
        rect.attr_height = caret.attr_height
      end
      return rect
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
    
    typesig { [NSDictionary] }
    def get_style(attribs)
      keys = attribs.all_keys
      # long
      count_ = keys.count
      style = TextStyle.new
      j = 0
      while j < count_
        key = NSString.new(keys.object_at_index(j))
        if (key.is_equal_to(OS::NSBackgroundColorAttributeName))
          color = NSColor.new(attribs.object_for_key(key)).color_using_color_space_name(OS::NSCalibratedRGBColorSpace)
          # double
          # double
          rgb_color = Array.typed(::Java::Float).new([color.red_component, color.green_component, color.blue_component, color.alpha_component])
          style.attr_background = Color.cocoa_new(self.attr_display, rgb_color)
        else
          if (key.is_equal_to(OS::NSForegroundColorAttributeName))
            color = NSColor.new(attribs.object_for_key(key)).color_using_color_space_name(OS::NSCalibratedRGBColorSpace)
            # double
            # double
            rgb_color = Array.typed(::Java::Float).new([color.red_component, color.green_component, color.blue_component, color.alpha_component])
            style.attr_foreground = Color.cocoa_new(self.attr_display, rgb_color)
          else
            if (key.is_equal_to(OS::NSUnderlineColorAttributeName))
              color = NSColor.new(attribs.object_for_key(key)).color_using_color_space_name(OS::NSCalibratedRGBColorSpace)
              # double
              # double
              rgb_color = Array.typed(::Java::Float).new([color.red_component, color.green_component, color.blue_component, color.alpha_component])
              style.attr_underline_color = Color.cocoa_new(self.attr_display, rgb_color)
            else
              if (key.is_equal_to(OS::NSUnderlineStyleAttributeName))
                value = NSNumber.new(attribs.object_for_key(key))
                case (value.int_value)
                when OS::NSUnderlineStyleSingle
                  style.attr_underline_style = SWT::UNDERLINE_SINGLE
                when OS::NSUnderlineStyleDouble
                  style.attr_underline_style = SWT::UNDERLINE_DOUBLE
                when OS::NSUnderlineStyleThick
                  style.attr_underline_style = UNDERLINE_THICK
                end
                style.attr_underline = !(value.int_value).equal?(OS::NSUnderlineStyleNone)
              else
                if (key.is_equal_to(OS::NSStrikethroughColorAttributeName))
                  color = NSColor.new(attribs.object_for_key(key)).color_using_color_space_name(OS::NSCalibratedRGBColorSpace)
                  # double
                  # double
                  rgb_color = Array.typed(::Java::Float).new([color.red_component, color.green_component, color.blue_component, color.alpha_component])
                  style.attr_strikeout_color = Color.cocoa_new(self.attr_display, rgb_color)
                else
                  if (key.is_equal_to(OS::NSStrikethroughStyleAttributeName))
                    value = NSNumber.new(attribs.object_for_key(key))
                    style.attr_strikeout = !(value.int_value).equal?(OS::NSUnderlineStyleNone)
                  else
                    if (key.is_equal_to(OS::NSFontAttributeName))
                      font = NSFont.new(attribs.object_for_key(key))
                      font.retain
                      style.attr_font = Font.cocoa_new(self.attr_display, font)
                    end
                  end
                end
              end
            end
          end
        end
        j += 1
      end
      return style
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
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def has_marked_text(id, sel)
      return !(@text.length).equal?(0)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def insert_text(id, sel, string)
      if ((@start_offset).equal?(-1))
        return true
      end
      str = NSString.new(string)
      if (str.is_kind_of_class(OS.objc_get_class("NSAttributedString")))
        str = NSAttributedString.new(string).string
      end
      # 64
      length_ = RJava.cast_to_int(str.length)
      end_ = @start_offset + @text.length
      reset_styles
      @caret_offset = @commit_count = length_
      event = Event.new
      event.attr_detail = SWT::COMPOSITION_CHANGED
      event.attr_start = @start_offset
      event.attr_end = end_
      event.attr_text = @text = RJava.cast_to_string(str.get_string)
      send_event___org_eclipse_swt_widgets_ime_9(SWT::ImeComposition, event)
      @text = ""
      @caret_offset = @commit_count = 0
      @start_offset = -1
      return event.attr_doit
    end
    
    typesig { [] }
    def is_inline_enabled
      return hooks(SWT::ImeComposition)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def marked_range(id, sel)
      range = NSRange.new
      if (!(@start_offset).equal?(-1))
        range.attr_location = @start_offset
        range.attr_length = @text.length
      else
        range.attr_location = OS::NSNotFound
      end
      return range
    end
    
    typesig { [] }
    def reset_styles
      if (!(@styles).nil?)
        i = 0
        while i < @styles.attr_length
          style = @styles[i]
          font = style.attr_font
          if (!(font).nil?)
            font.attr_handle.release
          end
          i += 1
        end
      end
      @styles = nil
      @ranges = nil
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
      reset_styles
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def selected_range(id, sel)
      event = Event.new
      event.attr_detail = SWT::COMPOSITION_SELECTION
      send_event___org_eclipse_swt_widgets_ime_11(SWT::ImeComposition, event)
      range = NSRange.new
      range.attr_location = event.attr_start
      range.attr_length = event.attr_text.length
      return range
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def set_marked_text_selected_range(id, sel, string, sel_range)
      if (!is_inline_enabled)
        return true
      end
      reset_styles
      @caret_offset = @commit_count = 0
      end_ = @start_offset + @text.length
      if ((@start_offset).equal?(-1))
        event = Event.new
        event.attr_detail = SWT::COMPOSITION_SELECTION
        send_event___org_eclipse_swt_widgets_ime_13(SWT::ImeComposition, event)
        @start_offset = event.attr_start
        end_ = event.attr_end
      end
      str = NSString.new(string)
      if (str.is_kind_of_class(OS.objc_get_class("NSAttributedString")))
        attrib_str = NSAttributedString.new(string)
        str = attrib_str.string
        # 64
        length_ = RJava.cast_to_int(str.length)
        @styles = Array.typed(TextStyle).new(length_) { nil }
        @ranges = Array.typed(::Java::Int).new(length_ * 2) { 0 }
        range_limit = NSRange.new
        effective_range = NSRange.new
        range_limit.attr_length = length_
        range_count = 0
        # long
        ptr = OS.malloc(NSRange.attr_sizeof)
        i = 0
        while i < length_
          attribs = attrib_str.attributes_at_index(i, ptr, range_limit)
          OS.memmove___org_eclipse_swt_widgets_ime_15(effective_range, ptr, NSRange.attr_sizeof)
          # 64
          i = RJava.cast_to_int((effective_range.attr_location + effective_range.attr_length))
          # 64
          @ranges[range_count * 2] = RJava.cast_to_int(effective_range.attr_location)
          # 64
          @ranges[range_count * 2 + 1] = RJava.cast_to_int((effective_range.attr_location + effective_range.attr_length - 1))
          @styles[((range_count += 1) - 1)] = get_style(attribs)
        end
        OS.free(ptr)
        if (!(range_count).equal?(@styles.attr_length))
          new_styles = Array.typed(TextStyle).new(range_count) { nil }
          System.arraycopy(@styles, 0, new_styles, 0, new_styles.attr_length)
          @styles = new_styles
          new_ranges = Array.typed(::Java::Int).new(range_count * 2) { 0 }
          System.arraycopy(@ranges, 0, new_ranges, 0, new_ranges.attr_length)
          @ranges = new_ranges
        end
      end
      # 64
      length_ = RJava.cast_to_int(str.length)
      if ((@ranges).nil? && length_ > 0)
        @styles = Array.typed(TextStyle).new([get_style(self.attr_display.attr_marked_attributes)])
        @ranges = Array.typed(::Java::Int).new([0, length_ - 1])
      end
      range = NSRange.new
      OS.memmove___org_eclipse_swt_widgets_ime_17(range, sel_range, NSRange.attr_sizeof)
      # 64
      @caret_offset = RJava.cast_to_int(range.attr_location)
      event = Event.new
      event.attr_detail = SWT::COMPOSITION_CHANGED
      event.attr_start = @start_offset
      event.attr_end = end_
      event.attr_text = @text = RJava.cast_to_string(str.get_string)
      send_event___org_eclipse_swt_widgets_ime_19(SWT::ImeComposition, event)
      if (is_disposed)
        return false
      end
      if ((@text.length).equal?(0))
        s = @parent.get_shell
        s.attr_key_input_happened = true
        @start_offset = -1
        reset_styles
      end
      return true
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def valid_attributes_for_marked_text(id, sel)
      attribs = NSMutableArray.array_with_capacity(6)
      attribs.add_object(NSString.new(OS._nsforeground_color_attribute_name))
      attribs.add_object(NSString.new(OS._nsbackground_color_attribute_name))
      attribs.add_object(NSString.new(OS._nsunderline_style_attribute_name))
      attribs.add_object(NSString.new(OS._nsunderline_color_attribute_name))
      attribs.add_object(NSString.new(OS._nsstrikethrough_style_attribute_name))
      attribs.add_object(NSString.new(OS._nsstrikethrough_color_attribute_name))
      return attribs.attr_id
    end
    
    private
    alias_method :initialize__ime, :initialize
  end
  
end
