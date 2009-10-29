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
  module ExpandItemImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class represent a selectable user interface object
  # that represents a expandable item in a expand bar.
  # <p>
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>(none)</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # </p><p>
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # </p>
  # 
  # @see ExpandBar
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 3.2
  # @noextend This class is not intended to be subclassed by clients.
  class ExpandItem < ExpandItemImports.const_get :Item
    include_class_members ExpandItemImports
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :control
    alias_method :attr_control, :control
    undef_method :control
    alias_method :attr_control=, :control=
    undef_method :control=
    
    attr_accessor :expanded
    alias_method :attr_expanded, :expanded
    undef_method :expanded
    alias_method :attr_expanded=, :expanded=
    undef_method :expanded=
    
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
    
    attr_accessor :image_height
    alias_method :attr_image_height, :image_height
    undef_method :image_height
    alias_method :attr_image_height=, :image_height=
    undef_method :image_height=
    
    attr_accessor :image_width
    alias_method :attr_image_width, :image_width
    undef_method :image_width
    alias_method :attr_image_width=, :image_width=
    undef_method :image_width=
    
    class_module.module_eval {
      const_set_lazy(:TEXT_INSET) { 6 }
      const_attr_reader  :TEXT_INSET
      
      const_set_lazy(:BORDER) { 1 }
      const_attr_reader  :BORDER
      
      const_set_lazy(:CHEVRON_SIZE) { 24 }
      const_attr_reader  :CHEVRON_SIZE
    }
    
    typesig { [ExpandBar, ::Java::Int] }
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
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      initialize__expand_item(parent, style, check_null(parent).get_item_count)
    end
    
    typesig { [ExpandBar, ::Java::Int, ::Java::Int] }
    # Constructs a new instance of this class given its parent, a
    # style value describing its behavior and appearance, and the index
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
    # @param parent a composite control which will be the parent of the new instance (cannot be null)
    # @param style the style of control to construct
    # @param index the zero-relative index to store the receiver in its parent
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # <li>ERROR_INVALID_RANGE - if the index is not between 0 and the number of elements in the parent (inclusive)</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style, index)
      @parent = nil
      @control = nil
      @expanded = false
      @x = 0
      @y = 0
      @width = 0
      @height = 0
      @image_height = 0
      @image_width = 0
      super(parent, style)
      @parent = parent
      parent.create_item(self, style, index)
    end
    
    class_module.module_eval {
      typesig { [ExpandBar] }
      def check_null(control)
        if ((control).nil?)
          SWT.error(SWT::ERROR_NULL_ARGUMENT)
        end
        return control
      end
    }
    
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
    end
    
    typesig { [SwtGC, ::Java::Int, ::Java::Int] }
    def draw_chevron(gc, x, y)
      polyline1 = nil
      polyline2 = nil
      if (@expanded)
        px = x + 4 + 5
        py = y + 4 + 7
        polyline1 = Array.typed(::Java::Int).new([px, py, px + 1, py, px + 1, py - 1, px + 2, py - 1, px + 2, py - 2, px + 3, py - 2, px + 3, py - 3, px + 3, py - 2, px + 4, py - 2, px + 4, py - 1, px + 5, py - 1, px + 5, py, px + 6, py])
        py += 4
        polyline2 = Array.typed(::Java::Int).new([px, py, px + 1, py, px + 1, py - 1, px + 2, py - 1, px + 2, py - 2, px + 3, py - 2, px + 3, py - 3, px + 3, py - 2, px + 4, py - 2, px + 4, py - 1, px + 5, py - 1, px + 5, py, px + 6, py])
      else
        px = x + 4 + 5
        py = y + 4 + 4
        polyline1 = Array.typed(::Java::Int).new([px, py, px + 1, py, px + 1, py + 1, px + 2, py + 1, px + 2, py + 2, px + 3, py + 2, px + 3, py + 3, px + 3, py + 2, px + 4, py + 2, px + 4, py + 1, px + 5, py + 1, px + 5, py, px + 6, py])
        py += 4
        polyline2 = Array.typed(::Java::Int).new([px, py, px + 1, py, px + 1, py + 1, px + 2, py + 1, px + 2, py + 2, px + 3, py + 2, px + 3, py + 3, px + 3, py + 2, px + 4, py + 2, px + 4, py + 1, px + 5, py + 1, px + 5, py, px + 6, py])
      end
      gc.set_foreground(self.attr_display.get_system_color(SWT::COLOR_TITLE_FOREGROUND))
      gc.draw_polyline(polyline1)
      gc.draw_polyline(polyline2)
    end
    
    typesig { [SwtGC, ::Java::Boolean] }
    def draw_item(gc, draw_focus)
      header_height = @parent.get_band_height
      display = get_display
      gc.set_foreground(display.get_system_color(SWT::COLOR_TITLE_BACKGROUND))
      gc.set_background(display.get_system_color(SWT::COLOR_TITLE_BACKGROUND_GRADIENT))
      gc.fill_gradient_rectangle(@x, @y, @width, header_height, true)
      if (@expanded)
        gc.set_foreground(display.get_system_color(SWT::COLOR_TITLE_BACKGROUND_GRADIENT))
        gc.draw_line(@x, @y + header_height, @x, @y + header_height + @height - 1)
        gc.draw_line(@x, @y + header_height + @height - 1, @x + @width - 1, @y + header_height + @height - 1)
        gc.draw_line(@x + @width - 1, @y + header_height + @height - 1, @x + @width - 1, @y + header_height)
      end
      draw_x = @x
      if (!(self.attr_image).nil?)
        draw_x += ExpandItem::TEXT_INSET
        if (@image_height > header_height)
          gc.draw_image(self.attr_image, draw_x, @y + header_height - @image_height)
        else
          gc.draw_image(self.attr_image, draw_x, @y + (header_height - @image_height) / 2)
        end
        draw_x += @image_width
      end
      if (self.attr_text.length > 0)
        draw_x += ExpandItem::TEXT_INSET
        size = gc.string_extent(self.attr_text)
        gc.set_foreground(@parent.get_foreground)
        gc.draw_string(self.attr_text, draw_x, @y + (header_height - size.attr_y) / 2, true)
      end
      chevron_size = ExpandItem::CHEVRON_SIZE
      draw_chevron(gc, @x + @width - chevron_size, @y + (header_height - chevron_size) / 2)
      if (draw_focus)
        gc.draw_focus(@x + 1, @y + 1, @width - 2, header_height - 2)
      end
    end
    
    typesig { [] }
    # Returns the control that is shown when the item is expanded.
    # If no control has been set, return <code>null</code>.
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
    # Returns <code>true</code> if the receiver is expanded,
    # and false otherwise.
    # 
    # @return the expanded state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_expanded
      check_widget
      return @expanded
    end
    
    typesig { [] }
    # Returns the height of the receiver's header
    # 
    # @return the height of the header
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_header_height
      check_widget
      return Math.max(@parent.get_band_height, @image_height)
    end
    
    typesig { [] }
    # Gets the height of the receiver.
    # 
    # @return the height
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_height
      check_widget
      return @height
    end
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>ExpandBar</code>.
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
    
    typesig { [SwtGC] }
    def get_preferred_width(gc)
      width = ExpandItem::TEXT_INSET * 2 + ExpandItem::CHEVRON_SIZE
      if (!(self.attr_image).nil?)
        width += ExpandItem::TEXT_INSET + @image_width
      end
      if (self.attr_text.length > 0)
        width += gc.string_extent(self.attr_text).attr_x
      end
      return width
    end
    
    typesig { [] }
    def redraw
      header_height = @parent.get_band_height
      if (@image_height > header_height)
        @parent.redraw(@x + ExpandItem::TEXT_INSET, @y + header_height - @image_height, @image_width, @image_height, false)
      end
      @parent.redraw(@x, @y, @width, header_height + @height, false)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, size)
      redraw
      header_height = @parent.get_band_height
      if (move)
        if (@image_height > header_height)
          y += (@image_height - header_height)
        end
        @x = x
        @y = y
        redraw
      end
      if (size)
        @width = width
        @height = height
        redraw
      end
      if (!(@control).nil? && !@control.is_disposed)
        if (move)
          @control.set_location(x + BORDER, y + header_height)
        end
        if (size)
          @control.set_size(Math.max(0, width - 2 * BORDER), Math.max(0, height - BORDER))
        end
      end
    end
    
    typesig { [Control] }
    # Sets the control that is shown when the item is expanded.
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
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (!(control.attr_parent).equal?(@parent))
          error(SWT::ERROR_INVALID_PARENT)
        end
      end
      @control = control
      if (!(control).nil?)
        control.set_visible(@expanded)
        header_height = @parent.get_band_height
        control.set_bounds(@x + BORDER, @y + header_height, Math.max(0, @width - 2 * BORDER), Math.max(0, @height - BORDER))
      end
    end
    
    typesig { [::Java::Boolean] }
    # Sets the expanded state of the receiver.
    # 
    # @param expanded the new expanded state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_expanded(expanded)
      check_widget
      @expanded = expanded
      @parent.show_item(self)
    end
    
    typesig { [Image] }
    def set_image(image)
      super(image)
      old_image_height = @image_height
      if (!(image).nil?)
        bounds = image.get_bounds
        @image_height = bounds.attr_height
        @image_width = bounds.attr_width
      else
        @image_height = @image_width = 0
      end
      if (!(old_image_height).equal?(@image_height))
        @parent.layout_items(@parent.index_of(self), true)
      else
        redraw
      end
    end
    
    typesig { [::Java::Int] }
    # Sets the height of the receiver. This is height of the item when it is expanded,
    # excluding the height of the header.
    # 
    # @param height the new height
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_height(height)
      check_widget
      if (height < 0)
        return
      end
      set_bounds(0, 0, @width, height, false, true)
      if (@expanded)
        @parent.layout_items(@parent.index_of(self) + 1, true)
      end
    end
    
    typesig { [String] }
    def set_text(string)
      super(string)
      redraw
    end
    
    private
    alias_method :initialize__expand_item, :initialize
  end
  
end
