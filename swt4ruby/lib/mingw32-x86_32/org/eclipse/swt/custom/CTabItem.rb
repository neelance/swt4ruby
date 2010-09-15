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
  module CTabItemImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Custom
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # Instances of this class represent a selectable user interface object
  # that represent a page in a notebook widget.
  # 
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>SWT.CLOSE</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#ctabfolder">CTabFolder, CTabItem snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class CTabItem < CTabItemImports.const_get :Item
    include_class_members CTabItemImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
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
    
    attr_accessor :width
    alias_method :attr_width, :width
    undef_method :width
    alias_method :attr_width=, :width=
    undef_method :width=
    
    attr_accessor :height
    alias_method :attr_height, :height
    undef_method :height
    alias_method :attr_height=, :height=
    undef_method :height=
    
    attr_accessor :control
    alias_method :attr_control, :control
    undef_method :control
    alias_method :attr_control=, :control=
    undef_method :control=
    
    # the tab page
    attr_accessor :tool_tip_text
    alias_method :attr_tool_tip_text, :tool_tip_text
    undef_method :tool_tip_text
    alias_method :attr_tool_tip_text=, :tool_tip_text=
    undef_method :tool_tip_text=
    
    attr_accessor :shortened_text
    alias_method :attr_shortened_text, :shortened_text
    undef_method :shortened_text
    alias_method :attr_shortened_text=, :shortened_text=
    undef_method :shortened_text=
    
    attr_accessor :shortened_text_width
    alias_method :attr_shortened_text_width, :shortened_text_width
    undef_method :shortened_text_width
    alias_method :attr_shortened_text_width=, :shortened_text_width=
    undef_method :shortened_text_width=
    
    # Appearance
    attr_accessor :font
    alias_method :attr_font, :font
    undef_method :font
    alias_method :attr_font=, :font=
    undef_method :font=
    
    attr_accessor :disabled_image
    alias_method :attr_disabled_image, :disabled_image
    undef_method :disabled_image
    alias_method :attr_disabled_image=, :disabled_image=
    undef_method :disabled_image=
    
    attr_accessor :close_rect
    alias_method :attr_close_rect, :close_rect
    undef_method :close_rect
    alias_method :attr_close_rect=, :close_rect=
    undef_method :close_rect=
    
    attr_accessor :close_image_state
    alias_method :attr_close_image_state, :close_image_state
    undef_method :close_image_state
    alias_method :attr_close_image_state=, :close_image_state=
    undef_method :close_image_state=
    
    attr_accessor :show_close
    alias_method :attr_show_close, :show_close
    undef_method :show_close
    alias_method :attr_show_close=, :show_close=
    undef_method :show_close=
    
    attr_accessor :showing
    alias_method :attr_showing, :showing
    undef_method :showing
    alias_method :attr_showing=, :showing=
    undef_method :showing=
    
    class_module.module_eval {
      # internal constants
      const_set_lazy(:TOP_MARGIN) { 2 }
      const_attr_reader  :TOP_MARGIN
      
      const_set_lazy(:BOTTOM_MARGIN) { 2 }
      const_attr_reader  :BOTTOM_MARGIN
      
      const_set_lazy(:LEFT_MARGIN) { 4 }
      const_attr_reader  :LEFT_MARGIN
      
      const_set_lazy(:RIGHT_MARGIN) { 4 }
      const_attr_reader  :RIGHT_MARGIN
      
      const_set_lazy(:INTERNAL_SPACING) { 4 }
      const_attr_reader  :INTERNAL_SPACING
      
      const_set_lazy(:FLAGS) { SWT::DRAW_TRANSPARENT | SWT::DRAW_MNEMONIC }
      const_attr_reader  :FLAGS
      
      const_set_lazy(:ELLIPSIS) { "..." }
      const_attr_reader  :ELLIPSIS
    }
    
    typesig { [CTabFolder, ::Java::Int] }
    # $NON-NLS-1$ // could use the ellipsis glyph on some platforms "\u2026"
    # 
    # Constructs a new instance of this class given its parent
    # (which must be a <code>CTabFolder</code>) and a style value
    # describing its behavior and appearance. The item is added
    # to the end of the items maintained by its parent.
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
    # @param parent a CTabFolder which will be the parent of the new instance (cannot be null)
    # @param style the style of control to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # </ul>
    # 
    # @see SWT
    # @see Widget#getStyle()
    def initialize(parent, style)
      initialize__ctab_item(parent, style, parent.get_item_count)
    end
    
    typesig { [CTabFolder, ::Java::Int, ::Java::Int] }
    # Constructs a new instance of this class given its parent
    # (which must be a <code>CTabFolder</code>), a style value
    # describing its behavior and appearance, and the index
    # at which to place it in the items maintained by its parent.
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
    # @param parent a CTabFolder which will be the parent of the new instance (cannot be null)
    # @param style the style of control to construct
    # @param index the zero-relative index to store the receiver in its parent
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the parent (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # </ul>
    # 
    # @see SWT
    # @see Widget#getStyle()
    def initialize(parent, style, index)
      @parent = nil
      @x = 0
      @y = 0
      @width = 0
      @height = 0
      @control = nil
      @tool_tip_text = nil
      @shortened_text = nil
      @shortened_text_width = 0
      @font = nil
      @disabled_image = nil
      @close_rect = nil
      @close_image_state = 0
      @show_close = false
      @showing = false
      super(parent, style)
      @height = 0
      @close_rect = Rectangle.new(0, 0, 0, 0)
      @close_image_state = CTabFolder::NONE
      @show_close = false
      @showing = false
      @show_close = !((style & SWT::CLOSE)).equal?(0)
      parent.create_item(self, index)
    end
    
    typesig { [] }
    # Return whether to use ellipses or just truncate labels
    def use_ellipses
      return @parent.attr_simple
    end
    
    typesig { [SwtGC, String, ::Java::Int] }
    def shorten_text(gc, text, width)
      return use_ellipses ? shorten_text(gc, text, width, ELLIPSIS) : shorten_text(gc, text, width, "") # $NON-NLS-1$
    end
    
    typesig { [SwtGC, String, ::Java::Int, String] }
    def shorten_text(gc, text, width, ellipses)
      if (gc.text_extent(text, FLAGS).attr_x <= width)
        return text
      end
      ellipse_width = gc.text_extent(ellipses, FLAGS).attr_x
      length_ = text.length
      layout = TextLayout.new(get_display)
      layout.set_text(text)
      end_ = layout.get_previous_offset(length_, SWT::MOVEMENT_CLUSTER)
      while (end_ > 0)
        text = RJava.cast_to_string(text.substring(0, end_))
        l = gc.text_extent(text, FLAGS).attr_x
        if (l + ellipse_width <= width)
          break
        end
        end_ = layout.get_previous_offset(end_, SWT::MOVEMENT_CLUSTER)
      end
      layout.dispose
      return (end_).equal?(0) ? text.substring(0, 1) : text + ellipses
    end
    
    typesig { [] }
    def dispose
      if (is_disposed)
        return
      end
      # if (!isValidThread ()) error (SWT.ERROR_THREAD_INVALID_ACCESS);
      @parent.destroy_item(self)
      super
      @parent = nil
      @control = nil
      @tool_tip_text = RJava.cast_to_string(nil)
      @shortened_text = RJava.cast_to_string(nil)
      @font = nil
    end
    
    typesig { [SwtGC] }
    def draw_close(gc)
      if ((@close_rect.attr_width).equal?(0) || (@close_rect.attr_height).equal?(0))
        return
      end
      display = get_display
      # draw X 9x9
      indent = Math.max(1, (CTabFolder::BUTTON_SIZE - 9) / 2)
      x = @close_rect.attr_x + indent
      y = @close_rect.attr_y + indent
      y += @parent.attr_on_bottom ? -1 : 1
      close_border = display.get_system_color(CTabFolder::BUTTON_BORDER)
      case (@close_image_state)
      when CTabFolder::NORMAL
        shape = Array.typed(::Java::Int).new([x, y, x + 2, y, x + 4, y + 2, x + 5, y + 2, x + 7, y, x + 9, y, x + 9, y + 2, x + 7, y + 4, x + 7, y + 5, x + 9, y + 7, x + 9, y + 9, x + 7, y + 9, x + 5, y + 7, x + 4, y + 7, x + 2, y + 9, x, y + 9, x, y + 7, x + 2, y + 5, x + 2, y + 4, x, y + 2])
        gc.set_background(display.get_system_color(CTabFolder::BUTTON_FILL))
        gc.fill_polygon(shape)
        gc.set_foreground(close_border)
        gc.draw_polygon(shape)
      when CTabFolder::HOT
        shape = Array.typed(::Java::Int).new([x, y, x + 2, y, x + 4, y + 2, x + 5, y + 2, x + 7, y, x + 9, y, x + 9, y + 2, x + 7, y + 4, x + 7, y + 5, x + 9, y + 7, x + 9, y + 9, x + 7, y + 9, x + 5, y + 7, x + 4, y + 7, x + 2, y + 9, x, y + 9, x, y + 7, x + 2, y + 5, x + 2, y + 4, x, y + 2])
        gc.set_background(@parent.get_fill_color)
        gc.fill_polygon(shape)
        gc.set_foreground(close_border)
        gc.draw_polygon(shape)
      when CTabFolder::SELECTED
        shape = Array.typed(::Java::Int).new([x + 1, y + 1, x + 3, y + 1, x + 5, y + 3, x + 6, y + 3, x + 8, y + 1, x + 10, y + 1, x + 10, y + 3, x + 8, y + 5, x + 8, y + 6, x + 10, y + 8, x + 10, y + 10, x + 8, y + 10, x + 6, y + 8, x + 5, y + 8, x + 3, y + 10, x + 1, y + 10, x + 1, y + 8, x + 3, y + 6, x + 3, y + 5, x + 1, y + 3])
        gc.set_background(@parent.get_fill_color)
        gc.fill_polygon(shape)
        gc.set_foreground(close_border)
        gc.draw_polygon(shape)
      when CTabFolder::NONE
        shape = Array.typed(::Java::Int).new([x, y, x + 10, y, x + 10, y + 10, x, y + 10])
        if (!(@parent.attr_gradient_colors).nil? && !@parent.attr_gradient_vertical)
          @parent.draw_background(gc, shape, false)
        else
          default_background = @parent.get_background
          colors = @parent.attr_gradient_colors
          percents = @parent.attr_gradient_percents
          vertical = @parent.attr_gradient_vertical
          @parent.draw_background(gc, shape, x, y, 10, 10, default_background, nil, colors, percents, vertical)
        end
      end
    end
    
    typesig { [SwtGC] }
    def draw_selected(gc)
      size = @parent.get_size
      right_edge = Math.min(@x + @width, @parent.get_right_item_edge)
      # Draw selection border across all tabs
      xx = @parent.attr_border_left
      yy = @parent.attr_on_bottom ? size.attr_y - @parent.attr_border_bottom - @parent.attr_tab_height - @parent.attr_highlight_header : @parent.attr_border_top + @parent.attr_tab_height + 1
      ww = size.attr_x - @parent.attr_border_left - @parent.attr_border_right
      hh = @parent.attr_highlight_header - 1
      shape = Array.typed(::Java::Int).new([xx, yy, xx + ww, yy, xx + ww, yy + hh, xx, yy + hh])
      if (!(@parent.attr_selection_gradient_colors).nil? && !@parent.attr_selection_gradient_vertical)
        @parent.draw_background(gc, shape, true)
      else
        gc.set_background(@parent.attr_selection_background)
        gc.fill_rectangle(xx, yy, ww, hh)
      end
      if (@parent.attr_single)
        if (!@showing)
          return
        end
      else
        # if selected tab scrolled out of view or partially out of view
        # just draw bottom line
        if (!@showing)
          x1 = Math.max(0, @parent.attr_border_left - 1)
          y1 = (@parent.attr_on_bottom) ? @y - 1 : @y + @height
          x2 = size.attr_x - @parent.attr_border_right
          gc.set_foreground(get_display.get_system_color(CTabFolder::BORDER1_COLOR))
          gc.draw_line(x1, y1, x2, y1)
          return
        end
        # draw selected tab background and outline
        shape = nil
        if (@parent.attr_on_bottom)
          left = @parent.attr_simple ? CTabFolder::SIMPLE_BOTTOM_LEFT_CORNER : CTabFolder::BOTTOM_LEFT_CORNER
          right = @parent.attr_simple ? CTabFolder::SIMPLE_BOTTOM_RIGHT_CORNER : @parent.attr_curve
          if ((@parent.attr_border_left).equal?(0) && (@parent.index_of(self)).equal?(@parent.attr_first_index))
            left = Array.typed(::Java::Int).new([@x, @y + @height])
          end
          shape = Array.typed(::Java::Int).new(left.attr_length + right.attr_length + 8) { 0 }
          index = 0
          shape[((index += 1) - 1)] = @x # first point repeated here because below we reuse shape to draw outline
          shape[((index += 1) - 1)] = @y - 1
          shape[((index += 1) - 1)] = @x
          shape[((index += 1) - 1)] = @y - 1
          i = 0
          while i < left.attr_length / 2
            shape[((index += 1) - 1)] = @x + left[2 * i]
            shape[((index += 1) - 1)] = @y + @height + left[2 * i + 1] - 1
            i += 1
          end
          i_ = 0
          while i_ < right.attr_length / 2
            shape[((index += 1) - 1)] = @parent.attr_simple ? right_edge - 1 + right[2 * i_] : right_edge - @parent.attr_curve_indent + right[2 * i_]
            shape[((index += 1) - 1)] = @parent.attr_simple ? @y + @height + right[2 * i_ + 1] - 1 : @y + right[2 * i_ + 1] - 2
            i_ += 1
          end
          shape[((index += 1) - 1)] = @parent.attr_simple ? right_edge - 1 : right_edge + @parent.attr_curve_width - @parent.attr_curve_indent
          shape[((index += 1) - 1)] = @y - 1
          shape[((index += 1) - 1)] = @parent.attr_simple ? right_edge - 1 : right_edge + @parent.attr_curve_width - @parent.attr_curve_indent
          shape[((index += 1) - 1)] = @y - 1
        else
          left = @parent.attr_simple ? CTabFolder::SIMPLE_TOP_LEFT_CORNER : CTabFolder::TOP_LEFT_CORNER
          right = @parent.attr_simple ? CTabFolder::SIMPLE_TOP_RIGHT_CORNER : @parent.attr_curve
          if ((@parent.attr_border_left).equal?(0) && (@parent.index_of(self)).equal?(@parent.attr_first_index))
            left = Array.typed(::Java::Int).new([@x, @y])
          end
          shape = Array.typed(::Java::Int).new(left.attr_length + right.attr_length + 8) { 0 }
          index = 0
          shape[((index += 1) - 1)] = @x # first point repeated here because below we reuse shape to draw outline
          shape[((index += 1) - 1)] = @y + @height + 1
          shape[((index += 1) - 1)] = @x
          shape[((index += 1) - 1)] = @y + @height + 1
          i = 0
          while i < left.attr_length / 2
            shape[((index += 1) - 1)] = @x + left[2 * i]
            shape[((index += 1) - 1)] = @y + left[2 * i + 1]
            i += 1
          end
          i_ = 0
          while i_ < right.attr_length / 2
            shape[((index += 1) - 1)] = @parent.attr_simple ? right_edge - 1 + right[2 * i_] : right_edge - @parent.attr_curve_indent + right[2 * i_]
            shape[((index += 1) - 1)] = @y + right[2 * i_ + 1]
            i_ += 1
          end
          shape[((index += 1) - 1)] = @parent.attr_simple ? right_edge - 1 : right_edge + @parent.attr_curve_width - @parent.attr_curve_indent
          shape[((index += 1) - 1)] = @y + @height + 1
          shape[((index += 1) - 1)] = @parent.attr_simple ? right_edge - 1 : right_edge + @parent.attr_curve_width - @parent.attr_curve_indent
          shape[((index += 1) - 1)] = @y + @height + 1
        end
        clipping = gc.get_clipping
        bounds = get_bounds
        bounds.attr_height += 1
        if (@parent.attr_on_bottom)
          bounds.attr_y -= 1
        end
        tab_in_paint = clipping.intersects(bounds)
        if (tab_in_paint)
          # fill in tab background
          if (!(@parent.attr_selection_gradient_colors).nil? && !@parent.attr_selection_gradient_vertical)
            @parent.draw_background(gc, shape, true)
          else
            default_background = @parent.attr_selection_background
            image = @parent.attr_selection_bg_image
            colors = @parent.attr_selection_gradient_colors
            percents = @parent.attr_selection_gradient_percents
            vertical = @parent.attr_selection_gradient_vertical
            xx = @x
            yy = @parent.attr_on_bottom ? @y - 1 : @y + 1
            ww = @width
            hh = @height
            if (!@parent.attr_single && !@parent.attr_simple)
              ww += @parent.attr_curve_width - @parent.attr_curve_indent
            end
            @parent.draw_background(gc, shape, xx, yy, ww, hh, default_background, image, colors, percents, vertical)
          end
        end
        # Highlight MUST be drawn before the outline so that outline can cover it in the right spots (start of swoop)
        # otherwise the curve looks jagged
        draw_highlight(gc, right_edge)
        # draw outline
        shape[0] = Math.max(0, @parent.attr_border_left - 1)
        if ((@parent.attr_border_left).equal?(0) && (@parent.index_of(self)).equal?(@parent.attr_first_index))
          shape[1] = @parent.attr_on_bottom ? @y + @height - 1 : @y
          shape[5] = shape[3] = shape[1]
        end
        shape[shape.attr_length - 2] = size.attr_x - @parent.attr_border_right + 1
        i = 0
        while i < shape.attr_length / 2
          if ((shape[2 * i + 1]).equal?(@y + @height + 1))
            shape[2 * i + 1] -= 1
          end
          i += 1
        end
        inside = @parent.attr_selection_background.get_rgb
        if (!(@parent.attr_selection_bg_image).nil? || (!(@parent.attr_selection_gradient_colors).nil? && @parent.attr_selection_gradient_colors.attr_length > 1))
          inside = nil
        end
        outside = @parent.get_background.get_rgb
        if (!(@parent.attr_gradient_colors).nil? && @parent.attr_gradient_colors.attr_length > 1)
          outside = nil
        end
        border_color = get_display.get_system_color(CTabFolder::BORDER1_COLOR)
        @parent.antialias(shape, border_color.get_rgb, inside, outside, gc)
        gc.set_foreground(border_color)
        gc.draw_polyline(shape)
        if (!tab_in_paint)
          return
        end
      end
      # draw Image
      x_draw = @x + LEFT_MARGIN
      if (@parent.attr_single && (@parent.attr_show_close || @show_close))
        x_draw += CTabFolder::BUTTON_SIZE
      end
      image = get_image
      if (!(image).nil?)
        image_bounds = image.get_bounds
        # only draw image if it won't overlap with close button
        max_image_width = right_edge - x_draw - RIGHT_MARGIN
        if (!@parent.attr_single && @close_rect.attr_width > 0)
          max_image_width -= @close_rect.attr_width + INTERNAL_SPACING
        end
        if (image_bounds.attr_width < max_image_width)
          image_x = x_draw
          image_y = @y + (@height - image_bounds.attr_height) / 2
          image_y += @parent.attr_on_bottom ? -1 : 1
          gc.draw_image(image, image_x, image_y)
          x_draw += image_bounds.attr_width + INTERNAL_SPACING
        end
      end
      # draw Text
      text_width = right_edge - x_draw - RIGHT_MARGIN
      if (!@parent.attr_single && @close_rect.attr_width > 0)
        text_width -= @close_rect.attr_width + INTERNAL_SPACING
      end
      if (text_width > 0)
        gc_font = gc.get_font
        gc.set_font((@font).nil? ? @parent.get_font : @font)
        if ((@shortened_text).nil? || !(@shortened_text_width).equal?(text_width))
          @shortened_text = RJava.cast_to_string(shorten_text(gc, get_text, text_width))
          @shortened_text_width = text_width
        end
        extent = gc.text_extent(@shortened_text, FLAGS)
        text_y = @y + (@height - extent.attr_y) / 2
        text_y += @parent.attr_on_bottom ? -1 : 1
        gc.set_foreground(@parent.attr_selection_foreground)
        gc.draw_text(@shortened_text, x_draw, text_y, FLAGS)
        gc.set_font(gc_font)
        # draw a Focus rectangle
        if (@parent.is_focus_control)
          display = get_display
          if (@parent.attr_simple || @parent.attr_single)
            gc.set_background(display.get_system_color(SWT.attr_color_black))
            gc.set_foreground(display.get_system_color(SWT.attr_color_white))
            gc.draw_focus(x_draw - 1, text_y - 1, extent.attr_x + 2, extent.attr_y + 2)
          else
            gc.set_foreground(display.get_system_color(CTabFolder::BUTTON_BORDER))
            gc.draw_line(x_draw, text_y + extent.attr_y + 1, x_draw + extent.attr_x + 1, text_y + extent.attr_y + 1)
          end
        end
      end
      if (@parent.attr_show_close || @show_close)
        draw_close(gc)
      end
    end
    
    typesig { [SwtGC, ::Java::Int] }
    # Draw a highlight effect along the left, top, and right edges of the tab.
    # Only for curved tabs, on top.
    # Do not draw if insufficient colors.
    def draw_highlight(gc, right_edge)
      # only draw for curvy tabs and only draw for top tabs
      if (@parent.attr_simple || @parent.attr_on_bottom)
        return
      end
      if ((@parent.attr_selection_highlight_gradient_begin).nil?)
        return
      end
      gradients = @parent.attr_selection_highlight_gradient_colors_cache
      if ((gradients).nil?)
        return
      end
      gradients_size = gradients.attr_length
      if ((gradients_size).equal?(0))
        return
      end # shouldn't happen but just to be tidy
      gc.set_foreground(gradients[0])
      # draw top horizontal line
      # rely on fact that first pair is top/right of curve
      gc.draw_line(CTabFolder::TOP_LEFT_CORNER_HILITE[0] + @x + 1, 1 + @y, right_edge - @parent.attr_curve_indent, 1 + @y)
      left_highlight_curve = CTabFolder::TOP_LEFT_CORNER_HILITE
      d = @parent.attr_tab_height - @parent.attr_top_curve_highlight_end.attr_length / 2
      last_x = 0
      last_y = 0
      last_color_index = 0
      # draw upper left curve highlight
      i = 0
      while i < left_highlight_curve.attr_length / 2
        raw_x = left_highlight_curve[i * 2]
        raw_y = left_highlight_curve[i * 2 + 1]
        last_x = raw_x + @x
        last_y = raw_y + @y
        last_color_index = raw_y - 1
        gc.set_foreground(gradients[last_color_index])
        gc.draw_point(last_x, last_y)
        i += 1
      end
      # draw left vertical line highlight
      i_ = last_color_index
      while i_ < gradients_size
        gc.set_foreground(gradients[i_])
        gc.draw_point(last_x, 1 + ((last_y += 1) - 1))
        i_ += 1
      end
      right_edge_offset = right_edge - @parent.attr_curve_indent
      # draw right swoop highlight up to diagonal portion
      i__ = 0
      while i__ < @parent.attr_top_curve_highlight_start.attr_length / 2
        raw_x = @parent.attr_top_curve_highlight_start[i__ * 2]
        raw_y = @parent.attr_top_curve_highlight_start[i__ * 2 + 1]
        last_x = raw_x + right_edge_offset
        last_y = raw_y + @y
        last_color_index = raw_y - 1
        if (last_color_index >= gradients_size)
          break
        end # can happen if tabs are unusually short and cut off the curve
        gc.set_foreground(gradients[last_color_index])
        gc.draw_point(last_x, last_y)
        i__ += 1
      end
      # draw right diagonal line highlight
      i___ = last_color_index
      while i___ < last_color_index + d
        if (i___ >= gradients_size)
          break
        end # can happen if tabs are unusually short and cut off the curve
        gc.set_foreground(gradients[i___])
        gc.draw_point(1 + ((last_x += 1) - 1), 1 + ((last_y += 1) - 1))
        i___ += 1
      end
      # draw right swoop highlight from diagonal portion to end
      i____ = 0
      while i____ < @parent.attr_top_curve_highlight_end.attr_length / 2
        raw_x = @parent.attr_top_curve_highlight_end[i____ * 2] # d is already encoded in this value
        raw_y = @parent.attr_top_curve_highlight_end[i____ * 2 + 1] # d already encoded
        last_x = raw_x + right_edge_offset
        last_y = raw_y + @y
        last_color_index = raw_y - 1
        if (last_color_index >= gradients_size)
          break
        end # can happen if tabs are unusually short and cut off the curve
        gc.set_foreground(gradients[last_color_index])
        gc.draw_point(last_x, last_y)
        i____ += 1
      end
    end
    
    typesig { [SwtGC] }
    # Draw the unselected border for the receiver on the right.
    # 
    # @param gc
    def draw_right_unselected_border(gc)
      shape = nil
      start_x = @x + @width - 1
      if (@parent.attr_on_bottom)
        right = @parent.attr_simple ? CTabFolder::SIMPLE_UNSELECTED_INNER_CORNER : CTabFolder::BOTTOM_RIGHT_CORNER
        shape = Array.typed(::Java::Int).new(right.attr_length + 2) { 0 }
        index = 0
        i = 0
        while i < right.attr_length / 2
          shape[((index += 1) - 1)] = start_x + right[2 * i]
          shape[((index += 1) - 1)] = @y + @height + right[2 * i + 1] - 1
          i += 1
        end
        shape[((index += 1) - 1)] = start_x
        shape[((index += 1) - 1)] = @y - 1
      else
        right = @parent.attr_simple ? CTabFolder::SIMPLE_UNSELECTED_INNER_CORNER : CTabFolder::TOP_RIGHT_CORNER
        shape = Array.typed(::Java::Int).new(right.attr_length + 2) { 0 }
        index = 0
        i = 0
        while i < right.attr_length / 2
          shape[((index += 1) - 1)] = start_x + right[2 * i]
          shape[((index += 1) - 1)] = @y + right[2 * i + 1]
          i += 1
        end
        shape[((index += 1) - 1)] = start_x
        shape[((index += 1) - 1)] = @y + @height
      end
      draw_border(gc, shape)
    end
    
    typesig { [SwtGC, Array.typed(::Java::Int)] }
    # Draw the border of the tab
    # 
    # @param gc
    # @param shape
    def draw_border(gc, shape)
      gc.set_foreground(get_display.get_system_color(CTabFolder::BORDER1_COLOR))
      gc.draw_polyline(shape)
    end
    
    typesig { [SwtGC] }
    # Draw the unselected border for the receiver on the left.
    # 
    # @param gc
    def draw_left_unselected_border(gc)
      shape = nil
      if (@parent.attr_on_bottom)
        left = @parent.attr_simple ? CTabFolder::SIMPLE_UNSELECTED_INNER_CORNER : CTabFolder::BOTTOM_LEFT_CORNER
        shape = Array.typed(::Java::Int).new(left.attr_length + 2) { 0 }
        index = 0
        shape[((index += 1) - 1)] = @x
        shape[((index += 1) - 1)] = @y - 1
        i = 0
        while i < left.attr_length / 2
          shape[((index += 1) - 1)] = @x + left[2 * i]
          shape[((index += 1) - 1)] = @y + @height + left[2 * i + 1] - 1
          i += 1
        end
      else
        left = @parent.attr_simple ? CTabFolder::SIMPLE_UNSELECTED_INNER_CORNER : CTabFolder::TOP_LEFT_CORNER
        shape = Array.typed(::Java::Int).new(left.attr_length + 2) { 0 }
        index = 0
        shape[((index += 1) - 1)] = @x
        shape[((index += 1) - 1)] = @y + @height
        i = 0
        while i < left.attr_length / 2
          shape[((index += 1) - 1)] = @x + left[2 * i]
          shape[((index += 1) - 1)] = @y + left[2 * i + 1]
          i += 1
        end
      end
      draw_border(gc, shape)
    end
    
    typesig { [SwtGC] }
    def draw_unselected(gc)
      # Do not draw partial items
      if (!@showing)
        return
      end
      clipping = gc.get_clipping
      bounds = get_bounds
      if (!clipping.intersects(bounds))
        return
      end
      # draw border
      index = @parent.index_of(self)
      if (index > 0 && index < @parent.attr_selected_index)
        draw_left_unselected_border(gc)
      end
      # If it is the last one then draw a line
      if (index > @parent.attr_selected_index)
        draw_right_unselected_border(gc)
      end
      # draw Image
      x_draw = @x + LEFT_MARGIN
      image = get_image
      if (!(image).nil? && @parent.attr_show_unselected_image)
        image_bounds = image.get_bounds
        # only draw image if it won't overlap with close button
        max_image_width = @x + @width - x_draw - RIGHT_MARGIN
        if (@parent.attr_show_unselected_close && (@parent.attr_show_close || @show_close))
          max_image_width -= @close_rect.attr_width + INTERNAL_SPACING
        end
        if (image_bounds.attr_width < max_image_width)
          image_x = x_draw
          image_height = image_bounds.attr_height
          image_y = @y + (@height - image_height) / 2
          image_y += @parent.attr_on_bottom ? -1 : 1
          image_width = image_bounds.attr_width * image_height / image_bounds.attr_height
          gc.draw_image(image, image_bounds.attr_x, image_bounds.attr_y, image_bounds.attr_width, image_bounds.attr_height, image_x, image_y, image_width, image_height)
          x_draw += image_width + INTERNAL_SPACING
        end
      end
      # draw Text
      text_width = @x + @width - x_draw - RIGHT_MARGIN
      if (@parent.attr_show_unselected_close && (@parent.attr_show_close || @show_close))
        text_width -= @close_rect.attr_width + INTERNAL_SPACING
      end
      if (text_width > 0)
        gc_font = gc.get_font
        gc.set_font((@font).nil? ? @parent.get_font : @font)
        if ((@shortened_text).nil? || !(@shortened_text_width).equal?(text_width))
          @shortened_text = RJava.cast_to_string(shorten_text(gc, get_text, text_width))
          @shortened_text_width = text_width
        end
        extent = gc.text_extent(@shortened_text, FLAGS)
        text_y = @y + (@height - extent.attr_y) / 2
        text_y += @parent.attr_on_bottom ? -1 : 1
        gc.set_foreground(@parent.get_foreground)
        gc.draw_text(@shortened_text, x_draw, text_y, FLAGS)
        gc.set_font(gc_font)
      end
      # draw close
      if (@parent.attr_show_unselected_close && (@parent.attr_show_close || @show_close))
        draw_close(gc)
      end
    end
    
    typesig { [] }
    # Returns a rectangle describing the receiver's size and location
    # relative to its parent.
    # 
    # @return the receiver's bounding column rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_bounds
      # checkWidget();
      w = @width
      if (!@parent.attr_simple && !@parent.attr_single && (@parent.index_of(self)).equal?(@parent.attr_selected_index))
        w += @parent.attr_curve_width - @parent.attr_curve_indent
      end
      return Rectangle.new(@x, @y, w, @height)
    end
    
    typesig { [] }
    # Gets the control that is displayed in the content area of the tab item.
    # 
    # @return the control
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_control
      check_widget
      return @control
    end
    
    typesig { [] }
    # Get the image displayed in the tab if the tab is disabled.
    # 
    # @return the disabled image or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @deprecated the disabled image is not used
    def get_disabled_image
      check_widget
      return @disabled_image
    end
    
    typesig { [] }
    # Returns the font that the receiver will use to paint textual information.
    # 
    # @return the receiver's font
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def get_font
      check_widget
      if (!(@font).nil?)
        return @font
      end
      return @parent.get_font
    end
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>CTabFolder</code>.
    # 
    # @return the receiver's parent
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_parent
      # checkWidget();
      return @parent
    end
    
    typesig { [] }
    # Returns <code>true</code> to indicate that the receiver's close button should be shown.
    # Otherwise return <code>false</code>. The initial value is defined by the style (SWT.CLOSE)
    # that was used to create the receiver.
    # 
    # @return <code>true</code> if the close button should be shown
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def get_show_close
      check_widget
      return @show_close
    end
    
    typesig { [] }
    # Returns the receiver's tool tip text, or null if it has
    # not been set.
    # 
    # @return the receiver's tool tip text
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_tool_tip_text
      check_widget
      if ((@tool_tip_text).nil? && !(@shortened_text).nil?)
        text = get_text
        if (!(@shortened_text == text))
          return text
        end
      end
      return @tool_tip_text
    end
    
    typesig { [] }
    # Returns <code>true</code> if the item will be rendered in the visible area of the CTabFolder. Returns false otherwise.
    # 
    # @return <code>true</code> if the item will be rendered in the visible area of the CTabFolder. Returns false otherwise.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def is_showing
      check_widget
      return @showing
    end
    
    typesig { [SwtGC, ::Java::Boolean] }
    def on_paint(gc, is_selected)
      if ((@width).equal?(0) || (@height).equal?(0))
        return
      end
      if (is_selected)
        draw_selected(gc)
      else
        draw_unselected(gc)
      end
    end
    
    typesig { [SwtGC] }
    def preferred_height(gc)
      image = get_image
      h = ((image).nil?) ? 0 : image.get_bounds.attr_height
      text = get_text
      if ((@font).nil?)
        h = Math.max(h, gc.text_extent(text, FLAGS).attr_y)
      else
        gc_font = gc.get_font
        gc.set_font(@font)
        h = Math.max(h, gc.text_extent(text, FLAGS).attr_y)
        gc.set_font(gc_font)
      end
      return h + TOP_MARGIN + BOTTOM_MARGIN
    end
    
    typesig { [SwtGC, ::Java::Boolean, ::Java::Boolean] }
    def preferred_width(gc, is_selected, minimum)
      # NOTE: preferred width does not include the "dead space" caused
      # by the curve.
      if (is_disposed)
        return 0
      end
      w = 0
      image = get_image
      if (!(image).nil? && (is_selected || @parent.attr_show_unselected_image))
        w += image.get_bounds.attr_width
      end
      text = nil
      if (minimum)
        min_chars = @parent.attr_min_chars
        text = RJava.cast_to_string((min_chars).equal?(0) ? nil : get_text)
        if (!(text).nil? && text.length > min_chars)
          if (use_ellipses)
            end_ = min_chars < ELLIPSIS.length + 1 ? min_chars : min_chars - ELLIPSIS.length
            text = RJava.cast_to_string(text.substring(0, end_))
            if (min_chars > ELLIPSIS.length + 1)
              text += ELLIPSIS
            end
          else
            end_ = min_chars
            text = RJava.cast_to_string(text.substring(0, end_))
          end
        end
      else
        text = RJava.cast_to_string(get_text)
      end
      if (!(text).nil?)
        if (w > 0)
          w += INTERNAL_SPACING
        end
        if ((@font).nil?)
          w += gc.text_extent(text, FLAGS).attr_x
        else
          gc_font = gc.get_font
          gc.set_font(@font)
          w += gc.text_extent(text, FLAGS).attr_x
          gc.set_font(gc_font)
        end
      end
      if (@parent.attr_show_close || @show_close)
        if (is_selected || @parent.attr_show_unselected_close)
          if (w > 0)
            w += INTERNAL_SPACING
          end
          w += CTabFolder::BUTTON_SIZE
        end
      end
      return w + LEFT_MARGIN + RIGHT_MARGIN
    end
    
    typesig { [Control] }
    # Sets the control that is used to fill the client area of
    # the tab folder when the user selects the tab item.
    # 
    # @param control the new control (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the control has been disposed</li>
    # <li>ERROR_INVALID_PARENT - if the control is not in the same widget tree</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_control(control)
      check_widget
      if (!(control).nil?)
        if (control.is_disposed)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (!(control.get_parent).equal?(@parent))
          SWT.error(SWT::ERROR_INVALID_PARENT)
        end
      end
      if (!(@control).nil? && !@control.is_disposed)
        @control.set_visible(false)
      end
      @control = control
      if (!(@control).nil?)
        index = @parent.index_of(self)
        if ((index).equal?(@parent.get_selection_index))
          @control.set_bounds(@parent.get_client_area)
          @control.set_visible(true)
        else
          @control.set_visible(false)
        end
      end
    end
    
    typesig { [Image] }
    # Sets the image that is displayed if the tab item is disabled.
    # Null will clear the image.
    # 
    # @param image the image to be displayed when the item is disabled or null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @deprecated This image is not used
    def set_disabled_image(image)
      check_widget
      if (!(image).nil? && image.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @disabled_image = image
    end
    
    typesig { [Font] }
    # Sets the font that the receiver will use to paint textual information
    # for this item to the font specified by the argument, or to the default font
    # for that kind of control if the argument is null.
    # 
    # @param font the new font (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.0
    def set_font(font)
      check_widget
      if (!(font).nil? && font.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((font).nil? && (@font).nil?)
        return
      end
      if (!(font).nil? && (font == @font))
        return
      end
      @font = font
      if (!@parent.update_tab_height(false))
        @parent.update_items
        @parent.redraw_tabs
      end
    end
    
    typesig { [Image] }
    def set_image(image)
      check_widget
      if (!(image).nil? && image.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      old_image = get_image
      if ((image).nil? && (old_image).nil?)
        return
      end
      if (!(image).nil? && (image == old_image))
        return
      end
      super(image)
      if (!@parent.update_tab_height(false))
        # If image is the same size as before,
        # redraw only the image
        if (!(old_image).nil? && !(image).nil?)
          old_bounds = old_image.get_bounds
          bounds = image.get_bounds
          if ((bounds.attr_width).equal?(old_bounds.attr_width) && (bounds.attr_height).equal?(old_bounds.attr_height))
            if (@showing)
              selected = (@parent.index_of(self)).equal?(@parent.attr_selected_index)
              if (selected || @parent.attr_show_unselected_image)
                image_x = @x + LEFT_MARGIN
                max_image_width = 0
                if (selected)
                  if (@parent.attr_single && (@parent.attr_show_close || @show_close))
                    image_x += CTabFolder::BUTTON_SIZE
                  end
                  right_edge = Math.min(@x + @width, @parent.get_right_item_edge)
                  max_image_width = right_edge - image_x - RIGHT_MARGIN
                  if (!@parent.attr_single && @close_rect.attr_width > 0)
                    max_image_width -= @close_rect.attr_width + INTERNAL_SPACING
                  end
                else
                  max_image_width = @x + @width - image_x - RIGHT_MARGIN
                  if (@parent.attr_show_unselected_close && (@parent.attr_show_close || @show_close))
                    max_image_width -= @close_rect.attr_width + INTERNAL_SPACING
                  end
                end
                if (bounds.attr_width < max_image_width)
                  image_y = @y + (@height - bounds.attr_height) / 2 + (@parent.attr_on_bottom ? -1 : 1)
                  @parent.redraw(image_x, image_y, bounds.attr_width, bounds.attr_height, false)
                end
              end
            end
            return
          end
        end
        @parent.update_items
        @parent.redraw_tabs
      end
    end
    
    typesig { [::Java::Boolean] }
    # Sets to <code>true</code> to indicate that the receiver's close button should be shown.
    # If the parent (CTabFolder) was created with SWT.CLOSE style, changing this value has
    # no effect.
    # 
    # @param close the new state of the close button
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def set_show_close(close)
      check_widget
      if ((@show_close).equal?(close))
        return
      end
      @show_close = close
      @parent.update_items
      @parent.redraw_tabs
    end
    
    typesig { [String] }
    def set_text(string)
      check_widget
      if ((string).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((string == get_text))
        return
      end
      super(string)
      @shortened_text = RJava.cast_to_string(nil)
      @shortened_text_width = 0
      if (!@parent.update_tab_height(false))
        @parent.update_items
        @parent.redraw_tabs
      end
    end
    
    typesig { [String] }
    # Sets the receiver's tool tip text to the argument, which
    # may be null indicating that the default tool tip for the
    # control will be shown. For a control that has a default
    # tool tip, such as the Tree control on Windows, setting
    # the tool tip text to an empty string replaces the default,
    # causing no tool tip text to be shown.
    # 
    # @param string the new tool tip text (or null)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_tool_tip_text(string)
      check_widget
      @tool_tip_text = string
    end
    
    private
    alias_method :initialize__ctab_item, :initialize
  end
  
end
