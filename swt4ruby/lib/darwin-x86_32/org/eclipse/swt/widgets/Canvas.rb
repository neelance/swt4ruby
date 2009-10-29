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
  module CanvasImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal::Cocoa
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
    
    attr_accessor :context
    alias_method :attr_context, :context
    undef_method :context
    alias_method :attr_context=, :context=
    undef_method :context=
    
    typesig { [] }
    def initialize
      @caret = nil
      @ime = nil
      @context = nil
      super()
      # Do nothing
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def attributed_substring_from_range(id, sel, range)
      if (!(@ime).nil?)
        return @ime.attributed_substring_from_range(id, sel, range)
      end
      return super(id, sel, range)
    end
    
    typesig { [::Java::Int] }
    def send_focus_event(type)
      if (!(@caret).nil?)
        if ((type).equal?(SWT::FocusIn))
          @caret.set_focus
        else
          @caret.kill_focus
        end
      end
      super(type)
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
      @context = nil
      super(parent, style)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def character_index_for_point(id, sel, point)
      if (!(@ime).nil?)
        return @ime.character_index_for_point(id, sel, point)
      end
      return super(id, sel, point)
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
      control = find_background_control
      if (!(control).nil?)
        rect = NSRect.new
        rect.attr_x = x
        rect.attr_y = y
        rect.attr_width = width
        rect.attr_height = height
        img_height = -1
        data = gc.get_gcdata
        if (!(data.attr_image).nil?)
          img_height = data.attr_image.get_bounds.attr_height
        end
        context = gc.attr_handle
        if (!(data.attr_flipped_context).nil?)
          NSGraphicsContext.static_save_graphics_state
          NSGraphicsContext.set_current_context(context)
        end
        control.fill_background(self.attr_view, context, rect, img_height)
        if (!(data.attr_flipped_context).nil?)
          NSGraphicsContext.static_restore_graphics_state
        end
      else
        gc.fill_rectangle(x, y, width, height)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, NSRect] }
    # long
    # long
    def draw_rect(id, sel, rect)
      if (!(@context).nil? && (@context.view).nil?)
        @context.set_view(self.attr_view)
      end
      super(id, sel, rect)
    end
    
    typesig { [::Java::Int, NSGraphicsContext, NSRect] }
    # long
    def draw_widget(id, context, rect)
      if (!(id).equal?(self.attr_view.attr_id))
        return
      end
      super(id, context, rect)
      if ((@caret).nil?)
        return
      end
      if (@caret.attr_is_showing)
        image = @caret.attr_image
        if (!(image).nil?)
          image_handle = image.attr_handle
          image_rep = image_handle.best_representation_for_device(nil)
          if (!image_rep.is_kind_of_class(OS.attr_class_nsbitmap_image_rep))
            return
          end
          rep = NSBitmapImageRep.new(image_rep)
          dest_rect = CGRect.new
          dest_rect.attr_origin.attr_x = @caret.attr_x
          dest_rect.attr_origin.attr_y = @caret.attr_y
          size_ = image_handle.size
          dest_rect.attr_size.attr_width = size_.attr_width
          dest_rect.attr_size.attr_height = size_.attr_height
          # long
          data = rep.bitmap_data
          # long
          bpr = rep.bytes_per_row
          alpha_info = rep.has_alpha ? OS.attr_k_cgimage_alpha_first : OS.attr_k_cgimage_alpha_none_skip_first
          # long
          provider = OS._cgdata_provider_create_with_data(0, data, bpr * RJava.cast_to_int(size_.attr_height), 0)
          # long
          colorspace = OS._cgcolor_space_create_device_rgb
          # long
          cg_image = OS._cgimage_create(RJava.cast_to_int(size_.attr_width), RJava.cast_to_int(size_.attr_height), rep.bits_per_sample, rep.bits_per_pixel, bpr, colorspace, alpha_info, provider, 0, true, 0)
          OS._cgcolor_space_release(colorspace)
          OS._cgdata_provider_release(provider)
          # long
          ctx = context.graphics_port
          OS._cgcontext_save_gstate(ctx)
          OS._cgcontext_scale_ctm(ctx, 1, -1)
          OS._cgcontext_translate_ctm(ctx, 0, -(size_.attr_height + 2 * dest_rect.attr_origin.attr_y))
          OS._cgcontext_set_blend_mode(ctx, OS.attr_k_cgblend_mode_difference)
          OS._cgcontext_draw_image(ctx, dest_rect, cg_image)
          OS._cgcontext_restore_gstate(ctx)
          OS._cgimage_release(cg_image)
        else
          context.save_graphics_state
          context.set_compositing_operation(OS::NSCompositeXOR)
          draw_rect = NSRect.new
          draw_rect.attr_x = @caret.attr_x
          draw_rect.attr_y = @caret.attr_y
          draw_rect.attr_width = !(@caret.attr_width).equal?(0) ? @caret.attr_width : Caret::DEFAULT_WIDTH
          draw_rect.attr_height = @caret.attr_height
          context.set_should_antialias(false)
          color = NSColor.color_with_device_red(1, 1, 1, 1)
          color.set
          NSBezierPath.fill_rect(draw_rect)
          context.restore_graphics_state
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def first_rect_for_character_range(id, sel, range)
      if (!(@ime).nil?)
        return @ime.first_rect_for_character_range(id, sel, range)
      end
      return super(id, sel, range)
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
    def has_marked_text(id, sel)
      if (!(@ime).nil?)
        return @ime.has_marked_text(id, sel)
      end
      return super(id, sel)
    end
    
    typesig { [] }
    def ime_in_composition
      return !(@ime).nil? && @ime.is_inline_enabled && !(@ime.attr_start_offset).equal?(-1)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def insert_text(id, sel, string)
      if (!(@ime).nil?)
        if (!@ime.insert_text(id, sel, string))
          return false
        end
      end
      return super(id, sel, string)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def is_opaque(id, sel)
      if (!(@context).nil?)
        return true
      end
      return super(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def marked_range(id, sel)
      if (!(@ime).nil?)
        return @ime.marked_range(id, sel)
      end
      return super(id, sel)
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
      delta_x = dest_x - x
      delta_y = dest_y - y
      if ((delta_x).equal?(0) && (delta_y).equal?(0))
        return
      end
      if (!is_drawing)
        return
      end
      visible_rect_ = self.attr_view.visible_rect
      if (visible_rect_.attr_width <= 0 || visible_rect_.attr_height <= 0)
        return
      end
      is_focus = !(@caret).nil? && @caret.is_focus_caret
      if (is_focus)
        @caret.kill_focus
      end
      client_rect = get_client_area
      source_rect = Rectangle.new(x, y, width, height)
      if (source_rect.intersects(client_rect))
        update(all)
      end
      control = find_background_control
      redraw = !(control).nil? && !(control.attr_background_image).nil?
      if (!redraw)
        redraw = is_obscured
      end
      if (redraw)
        redraw_widget(self.attr_view, x, y, width, height, false)
        redraw_widget(self.attr_view, dest_x, dest_y, width, height, false)
      else
        damage = NSRect.new
        damage.attr_x = x
        damage.attr_y = y
        damage.attr_width = width
        damage.attr_height = height
        dest = NSPoint.new
        dest.attr_x = dest_x
        dest.attr_y = dest_y
        self.attr_view.lock_focus
        OS._nscopy_bits(0, damage, dest)
        self.attr_view.unlock_focus
        disjoint = (dest_x + width < x) || (x + width < dest_x) || (dest_y + height < y) || (y + height < dest_y)
        if (disjoint)
          self.attr_view.set_needs_display_in_rect(damage)
        else
          if (!(delta_x).equal?(0))
            new_x = dest_x - delta_x
            if (delta_x < 0)
              new_x = dest_x + width
            end
            damage.attr_x = new_x
            damage.attr_width = Math.abs(delta_x)
            self.attr_view.set_needs_display_in_rect(damage)
          end
          if (!(delta_y).equal?(0))
            new_y = dest_y - delta_y
            if (delta_y < 0)
              new_y = dest_y + height
            end
            damage.attr_x = x
            damage.attr_y = new_y
            damage.attr_width = width
            damage.attr_height = Math.abs(delta_y)
            self.attr_view.set_needs_display_in_rect(damage)
          end
        end
        src_rect = NSRect.new
        src_rect.attr_x = source_rect.attr_x
        src_rect.attr_y = source_rect.attr_y
        src_rect.attr_width = source_rect.attr_width
        src_rect.attr_height = source_rect.attr_height
        OS._nsintersection_rect(visible_rect_, visible_rect_, src_rect)
        if (!OS._nsequal_rects(visible_rect_, src_rect))
          if (!(src_rect.attr_x).equal?(visible_rect_.attr_x))
            damage.attr_x = src_rect.attr_x + delta_x
            damage.attr_y = src_rect.attr_y + delta_y
            damage.attr_width = visible_rect_.attr_x - src_rect.attr_x
            damage.attr_height = src_rect.attr_height
            self.attr_view.set_needs_display_in_rect(damage)
          end
          if (!(visible_rect_.attr_x + visible_rect_.attr_width).equal?(src_rect.attr_x + src_rect.attr_width))
            damage.attr_x = src_rect.attr_x + visible_rect_.attr_width + delta_x
            damage.attr_y = src_rect.attr_y + delta_y
            damage.attr_width = src_rect.attr_width - visible_rect_.attr_width
            damage.attr_height = src_rect.attr_height
            self.attr_view.set_needs_display_in_rect(damage)
          end
          if (!(visible_rect_.attr_y).equal?(src_rect.attr_y))
            damage.attr_x = visible_rect_.attr_x + delta_x
            damage.attr_y = src_rect.attr_y + delta_y
            damage.attr_width = visible_rect_.attr_width
            damage.attr_height = visible_rect_.attr_y - src_rect.attr_y
            self.attr_view.set_needs_display_in_rect(damage)
          end
          if (!(visible_rect_.attr_y + visible_rect_.attr_height).equal?(src_rect.attr_y + src_rect.attr_height))
            damage.attr_x = visible_rect_.attr_x + delta_x
            damage.attr_y = visible_rect_.attr_y + visible_rect_.attr_height + delta_y
            damage.attr_width = visible_rect_.attr_width
            damage.attr_height = src_rect.attr_y + src_rect.attr_height - (visible_rect_.attr_y + visible_rect_.attr_height)
            self.attr_view.set_needs_display_in_rect(damage)
          end
        end
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
          i += 1
        end
      end
      if (is_focus)
        @caret.set_focus
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def selected_range(id, sel)
      if (!(@ime).nil?)
        return @ime.selected_range(id, sel)
      end
      return super(id, sel)
    end
    
    typesig { [NSEvent, ::Java::Int] }
    def send_key_event(ns_event, type)
      if (!(@caret).nil?)
        NSCursor.set_hidden_until_mouse_moves(true)
      end
      return super(ns_event, type)
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
    
    typesig { [Object] }
    def set_open_glcontext(value)
      @context = value
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def set_marked_text_selected_range(id, sel, string, range)
      if (!(@ime).nil?)
        if (!@ime.set_marked_text_selected_range(id, sel, string, range))
          return false
        end
      end
      return super(id, sel, string, range)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def valid_attributes_for_marked_text(id, sel)
      if (!(@ime).nil?)
        return @ime.valid_attributes_for_marked_text(id, sel)
      end
      return super(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def update_open_glcontext(id, sel, notification)
      if (!(@context).nil?)
        (@context).update
      end
    end
    
    private
    alias_method :initialize__canvas, :initialize
  end
  
end
