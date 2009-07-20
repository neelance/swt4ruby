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
      include ::Org::Eclipse::Swt::Internal::Carbon
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
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
      # Do nothing
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
      super(parent, style)
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
        control.fill_background(self.attr_handle, gc.attr_handle, Rectangle.new(x, y, width, height))
      else
        gc.fill_rectangle(x, y, width, height)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def draw_widget(control, context, damage_rgn, visible_rgn, the_event)
      super(control, context, damage_rgn, visible_rgn, the_event)
      if (OS::VERSION >= 0x1040)
        if (!(control).equal?(self.attr_handle))
          return
        end
        if ((@caret).nil?)
          return
        end
        if (@caret.attr_is_showing)
          OS._cgcontext_save_gstate(context)
          rect = CGRect.new
          rect.attr_x = @caret.attr_x
          rect.attr_y = @caret.attr_y
          image = @caret.attr_image
          OS._cgcontext_set_blend_mode(context, OS.attr_k_cgblend_mode_difference)
          if (!(image).nil?)
            rect.attr_width = OS._cgimage_get_width(image.attr_handle)
            rect.attr_height = OS._cgimage_get_height(image.attr_handle)
            OS._cgcontext_scale_ctm(context, 1, -1)
            OS._cgcontext_translate_ctm(context, 0, -(rect.attr_height + 2 * rect.attr_y))
            OS._cgcontext_draw_image(context, rect, image.attr_handle)
          else
            rect.attr_width = !(@caret.attr_width).equal?(0) ? @caret.attr_width : Caret::DEFAULT_WIDTH
            rect.attr_height = @caret.attr_height
            OS._cgcontext_set_should_antialias(context, false)
            colorspace = OS._cgcolor_space_create_device_rgb
            OS._cgcontext_set_fill_color_space(context, colorspace)
            OS._cgcontext_set_fill_color(context, Array.typed(::Java::Float).new([1, 1, 1, 1]))
            OS._cgcolor_space_release(colorspace)
            OS._cgcontext_fill_rect(context, rect)
          end
          OS._cgcontext_restore_gstate(context)
        end
      end
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_draw(next_handler, the_event, user_data)
      the_control = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_direct_object, OS.attr_type_control_ref, nil, 4, nil, the_control)
      is_focus = OS::VERSION < 0x1040 && (the_control[0]).equal?(self.attr_handle) && !(@caret).nil? && @caret.is_focus_caret
      if (is_focus)
        @caret.kill_focus
      end
      result = super(next_handler, the_event, user_data)
      if (is_focus)
        @caret.set_focus
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_set_focus_part(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if ((result).equal?(OS.attr_no_err))
        if (!is_disposed)
          shell = get_shell
          part = Array.typed(::Java::Short).new(1) { 0 }
          OS._get_event_parameter(the_event, OS.attr_k_event_param_control_part, OS.attr_type_control_part_code, nil, 2, nil, part)
          if (!(part[0]).equal?(OS.attr_k_control_focus_no_part))
            if (!(@caret).nil?)
              @caret.set_focus
            end
            OS._activate_tsmdocument(shell.attr_im_handle)
          else
            if (!(@caret).nil?)
              @caret.kill_focus
            end
            OS._deactivate_tsmdocument(shell.attr_im_handle)
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_text_input_offset_to_pos(next_handler, the_event, user_data)
      if (!(@ime).nil?)
        result = @ime.k_event_text_input_offset_to_pos(next_handler, the_event, user_data)
        if (!(result).equal?(OS.attr_event_not_handled_err))
          return result
        end
      end
      return super(next_handler, the_event, user_data)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_text_input_pos_to_offset(next_handler, the_event, user_data)
      if (!(@ime).nil?)
        result = @ime.k_event_text_input_pos_to_offset(next_handler, the_event, user_data)
        if (!(result).equal?(OS.attr_event_not_handled_err))
          return result
        end
      end
      return super(next_handler, the_event, user_data)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_text_input_unicode_for_key_event(next_handler, the_event, user_data)
      result = super(next_handler, the_event, user_data)
      if (!(result).equal?(OS.attr_no_err))
        if (!(@caret).nil?)
          OS._cgdisplay_hide_cursor(OS._cgmain_display_id)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_text_input_update_active_input_area(next_handler, the_event, user_data)
      if (!(@ime).nil?)
        result = @ime.k_event_text_input_update_active_input_area(next_handler, the_event, user_data)
        if (!(result).equal?(OS.attr_event_not_handled_err))
          return result
        end
      end
      return super(next_handler, the_event, user_data)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_text_input_get_selected_text(next_handler, the_event, user_data)
      if (!(@ime).nil?)
        result = @ime.k_event_text_input_get_selected_text(next_handler, the_event, user_data)
        if (!(result).equal?(OS.attr_event_not_handled_err))
          return result
        end
      end
      return super(next_handler, the_event, user_data)
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def redraw_widget(control, children)
      is_focus = OS::VERSION < 0x1040 && !(@caret).nil? && @caret.is_focus_caret
      if (is_focus)
        @caret.kill_focus
      end
      super(control, children)
      if (is_focus)
        @caret.set_focus
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def redraw_widget(control, x, y, width, height, all)
      is_focus = OS::VERSION < 0x1040 && !(@caret).nil? && @caret.is_focus_caret
      if (is_focus)
        @caret.kill_focus
      end
      super(control, x, y, width, height, all)
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
      delta_x = dest_x - x
      delta_y = dest_y - y
      if ((delta_x).equal?(0) && (delta_y).equal?(0))
        return
      end
      if (!is_drawing(self.attr_handle))
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
      if (!(control).nil? && !(control.attr_background_image).nil?)
        redraw_widget(self.attr_handle, x, y, width, height, false)
        redraw_widget(self.attr_handle, dest_x, dest_y, width, height, false)
      else
        gc = SwtGC.new(self)
        gc.copy_area(x, y, width, height, dest_x, dest_y)
        gc.dispose
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
    
    private
    alias_method :initialize__canvas, :initialize
  end
  
end
