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
  module ScrolledCompositeImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # A ScrolledComposite provides scrollbars and will scroll its content when the user
  # uses the scrollbars.
  # 
  # 
  # <p>There are two ways to use the ScrolledComposite:
  # 
  # <p>
  # 1) Set the size of the control that is being scrolled and the ScrolledComposite
  # will show scrollbars when the contained control can not be fully seen.
  # 
  # 2) The second way imitates the way a browser would work.  Set the minimum size of
  # the control and the ScrolledComposite will show scroll bars if the visible area is
  # less than the minimum size of the control and it will expand the size of the control
  # if the visible area is greater than the minimum size.  This requires invoking
  # both setMinWidth(), setMinHeight() and setExpandHorizontal(), setExpandVertical().
  # 
  # <code><pre>
  # public static void main (String [] args) {
  # Display display = new Display ();
  # Color red = display.getSystemColor(SWT.COLOR_RED);
  # Color blue = display.getSystemColor(SWT.COLOR_BLUE);
  # Shell shell = new Shell (display);
  # shell.setLayout(new FillLayout());
  # 
  # // set the size of the scrolled content - method 1
  # final ScrolledComposite sc1 = new ScrolledComposite(shell, SWT.H_SCROLL | SWT.V_SCROLL | SWT.BORDER);
  # final Composite c1 = new Composite(sc1, SWT.NONE);
  # sc1.setContent(c1);
  # c1.setBackground(red);
  # GridLayout layout = new GridLayout();
  # layout.numColumns = 4;
  # c1.setLayout(layout);
  # Button b1 = new Button (c1, SWT.PUSH);
  # b1.setText("first button");
  # c1.setSize(c1.computeSize(SWT.DEFAULT, SWT.DEFAULT));
  # 
  # // set the minimum width and height of the scrolled content - method 2
  # final ScrolledComposite sc2 = new ScrolledComposite(shell, SWT.H_SCROLL | SWT.V_SCROLL | SWT.BORDER);
  # sc2.setExpandHorizontal(true);
  # sc2.setExpandVertical(true);
  # final Composite c2 = new Composite(sc2, SWT.NONE);
  # sc2.setContent(c2);
  # c2.setBackground(blue);
  # layout = new GridLayout();
  # layout.numColumns = 4;
  # c2.setLayout(layout);
  # Button b2 = new Button (c2, SWT.PUSH);
  # b2.setText("first button");
  # sc2.setMinSize(c2.computeSize(SWT.DEFAULT, SWT.DEFAULT));
  # 
  # Button add = new Button (shell, SWT.PUSH);
  # add.setText("add children");
  # final int[] index = new int[]{0};
  # add.addListener(SWT.Selection, new Listener() {
  # public void handleEvent(Event e) {
  # index[0]++;
  # Button button = new Button(c1, SWT.PUSH);
  # button.setText("button "+index[0]);
  # // reset size of content so children can be seen - method 1
  # c1.setSize(c1.computeSize(SWT.DEFAULT, SWT.DEFAULT));
  # c1.layout();
  # 
  # button = new Button(c2, SWT.PUSH);
  # button.setText("button "+index[0]);
  # // reset the minimum width and height so children can be seen - method 2
  # sc2.setMinSize(c2.computeSize(SWT.DEFAULT, SWT.DEFAULT));
  # c2.layout();
  # }
  # });
  # 
  # shell.open ();
  # while (!shell.isDisposed ()) {
  # if (!display.readAndDispatch ()) display.sleep ();
  # }
  # display.dispose ();
  # }
  # </pre></code>
  # 
  # <dl>
  # <dt><b>Styles:</b><dd>H_SCROLL, V_SCROLL
  # </dl>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#scrolledcomposite">ScrolledComposite snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class ScrolledComposite < ScrolledCompositeImports.const_get :Composite
    include_class_members ScrolledCompositeImports
    
    attr_accessor :content
    alias_method :attr_content, :content
    undef_method :content
    alias_method :attr_content=, :content=
    undef_method :content=
    
    attr_accessor :content_listener
    alias_method :attr_content_listener, :content_listener
    undef_method :content_listener
    alias_method :attr_content_listener=, :content_listener=
    undef_method :content_listener=
    
    attr_accessor :filter
    alias_method :attr_filter, :filter
    undef_method :filter
    alias_method :attr_filter=, :filter=
    undef_method :filter=
    
    attr_accessor :min_height
    alias_method :attr_min_height, :min_height
    undef_method :min_height
    alias_method :attr_min_height=, :min_height=
    undef_method :min_height=
    
    attr_accessor :min_width
    alias_method :attr_min_width, :min_width
    undef_method :min_width
    alias_method :attr_min_width=, :min_width=
    undef_method :min_width=
    
    attr_accessor :expand_horizontal
    alias_method :attr_expand_horizontal, :expand_horizontal
    undef_method :expand_horizontal
    alias_method :attr_expand_horizontal=, :expand_horizontal=
    undef_method :expand_horizontal=
    
    attr_accessor :expand_vertical
    alias_method :attr_expand_vertical, :expand_vertical
    undef_method :expand_vertical
    alias_method :attr_expand_vertical=, :expand_vertical=
    undef_method :expand_vertical=
    
    attr_accessor :always_show_scroll
    alias_method :attr_always_show_scroll, :always_show_scroll
    undef_method :always_show_scroll
    alias_method :attr_always_show_scroll=, :always_show_scroll=
    undef_method :always_show_scroll=
    
    attr_accessor :show_focused_control
    alias_method :attr_show_focused_control, :show_focused_control
    undef_method :show_focused_control
    alias_method :attr_show_focused_control=, :show_focused_control=
    undef_method :show_focused_control=
    
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
    # @see SWT#H_SCROLL
    # @see SWT#V_SCROLL
    # @see #getStyle()
    def initialize(parent, style)
      @content = nil
      @content_listener = nil
      @filter = nil
      @min_height = 0
      @min_width = 0
      @expand_horizontal = false
      @expand_vertical = false
      @always_show_scroll = false
      @show_focused_control = false
      super(parent, check_style(style))
      @min_height = 0
      @min_width = 0
      @expand_horizontal = false
      @expand_vertical = false
      @always_show_scroll = false
      @show_focused_control = false
      Composite.instance_method(:set_layout).bind(self).call(ScrolledCompositeLayout.new)
      h_bar = get_horizontal_bar
      if (!(h_bar).nil?)
        h_bar.set_visible(false)
        h_bar.add_listener(SWT::Selection, Class.new(Listener.class == Class ? Listener : Object) do
          extend LocalClass
          include_class_members ScrolledComposite
          include Listener if Listener.class == Module
          
          typesig { [Event] }
          define_method :handle_event do |e|
            h_scroll
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self))
      end
      v_bar = get_vertical_bar
      if (!(v_bar).nil?)
        v_bar.set_visible(false)
        v_bar.add_listener(SWT::Selection, Class.new(Listener.class == Class ? Listener : Object) do
          extend LocalClass
          include_class_members ScrolledComposite
          include Listener if Listener.class == Module
          
          typesig { [Event] }
          define_method :handle_event do |e|
            v_scroll
          end
          
          typesig { [Vararg.new(Object)] }
          define_method :initialize do |*args|
            super(*args)
          end
          
          private
          alias_method :initialize_anonymous, :initialize
        end.new_local(self))
      end
      @content_listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members ScrolledComposite
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |e|
          if (!(e.attr_type).equal?(SWT::Resize))
            return
          end
          layout(false)
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      @filter = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members ScrolledComposite
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          if (event.attr_widget.is_a?(self.class::Control))
            control = event.attr_widget
            if (contains(control))
              show_control(control)
            end
          end
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      add_dispose_listener(Class.new(DisposeListener.class == Class ? DisposeListener : Object) do
        extend LocalClass
        include_class_members ScrolledComposite
        include DisposeListener if DisposeListener.class == Module
        
        typesig { [DisposeEvent] }
        define_method :widget_disposed do |e|
          get_display.remove_filter(SWT::FocusIn, self.attr_filter)
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
        mask = SWT::H_SCROLL | SWT::V_SCROLL | SWT::BORDER | SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT
        return style & mask
      end
    }
    
    typesig { [Control] }
    def contains(control)
      if ((control).nil? || control.is_disposed)
        return false
      end
      parent = control.get_parent
      while (!(parent).nil? && !(parent.is_a?(Shell)))
        if ((self).equal?(parent))
          return true
        end
        parent = parent.get_parent
      end
      return false
    end
    
    typesig { [] }
    # Returns the Always Show Scrollbars flag.  True if the scrollbars are
    # always shown even if they are not required.  False if the scrollbars are only
    # visible when some part of the composite needs to be scrolled to be seen.
    # The H_SCROLL and V_SCROLL style bits are also required to enable scrollbars in the
    # horizontal and vertical directions.
    # 
    # @return the Always Show Scrollbars flag value
    def get_always_show_scroll_bars
      # checkWidget();
      return @always_show_scroll
    end
    
    typesig { [] }
    # Returns <code>true</code> if the content control
    # will be expanded to fill available horizontal space.
    # 
    # @return the receiver's horizontal expansion state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def get_expand_horizontal
      check_widget
      return @expand_horizontal
    end
    
    typesig { [] }
    # Returns <code>true</code> if the content control
    # will be expanded to fill available vertical space.
    # 
    # @return the receiver's vertical expansion state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def get_expand_vertical
      check_widget
      return @expand_vertical
    end
    
    typesig { [] }
    # Returns the minimum width of the content control.
    # 
    # @return the minimum width
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def get_min_width
      check_widget
      return @min_width
    end
    
    typesig { [] }
    # Returns the minimum height of the content control.
    # 
    # @return the minimum height
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def get_min_height
      check_widget
      return @min_height
    end
    
    typesig { [] }
    # Get the content that is being scrolled.
    # 
    # @return the control displayed in the content area
    def get_content
      # checkWidget();
      return @content
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver automatically scrolls to a focused child control
    # to make it visible. Otherwise, returns <code>false</code>.
    # 
    # @return a boolean indicating whether focused child controls are automatically scrolled into the viewport
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def get_show_focused_control
      check_widget
      return @show_focused_control
    end
    
    typesig { [] }
    def h_scroll
      if ((@content).nil?)
        return
      end
      location = @content.get_location
      h_bar = get_horizontal_bar
      h_selection = h_bar.get_selection
      @content.set_location(-h_selection, location.attr_y)
    end
    
    typesig { [Rectangle, ::Java::Boolean] }
    def need_hscroll(content_rect, v_visible)
      h_bar = get_horizontal_bar
      if ((h_bar).nil?)
        return false
      end
      host_rect = get_bounds
      border = get_border_width
      host_rect.attr_width -= 2 * border
      v_bar = get_vertical_bar
      if (v_visible && !(v_bar).nil?)
        host_rect.attr_width -= v_bar.get_size.attr_x
      end
      if (!@expand_horizontal && content_rect.attr_width > host_rect.attr_width)
        return true
      end
      if (@expand_horizontal && @min_width > host_rect.attr_width)
        return true
      end
      return false
    end
    
    typesig { [Rectangle, ::Java::Boolean] }
    def need_vscroll(content_rect, h_visible)
      v_bar = get_vertical_bar
      if ((v_bar).nil?)
        return false
      end
      host_rect = get_bounds
      border = get_border_width
      host_rect.attr_height -= 2 * border
      h_bar = get_horizontal_bar
      if (h_visible && !(h_bar).nil?)
        host_rect.attr_height -= h_bar.get_size.attr_y
      end
      if (!@expand_vertical && content_rect.attr_height > host_rect.attr_height)
        return true
      end
      if (@expand_vertical && @min_height > host_rect.attr_height)
        return true
      end
      return false
    end
    
    typesig { [] }
    # Return the point in the content that currently appears in the top left
    # corner of the scrolled composite.
    # 
    # @return the point in the content that currently appears in the top left
    # corner of the scrolled composite.  If no content has been set, this returns
    # (0, 0).
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.0
    def get_origin
      check_widget
      if ((@content).nil?)
        return Point.new(0, 0)
      end
      location = @content.get_location
      return Point.new(-location.attr_x, -location.attr_y)
    end
    
    typesig { [Point] }
    # Scrolls the content so that the specified point in the content is in the top
    # left corner.  If no content has been set, nothing will occur.
    # 
    # Negative values will be ignored.  Values greater than the maximum scroll
    # distance will result in scrolling to the end of the scrollbar.
    # 
    # @param origin the point on the content to appear in the top left corner
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_INVALID_ARGUMENT - value of origin is outside of content
    # </ul>
    # @since 2.0
    def set_origin(origin)
      set_origin(origin.attr_x, origin.attr_y)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Scrolls the content so that the specified point in the content is in the top
    # left corner.  If no content has been set, nothing will occur.
    # 
    # Negative values will be ignored.  Values greater than the maximum scroll
    # distance will result in scrolling to the end of the scrollbar.
    # 
    # @param x the x coordinate of the content to appear in the top left corner
    # 
    # @param y the y coordinate of the content to appear in the top left corner
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.0
    def set_origin(x, y)
      check_widget
      if ((@content).nil?)
        return
      end
      h_bar = get_horizontal_bar
      if (!(h_bar).nil?)
        h_bar.set_selection(x)
        x = -h_bar.get_selection
      else
        x = 0
      end
      v_bar = get_vertical_bar
      if (!(v_bar).nil?)
        v_bar.set_selection(y)
        y = -v_bar.get_selection
      else
        y = 0
      end
      @content.set_location(x, y)
    end
    
    typesig { [::Java::Boolean] }
    # Set the Always Show Scrollbars flag.  True if the scrollbars are
    # always shown even if they are not required.  False if the scrollbars are only
    # visible when some part of the composite needs to be scrolled to be seen.
    # The H_SCROLL and V_SCROLL style bits are also required to enable scrollbars in the
    # horizontal and vertical directions.
    # 
    # @param show true to show the scrollbars even when not required, false to show scrollbars only when required
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_always_show_scroll_bars(show)
      check_widget
      if ((show).equal?(@always_show_scroll))
        return
      end
      @always_show_scroll = show
      h_bar = get_horizontal_bar
      if (!(h_bar).nil? && @always_show_scroll)
        h_bar.set_visible(true)
      end
      v_bar = get_vertical_bar
      if (!(v_bar).nil? && @always_show_scroll)
        v_bar.set_visible(true)
      end
      layout(false)
    end
    
    typesig { [Control] }
    # Set the content that will be scrolled.
    # 
    # @param content the control to be displayed in the content area
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_content(content)
      check_widget
      if (!(@content).nil? && !@content.is_disposed)
        @content.remove_listener(SWT::Resize, @content_listener)
        @content.set_bounds(Rectangle.new(-200, -200, 0, 0))
      end
      @content = content
      v_bar = get_vertical_bar
      h_bar = get_horizontal_bar
      if (!(@content).nil?)
        if (!(v_bar).nil?)
          v_bar.set_maximum(0)
          v_bar.set_thumb(0)
          v_bar.set_selection(0)
        end
        if (!(h_bar).nil?)
          h_bar.set_maximum(0)
          h_bar.set_thumb(0)
          h_bar.set_selection(0)
        end
        content.set_location(0, 0)
        layout(false)
        @content.add_listener(SWT::Resize, @content_listener)
      else
        if (!(h_bar).nil?)
          h_bar.set_visible(@always_show_scroll)
        end
        if (!(v_bar).nil?)
          v_bar.set_visible(@always_show_scroll)
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    # Configure the ScrolledComposite to resize the content object to be as wide as the
    # ScrolledComposite when the width of the ScrolledComposite is greater than the
    # minimum width specified in setMinWidth.  If the ScrolledComposite is less than the
    # minimum width, the content will not be resized and instead the horizontal scroll bar will be
    # used to view the entire width.
    # If expand is false, this behaviour is turned off.  By default, this behaviour is turned off.
    # 
    # @param expand true to expand the content control to fill available horizontal space
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_expand_horizontal(expand)
      check_widget
      if ((expand).equal?(@expand_horizontal))
        return
      end
      @expand_horizontal = expand
      layout(false)
    end
    
    typesig { [::Java::Boolean] }
    # Configure the ScrolledComposite to resize the content object to be as tall as the
    # ScrolledComposite when the height of the ScrolledComposite is greater than the
    # minimum height specified in setMinHeight.  If the ScrolledComposite is less than the
    # minimum height, the content will not be resized and instead the vertical scroll bar will be
    # used to view the entire height.
    # If expand is false, this behaviour is turned off.  By default, this behaviour is turned off.
    # 
    # @param expand true to expand the content control to fill available vertical space
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_expand_vertical(expand)
      check_widget
      if ((expand).equal?(@expand_vertical))
        return
      end
      @expand_vertical = expand
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
    
    typesig { [::Java::Int] }
    # Specify the minimum height at which the ScrolledComposite will begin scrolling the
    # content with the vertical scroll bar.  This value is only relevant if
    # setExpandVertical(true) has been set.
    # 
    # @param height the minimum height or 0 for default height
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_min_height(height)
      set_min_size(@min_width, height)
    end
    
    typesig { [Point] }
    # Specify the minimum width and height at which the ScrolledComposite will begin scrolling the
    # content with the horizontal scroll bar.  This value is only relevant if
    # setExpandHorizontal(true) and setExpandVertical(true) have been set.
    # 
    # @param size the minimum size or null for the default size
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_min_size(size)
      if ((size).nil?)
        set_min_size(0, 0)
      else
        set_min_size(size.attr_x, size.attr_y)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Specify the minimum width and height at which the ScrolledComposite will begin scrolling the
    # content with the horizontal scroll bar.  This value is only relevant if
    # setExpandHorizontal(true) and setExpandVertical(true) have been set.
    # 
    # @param width the minimum width or 0 for default width
    # @param height the minimum height or 0 for default height
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_min_size(width, height)
      check_widget
      if ((width).equal?(@min_width) && (height).equal?(@min_height))
        return
      end
      @min_width = Math.max(0, width)
      @min_height = Math.max(0, height)
      layout(false)
    end
    
    typesig { [::Java::Int] }
    # Specify the minimum width at which the ScrolledComposite will begin scrolling the
    # content with the horizontal scroll bar.  This value is only relevant if
    # setExpandHorizontal(true) has been set.
    # 
    # @param width the minimum width or 0 for default width
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_min_width(width)
      set_min_size(width, @min_height)
    end
    
    typesig { [::Java::Boolean] }
    # Configure the receiver to automatically scroll to a focused child control
    # to make it visible.
    # 
    # If show is <code>false</code>, show a focused control is off.
    # By default, show a focused control is off.
    # 
    # @param show <code>true</code> to show a focused control.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def set_show_focused_control(show)
      check_widget
      if ((@show_focused_control).equal?(show))
        return
      end
      display = get_display
      display.remove_filter(SWT::FocusIn, @filter)
      @show_focused_control = show
      if (!@show_focused_control)
        return
      end
      display.add_filter(SWT::FocusIn, @filter)
      control = display.get_focus_control
      if (contains(control))
        show_control(control)
      end
    end
    
    typesig { [Control] }
    # Scrolls the content of the receiver so that the control is visible.
    # 
    # @param control the control to be shown
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the control is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the control has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def show_control(control)
      check_widget
      if ((control).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (control.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!contains(control))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      item_rect = get_display.map(control.get_parent, self, control.get_bounds)
      area = get_client_area
      origin = get_origin
      if (item_rect.attr_x < 0)
        origin.attr_x = Math.max(0, origin.attr_x + item_rect.attr_x)
      else
        if (area.attr_width < item_rect.attr_x + item_rect.attr_width)
          origin.attr_x = Math.max(0, origin.attr_x + item_rect.attr_x + Math.min(item_rect.attr_width, area.attr_width) - area.attr_width)
        end
      end
      if (item_rect.attr_y < 0)
        origin.attr_y = Math.max(0, origin.attr_y + item_rect.attr_y)
      else
        if (area.attr_height < item_rect.attr_y + item_rect.attr_height)
          origin.attr_y = Math.max(0, origin.attr_y + item_rect.attr_y + Math.min(item_rect.attr_height, area.attr_height) - area.attr_height)
        end
      end
      set_origin(origin)
    end
    
    typesig { [] }
    def v_scroll
      if ((@content).nil?)
        return
      end
      location = @content.get_location
      v_bar = get_vertical_bar
      v_selection = v_bar.get_selection
      @content.set_location(location.attr_x, -v_selection)
    end
    
    private
    alias_method :initialize__scrolled_composite, :initialize
  end
  
end
