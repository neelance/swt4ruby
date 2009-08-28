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
  module ViewFormImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
    }
  end
  
  # Instances of this class implement a Composite that positions and sizes
  # children and allows programmatic control of layout and border parameters.
  # ViewForm is used in the workbench to lay out a view's label/menu/toolbar
  # local bar.
  # <p>
  # Note that although this class is a subclass of <code>Composite</code>,
  # it does not make sense to set a layout on it.
  # </p><p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>BORDER, FLAT</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(None)</dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class ViewForm < ViewFormImports.const_get :Composite
    include_class_members ViewFormImports
    
    # marginWidth specifies the number of pixels of horizontal margin
    # that will be placed along the left and right edges of the form.
    # 
    # The default value is 0.
    attr_accessor :margin_width
    alias_method :attr_margin_width, :margin_width
    undef_method :margin_width
    alias_method :attr_margin_width=, :margin_width=
    undef_method :margin_width=
    
    # marginHeight specifies the number of pixels of vertical margin
    # that will be placed along the top and bottom edges of the form.
    # 
    # The default value is 0.
    attr_accessor :margin_height
    alias_method :attr_margin_height, :margin_height
    undef_method :margin_height
    alias_method :attr_margin_height=, :margin_height=
    undef_method :margin_height=
    
    # horizontalSpacing specifies the number of pixels between the right
    # edge of one cell and the left edge of its neighbouring cell to
    # the right.
    # 
    # The default value is 1.
    attr_accessor :horizontal_spacing
    alias_method :attr_horizontal_spacing, :horizontal_spacing
    undef_method :horizontal_spacing
    alias_method :attr_horizontal_spacing=, :horizontal_spacing=
    undef_method :horizontal_spacing=
    
    # verticalSpacing specifies the number of pixels between the bottom
    # edge of one cell and the top edge of its neighbouring cell underneath.
    # 
    # The default value is 1.
    attr_accessor :vertical_spacing
    alias_method :attr_vertical_spacing, :vertical_spacing
    undef_method :vertical_spacing
    alias_method :attr_vertical_spacing=, :vertical_spacing=
    undef_method :vertical_spacing=
    
    class_module.module_eval {
      # Color of innermost line of drop shadow border.
      # 
      # NOTE This field is badly named and can not be fixed for backwards compatibility.
      # It should be capitalized.
      # 
      # @deprecated
      
      def border_inside_rgb
        defined?(@@border_inside_rgb) ? @@border_inside_rgb : @@border_inside_rgb= RGB.new(132, 130, 132)
      end
      alias_method :attr_border_inside_rgb, :border_inside_rgb
      
      def border_inside_rgb=(value)
        @@border_inside_rgb = value
      end
      alias_method :attr_border_inside_rgb=, :border_inside_rgb=
      
      # Color of middle line of drop shadow border.
      # 
      # NOTE This field is badly named and can not be fixed for backwards compatibility.
      # It should be capitalized.
      # 
      # @deprecated
      
      def border_middle_rgb
        defined?(@@border_middle_rgb) ? @@border_middle_rgb : @@border_middle_rgb= RGB.new(143, 141, 138)
      end
      alias_method :attr_border_middle_rgb, :border_middle_rgb
      
      def border_middle_rgb=(value)
        @@border_middle_rgb = value
      end
      alias_method :attr_border_middle_rgb=, :border_middle_rgb=
      
      # Color of outermost line of drop shadow border.
      # 
      # NOTE This field is badly named and can not be fixed for backwards compatibility.
      # It should be capitalized.
      # 
      # @deprecated
      
      def border_outside_rgb
        defined?(@@border_outside_rgb) ? @@border_outside_rgb : @@border_outside_rgb= RGB.new(171, 168, 165)
      end
      alias_method :attr_border_outside_rgb, :border_outside_rgb
      
      def border_outside_rgb=(value)
        @@border_outside_rgb = value
      end
      alias_method :attr_border_outside_rgb=, :border_outside_rgb=
    }
    
    # SWT widgets
    attr_accessor :top_left
    alias_method :attr_top_left, :top_left
    undef_method :top_left
    alias_method :attr_top_left=, :top_left=
    undef_method :top_left=
    
    attr_accessor :top_center
    alias_method :attr_top_center, :top_center
    undef_method :top_center
    alias_method :attr_top_center=, :top_center=
    undef_method :top_center=
    
    attr_accessor :top_right
    alias_method :attr_top_right, :top_right
    undef_method :top_right
    alias_method :attr_top_right=, :top_right=
    undef_method :top_right=
    
    attr_accessor :content
    alias_method :attr_content, :content
    undef_method :content
    alias_method :attr_content=, :content=
    undef_method :content=
    
    # Configuration and state info
    attr_accessor :separate_top_center
    alias_method :attr_separate_top_center, :separate_top_center
    undef_method :separate_top_center
    alias_method :attr_separate_top_center=, :separate_top_center=
    undef_method :separate_top_center=
    
    attr_accessor :show_border
    alias_method :attr_show_border, :show_border
    undef_method :show_border
    alias_method :attr_show_border=, :show_border=
    undef_method :show_border=
    
    attr_accessor :separator
    alias_method :attr_separator, :separator
    undef_method :separator
    alias_method :attr_separator=, :separator=
    undef_method :separator=
    
    attr_accessor :border_top
    alias_method :attr_border_top, :border_top
    undef_method :border_top
    alias_method :attr_border_top=, :border_top=
    undef_method :border_top=
    
    attr_accessor :border_bottom
    alias_method :attr_border_bottom, :border_bottom
    undef_method :border_bottom
    alias_method :attr_border_bottom=, :border_bottom=
    undef_method :border_bottom=
    
    attr_accessor :border_left
    alias_method :attr_border_left, :border_left
    undef_method :border_left
    alias_method :attr_border_left=, :border_left=
    undef_method :border_left=
    
    attr_accessor :border_right
    alias_method :attr_border_right, :border_right
    undef_method :border_right
    alias_method :attr_border_right=, :border_right=
    undef_method :border_right=
    
    attr_accessor :highlight
    alias_method :attr_highlight, :highlight
    undef_method :highlight
    alias_method :attr_highlight=, :highlight=
    undef_method :highlight=
    
    attr_accessor :old_size
    alias_method :attr_old_size, :old_size
    undef_method :old_size
    alias_method :attr_old_size=, :old_size=
    undef_method :old_size=
    
    attr_accessor :selection_background
    alias_method :attr_selection_background, :selection_background
    undef_method :selection_background
    alias_method :attr_selection_background=, :selection_background=
    undef_method :selection_background=
    
    class_module.module_eval {
      const_set_lazy(:OFFSCREEN) { -200 }
      const_attr_reader  :OFFSCREEN
      
      const_set_lazy(:BORDER1_COLOR) { SWT::COLOR_WIDGET_NORMAL_SHADOW }
      const_attr_reader  :BORDER1_COLOR
      
      const_set_lazy(:SELECTION_BACKGROUND) { SWT::COLOR_LIST_BACKGROUND }
      const_attr_reader  :SELECTION_BACKGROUND
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
    # 
    # @see SWT#BORDER
    # @see SWT#FLAT
    # @see #getStyle()
    def initialize(parent, style)
      @margin_width = 0
      @margin_height = 0
      @horizontal_spacing = 0
      @vertical_spacing = 0
      @top_left = nil
      @top_center = nil
      @top_right = nil
      @content = nil
      @separate_top_center = false
      @show_border = false
      @separator = 0
      @border_top = 0
      @border_bottom = 0
      @border_left = 0
      @border_right = 0
      @highlight = 0
      @old_size = nil
      @selection_background = nil
      super(parent, check_style(style))
      @margin_width = 0
      @margin_height = 0
      @horizontal_spacing = 1
      @vertical_spacing = 1
      @separate_top_center = false
      @show_border = false
      @separator = -1
      @border_top = 0
      @border_bottom = 0
      @border_left = 0
      @border_right = 0
      @highlight = 0
      Composite.instance_method(:set_layout).bind(self).call(ViewFormLayout.new)
      set_border_visible(!((style & SWT::BORDER)).equal?(0))
      listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members ViewForm
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |e|
          case (e.attr_type)
          when SWT::Dispose
            on_dispose
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
      events = Array.typed(::Java::Int).new([SWT::Dispose, SWT::Paint, SWT::Resize])
      i = 0
      while i < events.attr_length
        add_listener(events[i], listener)
        i += 1
      end
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        mask = SWT::FLAT | SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT
        return style & mask | SWT::NO_REDRAW_RESIZE
      end
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # protected void checkSubclass () {
    # String name = getClass().getName ();
    # String validName = ViewForm.class.getName();
    # if (!validName.equals(name)) {
    # SWT.error (SWT.ERROR_INVALID_SUBCLASS);
    # }
    # }
    def compute_trim(x, y, width, height)
      check_widget
      trim_x = x - @border_left - @highlight
      trim_y = y - @border_top - @highlight
      trim_width = width + @border_left + @border_right + 2 * @highlight
      trim_height = height + @border_top + @border_bottom + 2 * @highlight
      return Rectangle.new(trim_x, trim_y, trim_width, trim_height)
    end
    
    typesig { [] }
    def get_client_area
      check_widget
      client_area = super
      client_area.attr_x += @border_left
      client_area.attr_y += @border_top
      client_area.attr_width -= @border_left + @border_right
      client_area.attr_height -= @border_top + @border_bottom
      return client_area
    end
    
    typesig { [] }
    # Returns the content area.
    # 
    # @return the control in the content area of the pane or null
    def get_content
      # checkWidget();
      return @content
    end
    
    typesig { [] }
    # Returns Control that appears in the top center of the pane.
    # Typically this is a toolbar.
    # 
    # @return the control in the top center of the pane or null
    def get_top_center
      # checkWidget();
      return @top_center
    end
    
    typesig { [] }
    # Returns the Control that appears in the top left corner of the pane.
    # Typically this is a label such as CLabel.
    # 
    # @return the control in the top left corner of the pane or null
    def get_top_left
      # checkWidget();
      return @top_left
    end
    
    typesig { [] }
    # Returns the control in the top right corner of the pane.
    # Typically this is a Close button or a composite with a Menu and Close button.
    # 
    # @return the control in the top right corner of the pane or null
    def get_top_right
      # checkWidget();
      return @top_right
    end
    
    typesig { [] }
    def on_dispose
      @top_left = nil
      @top_center = nil
      @top_right = nil
      @content = nil
      @old_size = nil
      @selection_background = nil
    end
    
    typesig { [SwtGC] }
    def on_paint(gc)
      gc_foreground = gc.get_foreground
      size = get_size
      border = get_display.get_system_color(BORDER1_COLOR)
      if (@show_border)
        gc.set_foreground(border)
        gc.draw_rectangle(0, 0, size.attr_x - 1, size.attr_y - 1)
        if (@highlight > 0)
          x1 = 1
          y1 = 1
          x2 = size.attr_x - 1
          y2 = size.attr_y - 1
          shape = Array.typed(::Java::Int).new([x1, y1, x2, y1, x2, y2, x1, y2, x1, y1 + @highlight, x1 + @highlight, y1 + @highlight, x1 + @highlight, y2 - @highlight, x2 - @highlight, y2 - @highlight, x2 - @highlight, y1 + @highlight, x1, y1 + @highlight])
          highlight_color = get_display.get_system_color(SWT::COLOR_LIST_SELECTION)
          gc.set_background(highlight_color)
          gc.fill_polygon(shape)
        end
      end
      if (@separator > -1)
        gc.set_foreground(border)
        gc.draw_line(@border_left + @highlight, @separator, size.attr_x - @border_left - @border_right - @highlight, @separator)
      end
      gc.set_foreground(gc_foreground)
    end
    
    typesig { [] }
    def on_resize
      size = get_size
      if ((@old_size).nil? || (@old_size.attr_x).equal?(0) || (@old_size.attr_y).equal?(0))
        redraw
      else
        width = 0
        if (@old_size.attr_x < size.attr_x)
          width = size.attr_x - @old_size.attr_x + @border_right + @highlight
        else
          if (@old_size.attr_x > size.attr_x)
            width = @border_right + @highlight
          end
        end
        redraw(size.attr_x - width, 0, width, size.attr_y, false)
        height = 0
        if (@old_size.attr_y < size.attr_y)
          height = size.attr_y - @old_size.attr_y + @border_bottom + @highlight
        end
        if (@old_size.attr_y > size.attr_y)
          height = @border_bottom + @highlight
        end
        redraw(0, size.attr_y - height, size.attr_x, height, false)
      end
      @old_size = size
    end
    
    typesig { [Control] }
    # Sets the content.
    # Setting the content to null will remove it from
    # the pane - however, the creator of the content must dispose of the content.
    # 
    # @param content the control to be displayed in the content area or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_INVALID_ARGUMENT - if the control is not a child of this ViewForm</li>
    # </ul>
    def set_content(content)
      check_widget
      if (!(content).nil? && !(content.get_parent).equal?(self))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(@content).nil? && !@content.is_disposed)
        @content.set_bounds(OFFSCREEN, OFFSCREEN, 0, 0)
      end
      @content = content
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
    
    typesig { [Color] }
    def set_selection_background(color)
      check_widget
      if ((@selection_background).equal?(color))
        return
      end
      if ((color).nil?)
        color = get_display.get_system_color(SELECTION_BACKGROUND)
      end
      @selection_background = color
      redraw
    end
    
    typesig { [Control] }
    # Set the control that appears in the top center of the pane.
    # Typically this is a toolbar.
    # The topCenter is optional.  Setting the topCenter to null will remove it from
    # the pane - however, the creator of the topCenter must dispose of the topCenter.
    # 
    # @param topCenter the control to be displayed in the top center or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_INVALID_ARGUMENT - if the control is not a child of this ViewForm</li>
    # </ul>
    def set_top_center(top_center)
      check_widget
      if (!(top_center).nil? && !(top_center.get_parent).equal?(self))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(@top_center).nil? && !@top_center.is_disposed)
        size = @top_center.get_size
        @top_center.set_location(OFFSCREEN - size.attr_x, OFFSCREEN - size.attr_y)
      end
      @top_center = top_center
      layout(false)
    end
    
    typesig { [Control] }
    # Set the control that appears in the top left corner of the pane.
    # Typically this is a label such as CLabel.
    # The topLeft is optional.  Setting the top left control to null will remove it from
    # the pane - however, the creator of the control must dispose of the control.
    # 
    # @param c the control to be displayed in the top left corner or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_INVALID_ARGUMENT - if the control is not a child of this ViewForm</li>
    # </ul>
    def set_top_left(c)
      check_widget
      if (!(c).nil? && !(c.get_parent).equal?(self))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(@top_left).nil? && !@top_left.is_disposed)
        size = @top_left.get_size
        @top_left.set_location(OFFSCREEN - size.attr_x, OFFSCREEN - size.attr_y)
      end
      @top_left = c
      layout(false)
    end
    
    typesig { [Control] }
    # Set the control that appears in the top right corner of the pane.
    # Typically this is a Close button or a composite with a Menu and Close button.
    # The topRight is optional.  Setting the top right control to null will remove it from
    # the pane - however, the creator of the control must dispose of the control.
    # 
    # @param c the control to be displayed in the top right corner or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_INVALID_ARGUMENT - if the control is not a child of this ViewForm</li>
    # </ul>
    def set_top_right(c)
      check_widget
      if (!(c).nil? && !(c.get_parent).equal?(self))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(@top_right).nil? && !@top_right.is_disposed)
        size = @top_right.get_size
        @top_right.set_location(OFFSCREEN - size.attr_x, OFFSCREEN - size.attr_y)
      end
      @top_right = c
      layout(false)
    end
    
    typesig { [::Java::Boolean] }
    # Specify whether the border should be displayed or not.
    # 
    # @param show true if the border should be displayed
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_border_visible(show)
      check_widget
      if ((@show_border).equal?(show))
        return
      end
      @show_border = show
      if (@show_border)
        @border_left = @border_top = @border_right = @border_bottom = 1
        if (((get_style & SWT::FLAT)).equal?(0))
          @highlight = 2
        end
      else
        @border_bottom = @border_top = @border_left = @border_right = 0
        @highlight = 0
      end
      layout(false)
      redraw
    end
    
    typesig { [::Java::Boolean] }
    # If true, the topCenter will always appear on a separate line by itself, otherwise the
    # topCenter will appear in the top row if there is room and will be moved to the second row if
    # required.
    # 
    # @param show true if the topCenter will always appear on a separate line by itself
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_top_center_separate(show)
      check_widget
      @separate_top_center = show
      layout(false)
    end
    
    private
    alias_method :initialize__view_form, :initialize
  end
  
end
