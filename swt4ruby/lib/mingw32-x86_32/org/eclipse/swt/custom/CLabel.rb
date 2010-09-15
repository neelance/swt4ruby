require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Custom
  module CLabelImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Accessibility
    }
  end
  
  # A Label which supports aligned text and/or an image and different border styles.
  # <p>
  # If there is not enough space a CLabel uses the following strategy to fit the
  # information into the available space:
  # <pre>
  # ignores the indent in left align mode
  # ignores the image and the gap
  # shortens the text by replacing the center portion of the label with an ellipsis
  # shortens the text by removing the center portion of the label
  # </pre>
  # <p>
  # <dl>
  # <dt><b>Styles:</b>
  # <dd>LEFT, RIGHT, CENTER, SHADOW_IN, SHADOW_OUT, SHADOW_NONE</dd>
  # <dt><b>Events:</b>
  # <dd></dd>
  # </dl>
  # 
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: CustomControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class CLabel < CLabelImports.const_get :Canvas
    include_class_members CLabelImports
    
    class_module.module_eval {
      # Gap between icon and text
      const_set_lazy(:GAP) { 5 }
      const_attr_reader  :GAP
      
      # Left and right margins
      const_set_lazy(:INDENT) { 3 }
      const_attr_reader  :INDENT
      
      # a string inserted in the middle of text that has been shortened
      const_set_lazy(:ELLIPSIS) { "..." }
      const_attr_reader  :ELLIPSIS
    }
    
    # $NON-NLS-1$ // could use the ellipsis glyph on some platforms "\u2026"
    # the alignment. Either CENTER, RIGHT, LEFT. Default is LEFT
    attr_accessor :align
    alias_method :attr_align, :align
    undef_method :align
    alias_method :attr_align=, :align=
    undef_method :align=
    
    attr_accessor :h_indent
    alias_method :attr_h_indent, :h_indent
    undef_method :h_indent
    alias_method :attr_h_indent=, :h_indent=
    undef_method :h_indent=
    
    attr_accessor :v_indent
    alias_method :attr_v_indent, :v_indent
    undef_method :v_indent
    alias_method :attr_v_indent=, :v_indent=
    undef_method :v_indent=
    
    # the current text
    attr_accessor :text
    alias_method :attr_text, :text
    undef_method :text
    alias_method :attr_text=, :text=
    undef_method :text=
    
    # the current icon
    attr_accessor :image
    alias_method :attr_image, :image
    undef_method :image
    alias_method :attr_image=, :image=
    undef_method :image=
    
    # The tooltip is used for two purposes - the application can set
    # a tooltip or the tooltip can be used to display the full text when the
    # the text has been truncated due to the label being too short.
    # The appToolTip stores the tooltip set by the application.  Control.tooltiptext
    # contains whatever tooltip is currently being displayed.
    attr_accessor :app_tool_tip_text
    alias_method :attr_app_tool_tip_text, :app_tool_tip_text
    undef_method :app_tool_tip_text
    alias_method :attr_app_tool_tip_text=, :app_tool_tip_text=
    undef_method :app_tool_tip_text=
    
    attr_accessor :background_image
    alias_method :attr_background_image, :background_image
    undef_method :background_image
    alias_method :attr_background_image=, :background_image=
    undef_method :background_image=
    
    attr_accessor :gradient_colors
    alias_method :attr_gradient_colors, :gradient_colors
    undef_method :gradient_colors
    alias_method :attr_gradient_colors=, :gradient_colors=
    undef_method :gradient_colors=
    
    attr_accessor :gradient_percents
    alias_method :attr_gradient_percents, :gradient_percents
    undef_method :gradient_percents
    alias_method :attr_gradient_percents=, :gradient_percents=
    undef_method :gradient_percents=
    
    attr_accessor :gradient_vertical
    alias_method :attr_gradient_vertical, :gradient_vertical
    undef_method :gradient_vertical
    alias_method :attr_gradient_vertical=, :gradient_vertical=
    undef_method :gradient_vertical=
    
    attr_accessor :background
    alias_method :attr_background, :background
    undef_method :background
    alias_method :attr_background=, :background=
    undef_method :background=
    
    attr_accessor :dispose_listener
    alias_method :attr_dispose_listener, :dispose_listener
    undef_method :dispose_listener
    alias_method :attr_dispose_listener=, :dispose_listener=
    undef_method :dispose_listener=
    
    class_module.module_eval {
      
      def draw_flags
        defined?(@@draw_flags) ? @@draw_flags : @@draw_flags= SWT::DRAW_MNEMONIC | SWT::DRAW_TAB | SWT::DRAW_TRANSPARENT | SWT::DRAW_DELIMITER
      end
      alias_method :attr_draw_flags, :draw_flags
      
      def draw_flags=(value)
        @@draw_flags = value
      end
      alias_method :attr_draw_flags=, :draw_flags=
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
    # @see SWT#LEFT
    # @see SWT#RIGHT
    # @see SWT#CENTER
    # @see SWT#SHADOW_IN
    # @see SWT#SHADOW_OUT
    # @see SWT#SHADOW_NONE
    # @see #getStyle()
    def initialize(parent, style)
      @align = 0
      @h_indent = 0
      @v_indent = 0
      @text = nil
      @image = nil
      @app_tool_tip_text = nil
      @background_image = nil
      @gradient_colors = nil
      @gradient_percents = nil
      @gradient_vertical = false
      @background = nil
      @dispose_listener = nil
      super(parent, check_style(style))
      @align = SWT::LEFT
      @h_indent = INDENT
      @v_indent = INDENT
      if (((style & (SWT::CENTER | SWT::RIGHT))).equal?(0))
        style |= SWT::LEFT
      end
      if (!((style & SWT::CENTER)).equal?(0))
        @align = SWT::CENTER
      end
      if (!((style & SWT::RIGHT)).equal?(0))
        @align = SWT::RIGHT
      end
      if (!((style & SWT::LEFT)).equal?(0))
        @align = SWT::LEFT
      end
      add_paint_listener(Class.new(PaintListener.class == Class ? PaintListener : Object) do
        local_class_in CLabel
        include_class_members CLabel
        include PaintListener if PaintListener.class == Module
        
        typesig { [PaintEvent] }
        define_method :paint_control do |event|
          on_paint(event)
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      add_traverse_listener(Class.new(TraverseListener.class == Class ? TraverseListener : Object) do
        local_class_in CLabel
        include_class_members CLabel
        include TraverseListener if TraverseListener.class == Module
        
        typesig { [TraverseEvent] }
        define_method :key_traversed do |event|
          if ((event.attr_detail).equal?(SWT::TRAVERSE_MNEMONIC))
            on_mnemonic(event)
          end
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      @dispose_listener = Class.new(Listener.class == Class ? Listener : Object) do
        local_class_in CLabel
        include_class_members CLabel
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          on_dispose(event)
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      init_accessible
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      # Check the style bits to ensure that no invalid styles are applied.
      def check_style(style)
        if (!((style & SWT::BORDER)).equal?(0))
          style |= SWT::SHADOW_IN
        end
        mask = SWT::SHADOW_IN | SWT::SHADOW_OUT | SWT::SHADOW_NONE | SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT
        style = style & mask
        return style |= SWT::NO_FOCUS | SWT::DOUBLE_BUFFERED
      end
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    # protected void checkSubclass () {
    # String name = getClass().getName ();
    # String validName = CLabel.class.getName();
    # if (!validName.equals(name)) {
    # SWT.error (SWT.ERROR_INVALID_SUBCLASS);
    # }
    # }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      e = get_total_size(@image, @text)
      if ((w_hint).equal?(SWT::DEFAULT))
        e.attr_x += 2 * @h_indent
      else
        e.attr_x = w_hint
      end
      if ((h_hint).equal?(SWT::DEFAULT))
        e.attr_y += 2 * @v_indent
      else
        e.attr_y = h_hint
      end
      return e
    end
    
    typesig { [SwtGC, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Color, Color] }
    # Draw a rectangle in the given colors.
    def draw_bevel_rect(gc, x, y, w, h, topleft, bottomright)
      gc.set_foreground(bottomright)
      gc.draw_line(x + w, y, x + w, y + h)
      gc.draw_line(x, y + h, x + w, y + h)
      gc.set_foreground(topleft)
      gc.draw_line(x, y, x + w - 1, y)
      gc.draw_line(x, y, x, y + h - 1)
    end
    
    typesig { [String] }
    # Return the lowercase of the first non-'&' character following
    # an '&' character in the given string. If there are no '&'
    # characters in the given string, return '\0'.
    def __find_mnemonic(string)
      if ((string).nil?)
        return Character.new(?\0.ord)
      end
      index = 0
      length_ = string.length
      begin
        while (index < length_ && !(string.char_at(index)).equal?(Character.new(?&.ord)))
          index += 1
        end
        if ((index += 1) >= length_)
          return Character.new(?\0.ord)
        end
        if (!(string.char_at(index)).equal?(Character.new(?&.ord)))
          return Character.to_lower_case(string.char_at(index))
        end
        index += 1
      end while (index < length_)
      return Character.new(?\0.ord)
    end
    
    typesig { [] }
    # Returns the alignment.
    # The alignment style (LEFT, CENTER or RIGHT) is returned.
    # 
    # @return SWT.LEFT, SWT.RIGHT or SWT.CENTER
    def get_alignment
      # checkWidget();
      return @align
    end
    
    typesig { [] }
    # Return the CLabel's image or <code>null</code>.
    # 
    # @return the image of the label or null
    def get_image
      # checkWidget();
      return @image
    end
    
    typesig { [Image, String] }
    # Compute the minimum size.
    def get_total_size(image, text)
      size = Point.new(0, 0)
      if (!(image).nil?)
        r = image.get_bounds
        size.attr_x += r.attr_width
        size.attr_y += r.attr_height
      end
      gc = SwtGC.new(self)
      if (!(text).nil? && text.length > 0)
        e = gc.text_extent(text, self.attr_draw_flags)
        size.attr_x += e.attr_x
        size.attr_y = Math.max(size.attr_y, e.attr_y)
        if (!(image).nil?)
          size.attr_x += GAP
        end
      else
        size.attr_y = Math.max(size.attr_y, gc.get_font_metrics.get_height)
      end
      gc.dispose
      return size
    end
    
    typesig { [] }
    def get_style
      style = super
      case (@align)
      when SWT::RIGHT
        style |= SWT::RIGHT
      when SWT::CENTER
        style |= SWT::CENTER
      when SWT::LEFT
        style |= SWT::LEFT
      end
      return style
    end
    
    typesig { [] }
    # Return the Label's text.
    # 
    # @return the text of the label or null
    def get_text
      # checkWidget();
      return @text
    end
    
    typesig { [] }
    def get_tool_tip_text
      check_widget
      return @app_tool_tip_text
    end
    
    typesig { [] }
    def init_accessible
      accessible = get_accessible
      accessible.add_accessible_listener(Class.new(AccessibleAdapter.class == Class ? AccessibleAdapter : Object) do
        local_class_in CLabel
        include_class_members CLabel
        include AccessibleAdapter if AccessibleAdapter.class == Module
        
        typesig { [AccessibleEvent] }
        define_method :get_name do |e|
          e.attr_result = get_text
        end
        
        typesig { [AccessibleEvent] }
        define_method :get_help do |e|
          e.attr_result = get_tool_tip_text
        end
        
        typesig { [AccessibleEvent] }
        define_method :get_keyboard_shortcut do |e|
          mnemonic = __find_mnemonic(@local_class_parent.attr_text)
          if (!(mnemonic).equal?(Character.new(?\0.ord)))
            e.attr_result = "Alt+" + RJava.cast_to_string(mnemonic) # $NON-NLS-1$
          end
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      accessible.add_accessible_control_listener(Class.new(AccessibleControlAdapter.class == Class ? AccessibleControlAdapter : Object) do
        local_class_in CLabel
        include_class_members CLabel
        include AccessibleControlAdapter if AccessibleControlAdapter.class == Module
        
        typesig { [AccessibleControlEvent] }
        define_method :get_child_at_point do |e|
          e.attr_child_id = ACC::CHILDID_SELF
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_location do |e|
          rect = get_display.map(get_parent, nil, get_bounds)
          e.attr_x = rect.attr_x
          e.attr_y = rect.attr_y
          e.attr_width = rect.attr_width
          e.attr_height = rect.attr_height
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_child_count do |e|
          e.attr_detail = 0
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_role do |e|
          e.attr_detail = ACC::ROLE_LABEL
        end
        
        typesig { [AccessibleControlEvent] }
        define_method :get_state do |e|
          e.attr_detail = ACC::STATE_READONLY
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
    end
    
    typesig { [Event] }
    def on_dispose(event)
      remove_listener(SWT::Dispose, @dispose_listener)
      notify_listeners(SWT::Dispose, event)
      event.attr_type = SWT::None
      @gradient_colors = nil
      @gradient_percents = nil
      @background_image = nil
      @text = RJava.cast_to_string(nil)
      @image = nil
      @app_tool_tip_text = RJava.cast_to_string(nil)
    end
    
    typesig { [TraverseEvent] }
    def on_mnemonic(event)
      mnemonic = __find_mnemonic(@text)
      if ((mnemonic).equal?(Character.new(?\0.ord)))
        return
      end
      if (!(Character.to_lower_case(event.attr_character)).equal?(mnemonic))
        return
      end
      control = self.get_parent
      while (!(control).nil?)
        children = control.get_children
        index = 0
        while (index < children.attr_length)
          if ((children[index]).equal?(self))
            break
          end
          index += 1
        end
        index += 1
        if (index < children.attr_length)
          if (children[index].set_focus)
            event.attr_doit = true
            event.attr_detail = SWT::TRAVERSE_NONE
          end
        end
        control = control.get_parent
      end
    end
    
    typesig { [PaintEvent] }
    def on_paint(event)
      rect = get_client_area
      if ((rect.attr_width).equal?(0) || (rect.attr_height).equal?(0))
        return
      end
      shorten_text = false
      t = @text
      img = @image
      available_width = Math.max(0, rect.attr_width - 2 * @h_indent)
      extent = get_total_size(img, t)
      if (extent.attr_x > available_width)
        img = nil
        extent = get_total_size(img, t)
        if (extent.attr_x > available_width)
          shorten_text = true
        end
      end
      gc = event.attr_gc
      lines = (@text).nil? ? nil : split_string(@text)
      # shorten the text
      if (shorten_text)
        extent.attr_x = 0
        i = 0
        while i < lines.attr_length
          e = gc.text_extent(lines[i], self.attr_draw_flags)
          if (e.attr_x > available_width)
            lines[i] = shorten_text(gc, lines[i], available_width)
            extent.attr_x = Math.max(extent.attr_x, get_total_size(nil, lines[i]).attr_x)
          else
            extent.attr_x = Math.max(extent.attr_x, e.attr_x)
          end
          i += 1
        end
        if ((@app_tool_tip_text).nil?)
          Canvas.instance_method(:set_tool_tip_text).bind(self).call(@text)
        end
      else
        Canvas.instance_method(:set_tool_tip_text).bind(self).call(@app_tool_tip_text)
      end
      # determine horizontal position
      x = rect.attr_x + @h_indent
      if ((@align).equal?(SWT::CENTER))
        x = (rect.attr_width - extent.attr_x) / 2
      end
      if ((@align).equal?(SWT::RIGHT))
        x = rect.attr_width - @h_indent - extent.attr_x
      end
      # draw a background image behind the text
      begin
        if (!(@background_image).nil?)
          # draw a background image behind the text
          image_rect = @background_image.get_bounds
          # tile image to fill space
          gc.set_background(get_background)
          gc.fill_rectangle(rect)
          x_pos = 0
          while (x_pos < rect.attr_width)
            y_pos = 0
            while (y_pos < rect.attr_height)
              gc.draw_image(@background_image, x_pos, y_pos)
              y_pos += image_rect.attr_height
            end
            x_pos += image_rect.attr_width
          end
        else
          if (!(@gradient_colors).nil?)
            # draw a gradient behind the text
            old_background = gc.get_background
            if ((@gradient_colors.attr_length).equal?(1))
              if (!(@gradient_colors[0]).nil?)
                gc.set_background(@gradient_colors[0])
              end
              gc.fill_rectangle(0, 0, rect.attr_width, rect.attr_height)
            else
              old_foreground = gc.get_foreground
              last_color = @gradient_colors[0]
              if ((last_color).nil?)
                last_color = old_background
              end
              pos = 0
              i = 0
              while i < @gradient_percents.attr_length
                gc.set_foreground(last_color)
                last_color = @gradient_colors[i + 1]
                if ((last_color).nil?)
                  last_color = old_background
                end
                gc.set_background(last_color)
                if (@gradient_vertical)
                  gradient_height = (@gradient_percents[i] * rect.attr_height / 100) - pos
                  gc.fill_gradient_rectangle(0, pos, rect.attr_width, gradient_height, true)
                  pos += gradient_height
                else
                  gradient_width = (@gradient_percents[i] * rect.attr_width / 100) - pos
                  gc.fill_gradient_rectangle(pos, 0, gradient_width, rect.attr_height, false)
                  pos += gradient_width
                end
                (i += 1)
              end
              if (@gradient_vertical && pos < rect.attr_height)
                gc.set_background(get_background)
                gc.fill_rectangle(0, pos, rect.attr_width, rect.attr_height - pos)
              end
              if (!@gradient_vertical && pos < rect.attr_width)
                gc.set_background(get_background)
                gc.fill_rectangle(pos, 0, rect.attr_width - pos, rect.attr_height)
              end
              gc.set_foreground(old_foreground)
            end
            gc.set_background(old_background)
          else
            if (!(@background).nil? || ((get_style & SWT::DOUBLE_BUFFERED)).equal?(0))
              gc.set_background(get_background)
              gc.fill_rectangle(rect)
            end
          end
        end
      rescue SWTException => e
        if (((get_style & SWT::DOUBLE_BUFFERED)).equal?(0))
          gc.set_background(get_background)
          gc.fill_rectangle(rect)
        end
      end
      # draw border
      style = get_style
      if (!((style & SWT::SHADOW_IN)).equal?(0) || !((style & SWT::SHADOW_OUT)).equal?(0))
        paint_border(gc, rect)
      end
      # draw the image
      if (!(img).nil?)
        image_rect = img.get_bounds
        gc.draw_image(img, 0, 0, image_rect.attr_width, image_rect.attr_height, x, (rect.attr_height - image_rect.attr_height) / 2, image_rect.attr_width, image_rect.attr_height)
        x += image_rect.attr_width + GAP
        extent.attr_x -= image_rect.attr_width + GAP
      end
      # draw the text
      if (!(lines).nil?)
        line_height = gc.get_font_metrics.get_height
        text_height = lines.attr_length * line_height
        line_y = Math.max(@v_indent, rect.attr_y + (rect.attr_height - text_height) / 2)
        gc.set_foreground(get_foreground)
        i = 0
        while i < lines.attr_length
          line_x = x
          if (lines.attr_length > 1)
            if ((@align).equal?(SWT::CENTER))
              line_width = gc.text_extent(lines[i], self.attr_draw_flags).attr_x
              line_x = x + Math.max(0, (extent.attr_x - line_width) / 2)
            end
            if ((@align).equal?(SWT::RIGHT))
              line_width = gc.text_extent(lines[i], self.attr_draw_flags).attr_x
              line_x = Math.max(x, rect.attr_x + rect.attr_width - @h_indent - line_width)
            end
          end
          gc.draw_text(lines[i], line_x, line_y, self.attr_draw_flags)
          line_y += line_height
          i += 1
        end
      end
    end
    
    typesig { [SwtGC, Rectangle] }
    # Paint the Label's border.
    def paint_border(gc, r)
      disp = get_display
      c1 = nil
      c2 = nil
      style = get_style
      if (!((style & SWT::SHADOW_IN)).equal?(0))
        c1 = disp.get_system_color(SWT::COLOR_WIDGET_NORMAL_SHADOW)
        c2 = disp.get_system_color(SWT::COLOR_WIDGET_HIGHLIGHT_SHADOW)
      end
      if (!((style & SWT::SHADOW_OUT)).equal?(0))
        c1 = disp.get_system_color(SWT::COLOR_WIDGET_LIGHT_SHADOW)
        c2 = disp.get_system_color(SWT::COLOR_WIDGET_NORMAL_SHADOW)
      end
      if (!(c1).nil? && !(c2).nil?)
        gc.set_line_width(1)
        draw_bevel_rect(gc, r.attr_x, r.attr_y, r.attr_width - 1, r.attr_height - 1, c1, c2)
      end
    end
    
    typesig { [::Java::Int] }
    # Set the alignment of the CLabel.
    # Use the values LEFT, CENTER and RIGHT to align image and text within the available space.
    # 
    # @param align the alignment style of LEFT, RIGHT or CENTER
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_INVALID_ARGUMENT - if the value of align is not one of SWT.LEFT, SWT.RIGHT or SWT.CENTER</li>
    # </ul>
    def set_alignment(align)
      check_widget
      if (!(align).equal?(SWT::LEFT) && !(align).equal?(SWT::RIGHT) && !(align).equal?(SWT::CENTER))
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if (!(@align).equal?(align))
        @align = align
        redraw
      end
    end
    
    typesig { [Color] }
    def set_background(color)
      super(color)
      # Are these settings the same as before?
      if ((@background_image).nil? && (@gradient_colors).nil? && (@gradient_percents).nil?)
        if ((color).nil?)
          if ((@background).nil?)
            return
          end
        else
          if ((color == @background))
            return
          end
        end
      end
      @background = color
      @background_image = nil
      @gradient_colors = nil
      @gradient_percents = nil
      redraw
    end
    
    typesig { [Array.typed(Color), Array.typed(::Java::Int)] }
    # Specify a gradient of colours to be drawn in the background of the CLabel.
    # <p>For example, to draw a gradient that varies from dark blue to blue and then to
    # white and stays white for the right half of the label, use the following call
    # to setBackground:</p>
    # <pre>
    # clabel.setBackground(new Color[]{display.getSystemColor(SWT.COLOR_DARK_BLUE),
    # display.getSystemColor(SWT.COLOR_BLUE),
    # display.getSystemColor(SWT.COLOR_WHITE),
    # display.getSystemColor(SWT.COLOR_WHITE)},
    # new int[] {25, 50, 100});
    # </pre>
    # 
    # @param colors an array of Color that specifies the colors to appear in the gradient
    # in order of appearance from left to right;  The value <code>null</code>
    # clears the background gradient; the value <code>null</code> can be used
    # inside the array of Color to specify the background color.
    # @param percents an array of integers between 0 and 100 specifying the percent of the width
    # of the widget at which the color should change; the size of the percents
    # array must be one less than the size of the colors array.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_INVALID_ARGUMENT - if the values of colors and percents are not consistent</li>
    # </ul>
    def set_background(colors, percents)
      set_background(colors, percents, false)
    end
    
    typesig { [Array.typed(Color), Array.typed(::Java::Int), ::Java::Boolean] }
    # Specify a gradient of colours to be drawn in the background of the CLabel.
    # <p>For example, to draw a gradient that varies from dark blue to white in the vertical,
    # direction use the following call
    # to setBackground:</p>
    # <pre>
    # clabel.setBackground(new Color[]{display.getSystemColor(SWT.COLOR_DARK_BLUE),
    # display.getSystemColor(SWT.COLOR_WHITE)},
    # new int[] {100}, true);
    # </pre>
    # 
    # @param colors an array of Color that specifies the colors to appear in the gradient
    # in order of appearance from left/top to right/bottom;  The value <code>null</code>
    # clears the background gradient; the value <code>null</code> can be used
    # inside the array of Color to specify the background color.
    # @param percents an array of integers between 0 and 100 specifying the percent of the width/height
    # of the widget at which the color should change; the size of the percents
    # array must be one less than the size of the colors array.
    # @param vertical indicate the direction of the gradient.  True is vertical and false is horizontal.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # <li>ERROR_INVALID_ARGUMENT - if the values of colors and percents are not consistent</li>
    # </ul>
    # 
    # @since 3.0
    def set_background(colors, percents, vertical)
      check_widget
      if (!(colors).nil?)
        if ((percents).nil? || !(percents.attr_length).equal?(colors.attr_length - 1))
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (get_display.get_depth < 15)
          # Don't use gradients on low color displays
          colors = Array.typed(Color).new([colors[colors.attr_length - 1]])
          percents = Array.typed(::Java::Int).new([])
        end
        i = 0
        while i < percents.attr_length
          if (percents[i] < 0 || percents[i] > 100)
            SWT.error(SWT::ERROR_INVALID_ARGUMENT)
          end
          if (i > 0 && percents[i] < percents[i - 1])
            SWT.error(SWT::ERROR_INVALID_ARGUMENT)
          end
          i += 1
        end
      end
      # Are these settings the same as before?
      background = get_background
      if ((@background_image).nil?)
        if ((!(@gradient_colors).nil?) && (!(colors).nil?) && ((@gradient_colors.attr_length).equal?(colors.attr_length)))
          same = false
          i = 0
          while i < @gradient_colors.attr_length
            same = ((@gradient_colors[i]).equal?(colors[i])) || (((@gradient_colors[i]).nil?) && ((colors[i]).equal?(background))) || (((@gradient_colors[i]).equal?(background)) && ((colors[i]).nil?))
            if (!same)
              break
            end
            i += 1
          end
          if (same)
            i_ = 0
            while i_ < @gradient_percents.attr_length
              same = (@gradient_percents[i_]).equal?(percents[i_])
              if (!same)
                break
              end
              i_ += 1
            end
          end
          if (same && (@gradient_vertical).equal?(vertical))
            return
          end
        end
      else
        @background_image = nil
      end
      # Store the new settings
      if ((colors).nil?)
        @gradient_colors = nil
        @gradient_percents = nil
        @gradient_vertical = false
      else
        @gradient_colors = Array.typed(Color).new(colors.attr_length) { nil }
        i = 0
        while i < colors.attr_length
          @gradient_colors[i] = (!(colors[i]).nil?) ? colors[i] : background
          (i += 1)
        end
        @gradient_percents = Array.typed(::Java::Int).new(percents.attr_length) { 0 }
        i_ = 0
        while i_ < percents.attr_length
          @gradient_percents[i_] = percents[i_]
          (i_ += 1)
        end
        @gradient_vertical = vertical
      end
      # Refresh with the new settings
      redraw
    end
    
    typesig { [Image] }
    # Set the image to be drawn in the background of the label.
    # 
    # @param image the image to be drawn in the background
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_background(image)
      check_widget
      if ((image).equal?(@background_image))
        return
      end
      if (!(image).nil?)
        @gradient_colors = nil
        @gradient_percents = nil
      end
      @background_image = image
      redraw
    end
    
    typesig { [Font] }
    def set_font(font)
      super(font)
      redraw
    end
    
    typesig { [Image] }
    # Set the label's Image.
    # The value <code>null</code> clears it.
    # 
    # @param image the image to be displayed in the label or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_image(image)
      check_widget
      if (!(image).equal?(@image))
        @image = image
        redraw
      end
    end
    
    typesig { [String] }
    # Set the label's text.
    # The value <code>null</code> clears it.
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
    # @param text the text to be displayed in the label or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_text(text)
      check_widget
      if ((text).nil?)
        text = ""
      end # $NON-NLS-1$
      if (!(text == @text))
        @text = text
        redraw
      end
    end
    
    typesig { [String] }
    def set_tool_tip_text(string)
      super(string)
      @app_tool_tip_text = RJava.cast_to_string(Canvas.instance_method(:get_tool_tip_text).bind(self).call)
    end
    
    typesig { [SwtGC, String, ::Java::Int] }
    # Shorten the given text <code>t</code> so that its length doesn't exceed
    # the given width. The default implementation replaces characters in the
    # center of the original string with an ellipsis ("...").
    # Override if you need a different strategy.
    # 
    # @param gc the gc to use for text measurement
    # @param t the text to shorten
    # @param width the width to shorten the text to, in pixels
    # @return the shortened text
    def shorten_text(gc, t, width)
      if ((t).nil?)
        return nil
      end
      w = gc.text_extent(ELLIPSIS, self.attr_draw_flags).attr_x
      if (width <= w)
        return t
      end
      l = t.length
      max_ = l / 2
      min = 0
      mid = (max_ + min) / 2 - 1
      if (mid <= 0)
        return t
      end
      layout = TextLayout.new(get_display)
      layout.set_text(t)
      mid = validate_offset(layout, mid)
      while (min < mid && mid < max_)
        s1 = t.substring(0, mid)
        s2 = t.substring(validate_offset(layout, l - mid), l)
        l1 = gc.text_extent(s1, self.attr_draw_flags).attr_x
        l2 = gc.text_extent(s2, self.attr_draw_flags).attr_x
        if (l1 + w + l2 > width)
          max_ = mid
          mid = validate_offset(layout, (max_ + min) / 2)
        else
          if (l1 + w + l2 < width)
            min = mid
            mid = validate_offset(layout, (max_ + min) / 2)
          else
            min = max_
          end
        end
      end
      result = (mid).equal?(0) ? t : RJava.cast_to_string(t.substring(0, mid)) + ELLIPSIS + RJava.cast_to_string(t.substring(validate_offset(layout, l - mid), l))
      layout.dispose
      return result
    end
    
    typesig { [TextLayout, ::Java::Int] }
    def validate_offset(layout, offset)
      next_offset = layout.get_next_offset(offset, SWT::MOVEMENT_CLUSTER)
      if (!(next_offset).equal?(offset))
        return layout.get_previous_offset(next_offset, SWT::MOVEMENT_CLUSTER)
      end
      return offset
    end
    
    typesig { [String] }
    def split_string(text)
      lines = Array.typed(String).new(1) { nil }
      start = 0
      pos = 0
      begin
        pos = text.index_of(Character.new(?\n.ord), start)
        if ((pos).equal?(-1))
          lines[lines.attr_length - 1] = text.substring(start)
        else
          crlf = (pos > 0) && ((text.char_at(pos - 1)).equal?(Character.new(?\r.ord)))
          lines[lines.attr_length - 1] = text.substring(start, pos - (crlf ? 1 : 0))
          start = pos + 1
          new_lines = Array.typed(String).new(lines.attr_length + 1) { nil }
          System.arraycopy(lines, 0, new_lines, 0, lines.attr_length)
          lines = new_lines
        end
      end while (!(pos).equal?(-1))
      return lines
    end
    
    private
    alias_method :initialize__clabel, :initialize
  end
  
end
