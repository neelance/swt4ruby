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
  module GroupImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt, :SWT
      include ::Org::Eclipse::Swt::Graphics
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGRect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Rect
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
  class Group < GroupImports.const_get :Composite
    include_class_members GroupImports
    
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
      old_bounds = CGRect.new
      bounds = old_bounds
      OS._hiview_get_frame(self.attr_handle, old_bounds)
      min_size = 100
      if (old_bounds.attr_width < min_size || old_bounds.attr_height < min_size)
        OS._hiview_set_drawing_enabled(self.attr_handle, false)
        bounds = CGRect.new
        bounds.attr_width = bounds.attr_height = 100
        OS._hiview_set_frame(self.attr_handle, bounds)
      end
      rgn_handle = OS._new_rgn
      OS._get_control_region(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_content_meta_part), rgn_handle)
      client = Rect.new
      OS._get_region_bounds(rgn_handle, client)
      OS._dispose_rgn(rgn_handle)
      width += RJava.cast_to_int(bounds.attr_width) - (client.attr_right - client.attr_left)
      height += RJava.cast_to_int(bounds.attr_height) - (client.attr_bottom - client.attr_top)
      if (old_bounds.attr_width < min_size || old_bounds.attr_height < min_size)
        OS._hiview_set_frame(self.attr_handle, old_bounds)
        OS._hiview_set_drawing_enabled(self.attr_handle, (self.attr_draw_count).equal?(0))
      end
      return Rectangle.new(-client.attr_left, -client.attr_top, width, height)
    end
    
    typesig { [] }
    def create_handle
      self.attr_state |= THEME_BACKGROUND
      out_control = Array.typed(::Java::Int).new(1) { 0 }
      window = OS._get_control_owner(self.attr_parent.attr_handle)
      OS._create_group_box_control(window, nil, 0, true, out_control)
      if ((out_control[0]).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      self.attr_handle = out_control[0]
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def draw_background(control, context)
      fill_background(control, context, nil)
    end
    
    typesig { [] }
    def get_client_area
      check_widget
      rgn_handle = OS._new_rgn
      OS._get_control_region(self.attr_handle, RJava.cast_to_short(OS.attr_k_control_content_meta_part), rgn_handle)
      client = Rect.new
      OS._get_region_bounds(rgn_handle, client)
      OS._dispose_rgn(rgn_handle)
      return Rectangle.new(client.attr_left, client.attr_top, client.attr_right - client.attr_left, client.attr_bottom - client.attr_top)
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
      return 0.25 * self.attr_parent.get_theme_alpha
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
      ptr = OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, length_)
      if ((ptr).equal?(0))
        error(SWT::ERROR_CANNOT_SET_TEXT)
      end
      OS._set_control_title_with_cfstring(self.attr_handle, ptr)
      OS._cfrelease(ptr)
    end
    
    private
    alias_method :initialize__group, :initialize
  end
  
end
