require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
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
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Accessibility
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  # Instances of this class represent a non-selectable
  # user interface object that displays a string or image.
  # When SEPARATOR is specified, displays a single
  # vertical or horizontal line.
  # <p>
  # Shadow styles are hints and may not be honored
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
  # @noextend This class is not intended to be subclassed by clients.
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
    
    attr_accessor :text_view
    alias_method :attr_text_view, :text_view
    undef_method :text_view
    alias_method :attr_text_view=, :text_view=
    undef_method :text_view=
    
    attr_accessor :image_view
    alias_method :attr_image_view, :image_view
    undef_method :image_view
    alias_method :attr_image_view=, :image_view=
    undef_method :image_view=
    
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
      @text_view = nil
      @image_view = nil
      super(parent, check_style(style))
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def accessibility_attribute_names(id, sel)
      if (!(self.attr_accessible).nil?)
        if ((!(@text_view).nil? && ((id).equal?(@text_view.attr_id) || (id).equal?(@text_view.cell.attr_id))) || (!(@image_view).nil? && ((id).equal?(@image_view.attr_id) || (id).equal?(@image_view.cell.attr_id))))
          # See if the accessible will override or augment the standard list.
          # Help, title, and description can be overridden.
          extra_attributes = NSMutableArray.array_with_capacity(3)
          extra_attributes.add_object(OS::NSAccessibilityHelpAttribute)
          extra_attributes.add_object(OS::NSAccessibilityDescriptionAttribute)
          extra_attributes.add_object(OS::NSAccessibilityTitleAttribute)
          # 64
          i = RJava.cast_to_int(extra_attributes.count) - 1
          while i >= 0
            attribute = NSString.new(extra_attributes.object_at_index(i).attr_id)
            if ((self.attr_accessible.internal_accessibility_attribute_value(attribute, ACC::CHILDID_SELF)).nil?)
              extra_attributes.remove_object_at_index(i)
            end
            i -= 1
          end
          if (extra_attributes.count > 0)
            # long
            super_result = super(id, sel)
            base_attributes = NSArray.new(super_result)
            mutable_attributes = NSMutableArray.array_with_capacity(base_attributes.count + 1)
            mutable_attributes.add_objects_from_array(base_attributes)
            i_ = 0
            while i_ < extra_attributes.count
              curr_attribute = extra_attributes.object_at_index(i_)
              if (!mutable_attributes.contains_object(curr_attribute))
                mutable_attributes.add_object(curr_attribute)
              end
              i_ += 1
            end
            return mutable_attributes.attr_id
          end
        end
      end
      return super(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def accessibility_is_ignored(id, sel)
      if ((id).equal?(self.attr_view.attr_id))
        return true
      end
      return super(id, sel)
    end
    
    typesig { [Control] }
    def add_relation(control)
      if (!control.is_described_by_label)
        return
      end
      if (!(@text_view).nil?)
        accessible_element = control.focus_view
        if (accessible_element.is_a?(NSControl))
          view_as_control = accessible_element
          if (!(view_as_control.cell).nil?)
            accessible_element = view_as_control.cell
          end
        end
        accessible_element.accessibility_set_override_value(@text_view.cell, OS::NSAccessibilityTitleUIElementAttribute)
        control_array = NSArray.array_with_object(accessible_element)
        @text_view.cell.accessibility_set_override_value(control_array, OS::NSAccessibilityServesAsTitleForUIElementsAttribute)
      end
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
      width = DEFAULT_WIDTH
      height = DEFAULT_HEIGHT
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        # double
        line_width = (self.attr_view).border_width
        if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
          height = RJava.cast_to_int(Math.ceil(line_width * 2))
        else
          width = RJava.cast_to_int(Math.ceil(line_width * 2))
        end
        if (!(w_hint).equal?(SWT::DEFAULT))
          width = w_hint
        end
        if (!(h_hint).equal?(SWT::DEFAULT))
          height = h_hint
        end
        border = get_border_width
        width += border * 2
        height += border * 2
        return Point.new(width, height)
      end
      if (@is_image)
        if (!(@image).nil?)
          nsimage = @image.attr_handle
          size_ = nsimage.size
          width = RJava.cast_to_int(size_.attr_width)
          height = RJava.cast_to_int(size_.attr_height)
        else
          width = height = 0
        end
      else
        size_ = nil
        if (!((self.attr_style & SWT::WRAP)).equal?(0) && !(w_hint).equal?(SWT::DEFAULT))
          rect = NSRect.new
          rect.attr_width = w_hint
          rect.attr_height = !(h_hint).equal?(SWT::DEFAULT) ? h_hint : Float::MAX_VALUE
          size_ = @text_view.cell.cell_size_for_bounds(rect)
        else
          size_ = @text_view.cell.cell_size
        end
        width = RJava.cast_to_int(Math.ceil(size_.attr_width))
        height = RJava.cast_to_int(Math.ceil(size_.attr_height))
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
      self.attr_state |= THEME_BACKGROUND
      widget = SWTBox.new.alloc
      widget.init
      widget.set_title(NSString.string_with(""))
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        widget.set_box_type(OS::NSBoxSeparator)
        child = SWTView.new.alloc.init
        widget.set_content_view(child)
        child.release
      else
        widget.set_border_type(OS::NSNoBorder)
        widget.set_border_width(0)
        widget.set_box_type(OS::NSBoxCustom)
        offset_size = NSSize.new
        widget.set_content_view_margins(offset_size)
        image_widget = SWTImageView.new.alloc
        image_widget.init
        image_widget.set_image_scaling(OS::NSScaleNone)
        text_widget = SWTTextField.new.alloc
        text_widget.init
        text_widget.set_bordered(false)
        text_widget.set_editable(false)
        text_widget.set_draws_background(false)
        cell_ = NSTextFieldCell.new(text_widget.cell)
        cell_.set_wraps(!((self.attr_style & SWT::WRAP)).equal?(0))
        widget.add_subview(image_widget)
        widget.add_subview(text_widget)
        widget.set_content_view(text_widget)
        @image_view = image_widget
        @text_view = text_widget
        __set_alignment
      end
      self.attr_view = widget
    end
    
    typesig { [] }
    def create_widget
      @text = ""
      super
    end
    
    typesig { [] }
    def create_string
      attrib_str = create_string(@text, nil, self.attr_foreground, ((self.attr_style & SWT::WRAP)).equal?(0) ? self.attr_style : 0, true, true)
      attrib_str.autorelease
      return attrib_str
    end
    
    typesig { [] }
    def default_nsfont
      return self.attr_display.attr_text_field_font
    end
    
    typesig { [] }
    def deregister
      super
      if (!(@text_view).nil?)
        self.attr_display.remove_widget(@text_view)
        self.attr_display.remove_widget(@text_view.cell)
      end
      if (!(@image_view).nil?)
        self.attr_display.remove_widget(@image_view)
        self.attr_display.remove_widget(@image_view.cell)
      end
    end
    
    typesig { [] }
    def event_view
      return (self.attr_view).content_view
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
    def register
      super
      if (!(@text_view).nil?)
        self.attr_display.add_widget(@text_view, self)
        self.attr_display.add_widget(@text_view.cell, self)
      end
      if (!(@image_view).nil?)
        self.attr_display.add_widget(@image_view, self)
        self.attr_display.add_widget(@image_view.cell, self)
      end
    end
    
    typesig { [] }
    def release_handle
      super
      if (!(@text_view).nil?)
        @text_view.release
      end
      if (!(@image_view).nil?)
        @image_view.release
      end
      @text_view = nil
      @image_view = nil
    end
    
    typesig { [] }
    # Remove "Labeled by" relations from the receiver.
    def remove_relation
      if (!(@text_view).nil?)
        @text_view.cell.accessibility_set_override_value(nil, OS::NSAccessibilityServesAsTitleForUIElementsAttribute)
      end
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
      __set_alignment
    end
    
    typesig { [] }
    def update_background
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      ns_color = nil
      if (!(self.attr_background_image).nil?)
        ns_color = NSColor.color_with_pattern_image(self.attr_background_image.attr_handle)
      else
        if (!(self.attr_background).nil?)
          ns_color = NSColor.color_with_device_red(self.attr_background[0], self.attr_background[1], self.attr_background[2], self.attr_background[3])
        else
          ns_color = NSColor.clear_color
        end
      end
      (self.attr_view).set_fill_color(ns_color)
    end
    
    typesig { [] }
    def __set_alignment
      if (!(@image).nil?)
        if (!((self.attr_style & SWT::RIGHT)).equal?(0))
          @image_view.set_image_alignment(OS::NSImageAlignRight)
        end
        if (!((self.attr_style & SWT::LEFT)).equal?(0))
          @image_view.set_image_alignment(OS::NSImageAlignLeft)
        end
        if (!((self.attr_style & SWT::CENTER)).equal?(0))
          @image_view.set_image_alignment(OS::NSImageAlignCenter)
        end
      end
      if (!(@text).nil?)
        cell_ = NSCell.new(@text_view.cell)
        cell_.set_attributed_string_value(create_string)
      end
    end
    
    typesig { [NSFont] }
    def set_font(font)
      if (!(@text_view).nil?)
        cell_ = NSCell.new(@text_view.cell)
        cell_.set_attributed_string_value(create_string)
        @text_view.set_font(font)
      end
    end
    
    typesig { [Array.typed(::Java::Float)] }
    # double
    def set_foreground(color)
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      cell_ = NSCell.new(@text_view.cell)
      cell_.set_attributed_string_value(create_string)
    end
    
    typesig { [] }
    def set_tab_item_focus
      return false
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
      # Feature in Cocoa.  If the NSImage object being set into the view is
      # the same NSImage object that is already there then the new image is
      # not taken.  This results in the view's image not changing even if the
      # NSImage object's content has changed since it was last set into the
      # view.  The workaround is to temporarily set the view's image to null
      # so that the new image will then be taken.
      if (!(image).nil?)
        current = @image_view.image
        if (!(current).nil? && (current.attr_id).equal?(image.attr_handle.attr_id))
          @image_view.set_image(nil)
        end
      end
      @image_view.set_image(!(image).nil? ? image.attr_handle : nil)
      (self.attr_view).set_content_view(@image_view)
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
      cell_ = NSCell.new(@text_view.cell)
      cell_.set_attributed_string_value(create_string)
      (self.attr_view).set_content_view(@text_view)
    end
    
    private
    alias_method :initialize__label, :initialize
  end
  
end
