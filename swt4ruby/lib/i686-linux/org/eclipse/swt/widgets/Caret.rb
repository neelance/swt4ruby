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
  module CaretImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # Instances of this class provide an i-beam that is typically used
  # as the insertion point for text.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>(none)</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#caret">Caret snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample, Canvas tab</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Caret < CaretImports.const_get :Widget
    include_class_members CaretImports
    
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
    
    attr_accessor :is_visible
    alias_method :attr_is_visible, :is_visible
    undef_method :is_visible
    alias_method :attr_is_visible=, :is_visible=
    undef_method :is_visible=
    
    attr_accessor :is_showing
    alias_method :attr_is_showing, :is_showing
    undef_method :is_showing
    alias_method :attr_is_showing=, :is_showing=
    undef_method :is_showing=
    
    attr_accessor :blink_rate
    alias_method :attr_blink_rate, :blink_rate
    undef_method :blink_rate
    alias_method :attr_blink_rate=, :blink_rate=
    undef_method :blink_rate=
    
    attr_accessor :image
    alias_method :attr_image, :image
    undef_method :image
    alias_method :attr_image=, :image=
    undef_method :image=
    
    attr_accessor :font
    alias_method :attr_font, :font
    undef_method :font
    alias_method :attr_font=, :font=
    undef_method :font=
    
    class_module.module_eval {
      const_set_lazy(:DEFAULT_WIDTH) { 1 }
      const_attr_reader  :DEFAULT_WIDTH
    }
    
    typesig { [Canvas, ::Java::Int] }
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
    # @see SWT
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @parent = nil
      @x = 0
      @y = 0
      @width = 0
      @height = 0
      @is_visible = false
      @is_showing = false
      @blink_rate = 0
      @image = nil
      @font = nil
      super(parent, style)
      @parent = parent
      create_widget(0)
    end
    
    typesig { [] }
    def blink_caret
      if (!@is_visible)
        return true
      end
      if (!@is_showing)
        return show_caret
      end
      if ((@blink_rate).equal?(0))
        return true
      end
      return hide_caret
    end
    
    typesig { [::Java::Int] }
    def create_widget(index)
      super(index)
      @blink_rate = self.attr_display.get_caret_blink_time
      @is_visible = true
      if ((@parent.get_caret).nil?)
        @parent.set_caret(self)
      end
    end
    
    typesig { [] }
    def draw_caret
      if ((@parent).nil?)
        return false
      end
      if (@parent.is_disposed)
        return false
      end
      # long
      window = @parent.paint_window
      # long
      gc = OS.gdk_gc_new(window)
      color = GdkColor.new
      color.attr_red = RJava.cast_to_short(0xffff)
      color.attr_green = RJava.cast_to_short(0xffff)
      color.attr_blue = RJava.cast_to_short(0xffff)
      # long
      colormap = OS.gdk_colormap_get_system
      OS.gdk_colormap_alloc_color(colormap, color, true, true)
      OS.gdk_gc_set_foreground(gc, color)
      OS.gdk_gc_set_function(gc, OS::GDK_XOR)
      if (!(@image).nil? && !@image.is_disposed && (@image.attr_mask).equal?(0))
        width = Array.typed(::Java::Int).new(1) { 0 }
        height = Array.typed(::Java::Int).new(1) { 0 }
        OS.gdk_drawable_get_size(@image.attr_pixmap, width, height)
        n_x = @x
        if (!((@parent.attr_style & SWT::MIRRORED)).equal?(0))
          n_x = @parent.get_client_width - width[0] - n_x
        end
        OS.gdk_draw_drawable(window, gc, @image.attr_pixmap, 0, 0, n_x, @y, width[0], height[0])
      else
        n_width = @width
        n_height = @height
        if (n_width <= 0)
          n_width = DEFAULT_WIDTH
        end
        n_x = @x
        if (!((@parent.attr_style & SWT::MIRRORED)).equal?(0))
          n_x = @parent.get_client_width - n_width - n_x
        end
        OS.gdk_draw_rectangle(window, gc, 1, n_x, @y, n_width, n_height)
      end
      OS.g_object_unref(gc)
      OS.gdk_colormap_free_colors(colormap, color, 1)
      return true
    end
    
    typesig { [] }
    # Returns a rectangle describing the receiver's size and location
    # relative to its parent (or its display if its parent is null).
    # 
    # @return the receiver's bounding rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_bounds
      check_widget
      if (!(@image).nil?)
        rect = @image.get_bounds
        return Rectangle.new(@x, @y, rect.attr_width, rect.attr_height)
      else
        if ((@width).equal?(0))
          return Rectangle.new(@x, @y, DEFAULT_WIDTH, @height)
        end
      end
      return Rectangle.new(@x, @y, @width, @height)
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
    def get_font
      check_widget
      if (!(@font).nil?)
        return @font
      end
      return @parent.get_font
    end
    
    typesig { [] }
    # Returns the image that the receiver will use to paint the caret.
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
    # Returns a point describing the receiver's location relative
    # to its parent (or its display if its parent is null).
    # 
    # @return the receiver's location
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_location
      check_widget
      return Point.new(@x, @y)
    end
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>Canvas</code>.
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
    # Returns a point describing the receiver's size.
    # 
    # @return the receiver's size
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_size
      check_widget
      if (!(@image).nil?)
        rect = @image.get_bounds
        return Point.new(rect.attr_width, rect.attr_height)
      else
        if ((@width).equal?(0))
          return Point.new(DEFAULT_WIDTH, @height)
        end
      end
      return Point.new(@width, @height)
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
      return @is_visible
    end
    
    typesig { [] }
    def hide_caret
      if (!@is_showing)
        return true
      end
      @is_showing = false
      return draw_caret
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
      return @is_visible && @parent.is_visible && @parent.has_focus
    end
    
    typesig { [] }
    def is_focus_caret
      return (self).equal?(self.attr_display.attr_current_caret)
    end
    
    typesig { [] }
    def kill_focus
      if (!(self.attr_display.attr_current_caret).equal?(self))
        return
      end
      self.attr_display.set_current_caret(nil)
      if (@is_visible)
        hide_caret
      end
    end
    
    typesig { [] }
    def release_parent
      super
      if ((self).equal?(@parent.get_caret))
        @parent.set_caret(nil)
      end
    end
    
    typesig { [] }
    def release_widget
      super
      if ((self.attr_display.attr_current_caret).equal?(self))
        hide_caret
        self.attr_display.set_current_caret(nil)
      end
      @parent = nil
      @image = nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Sets the receiver's size and location to the rectangular
    # area specified by the arguments. The <code>x</code> and
    # <code>y</code> arguments are relative to the receiver's
    # parent (or its display if its parent is null).
    # 
    # @param x the new x coordinate for the receiver
    # @param y the new y coordinate for the receiver
    # @param width the new width for the receiver
    # @param height the new height for the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_bounds(x, y, width, height)
      check_widget
      if ((@x).equal?(x) && (@y).equal?(y) && (@width).equal?(width) && (@height).equal?(height))
        return
      end
      is_focus = is_focus_caret
      if (is_focus && @is_visible)
        hide_caret
      end
      @x = x
      @y = y
      @width = width
      @height = height
      @parent.update_caret
      if (is_focus && @is_visible)
        show_caret
      end
    end
    
    typesig { [Rectangle] }
    # Sets the receiver's size and location to the rectangular
    # area specified by the argument. The <code>x</code> and
    # <code>y</code> fields of the rectangle are relative to
    # the receiver's parent (or its display if its parent is null).
    # 
    # @param rect the new bounds for the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_bounds(rect)
      check_widget
      if ((rect).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_bounds(rect.attr_x, rect.attr_y, rect.attr_width, rect.attr_height)
    end
    
    typesig { [] }
    def set_focus
      if ((self.attr_display.attr_current_caret).equal?(self))
        return
      end
      self.attr_display.set_current_caret(self)
      if (@is_visible)
        show_caret
      end
    end
    
    typesig { [Font] }
    # Sets the font that the receiver will use to paint textual information
    # to the font specified by the argument, or to the default font for that
    # kind of control if the argument is null.
    # 
    # @param font the new font (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the font has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_font(font)
      check_widget
      if (!(font).nil? && font.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @font = font
    end
    
    typesig { [Image] }
    # Sets the image that the receiver will use to paint the caret
    # to the image specified by the argument, or to the default
    # which is a filled rectangle if the argument is null
    # 
    # @param image the new image (or null)
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
      if (!(image).nil? && image.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      is_focus = is_focus_caret
      if (is_focus && @is_visible)
        hide_caret
      end
      @image = image
      if (is_focus && @is_visible)
        show_caret
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Sets the receiver's location to the point specified by
    # the arguments which are relative to the receiver's
    # parent (or its display if its parent is null).
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
      set_bounds(x, y, @width, @height)
    end
    
    typesig { [Point] }
    # Sets the receiver's location to the point specified by
    # the argument which is relative to the receiver's
    # parent (or its display if its parent is null).
    # 
    # @param location the new location for the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_location(location)
      check_widget
      if ((location).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_location(location.attr_x, location.attr_y)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Sets the receiver's size to the point specified by the arguments.
    # 
    # @param width the new width for the receiver
    # @param height the new height for the receiver
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_size(width, height)
      check_widget
      set_bounds(@x, @y, width, height)
    end
    
    typesig { [Point] }
    # Sets the receiver's size to the point specified by the argument.
    # 
    # @param size the new extent for the receiver
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_size(size)
      check_widget
      if ((size).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      set_size(size.attr_x, size.attr_y)
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
      if ((visible).equal?(@is_visible))
        return
      end
      @is_visible = visible
      if (!is_focus_caret)
        return
      end
      if (@is_visible)
        show_caret
      else
        hide_caret
      end
    end
    
    typesig { [] }
    def show_caret
      if (@is_showing)
        return true
      end
      @is_showing = true
      return draw_caret
    end
    
    private
    alias_method :initialize__caret, :initialize
  end
  
end
