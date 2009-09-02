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
  module GroupImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt, :SWT
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Cocoa
    }
  end
  
  # Instances of this class provide an etched border
  # with an optional title.
  # <p>
  # Shadow styles are hints and may not be honoured
  # by the platform.  To create a group with the
  # default shadow style for the platform, do not
  # specify a shadow style.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>SHADOW_ETCHED_IN, SHADOW_ETCHED_OUT, SHADOW_IN, SHADOW_OUT, SHADOW_NONE</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # Note: Only one of the above styles may be specified.
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class Group < GroupImports.const_get :Composite
    include_class_members GroupImports
    
    attr_accessor :content_view
    alias_method :attr_content_view, :content_view
    undef_method :content_view
    alias_method :attr_content_view=, :content_view=
    undef_method :content_view=
    
    attr_accessor :text
    alias_method :attr_text, :text
    undef_method :text
    alias_method :attr_text=, :text=
    undef_method :text=
    
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
    # @see SWT#SHADOW_ETCHED_IN
    # @see SWT#SHADOW_ETCHED_OUT
    # @see SWT#SHADOW_IN
    # @see SWT#SHADOW_OUT
    # @see SWT#SHADOW_NONE
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @content_view = nil
      @text = nil
      super(parent, check_style(style))
      @text = ""
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        style |= SWT::NO_FOCUS
        # Even though it is legal to create this widget
        # with scroll bars, they serve no useful purpose
        # because they do not automatically scroll the
        # widget's client area.  The fix is to clear
        # the SWT style.
        return style & ~(SWT::H_SCROLL | SWT::V_SCROLL)
      end
    }
    
    typesig { [] }
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_trim(x, y, width, height)
      check_widget
      widget = self.attr_view
      border = RJava.cast_to_int(Math.ceil(widget.border_width))
      margins = widget.content_view_margins
      frame_ = @content_view.frame
      width += (margins.attr_width + border) * 2
      height += (margins.attr_height + border) * 2 + frame_.attr_y
      return super(x, y, width, height)
    end
    
    typesig { [] }
    def content_view
      return @content_view
    end
    
    typesig { [] }
    def create_handle
      self.attr_state |= THEME_BACKGROUND
      widget = SWTBox.new.alloc
      widget.init
      widget.set_title_position(OS::NSNoTitle)
      content_widget = SWTView.new.alloc
      content_widget.init
      # contentWidget.setDrawsBackground(false);
      widget.set_content_view(content_widget)
      @content_view = content_widget
      self.attr_view = widget
    end
    
    typesig { [] }
    def default_nsfont
      return self.attr_display.attr_box_font
    end
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget(@content_view)
      box = self.attr_view
      self.attr_display.remove_widget(box.title_cell)
    end
    
    typesig { [::Java::Int, NSGraphicsContext, NSRect] }
    # long
    def draw_background(id, context, rect)
      if (!(id).equal?(self.attr_view.attr_id))
        return
      end
      fill_background(self.attr_view, context, rect, -1)
    end
    
    typesig { [] }
    def event_view
      return @content_view
    end
    
    typesig { [] }
    def get_client_area
      check_widget
      rect = @content_view.bounds
      return Rectangle.new(RJava.cast_to_int(rect.attr_x), RJava.cast_to_int(rect.attr_y), RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height))
    end
    
    typesig { [] }
    def get_name_text
      return get_text
    end
    
    typesig { [] }
    # Returns the receiver's text, which is the string that the
    # is used as the <em>title</em>. If the text has not previously
    # been set, returns an empty string.
    # 
    # @return the text
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
    def get_theme_alpha
      return (!(self.attr_background).nil? ? 1 : 0.25) * self.attr_parent.get_theme_alpha
    end
    
    typesig { [] }
    def register
      super
      self.attr_display.add_widget(@content_view, self)
      box = self.attr_view
      self.attr_display.add_widget(box.title_cell, self)
    end
    
    typesig { [] }
    def release_handle
      super
      if (!(@content_view).nil?)
        @content_view.release
      end
      @content_view = nil
    end
    
    typesig { [NSFont] }
    def set_font(font)
      (self.attr_view).set_title_font(font)
    end
    
    typesig { [Array.typed(::Java::Float)] }
    # double
    def set_foreground(color)
      ns_color = nil
      if ((color).nil?)
        ns_color = NSColor.text_color
      else
        ns_color = NSColor.color_with_device_red(color[0], color[1], color[2], 1)
      end
      cell = NSTextFieldCell.new((self.attr_view).title_cell.attr_id)
      cell.set_text_color(ns_color)
    end
    
    typesig { [String] }
    # Sets the receiver's text, which is the string that will
    # be displayed as the receiver's <em>title</em>, to the argument,
    # which may not be null. The string may include the mnemonic character.
    # </p>
    # Mnemonics are indicated by an '&amp;' that causes the next
    # character to be the mnemonic.  When the user presses a
    # key sequence that matches the mnemonic, focus is assigned
    # to the first child of the group. On most platforms, the
    # mnemonic appears underlined but may be emphasised in a
    # platform specific manner.  The mnemonic indicator character
    # '&amp;' can be escaped by doubling it in the string, causing
    # a single '&amp;' to be displayed.
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
      @text = string
      buffer = CharArray.new(@text.length)
      @text.get_chars(0, buffer.attr_length, buffer, 0)
      length_ = fix_mnemonic(buffer)
      box = self.attr_view
      box.set_title_position((length_).equal?(0) ? OS::NSNoTitle : OS::NSAtTop)
      box.set_title(NSString.string_with_characters(buffer, length_))
    end
    
    private
    alias_method :initialize__group, :initialize
  end
  
end
