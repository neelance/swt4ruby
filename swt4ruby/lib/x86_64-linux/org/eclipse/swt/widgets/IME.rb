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
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
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
    
    attr_accessor :in_composition
    alias_method :attr_in_composition, :in_composition
    undef_method :in_composition
    alias_method :attr_in_composition=, :in_composition=
    undef_method :in_composition=
    
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
      @in_composition = false
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
      @in_composition = false
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
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_button_press_event(widget, event)
      if (!is_inline_enabled)
        return 0
      end
      # int
      im_handle_ = im_handle
      if (!(im_handle_).equal?(0))
        OS.gtk_im_context_reset(im_handle_)
      end
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_commit(imcontext, text_ptr)
      if (!is_inline_enabled)
        return 0
      end
      doit = true
      @ranges = nil
      @styles = nil
      @caret_offset = @commit_count = 0
      if (!(text_ptr).equal?(0) && @in_composition)
        length = OS.strlen(text_ptr)
        if (!(length).equal?(0))
          buffer = Array.typed(::Java::Byte).new(length) { 0 }
          OS.memmove(buffer, text_ptr, length)
          chars = Converter.mbcs_to_wcs(nil, buffer)
          event = Event.new
          event.attr_detail = SWT::COMPOSITION_CHANGED
          event.attr_start = @start_offset
          event.attr_end = @start_offset + @text.length
          event.attr_text = @text = RJava.cast_to_string(!(chars).nil? ? String.new(chars) : "")
          @commit_count = @text.length
          send_event(SWT::ImeComposition, event)
          doit = event.attr_doit
          @text = ""
          @start_offset = -1
          @commit_count = 0
        end
      end
      @in_composition = false
      return doit ? 0 : 1
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def gtk_preedit_changed(imcontext)
      if (!is_inline_enabled)
        return 0
      end
      @ranges = nil
      @styles = nil
      @commit_count = 0
      # int
      im_handle_ = im_handle
      # int
      # int
      preedit_string = Array.typed(::Java::Long).new(1) { 0 }
      # int
      # int
      pango_attrs = Array.typed(::Java::Long).new(1) { 0 }
      cursor_pos = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_im_context_get_preedit_string(im_handle_, preedit_string, pango_attrs, cursor_pos)
      @caret_offset = cursor_pos[0]
      chars = nil
      if (!(preedit_string[0]).equal?(0))
        length_ = OS.strlen(preedit_string[0])
        buffer = Array.typed(::Java::Byte).new(length_) { 0 }
        OS.memmove(buffer, preedit_string[0], length_)
        chars = Converter.mbcs_to_wcs(nil, buffer)
        if (!(pango_attrs[0]).equal?(0))
          count = 0
          # int
          iterator = OS.pango_attr_list_get_iterator(pango_attrs[0])
          while (OS.pango_attr_iterator_next(iterator))
            count += 1
          end
          OS.pango_attr_iterator_destroy(iterator)
          @ranges = Array.typed(::Java::Int).new(count * 2) { 0 }
          @styles = Array.typed(TextStyle).new(count) { nil }
          iterator = OS.pango_attr_list_get_iterator(pango_attrs[0])
          attr_color = PangoAttrColor.new
          attr_int = PangoAttrInt.new
          start = Array.typed(::Java::Int).new(1) { 0 }
          end_ = Array.typed(::Java::Int).new(1) { 0 }
          i = 0
          while i < count
            OS.pango_attr_iterator_range(iterator, start, end_)
            # 64
            @ranges[i * 2] = RJava.cast_to_int(OS.g_utf8_pointer_to_offset(preedit_string[0], preedit_string[0] + start[0]))
            # 64
            @ranges[i * 2 + 1] = RJava.cast_to_int(OS.g_utf8_pointer_to_offset(preedit_string[0], preedit_string[0] + end_[0])) - 1
            @styles[i] = TextStyle.new(nil, nil, nil)
            # int
            attr = OS.pango_attr_iterator_get(iterator, OS::PANGO_ATTR_FOREGROUND)
            if (!(attr).equal?(0))
              OS.memmove(attr_color, attr, PangoAttrColor.attr_sizeof)
              color = GdkColor.new
              color.attr_red = attr_color.attr_color_red
              color.attr_green = attr_color.attr_color_green
              color.attr_blue = attr_color.attr_color_blue
              @styles[i].attr_foreground = Color.gtk_new(self.attr_display, color)
            end
            attr = OS.pango_attr_iterator_get(iterator, OS::PANGO_ATTR_BACKGROUND)
            if (!(attr).equal?(0))
              OS.memmove(attr_color, attr, PangoAttrColor.attr_sizeof)
              color = GdkColor.new
              color.attr_red = attr_color.attr_color_red
              color.attr_green = attr_color.attr_color_green
              color.attr_blue = attr_color.attr_color_blue
              @styles[i].attr_background = Color.gtk_new(self.attr_display, color)
            end
            attr = OS.pango_attr_iterator_get(iterator, OS::PANGO_ATTR_UNDERLINE)
            if (!(attr).equal?(0))
              OS.memmove(attr_int, attr, PangoAttrInt.attr_sizeof)
              @styles[i].attr_underline = !(attr_int.attr_value).equal?(OS::PANGO_UNDERLINE_NONE)
              @styles[i].attr_underline_style = SWT::UNDERLINE_SINGLE
              case (attr_int.attr_value)
              when OS::PANGO_UNDERLINE_DOUBLE
                @styles[i].attr_underline_style = SWT::UNDERLINE_DOUBLE
              when OS::PANGO_UNDERLINE_ERROR
                @styles[i].attr_underline_style = SWT::UNDERLINE_ERROR
              end
              if (@styles[i].attr_underline)
                attr = OS.pango_attr_iterator_get(iterator, OS::PANGO_ATTR_UNDERLINE_COLOR)
                if (!(attr).equal?(0))
                  OS.memmove(attr_color, attr, PangoAttrColor.attr_sizeof)
                  color = GdkColor.new
                  color.attr_red = attr_color.attr_color_red
                  color.attr_green = attr_color.attr_color_green
                  color.attr_blue = attr_color.attr_color_blue
                  @styles[i].attr_underline_color = Color.gtk_new(self.attr_display, color)
                end
              end
            end
            OS.pango_attr_iterator_next(iterator)
            i += 1
          end
          OS.pango_attr_iterator_destroy(iterator)
          OS.pango_attr_list_unref(pango_attrs[0])
        end
        OS.g_free(preedit_string[0])
      end
      if (!(chars).nil?)
        if ((@text.length).equal?(0))
          # Bug in GTK. In Solaris, the IME sends multiple
          # preedit_changed signals with an empty text.
          # This behavior is not correct for SWT and can
          # cause the editor to replace its current selection
          # with an empty string. The fix is to ignore any
          # preedit_changed signals with an empty text when
          # the preedit buffer is already empty.
          if ((chars.attr_length).equal?(0))
            return 0
          end
          @start_offset = -1
        end
        end_ = @start_offset + @text.length
        if ((@start_offset).equal?(-1))
          event = Event.new
          event.attr_detail = SWT::COMPOSITION_SELECTION
          send_event(SWT::ImeComposition, event)
          @start_offset = event.attr_start
          end_ = event.attr_end
        end
        @in_composition = true
        event = Event.new
        event.attr_detail = SWT::COMPOSITION_CHANGED
        event.attr_start = @start_offset
        event.attr_end = end_
        event.attr_text = @text = RJava.cast_to_string(!(chars).nil? ? String.new(chars) : "")
        send_event(SWT::ImeComposition, event)
      end
      return 1
    end
    
    typesig { [] }
    # int
    def im_handle
      return @parent.im_handle
    end
    
    typesig { [] }
    def is_inline_enabled
      return hooks(SWT::ImeComposition)
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
    
    private
    alias_method :initialize__ime, :initialize
  end
  
end
