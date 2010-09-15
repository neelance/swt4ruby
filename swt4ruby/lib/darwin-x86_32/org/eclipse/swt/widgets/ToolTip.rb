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
  module ToolTipImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
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
  # @noextend This class is not intended to be subclassed by clients.
  class ToolTip < ToolTipImports.const_get :Widget
    include_class_members ToolTipImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :tip
    alias_method :attr_tip, :tip
    undef_method :tip
    alias_method :attr_tip=, :tip=
    undef_method :tip=
    
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
    
    attr_accessor :listener
    alias_method :attr_listener, :listener
    undef_method :listener
    alias_method :attr_listener=, :listener=
    undef_method :listener=
    
    attr_accessor :parent_listener
    alias_method :attr_parent_listener, :parent_listener
    undef_method :parent_listener
    alias_method :attr_parent_listener=, :parent_listener=
    undef_method :parent_listener=
    
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
    
    attr_accessor :region
    alias_method :attr_region, :region
    undef_method :region
    alias_method :attr_region=, :region=
    undef_method :region=
    
    attr_accessor :bold_font
    alias_method :attr_bold_font, :bold_font
    undef_method :bold_font
    alias_method :attr_bold_font=, :bold_font=
    undef_method :bold_font=
    
    attr_accessor :runnable
    alias_method :attr_runnable, :runnable
    undef_method :runnable
    alias_method :attr_runnable=, :runnable=
    undef_method :runnable=
    
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
      
      const_set_lazy(:DELAY) { 10000 }
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
    # @see SWT#BALLOON
    # @see SWT#ICON_ERROR
    # @see SWT#ICON_INFORMATION
    # @see SWT#ICON_WARNING
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @parent = nil
      @tip = nil
      @item = nil
      @x = 0
      @y = 0
      @border_polygon = nil
      @spike_above = false
      @autohide = false
      @listener = nil
      @parent_listener = nil
      @layout_text = nil
      @layout_message = nil
      @region = nil
      @bold_font = nil
      @runnable = nil
      super(parent, check_style(style))
      @parent = parent
      @autohide = true
      @x = @y = -1
      display = get_display
      @tip = Shell.new(parent, SWT::ON_TOP | SWT::NO_TRIM)
      background = display.get_system_color(SWT::COLOR_INFO_BACKGROUND)
      @tip.set_background(background)
      @listener = Class.new(Listener.class == Class ? Listener : Object) do
        local_class_in ToolTip
        include_class_members ToolTip
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          case (event.attr_type)
          when SWT::Dispose
            on_dispose(event)
          when SWT::Paint
            on_paint(event)
          when SWT::MouseDown
            on_mouse_down(event)
          end
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      add_listener(SWT::Dispose, @listener)
      @tip.add_listener(SWT::Paint, @listener)
      @tip.add_listener(SWT::MouseDown, @listener)
      @parent_listener = Class.new(Listener.class == Class ? Listener : Object) do
        local_class_in ToolTip
        include_class_members ToolTip
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          dispose
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      parent.add_listener(SWT::Dispose, @parent_listener)
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
      display = @parent.get_display
      x = @x
      y = @y
      if ((x).equal?(-1) || (y).equal?(-1))
        point = nil
        if (!(@item).nil?)
          point = @item.get_location
        else
          point = display.get_cursor_location
        end
        x = point.attr_x
        y = point.attr_y
      end
      monitor = @parent.get_monitor
      dest = monitor.get_bounds
      size = get_size(dest.attr_width / 4)
      w = size.attr_x
      h = size.attr_y
      t = !((self.attr_style & SWT::BALLOON)).equal?(0) ? TIP_HEIGHT : 0
      i = !((self.attr_style & SWT::BALLOON)).equal?(0) ? 16 : 0
      @tip.set_size(w, h + t)
      polyline = nil
      @spike_above = dest.attr_height >= y + size.attr_y + t
      if (dest.attr_width >= x + size.attr_x)
        if (dest.attr_height >= y + size.attr_y + t)
          polyline = Array.typed(::Java::Int).new([0, 5 + t, 1, 5 + t, 1, 3 + t, 3, 1 + t, 5, 1 + t, 5, t, 16, t, 16, 0, 35, t, w - 5, t, w - 5, 1 + t, w - 3, 1 + t, w - 1, 3 + t, w - 1, 5 + t, w, 5 + t, w, h - 5 + t, w - 1, h - 5 + t, w - 1, h - 3 + t, w - 2, h - 3 + t, w - 2, h - 2 + t, w - 3, h - 2 + t, w - 3, h - 1 + t, w - 5, h - 1 + t, w - 5, h + t, 5, h + t, 5, h - 1 + t, 3, h - 1 + t, 3, h - 2 + t, 2, h - 2 + t, 2, h - 3 + t, 1, h - 3 + t, 1, h - 5 + t, 0, h - 5 + t, 0, 5 + t])
          @border_polygon = Array.typed(::Java::Int).new([0, 5 + t, 1, 4 + t, 1, 3 + t, 3, 1 + t, 4, 1 + t, 5, t, 16, t, 16, 1, 35, t, w - 6, 0 + t, w - 5, 1 + t, w - 4, 1 + t, w - 2, 3 + t, w - 2, 4 + t, w - 1, 5 + t, w - 1, h - 6 + t, w - 2, h - 5 + t, w - 2, h - 4 + t, w - 4, h - 2 + t, w - 5, h - 2 + t, w - 6, h - 1 + t, 5, h - 1 + t, 4, h - 2 + t, 3, h - 2 + t, 1, h - 4 + t, 1, h - 5 + t, 0, h - 6 + t, 0, 5 + t])
          @tip.set_location(Math.max(0, x - i), y)
        else
          polyline = Array.typed(::Java::Int).new([0, 5, 1, 5, 1, 3, 3, 1, 5, 1, 5, 0, w - 5, 0, w - 5, 1, w - 3, 1, w - 1, 3, w - 1, 5, w, 5, w, h - 5, w - 1, h - 5, w - 1, h - 3, w - 2, h - 3, w - 2, h - 2, w - 3, h - 2, w - 3, h - 1, w - 5, h - 1, w - 5, h, 35, h, 16, h + t, 16, h, 5, h, 5, h - 1, 3, h - 1, 3, h - 2, 2, h - 2, 2, h - 3, 1, h - 3, 1, h - 5, 0, h - 5, 0, 5])
          @border_polygon = Array.typed(::Java::Int).new([0, 5, 1, 4, 1, 3, 3, 1, 4, 1, 5, 0, w - 6, 0, w - 5, 1, w - 4, 1, w - 2, 3, w - 2, 4, w - 1, 5, w - 1, h - 6, w - 2, h - 5, w - 2, h - 4, w - 4, h - 2, w - 5, h - 2, w - 6, h - 1, 36, h - 1, 16, h + t - 1, 16, h - 1, 5, h - 1, 4, h - 2, 3, h - 2, 1, h - 4, 1, h - 5, 0, h - 6, 0, 5])
          @tip.set_location(Math.max(0, x - i), y - size.attr_y - t)
        end
      else
        if (dest.attr_height >= y + size.attr_y + t)
          polyline = Array.typed(::Java::Int).new([0, 5 + t, 1, 5 + t, 1, 3 + t, 3, 1 + t, 5, 1 + t, 5, t, w - 35, t, w - 16, 0, w - 16, t, w - 5, t, w - 5, 1 + t, w - 3, 1 + t, w - 1, 3 + t, w - 1, 5 + t, w, 5 + t, w, h - 5 + t, w - 1, h - 5 + t, w - 1, h - 3 + t, w - 2, h - 3 + t, w - 2, h - 2 + t, w - 3, h - 2 + t, w - 3, h - 1 + t, w - 5, h - 1 + t, w - 5, h + t, 5, h + t, 5, h - 1 + t, 3, h - 1 + t, 3, h - 2 + t, 2, h - 2 + t, 2, h - 3 + t, 1, h - 3 + t, 1, h - 5 + t, 0, h - 5 + t, 0, 5 + t])
          @border_polygon = Array.typed(::Java::Int).new([0, 5 + t, 1, 4 + t, 1, 3 + t, 3, 1 + t, 4, 1 + t, 5, t, w - 35, t, w - 17, 2, w - 17, t, w - 6, t, w - 5, 1 + t, w - 4, 1 + t, w - 2, 3 + t, w - 2, 4 + t, w - 1, 5 + t, w - 1, h - 6 + t, w - 2, h - 5 + t, w - 2, h - 4 + t, w - 4, h - 2 + t, w - 5, h - 2 + t, w - 6, h - 1 + t, 5, h - 1 + t, 4, h - 2 + t, 3, h - 2 + t, 1, h - 4 + t, 1, h - 5 + t, 0, h - 6 + t, 0, 5 + t])
          @tip.set_location(Math.min(dest.attr_width - size.attr_x, x - size.attr_x + i), y)
        else
          polyline = Array.typed(::Java::Int).new([0, 5, 1, 5, 1, 3, 3, 1, 5, 1, 5, 0, w - 5, 0, w - 5, 1, w - 3, 1, w - 1, 3, w - 1, 5, w, 5, w, h - 5, w - 1, h - 5, w - 1, h - 3, w - 2, h - 3, w - 2, h - 2, w - 3, h - 2, w - 3, h - 1, w - 5, h - 1, w - 5, h, w - 16, h, w - 16, h + t, w - 35, h, 5, h, 5, h - 1, 3, h - 1, 3, h - 2, 2, h - 2, 2, h - 3, 1, h - 3, 1, h - 5, 0, h - 5, 0, 5])
          @border_polygon = Array.typed(::Java::Int).new([0, 5, 1, 4, 1, 3, 3, 1, 4, 1, 5, 0, w - 6, 0, w - 5, 1, w - 4, 1, w - 2, 3, w - 2, 4, w - 1, 5, w - 1, h - 6, w - 2, h - 5, w - 2, h - 4, w - 4, h - 2, w - 5, h - 2, w - 6, h - 1, w - 17, h - 1, w - 17, h + t - 2, w - 36, h - 1, 5, h - 1, 4, h - 2, 3, h - 2, 1, h - 4, 1, h - 5, 0, h - 6, 0, 5])
          @tip.set_location(Math.min(dest.attr_width - size.attr_x, x - size.attr_x + i), y - size.attr_y - t)
        end
      end
      if (!((self.attr_style & SWT::BALLOON)).equal?(0))
        if (!(@region).nil?)
          @region.dispose
        end
        @region = Region.new(display)
        @region.add(polyline)
        @tip.set_region(@region)
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
    
    typesig { [::Java::Int] }
    def get_size(max_width)
      text_width = 0
      message_width = 0
      if (!(@layout_text).nil?)
        @layout_text.set_width(-1)
        text_width = @layout_text.get_bounds.attr_width
      end
      if (!(@layout_message).nil?)
        @layout_message.set_width(-1)
        message_width = @layout_message.get_bounds.attr_width
      end
      message_trim = 2 * INSET + 2 * BORDER + 2 * PADDING
      has_image = !(@layout_text).nil? && !((self.attr_style & SWT::BALLOON)).equal?(0) && !((self.attr_style & (SWT::ICON_ERROR | SWT::ICON_INFORMATION | SWT::ICON_WARNING))).equal?(0)
      text_trim = message_trim + (has_image ? IMAGE_SIZE : 0)
      width = Math.min(max_width, Math.max(text_width + text_trim, message_width + message_trim))
      text_height = 0
      message_height = 0
      if (!(@layout_text).nil?)
        @layout_text.set_width(max_width - text_trim)
        text_height = @layout_text.get_bounds.attr_height
      end
      if (!(@layout_message).nil?)
        @layout_message.set_width(max_width - message_trim)
        message_height = @layout_message.get_bounds.attr_height
      end
      height = 2 * BORDER + 2 * PADDING + message_height
      if (!(@layout_text).nil?)
        height += Math.max(IMAGE_SIZE, text_height) + 2 * PADDING
      end
      return Point.new(width, height)
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
      return !(@layout_message).nil? ? @layout_message.get_text : ""
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
      return !(@layout_text).nil? ? @layout_text.get_text : ""
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
      return @tip.get_visible
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
    
    typesig { [Event] }
    def on_dispose(event)
      parent = get_parent
      parent.remove_listener(SWT::Dispose, @parent_listener)
      remove_listener(SWT::Dispose, @listener)
      notify_listeners(SWT::Dispose, event)
      event.attr_type = SWT::None
      if (!(@runnable).nil?)
        display = get_display
        display.timer_exec(-1, @runnable)
      end
      @runnable = nil
      @tip.dispose
      @tip = nil
      if (!(@region).nil?)
        @region.dispose
      end
      @region = nil
      if (!(@layout_text).nil?)
        @layout_text.dispose
      end
      @layout_text = nil
      if (!(@layout_message).nil?)
        @layout_message.dispose
      end
      @layout_message = nil
      if (!(@bold_font).nil?)
        @bold_font.dispose
      end
      @bold_font = nil
      @border_polygon = nil
    end
    
    typesig { [Event] }
    def on_mouse_down(event)
      notify_listeners(SWT::Selection, Event.new)
      set_visible(false)
    end
    
    typesig { [Event] }
    def on_paint(event)
      gc = event.attr_gc
      x = BORDER + PADDING
      y = BORDER + PADDING
      if (!((self.attr_style & SWT::BALLOON)).equal?(0))
        if (@spike_above)
          y += TIP_HEIGHT
        end
        gc.draw_polygon(@border_polygon)
      else
        rect = @tip.get_client_area
        gc.draw_rectangle(rect.attr_x, rect.attr_y, rect.attr_width - 1, rect.attr_height - 1)
      end
      if (!(@layout_text).nil?)
        id = self.attr_style & (SWT::ICON_ERROR | SWT::ICON_INFORMATION | SWT::ICON_WARNING)
        if (!((self.attr_style & SWT::BALLOON)).equal?(0) && !(id).equal?(0))
          display = get_display
          image = display.get_system_image(id)
          rect = image.get_bounds
          gc.draw_image(image, 0, 0, rect.attr_width, rect.attr_height, x, y, IMAGE_SIZE, IMAGE_SIZE)
          x += IMAGE_SIZE
        end
        x += INSET
        @layout_text.draw(gc, x, y)
        y += 2 * PADDING + Math.max(IMAGE_SIZE, @layout_text.get_bounds.attr_height)
      end
      if (!(@layout_message).nil?)
        x = BORDER + PADDING + INSET
        @layout_message.draw(gc, x, y)
      end
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
      if ((@x).equal?(x) && (@y).equal?(y))
        return
      end
      @x = x
      @y = y
      if (@tip.get_visible)
        configure
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
      if (!(@layout_message).nil?)
        @layout_message.dispose
      end
      @layout_message = nil
      if (!(string.length).equal?(0))
        display = get_display
        @layout_message = TextLayout.new(display)
        @layout_message.set_text(string)
      end
      if (@tip.get_visible)
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
      if (!(@layout_text).nil?)
        @layout_text.dispose
      end
      @layout_text = nil
      if (!(@bold_font).nil?)
        @bold_font.dispose
      end
      @bold_font = nil
      if (!(string.length).equal?(0))
        display = get_display
        @layout_text = TextLayout.new(display)
        @layout_text.set_text(string)
        font = display.get_system_font
        data = font.get_font_data[0]
        @bold_font = Font.new(display, data.get_name, data.get_height, SWT::BOLD)
        style = TextStyle.new(@bold_font, nil, nil)
        @layout_text.set_style(style, 0, string.length)
      end
      if (@tip.get_visible)
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
      check_widget
      if (visible)
        configure
      end
      @tip.set_visible(visible)
      display = get_display
      if (!(@runnable).nil?)
        display.timer_exec(-1, @runnable)
      end
      @runnable = nil
      if (@autohide && visible)
        @runnable = Class.new(Runnable.class == Class ? Runnable : Object) do
          local_class_in ToolTip
          include_class_members ToolTip
          include Runnable if Runnable.class == Module
          
          typesig { [] }
          define_method :run do
            if (!is_disposed)
              set_visible(false)
            end
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
        display.timer_exec(DELAY, @runnable)
      end
    end
    
    private
    alias_method :initialize__tool_tip, :initialize
  end
  
end
