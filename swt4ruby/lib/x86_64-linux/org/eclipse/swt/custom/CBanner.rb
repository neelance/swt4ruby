require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module CBannerImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
    }
  end
  
  # Instances of this class implement a Composite that lays out its
  # children and allows programmatic control of the layout. It draws
  # a separator between the left and right children which can be dragged
  # to resize the right control.
  # CBanner is used in the workbench to layout the toolbar area and
  # perspective switching toolbar.
  # <p>
  # Note that although this class is a subclass of <code>Composite</code>,
  # it does not make sense to set a layout on it.
  # </p><p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>NONE</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(None)</dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.0
  class CBanner < CBannerImports.const_get :Composite
    include_class_members CBannerImports
    
    attr_accessor :left
    alias_method :attr_left, :left
    undef_method :left
    alias_method :attr_left=, :left=
    undef_method :left=
    
    attr_accessor :right
    alias_method :attr_right, :right
    undef_method :right
    alias_method :attr_right=, :right=
    undef_method :right=
    
    attr_accessor :bottom
    alias_method :attr_bottom, :bottom
    undef_method :bottom
    alias_method :attr_bottom=, :bottom=
    undef_method :bottom=
    
    attr_accessor :simple
    alias_method :attr_simple, :simple
    undef_method :simple
    alias_method :attr_simple=, :simple=
    undef_method :simple=
    
    attr_accessor :curve
    alias_method :attr_curve, :curve
    undef_method :curve
    alias_method :attr_curve=, :curve=
    undef_method :curve=
    
    attr_accessor :curve_start
    alias_method :attr_curve_start, :curve_start
    undef_method :curve_start
    alias_method :attr_curve_start=, :curve_start=
    undef_method :curve_start=
    
    attr_accessor :curve_rect
    alias_method :attr_curve_rect, :curve_rect
    undef_method :curve_rect
    alias_method :attr_curve_rect=, :curve_rect=
    undef_method :curve_rect=
    
    attr_accessor :curve_width
    alias_method :attr_curve_width, :curve_width
    undef_method :curve_width
    alias_method :attr_curve_width=, :curve_width=
    undef_method :curve_width=
    
    attr_accessor :curve_indent
    alias_method :attr_curve_indent, :curve_indent
    undef_method :curve_indent
    alias_method :attr_curve_indent=, :curve_indent=
    undef_method :curve_indent=
    
    attr_accessor :right_width
    alias_method :attr_right_width, :right_width
    undef_method :right_width
    alias_method :attr_right_width=, :right_width=
    undef_method :right_width=
    
    attr_accessor :right_min_width
    alias_method :attr_right_min_width, :right_min_width
    undef_method :right_min_width
    alias_method :attr_right_min_width=, :right_min_width=
    undef_method :right_min_width=
    
    attr_accessor :right_min_height
    alias_method :attr_right_min_height, :right_min_height
    undef_method :right_min_height
    alias_method :attr_right_min_height=, :right_min_height=
    undef_method :right_min_height=
    
    attr_accessor :resize_cursor
    alias_method :attr_resize_cursor, :resize_cursor
    undef_method :resize_cursor
    alias_method :attr_resize_cursor=, :resize_cursor=
    undef_method :resize_cursor=
    
    attr_accessor :dragging
    alias_method :attr_dragging, :dragging
    undef_method :dragging
    alias_method :attr_dragging=, :dragging=
    undef_method :dragging=
    
    attr_accessor :right_drag_displacement
    alias_method :attr_right_drag_displacement, :right_drag_displacement
    undef_method :right_drag_displacement
    alias_method :attr_right_drag_displacement=, :right_drag_displacement=
    undef_method :right_drag_displacement=
    
    class_module.module_eval {
      const_set_lazy(:OFFSCREEN) { -200 }
      const_attr_reader  :OFFSCREEN
      
      const_set_lazy(:BORDER_BOTTOM) { 2 }
      const_attr_reader  :BORDER_BOTTOM
      
      const_set_lazy(:BORDER_TOP) { 3 }
      const_attr_reader  :BORDER_TOP
      
      const_set_lazy(:BORDER_STRIPE) { 1 }
      const_attr_reader  :BORDER_STRIPE
      
      const_set_lazy(:CURVE_TAIL) { 200 }
      const_attr_reader  :CURVE_TAIL
      
      const_set_lazy(:BEZIER_RIGHT) { 30 }
      const_attr_reader  :BEZIER_RIGHT
      
      const_set_lazy(:BEZIER_LEFT) { 30 }
      const_attr_reader  :BEZIER_LEFT
      
      const_set_lazy(:MIN_LEFT) { 10 }
      const_attr_reader  :MIN_LEFT
      
      
      def border1
        defined?(@@border1) ? @@border1 : @@border1= SWT::COLOR_WIDGET_HIGHLIGHT_SHADOW
      end
      alias_method :attr_border1, :border1
      
      def border1=(value)
        @@border1 = value
      end
      alias_method :attr_border1=, :border1=
    }
    
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
    # @param parent a widget which will be the parent of the new instance (cannot be null)
    # @param style the style of widget to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # </ul>
    def initialize(parent, style)
      @left = nil
      @right = nil
      @bottom = nil
      @simple = false
      @curve = nil
      @curve_start = 0
      @curve_rect = nil
      @curve_width = 0
      @curve_indent = 0
      @right_width = 0
      @right_min_width = 0
      @right_min_height = 0
      @resize_cursor = nil
      @dragging = false
      @right_drag_displacement = 0
      super(parent, check_style(style))
      @simple = true
      @curve = Array.typed(::Java::Int).new(0) { 0 }
      @curve_start = 0
      @curve_rect = Rectangle.new(0, 0, 0, 0)
      @curve_width = 5
      @curve_indent = -2
      @right_width = SWT::DEFAULT
      @right_min_width = 0
      @right_min_height = 0
      @dragging = false
      @right_drag_displacement = 0
      Composite.instance_method(:set_layout).bind(self).call(CBannerLayout.new)
      @resize_cursor = Cursor.new(get_display, SWT::CURSOR_SIZEWE)
      listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members CBanner
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |e|
          case (e.attr_type)
          when SWT::Dispose
            on_dispose
          when SWT::MouseDown
            on_mouse_down(e.attr_x, e.attr_y)
          when SWT::MouseExit
            on_mouse_exit
          when SWT::MouseMove
            on_mouse_move(e.attr_x, e.attr_y)
          when SWT::MouseUp
            on_mouse_up
          when SWT::Paint
            on_paint(e.attr_gc)
          when SWT::Resize
            on_resize
          end
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      events = Array.typed(::Java::Int).new([SWT::Dispose, SWT::MouseDown, SWT::MouseExit, SWT::MouseMove, SWT::MouseUp, SWT::Paint, SWT::Resize])
      i = 0
      while i < events.attr_length
        add_listener(events[i], listener)
        ((i += 1) - 1)
      end
    end
    
    class_module.module_eval {
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def bezier(x0, y0, x1, y1, x2, y2, x3, y3, count)
        # The parametric equations for a Bezier curve for x[t] and y[t] where  0 <= t <=1 are:
        # x[t] = x0+3(x1-x0)t+3(x0+x2-2x1)t^2+(x3-x0+3x1-3x2)t^3
        # y[t] = y0+3(y1-y0)t+3(y0+y2-2y1)t^2+(y3-y0+3y1-3y2)t^3
        a0 = x0
        a1 = 3 * (x1 - x0)
        a2 = 3 * (x0 + x2 - 2 * x1)
        a3 = x3 - x0 + 3 * x1 - 3 * x2
        b0 = y0
        b1 = 3 * (y1 - y0)
        b2 = 3 * (y0 + y2 - 2 * y1)
        b3 = y3 - y0 + 3 * y1 - 3 * y2
        polygon = Array.typed(::Java::Int).new(2 * count + 2) { 0 }
        i = 0
        while i <= count
          t = (i).to_f / (count).to_f
          polygon[2 * i] = RJava.cast_to_int((a0 + a1 * t + a2 * t * t + a3 * t * t * t))
          polygon[2 * i + 1] = RJava.cast_to_int((b0 + b1 * t + b2 * t * t + b3 * t * t * t))
          ((i += 1) - 1)
        end
        return polygon
      end
      
      typesig { [::Java::Int] }
      def check_style(style)
        return SWT::NONE
      end
    }
    
    typesig { [] }
    # Returns the Control that appears on the bottom side of the banner.
    # 
    # @return the control that appears on the bottom side of the banner or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_bottom
      check_widget
      return @bottom
    end
    
    typesig { [] }
    def get_client_area
      return Rectangle.new(0, 0, 0, 0)
    end
    
    typesig { [] }
    # Returns the Control that appears on the left side of the banner.
    # 
    # @return the control that appears on the left side of the banner or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_left
      check_widget
      return @left
    end
    
    typesig { [] }
    # Returns the Control that appears on the right side of the banner.
    # 
    # @return the control that appears on the right side of the banner or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_right
      check_widget
      return @right
    end
    
    typesig { [] }
    # Returns the minimum size of the control that appears on the right of the banner.
    # 
    # @return the minimum size of the control that appears on the right of the banner
    # 
    # @since 3.1
    def get_right_minimum_size
      check_widget
      return Point.new(@right_min_width, @right_min_height)
    end
    
    typesig { [] }
    # Returns the width of the control that appears on the right of the banner.
    # 
    # @return the width of the control that appears on the right of the banner
    # 
    # @since 3.0
    def get_right_width
      check_widget
      if ((@right).nil?)
        return 0
      end
      if ((@right_width).equal?(SWT::DEFAULT))
        size = @right.compute_size(SWT::DEFAULT, SWT::DEFAULT, false)
        return size.attr_x
      end
      return @right_width
    end
    
    typesig { [] }
    # Returns <code>true</code> if the CBanner is rendered
    # with a simple, traditional shape.
    # 
    # @return <code>true</code> if the CBanner is rendered with a simple shape
    # 
    # @since 3.0
    def get_simple
      check_widget
      return @simple
    end
    
    typesig { [] }
    def on_dispose
      if (!(@resize_cursor).nil?)
        @resize_cursor.dispose
      end
      @resize_cursor = nil
      @left = nil
      @right = nil
      @bottom = nil
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def on_mouse_down(x, y)
      if (@curve_rect.contains(x, y))
        @dragging = true
        @right_drag_displacement = @curve_start - x + @curve_width - @curve_indent
      end
    end
    
    typesig { [] }
    def on_mouse_exit
      if (!@dragging)
        set_cursor(nil)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def on_mouse_move(x, y)
      if (@dragging)
        size = get_size
        if (!(0 < x && x < size.attr_x))
          return
        end
        @right_width = Math.max(0, size.attr_x - x - @right_drag_displacement)
        if ((@right_min_width).equal?(SWT::DEFAULT))
          min_size = @right.compute_size(@right_min_width, @right_min_height)
          @right_width = Math.max(min_size.attr_x, @right_width)
        else
          @right_width = Math.max(@right_min_width, @right_width)
        end
        layout(false)
        return
      end
      if (@curve_rect.contains(x, y))
        set_cursor(@resize_cursor)
      else
        set_cursor(nil)
      end
    end
    
    typesig { [] }
    def on_mouse_up
      @dragging = false
    end
    
    typesig { [SwtGC] }
    def on_paint(gc)
      # Useful for debugging paint problems
      # {
      # Point size = getSize();
      # gc.setBackground(getDisplay().getSystemColor(SWT.COLOR_GREEN));
      # gc.fillRectangle(-10, -10, size.x+20, size.y+20);
      # }
      if ((@left).nil? && (@right).nil?)
        return
      end
      size = get_size
      border1 = get_display.get_system_color(self.attr_border1)
      if (!(@bottom).nil?)
        y = @bottom.get_bounds.attr_y - BORDER_STRIPE - 1
        gc.set_foreground(border1)
        gc.draw_line(0, y, size.attr_x, y)
      end
      if ((@left).nil? || (@right).nil?)
        return
      end
      line1 = Array.typed(::Java::Int).new(@curve.attr_length + 6) { 0 }
      index = 0
      x = @curve_start
      line1[((index += 1) - 1)] = x + 1
      line1[((index += 1) - 1)] = size.attr_y - BORDER_STRIPE
      i = 0
      while i < @curve.attr_length / 2
        line1[((index += 1) - 1)] = x + @curve[2 * i]
        line1[((index += 1) - 1)] = @curve[2 * i + 1]
        ((i += 1) - 1)
      end
      line1[((index += 1) - 1)] = x + @curve_width
      line1[((index += 1) - 1)] = 0
      line1[((index += 1) - 1)] = size.attr_x
      line1[((index += 1) - 1)] = 0
      background = get_background
      if (get_display.get_depth >= 15)
        # Anti- aliasing
        line2 = Array.typed(::Java::Int).new(line1.attr_length) { 0 }
        index = 0
        i_ = 0
        while i_ < line1.attr_length / 2
          line2[index] = line1[((index += 1) - 1)] - 1
          line2[index] = line1[((index += 1) - 1)]
          ((i_ += 1) - 1)
        end
        line3 = Array.typed(::Java::Int).new(line1.attr_length) { 0 }
        index = 0
        i__ = 0
        while i__ < line1.attr_length / 2
          line3[index] = line1[((index += 1) - 1)] + 1
          line3[index] = line1[((index += 1) - 1)]
          ((i__ += 1) - 1)
        end
        from = border1.get_rgb
        to = background.get_rgb
        red = from.attr_red + 3 * (to.attr_red - from.attr_red) / 4
        green = from.attr_green + 3 * (to.attr_green - from.attr_green) / 4
        blue = from.attr_blue + 3 * (to.attr_blue - from.attr_blue) / 4
        color = Color.new(get_display, red, green, blue)
        gc.set_foreground(color)
        gc.draw_polyline(line2)
        gc.draw_polyline(line3)
        color.dispose
        # draw tail fading to background
        x1 = Math.max(0, @curve_start - CURVE_TAIL)
        gc.set_foreground(background)
        gc.set_background(border1)
        gc.fill_gradient_rectangle(x1, size.attr_y - BORDER_STRIPE, @curve_start - x1 + 1, 1, false)
      else
        # draw solid tail
        x1 = Math.max(0, @curve_start - CURVE_TAIL)
        gc.set_foreground(border1)
        gc.draw_line(x1, size.attr_y - BORDER_STRIPE, @curve_start + 1, size.attr_y - BORDER_STRIPE)
      end
      # draw border
      gc.set_foreground(border1)
      gc.draw_polyline(line1)
    end
    
    typesig { [] }
    def on_resize
      update_curve(get_size.attr_y)
    end
    
    typesig { [Control] }
    # Set the control that appears on the bottom side of the banner.
    # The bottom control is optional.  Setting the bottom control to null will remove it from
    # the banner - however, the creator of the control must dispose of the control.
    # 
    # @param control the control to be displayed on the bottom or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_INVALID_ARGUMENT - if the bottom control was not created as a child of the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_bottom(control)
      check_widget
      if (!(control).nil? && !(control.get_parent).equal?(self))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(@bottom).nil? && !@bottom.is_disposed)
        size = @bottom.get_size
        @bottom.set_location(OFFSCREEN - size.attr_x, OFFSCREEN - size.attr_y)
      end
      @bottom = control
      layout(false)
    end
    
    typesig { [SwtLayout] }
    # Sets the layout which is associated with the receiver to be
    # the argument which may be null.
    # <p>
    # Note: No Layout can be set on this Control because it already
    # manages the size and position of its children.
    # </p>
    # 
    # @param layout the receiver's new layout or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_layout(layout_)
      check_widget
      return
    end
    
    typesig { [Control] }
    # Set the control that appears on the left side of the banner.
    # The left control is optional.  Setting the left control to null will remove it from
    # the banner - however, the creator of the control must dispose of the control.
    # 
    # @param control the control to be displayed on the left or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_INVALID_ARGUMENT - if the left control was not created as a child of the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_left(control)
      check_widget
      if (!(control).nil? && !(control.get_parent).equal?(self))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(@left).nil? && !@left.is_disposed)
        size = @left.get_size
        @left.set_location(OFFSCREEN - size.attr_x, OFFSCREEN - size.attr_y)
      end
      @left = control
      layout(false)
    end
    
    typesig { [Control] }
    # Set the control that appears on the right side of the banner.
    # The right control is optional.  Setting the right control to null will remove it from
    # the banner - however, the creator of the control must dispose of the control.
    # 
    # @param control the control to be displayed on the right or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_INVALID_ARGUMENT - if the right control was not created as a child of the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_right(control)
      check_widget
      if (!(control).nil? && !(control.get_parent).equal?(self))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(@right).nil? && !@right.is_disposed)
        size = @right.get_size
        @right.set_location(OFFSCREEN - size.attr_x, OFFSCREEN - size.attr_y)
      end
      @right = control
      layout(false)
    end
    
    typesig { [Point] }
    # Set the minimum height of the control that appears on the right side of the banner.
    # 
    # @param size the minimum size of the control on the right
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_INVALID_ARGUMENT - if the size is null or the values of size are less than SWT.DEFAULT</li>
    # </ul>
    # 
    # @since 3.1
    def set_right_minimum_size(size)
      check_widget
      if ((size).nil? || size.attr_x < SWT::DEFAULT || size.attr_y < SWT::DEFAULT)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @right_min_width = size.attr_x
      @right_min_height = size.attr_y
      layout(false)
    end
    
    typesig { [::Java::Int] }
    # Set the width of the control that appears on the right side of the banner.
    # 
    # @param width the width of the control on the right
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_INVALID_ARGUMENT - if width is less than SWT.DEFAULT</li>
    # </ul>
    # 
    # @since 3.0
    def set_right_width(width)
      check_widget
      if (width < SWT::DEFAULT)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @right_width = width
      layout(false)
    end
    
    typesig { [::Java::Boolean] }
    # Sets the shape that the CBanner will use to render itself.
    # 
    # @param simple <code>true</code> if the CBanner should render itself in a simple, traditional style
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_simple(simple)
      check_widget
      if (!(@simple).equal?(simple))
        @simple = simple
        if (simple)
          @curve_width = 5
          @curve_indent = -2
        else
          @curve_width = 50
          @curve_indent = 5
        end
        update_curve(get_size.attr_y)
        layout(false)
        redraw
      end
    end
    
    typesig { [::Java::Int] }
    def update_curve(height)
      h = height - BORDER_STRIPE
      if (@simple)
        @curve = Array.typed(::Java::Int).new([0, h, 1, h, 2, h - 1, 3, h - 2, 3, 2, 4, 1, 5, 0, ])
      else
        @curve = bezier(0, h + 1, BEZIER_LEFT, h + 1, @curve_width - BEZIER_RIGHT, 0, @curve_width, 0, @curve_width)
      end
    end
    
    private
    alias_method :initialize__cbanner, :initialize
  end
  
end
