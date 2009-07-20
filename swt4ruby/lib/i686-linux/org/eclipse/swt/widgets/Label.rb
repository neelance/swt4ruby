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
  module LabelImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
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
    
    # long
    attr_accessor :frame_handle
    alias_method :attr_frame_handle, :frame_handle
    undef_method :frame_handle
    alias_method :attr_frame_handle=, :frame_handle=
    undef_method :frame_handle=
    
    attr_accessor :label_handle
    alias_method :attr_label_handle, :label_handle
    undef_method :label_handle
    alias_method :attr_label_handle=, :label_handle=
    undef_method :label_handle=
    
    attr_accessor :image_handle
    alias_method :attr_image_handle, :image_handle
    undef_method :image_handle
    alias_method :attr_image_handle=, :image_handle=
    undef_method :image_handle=
    
    attr_accessor :image_list
    alias_method :attr_image_list, :image_list
    undef_method :image_list
    alias_method :attr_image_list=, :image_list=
    undef_method :image_list=
    
    attr_accessor :image
    alias_method :attr_image, :image
    undef_method :image
    alias_method :attr_image=, :image=
    undef_method :image=
    
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
      @frame_handle = 0
      @label_handle = 0
      @image_handle = 0
      @image_list = nil
      @image = nil
      @text = nil
      super(parent, check_style(style))
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
    
    typesig { [Control] }
    def add_relation(control)
      if (!control.is_described_by_label)
        return
      end
      if ((@label_handle).equal?(0))
        return
      end
      # long
      accessible = OS.gtk_widget_get_accessible(@label_handle)
      # long
      control_accessible = OS.gtk_widget_get_accessible(control.attr_handle)
      if (!(accessible).equal?(0) && !(control_accessible).equal?(0))
        OS.atk_object_add_relationship(control_accessible, OS::ATK_RELATION_LABELLED_BY, accessible)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      if (!(w_hint).equal?(SWT::DEFAULT) && w_hint < 0)
        w_hint = 0
      end
      if (!(h_hint).equal?(SWT::DEFAULT) && h_hint < 0)
        h_hint = 0
      end
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
          if ((w_hint).equal?(SWT::DEFAULT))
            w_hint = DEFAULT_WIDTH
          end
        else
          if ((h_hint).equal?(SWT::DEFAULT))
            h_hint = DEFAULT_HEIGHT
          end
        end
      end
      fix_wrap = !(@label_handle).equal?(0) && !((self.attr_style & SWT::WRAP)).equal?(0)
      if (fix_wrap || !(@frame_handle).equal?(0))
        force_resize
      end
      label_width = Array.typed(::Java::Int).new(1) { 0 }
      label_height = Array.typed(::Java::Int).new(1) { 0 }
      if (fix_wrap)
        OS.gtk_widget_get_size_request(@label_handle, label_width, label_height)
        OS.gtk_widget_set_size_request(@label_handle, w_hint, h_hint)
      end
      size = nil
      if (!(@frame_handle).equal?(0))
        req_width = Array.typed(::Java::Int).new(1) { 0 }
        req_height = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_widget_get_size_request(self.attr_handle, req_width, req_height)
        OS.gtk_widget_set_size_request(self.attr_handle, w_hint, h_hint)
        size = compute_native_size(@frame_handle, -1, -1, changed)
        OS.gtk_widget_set_size_request(self.attr_handle, req_width[0], req_height[0])
      else
        size = compute_native_size(self.attr_handle, w_hint, h_hint, changed)
      end
      if (fix_wrap)
        OS.gtk_widget_set_size_request(@label_handle, label_width[0], label_height[0])
      end
      # Feature in GTK.  Instead of using the font height to determine
      # the preferred height of the widget, GTK uses the text metrics.
      # The fix is to ensure that the preferred height is at least as
      # tall as the font height.
      # 
      # NOTE: This work around does not fix the case when there are
      # muliple lines of text.
      if ((h_hint).equal?(SWT::DEFAULT) && !(@label_handle).equal?(0))
        # long
        layout = OS.gtk_label_get_layout(@label_handle)
        # long
        context = OS.pango_layout_get_context(layout)
        # long
        lang = OS.pango_context_get_language(context)
        # long
        font = get_font_description
        # long
        metrics = OS.pango_context_get_metrics(context, font, lang)
        ascent = OS._pango_pixels(OS.pango_font_metrics_get_ascent(metrics))
        descent = OS._pango_pixels(OS.pango_font_metrics_get_descent(metrics))
        OS.pango_font_metrics_unref(metrics)
        font_height = ascent + descent
        buffer = Array.typed(::Java::Int).new(1) { 0 }
        OS.g_object_get(@label_handle, OS.attr_ypad, buffer, 0)
        font_height += 2 * buffer[0]
        if (!(@frame_handle).equal?(0))
          # long
          style = OS.gtk_widget_get_style(@frame_handle)
          font_height += 2 * OS.gtk_style_get_ythickness(style)
          font_height += 2 * OS.gtk_container_get_border_width(@frame_handle)
        end
        size.attr_y = Math.max(size.attr_y, font_height)
      end
      return size
    end
    
    typesig { [::Java::Int] }
    def create_handle(index)
      self.attr_state |= HANDLE | THEME_BACKGROUND
      self.attr_fixed_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
      if ((self.attr_fixed_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_fixed_set_has_window(self.attr_fixed_handle, true)
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
          self.attr_handle = OS.gtk_hseparator_new
        else
          self.attr_handle = OS.gtk_vseparator_new
        end
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
      else
        self.attr_handle = OS.gtk_hbox_new(false, 0)
        if ((self.attr_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        @label_handle = OS.gtk_label_new_with_mnemonic(nil)
        if ((@label_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        @image_handle = OS.gtk_image_new
        if ((@image_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.gtk_container_add(self.attr_handle, @label_handle)
        OS.gtk_container_add(self.attr_handle, @image_handle)
      end
      if (!((self.attr_style & SWT::BORDER)).equal?(0))
        @frame_handle = OS.gtk_frame_new(nil)
        if ((@frame_handle).equal?(0))
          error(SWT::ERROR_NO_HANDLES)
        end
        OS.gtk_container_add(self.attr_fixed_handle, @frame_handle)
        OS.gtk_container_add(@frame_handle, self.attr_handle)
        OS.gtk_frame_set_shadow_type(@frame_handle, OS::GTK_SHADOW_ETCHED_IN)
      else
        OS.gtk_container_add(self.attr_fixed_handle, self.attr_handle)
      end
      if (!((self.attr_style & SWT::SEPARATOR)).equal?(0))
        return
      end
      if (!((self.attr_style & SWT::WRAP)).equal?(0))
        OS.gtk_label_set_line_wrap(@label_handle, true)
        if (OS::GTK_VERSION >= OS._version(2, 10, 0))
          OS.gtk_label_set_line_wrap_mode(@label_handle, OS::PANGO_WRAP_WORD_CHAR)
        end
      end
      set_alignment
    end
    
    typesig { [::Java::Int] }
    def create_widget(index)
      super(index)
      @text = ""
    end
    
    typesig { [] }
    def deregister
      super
      if (!(@frame_handle).equal?(0))
        self.attr_display.remove_widget(@frame_handle)
      end
      if (!(@label_handle).equal?(0))
        self.attr_display.remove_widget(@label_handle)
      end
      if (!(@image_handle).equal?(0))
        self.attr_display.remove_widget(@image_handle)
      end
    end
    
    typesig { [] }
    # long
    def event_handle
      return self.attr_fixed_handle
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
        return 0
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
    def get_border_width
      check_widget
      if (!(@frame_handle).equal?(0))
        return OS.gtk_style_get_xthickness(OS.gtk_widget_get_style(@frame_handle))
      end
      return 0
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
    def hook_events
      super
      if (!(@label_handle).equal?(0))
        OS.g_signal_connect_closure_by_id(@label_handle, self.attr_display.attr_signal_ids[MNEMONIC_ACTIVATE], 0, self.attr_display.attr_closures[MNEMONIC_ACTIVATE], false)
      end
    end
    
    typesig { [] }
    def is_described_by_label
      return false
    end
    
    typesig { [::Java::Char] }
    def mnemonic_hit(key)
      if ((@label_handle).equal?(0))
        return false
      end
      result = super(@label_handle, key)
      if (result)
        control = self.attr_parent
        while (!(control).nil?)
          children = control.__get_children
          index = 0
          while (index < children.attr_length)
            if ((children[index]).equal?(self))
              break
            end
            ((index += 1) - 1)
          end
          ((index += 1) - 1)
          if (index < children.attr_length)
            if (children[index].set_focus)
              return result
            end
          end
          control = control.attr_parent
        end
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
    def register
      super
      if (!(@frame_handle).equal?(0))
        self.attr_display.add_widget(@frame_handle, self)
      end
      if (!(@label_handle).equal?(0))
        self.attr_display.add_widget(@label_handle, self)
      end
      if (!(@image_handle).equal?(0))
        self.attr_display.add_widget(@image_handle, self)
      end
    end
    
    typesig { [] }
    def release_handle
      super
      @frame_handle = @image_handle = @label_handle = 0
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@image_list).nil?)
        @image_list.dispose
      end
      @image_list = nil
      @image = nil
      @text = (nil).to_s
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def resize_handle(width, height)
      OS.gtk_widget_set_size_request(self.attr_fixed_handle, width, height)
      OS.gtk_widget_set_size_request(!(@frame_handle).equal?(0) ? @frame_handle : self.attr_handle, width, height)
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
      set_alignment
    end
    
    typesig { [] }
    def set_alignment
      is_rtl = !((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0)
      if (!(@text).nil? && !(@text.length).equal?(0))
        if (OS::GTK_VERSION >= OS._version(2, 4, 0))
          # long
          layout = OS.gtk_label_get_layout(@label_handle)
          # long
          line_ptr = OS.pango_layout_get_line(layout, 0)
          resolved_dir = OS.pango_layout_line_get_resolved_dir(line_ptr)
          if ((resolved_dir).equal?(OS::PANGO_DIRECTION_RTL))
            is_rtl = !is_rtl
          end
        end
      end
      if (!((self.attr_style & SWT::LEFT)).equal?(0))
        OS.gtk_misc_set_alignment(@label_handle, 0.0, 0.0)
        OS.gtk_label_set_justify(@label_handle, is_rtl ? OS::GTK_JUSTIFY_RIGHT : OS::GTK_JUSTIFY_LEFT)
        OS.gtk_misc_set_alignment(@image_handle, 0.0, 0.5)
        return
      end
      if (!((self.attr_style & SWT::CENTER)).equal?(0))
        OS.gtk_misc_set_alignment(@label_handle, 0.5, 0.0)
        OS.gtk_label_set_justify(@label_handle, OS::GTK_JUSTIFY_CENTER)
        OS.gtk_misc_set_alignment(@image_handle, 0.5, 0.5)
        return
      end
      if (!((self.attr_style & SWT::RIGHT)).equal?(0))
        OS.gtk_misc_set_alignment(@label_handle, 1.0, 0.0)
        OS.gtk_label_set_justify(@label_handle, is_rtl ? OS::GTK_JUSTIFY_LEFT : OS::GTK_JUSTIFY_RIGHT)
        OS.gtk_misc_set_alignment(@image_handle, 1.0, 0.5)
        return
      end
    end
    
    typesig { [GdkColor] }
    def set_background_color(color)
      super(color)
      set_background_color(self.attr_fixed_handle, color)
      if (!(@label_handle).equal?(0))
        set_background_color(@label_handle, color)
      end
      if (!(@image_handle).equal?(0))
        set_background_color(@image_handle, color)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize)
      # Bug in GTK.  For some reason, when the label is
      # wrappable and its container is resized, it does not
      # cause the label to be wrapped.  The fix is to
      # determine the size that will wrap the label
      # and expilictly set that size to force the label
      # to wrap.
      # 
      # This part of the fix causes the label to be
      # resized to the preferred size but it still
      # won't draw properly.
      fix_wrap = resize && !(@label_handle).equal?(0) && !((self.attr_style & SWT::WRAP)).equal?(0)
      if (fix_wrap)
        OS.gtk_widget_set_size_request(@label_handle, -1, -1)
      end
      result = super(x, y, width, height, move, resize)
      # Bug in GTK.  For some reason, when the label is
      # wrappable and its container is resized, it does not
      # cause the label to be wrapped.  The fix is to
      # determine the size that will wrap the label
      # and expilictly set that size to force the label
      # to wrap.
      # 
      # This part of the fix forces the label to be
      # resized so that it will draw wrapped.
      if (fix_wrap)
        label_width = OS._gtk_widget_width(self.attr_handle)
        label_height = OS._gtk_widget_height(self.attr_handle)
        OS.gtk_widget_set_size_request(@label_handle, label_width, label_height)
        # Bug in GTK.  Setting the size request should invalidate the label's
        # layout, but it does not.  The fix is to resize the label directly.
        requisition = GtkRequisition.new
        OS.gtk_widget_size_request(@label_handle, requisition)
        allocation = GtkAllocation.new
        allocation.attr_x = OS._gtk_widget_x(@label_handle)
        allocation.attr_y = OS._gtk_widget_y(@label_handle)
        allocation.attr_width = label_width
        allocation.attr_height = label_height
        OS.gtk_widget_size_allocate(@label_handle, allocation)
      end
      return result
    end
    
    typesig { [::Java::Int] }
    # long
    def set_font_description(font)
      super(font)
      if (!(@label_handle).equal?(0))
        OS.gtk_widget_modify_font(@label_handle, font)
      end
      if (!(@image_handle).equal?(0))
        OS.gtk_widget_modify_font(@image_handle, font)
      end
    end
    
    typesig { [GdkColor] }
    def set_foreground_color(color)
      super(color)
      set_foreground_color(self.attr_fixed_handle, color)
      if (!(@label_handle).equal?(0))
        set_foreground_color(@label_handle, color)
      end
      if (!(@image_handle).equal?(0))
        set_foreground_color(@image_handle, color)
      end
    end
    
    typesig { [] }
    def set_orientation
      super
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        if (!(@label_handle).equal?(0))
          OS.gtk_widget_set_direction(@label_handle, OS::GTK_TEXT_DIR_RTL)
        end
        if (!(@image_handle).equal?(0))
          OS.gtk_widget_set_direction(@image_handle, OS::GTK_TEXT_DIR_RTL)
        end
      end
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
      @image = image
      if (!(@image_list).nil?)
        @image_list.dispose
      end
      @image_list = nil
      if (!(image).nil?)
        @image_list = ImageList.new
        image_index = @image_list.add(image)
        # long
        pixbuf = @image_list.get_pixbuf(image_index)
        OS.gtk_image_set_from_pixbuf(@image_handle, pixbuf)
        OS.gtk_widget_hide(@label_handle)
        OS.gtk_widget_show(@image_handle)
      else
        OS.gtk_image_set_from_pixbuf(@image_handle, 0)
        OS.gtk_widget_show(@label_handle)
        OS.gtk_widget_hide(@image_handle)
      end
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
      @text = string
      chars = fix_mnemonic(string)
      buffer = Converter.wcs_to_mbcs(nil, chars, true)
      OS.gtk_label_set_text_with_mnemonic(@label_handle, buffer)
      OS.gtk_widget_hide(@image_handle)
      OS.gtk_widget_show(@label_handle)
      set_alignment
    end
    
    typesig { [] }
    def show_widget
      super
      if (!(@frame_handle).equal?(0))
        OS.gtk_widget_show(@frame_handle)
      end
      if (!(@label_handle).equal?(0))
        OS.gtk_widget_show(@label_handle)
      end
    end
    
    private
    alias_method :initialize__label, :initialize
  end
  
end
