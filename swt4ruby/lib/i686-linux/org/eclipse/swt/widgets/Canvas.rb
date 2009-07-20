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
  module CanvasImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt
    }
  end
  
  # Instances of this class provide a surface for drawing
  # arbitrary graphics.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>(none)</dd>
  # <dt><b>Events:</b></dt>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # This class may be subclassed by custom control implementors
  # who are building controls that are <em>not</em> constructed
  # from aggregates of other controls. That is, they are either
  # painted using SWT graphics calls or are handled by native
  # methods.
  # </p>
  # 
  # @see Composite
  # @see <a href="http://www.eclipse.org/swt/snippets/#canvas">Canvas snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Canvas < CanvasImports.const_get :Composite
    include_class_members CanvasImports
    
    attr_accessor :caret
    alias_method :attr_caret, :caret
    undef_method :caret
    alias_method :attr_caret=, :caret=
    undef_method :caret=
    
    attr_accessor :ime
    alias_method :attr_ime, :ime
    undef_method :ime
    alias_method :attr_ime=, :ime=
    undef_method :ime=
    
    typesig { [] }
    def initialize
      @caret = nil
      @ime = nil
      super()
    end
    
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
    # @param parent a composite control which will be the parent of the new instance (cannot be null)
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
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @caret = nil
      @ime = nil
      super(parent, check_style(style))
    end
    
    typesig { [SwtGC, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Fills the interior of the rectangle specified by the arguments,
    # with the receiver's background.
    # 
    # @param gc the gc where the rectangle is to be filled
    # @param x the x coordinate of the rectangle to be filled
    # @param y the y coordinate of the rectangle to be filled
    # @param width the width of the rectangle to be filled
    # @param height the height of the rectangle to be filled
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the gc is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the gc has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def draw_background(gc, x, y, width, height)
      check_widget
      if ((gc).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (gc.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      super(gc, x, y, width, height)
    end
    
    typesig { [] }
    # Returns the caret.
    # <p>
    # The caret for the control is automatically hidden
    # and shown when the control is painted or resized,
    # when focus is gained or lost and when an the control
    # is scrolled.  To avoid drawing on top of the caret,
    # the programmer must hide and show the caret when
    # drawing in the window any other time.
    # </p>
    # 
    # @return the caret for the receiver, may be null
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_caret
      check_widget
      return @caret
    end
    
    typesig { [] }
    def get_imcaret_pos
      if ((@caret).nil?)
        return super
      end
      return Point.new(@caret.attr_x, @caret.attr_y)
    end
    
    typesig { [] }
    # Returns the IME.
    # 
    # @return the IME
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def get_ime
      check_widget
      return @ime
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_button_press_event(widget, event)
      if (!(@ime).nil?)
        # long
        result = @ime.gtk_button_press_event(widget, event)
        if (!(result).equal?(0))
          return result
        end
      end
      return super(widget, event)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_commit(imcontext, text)
      if (!(@ime).nil?)
        # long
        result = @ime.gtk_commit(imcontext, text)
        if (!(result).equal?(0))
          return result
        end
      end
      return super(imcontext, text)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_expose_event(widget, event)
      if (!((self.attr_state & OBSCURED)).equal?(0))
        return 0
      end
      is_focus = !(@caret).nil? && @caret.is_focus_caret
      if (is_focus)
        @caret.kill_focus
      end
      # long
      result = super(widget, event)
      if (is_focus)
        @caret.set_focus
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_focus_in_event(widget, event)
      # long
      result = super(widget, event)
      if (!(@caret).nil?)
        @caret.set_focus
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_focus_out_event(widget, event)
      # long
      result = super(widget, event)
      if (!(@caret).nil?)
        @caret.kill_focus
      end
      return result
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_preedit_changed(imcontext)
      if (!(@ime).nil?)
        # long
        result = @ime.gtk_preedit_changed(imcontext)
        if (!(result).equal?(0))
          return result
        end
      end
      return super(imcontext)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
    def redraw_widget(x, y, width, height, redraw_all, all, trim)
      is_focus = !(@caret).nil? && @caret.is_focus_caret
      if (is_focus)
        @caret.kill_focus
      end
      super(x, y, width, height, redraw_all, all, trim)
      if (is_focus)
        @caret.set_focus
      end
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      if (!(@caret).nil?)
        @caret.release(false)
        @caret = nil
      end
      if (!(@ime).nil?)
        @ime.release(false)
        @ime = nil
      end
      super(destroy)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    # Scrolls a rectangular area of the receiver by first copying
    # the source area to the destination and then causing the area
    # of the source which is not covered by the destination to
    # be repainted. Children that intersect the rectangle are
    # optionally moved during the operation. In addition, outstanding
    # paint events are flushed before the source area is copied to
    # ensure that the contents of the canvas are drawn correctly.
    # 
    # @param destX the x coordinate of the destination
    # @param destY the y coordinate of the destination
    # @param x the x coordinate of the source
    # @param y the y coordinate of the source
    # @param width the width of the area
    # @param height the height of the area
    # @param all <code>true</code>if children should be scrolled, and <code>false</code> otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def scroll(dest_x, dest_y, x, y, width, height, all)
      check_widget
      if (width <= 0 || height <= 0)
        return
      end
      if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
        client_width = get_client_width
        x = client_width - width - x
        dest_x = client_width - width - dest_x
      end
      delta_x = dest_x - x
      delta_y = dest_y - y
      if ((delta_x).equal?(0) && (delta_y).equal?(0))
        return
      end
      if (!is_visible)
        return
      end
      is_focus = !(@caret).nil? && @caret.is_focus_caret
      if (is_focus)
        @caret.kill_focus
      end
      # long
      window = paint_window
      # long
      visible_region = OS.gdk_drawable_get_visible_region(window)
      src_rect = GdkRectangle.new
      src_rect.attr_x = x
      src_rect.attr_y = y
      src_rect.attr_width = width
      src_rect.attr_height = height
      # long
      copy_region = OS.gdk_region_rectangle(src_rect)
      OS.gdk_region_intersect(copy_region, visible_region)
      # long
      invalidate_region = OS.gdk_region_rectangle(src_rect)
      OS.gdk_region_subtract(invalidate_region, visible_region)
      OS.gdk_region_offset(invalidate_region, delta_x, delta_y)
      copy_rect = GdkRectangle.new
      OS.gdk_region_get_clipbox(copy_region, copy_rect)
      if (!(copy_rect.attr_width).equal?(0) && !(copy_rect.attr_height).equal?(0))
        update
      end
      control = find_background_control
      if ((control).nil?)
        control = self
      end
      if (!(control.attr_background_image).nil?)
        redraw_widget(x, y, width, height, false, false, false)
        redraw_widget(dest_x, dest_y, width, height, false, false, false)
      else
        # GC gc = new GC (this);
        # gc.copyArea (x, y, width, height, destX, destY);
        # gc.dispose ();
        # long
        gdk_gc = OS.gdk_gc_new(window)
        OS.gdk_gc_set_exposures(gdk_gc, true)
        OS.gdk_draw_drawable(window, gdk_gc, window, copy_rect.attr_x, copy_rect.attr_y, copy_rect.attr_x + delta_x, copy_rect.attr_y + delta_y, copy_rect.attr_width, copy_rect.attr_height)
        OS.g_object_unref(gdk_gc)
        disjoint = (dest_x + width < x) || (x + width < dest_x) || (dest_y + height < y) || (y + height < dest_y)
        if (disjoint)
          rect = GdkRectangle.new
          rect.attr_x = x
          rect.attr_y = y
          rect.attr_width = width
          rect.attr_height = height
          OS.gdk_region_union_with_rect(invalidate_region, rect)
        else
          rect = GdkRectangle.new
          if (!(delta_x).equal?(0))
            new_x = dest_x - delta_x
            if (delta_x < 0)
              new_x = dest_x + width
            end
            rect.attr_x = new_x
            rect.attr_y = y
            rect.attr_width = Math.abs(delta_x)
            rect.attr_height = height
            OS.gdk_region_union_with_rect(invalidate_region, rect)
          end
          if (!(delta_y).equal?(0))
            new_y = dest_y - delta_y
            if (delta_y < 0)
              new_y = dest_y + height
            end
            rect.attr_x = x
            rect.attr_y = new_y
            rect.attr_width = width
            rect.attr_height = Math.abs(delta_y)
            OS.gdk_region_union_with_rect(invalidate_region, rect)
          end
        end
        OS.gdk_window_invalidate_region(window, invalidate_region, all)
        OS.gdk_region_destroy(visible_region)
        OS.gdk_region_destroy(copy_region)
        OS.gdk_region_destroy(invalidate_region)
      end
      if (all)
        children = __get_children
        i = 0
        while i < children.attr_length
          child = children[i]
          rect = child.get_bounds
          if (Math.min(x + width, rect.attr_x + rect.attr_width) >= Math.max(x, rect.attr_x) && Math.min(y + height, rect.attr_y + rect.attr_height) >= Math.max(y, rect.attr_y))
            child.set_location(rect.attr_x + delta_x, rect.attr_y + delta_y)
          end
          ((i += 1) - 1)
        end
      end
      if (is_focus)
        @caret.set_focus
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize)
      is_focus = !(@caret).nil? && @caret.is_focus_caret
      if (is_focus)
        @caret.kill_focus
      end
      result = super(x, y, width, height, move, resize)
      if (is_focus)
        @caret.set_focus
      end
      return result
    end
    
    typesig { [Caret] }
    # Sets the receiver's caret.
    # <p>
    # The caret for the control is automatically hidden
    # and shown when the control is painted or resized,
    # when focus is gained or lost and when an the control
    # is scrolled.  To avoid drawing on top of the caret,
    # the programmer must hide and show the caret when
    # drawing in the window any other time.
    # </p>
    # @param caret the new caret for the receiver, may be null
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the caret has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_caret(caret)
      check_widget
      new_caret = caret
      old_caret = @caret
      @caret = new_caret
      if (has_focus)
        if (!(old_caret).nil?)
          old_caret.kill_focus
        end
        if (!(new_caret).nil?)
          if (new_caret.is_disposed)
            error(SWT::ERROR_INVALID_ARGUMENT)
          end
          new_caret.set_focus
        end
      end
    end
    
    typesig { [Font] }
    def set_font(font)
      check_widget
      if (!(@caret).nil?)
        @caret.set_font(font)
      end
      super(font)
    end
    
    typesig { [IME] }
    # Sets the receiver's IME.
    # 
    # @param ime the new IME for the receiver, may be null
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the IME has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def set_ime(ime)
      check_widget
      if (!(ime).nil? && ime.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @ime = ime
    end
    
    typesig { [] }
    def update_caret
      # long
      im_handle_ = im_handle
      if ((im_handle_).equal?(0))
        return
      end
      rect = GdkRectangle.new
      rect.attr_x = @caret.attr_x
      rect.attr_y = @caret.attr_y
      rect.attr_width = @caret.attr_width
      rect.attr_height = @caret.attr_height
      OS.gtk_im_context_set_cursor_location(im_handle_, rect)
    end
    
    private
    alias_method :initialize__canvas, :initialize
  end
  
end
