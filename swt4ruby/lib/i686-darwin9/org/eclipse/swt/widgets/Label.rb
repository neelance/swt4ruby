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
  module LabelImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :ControlFontStyleRec
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
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
    
    attr_accessor :is_image
    alias_method :attr_is_image, :is_image
    undef_method :is_image
    alias_method :attr_is_image=, :is_image=
    undef_method :is_image=
    
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
      @is_image = false
      super(parent, check_style(style))
      @text = ""
    end
    
    typesig { [Control] }
    def add_relation(control)
      if (!control.is_described_by_label)
        return
      end
      label_element = OS._axuielement_create_with_hiobject_and_identifier(self.attr_handle, 0)
      string = OS.attr_k_axtitle_uielement_attribute # control LabeledBy this
      buffer = CharArray.new(string.length)
      string.get_chars(0, buffer.attr_length, buffer, 0)
      string_ref = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
      OS._hiobject_set_auxiliary_accessibility_attribute(control.focus_handle, 0, string_ref, label_element)
      OS._cfrelease(label_element)
      OS._cfrelease(string_ref)
      related_element = OS._axuielement_create_with_hiobject_and_identifier(control.focus_handle, 0)
      array = OS._cfarray_create_mutable(OS.attr_k_cfallocator_default, 1, 0)
      OS._cfarray_append_value(array, related_element)
      string = RJava.cast_to_string(OS.attr_k_axserves_as_title_for_uielements_attribute) # this LabelFor control
      buffer = CharArray.new(string.length)
      string.get_chars(0, buffer.attr_length, buffer, 0)
      string_ref = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
      OS._hiobject_set_auxiliary_accessibility_attribute(self.attr_handle, 0, string_ref, array)
      OS._cfrelease(related_element)
      OS._cfrelease(string_ref)
      OS._cfrelease(array)
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
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
          width = DEFAULT_WIDTH
          height = 3
        else
          width = 3
          height = DEFAULT_HEIGHT
        end
      else
        if (@is_image && !(@image).nil?)
          r = @image.get_bounds
          width = r.attr_width
          height = r.attr_height
        else
          ptr = Array.typed(::Java::Int).new(1) { 0 }
          OS._get_control_data(self.attr_handle, RJava.cast_to_short(0), OS.attr_k_control_static_text_cfstring_tag, 4, ptr, nil)
          size = text_extent(ptr[0], !((self.attr_style & SWT::WRAP)).equal?(0) && !(w_hint).equal?(SWT::DEFAULT) ? w_hint : 0)
          if (!(ptr[0]).equal?(0))
            OS._cfrelease(ptr[0])
          end
          width = size.attr_x
          height = size.attr_y
        end
      end
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint
      end
      return Point.new(width, height)
    end
    
    typesig { [] }
    def create_handle
      self.attr_state |= GRAB | THEME_BACKGROUND
      out_control = Array.typed(::Java::Int).new(1) { 0 }
      window = OS._get_control_owner(self.attr_parent.attr_handle)
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        OS._create_separator_control(window, nil, out_control)
      else
        just = OS.attr_te_flush_left
        if (!((self.attr_style & SWT::CENTER)).equal?(0))
          just = OS.attr_te_center
        end
        if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          just = OS.attr_te_flush_right
        end
        font_style = ControlFontStyleRec.new
        font_style.attr_flags |= OS.attr_k_control_use_just_mask
        font_style.attr_just = RJava.cast_to_short(just)
        OS._create_static_text_control(window, nil, 0, font_style, out_control)
      end
      if ((out_control[0]).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      self.attr_handle = out_control[0]
      if (((self.attr_style & SWT::WRAP)).equal?(0))
        OS._set_control_data(self.attr_handle, OS.attr_k_control_entire_control, OS.attr_k_control_static_text_is_multiline_tag, 1, Array.typed(::Java::Byte).new([0]))
      end
    end
    
    typesig { [] }
    def default_theme_font
      if (self.attr_display.attr_small_fonts)
        return OS.attr_k_theme_small_system_font
      end
      return OS.attr_k_theme_push_button_font
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def draw_background(control, context)
      fill_background(control, context, nil)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def draw_widget(control, context, damage_rgn, visible_rgn, the_event)
      if (@is_image && !(@image).nil?)
        data = SwtGCData.new
        data.attr_paint_event = the_event
        data.attr_visible_rgn = visible_rgn
        gc = SwtGC.carbon_new(self, data)
        x = 0
        size = get_size
        bounds = @image.get_bounds
        if (!((self.attr_style & SWT::CENTER)).equal?(0))
          x = (size.attr_x - bounds.attr_width) / 2
        end
        if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          x = size.attr_x - bounds.attr_width
        end
        gc.draw_image(@image, x, 0)
        gc.dispose
      end
      super(control, context, damage_rgn, visible_rgn, the_event)
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
    
    typesig { [] }
    def is_described_by_label
      return false
    end
    
    typesig { [] }
    # Remove "Label for" relations from the receiver.
    def remove_relation
      string = OS.attr_k_axserves_as_title_for_uielements_attribute
      buffer = CharArray.new(string.length)
      string.get_chars(0, buffer.attr_length, buffer, 0)
      string_ref = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
      OS._hiobject_set_auxiliary_accessibility_attribute(self.attr_handle, 0, string_ref, 0)
      OS._cfrelease(string_ref)
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
      just = OS.attr_te_flush_left
      if (!((alignment & SWT::CENTER)).equal?(0))
        just = OS.attr_te_center
      end
      if (!((alignment & SWT::RIGHT)).equal?(0))
        just = OS.attr_te_flush_right
      end
      font_style = ControlFontStyleRec.new
      OS._get_control_data(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_entire_control), OS.attr_k_control_font_style_tag, ControlFontStyleRec.attr_sizeof, font_style, nil)
      font_style.attr_flags |= OS.attr_k_control_use_just_mask
      font_style.attr_just = RJava.cast_to_short(just)
      OS._set_control_font_style(self.attr_handle, font_style)
      redraw
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
      @is_image = true
      if ((image).nil?)
        set_text(@text)
        return
      end
      if (@text.length > 0)
        ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, nil, 0)
        if ((ptr).equal?(0))
          error(SWT::ERROR_CANNOT_SET_TEXT)
        end
        OS._set_control_data(self.attr_handle, 0, OS.attr_k_control_static_text_cfstring_tag, 4, Array.typed(::Java::Int).new([ptr]))
        OS._cfrelease(ptr)
      end
      redraw
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
      @is_image = false
      @text = string
      buffer = CharArray.new(@text.length)
      @text.get_chars(0, buffer.attr_length, buffer, 0)
      length_ = fix_mnemonic(buffer)
      ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, length_)
      if ((ptr).equal?(0))
        error(SWT::ERROR_CANNOT_SET_TEXT)
      end
      OS._set_control_data(self.attr_handle, 0, OS.attr_k_control_static_text_cfstring_tag, 4, Array.typed(::Java::Int).new([ptr]))
      OS._cfrelease(ptr)
      redraw
    end
    
    private
    alias_method :initialize__label, :initialize
  end
  
end
