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
  module AnimatedProgressImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # A control for showing progress feedback for a long running operation.
  # 
  # @deprecated As of Eclipse 2.1, use ProgressBar with the style SWT.INDETERMINATE
  # 
  # <dl>
  # <dt><b>Styles:</b><dd>VERTICAL, HORIZONTAL, BORDER
  # </dl>
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class AnimatedProgress < AnimatedProgressImports.const_get :Canvas
    include_class_members AnimatedProgressImports
    
    class_module.module_eval {
      const_set_lazy(:SLEEP) { 70 }
      const_attr_reader  :SLEEP
      
      const_set_lazy(:DEFAULT_WIDTH) { 160 }
      const_attr_reader  :DEFAULT_WIDTH
      
      const_set_lazy(:DEFAULT_HEIGHT) { 18 }
      const_attr_reader  :DEFAULT_HEIGHT
    }
    
    attr_accessor :active
    alias_method :attr_active, :active
    undef_method :active
    alias_method :attr_active=, :active=
    undef_method :active=
    
    attr_accessor :show_stripes
    alias_method :attr_show_stripes, :show_stripes
    undef_method :show_stripes
    alias_method :attr_show_stripes=, :show_stripes=
    undef_method :show_stripes=
    
    attr_accessor :value
    alias_method :attr_value, :value
    undef_method :value
    alias_method :attr_value=, :value=
    undef_method :value=
    
    attr_accessor :orientation
    alias_method :attr_orientation, :orientation
    undef_method :orientation
    alias_method :attr_orientation=, :orientation=
    undef_method :orientation=
    
    attr_accessor :show_border
    alias_method :attr_show_border, :show_border
    undef_method :show_border
    alias_method :attr_show_border=, :show_border=
    undef_method :show_border=
    
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
    # 
    # @see SWT#VERTICAL
    # @see SWT#HORIZONTAL
    # @see SWT#BORDER
    # @see #getStyle()
    def initialize(parent, style)
      @active = false
      @show_stripes = false
      @value = 0
      @orientation = 0
      @show_border = false
      super(parent, check_style(style))
      @active = false
      @show_stripes = false
      @orientation = SWT::HORIZONTAL
      @show_border = false
      if (!((style & SWT::VERTICAL)).equal?(0))
        @orientation = SWT::VERTICAL
      end
      @show_border = !((style & SWT::BORDER)).equal?(0)
      add_control_listener(Class.new(ControlAdapter.class == Class ? ControlAdapter : Object) do
        local_class_in AnimatedProgress
        include_class_members AnimatedProgress
        include ControlAdapter if ControlAdapter.class == Module
        
        typesig { [ControlEvent] }
        define_method :control_resized do |e|
          redraw
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      add_paint_listener(Class.new(PaintListener.class == Class ? PaintListener : Object) do
        local_class_in AnimatedProgress
        include_class_members AnimatedProgress
        include PaintListener if PaintListener.class == Module
        
        typesig { [PaintEvent] }
        define_method :paint_control do |e|
          paint(e)
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      add_dispose_listener(Class.new(DisposeListener.class == Class ? DisposeListener : Object) do
        local_class_in AnimatedProgress
        include_class_members AnimatedProgress
        include DisposeListener if DisposeListener.class == Module
        
        typesig { [DisposeEvent] }
        define_method :widget_disposed do |e|
          stop
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        mask = SWT::NONE
        return style & mask
      end
    }
    
    typesig { [] }
    # Stop the animation if it is not already stopped and
    # reset the presentation to a blank appearance.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def clear
      synchronized(self) do
        check_widget
        if (@active)
          stop
        end
        @show_stripes = false
        redraw
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      size = nil
      if ((@orientation).equal?(SWT::HORIZONTAL))
        size = Point.new(DEFAULT_WIDTH, DEFAULT_HEIGHT)
      else
        size = Point.new(DEFAULT_HEIGHT, DEFAULT_WIDTH)
      end
      if (!(w_hint).equal?(SWT::DEFAULT))
        size.attr_x = w_hint
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        size.attr_y = h_hint
      end
      return size
    end
    
    typesig { [SwtGC, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Color, Color] }
    def draw_bevel_rect(gc, x, y, w, h, topleft, bottomright)
      gc.set_foreground(topleft)
      gc.draw_line(x, y, x + w - 1, y)
      gc.draw_line(x, y, x, y + h - 1)
      gc.set_foreground(bottomright)
      gc.draw_line(x + w, y, x + w, y + h)
      gc.draw_line(x, y + h, x + w, y + h)
    end
    
    typesig { [PaintEvent] }
    def paint(event)
      gc = event.attr_gc
      disp = get_display
      rect = get_client_area
      gc.fill_rectangle(rect)
      if (@show_border)
        draw_bevel_rect(gc, rect.attr_x, rect.attr_y, rect.attr_width - 1, rect.attr_height - 1, disp.get_system_color(SWT::COLOR_WIDGET_NORMAL_SHADOW), disp.get_system_color(SWT::COLOR_WIDGET_HIGHLIGHT_SHADOW))
      end
      paint_stripes(gc)
    end
    
    typesig { [SwtGC] }
    def paint_stripes(gc)
      if (!@show_stripes)
        return
      end
      rect = get_client_area
      # Subtracted border painted by paint.
      rect = Rectangle.new(rect.attr_x + 2, rect.attr_y + 2, rect.attr_width - 4, rect.attr_height - 4)
      gc.set_line_width(2)
      gc.set_clipping(rect)
      color = get_display.get_system_color(SWT::COLOR_LIST_SELECTION)
      gc.set_background(color)
      gc.fill_rectangle(rect)
      gc.set_foreground(self.get_background)
      step = 12
      foreground_value = (@value).equal?(0) ? step - 2 : @value - 2
      if ((@orientation).equal?(SWT::HORIZONTAL))
        y = rect.attr_y - 1
        w = rect.attr_width
        h = rect.attr_height + 2
        i = 0
        while i < w
          x = i + foreground_value
          gc.draw_line(x, y, x, h)
          i += step
        end
      else
        x = rect.attr_x - 1
        w = rect.attr_width + 2
        h = rect.attr_height
        i = 0
        while i < h
          y = i + foreground_value
          gc.draw_line(x, y, w, y)
          i += step
        end
      end
      if (@active)
        @value = (@value + 2) % step
      end
    end
    
    typesig { [] }
    # Start the animation.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def start
      synchronized(self) do
        check_widget
        if (@active)
          return
        end
        @active = true
        @show_stripes = true
        display = get_display
        timer = Array.typed(Runnable).new(1) { nil }
        timer[0] = Class.new(Runnable.class == Class ? Runnable : Object) do
          local_class_in AnimatedProgress
          include_class_members AnimatedProgress
          include Runnable if Runnable.class == Module
          
          typesig { [] }
          define_method :run do
            if (!self.attr_active)
              return
            end
            gc = SwtGC.new(@local_class_parent)
            paint_stripes(gc)
            gc.dispose
            display.timer_exec(SLEEP, timer[0])
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self)
        display.timer_exec(SLEEP, timer[0])
      end
    end
    
    typesig { [] }
    # Stop the animation.   Freeze the presentation at its current appearance.
    def stop
      synchronized(self) do
        # checkWidget();
        @active = false
      end
    end
    
    private
    alias_method :initialize__animated_progress, :initialize
  end
  
end
