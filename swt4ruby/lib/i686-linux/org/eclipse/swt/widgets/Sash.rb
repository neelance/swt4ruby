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
  module SashImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # Instances of the receiver represent a selectable user interface object
  # that allows the user to drag a rubber banded outline of the sash within
  # the parent control.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>HORIZONTAL, VERTICAL, SMOOTH</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Selection</dd>
  # </dl>
  # <p>
  # Note: Only one of the styles HORIZONTAL and VERTICAL may be specified.
  # </p><p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#sash">Sash snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # @noextend This class is not intended to be subclassed by clients.
  class Sash < SashImports.const_get :Control
    include_class_members SashImports
    
    attr_accessor :dragging
    alias_method :attr_dragging, :dragging
    undef_method :dragging
    alias_method :attr_dragging=, :dragging=
    undef_method :dragging=
    
    attr_accessor :start_x
    alias_method :attr_start_x, :start_x
    undef_method :start_x
    alias_method :attr_start_x=, :start_x=
    undef_method :start_x=
    
    attr_accessor :start_y
    alias_method :attr_start_y, :start_y
    undef_method :start_y
    alias_method :attr_start_y=, :start_y=
    undef_method :start_y=
    
    attr_accessor :last_x
    alias_method :attr_last_x, :last_x
    undef_method :last_x
    alias_method :attr_last_x=, :last_x=
    undef_method :last_x=
    
    attr_accessor :last_y
    alias_method :attr_last_y, :last_y
    undef_method :last_y
    alias_method :attr_last_y=, :last_y=
    undef_method :last_y=
    
    # long
    attr_accessor :default_cursor
    alias_method :attr_default_cursor, :default_cursor
    undef_method :default_cursor
    alias_method :attr_default_cursor=, :default_cursor=
    undef_method :default_cursor=
    
    class_module.module_eval {
      const_set_lazy(:INCREMENT) { 1 }
      const_attr_reader  :INCREMENT
      
      const_set_lazy(:PAGE_INCREMENT) { 9 }
      const_attr_reader  :PAGE_INCREMENT
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
    # @see SWT#HORIZONTAL
    # @see SWT#VERTICAL
    # @see SWT#SMOOTH
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @dragging = false
      @start_x = 0
      @start_y = 0
      @last_x = 0
      @last_y = 0
      @default_cursor = 0
      super(parent, check_style(style))
    end
    
    typesig { [SelectionListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the control is selected by the user, by sending
    # it one of the messages defined in the <code>SelectionListener</code>
    # interface.
    # <p>
    # When <code>widgetSelected</code> is called, the x, y, width, and height fields of the event object are valid.
    # If the receiver is being dragged, the event object detail field contains the value <code>SWT.DRAG</code>.
    # <code>widgetDefaultSelected</code> is not called.
    # </p>
    # 
    # @param listener the listener which should be notified when the control is selected by the user
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SelectionListener
    # @see #removeSelectionListener
    # @see SelectionEvent
    def add_selection_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Selection, typed_listener)
      add_listener(SWT::DefaultSelection, typed_listener)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        return check_bits(style, SWT::HORIZONTAL, SWT::VERTICAL, 0, 0, 0, 0)
      end
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def compute_size(w_hint, h_hint, changed)
      check_widget
      if (!(w_hint).equal?(SWT::DEFAULT) && w_hint < 0)
        w_hint = 0
      end
      if (!(h_hint).equal?(SWT::DEFAULT) && h_hint < 0)
        h_hint = 0
      end
      border = get_border_width
      width = border * 2
      height = border * 2
      if (!((self.attr_style & SWT::HORIZONTAL)).equal?(0))
        width += DEFAULT_WIDTH
        height += 3
      else
        width += 3
        height += DEFAULT_HEIGHT
      end
      if (!(w_hint).equal?(SWT::DEFAULT))
        width = w_hint + (border * 2)
      end
      if (!(h_hint).equal?(SWT::DEFAULT))
        height = h_hint + (border * 2)
      end
      return Point.new(width, height)
    end
    
    typesig { [::Java::Int] }
    def create_handle(index)
      self.attr_state |= HANDLE | THEME_BACKGROUND
      self.attr_handle = OS.g_object_new(self.attr_display.gtk_fixed_get_type, 0)
      if ((self.attr_handle).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      OS.gtk_fixed_set_has_window(self.attr_handle, true)
      OS._gtk_widget_set_flags(self.attr_handle, OS::GTK_CAN_FOCUS)
      type = !((self.attr_style & SWT::VERTICAL)).equal?(0) ? OS::GDK_SB_H_DOUBLE_ARROW : OS::GDK_SB_V_DOUBLE_ARROW
      @default_cursor = OS.gdk_cursor_new(type)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def draw_band(x, y, width, height)
      if (!((self.attr_style & SWT::SMOOTH)).equal?(0))
        return
      end
      # long
      window = OS._gtk_widget_window(self.attr_parent.paint_handle)
      if ((window).equal?(0))
        return
      end
      bits = Array.typed(::Java::Byte).new([-86, 85, -86, 85, -86, 85, -86, 85])
      # long
      stipple_pixmap = OS.gdk_bitmap_create_from_data(window, bits, 8, 8)
      # long
      gc = OS.gdk_gc_new(window)
      # long
      colormap = OS.gdk_colormap_get_system
      color = GdkColor.new
      OS.gdk_color_white(colormap, color)
      OS.gdk_gc_set_foreground(gc, color)
      OS.gdk_gc_set_stipple(gc, stipple_pixmap)
      OS.gdk_gc_set_subwindow(gc, OS::GDK_INCLUDE_INFERIORS)
      OS.gdk_gc_set_fill(gc, OS::GDK_STIPPLED)
      OS.gdk_gc_set_function(gc, OS::GDK_XOR)
      OS.gdk_draw_rectangle(window, gc, 1, x, y, width, height)
      OS.g_object_unref(stipple_pixmap)
      OS.g_object_unref(gc)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_button_press_event(widget, event_ptr)
      # long
      result = super(widget, event_ptr)
      if (!(result).equal?(0))
        return result
      end
      gdk_event = GdkEventButton.new
      OS.memmove___org_eclipse_swt_widgets_sash_1(gdk_event, event_ptr, GdkEventButton.attr_sizeof)
      button = gdk_event.attr_button
      if (!(button).equal?(1))
        return 0
      end
      if ((gdk_event.attr_type).equal?(OS::GDK_2BUTTON_PRESS))
        return 0
      end
      if ((gdk_event.attr_type).equal?(OS::GDK_3BUTTON_PRESS))
        return 0
      end
      # long
      window = OS._gtk_widget_window(widget)
      origin_x = Array.typed(::Java::Int).new(1) { 0 }
      origin_y = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_origin(window, origin_x, origin_y)
      @start_x = RJava.cast_to_int((gdk_event.attr_x_root - origin_x[0]))
      @start_y = RJava.cast_to_int((gdk_event.attr_y_root - origin_y[0]))
      x = OS._gtk_widget_x(self.attr_handle)
      y = OS._gtk_widget_y(self.attr_handle)
      width = OS._gtk_widget_width(self.attr_handle)
      height = OS._gtk_widget_height(self.attr_handle)
      @last_x = x
      @last_y = y
      event = Event.new
      event.attr_time = gdk_event.attr_time
      event.attr_x = @last_x
      event.attr_y = @last_y
      event.attr_width = width
      event.attr_height = height
      if (((self.attr_style & SWT::SMOOTH)).equal?(0))
        event.attr_detail = SWT::DRAG
      end
      if (!((self.attr_parent.attr_style & SWT::MIRRORED)).equal?(0))
        event.attr_x = self.attr_parent.get_client_width - width - event.attr_x
      end
      send_event___org_eclipse_swt_widgets_sash_3(SWT::Selection, event)
      if (is_disposed)
        return 0
      end
      if (event.attr_doit)
        @dragging = true
        @last_x = event.attr_x
        @last_y = event.attr_y
        if (!((self.attr_parent.attr_style & SWT::MIRRORED)).equal?(0))
          @last_x = self.attr_parent.get_client_width - width - @last_x
        end
        self.attr_parent.update(true, ((self.attr_style & SWT::SMOOTH)).equal?(0))
        draw_band(@last_x, event.attr_y, width, height)
        if (!((self.attr_style & SWT::SMOOTH)).equal?(0))
          set_bounds(event.attr_x, event.attr_y, width, height)
          # widget could be disposed at this point
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_button_release_event(widget, event_ptr)
      # long
      result = super(widget, event_ptr)
      if (!(result).equal?(0))
        return result
      end
      gdk_event = GdkEventButton.new
      OS.memmove___org_eclipse_swt_widgets_sash_5(gdk_event, event_ptr, GdkEventButton.attr_sizeof)
      button = gdk_event.attr_button
      if (!(button).equal?(1))
        return 0
      end
      if (!@dragging)
        return 0
      end
      @dragging = false
      width = OS._gtk_widget_width(self.attr_handle)
      height = OS._gtk_widget_height(self.attr_handle)
      event = Event.new
      event.attr_time = gdk_event.attr_time
      event.attr_x = @last_x
      event.attr_y = @last_y
      event.attr_width = width
      event.attr_height = height
      draw_band(@last_x, @last_y, width, height)
      if (!((self.attr_parent.attr_style & SWT::MIRRORED)).equal?(0))
        event.attr_x = self.attr_parent.get_client_width - width - event.attr_x
      end
      send_event___org_eclipse_swt_widgets_sash_7(SWT::Selection, event)
      if (is_disposed)
        return result
      end
      if (event.attr_doit)
        if (!((self.attr_style & SWT::SMOOTH)).equal?(0))
          set_bounds(event.attr_x, event.attr_y, width, height)
          # widget could be disposed at this point
        end
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
      if (!(result).equal?(0))
        return result
      end
      # widget could be disposed at this point
      if (!(self.attr_handle).equal?(0))
        @last_x = OS._gtk_widget_x(self.attr_handle)
        @last_y = OS._gtk_widget_y(self.attr_handle)
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_key_press_event(widget, event_ptr)
      # long
      result = super(widget, event_ptr)
      if (!(result).equal?(0))
        return result
      end
      gdk_event = GdkEventKey.new
      OS.memmove___org_eclipse_swt_widgets_sash_9(gdk_event, event_ptr, GdkEventKey.attr_sizeof)
      keyval = gdk_event.attr_keyval
      catch(:break_case) do
        case (keyval)
        when OS::GDK_Left, OS::GDK_Right, OS::GDK_Up, OS::GDK_Down
          x_change = 0
          y_change = 0
          step_size = PAGE_INCREMENT
          if (!((gdk_event.attr_state & OS::GDK_CONTROL_MASK)).equal?(0))
            step_size = INCREMENT
          end
          if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
            if ((keyval).equal?(OS::GDK_Up) || (keyval).equal?(OS::GDK_Down))
              throw :break_case, :thrown
            end
            x_change = (keyval).equal?(OS::GDK_Left) ? -step_size : step_size
          else
            if ((keyval).equal?(OS::GDK_Left) || (keyval).equal?(OS::GDK_Right))
              throw :break_case, :thrown
            end
            y_change = (keyval).equal?(OS::GDK_Up) ? -step_size : step_size
          end
          width = OS._gtk_widget_width(self.attr_handle)
          height = OS._gtk_widget_height(self.attr_handle)
          parent_border = 0
          parent_width = OS._gtk_widget_width(self.attr_parent.attr_handle)
          parent_height = OS._gtk_widget_height(self.attr_parent.attr_handle)
          new_x = @last_x
          new_y = @last_y
          if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
            new_x = Math.min(Math.max(0, @last_x + x_change - parent_border - @start_x), parent_width - width)
          else
            new_y = Math.min(Math.max(0, @last_y + y_change - parent_border - @start_y), parent_height - height)
          end
          if ((new_x).equal?(@last_x) && (new_y).equal?(@last_y))
            return result
          end
          # Ensure that the pointer image does not change
          # long
          window = OS._gtk_widget_window(self.attr_handle)
          grab_mask = OS::GDK_POINTER_MOTION_MASK | OS::GDK_BUTTON_RELEASE_MASK
          # long
          gdk_cursor = !(self.attr_cursor).nil? ? self.attr_cursor.attr_handle : @default_cursor
          ptr_grab_result = OS.gdk_pointer_grab(window, false, grab_mask, window, gdk_cursor, OS::GDK_CURRENT_TIME)
          # The event must be sent because its doit flag is used.
          event = Event.new
          event.attr_time = gdk_event.attr_time
          event.attr_x = new_x
          event.attr_y = new_y
          event.attr_width = width
          event.attr_height = height
          if (!((self.attr_parent.attr_style & SWT::MIRRORED)).equal?(0))
            event.attr_x = self.attr_parent.get_client_width - width - event.attr_x
          end
          send_event___org_eclipse_swt_widgets_sash_11(SWT::Selection, event)
          if ((ptr_grab_result).equal?(OS::GDK_GRAB_SUCCESS))
            OS.gdk_pointer_ungrab(OS::GDK_CURRENT_TIME)
          end
          if (is_disposed)
            throw :break_case, :thrown
          end
          if (event.attr_doit)
            @last_x = event.attr_x
            @last_y = event.attr_y
            if (!((self.attr_parent.attr_style & SWT::MIRRORED)).equal?(0))
              @last_x = self.attr_parent.get_client_width - width - @last_x
            end
            if (!((self.attr_style & SWT::SMOOTH)).equal?(0))
              set_bounds(event.attr_x, event.attr_y, width, height)
              if (is_disposed)
                throw :break_case, :thrown
              end
            end
            cursor_x = event.attr_x
            cursor_y = event.attr_y
            if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
              cursor_y += height / 2
            else
              cursor_x += width / 2
            end
            self.attr_display.set_cursor_location(self.attr_parent.to_display(cursor_x, cursor_y))
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_motion_notify_event(widget, event_ptr)
      # long
      result = super(widget, event_ptr)
      if (!(result).equal?(0))
        return result
      end
      if (!@dragging)
        return 0
      end
      gdk_event = GdkEventMotion.new
      OS.memmove___org_eclipse_swt_widgets_sash_13(gdk_event, event_ptr, GdkEventButton.attr_sizeof)
      event_x = 0
      event_y = 0
      event_state = 0
      if (!(gdk_event.attr_is_hint).equal?(0))
        pointer_x = Array.typed(::Java::Int).new(1) { 0 }
        pointer_y = Array.typed(::Java::Int).new(1) { 0 }
        mask = Array.typed(::Java::Int).new(1) { 0 }
        OS.gdk_window_get_pointer(gdk_event.attr_window, pointer_x, pointer_y, mask)
        event_x = pointer_x[0]
        event_y = pointer_y[0]
        event_state = mask[0]
      else
        origin_x = Array.typed(::Java::Int).new(1) { 0 }
        origin_y = Array.typed(::Java::Int).new(1) { 0 }
        OS.gdk_window_get_origin(gdk_event.attr_window, origin_x, origin_y)
        event_x = RJava.cast_to_int((gdk_event.attr_x_root - origin_x[0]))
        event_y = RJava.cast_to_int((gdk_event.attr_y_root - origin_y[0]))
        event_state = gdk_event.attr_state
      end
      if (((event_state & OS::GDK_BUTTON1_MASK)).equal?(0))
        return 0
      end
      x = OS._gtk_widget_x(self.attr_handle)
      y = OS._gtk_widget_y(self.attr_handle)
      width = OS._gtk_widget_width(self.attr_handle)
      height = OS._gtk_widget_height(self.attr_handle)
      parent_border = 0
      parent_width = OS._gtk_widget_width(self.attr_parent.attr_handle)
      parent_height = OS._gtk_widget_height(self.attr_parent.attr_handle)
      new_x = @last_x
      new_y = @last_y
      if (!((self.attr_style & SWT::VERTICAL)).equal?(0))
        new_x = Math.min(Math.max(0, event_x + x - @start_x - parent_border), parent_width - width)
      else
        new_y = Math.min(Math.max(0, event_y + y - @start_y - parent_border), parent_height - height)
      end
      if ((new_x).equal?(@last_x) && (new_y).equal?(@last_y))
        return 0
      end
      draw_band(@last_x, @last_y, width, height)
      event = Event.new
      event.attr_time = gdk_event.attr_time
      event.attr_x = new_x
      event.attr_y = new_y
      event.attr_width = width
      event.attr_height = height
      if (((self.attr_style & SWT::SMOOTH)).equal?(0))
        event.attr_detail = SWT::DRAG
      end
      if (!((self.attr_parent.attr_style & SWT::MIRRORED)).equal?(0))
        event.attr_x = self.attr_parent.get_client_width - width - event.attr_x
      end
      send_event___org_eclipse_swt_widgets_sash_15(SWT::Selection, event)
      if (is_disposed)
        return 0
      end
      if (event.attr_doit)
        @last_x = event.attr_x
        @last_y = event.attr_y
        if (!((self.attr_parent.attr_style & SWT::MIRRORED)).equal?(0))
          @last_x = self.attr_parent.get_client_width - width - @last_x
        end
      end
      self.attr_parent.update(true, ((self.attr_style & SWT::SMOOTH)).equal?(0))
      draw_band(@last_x, @last_y, width, height)
      if (!((self.attr_style & SWT::SMOOTH)).equal?(0))
        set_bounds(event.attr_x, @last_y, width, height)
        # widget could be disposed at this point
      end
      return result
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_realize(widget)
      set_cursor(!(self.attr_cursor).nil? ? self.attr_cursor.attr_handle : 0)
      return super(widget)
    end
    
    typesig { [] }
    def hook_events
      super
      OS.gtk_widget_add_events(self.attr_handle, OS::GDK_POINTER_MOTION_HINT_MASK)
    end
    
    typesig { [] }
    def release_widget
      super
      if (!(@default_cursor).equal?(0))
        OS.gdk_cursor_destroy(@default_cursor)
      end
      @default_cursor = 0
    end
    
    typesig { [SelectionListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the control is selected by the user.
    # 
    # @param listener the listener which should no longer be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SelectionListener
    # @see #addSelectionListener
    def remove_selection_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Selection, listener)
      self.attr_event_table.unhook(SWT::DefaultSelection, listener)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_cursor(cursor)
      super(!(cursor).equal?(0) ? cursor : @default_cursor)
    end
    
    typesig { [::Java::Int, GdkEventKey] }
    def traversal_code(key, event)
      return 0
    end
    
    private
    alias_method :initialize__sash, :initialize
  end
  
end
