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
  module ToolTipImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # Instances of this class represent popup windows that are used
  # to inform or warn the user.
  # <p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>BALLOON, ICON_ERROR, ICON_INFORMATION, ICON_WARNING</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection</dd>
  # </dl>
  # </p><p>
  # Note: Only one of the styles ICON_ERROR, ICON_INFORMATION,
  # and ICON_WARNING may be specified.
  # </p><p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#tooltips">Tool Tips snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.2
  class ToolTip < ToolTipImports.const_get :Widget
    include_class_members ToolTipImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :text
    alias_method :attr_text, :text
    undef_method :text
    alias_method :attr_text=, :text=
    undef_method :text=
    
    attr_accessor :message
    alias_method :attr_message, :message
    undef_method :message
    alias_method :attr_message=, :message=
    undef_method :message=
    
    attr_accessor :item
    alias_method :attr_item, :item
    undef_method :item
    alias_method :attr_item=, :item=
    undef_method :item=
    
    attr_accessor :x
    alias_method :attr_x, :x
    undef_method :x
    alias_method :attr_x=, :x=
    undef_method :x=
    
    attr_accessor :y
    alias_method :attr_y, :y
    undef_method :y
    alias_method :attr_y=, :y=
    undef_method :y=
    
    attr_accessor :timer_id
    alias_method :attr_timer_id, :timer_id
    undef_method :timer_id
    alias_method :attr_timer_id=, :timer_id=
    undef_method :timer_id=
    
    # int
    attr_accessor :layout_text
    alias_method :attr_layout_text, :layout_text
    undef_method :layout_text
    alias_method :attr_layout_text=, :layout_text=
    undef_method :layout_text=
    
    attr_accessor :layout_message
    alias_method :attr_layout_message, :layout_message
    undef_method :layout_message
    alias_method :attr_layout_message=, :layout_message=
    undef_method :layout_message=
    
    attr_accessor :border_polygon
    alias_method :attr_border_polygon, :border_polygon
    undef_method :border_polygon
    alias_method :attr_border_polygon=, :border_polygon=
    undef_method :border_polygon=
    
    attr_accessor :spike_above
    alias_method :attr_spike_above, :spike_above
    undef_method :spike_above
    alias_method :attr_spike_above=, :spike_above=
    undef_method :spike_above=
    
    attr_accessor :autohide
    alias_method :attr_autohide, :autohide
    undef_method :autohide
    alias_method :attr_autohide=, :autohide=
    undef_method :autohide=
    
    class_module.module_eval {
      const_set_lazy(:BORDER) { 5 }
      const_attr_reader  :BORDER
      
      const_set_lazy(:PADDING) { 5 }
      const_attr_reader  :PADDING
      
      const_set_lazy(:INSET) { 4 }
      const_attr_reader  :INSET
      
      const_set_lazy(:TIP_HEIGHT) { 20 }
      const_attr_reader  :TIP_HEIGHT
      
      const_set_lazy(:IMAGE_SIZE) { 16 }
      const_attr_reader  :IMAGE_SIZE
      
      const_set_lazy(:DELAY) { 8000 }
      const_attr_reader  :DELAY
    }
    
    typesig { [Shell, ::Java::Int] }
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
    # @see SWT#ICON_ERROR
    # @see SWT#ICON_INFORMATION
    # @see SWT#ICON_WARNING
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @parent = nil
      @text = nil
      @message = nil
      @item = nil
      @x = 0
      @y = 0
      @timer_id = 0
      @layout_text = 0
      @layout_message = 0
      @border_polygon = nil
      @spike_above = false
      @autohide = false
      super(parent, check_style(style))
      @layout_text = 0
      @layout_message = 0
      @parent = parent
      create_widget(0)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        mask = SWT::ICON_ERROR | SWT::ICON_INFORMATION | SWT::ICON_WARNING
        if (((style & mask)).equal?(0))
          return style
        end
        return check_bits(style, SWT::ICON_INFORMATION, SWT::ICON_WARNING, SWT::ICON_ERROR, 0, 0, 0)
      end
    }
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the receiver is selected by the user, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # <code>widgetSelected</code> is called when the receiver is selected.
    # <code>widgetDefaultSelected</code> is not called.
    # </p>
    # 
    # @param listener the listener which should be notified when the receiver is selected by the user
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SelectionListener
    # @see #removeSelectionListener
    # @see SelectionEvent
    def add_selection_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Selection, typed_listener)
      add_listener(SWT::DefaultSelection, typed_listener)
    end
    
    typesig { [] }
    def configure
      # int
      screen = OS.gdk_screen_get_default
      OS.gtk_widget_realize(self.attr_handle)
      monitor_number = OS.gdk_screen_get_monitor_at_window(screen, OS._gtk_widget_window(self.attr_handle))
      dest = GdkRectangle.new
      OS.gdk_screen_get_monitor_geometry(screen, monitor_number, dest)
      point = get_size(dest.attr_width / 4)
      w = point.attr_x
      h = point.attr_y
      point = get_location
      x = point.attr_x
      y = point.attr_y
      OS.gtk_window_resize(self.attr_handle, w, h + TIP_HEIGHT)
      polyline = nil
      @spike_above = dest.attr_height >= y + h + TIP_HEIGHT
      if (dest.attr_width >= x + w)
        if (dest.attr_height >= y + h + TIP_HEIGHT)
          t = TIP_HEIGHT
          polyline = Array.typed(::Java::Int).new([0, 5 + t, 1, 5 + t, 1, 3 + t, 3, 1 + t, 5, 1 + t, 5, t, 16, t, 16, 0, 35, t, w - 5, t, w - 5, 1 + t, w - 3, 1 + t, w - 1, 3 + t, w - 1, 5 + t, w, 5 + t, w, h - 5 + t, w - 1, h - 5 + t, w - 1, h - 3 + t, w - 2, h - 3 + t, w - 2, h - 2 + t, w - 3, h - 2 + t, w - 3, h - 1 + t, w - 5, h - 1 + t, w - 5, h + t, 5, h + t, 5, h - 1 + t, 3, h - 1 + t, 3, h - 2 + t, 2, h - 2 + t, 2, h - 3 + t, 1, h - 3 + t, 1, h - 5 + t, 0, h - 5 + t, 0, 5 + t])
          @border_polygon = Array.typed(::Java::Int).new([0, 5 + t, 1, 4 + t, 1, 3 + t, 3, 1 + t, 4, 1 + t, 5, t, 16, t, 16, 1, 35, t, w - 6, 0 + t, w - 5, 1 + t, w - 4, 1 + t, w - 2, 3 + t, w - 2, 4 + t, w - 1, 5 + t, w - 1, h - 6 + t, w - 2, h - 5 + t, w - 2, h - 4 + t, w - 4, h - 2 + t, w - 5, h - 2 + t, w - 6, h - 1 + t, 5, h - 1 + t, 4, h - 2 + t, 3, h - 2 + t, 1, h - 4 + t, 1, h - 5 + t, 0, h - 6 + t, 0, 5 + t])
          if (!((@parent.attr_style & SWT::MIRRORED)).equal?(0))
            x -= w - 36
            polyline[12] = w - 36
            polyline[14] = w - 16
            polyline[16] = w - 15
            @border_polygon[12] = w - 35
            @border_polygon[14] = @border_polygon[16] = w - 16
          end
          OS.gtk_window_move(self.attr_handle, Math.max(0, x - 17), y)
        else
          polyline = Array.typed(::Java::Int).new([0, 5, 1, 5, 1, 3, 3, 1, 5, 1, 5, 0, w - 5, 0, w - 5, 1, w - 3, 1, w - 1, 3, w - 1, 5, w, 5, w, h - 5, w - 1, h - 5, w - 1, h - 3, w - 2, h - 3, w - 2, h - 2, w - 3, h - 2, w - 3, h - 1, w - 5, h - 1, w - 5, h, 35, h, 16, h + TIP_HEIGHT, 16, h, 5, h, 5, h - 1, 3, h - 1, 3, h - 2, 2, h - 2, 2, h - 3, 1, h - 3, 1, h - 5, 0, h - 5, 0, 5])
          @border_polygon = Array.typed(::Java::Int).new([0, 5, 1, 4, 1, 3, 3, 1, 4, 1, 5, 0, w - 6, 0, w - 5, 1, w - 4, 1, w - 2, 3, w - 2, 4, w - 1, 5, w - 1, h - 6, w - 2, h - 5, w - 2, h - 4, w - 4, h - 2, w - 5, h - 2, w - 6, h - 1, 35, h - 1, 17, h + TIP_HEIGHT - 2, 17, h - 1, 5, h - 1, 4, h - 2, 3, h - 2, 1, h - 4, 1, h - 5, 0, h - 6, 0, 5])
          if (!((@parent.attr_style & SWT::MIRRORED)).equal?(0))
            x -= w - 36
            polyline[42] = polyline[44] = w - 16
            polyline[46] = w - 35
            @border_polygon[36] = @border_polygon[38] = w - 17
            @border_polygon[40] = w - 35
          end
          OS.gtk_window_move(self.attr_handle, Math.max(0, x - 17), y - h - TIP_HEIGHT)
        end
      else
        if (dest.attr_height >= y + h + TIP_HEIGHT)
          t = TIP_HEIGHT
          polyline = Array.typed(::Java::Int).new([0, 5 + t, 1, 5 + t, 1, 3 + t, 3, 1 + t, 5, 1 + t, 5, t, w - 35, t, w - 16, 0, w - 16, t, w - 5, t, w - 5, 1 + t, w - 3, 1 + t, w - 1, 3 + t, w - 1, 5 + t, w, 5 + t, w, h - 5 + t, w - 1, h - 5 + t, w - 1, h - 3 + t, w - 2, h - 3 + t, w - 2, h - 2 + t, w - 3, h - 2 + t, w - 3, h - 1 + t, w - 5, h - 1 + t, w - 5, h + t, 5, h + t, 5, h - 1 + t, 3, h - 1 + t, 3, h - 2 + t, 2, h - 2 + t, 2, h - 3 + t, 1, h - 3 + t, 1, h - 5 + t, 0, h - 5 + t, 0, 5 + t])
          @border_polygon = Array.typed(::Java::Int).new([0, 5 + t, 1, 4 + t, 1, 3 + t, 3, 1 + t, 4, 1 + t, 5, t, w - 35, t, w - 17, 2, w - 17, t, w - 6, t, w - 5, 1 + t, w - 4, 1 + t, w - 2, 3 + t, w - 2, 4 + t, w - 1, 5 + t, w - 1, h - 6 + t, w - 2, h - 5 + t, w - 2, h - 4 + t, w - 4, h - 2 + t, w - 5, h - 2 + t, w - 6, h - 1 + t, 5, h - 1 + t, 4, h - 2 + t, 3, h - 2 + t, 1, h - 4 + t, 1, h - 5 + t, 0, h - 6 + t, 0, 5 + t])
          if (!((@parent.attr_style & SWT::MIRRORED)).equal?(0))
            x += w - 35
            polyline[12] = polyline[14] = 16
            polyline[16] = 35
            @border_polygon[12] = @border_polygon[14] = 16
            @border_polygon[16] = 35
          end
          OS.gtk_window_move(self.attr_handle, Math.min(dest.attr_width - w, x - w + 17), y)
        else
          polyline = Array.typed(::Java::Int).new([0, 5, 1, 5, 1, 3, 3, 1, 5, 1, 5, 0, w - 5, 0, w - 5, 1, w - 3, 1, w - 1, 3, w - 1, 5, w, 5, w, h - 5, w - 1, h - 5, w - 1, h - 3, w - 2, h - 3, w - 2, h - 2, w - 3, h - 2, w - 3, h - 1, w - 5, h - 1, w - 5, h, w - 16, h, w - 16, h + TIP_HEIGHT, w - 35, h, 5, h, 5, h - 1, 3, h - 1, 3, h - 2, 2, h - 2, 2, h - 3, 1, h - 3, 1, h - 5, 0, h - 5, 0, 5])
          @border_polygon = Array.typed(::Java::Int).new([0, 5, 1, 4, 1, 3, 3, 1, 4, 1, 5, 0, w - 6, 0, w - 5, 1, w - 4, 1, w - 2, 3, w - 2, 4, w - 1, 5, w - 1, h - 6, w - 2, h - 5, w - 2, h - 4, w - 4, h - 2, w - 5, h - 2, w - 6, h - 1, w - 17, h - 1, w - 17, h + TIP_HEIGHT - 2, w - 36, h - 1, 5, h - 1, 4, h - 2, 3, h - 2, 1, h - 4, 1, h - 5, 0, h - 6, 0, 5])
          if (!((@parent.attr_style & SWT::MIRRORED)).equal?(0))
            x += w - 35
            polyline[42] = 35
            polyline[44] = polyline[46] = 16
            @border_polygon[36] = 35
            @border_polygon[38] = @border_polygon[40] = 17
          end
          OS.gtk_window_move(self.attr_handle, Math.min(dest.attr_width - w, x - w + 17), y - h - TIP_HEIGHT)
        end
      end
      # int
      rgn = OS.gdk_region_polygon(polyline, polyline.attr_length / 2, OS::GDK_EVEN_ODD_RULE)
      OS.gtk_widget_realize(self.attr_handle)
      # int
      window = OS._gtk_widget_window(self.attr_handle)
      OS.gdk_window_shape_combine_region(window, rgn, 0, 0)
      OS.gdk_region_destroy(rgn)
    end
    
    typesig { [::Java::Int] }
    def create_handle(index)
      self.attr_state |= HANDLE
      if (!((self.attr_style & SWT::BALLOON)).equal?(0))
        self.attr_handle = OS.gtk_window_new(OS::GTK_WINDOW_POPUP)
        background = self.attr_display.get_system_color(SWT::COLOR_INFO_BACKGROUND)
        OS.gtk_widget_modify_bg(self.attr_handle, OS::GTK_STATE_NORMAL, background.attr_handle)
        OS.gtk_widget_set_app_paintable(self.attr_handle, true)
      else
        self.attr_handle = OS.gtk_tooltips_new
        if ((self.attr_handle).equal?(0))
          SWT.error(SWT::ERROR_NO_HANDLES)
        end
        # Bug in Solaris-GTK.  Invoking gtk_tooltips_force_window()
        # can cause a crash in older versions of GTK.  The fix is
        # to avoid this call if the GTK version is older than 2.2.x.
        if (OS::GTK_VERSION >= OS._version(2, 2, 1))
          OS.gtk_tooltips_force_window(self.attr_handle)
        end
        OS.g_object_ref(self.attr_handle)
        OS.gtk_object_sink(self.attr_handle)
      end
    end
    
    typesig { [::Java::Int] }
    def create_widget(index)
      super(index)
      @text = ""
      @message = ""
      @x = @y = -1
      @autohide = true
    end
    
    typesig { [] }
    def deregister
      super
      if (((self.attr_style & SWT::BALLOON)).equal?(0))
        # int
        tip_window = OS._gtk_tooltips_tip_window(self.attr_handle)
        if (!(tip_window).equal?(0))
          self.attr_display.remove_widget(tip_window)
        end
      end
    end
    
    typesig { [] }
    def destroy_widget
      # int
      top_handle_ = top_handle
      release_handle
      if (!(top_handle_).equal?(0) && !((self.attr_state & HANDLE)).equal?(0))
        if (!((self.attr_style & SWT::BALLOON)).equal?(0))
          OS.gtk_widget_destroy(top_handle_)
        else
          OS.g_object_unref(top_handle_)
        end
      end
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is automatically
    # hidden by the platform, and <code>false</code> otherwise.
    # 
    # @return the receiver's auto hide state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_auto_hide
      check_widget
      return @autohide
    end
    
    typesig { [] }
    def get_location
      x = @x
      y = @y
      if (!(@item).nil?)
        # int
        item_handle = @item.attr_handle
        OS.gtk_widget_realize(item_handle)
        # int
        window = OS._gtk_widget_window(item_handle)
        px = Array.typed(::Java::Int).new(1) { 0 }
        py = Array.typed(::Java::Int).new(1) { 0 }
        OS.gdk_window_get_origin(window, px, py)
        x = px[0] + OS._gtk_widget_width(item_handle) / 2
        y = py[0] + OS._gtk_widget_height(item_handle) / 2
      end
      if ((x).equal?(-1) || (y).equal?(-1))
        px = Array.typed(::Java::Int).new(1) { 0 }
        py = Array.typed(::Java::Int).new(1) { 0 }
        OS.gdk_window_get_pointer(0, px, py, nil)
        x = px[0]
        y = py[0]
      end
      return Point.new(x, y)
    end
    
    typesig { [] }
    # Returns the receiver's message, which will be an empty
    # string if it has never been set.
    # 
    # @return the receiver's message
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_message
      check_widget
      return @message
    end
    
    typesig { [] }
    def get_name_text
      return get_text
    end
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>Shell</code>.
    # 
    # @return the receiver's parent
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_parent
      check_widget
      return @parent
    end
    
    typesig { [::Java::Int] }
    def get_size(max_width)
      text_width = 0
      message_width = 0
      w = Array.typed(::Java::Int).new(1) { 0 }
      h = Array.typed(::Java::Int).new(1) { 0 }
      if (!(@layout_text).equal?(0))
        OS.pango_layout_set_width(@layout_text, -1)
        OS.pango_layout_get_size(@layout_text, w, h)
        text_width = OS._pango_pixels(w[0])
      end
      if (!(@layout_message).equal?(0))
        OS.pango_layout_set_width(@layout_message, -1)
        OS.pango_layout_get_size(@layout_message, w, h)
        message_width = OS._pango_pixels(w[0])
      end
      message_trim = 2 * INSET + 2 * BORDER + 2 * PADDING
      has_image = !(@layout_text).equal?(0) && !((self.attr_style & (SWT::ICON_ERROR | SWT::ICON_INFORMATION | SWT::ICON_WARNING))).equal?(0)
      text_trim = message_trim + (has_image ? IMAGE_SIZE : 0)
      width = Math.min(max_width, Math.max(text_width + text_trim, message_width + message_trim))
      text_height = 0
      message_height = 0
      if (!(@layout_text).equal?(0))
        OS.pango_layout_set_width(@layout_text, (max_width - text_trim) * OS::PANGO_SCALE)
        OS.pango_layout_get_size(@layout_text, w, h)
        text_height = OS._pango_pixels(h[0])
      end
      if (!(@layout_message).equal?(0))
        OS.pango_layout_set_width(@layout_message, (max_width - message_trim) * OS::PANGO_SCALE)
        OS.pango_layout_get_size(@layout_message, w, h)
        message_height = OS._pango_pixels(h[0])
      end
      height = 2 * BORDER + 2 * PADDING + message_height
      if (!(@layout_text).equal?(0))
        height += Math.max(IMAGE_SIZE, text_height) + 2 * PADDING
      end
      return Point.new(width, height)
    end
    
    typesig { [] }
    # Returns the receiver's text, which will be an empty
    # string if it has never been set.
    # 
    # @return the receiver's text
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
    # Returns <code>true</code> if the receiver is visible, and
    # <code>false</code> otherwise.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, this method
    # may still indicate that it is considered visible even though
    # it may not actually be showing.
    # </p>
    # 
    # @return the receiver's visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_visible
      check_widget
      if (!((self.attr_style & SWT::BALLOON)).equal?(0))
        return OS._gtk_widget_visible(self.attr_handle)
      end
      # int
      tip_window = OS._gtk_tooltips_tip_window(self.attr_handle)
      return OS._gtk_widget_visible(tip_window)
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_button_press_event(widget, event)
      notify_listeners(SWT::Selection, Event.new)
      set_visible(false)
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_expose_event(widget, event_ptr)
      # int
      window = OS._gtk_widget_window(self.attr_handle)
      # int
      gdk_gc = OS.gdk_gc_new(window)
      OS.gdk_draw_polygon(window, gdk_gc, 0, @border_polygon, @border_polygon.attr_length / 2)
      x = BORDER + PADDING
      y = BORDER + PADDING
      if (@spike_above)
        y += TIP_HEIGHT
      end
      if (!(@layout_text).equal?(0))
        buffer = nil
        id = self.attr_style & (SWT::ICON_ERROR | SWT::ICON_INFORMATION | SWT::ICON_WARNING)
        case (id)
        when SWT::ICON_ERROR
          buffer = Converter.wcs_to_mbcs(nil, "gtk-dialog-error", true)
        when SWT::ICON_INFORMATION
          buffer = Converter.wcs_to_mbcs(nil, "gtk-dialog-info", true)
        when SWT::ICON_WARNING
          buffer = Converter.wcs_to_mbcs(nil, "gtk-dialog-warning", true)
        end
        if (!(buffer).nil?)
          # int
          style = OS.gtk_widget_get_default_style
          # int
          pixbuf = OS.gtk_icon_set_render_icon(OS.gtk_icon_factory_lookup_default(buffer), style, OS::GTK_TEXT_DIR_NONE, OS::GTK_STATE_NORMAL, OS::GTK_ICON_SIZE_MENU, 0, 0)
          OS.gdk_draw_pixbuf(window, gdk_gc, pixbuf, 0, 0, x, y, IMAGE_SIZE, IMAGE_SIZE, OS::GDK_RGB_DITHER_NORMAL, 0, 0)
          OS.g_object_unref(pixbuf)
          x += IMAGE_SIZE
        end
        x += INSET
        OS.gdk_draw_layout(window, gdk_gc, x, y, @layout_text)
        w = Array.typed(::Java::Int).new(1) { 0 }
        h = Array.typed(::Java::Int).new(1) { 0 }
        OS.pango_layout_get_size(@layout_text, w, h)
        y += 2 * PADDING + Math.max(IMAGE_SIZE, OS._pango_pixels(h[0]))
      end
      if (!(@layout_message).equal?(0))
        x = BORDER + PADDING + INSET
        OS.gdk_draw_layout(window, gdk_gc, x, y, @layout_message)
      end
      OS.g_object_unref(gdk_gc)
      return 0
    end
    
    typesig { [::Java::Long, ::Java::Long] }
    # int
    # int
    # int
    def gtk_size_allocate(widget, allocation)
      point = get_location
      x = point.attr_x
      y = point.attr_y
      # int
      screen = OS.gdk_screen_get_default
      OS.gtk_widget_realize(widget)
      monitor_number = OS.gdk_screen_get_monitor_at_window(screen, OS._gtk_widget_window(widget))
      dest = GdkRectangle.new
      OS.gdk_screen_get_monitor_geometry(screen, monitor_number, dest)
      w = OS._gtk_widget_width(widget)
      h = OS._gtk_widget_height(widget)
      if (dest.attr_height < y + h)
        y -= h
      end
      if (dest.attr_width < x + w)
        x -= w
      end
      OS.gtk_window_move(widget, x, y)
      return 0
    end
    
    typesig { [] }
    def hook_events
      if (!((self.attr_style & SWT::BALLOON)).equal?(0))
        OS.g_signal_connect_closure(self.attr_handle, OS.attr_expose_event, self.attr_display.attr_closures[EXPOSE_EVENT], false)
        OS.gtk_widget_add_events(self.attr_handle, OS::GDK_BUTTON_PRESS_MASK)
        OS.g_signal_connect_closure(self.attr_handle, OS.attr_button_press_event, self.attr_display.attr_closures[BUTTON_PRESS_EVENT], false)
      else
        # int
        tip_window = OS._gtk_tooltips_tip_window(self.attr_handle)
        if (!(tip_window).equal?(0))
          OS.g_signal_connect_closure(tip_window, OS.attr_size_allocate, self.attr_display.attr_closures[SIZE_ALLOCATE], false)
          OS.gtk_widget_add_events(tip_window, OS::GDK_BUTTON_PRESS_MASK)
          OS.g_signal_connect_closure(tip_window, OS.attr_button_press_event, self.attr_display.attr_closures[BUTTON_PRESS_EVENT], false)
        end
      end
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is visible and all
    # of the receiver's ancestors are visible and <code>false</code>
    # otherwise.
    # 
    # @return the receiver's visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getVisible
    def is_visible
      check_widget
      return get_visible
    end
    
    typesig { [] }
    def register
      super
      if (((self.attr_style & SWT::BALLOON)).equal?(0))
        # int
        tip_window = OS._gtk_tooltips_tip_window(self.attr_handle)
        if (!(tip_window).equal?(0))
          self.attr_display.add_widget(tip_window, self)
        end
      end
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@layout_text).equal?(0))
        OS.g_object_unref(@layout_text)
      end
      @layout_text = 0
      if (!(@layout_message).equal?(0))
        OS.g_object_unref(@layout_message)
      end
      @layout_message = 0
      if (!(@timer_id).equal?(0))
        OS.gtk_timeout_remove(@timer_id)
      end
      @timer_id = 0
      @text = RJava.cast_to_string(nil)
      @message = RJava.cast_to_string(nil)
      @border_polygon = nil
    end
    
    typesig { [SelectionListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the receiver is selected by the user.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SelectionListener
    # @see #addSelectionListener
    def remove_selection_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Selection, listener)
      self.attr_event_table.unhook(SWT::DefaultSelection, listener)
    end
    
    typesig { [::Java::Boolean] }
    # Makes the receiver hide automatically when <code>true</code>,
    # and remain visible when <code>false</code>.
    # 
    # @param autoHide the auto hide state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getVisible
    # @see #setVisible
    def set_auto_hide(autohide)
      check_widget
      @autohide = autohide
      # TODO - update when visible
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Sets the location of the receiver, which must be a tooltip,
    # to the point specified by the arguments which are relative
    # to the display.
    # <p>
    # Note that this is different from most widgets where the
    # location of the widget is relative to the parent.
    # </p>
    # 
    # @param x the new x coordinate for the receiver
    # @param y the new y coordinate for the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_location(x, y)
      check_widget
      @x = x
      @y = y
      if (!((self.attr_style & SWT::BALLOON)).equal?(0))
        if (OS._gtk_widget_visible(self.attr_handle))
          configure
        end
      else
        # int
        tip_window = OS._gtk_tooltips_tip_window(self.attr_handle)
        if (OS._gtk_widget_visible(tip_window))
          OS.gtk_window_move(tip_window, x, y)
        end
      end
    end
    
    typesig { [Point] }
    # Sets the location of the receiver, which must be a tooltip,
    # to the point specified by the argument which is relative
    # to the display.
    # <p>
    # Note that this is different from most widgets where the
    # location of the widget is relative to the parent.
    # </p><p>
    # Note that the platform window manager ultimately has control
    # over the location of tooltips.
    # </p>
    # 
    # @param location the new location for the receiver
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_location(location)
      check_widget
      if ((location).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_location(location.attr_x, location.attr_y)
    end
    
    typesig { [String] }
    # Sets the receiver's message.
    # 
    # @param string the new message
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the text is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_message(string)
      check_widget
      if ((string).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      @message = string
      if (((self.attr_style & SWT::BALLOON)).equal?(0))
        return
      end
      if (!(@layout_message).equal?(0))
        OS.g_object_unref(@layout_message)
      end
      @layout_message = 0
      if (!(@message.length).equal?(0))
        buffer = Converter.wcs_to_mbcs(nil, @message, true)
        @layout_message = OS.gtk_widget_create_pango_layout(self.attr_handle, buffer)
        if (OS::GTK_VERSION >= OS._version(2, 4, 0))
          OS.pango_layout_set_auto_dir(@layout_message, false)
        end
        OS.pango_layout_set_wrap(@layout_message, OS::PANGO_WRAP_WORD_CHAR)
      end
      if (OS._gtk_widget_visible(self.attr_handle))
        configure
      end
    end
    
    typesig { [String] }
    # Sets the receiver's text.
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
      @text = string
      if (((self.attr_style & SWT::BALLOON)).equal?(0))
        return
      end
      if (!(@layout_text).equal?(0))
        OS.g_object_unref(@layout_text)
      end
      @layout_text = 0
      if (!(@text.length).equal?(0))
        buffer = Converter.wcs_to_mbcs(nil, @text, true)
        @layout_text = OS.gtk_widget_create_pango_layout(self.attr_handle, buffer)
        if (OS::GTK_VERSION >= OS._version(2, 4, 0))
          OS.pango_layout_set_auto_dir(@layout_text, false)
        end
        # int
        bold_attr = OS.pango_attr_weight_new(OS::PANGO_WEIGHT_BOLD)
        attribute = PangoAttribute.new
        OS.memmove(attribute, bold_attr, PangoAttribute.attr_sizeof)
        attribute.attr_start_index = 0
        attribute.attr_end_index = buffer.attr_length
        OS.memmove(bold_attr, attribute, PangoAttribute.attr_sizeof)
        # int
        attr_list = OS.pango_attr_list_new
        OS.pango_attr_list_insert(attr_list, bold_attr)
        OS.pango_layout_set_attributes(@layout_text, attr_list)
        OS.pango_attr_list_unref(attr_list)
        OS.pango_layout_set_wrap(@layout_text, OS::PANGO_WRAP_WORD_CHAR)
      end
      if (OS._gtk_widget_visible(self.attr_handle))
        configure
      end
    end
    
    typesig { [::Java::Boolean] }
    # Marks the receiver as visible if the argument is <code>true</code>,
    # and marks it invisible otherwise.
    # <p>
    # If one of the receiver's ancestors is not visible or some
    # other condition makes the receiver not visible, marking
    # it visible may not actually cause it to be displayed.
    # </p>
    # 
    # @param visible the new visibility state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_visible(visible)
      if (!(@timer_id).equal?(0))
        OS.gtk_timeout_remove(@timer_id)
      end
      @timer_id = 0
      if (visible)
        if (!((self.attr_style & SWT::BALLOON)).equal?(0))
          configure
          OS.gtk_widget_show(self.attr_handle)
        else
          # int
          vbox_handle = @parent.attr_vbox_handle
          string = StringBuffer.new(@text)
          if (@text.length > 0)
            string.append("\n\n")
          end
          string.append(@message)
          buffer = Converter.wcs_to_mbcs(nil, string.to_s, true)
          OS.gtk_tooltips_set_tip(self.attr_handle, vbox_handle, buffer, nil)
          # int
          data = OS.gtk_tooltips_data_get(vbox_handle)
          OS._gtk_tooltips_set_active(self.attr_handle, data)
          OS.gtk_tooltips_set_tip(self.attr_handle, vbox_handle, buffer, nil)
        end
        if (@autohide)
          @timer_id = OS.gtk_timeout_add(DELAY, self.attr_display.attr_window_timer_proc, self.attr_handle)
        end
      else
        if (!((self.attr_style & SWT::BALLOON)).equal?(0))
          OS.gtk_widget_hide(self.attr_handle)
        else
          # int
          tip_window = OS._gtk_tooltips_tip_window(self.attr_handle)
          OS.gtk_widget_hide(tip_window)
        end
      end
    end
    
    typesig { [::Java::Long] }
    # int
    # int
    def timer_proc(widget)
      if (!((self.attr_style & SWT::BALLOON)).equal?(0))
        OS.gtk_widget_hide(self.attr_handle)
      else
        # int
        tip_window = OS._gtk_tooltips_tip_window(self.attr_handle)
        OS.gtk_widget_hide(tip_window)
      end
      return 0
    end
    
    private
    alias_method :initialize__tool_tip, :initialize
  end
  
end
