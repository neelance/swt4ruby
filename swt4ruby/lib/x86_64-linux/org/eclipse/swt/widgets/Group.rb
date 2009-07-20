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
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Graphics
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
    
    # int
    attr_accessor :client_handle
    alias_method :attr_client_handle, :client_handle
    undef_method :client_handle
    alias_method :attr_client_handle=, :client_handle=
    undef_method :client_handle=
    
    attr_accessor :label_handle
    alias_method :attr_label_handle, :label_handle
    undef_method :label_handle
    alias_method :attr_label_handle=, :label_handle=
    undef_method :label_handle=
    
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
      @client_handle = 0
      @label_handle = 0
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
    
    typesig { [] }
    # int
    def client_handle
      return @client_handle
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      size = super(w_hint, h_hint, changed)
      width = compute_native_size(self.attr_handle, SWT::DEFAULT, SWT::DEFAULT, false).attr_x
      size.attr_x = Math.max(size.attr_x, width)
      return size
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def compute_trim(x, y, width, height)
      check_widget
      force_resize
      client_x = OS._gtk_widget_x(@client_handle)
      client_y = OS._gtk_widget_y(@client_handle)
      x -= client_x
      y -= client_y
      width += client_x + client_x
      height += client_x + client_y
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [::Java::Int] }
    def create_handle(index)
      self.attr_state |= HANDLE | THEME_BACKGROUND
      self.attr_fixed_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
      if ((self.attr_fixed_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_fixed_set_has_window(self.attr_fixed_handle, true)
      self.attr_handle = OS.gtk_frame_new(nil)
      if ((self.attr_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      @label_handle = OS.gtk_label_new(nil)
      if ((@label_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.g_object_ref(@label_handle)
      OS.gtk_object_sink(@label_handle)
      @client_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
      if ((@client_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_container_add(self.attr_fixed_handle, self.attr_handle)
      OS.gtk_container_add(self.attr_handle, @client_handle)
      if (!((self.attr_style & SWT::SHADOW_IN)).equal?(0))
        OS.gtk_frame_set_shadow_type(self.attr_handle, OS::GTK_SHADOW_IN)
      end
      if (!((self.attr_style & SWT::SHADOW_OUT)).equal?(0))
        OS.gtk_frame_set_shadow_type(self.attr_handle, OS::GTK_SHADOW_OUT)
      end
      if (!((self.attr_style & SWT::SHADOW_ETCHED_IN)).equal?(0))
        OS.gtk_frame_set_shadow_type(self.attr_handle, OS::GTK_SHADOW_ETCHED_IN)
      end
      if (!((self.attr_style & SWT::SHADOW_ETCHED_OUT)).equal?(0))
        OS.gtk_frame_set_shadow_type(self.attr_handle, OS::GTK_SHADOW_ETCHED_OUT)
      end
    end
    
    typesig { [] }
    def deregister
      super
      self.attr_display.remove_widget(@client_handle)
      self.attr_display.remove_widget(@label_handle)
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      OS.gtk_widget_set_sensitive(@label_handle, enabled)
    end
    
    typesig { [] }
    # int
    def event_handle
      return self.attr_fixed_handle
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
    def hook_events
      super
      if (!(@label_handle).equal?(0))
        OS.g_signal_connect_closure_by_id(@label_handle, self.attr_display.attr_signal_ids[MNEMONIC_ACTIVATE], 0, self.attr_display.attr_closures[MNEMONIC_ACTIVATE], false)
      end
    end
    
    typesig { [::Java::Char] }
    def mnemonic_hit(key)
      if ((@label_handle).equal?(0))
        return false
      end
      result = super(@label_handle, key)
      if (result)
        set_focus
      end
      return result
    end
    
    typesig { [::Java::Char] }
    def mnemonic_match(key)
      if ((@label_handle).equal?(0))
        return false
      end
      return mnemonic_match(@label_handle, key)
    end
    
    typesig { [] }
    # int
    def parenting_handle
      return self.attr_fixed_handle
    end
    
    typesig { [] }
    def register
      super
      self.attr_display.add_widget(@client_handle, self)
      self.attr_display.add_widget(@label_handle, self)
    end
    
    typesig { [] }
    def release_handle
      super
      @client_handle = @label_handle = 0
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@label_handle).equal?(0))
        OS.g_object_unref(@label_handle)
      end
      @text = (nil).to_s
    end
    
    typesig { [GdkColor] }
    def set_background_color(color)
      super(color)
      set_background_color(self.attr_fixed_handle, color)
    end
    
    typesig { [::Java::Long] }
    # int
    def set_font_description(font)
      super(font)
      OS.gtk_widget_modify_font(@label_handle, font)
    end
    
    typesig { [GdkColor] }
    def set_foreground_color(color)
      super(color)
      set_foreground_color(@label_handle, color)
    end
    
    typesig { [] }
    def set_orientation
      super
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        OS.gtk_widget_set_direction(@label_handle, OS::GTK_TEXT_DIR_RTL)
      end
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
      chars = fix_mnemonic(string)
      buffer = Converter.wcs_to_mbcs(nil, chars, true)
      OS.gtk_label_set_text_with_mnemonic(@label_handle, buffer)
      if (!(string.length).equal?(0))
        if ((OS.gtk_frame_get_label_widget(self.attr_handle)).equal?(0))
          OS.gtk_frame_set_label_widget(self.attr_handle, @label_handle)
        end
      else
        OS.gtk_frame_set_label_widget(self.attr_handle, 0)
      end
    end
    
    typesig { [] }
    def show_widget
      super
      if (!(@client_handle).equal?(0))
        OS.gtk_widget_show(@client_handle)
      end
      if (!(@label_handle).equal?(0))
        OS.gtk_widget_show(@label_handle)
      end
    end
    
    private
    alias_method :initialize__group, :initialize
  end
  
end
