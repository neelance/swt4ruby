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
  module ControlImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include_const ::Org::Eclipse::Swt::Internal, :Converter
      include_const ::Org::Eclipse::Swt::Internal::Accessibility::Gtk, :ATK
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
      include ::Org::Eclipse::Swt::Accessibility
    }
  end
  
  # Control is the abstract superclass of all windowed user interface classes.
  # <p>
  # <dl>
  # <dt><b>Styles:</b>
  # <dd>BORDER</dd>
  # <dd>LEFT_TO_RIGHT, RIGHT_TO_LEFT</dd>
  # <dt><b>Events:</b>
  # <dd>DragDetect, FocusIn, FocusOut, Help, KeyDown, KeyUp, MenuDetect, MouseDoubleClick, MouseDown, MouseEnter,
  # MouseExit, MouseHover, MouseUp, MouseMove, Move, Paint, Resize, Traverse</dd>
  # </dl>
  # </p><p>
  # Only one of LEFT_TO_RIGHT or RIGHT_TO_LEFT may be specified.
  # </p><p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#control">Control snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: ControlExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Control < ControlImports.const_get :Widget
    include_class_members ControlImports
    include Drawable
    
    # long
    attr_accessor :fixed_handle
    alias_method :attr_fixed_handle, :fixed_handle
    undef_method :fixed_handle
    alias_method :attr_fixed_handle=, :fixed_handle=
    undef_method :fixed_handle=
    
    # long
    attr_accessor :redraw_window
    alias_method :attr_redraw_window, :redraw_window
    undef_method :redraw_window
    alias_method :attr_redraw_window=, :redraw_window=
    undef_method :redraw_window=
    
    attr_accessor :enable_window
    alias_method :attr_enable_window, :enable_window
    undef_method :enable_window
    alias_method :attr_enable_window=, :enable_window=
    undef_method :enable_window=
    
    attr_accessor :draw_count
    alias_method :attr_draw_count, :draw_count
    undef_method :draw_count
    alias_method :attr_draw_count=, :draw_count=
    undef_method :draw_count=
    
    attr_accessor :parent
    alias_method :attr_parent, :parent
    undef_method :parent
    alias_method :attr_parent=, :parent=
    undef_method :parent=
    
    attr_accessor :cursor
    alias_method :attr_cursor, :cursor
    undef_method :cursor
    alias_method :attr_cursor=, :cursor=
    undef_method :cursor=
    
    attr_accessor :menu
    alias_method :attr_menu, :menu
    undef_method :menu
    alias_method :attr_menu=, :menu=
    undef_method :menu=
    
    attr_accessor :background_image
    alias_method :attr_background_image, :background_image
    undef_method :background_image
    alias_method :attr_background_image=, :background_image=
    undef_method :background_image=
    
    attr_accessor :font
    alias_method :attr_font, :font
    undef_method :font
    alias_method :attr_font=, :font=
    undef_method :font=
    
    attr_accessor :region
    alias_method :attr_region, :region
    undef_method :region
    alias_method :attr_region=, :region=
    undef_method :region=
    
    attr_accessor :tool_tip_text
    alias_method :attr_tool_tip_text, :tool_tip_text
    undef_method :tool_tip_text
    alias_method :attr_tool_tip_text=, :tool_tip_text=
    undef_method :tool_tip_text=
    
    attr_accessor :layout_data
    alias_method :attr_layout_data, :layout_data
    undef_method :layout_data
    alias_method :attr_layout_data=, :layout_data=
    undef_method :layout_data=
    
    attr_accessor :accessible
    alias_method :attr_accessible, :accessible
    undef_method :accessible
    alias_method :attr_accessible=, :accessible=
    undef_method :accessible=
    
    typesig { [] }
    def initialize
      @fixed_handle = 0
      @redraw_window = 0
      @enable_window = 0
      @draw_count = 0
      @parent = nil
      @cursor = nil
      @menu = nil
      @background_image = nil
      @font = nil
      @region = nil
      @tool_tip_text = nil
      @layout_data = nil
      @accessible = nil
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
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT#BORDER
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @fixed_handle = 0
      @redraw_window = 0
      @enable_window = 0
      @draw_count = 0
      @parent = nil
      @cursor = nil
      @menu = nil
      @background_image = nil
      @font = nil
      @region = nil
      @tool_tip_text = nil
      @layout_data = nil
      @accessible = nil
      super(parent, style)
      @parent = parent
      create_widget(0)
    end
    
    typesig { [] }
    def default_font
      return self.attr_display.get_system_font
    end
    
    typesig { [] }
    def deregister
      super
      if (!(@fixed_handle).equal?(0))
        self.attr_display.remove_widget(@fixed_handle)
      end
      # long
      im_handle_ = im_handle
      if (!(im_handle_).equal?(0))
        self.attr_display.remove_widget(im_handle_)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def draw_gripper(x, y, width, height, vertical)
      # long
      paint_handle_ = paint_handle
      # long
      window = OS._gtk_widget_window(paint_handle_)
      if ((window).equal?(0))
        return false
      end
      orientation = vertical ? OS::GTK_ORIENTATION_HORIZONTAL : OS::GTK_ORIENTATION_VERTICAL
      if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
        x = get_client_width - width - x
      end
      OS.gtk_paint_handle(OS.gtk_widget_get_style(paint_handle_), window, OS::GTK_STATE_NORMAL, OS::GTK_SHADOW_OUT, nil, paint_handle_, Array.typed(::Java::Byte).new(1) { 0 }, x, y, width, height, orientation)
      return true
    end
    
    typesig { [::Java::Boolean] }
    def enable_widget(enabled)
      OS.gtk_widget_set_sensitive(self.attr_handle, enabled)
    end
    
    typesig { [] }
    # long
    def enter_exit_handle
      return event_handle
    end
    
    typesig { [] }
    # long
    def event_handle
      return self.attr_handle
    end
    
    typesig { [] }
    # long
    def event_window
      # long
      event_handle_ = event_handle
      OS.gtk_widget_realize(event_handle_)
      return OS._gtk_widget_window(event_handle_)
    end
    
    typesig { [Control] }
    def fix_focus(focus_control)
      shell = get_shell
      control = self
      while (!(control).equal?(shell) && !((control = control.attr_parent)).nil?)
        if (control.set_focus)
          return
        end
      end
      shell.set_saved_focus(focus_control)
      # long
      focus_handle = shell.attr_vbox_handle
      OS._gtk_widget_set_flags(focus_handle, OS::GTK_CAN_FOCUS)
      OS.gtk_widget_grab_focus(focus_handle)
      OS._gtk_widget_unset_flags(focus_handle, OS::GTK_CAN_FOCUS)
    end
    
    typesig { [] }
    def fix_style
      if (!(@fixed_handle).equal?(0))
        fix_style(@fixed_handle)
      end
    end
    
    typesig { [::Java::Int] }
    # long
    def fix_style(handle)
      # Feature in GTK.  Some GTK themes apply a different background to
      # the contents of a GtkNotebook.  However, in an SWT TabFolder, the
      # children are not parented below the GtkNotebook widget, and usually
      # have their own GtkFixed.  The fix is to look up the correct style
      # for a child of a GtkNotebook and apply its background to any GtkFixed
      # widgets that are direct children of an SWT TabFolder.
      # 
      # Note that this has to be when the theme settings changes and that it
      # should not override the application background.
      if (!((self.attr_state & BACKGROUND)).equal?(0))
        return
      end
      # long
      child_style_ = @parent.child_style
      if (!(child_style_).equal?(0))
        color = GdkColor.new
        OS.gtk_style_get_bg(child_style_, 0, color)
        OS.gtk_widget_modify_bg(handle, 0, color)
      end
    end
    
    typesig { [] }
    # long
    def focus_handle
      return self.attr_handle
    end
    
    typesig { [] }
    # long
    def font_handle
      return self.attr_handle
    end
    
    typesig { [] }
    def has_focus
      return (self).equal?(self.attr_display.get_focus_control)
    end
    
    typesig { [] }
    def hook_events
      # Connect the keyboard signals
      # long
      focus_handle_ = focus_handle
      focus_mask = OS::GDK_KEY_PRESS_MASK | OS::GDK_KEY_RELEASE_MASK | OS::GDK_FOCUS_CHANGE_MASK
      OS.gtk_widget_add_events(focus_handle_, focus_mask)
      OS.g_signal_connect_closure_by_id(focus_handle_, self.attr_display.attr_signal_ids[POPUP_MENU], 0, self.attr_display.attr_closures[POPUP_MENU], false)
      OS.g_signal_connect_closure_by_id(focus_handle_, self.attr_display.attr_signal_ids[SHOW_HELP], 0, self.attr_display.attr_closures[SHOW_HELP], false)
      OS.g_signal_connect_closure_by_id(focus_handle_, self.attr_display.attr_signal_ids[KEY_PRESS_EVENT], 0, self.attr_display.attr_closures[KEY_PRESS_EVENT], false)
      OS.g_signal_connect_closure_by_id(focus_handle_, self.attr_display.attr_signal_ids[KEY_RELEASE_EVENT], 0, self.attr_display.attr_closures[KEY_RELEASE_EVENT], false)
      OS.g_signal_connect_closure_by_id(focus_handle_, self.attr_display.attr_signal_ids[FOCUS], 0, self.attr_display.attr_closures[FOCUS], false)
      OS.g_signal_connect_closure_by_id(focus_handle_, self.attr_display.attr_signal_ids[FOCUS_IN_EVENT], 0, self.attr_display.attr_closures[FOCUS_IN_EVENT], false)
      OS.g_signal_connect_closure_by_id(focus_handle_, self.attr_display.attr_signal_ids[FOCUS_OUT_EVENT], 0, self.attr_display.attr_closures[FOCUS_OUT_EVENT], false)
      # Connect the mouse signals
      # long
      event_handle_ = event_handle
      event_mask = OS::GDK_POINTER_MOTION_MASK | OS::GDK_BUTTON_PRESS_MASK | OS::GDK_BUTTON_RELEASE_MASK
      OS.gtk_widget_add_events(event_handle_, event_mask)
      OS.g_signal_connect_closure_by_id(event_handle_, self.attr_display.attr_signal_ids[BUTTON_PRESS_EVENT], 0, self.attr_display.attr_closures[BUTTON_PRESS_EVENT], false)
      OS.g_signal_connect_closure_by_id(event_handle_, self.attr_display.attr_signal_ids[BUTTON_RELEASE_EVENT], 0, self.attr_display.attr_closures[BUTTON_RELEASE_EVENT], false)
      OS.g_signal_connect_closure_by_id(event_handle_, self.attr_display.attr_signal_ids[MOTION_NOTIFY_EVENT], 0, self.attr_display.attr_closures[MOTION_NOTIFY_EVENT], false)
      OS.g_signal_connect_closure_by_id(event_handle_, self.attr_display.attr_signal_ids[SCROLL_EVENT], 0, self.attr_display.attr_closures[SCROLL_EVENT], false)
      # Connect enter/exit signals
      # long
      enter_exit_handle_ = enter_exit_handle
      enter_exit_mask = OS::GDK_ENTER_NOTIFY_MASK | OS::GDK_LEAVE_NOTIFY_MASK
      OS.gtk_widget_add_events(enter_exit_handle_, enter_exit_mask)
      OS.g_signal_connect_closure_by_id(enter_exit_handle_, self.attr_display.attr_signal_ids[ENTER_NOTIFY_EVENT], 0, self.attr_display.attr_closures[ENTER_NOTIFY_EVENT], false)
      OS.g_signal_connect_closure_by_id(enter_exit_handle_, self.attr_display.attr_signal_ids[LEAVE_NOTIFY_EVENT], 0, self.attr_display.attr_closures[LEAVE_NOTIFY_EVENT], false)
      # Feature in GTK.  Events such as mouse move are propagate up
      # the widget hierarchy and are seen by the parent.  This is the
      # correct GTK behavior but not correct for SWT.  The fix is to
      # hook a signal after and stop the propagation using a negative
      # event number to distinguish this case.
      # 
      # The signal is hooked to the fixedHandle to catch events sent to
      # lightweight widgets.
      # 
      # long
      block_handle = !(@fixed_handle).equal?(0) ? @fixed_handle : event_handle_
      OS.g_signal_connect_closure_by_id(block_handle, self.attr_display.attr_signal_ids[BUTTON_PRESS_EVENT], 0, self.attr_display.attr_closures[BUTTON_PRESS_EVENT_INVERSE], true)
      OS.g_signal_connect_closure_by_id(block_handle, self.attr_display.attr_signal_ids[BUTTON_RELEASE_EVENT], 0, self.attr_display.attr_closures[BUTTON_RELEASE_EVENT_INVERSE], true)
      OS.g_signal_connect_closure_by_id(block_handle, self.attr_display.attr_signal_ids[MOTION_NOTIFY_EVENT], 0, self.attr_display.attr_closures[MOTION_NOTIFY_EVENT_INVERSE], true)
      # Connect the event_after signal for both key and mouse
      OS.g_signal_connect_closure_by_id(event_handle_, self.attr_display.attr_signal_ids[EVENT_AFTER], 0, self.attr_display.attr_closures[EVENT_AFTER], false)
      if (!(focus_handle_).equal?(event_handle_))
        OS.g_signal_connect_closure_by_id(focus_handle_, self.attr_display.attr_signal_ids[EVENT_AFTER], 0, self.attr_display.attr_closures[EVENT_AFTER], false)
      end
      # Connect the paint signal
      # long
      paint_handle_ = paint_handle
      paint_mask = OS::GDK_EXPOSURE_MASK | OS::GDK_VISIBILITY_NOTIFY_MASK
      OS.gtk_widget_add_events(paint_handle_, paint_mask)
      OS.g_signal_connect_closure_by_id(paint_handle_, self.attr_display.attr_signal_ids[EXPOSE_EVENT], 0, self.attr_display.attr_closures[EXPOSE_EVENT_INVERSE], false)
      OS.g_signal_connect_closure_by_id(paint_handle_, self.attr_display.attr_signal_ids[VISIBILITY_NOTIFY_EVENT], 0, self.attr_display.attr_closures[VISIBILITY_NOTIFY_EVENT], false)
      OS.g_signal_connect_closure_by_id(paint_handle_, self.attr_display.attr_signal_ids[EXPOSE_EVENT], 0, self.attr_display.attr_closures[EXPOSE_EVENT], true)
      # Connect the Input Method signals
      OS.g_signal_connect_closure_by_id(self.attr_handle, self.attr_display.attr_signal_ids[REALIZE], 0, self.attr_display.attr_closures[REALIZE], true)
      OS.g_signal_connect_closure_by_id(self.attr_handle, self.attr_display.attr_signal_ids[UNREALIZE], 0, self.attr_display.attr_closures[UNREALIZE], false)
      # long
      im_handle_ = im_handle
      if (!(im_handle_).equal?(0))
        OS.g_signal_connect_closure(im_handle_, OS.attr_commit, self.attr_display.attr_closures[COMMIT], false)
        OS.g_signal_connect_closure(im_handle_, OS.attr_preedit_changed, self.attr_display.attr_closures[PREEDIT_CHANGED], false)
      end
      OS.g_signal_connect_closure_by_id(paint_handle_, self.attr_display.attr_signal_ids[STYLE_SET], 0, self.attr_display.attr_closures[STYLE_SET], false)
      # long
      top_handle_ = top_handle
      OS.g_signal_connect_closure_by_id(top_handle_, self.attr_display.attr_signal_ids[MAP], 0, self.attr_display.attr_closures[MAP], true)
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def hover_proc(widget)
      x = Array.typed(::Java::Int).new(1) { 0 }
      y = Array.typed(::Java::Int).new(1) { 0 }
      mask = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_pointer(0, x, y, mask)
      # time
      send_mouse_event(SWT::MouseHover, 0, 0, x[0], y[0], false, mask[0])
      # Always return zero in order to cancel the hover timer
      return 0
    end
    
    typesig { [] }
    # long
    def top_handle
      if (!(@fixed_handle).equal?(0))
        return @fixed_handle
      end
      return super
    end
    
    typesig { [] }
    # long
    def paint_handle
      # long
      top_handle_ = top_handle
      # long
      paint_handle_ = self.attr_handle
      while (!(paint_handle_).equal?(top_handle_))
        if (((OS._gtk_widget_flags(paint_handle_) & OS::GTK_NO_WINDOW)).equal?(0))
          break
        end
        paint_handle_ = OS.gtk_widget_get_parent(paint_handle_)
      end
      return paint_handle_
    end
    
    typesig { [] }
    # long
    def paint_window
      # long
      paint_handle_ = paint_handle
      OS.gtk_widget_realize(paint_handle_)
      return OS._gtk_widget_window(paint_handle_)
    end
    
    typesig { [SwtGC] }
    # Prints the receiver and all children.
    # 
    # @param gc the gc where the drawing occurs
    # @return <code>true</code> if the operation was successful and <code>false</code> otherwise
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
    # @since 3.4
    def print(gc)
      check_widget
      if ((gc).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (gc.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      # long
      top_handle_ = top_handle
      OS.gtk_widget_realize(top_handle_)
      # long
      window = OS._gtk_widget_window(top_handle_)
      data = gc.get_gcdata
      OS.gdk_window_process_updates(window, true)
      print_widget(gc, data.attr_drawable, OS.gdk_drawable_get_depth(data.attr_drawable), 0, 0)
      return true
    end
    
    typesig { [SwtGC, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    def print_widget(gc, drawable, depth, x, y)
      obscured = !((self.attr_state & OBSCURED)).equal?(0)
      self.attr_state &= ~OBSCURED
      # long
      top_handle_ = top_handle
      # long
      window = OS._gtk_widget_window(top_handle_)
      print_window(true, self, gc.attr_handle, drawable, depth, window, x, y)
      if (obscured)
        self.attr_state |= OBSCURED
      end
    end
    
    typesig { [::Java::Boolean, Control, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def print_window(first, control, gc, drawable, depth, window, x, y)
      if (!(OS.gdk_drawable_get_depth(window)).equal?(depth))
        return
      end
      rect = GdkRectangle.new
      width = Array.typed(::Java::Int).new(1) { 0 }
      height = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_drawable_get_size(window, width, height)
      rect.attr_width = width[0]
      rect.attr_height = height[0]
      OS.gdk_window_begin_paint_rect(window, rect)
      # long
      # long
      real_drawable = Array.typed(::Java::Int).new(1) { 0 }
      x_offset = Array.typed(::Java::Int).new(1) { 0 }
      y_offset = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_internal_paint_info(window, real_drawable, x_offset, y_offset)
      # long
      # long
      user_data = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_user_data(window, user_data)
      if (!(user_data[0]).equal?(0))
        # long
        event_ptr = OS.gdk_event_new(OS::GDK_EXPOSE)
        event = GdkEventExpose.new
        event.attr_type = OS::GDK_EXPOSE
        event.attr_window = OS.g_object_ref(window)
        event.attr_area_width = rect.attr_width
        event.attr_area_height = rect.attr_height
        event.attr_region = OS.gdk_region_rectangle(rect)
        OS.memmove(event_ptr, event, GdkEventExpose.attr_sizeof)
        OS.gtk_widget_send_expose(user_data[0], event_ptr)
        OS.gdk_event_free(event_ptr)
      end
      src_x = x_offset[0]
      src_y = y_offset[0]
      dest_x = x
      dest_y = y
      dest_width = width[0]
      dest_height = height[0]
      if (!first)
        c_x = Array.typed(::Java::Int).new(1) { 0 }
        c_y = Array.typed(::Java::Int).new(1) { 0 }
        OS.gdk_window_get_position(window, c_x, c_y)
        # long
        parent_window = OS.gdk_window_get_parent(window)
        p_w = Array.typed(::Java::Int).new(1) { 0 }
        p_h = Array.typed(::Java::Int).new(1) { 0 }
        OS.gdk_drawable_get_size(parent_window, p_w, p_h)
        src_x = x_offset[0] - c_x[0]
        src_y = y_offset[0] - c_y[0]
        dest_x = x - c_x[0]
        dest_y = y - c_y[0]
        dest_width = Math.min(c_x[0] + width[0], p_w[0])
        dest_height = Math.min(c_y[0] + height[0], p_h[0])
      end
      OS.gdk_draw_drawable(drawable, gc, real_drawable[0], src_x, src_y, dest_x, dest_y, dest_width, dest_height)
      OS.gdk_window_end_paint(window)
      # long
      children = OS.gdk_window_get_children(window)
      if (!(children).equal?(0))
        # long
        windows = children
        while (!(windows).equal?(0))
          # long
          child = OS.g_list_data(windows)
          if (OS.gdk_window_is_visible(child))
            # long
            # long
            data = Array.typed(::Java::Int).new(1) { 0 }
            OS.gdk_window_get_user_data(child, data)
            if (!(data[0]).equal?(0))
              widget = self.attr_display.find_widget(data[0])
              if ((widget).nil? || (widget).equal?(control))
                x_pos = Array.typed(::Java::Int).new(1) { 0 }
                y_pos = Array.typed(::Java::Int).new(1) { 0 }
                OS.gdk_window_get_position(child, x_pos, y_pos)
                print_window(false, control, gc, drawable, depth, child, x + x_pos[0], y + y_pos[0])
              end
            end
          end
          windows = OS.g_list_next(windows)
        end
        OS.g_list_free(children)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns the preferred size of the receiver.
    # <p>
    # The <em>preferred size</em> of a control is the size that it would
    # best be displayed at. The width hint and height hint arguments
    # allow the caller to ask a control questions such as "Given a particular
    # width, how high does the control need to be to show all of the contents?"
    # To indicate that the caller does not wish to constrain a particular
    # dimension, the constant <code>SWT.DEFAULT</code> is passed for the hint.
    # </p>
    # 
    # @param wHint the width hint (can be <code>SWT.DEFAULT</code>)
    # @param hHint the height hint (can be <code>SWT.DEFAULT</code>)
    # @return the preferred size of the control
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Layout
    # @see #getBorderWidth
    # @see #getBounds
    # @see #getSize
    # @see #pack(boolean)
    # @see "computeTrim, getClientArea for controls that implement them"
    def compute_size(w_hint, h_hint)
      return compute_size(w_hint, h_hint, true)
    end
    
    typesig { [] }
    def compute_tab_group
      if (is_tab_group)
        return self
      end
      return @parent.compute_tab_group
    end
    
    typesig { [] }
    def compute_tab_list
      if (is_tab_group)
        if (get_visible && get_enabled)
          return Array.typed(Control).new([self])
        end
      end
      return Array.typed(Control).new(0) { nil }
    end
    
    typesig { [] }
    def compute_tab_root
      tab_list = @parent.__get_tab_list
      if (!(tab_list).nil?)
        index = 0
        while (index < tab_list.attr_length)
          if ((tab_list[index]).equal?(self))
            break
          end
          index += 1
        end
        if ((index).equal?(tab_list.attr_length))
          if (is_tab_group)
            return self
          end
        end
      end
      return @parent.compute_tab_root
    end
    
    typesig { [] }
    def check_buffered
      self.attr_style |= SWT::DOUBLE_BUFFERED
    end
    
    typesig { [] }
    def check_background
      shell = get_shell
      if ((self).equal?(shell))
        return
      end
      self.attr_state &= ~PARENT_BACKGROUND
      composite = @parent
      begin
        mode = composite.attr_background_mode
        if (!(mode).equal?(SWT::INHERIT_NONE))
          if ((mode).equal?(SWT::INHERIT_DEFAULT))
            control = self
            begin
              if (((control.attr_state & THEME_BACKGROUND)).equal?(0))
                return
              end
              control = control.attr_parent
            end while (!(control).equal?(composite))
          end
          self.attr_state |= PARENT_BACKGROUND
          return
        end
        if ((composite).equal?(shell))
          break
        end
        composite = composite.attr_parent
      end while (true)
    end
    
    typesig { [] }
    def check_border
      if ((get_border_width).equal?(0))
        self.attr_style &= ~SWT::BORDER
      end
    end
    
    typesig { [] }
    def check_mirrored
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        self.attr_style |= SWT::MIRRORED
      end
    end
    
    typesig { [] }
    # long
    def child_style
      return @parent.child_style
    end
    
    typesig { [::Java::Int] }
    def create_widget(index)
      self.attr_state |= DRAG_DETECT
      check_orientation(@parent)
      super(index)
      check_background
      if (!((self.attr_state & PARENT_BACKGROUND)).equal?(0))
        set_background
      end
      check_buffered
      show_widget
      set_initial_bounds
      set_zorder(nil, false, false)
      set_relations
      check_mirrored
      check_border
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    # Returns the preferred size of the receiver.
    # <p>
    # The <em>preferred size</em> of a control is the size that it would
    # best be displayed at. The width hint and height hint arguments
    # allow the caller to ask a control questions such as "Given a particular
    # width, how high does the control need to be to show all of the contents?"
    # To indicate that the caller does not wish to constrain a particular
    # dimension, the constant <code>SWT.DEFAULT</code> is passed for the hint.
    # </p><p>
    # If the changed flag is <code>true</code>, it indicates that the receiver's
    # <em>contents</em> have changed, therefore any caches that a layout manager
    # containing the control may have been keeping need to be flushed. When the
    # control is resized, the changed flag will be <code>false</code>, so layout
    # manager caches can be retained.
    # </p>
    # 
    # @param wHint the width hint (can be <code>SWT.DEFAULT</code>)
    # @param hHint the height hint (can be <code>SWT.DEFAULT</code>)
    # @param changed <code>true</code> if the control's contents have changed, and <code>false</code> otherwise
    # @return the preferred size of the control.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Layout
    # @see #getBorderWidth
    # @see #getBounds
    # @see #getSize
    # @see #pack(boolean)
    # @see "computeTrim, getClientArea for controls that implement them"
    def compute_size(w_hint, h_hint, changed)
      check_widget
      if (!(w_hint).equal?(SWT::DEFAULT) && w_hint < 0)
        w_hint = 0
      end
      if (!(h_hint).equal?(SWT::DEFAULT) && h_hint < 0)
        h_hint = 0
      end
      return compute_native_size(self.attr_handle, w_hint, h_hint, changed)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    # long
    def compute_native_size(h, w_hint, h_hint, changed)
      width = w_hint
      height = h_hint
      if ((w_hint).equal?(SWT::DEFAULT) && (h_hint).equal?(SWT::DEFAULT))
        requisition = GtkRequisition.new
        gtk_widget_size_request(h, requisition)
        width = OS._gtk_widget_requisition_width(h)
        height = OS._gtk_widget_requisition_height(h)
      else
        if ((w_hint).equal?(SWT::DEFAULT) || (h_hint).equal?(SWT::DEFAULT))
          req_width = Array.typed(::Java::Int).new(1) { 0 }
          req_height = Array.typed(::Java::Int).new(1) { 0 }
          OS.gtk_widget_get_size_request(h, req_width, req_height)
          OS.gtk_widget_set_size_request(h, w_hint, h_hint)
          requisition = GtkRequisition.new
          gtk_widget_size_request(h, requisition)
          OS.gtk_widget_set_size_request(h, req_width[0], req_height[0])
          width = (w_hint).equal?(SWT::DEFAULT) ? requisition.attr_width : w_hint
          height = (h_hint).equal?(SWT::DEFAULT) ? requisition.attr_height : h_hint
        end
      end
      return Point.new(width, height)
    end
    
    typesig { [] }
    def force_resize
      # Force size allocation on all children of this widget's
      # topHandle.  Note that all calls to gtk_widget_size_allocate()
      # must be preceded by a call to gtk_widget_size_request().
      # 
      # long
      top_handle_ = top_handle
      requisition = GtkRequisition.new
      gtk_widget_size_request(top_handle_, requisition)
      allocation = GtkAllocation.new
      allocation.attr_x = OS._gtk_widget_x(top_handle_)
      allocation.attr_y = OS._gtk_widget_y(top_handle_)
      allocation.attr_width = OS._gtk_widget_width(top_handle_)
      allocation.attr_height = OS._gtk_widget_height(top_handle_)
      OS.gtk_widget_size_allocate(top_handle_, allocation)
    end
    
    typesig { [] }
    # Returns the accessible object for the receiver.
    # If this is the first time this object is requested,
    # then the object is created and returned.
    # 
    # @return the accessible object
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Accessible#addAccessibleListener
    # @see Accessible#addAccessibleControlListener
    # 
    # @since 2.0
    def get_accessible
      check_widget
      if ((@accessible).nil?)
        @accessible = Accessible.internal_new__accessible(self)
      end
      return @accessible
    end
    
    typesig { [] }
    # Returns a rectangle describing the receiver's size and location
    # relative to its parent (or its display if its parent is null),
    # unless the receiver is a shell. In this case, the location is
    # relative to the display.
    # 
    # @return the receiver's bounding rectangle
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_bounds
      check_widget
      # long
      top_handle_ = top_handle
      x = OS._gtk_widget_x(top_handle_)
      y = OS._gtk_widget_y(top_handle_)
      width = !((self.attr_state & ZERO_WIDTH)).equal?(0) ? 0 : OS._gtk_widget_width(top_handle_)
      height = !((self.attr_state & ZERO_HEIGHT)).equal?(0) ? 0 : OS._gtk_widget_height(top_handle_)
      if (!((@parent.attr_style & SWT::MIRRORED)).equal?(0))
        x = @parent.get_client_width - width - x
      end
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [Rectangle] }
    # Sets the receiver's size and location to the rectangular
    # area specified by the argument. The <code>x</code> and
    # <code>y</code> fields of the rectangle are relative to
    # the receiver's parent (or its display if its parent is null).
    # <p>
    # Note: Attempting to set the width or height of the
    # receiver to a negative number will cause that
    # value to be set to zero instead.
    # </p>
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
      set_bounds(rect.attr_x, rect.attr_y, Math.max(0, rect.attr_width), Math.max(0, rect.attr_height), true, true)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Sets the receiver's size and location to the rectangular
    # area specified by the arguments. The <code>x</code> and
    # <code>y</code> arguments are relative to the receiver's
    # parent (or its display if its parent is null), unless
    # the receiver is a shell. In this case, the <code>x</code>
    # and <code>y</code> arguments are relative to the display.
    # <p>
    # Note: Attempting to set the width or height of the
    # receiver to a negative number will cause that
    # value to be set to zero instead.
    # </p>
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
      set_bounds(x, y, Math.max(0, width), Math.max(0, height), true, true)
    end
    
    typesig { [::Java::Boolean, ::Java::Boolean] }
    def mark_layout(changed, all)
      # Do nothing
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def modify_style(handle, style)
      super(handle, style)
      # Bug in GTK.  When changing the style of a control that
      # has had a region set on it, the region is lost.  The
      # fix is to set the region again.
      if (!(@region).nil?)
        OS.gdk_window_shape_combine_region(OS._gtk_widget_window(top_handle), @region.attr_handle, 0, 0)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def move_handle(x, y)
      # long
      top_handle_ = top_handle
      # long
      parent_handle = @parent.parenting_handle
      # Feature in GTK.  Calling gtk_fixed_move() to move a child causes
      # the whole parent to redraw.  This is a performance problem. The
      # fix is temporarily make the parent not visible during the move.
      # 
      # NOTE: Because every widget in SWT has an X window, the new and
      # old bounds of the child are correctly redrawn.
      flags = OS._gtk_widget_flags(parent_handle)
      OS._gtk_widget_unset_flags(parent_handle, OS::GTK_VISIBLE)
      OS.gtk_fixed_move(parent_handle, top_handle_, x, y)
      if (!((flags & OS::GTK_VISIBLE)).equal?(0))
        OS._gtk_widget_set_flags(parent_handle, OS::GTK_VISIBLE)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def resize_handle(width, height)
      # long
      top_handle_ = top_handle
      OS.gtk_widget_set_size_request(top_handle_, width, height)
      if (!(top_handle_).equal?(self.attr_handle))
        OS.gtk_widget_set_size_request(self.attr_handle, width, height)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize)
      # long
      top_handle_ = top_handle
      send_move = move
      if (!((@parent.attr_style & SWT::MIRRORED)).equal?(0))
        client_width = @parent.get_client_width
        old_width = !((self.attr_state & ZERO_WIDTH)).equal?(0) ? 0 : OS._gtk_widget_width(top_handle_)
        old_x = client_width - old_width - OS._gtk_widget_x(top_handle_)
        if (move)
          send_move &= !(x).equal?(old_x)
          x = client_width - (resize ? width : old_width) - x
        else
          move = true
          x = client_width - (resize ? width : old_width) - old_x
          y = OS._gtk_widget_y(top_handle_)
        end
      end
      same_origin = true
      same_extent = true
      if (move)
        old_x = OS._gtk_widget_x(top_handle_)
        old_y = OS._gtk_widget_y(top_handle_)
        same_origin = (x).equal?(old_x) && (y).equal?(old_y)
        if (!same_origin)
          if (!(@enable_window).equal?(0))
            OS.gdk_window_move(@enable_window, x, y)
          end
          move_handle(x, y)
        end
      end
      client_width = 0
      if (resize)
        old_width = !((self.attr_state & ZERO_WIDTH)).equal?(0) ? 0 : OS._gtk_widget_width(top_handle_)
        old_height = !((self.attr_state & ZERO_HEIGHT)).equal?(0) ? 0 : OS._gtk_widget_height(top_handle_)
        same_extent = (width).equal?(old_width) && (height).equal?(old_height)
        if (!same_extent && !((self.attr_style & SWT::MIRRORED)).equal?(0))
          client_width = get_client_width
        end
        if (!same_extent && !((width).equal?(0) && (height).equal?(0)))
          new_width = Math.max(1, width)
          new_height = Math.max(1, height)
          if (!(@redraw_window).equal?(0))
            OS.gdk_window_resize(@redraw_window, new_width, new_height)
          end
          if (!(@enable_window).equal?(0))
            OS.gdk_window_resize(@enable_window, new_width, new_height)
          end
          resize_handle(new_width, new_height)
        end
      end
      if (!same_origin || !same_extent)
        # Cause a size allocation this widget's topHandle.  Note that
        # all calls to gtk_widget_size_allocate() must be preceded by
        # a call to gtk_widget_size_request().
        requisition = GtkRequisition.new
        gtk_widget_size_request(top_handle_, requisition)
        allocation = GtkAllocation.new
        if (move)
          allocation.attr_x = x
          allocation.attr_y = y
        else
          allocation.attr_x = OS._gtk_widget_x(top_handle_)
          allocation.attr_y = OS._gtk_widget_y(top_handle_)
        end
        if (resize)
          allocation.attr_width = width
          allocation.attr_height = height
        else
          allocation.attr_width = OS._gtk_widget_width(top_handle_)
          allocation.attr_height = OS._gtk_widget_height(top_handle_)
        end
        OS.gtk_widget_size_allocate(top_handle_, allocation)
      end
      # Bug in GTK.  Widgets cannot be sized smaller than 1x1.
      # The fix is to hide zero-sized widgets and show them again
      # when they are resized larger.
      if (!same_extent)
        self.attr_state = ((width).equal?(0)) ? self.attr_state | ZERO_WIDTH : self.attr_state & ~ZERO_WIDTH
        self.attr_state = ((height).equal?(0)) ? self.attr_state | ZERO_HEIGHT : self.attr_state & ~ZERO_HEIGHT
        if (!((self.attr_state & (ZERO_WIDTH | ZERO_HEIGHT))).equal?(0))
          if (!(@enable_window).equal?(0))
            OS.gdk_window_hide(@enable_window)
          end
          OS.gtk_widget_hide(top_handle_)
        else
          if (((self.attr_state & HIDDEN)).equal?(0))
            if (!(@enable_window).equal?(0))
              OS.gdk_window_show_unraised(@enable_window)
            end
            OS.gtk_widget_show(top_handle_)
          end
        end
        if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
          move_children(client_width)
        end
      end
      result = 0
      if (move && !same_origin)
        control = find_background_control
        if (!(control).nil? && !(control.attr_background_image).nil?)
          if (is_visible)
            redraw_widget(0, 0, 0, 0, true, true, true)
          end
        end
        if (send_move)
          send_event(SWT::Move)
        end
        result |= MOVED
      end
      if (resize && !same_extent)
        send_event(SWT::Resize)
        result |= RESIZED
      end
      return result
    end
    
    typesig { [] }
    # Returns a point describing the receiver's location relative
    # to its parent (or its display if its parent is null), unless
    # the receiver is a shell. In this case, the point is
    # relative to the display.
    # 
    # @return the receiver's location
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_location
      check_widget
      # long
      top_handle_ = top_handle
      x = OS._gtk_widget_x(top_handle_)
      y = OS._gtk_widget_y(top_handle_)
      if (!((@parent.attr_style & SWT::MIRRORED)).equal?(0))
        width = !((self.attr_state & ZERO_WIDTH)).equal?(0) ? 0 : OS._gtk_widget_width(top_handle_)
        x = @parent.get_client_width - width - x
      end
      return Point.new(x, y)
    end
    
    typesig { [Point] }
    # Sets the receiver's location to the point specified by
    # the arguments which are relative to the receiver's
    # parent (or its display if its parent is null), unless
    # the receiver is a shell. In this case, the point is
    # relative to the display.
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
      set_bounds(location.attr_x, location.attr_y, 0, 0, true, false)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Sets the receiver's location to the point specified by
    # the arguments which are relative to the receiver's
    # parent (or its display if its parent is null), unless
    # the receiver is a shell. In this case, the point is
    # relative to the display.
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
      set_bounds(x, y, 0, 0, true, false)
    end
    
    typesig { [] }
    # Returns a point describing the receiver's size. The
    # x coordinate of the result is the width of the receiver.
    # The y coordinate of the result is the height of the
    # receiver.
    # 
    # @return the receiver's size
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_size
      check_widget
      # long
      top_handle_ = top_handle
      width = !((self.attr_state & ZERO_WIDTH)).equal?(0) ? 0 : OS._gtk_widget_width(top_handle_)
      height = !((self.attr_state & ZERO_HEIGHT)).equal?(0) ? 0 : OS._gtk_widget_height(top_handle_)
      return Point.new(width, height)
    end
    
    typesig { [Point] }
    # Sets the receiver's size to the point specified by the argument.
    # <p>
    # Note: Attempting to set the width or height of the
    # receiver to a negative number will cause them to be
    # set to zero instead.
    # </p>
    # 
    # @param size the new size for the receiver
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
      set_bounds(0, 0, Math.max(0, size.attr_x), Math.max(0, size.attr_y), false, true)
    end
    
    typesig { [Region] }
    # Sets the shape of the control to the region specified
    # by the argument.  When the argument is null, the
    # default shape of the control is restored.
    # 
    # @param region the region that defines the shape of the control (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the region has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def set_region(region)
      check_widget
      if (!(region).nil? && region.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      # long
      window = OS._gtk_widget_window(top_handle)
      # long
      shape_region = ((region).nil?) ? 0 : region.attr_handle
      OS.gdk_window_shape_combine_region(window, shape_region, 0, 0)
      @region = region
    end
    
    typesig { [] }
    def set_relations
      # long
      parent_handle = @parent.parenting_handle
      # long
      list = OS.gtk_container_get_children(parent_handle)
      if ((list).equal?(0))
        return
      end
      count = OS.g_list_length(list)
      if (count > 1)
        # the receiver is the last item in the list, so its predecessor will
        # be the second-last item in the list
        # 
        # long
        handle = OS.g_list_nth_data(list, count - 2)
        if (!(handle).equal?(0))
          widget = self.attr_display.get_widget(handle)
          if (!(widget).nil? && !(widget).equal?(self))
            if (widget.is_a?(Control))
              sibling = widget
              sibling.add_relation(self)
            end
          end
        end
      end
      OS.g_list_free(list)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Sets the receiver's size to the point specified by the arguments.
    # <p>
    # Note: Attempting to set the width or height of the
    # receiver to a negative number will cause that
    # value to be set to zero instead.
    # </p>
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
      set_bounds(0, 0, Math.max(0, width), Math.max(0, height), false, true)
    end
    
    typesig { [] }
    # Answers a boolean indicating whether a Label that precedes the receiver in
    # a layout should be read by screen readers as the recevier's label.
    def is_described_by_label
      return true
    end
    
    typesig { [::Java::Int] }
    # long
    def is_focus_handle(widget)
      return (widget).equal?(focus_handle)
    end
    
    typesig { [Control] }
    # Moves the receiver above the specified control in the
    # drawing order. If the argument is null, then the receiver
    # is moved to the top of the drawing order. The control at
    # the top of the drawing order will not be covered by other
    # controls even if they occupy intersecting areas.
    # 
    # @param control the sibling control (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the control has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Control#moveBelow
    # @see Composite#getChildren
    def move_above(control)
      check_widget
      if (!(control).nil?)
        if (control.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (!(@parent).equal?(control.attr_parent))
          return
        end
      end
      set_zorder(control, true, true)
    end
    
    typesig { [Control] }
    # Moves the receiver below the specified control in the
    # drawing order. If the argument is null, then the receiver
    # is moved to the bottom of the drawing order. The control at
    # the bottom of the drawing order will be covered by all other
    # controls which occupy intersecting areas.
    # 
    # @param control the sibling control (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the control has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Control#moveAbove
    # @see Composite#getChildren
    def move_below(control)
      check_widget
      if (!(control).nil?)
        if (control.is_disposed)
          error(SWT::ERROR_INVALID_ARGUMENT)
        end
        if (!(@parent).equal?(control.attr_parent))
          return
        end
      end
      set_zorder(control, false, true)
    end
    
    typesig { [::Java::Int] }
    def move_children(old_width)
    end
    
    typesig { [] }
    # Causes the receiver to be resized to its preferred size.
    # For a composite, this involves computing the preferred size
    # from its layout, if there is one.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #computeSize(int, int, boolean)
    def pack
      pack(true)
    end
    
    typesig { [::Java::Boolean] }
    # Causes the receiver to be resized to its preferred size.
    # For a composite, this involves computing the preferred size
    # from its layout, if there is one.
    # <p>
    # If the changed flag is <code>true</code>, it indicates that the receiver's
    # <em>contents</em> have changed, therefore any caches that a layout manager
    # containing the control may have been keeping need to be flushed. When the
    # control is resized, the changed flag will be <code>false</code>, so layout
    # manager caches can be retained.
    # </p>
    # 
    # @param changed whether or not the receiver's contents have changed
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #computeSize(int, int, boolean)
    def pack(changed)
      set_size(compute_size(SWT::DEFAULT, SWT::DEFAULT, changed))
    end
    
    typesig { [Object] }
    # Sets the layout data associated with the receiver to the argument.
    # 
    # @param layoutData the new layout data for the receiver.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_layout_data(layout_data)
      check_widget
      @layout_data = layout_data
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns a point which is the result of converting the
    # argument, which is specified in display relative coordinates,
    # to coordinates relative to the receiver.
    # <p>
    # @param x the x coordinate to be translated
    # @param y the y coordinate to be translated
    # @return the translated coordinates
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.1
    def to_control(x, y)
      check_widget
      # long
      window = event_window
      origin_x = Array.typed(::Java::Int).new(1) { 0 }
      origin_y = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_origin(window, origin_x, origin_y)
      x -= origin_x[0]
      y -= origin_y[0]
      if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
        x = get_client_width - x
      end
      return Point.new(x, y)
    end
    
    typesig { [Point] }
    # Returns a point which is the result of converting the
    # argument, which is specified in display relative coordinates,
    # to coordinates relative to the receiver.
    # <p>
    # @param point the point to be translated (must not be null)
    # @return the translated coordinates
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def to_control(point)
      check_widget
      if ((point).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      return to_control(point.attr_x, point.attr_y)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Returns a point which is the result of converting the
    # argument, which is specified in coordinates relative to
    # the receiver, to display relative coordinates.
    # <p>
    # @param x the x coordinate to be translated
    # @param y the y coordinate to be translated
    # @return the translated coordinates
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 2.1
    def to_display(x, y)
      check_widget
      # long
      window = event_window
      origin_x = Array.typed(::Java::Int).new(1) { 0 }
      origin_y = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_origin(window, origin_x, origin_y)
      if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
        x = get_client_width - x
      end
      x += origin_x[0]
      y += origin_y[0]
      return Point.new(x, y)
    end
    
    typesig { [Point] }
    # Returns a point which is the result of converting the
    # argument, which is specified in coordinates relative to
    # the receiver, to display relative coordinates.
    # <p>
    # @param point the point to be translated (must not be null)
    # @return the translated coordinates
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the point is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def to_display(point)
      check_widget
      if ((point).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      return to_display(point.attr_x, point.attr_y)
    end
    
    typesig { [ControlListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the control is moved or resized, by sending
    # it one of the messages defined in the <code>ControlListener</code>
    # interface.
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see ControlListener
    # @see #removeControlListener
    def add_control_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Resize, typed_listener)
      add_listener(SWT::Move, typed_listener)
    end
    
    typesig { [DragDetectListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when a drag gesture occurs, by sending it
    # one of the messages defined in the <code>DragDetectListener</code>
    # interface.
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see DragDetectListener
    # @see #removeDragDetectListener
    # 
    # @since 3.3
    def add_drag_detect_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::DragDetect, typed_listener)
    end
    
    typesig { [FocusListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the control gains or loses focus, by sending
    # it one of the messages defined in the <code>FocusListener</code>
    # interface.
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see FocusListener
    # @see #removeFocusListener
    def add_focus_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::FocusIn, typed_listener)
      add_listener(SWT::FocusOut, typed_listener)
    end
    
    typesig { [HelpListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when help events are generated for the control,
    # by sending it one of the messages defined in the
    # <code>HelpListener</code> interface.
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see HelpListener
    # @see #removeHelpListener
    def add_help_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Help, typed_listener)
    end
    
    typesig { [KeyListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when keys are pressed and released on the system keyboard, by sending
    # it one of the messages defined in the <code>KeyListener</code>
    # interface.
    # <p>
    # When a key listener is added to a control, the control
    # will take part in widget traversal.  By default, all
    # traversal keys (such as the tab key and so on) are
    # delivered to the control.  In order for a control to take
    # part in traversal, it should listen for traversal events.
    # Otherwise, the user can traverse into a control but not
    # out.  Note that native controls such as table and tree
    # implement key traversal in the operating system.  It is
    # not necessary to add traversal listeners for these controls,
    # unless you want to override the default traversal.
    # </p>
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see KeyListener
    # @see #removeKeyListener
    def add_key_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::KeyUp, typed_listener)
      add_listener(SWT::KeyDown, typed_listener)
    end
    
    typesig { [MenuDetectListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the platform-specific context menu trigger
    # has occurred, by sending it one of the messages defined in
    # the <code>MenuDetectListener</code> interface.
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see MenuDetectListener
    # @see #removeMenuDetectListener
    # 
    # @since 3.3
    def add_menu_detect_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::MenuDetect, typed_listener)
    end
    
    typesig { [MouseListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when mouse buttons are pressed and released, by sending
    # it one of the messages defined in the <code>MouseListener</code>
    # interface.
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see MouseListener
    # @see #removeMouseListener
    def add_mouse_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::MouseDown, typed_listener)
      add_listener(SWT::MouseUp, typed_listener)
      add_listener(SWT::MouseDoubleClick, typed_listener)
    end
    
    typesig { [MouseMoveListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the mouse moves, by sending it one of the
    # messages defined in the <code>MouseMoveListener</code>
    # interface.
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see MouseMoveListener
    # @see #removeMouseMoveListener
    def add_mouse_move_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::MouseMove, typed_listener)
    end
    
    typesig { [MouseTrackListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the mouse passes or hovers over controls, by sending
    # it one of the messages defined in the <code>MouseTrackListener</code>
    # interface.
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see MouseTrackListener
    # @see #removeMouseTrackListener
    def add_mouse_track_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::MouseEnter, typed_listener)
      add_listener(SWT::MouseExit, typed_listener)
      add_listener(SWT::MouseHover, typed_listener)
    end
    
    typesig { [MouseWheelListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the mouse wheel is scrolled, by sending
    # it one of the messages defined in the
    # <code>MouseWheelListener</code> interface.
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see MouseWheelListener
    # @see #removeMouseWheelListener
    # 
    # @since 3.3
    def add_mouse_wheel_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::MouseWheel, typed_listener)
    end
    
    typesig { [PaintListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the receiver needs to be painted, by sending it
    # one of the messages defined in the <code>PaintListener</code>
    # interface.
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see PaintListener
    # @see #removePaintListener
    def add_paint_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Paint, typed_listener)
    end
    
    typesig { [Control] }
    def add_relation(control)
    end
    
    typesig { [TraverseListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when traversal events occur, by sending it
    # one of the messages defined in the <code>TraverseListener</code>
    # interface.
    # 
    # @param listener the listener which should be notified
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see TraverseListener
    # @see #removeTraverseListener
    def add_traverse_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Traverse, typed_listener)
    end
    
    typesig { [ControlListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the control is moved or resized.
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
    # @see ControlListener
    # @see #addControlListener
    def remove_control_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Move, listener)
      self.attr_event_table.unhook(SWT::Resize, listener)
    end
    
    typesig { [DragDetectListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when a drag gesture occurs.
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
    # @see DragDetectListener
    # @see #addDragDetectListener
    # 
    # @since 3.3
    def remove_drag_detect_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::DragDetect, listener)
    end
    
    typesig { [FocusListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the control gains or loses focus.
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
    # @see FocusListener
    # @see #addFocusListener
    def remove_focus_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::FocusIn, listener)
      self.attr_event_table.unhook(SWT::FocusOut, listener)
    end
    
    typesig { [HelpListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the help events are generated for the control.
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
    # @see HelpListener
    # @see #addHelpListener
    def remove_help_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Help, listener)
    end
    
    typesig { [KeyListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when keys are pressed and released on the system keyboard.
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
    # @see KeyListener
    # @see #addKeyListener
    def remove_key_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::KeyUp, listener)
      self.attr_event_table.unhook(SWT::KeyDown, listener)
    end
    
    typesig { [MenuDetectListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the platform-specific context menu trigger has
    # occurred.
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
    # @see MenuDetectListener
    # @see #addMenuDetectListener
    # 
    # @since 3.3
    def remove_menu_detect_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::MenuDetect, listener)
    end
    
    typesig { [MouseListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when mouse buttons are pressed and released.
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
    # @see MouseListener
    # @see #addMouseListener
    def remove_mouse_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::MouseDown, listener)
      self.attr_event_table.unhook(SWT::MouseUp, listener)
      self.attr_event_table.unhook(SWT::MouseDoubleClick, listener)
    end
    
    typesig { [MouseMoveListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the mouse moves.
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
    # @see MouseMoveListener
    # @see #addMouseMoveListener
    def remove_mouse_move_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::MouseMove, listener)
    end
    
    typesig { [MouseTrackListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the mouse passes or hovers over controls.
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
    # @see MouseTrackListener
    # @see #addMouseTrackListener
    def remove_mouse_track_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::MouseEnter, listener)
      self.attr_event_table.unhook(SWT::MouseExit, listener)
      self.attr_event_table.unhook(SWT::MouseHover, listener)
    end
    
    typesig { [MouseWheelListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the mouse wheel is scrolled.
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
    # @see MouseWheelListener
    # @see #addMouseWheelListener
    # 
    # @since 3.3
    def remove_mouse_wheel_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::MouseWheel, listener)
    end
    
    typesig { [PaintListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the receiver needs to be painted.
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
    # @see PaintListener
    # @see #addPaintListener
    def remove_paint_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Paint, listener)
    end
    
    typesig { [] }
    # Remove "Labelled by" relations from the receiver.
    def remove_relation
      if (!is_described_by_label)
        return
      end
      # there will not be any
      # long
      accessible = OS.gtk_widget_get_accessible(self.attr_handle)
      if ((accessible).equal?(0))
        return
      end
      # long
      set = ATK.atk_object_ref_relation_set(accessible)
      count = ATK.atk_relation_set_get_n_relations(set)
      i = 0
      while i < count
        # long
        relation = ATK.atk_relation_set_get_relation(set, 0)
        ATK.atk_relation_set_remove(set, relation)
        i += 1
      end
      OS.g_object_unref(set)
    end
    
    typesig { [TraverseListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when traversal events occur.
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
    # @see TraverseListener
    # @see #addTraverseListener
    def remove_traverse_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((self.attr_event_table).nil?)
        return
      end
      self.attr_event_table.unhook(SWT::Traverse, listener)
    end
    
    typesig { [Event] }
    # Detects a drag and drop gesture.  This method is used
    # to detect a drag gesture when called from within a mouse
    # down listener.
    # 
    # <p>By default, a drag is detected when the gesture
    # occurs anywhere within the client area of a control.
    # Some controls, such as tables and trees, override this
    # behavior.  In addition to the operating system specific
    # drag gesture, they require the mouse to be inside an
    # item.  Custom widget writers can use <code>setDragDetect</code>
    # to disable the default detection, listen for mouse down,
    # and then call <code>dragDetect()</code> from within the
    # listener to conditionally detect a drag.
    # </p>
    # 
    # @param event the mouse down event
    # 
    # @return <code>true</code> if the gesture occurred, and <code>false</code> otherwise.
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when the event is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see DragDetectListener
    # @see #addDragDetectListener
    # 
    # @see #getDragDetect
    # @see #setDragDetect
    # 
    # @since 3.3
    def drag_detect(event)
      check_widget
      if ((event).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      return drag_detect(event.attr_button, event.attr_count, event.attr_state_mask, event.attr_x, event.attr_y)
    end
    
    typesig { [MouseEvent] }
    # Detects a drag and drop gesture.  This method is used
    # to detect a drag gesture when called from within a mouse
    # down listener.
    # 
    # <p>By default, a drag is detected when the gesture
    # occurs anywhere within the client area of a control.
    # Some controls, such as tables and trees, override this
    # behavior.  In addition to the operating system specific
    # drag gesture, they require the mouse to be inside an
    # item.  Custom widget writers can use <code>setDragDetect</code>
    # to disable the default detection, listen for mouse down,
    # and then call <code>dragDetect()</code> from within the
    # listener to conditionally detect a drag.
    # </p>
    # 
    # @param event the mouse down event
    # 
    # @return <code>true</code> if the gesture occurred, and <code>false</code> otherwise.
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when the event is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see DragDetectListener
    # @see #addDragDetectListener
    # 
    # @see #getDragDetect
    # @see #setDragDetect
    # 
    # @since 3.3
    def drag_detect(event)
      check_widget
      if ((event).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      return drag_detect(event.attr_button, event.attr_count, event.attr_state_mask, event.attr_x, event.attr_y)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def drag_detect(button, count, state_mask, x, y)
      if (!(button).equal?(1) || !(count).equal?(1))
        return false
      end
      if (!drag_detect(x, y, false, nil))
        return false
      end
      return send_drag_event(button, state_mask, x, y, true)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Boolean)] }
    def drag_detect(x, y, filter, consume)
      quit = false
      dragging = false
      while (!quit)
        # long
        event_ptr = 0
        while (true)
          event_ptr = OS.gdk_event_get
          if (!(event_ptr).equal?(0))
            break
          else
            begin
              JavaThread.sleep(50)
            rescue Exception => ex
            end
          end
        end
        case (OS._gdk_event_type(event_ptr))
        when OS::GDK_MOTION_NOTIFY
          gdk_motion_event = GdkEventMotion.new
          OS.memmove(gdk_motion_event, event_ptr, GdkEventMotion.attr_sizeof)
          if (!((gdk_motion_event.attr_state & OS::GDK_BUTTON1_MASK)).equal?(0))
            if (OS.gtk_drag_check_threshold(self.attr_handle, x, y, RJava.cast_to_int(gdk_motion_event.attr_x), RJava.cast_to_int(gdk_motion_event.attr_y)))
              dragging = true
              quit = true
            end
          else
            quit = true
          end
          new_x = Array.typed(::Java::Int).new(1) { 0 }
          new_y = Array.typed(::Java::Int).new(1) { 0 }
          OS.gdk_window_get_pointer(gdk_motion_event.attr_window, new_x, new_y, nil)
        when OS::GDK_KEY_PRESS, OS::GDK_KEY_RELEASE
          gdk_event = GdkEventKey.new
          OS.memmove(gdk_event, event_ptr, GdkEventKey.attr_sizeof)
          if ((gdk_event.attr_keyval).equal?(OS::GDK_Escape))
            quit = true
          end
        when OS::GDK_BUTTON_RELEASE, OS::GDK_BUTTON_PRESS, OS::GDK_2BUTTON_PRESS, OS::GDK_3BUTTON_PRESS
          OS.gdk_event_put(event_ptr)
          quit = true
        else
          OS.gtk_main_do_event(event_ptr)
        end
        OS.gdk_event_free(event_ptr)
      end
      return dragging
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    def filter_key(keyval, event)
      # long
      im_handle_ = im_handle
      if (!(im_handle_).equal?(0))
        return OS.gtk_im_context_filter_keypress(im_handle_, event)
      end
      return false
    end
    
    typesig { [] }
    def find_background_control
      if (!((self.attr_state & BACKGROUND)).equal?(0) || !(@background_image).nil?)
        return self
      end
      return !((self.attr_state & PARENT_BACKGROUND)).equal?(0) ? @parent.find_background_control : nil
    end
    
    typesig { [Control] }
    def find_menus(control)
      if (!(@menu).nil? && !(self).equal?(control))
        return Array.typed(Menu).new([@menu])
      end
      return Array.typed(Menu).new(0) { nil }
    end
    
    typesig { [Shell, Shell, Decorations, Decorations, Array.typed(Menu)] }
    def fix_children(new_shell, old_shell, new_decorations, old_decorations, menus)
      old_shell.fix_shell(new_shell, self)
      old_decorations.fix_decorations(new_decorations, self, menus)
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def fixed_map_proc(widget)
      OS._gtk_widget_set_flags(widget, OS::GTK_MAPPED)
      # long
      widget_list = OS.gtk_container_get_children(widget)
      if (!(widget_list).equal?(0))
        # long
        widgets = widget_list
        while (!(widgets).equal?(0))
          # long
          child = OS.g_list_data(widgets)
          if (OS._gtk_widget_visible(child) && OS.gtk_widget_get_child_visible(child) && !OS._gtk_widget_mapped(child))
            OS.gtk_widget_map(child)
          end
          widgets = OS.g_list_next(widgets)
        end
        OS.g_list_free(widget_list)
      end
      if (((OS._gtk_widget_flags(widget) & OS::GTK_NO_WINDOW)).equal?(0))
        OS.gdk_window_show_unraised(OS._gtk_widget_window(widget))
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def fix_modal(group, modal_group)
    end
    
    typesig { [] }
    # Forces the receiver to have the <em>keyboard focus</em>, causing
    # all keyboard events to be delivered to it.
    # 
    # @return <code>true</code> if the control got focus, and <code>false</code> if it was unable to.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setFocus
    def force_focus
      check_widget
      if ((self.attr_display.attr_focus_event).equal?(SWT::FocusOut))
        return false
      end
      shell = get_shell
      shell.set_saved_focus(self)
      if (!is_enabled || !is_visible)
        return false
      end
      shell.bring_to_top(false)
      return force_focus(focus_handle)
    end
    
    typesig { [::Java::Int] }
    # long
    def force_focus(focus_handle_)
      # When the control is zero sized it must be realized
      OS.gtk_widget_realize(focus_handle_)
      OS.gtk_widget_grab_focus(focus_handle_)
      shell = get_shell
      # long
      shell_handle = shell.attr_shell_handle
      # long
      handle = OS.gtk_window_get_focus(shell_handle)
      while (!(handle).equal?(0))
        if ((handle).equal?(focus_handle_))
          return true
        end
        widget = self.attr_display.get_widget(handle)
        if (!(widget).nil? && widget.is_a?(Control))
          return (widget).equal?(self)
        end
        handle = OS.gtk_widget_get_parent(handle)
      end
      return false
    end
    
    typesig { [] }
    # Returns the receiver's background color.
    # 
    # @return the background color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_background
      check_widget
      control = find_background_control
      if ((control).nil?)
        control = self
      end
      return Color.gtk_new(self.attr_display, control.get_background_color)
    end
    
    typesig { [] }
    def get_background_color
      return get_bg_color
    end
    
    typesig { [] }
    # Returns the receiver's background image.
    # 
    # @return the background image
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def get_background_image
      check_widget
      control = find_background_control
      if ((control).nil?)
        control = self
      end
      return control.attr_background_image
    end
    
    typesig { [] }
    def get_bg_color
      # long
      font_handle_ = font_handle
      OS.gtk_widget_realize(font_handle_)
      color = GdkColor.new
      OS.gtk_style_get_bg(OS.gtk_widget_get_style(font_handle_), OS::GTK_STATE_NORMAL, color)
      return color
    end
    
    typesig { [] }
    def get_base_color
      # long
      font_handle_ = font_handle
      OS.gtk_widget_realize(font_handle_)
      color = GdkColor.new
      OS.gtk_style_get_base(OS.gtk_widget_get_style(font_handle_), OS::GTK_STATE_NORMAL, color)
      return color
    end
    
    typesig { [] }
    # Returns the receiver's border width.
    # 
    # @return the border width
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_border_width
      check_widget
      return 0
    end
    
    typesig { [] }
    def get_client_width
      return 0
    end
    
    typesig { [] }
    # Returns the receiver's cursor, or null if it has not been set.
    # <p>
    # When the mouse pointer passes over a control its appearance
    # is changed to match the control's cursor.
    # </p>
    # 
    # @return the receiver's cursor or <code>null</code>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.3
    def get_cursor
      check_widget
      return @cursor
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is detecting
    # drag gestures, and  <code>false</code> otherwise.
    # 
    # @return the receiver's drag detect state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.3
    def get_drag_detect
      check_widget
      return !((self.attr_state & DRAG_DETECT)).equal?(0)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is enabled, and
    # <code>false</code> otherwise. A disabled control is typically
    # not selectable from the user interface and draws with an
    # inactive or "grayed" look.
    # 
    # @return the receiver's enabled state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #isEnabled
    def get_enabled
      check_widget
      return ((self.attr_state & DISABLED)).equal?(0)
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
      return !(@font).nil? ? @font : default_font
    end
    
    typesig { [] }
    # long
    def get_font_description
      # long
      font_handle_ = font_handle
      OS.gtk_widget_realize(font_handle_)
      return OS.gtk_style_get_font_desc(OS.gtk_widget_get_style(font_handle_))
    end
    
    typesig { [] }
    # Returns the foreground color that the receiver will use to draw.
    # 
    # @return the receiver's foreground color
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_foreground
      check_widget
      return Color.gtk_new(self.attr_display, get_foreground_color)
    end
    
    typesig { [] }
    def get_foreground_color
      return get_fg_color
    end
    
    typesig { [] }
    def get_fg_color
      # long
      font_handle_ = font_handle
      OS.gtk_widget_realize(font_handle_)
      color = GdkColor.new
      OS.gtk_style_get_fg(OS.gtk_widget_get_style(font_handle_), OS::GTK_STATE_NORMAL, color)
      return color
    end
    
    typesig { [] }
    def get_imcaret_pos
      return Point.new(0, 0)
    end
    
    typesig { [] }
    def get_text_color
      # long
      font_handle_ = font_handle
      OS.gtk_widget_realize(font_handle_)
      color = GdkColor.new
      OS.gtk_style_get_text(OS.gtk_widget_get_style(font_handle_), OS::GTK_STATE_NORMAL, color)
      return color
    end
    
    typesig { [] }
    # Returns layout data which is associated with the receiver.
    # 
    # @return the receiver's layout data
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_layout_data
      check_widget
      return @layout_data
    end
    
    typesig { [] }
    # Returns the receiver's pop up menu if it has one, or null
    # if it does not. All controls may optionally have a pop up
    # menu that is displayed when the user requests one for
    # the control. The sequence of key strokes, button presses
    # and/or button releases that are used to request a pop up
    # menu is platform specific.
    # 
    # @return the receiver's menu
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_menu
      check_widget
      return @menu
    end
    
    typesig { [] }
    # Returns the receiver's monitor.
    # 
    # @return the receiver's monitor
    # 
    # @since 3.0
    def get_monitor
      check_widget
      monitor = nil
      # long
      screen = OS.gdk_screen_get_default
      if (!(screen).equal?(0))
        monitor_number = OS.gdk_screen_get_monitor_at_window(screen, paint_window)
        dest = GdkRectangle.new
        OS.gdk_screen_get_monitor_geometry(screen, monitor_number, dest)
        monitor = SwtMonitor.new
        monitor.attr_handle = monitor_number
        monitor.attr_x = dest.attr_x
        monitor.attr_y = dest.attr_y
        monitor.attr_width = dest.attr_width
        monitor.attr_height = dest.attr_height
        work_area = nil
        if ((monitor_number).equal?(0))
          work_area = self.attr_display.get_work_area
        end
        if (!(work_area).nil?)
          monitor.attr_client_x = work_area.attr_x
          monitor.attr_client_y = work_area.attr_y
          monitor.attr_client_width = work_area.attr_width
          monitor.attr_client_height = work_area.attr_height
        else
          monitor.attr_client_x = monitor.attr_x
          monitor.attr_client_y = monitor.attr_y
          monitor.attr_client_width = monitor.attr_width
          monitor.attr_client_height = monitor.attr_height
        end
      else
        monitor = self.attr_display.get_primary_monitor
      end
      return monitor
    end
    
    typesig { [] }
    # Returns the receiver's parent, which must be a <code>Composite</code>
    # or null when the receiver is a shell that was created with null or
    # a display for a parent.
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
    def get_path
      count = 0
      shell = get_shell
      control = self
      while (!(control).equal?(shell))
        count += 1
        control = control.attr_parent
      end
      control = self
      result = Array.typed(Control).new(count) { nil }
      while (!(control).equal?(shell))
        result[(count -= 1)] = control
        control = control.attr_parent
      end
      return result
    end
    
    typesig { [] }
    # Returns the region that defines the shape of the control,
    # or null if the control has the default shape.
    # 
    # @return the region that defines the shape of the shell (or null)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.4
    def get_region
      check_widget
      return @region
    end
    
    typesig { [] }
    # Returns the receiver's shell. For all controls other than
    # shells, this simply returns the control's nearest ancestor
    # shell. Shells return themselves, even if they are children
    # of other shells.
    # 
    # @return the receiver's shell
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getParent
    def get_shell
      check_widget
      return __get_shell
    end
    
    typesig { [] }
    def __get_shell
      return @parent.__get_shell
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
      return @tool_tip_text
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
      return ((self.attr_state & HIDDEN)).equal?(0)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_button_press_event(widget, event)
      gdk_event = GdkEventButton.new
      OS.memmove(gdk_event, event, GdkEventButton.attr_sizeof)
      if ((gdk_event.attr_type).equal?(OS::GDK_3BUTTON_PRESS))
        return 0
      end
      # When a shell is created with SWT.ON_TOP and SWT.NO_FOCUS,
      # do not activate the shell when the user clicks on the
      # the client area or on the border or a control within the
      # shell that does not take focus.
      shell = __get_shell
      if ((!((shell.attr_style & SWT::ON_TOP)).equal?(0)) && ((((shell.attr_style & SWT::NO_FOCUS)).equal?(0)) || (((self.attr_style & SWT::NO_FOCUS)).equal?(0))))
        shell.force_active
      end
      # long
      result = 0
      if ((gdk_event.attr_type).equal?(OS::GDK_BUTTON_PRESS))
        self.attr_display.attr_click_count = 1
        # long
        next_event = OS.gdk_event_peek
        if (!(next_event).equal?(0))
          event_type = OS._gdk_event_type(next_event)
          if ((event_type).equal?(OS::GDK_2BUTTON_PRESS))
            self.attr_display.attr_click_count = 2
          end
          if ((event_type).equal?(OS::GDK_3BUTTON_PRESS))
            self.attr_display.attr_click_count = 3
          end
          OS.gdk_event_free(next_event)
        end
        dragging = false
        if (!((self.attr_state & DRAG_DETECT)).equal?(0) && hooks(SWT::DragDetect))
          if ((gdk_event.attr_button).equal?(1))
            consume = Array.typed(::Java::Boolean).new(1) { false }
            if (drag_detect(RJava.cast_to_int(gdk_event.attr_x), RJava.cast_to_int(gdk_event.attr_y), true, consume))
              dragging = true
              if (consume[0])
                result = 1
              end
            end
            if (is_disposed)
              return 1
            end
          end
        end
        if (!send_mouse_event(SWT::MouseDown, gdk_event.attr_button, self.attr_display.attr_click_count, 0, false, gdk_event.attr_time, gdk_event.attr_x_root, gdk_event.attr_y_root, false, gdk_event.attr_state))
          result = 1
        end
        if (is_disposed)
          return 1
        end
        if (dragging)
          send_drag_event(gdk_event.attr_button, gdk_event.attr_state, RJava.cast_to_int(gdk_event.attr_x), RJava.cast_to_int(gdk_event.attr_y), false)
          if (is_disposed)
            return 1
          end
        end
        # Pop up the context menu in the button press event for widgets
        # that have default operating system menus in order to stop the
        # operating system from displaying the menu if necessary.
        if (!((self.attr_state & MENU)).equal?(0))
          if ((gdk_event.attr_button).equal?(3))
            if (show_menu(RJava.cast_to_int(gdk_event.attr_x_root), RJava.cast_to_int(gdk_event.attr_y_root)))
              result = 1
            end
          end
        end
      else
        self.attr_display.attr_click_count = 2
        result = send_mouse_event(SWT::MouseDoubleClick, gdk_event.attr_button, self.attr_display.attr_click_count, 0, false, gdk_event.attr_time, gdk_event.attr_x_root, gdk_event.attr_y_root, false, gdk_event.attr_state) ? 0 : 1
        if (is_disposed)
          return 1
        end
      end
      if (!shell.is_disposed)
        shell.set_active_control(self)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_button_release_event(widget, event)
      gdk_event = GdkEventButton.new
      OS.memmove(gdk_event, event, GdkEventButton.attr_sizeof)
      # Feature in GTK.  When button 4, 5, 6, or 7 is released, GTK
      # does not deliver a corresponding GTK event.  Button 6 and 7
      # are mapped to buttons 4 and 5 in SWT.  The fix is to change
      # the button number of the event to a negative number so that
      # it gets dispatched by GTK.  SWT has been modified to look
      # for negative button numbers.
      button = gdk_event.attr_button
      case (button)
      when -6
        button = 4
      when -7
        button = 5
      end
      return send_mouse_event(SWT::MouseUp, button, self.attr_display.attr_click_count, 0, false, gdk_event.attr_time, gdk_event.attr_x_root, gdk_event.attr_y_root, false, gdk_event.attr_state) ? 0 : 1
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_commit(imcontext, text)
      if ((text).equal?(0))
        return 0
      end
      length = OS.strlen(text)
      if ((length).equal?(0))
        return 0
      end
      buffer = Array.typed(::Java::Byte).new(length) { 0 }
      OS.memmove(buffer, text, length)
      chars = Converter.mbcs_to_wcs(nil, buffer)
      send_imkey_event(SWT::KeyDown, nil, chars)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_enter_notify_event(widget, event)
      if (OS::GTK_VERSION >= OS._version(2, 12, 0))
        # Feature in GTK. Children of a shell will inherit and display the shell's
        # tooltip if they do not have a tooltip of their own. The fix is to use the
        # new tooltip API in GTK 2.12 to null the shell's tooltip when the control
        # being entered does not have any tooltip text set.
        buffer = nil
        if (!(@tool_tip_text).nil? && !(@tool_tip_text.length).equal?(0))
          chars = fix_mnemonic(@tool_tip_text, false)
          buffer = Converter.wcs_to_mbcs(nil, chars, true)
        end
        # long
        tool_handle = get_shell.attr_handle
        OS.gtk_widget_set_tooltip_text(tool_handle, buffer)
      end
      if ((self.attr_display.attr_current_control).equal?(self))
        return 0
      end
      gdk_event = GdkEventCrossing.new
      OS.memmove(gdk_event, event, GdkEventCrossing.attr_sizeof)
      if (!(gdk_event.attr_mode).equal?(OS::GDK_CROSSING_NORMAL) && !(gdk_event.attr_mode).equal?(OS::GDK_CROSSING_UNGRAB))
        return 0
      end
      if (!((gdk_event.attr_state & (OS::GDK_BUTTON1_MASK | OS::GDK_BUTTON2_MASK | OS::GDK_BUTTON3_MASK))).equal?(0))
        return 0
      end
      if (!(self.attr_display.attr_current_control).nil? && !self.attr_display.attr_current_control.is_disposed)
        self.attr_display.remove_mouse_hover_timeout(self.attr_display.attr_current_control.attr_handle)
        self.attr_display.attr_current_control.send_mouse_event(SWT::MouseExit, 0, gdk_event.attr_time, gdk_event.attr_x_root, gdk_event.attr_y_root, false, gdk_event.attr_state)
      end
      if (!is_disposed)
        self.attr_display.attr_current_control = self
        return send_mouse_event(SWT::MouseEnter, 0, gdk_event.attr_time, gdk_event.attr_x_root, gdk_event.attr_y_root, false, gdk_event.attr_state) ? 0 : 1
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_event_after(widget, gdk_event)
      event = GdkEvent.new
      OS.memmove(event, gdk_event, GdkEvent.attr_sizeof)
      catch(:break_case) do
        case (event.attr_type)
        when OS::GDK_BUTTON_PRESS
          if (!(widget).equal?(event_handle))
            throw :break_case, :thrown
          end
          # Pop up the context menu in the event_after signal to allow
          # the widget to process the button press.  This allows widgets
          # such as GtkTreeView to select items before a menu is shown.
          if (((self.attr_state & MENU)).equal?(0))
            gdk_event_button = GdkEventButton.new
            OS.memmove(gdk_event_button, gdk_event, GdkEventButton.attr_sizeof)
            if ((gdk_event_button.attr_button).equal?(3))
              show_menu(RJava.cast_to_int(gdk_event_button.attr_x_root), RJava.cast_to_int(gdk_event_button.attr_y_root))
            end
          end
        when OS::GDK_FOCUS_CHANGE
          if (!is_focus_handle(widget))
            throw :break_case, :thrown
          end
          gdk_event_focus = GdkEventFocus.new
          OS.memmove(gdk_event_focus, gdk_event, GdkEventFocus.attr_sizeof)
          # Feature in GTK. The GTK combo box popup under some window managers
          # is implemented as a GTK_MENU.  When it pops up, it causes the combo
          # box to lose focus when focus is received for the menu.  The
          # fix is to check the current grab handle and see if it is a GTK_MENU
          # and ignore the focus event when the menu is both shown and hidden.
          display = self.attr_display
          if (!(gdk_event_focus.attr_in).equal?(0))
            if (display.attr_ignore_focus)
              display.attr_ignore_focus = false
              throw :break_case, :thrown
            end
          else
            display.attr_ignore_focus = false
            # long
            grab_handle = OS.gtk_grab_get_current
            if (!(grab_handle).equal?(0))
              if ((OS._g_object_type(grab_handle)).equal?(OS._gtk_type_menu))
                display.attr_ignore_focus = true
                throw :break_case, :thrown
              end
            end
          end
          send_focus_event(!(gdk_event_focus.attr_in).equal?(0) ? SWT::FocusIn : SWT::FocusOut)
        end
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_expose_event(widget, event_ptr)
      if (!((self.attr_state & OBSCURED)).equal?(0))
        return 0
      end
      if (!hooks(SWT::Paint) && !filters(SWT::Paint))
        return 0
      end
      gdk_event = GdkEventExpose.new
      OS.memmove(gdk_event, event_ptr, GdkEventExpose.attr_sizeof)
      event = Event.new
      event.attr_count = gdk_event.attr_count
      event.attr_x = gdk_event.attr_area_x
      event.attr_y = gdk_event.attr_area_y
      event.attr_width = gdk_event.attr_area_width
      event.attr_height = gdk_event.attr_area_height
      if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
        event.attr_x = get_client_width - event.attr_width - event.attr_x
      end
      data = SwtGCData.new
      data.attr_damage_rgn = gdk_event.attr_region
      gc = event.attr_gc = SwtGC.gtk_new(self, data)
      OS.gdk_gc_set_clip_region(gc.attr_handle, gdk_event.attr_region)
      send_event(SWT::Paint, event)
      gc.dispose
      event.attr_gc = nil
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_focus(widget, direction_type)
      # Stop GTK traversal for every widget
      return 1
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_focus_in_event(widget, event)
      # widget could be disposed at this point
      if (!(self.attr_handle).equal?(0))
        old_control = self.attr_display.attr_im_control
        if (!(old_control).equal?(self))
          if (!(old_control).nil? && !old_control.is_disposed)
            # long
            old_imhandle = old_control.im_handle
            if (!(old_imhandle).equal?(0))
              OS.gtk_im_context_reset(old_imhandle)
            end
          end
        end
        if (hooks(SWT::KeyDown) || hooks(SWT::KeyUp))
          # long
          im_handle_ = im_handle
          if (!(im_handle_).equal?(0))
            OS.gtk_im_context_focus_in(im_handle_)
          end
        end
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_focus_out_event(widget, event)
      # widget could be disposed at this point
      if (!(self.attr_handle).equal?(0))
        if (hooks(SWT::KeyDown) || hooks(SWT::KeyUp))
          # long
          im_handle_ = im_handle
          if (!(im_handle_).equal?(0))
            OS.gtk_im_context_focus_out(im_handle_)
          end
        end
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_key_press_event(widget, event)
      if (!has_focus)
        return 0
      end
      gdk_event = GdkEventKey.new
      OS.memmove(gdk_event, event, GdkEventKey.attr_sizeof)
      if (translate_mnemonic(gdk_event.attr_keyval, gdk_event))
        return 1
      end
      # widget could be disposed at this point
      if (is_disposed)
        return 0
      end
      if (filter_key(gdk_event.attr_keyval, event))
        return 1
      end
      # widget could be disposed at this point
      if (is_disposed)
        return 0
      end
      if (translate_traversal(gdk_event))
        return 1
      end
      # widget could be disposed at this point
      if (is_disposed)
        return 0
      end
      return super(widget, event)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_key_release_event(widget, event)
      if (!has_focus)
        return 0
      end
      # long
      im_handle_ = im_handle
      if (!(im_handle_).equal?(0))
        if (OS.gtk_im_context_filter_keypress(im_handle_, event))
          return 1
        end
      end
      return super(widget, event)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_leave_notify_event(widget, event)
      if (!(self.attr_display.attr_current_control).equal?(self))
        return 0
      end
      self.attr_display.remove_mouse_hover_timeout(self.attr_handle)
      result = 0
      if (send_leave_notify || (self.attr_display.get_cursor_control).nil?)
        gdk_event = GdkEventCrossing.new
        OS.memmove(gdk_event, event, GdkEventCrossing.attr_sizeof)
        if (!(gdk_event.attr_mode).equal?(OS::GDK_CROSSING_NORMAL) && !(gdk_event.attr_mode).equal?(OS::GDK_CROSSING_UNGRAB))
          return 0
        end
        if (!((gdk_event.attr_state & (OS::GDK_BUTTON1_MASK | OS::GDK_BUTTON2_MASK | OS::GDK_BUTTON3_MASK))).equal?(0))
          return 0
        end
        result = send_mouse_event(SWT::MouseExit, 0, gdk_event.attr_time, gdk_event.attr_x_root, gdk_event.attr_y_root, false, gdk_event.attr_state) ? 0 : 1
        self.attr_display.attr_current_control = nil
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_mnemonic_activate(widget, arg1)
      result = 0
      # long
      event_ptr = OS.gtk_get_current_event
      if (!(event_ptr).equal?(0))
        key_event = GdkEventKey.new
        OS.memmove(key_event, event_ptr, GdkEventKey.attr_sizeof)
        if ((key_event.attr_type).equal?(OS::GDK_KEY_PRESS))
          focus_control = self.attr_display.get_focus_control
          # long
          focus_handle_ = !(focus_control).nil? ? focus_control.focus_handle : 0
          if (!(focus_handle_).equal?(0))
            self.attr_display.attr_mnemonic_control = self
            OS.gtk_widget_event(focus_handle_, event_ptr)
            self.attr_display.attr_mnemonic_control = nil
          end
          result = 1
        end
        OS.gdk_event_free(event_ptr)
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_motion_notify_event(widget, event)
      gdk_event = GdkEventMotion.new
      OS.memmove(gdk_event, event, GdkEventMotion.attr_sizeof)
      if ((self).equal?(self.attr_display.attr_current_control) && (hooks(SWT::MouseHover) || filters(SWT::MouseHover)))
        self.attr_display.add_mouse_hover_timeout(self.attr_handle)
      end
      x = gdk_event.attr_x_root
      y = gdk_event.attr_y_root
      state = gdk_event.attr_state
      if (!(gdk_event.attr_is_hint).equal?(0))
        pointer_x = Array.typed(::Java::Int).new(1) { 0 }
        pointer_y = Array.typed(::Java::Int).new(1) { 0 }
        mask = Array.typed(::Java::Int).new(1) { 0 }
        # long
        window = event_window
        OS.gdk_window_get_pointer(window, pointer_x, pointer_y, mask)
        x = pointer_x[0]
        y = pointer_y[0]
        state = mask[0]
      end
      result = send_mouse_event(SWT::MouseMove, 0, gdk_event.attr_time, x, y, !(gdk_event.attr_is_hint).equal?(0), state) ? 0 : 1
      return result
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_popup_menu(widget)
      if (!has_focus)
        return 0
      end
      x = Array.typed(::Java::Int).new(1) { 0 }
      y = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_pointer(0, x, y, nil)
      return show_menu(x[0], y[0]) ? 1 : 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_preedit_changed(imcontext)
      self.attr_display.show_imwindow(self)
      return 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_realize(widget)
      # long
      im_handle_ = im_handle
      if (!(im_handle_).equal?(0))
        # long
        window = OS._gtk_widget_window(paint_handle)
        OS.gtk_im_context_set_client_window(im_handle_, window)
      end
      if (!(@background_image).nil?)
        # long
        window = OS._gtk_widget_window(paint_handle)
        if (!(window).equal?(0))
          OS.gdk_window_set_back_pixmap(window, @background_image.attr_pixmap, false)
        end
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_scroll_event(widget, event_ptr)
      gdk_event = GdkEventScroll.new
      OS.memmove(gdk_event, event_ptr, GdkEventScroll.attr_sizeof)
      case (gdk_event.attr_direction)
      when OS::GDK_SCROLL_UP
        return send_mouse_event(SWT::MouseWheel, 0, 3, SWT::SCROLL_LINE, true, gdk_event.attr_time, gdk_event.attr_x_root, gdk_event.attr_y_root, false, gdk_event.attr_state) ? 0 : 1
      when OS::GDK_SCROLL_DOWN
        return send_mouse_event(SWT::MouseWheel, 0, -3, SWT::SCROLL_LINE, true, gdk_event.attr_time, gdk_event.attr_x_root, gdk_event.attr_y_root, false, gdk_event.attr_state) ? 0 : 1
      when OS::GDK_SCROLL_LEFT
        return send_mouse_event(SWT::MouseDown, 4, gdk_event.attr_time, gdk_event.attr_x_root, gdk_event.attr_y_root, false, gdk_event.attr_state) ? 0 : 1
      when OS::GDK_SCROLL_RIGHT
        return send_mouse_event(SWT::MouseDown, 5, gdk_event.attr_time, gdk_event.attr_x_root, gdk_event.attr_y_root, false, gdk_event.attr_state) ? 0 : 1
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_show_help(widget, help_type)
      if (!has_focus)
        return 0
      end
      return send_help_event(help_type) ? 1 : 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_style_set(widget, previous_style)
      if (!(@background_image).nil?)
        set_background_pixmap(@background_image.attr_pixmap)
      end
      return 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_unrealize(widget)
      # long
      im_handle_ = im_handle
      if (!(im_handle_).equal?(0))
        OS.gtk_im_context_set_client_window(im_handle_, 0)
      end
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_visibility_notify_event(widget, event)
      gdk_event = GdkEventVisibility.new
      OS.memmove(gdk_event, event, GdkEventVisibility.attr_sizeof)
      # long
      paint_window_ = paint_window
      # long
      window = gdk_event.attr_window
      if ((window).equal?(paint_window_))
        if ((gdk_event.attr_state).equal?(OS::GDK_VISIBILITY_FULLY_OBSCURED))
          self.attr_state |= OBSCURED
        else
          if (!((self.attr_state & OBSCURED)).equal?(0))
            width = Array.typed(::Java::Int).new(1) { 0 }
            height = Array.typed(::Java::Int).new(1) { 0 }
            OS.gdk_drawable_get_size(window, width, height)
            rect = GdkRectangle.new
            rect.attr_width = width[0]
            rect.attr_height = height[0]
            OS.gdk_window_invalidate_rect(window, rect, false)
          end
          self.attr_state &= ~OBSCURED
        end
      end
      return 0
    end
    
    typesig { [::Java::Int, GtkRequisition] }
    # long
    def gtk_widget_size_request(widget, requisition)
      OS.gtk_widget_size_request(widget, requisition)
    end
    
    typesig { [SwtGCData] }
    # Invokes platform specific functionality to allocate a new GC handle.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Control</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    # 
    # @param data the platform specific GC data
    # @return the platform specific GC handle
    # 
    # long
    def internal_new__gc(data)
      check_widget
      # long
      window = paint_window
      if ((window).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      # long
      gdk_gc = OS.gdk_gc_new(window)
      if ((gdk_gc).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
      if (!(data).nil?)
        mask = SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT
        if (((data.attr_style & mask)).equal?(0))
          data.attr_style |= self.attr_style & (mask | SWT::MIRRORED)
        else
          if (!((data.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
            data.attr_style |= SWT::MIRRORED
          end
        end
        data.attr_drawable = window
        data.attr_device = self.attr_display
        data.attr_foreground = get_foreground_color
        control = find_background_control
        if ((control).nil?)
          control = self
        end
        data.attr_background = control.get_background_color
        data.attr_font = !(@font).nil? ? @font : default_font
      end
      return gdk_gc
    end
    
    typesig { [] }
    # long
    def im_handle
      return 0
    end
    
    typesig { [::Java::Int, SwtGCData] }
    # Invokes platform specific functionality to dispose a GC handle.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Control</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    # 
    # @param hDC the platform specific GC handle
    # @param data the platform specific GC data
    # 
    # long
    def internal_dispose__gc(gdk_gc, data)
      check_widget
      OS.g_object_unref(gdk_gc)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the underlying operating
    # system supports this reparenting, otherwise <code>false</code>
    # 
    # @return <code>true</code> if the widget can be reparented, otherwise <code>false</code>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def is_reparentable
      check_widget
      return true
    end
    
    typesig { [] }
    def is_showing
      # This is not complete.  Need to check if the
      # widget is obscurred by a parent or sibling.
      if (!is_visible)
        return false
      end
      control = self
      while (!(control).nil?)
        size = control.get_size
        if ((size.attr_x).equal?(0) || (size.attr_y).equal?(0))
          return false
        end
        control = control.attr_parent
      end
      return true
    end
    
    typesig { [] }
    def is_tab_group
      tab_list = @parent.__get_tab_list
      if (!(tab_list).nil?)
        i = 0
        while i < tab_list.attr_length
          if ((tab_list[i]).equal?(self))
            return true
          end
          i += 1
        end
      end
      code = traversal_code(0, nil)
      if (!((code & (SWT::TRAVERSE_ARROW_PREVIOUS | SWT::TRAVERSE_ARROW_NEXT))).equal?(0))
        return false
      end
      return !((code & (SWT::TRAVERSE_TAB_PREVIOUS | SWT::TRAVERSE_TAB_NEXT))).equal?(0)
    end
    
    typesig { [] }
    def is_tab_item
      tab_list = @parent.__get_tab_list
      if (!(tab_list).nil?)
        i = 0
        while i < tab_list.attr_length
          if ((tab_list[i]).equal?(self))
            return false
          end
          i += 1
        end
      end
      code = traversal_code(0, nil)
      return !((code & (SWT::TRAVERSE_ARROW_PREVIOUS | SWT::TRAVERSE_ARROW_NEXT))).equal?(0)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is enabled and all
    # ancestors up to and including the receiver's nearest ancestor
    # shell are enabled.  Otherwise, <code>false</code> is returned.
    # A disabled control is typically not selectable from the user
    # interface and draws with an inactive or "grayed" look.
    # 
    # @return the receiver's enabled state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getEnabled
    def is_enabled
      check_widget
      return get_enabled && @parent.is_enabled
    end
    
    typesig { [Control] }
    def is_focus_ancestor(control)
      while (!(control).nil? && !(control).equal?(self) && !(control.is_a?(Shell)))
        control = control.attr_parent
      end
      return (control).equal?(self)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver has the user-interface
    # focus, and <code>false</code> otherwise.
    # 
    # @return the receiver's focus state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def is_focus_control
      check_widget
      focus_control = self.attr_display.attr_focus_control
      if (!(focus_control).nil? && !focus_control.is_disposed)
        return (self).equal?(focus_control)
      end
      return has_focus
    end
    
    typesig { [] }
    # Returns <code>true</code> if the receiver is visible and all
    # ancestors up to and including the receiver's nearest ancestor
    # shell are visible. Otherwise, <code>false</code> is returned.
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
      return get_visible && @parent.is_visible
    end
    
    typesig { [] }
    def menu_shell
      return @parent.menu_shell
    end
    
    typesig { [::Java::Char] }
    def mnemonic_hit(key)
      return false
    end
    
    typesig { [::Java::Char] }
    def mnemonic_match(key)
      return false
    end
    
    typesig { [] }
    def register
      super
      if (!(@fixed_handle).equal?(0))
        self.attr_display.add_widget(@fixed_handle, self)
      end
      # long
      im_handle_ = im_handle
      if (!(im_handle_).equal?(0))
        self.attr_display.add_widget(im_handle_, self)
      end
    end
    
    typesig { [] }
    # Causes the entire bounds of the receiver to be marked
    # as needing to be redrawn. The next time a paint request
    # is processed, the control will be completely painted,
    # including the background.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #update()
    # @see PaintListener
    # @see SWT#Paint
    # @see SWT#NO_BACKGROUND
    # @see SWT#NO_REDRAW_RESIZE
    # @see SWT#NO_MERGE_PAINTS
    # @see SWT#DOUBLE_BUFFERED
    def redraw
      check_widget
      redraw(false)
    end
    
    typesig { [::Java::Boolean] }
    def redraw(all)
      # checkWidget();
      if (!OS._gtk_widget_visible(top_handle))
        return
      end
      redraw_widget(0, 0, 0, 0, true, all, false)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    # Causes the rectangular area of the receiver specified by
    # the arguments to be marked as needing to be redrawn.
    # The next time a paint request is processed, that area of
    # the receiver will be painted, including the background.
    # If the <code>all</code> flag is <code>true</code>, any
    # children of the receiver which intersect with the specified
    # area will also paint their intersecting areas. If the
    # <code>all</code> flag is <code>false</code>, the children
    # will not be painted.
    # 
    # @param x the x coordinate of the area to draw
    # @param y the y coordinate of the area to draw
    # @param width the width of the area to draw
    # @param height the height of the area to draw
    # @param all <code>true</code> if children should redraw, and <code>false</code> otherwise
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #update()
    # @see PaintListener
    # @see SWT#Paint
    # @see SWT#NO_BACKGROUND
    # @see SWT#NO_REDRAW_RESIZE
    # @see SWT#NO_MERGE_PAINTS
    # @see SWT#DOUBLE_BUFFERED
    def redraw(x, y, width, height, all)
      check_widget
      if (!OS._gtk_widget_visible(top_handle))
        return
      end
      if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
        x = get_client_width - width - x
      end
      redraw_widget(x, y, width, height, false, all, false)
    end
    
    typesig { [] }
    def redraw_children
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
    def redraw_widget(x, y, width, height, redraw_all, all, trim)
      if (((OS._gtk_widget_flags(self.attr_handle) & OS::GTK_REALIZED)).equal?(0))
        return
      end
      # long
      window = paint_window
      rect = GdkRectangle.new
      if (redraw_all)
        w = Array.typed(::Java::Int).new(1) { 0 }
        h = Array.typed(::Java::Int).new(1) { 0 }
        OS.gdk_drawable_get_size(window, w, h)
        rect.attr_width = w[0]
        rect.attr_height = h[0]
      else
        rect.attr_x = x
        rect.attr_y = y
        rect.attr_width = width
        rect.attr_height = height
      end
      OS.gdk_window_invalidate_rect(window, rect, all)
    end
    
    typesig { [::Java::Boolean] }
    def release(destroy)
      next_ = nil
      previous = nil
      if (destroy && !(@parent).nil?)
        children = @parent.__get_children
        index = 0
        while (index < children.attr_length)
          if ((children[index]).equal?(self))
            break
          end
          index += 1
        end
        if (0 < index && (index + 1) < children.attr_length)
          next_ = children[index + 1]
          previous = children[index - 1]
        end
      end
      super(destroy)
      if (destroy)
        if (!(previous).nil?)
          previous.add_relation(next_)
        end
      end
    end
    
    typesig { [] }
    def release_handle
      super
      @fixed_handle = 0
      @parent = nil
    end
    
    typesig { [] }
    def release_parent
      @parent.remove_control(self)
    end
    
    typesig { [] }
    def release_widget
      super
      if ((self.attr_display.attr_current_control).equal?(self))
        self.attr_display.attr_current_control = nil
      end
      self.attr_display.remove_mouse_hover_timeout(self.attr_handle)
      # long
      im_handle_ = im_handle
      if (!(im_handle_).equal?(0))
        OS.gtk_im_context_reset(im_handle_)
        OS.gtk_im_context_set_client_window(im_handle_, 0)
      end
      if (!(@enable_window).equal?(0))
        OS.gdk_window_set_user_data(@enable_window, 0)
        OS.gdk_window_destroy(@enable_window)
        @enable_window = 0
      end
      @redraw_window = 0
      if (!(@menu).nil? && !@menu.is_disposed)
        @menu.dispose
      end
      @menu = nil
      @cursor = nil
      @tool_tip_text = (nil).to_s
      @layout_data = nil
      @accessible = nil
      @region = nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def send_drag_event(button, state_mask, x, y, is_state_mask)
      event = Event.new
      event.attr_button = button
      event.attr_x = x
      event.attr_y = y
      if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
        event.attr_x = get_client_width - event.attr_x
      end
      if (is_state_mask)
        event.attr_state_mask = state_mask
      else
        set_input_state(event, state_mask)
      end
      post_event(SWT::DragDetect, event)
      if (is_disposed)
        return false
      end
      return event.attr_doit
    end
    
    typesig { [::Java::Int] }
    def send_focus_event(type)
      shell = __get_shell
      display = self.attr_display
      display.attr_focus_control = self
      display.attr_focus_event = type
      send_event(type)
      display.attr_focus_control = nil
      display.attr_focus_event = SWT::None
      # It is possible that the shell may be
      # disposed at this point.  If this happens
      # don't send the activate and deactivate
      # events.
      if (!shell.is_disposed)
        case (type)
        when SWT::FocusIn
          shell.set_active_control(self)
        when SWT::FocusOut
          if (!(shell).equal?(display.attr_active_shell))
            shell.set_active_control(nil)
          end
        end
      end
    end
    
    typesig { [::Java::Int] }
    # long
    def send_help_event(help_type)
      control = self
      while (!(control).nil?)
        if (control.hooks(SWT::Help))
          control.post_event(SWT::Help)
          return true
        end
        control = control.attr_parent
      end
      return false
    end
    
    typesig { [] }
    def send_leave_notify
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Double, ::Java::Double, ::Java::Boolean, ::Java::Int] }
    def send_mouse_event(type, button, time, x, y, is_hint, state)
      return send_mouse_event(type, button, 0, 0, false, time, x, y, is_hint, state)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Double, ::Java::Double, ::Java::Boolean, ::Java::Int] }
    def send_mouse_event(type, button, count, detail, send, time, x, y, is_hint, state)
      if (!hooks(type) && !filters(type))
        return true
      end
      event = Event.new
      event.attr_time = time
      event.attr_button = button
      event.attr_detail = detail
      event.attr_count = count
      if (is_hint)
        event.attr_x = RJava.cast_to_int(x)
        event.attr_y = RJava.cast_to_int(y)
      else
        # long
        window = event_window
        origin_x = Array.typed(::Java::Int).new(1) { 0 }
        origin_y = Array.typed(::Java::Int).new(1) { 0 }
        OS.gdk_window_get_origin(window, origin_x, origin_y)
        event.attr_x = RJava.cast_to_int(x) - origin_x[0]
        event.attr_y = RJava.cast_to_int(y) - origin_y[0]
      end
      if (!((self.attr_style & SWT::MIRRORED)).equal?(0))
        event.attr_x = get_client_width - event.attr_x
      end
      set_input_state(event, state)
      if (send)
        send_event(type, event)
        if (is_disposed)
          return false
        end
      else
        post_event(type, event)
      end
      return event.attr_doit
    end
    
    typesig { [] }
    def set_background
      if (!((self.attr_state & PARENT_BACKGROUND)).equal?(0) && ((self.attr_state & BACKGROUND)).equal?(0) && (@background_image).nil?)
        set_parent_background
      else
        set_widget_background
      end
      redraw_widget(0, 0, 0, 0, true, false, false)
    end
    
    typesig { [Color] }
    # Sets the receiver's background color to the color specified
    # by the argument, or to the default system color for the control
    # if the argument is null.
    # <p>
    # Note: This operation is a hint and may be overridden by the platform.
    # For example, on Windows the background of a Button cannot be changed.
    # </p>
    # @param color the new color (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_background(color)
      check_widget
      if ((((self.attr_state & BACKGROUND)).equal?(0)) && (color).nil?)
        return
      end
      gdk_color = nil
      if (!(color).nil?)
        if (color.is_disposed)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        gdk_color = color.attr_handle
      end
      set = false
      if ((gdk_color).nil?)
        # long
        style = OS.gtk_widget_get_modifier_style(self.attr_handle)
        set = !((OS.gtk_rc_style_get_color_flags(style, OS::GTK_STATE_NORMAL) & OS::GTK_RC_BG)).equal?(0)
      else
        old_color = get_background_color
        set = !(old_color.attr_pixel).equal?(gdk_color.attr_pixel)
      end
      if (set)
        if ((color).nil?)
          self.attr_state &= ~BACKGROUND
        else
          self.attr_state |= BACKGROUND
        end
        set_background_color(gdk_color)
        redraw_children
      end
    end
    
    typesig { [::Java::Int, GdkColor] }
    # long
    def set_background_color(handle, color)
      index = OS::GTK_STATE_NORMAL
      # long
      style = OS.gtk_widget_get_modifier_style(handle)
      # long
      ptr = OS.gtk_rc_style_get_bg_pixmap_name(style, index)
      if (!(ptr).equal?(0))
        OS.g_free(ptr)
      end
      name = (color).nil? ? "<parent>" : "<none>"
      buffer = Converter.wcs_to_mbcs(nil, name, true)
      ptr = OS.g_malloc(buffer.attr_length)
      OS.memmove(ptr, buffer, buffer.attr_length)
      OS.gtk_rc_style_set_bg_pixmap_name(style, index, ptr)
      OS.gtk_rc_style_set_bg(style, index, color)
      flags = OS.gtk_rc_style_get_color_flags(style, index)
      flags = ((color).nil?) ? flags & ~OS::GTK_RC_BG : flags | OS::GTK_RC_BG
      OS.gtk_rc_style_set_color_flags(style, index, flags)
      modify_style(handle, style)
    end
    
    typesig { [GdkColor] }
    def set_background_color(color)
      set_background_color(self.attr_handle, color)
    end
    
    typesig { [Image] }
    # Sets the receiver's background image to the image specified
    # by the argument, or to the default system color for the control
    # if the argument is null.  The background image is tiled to fill
    # the available space.
    # <p>
    # Note: This operation is a hint and may be overridden by the platform.
    # For example, on Windows the background of a Button cannot be changed.
    # </p>
    # @param image the new image (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # <li>ERROR_INVALID_ARGUMENT - if the argument is not a bitmap</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.2
    def set_background_image(image)
      check_widget
      if (!(image).nil? && image.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((image).equal?(@background_image))
        return
      end
      @background_image = image
      if (!(@background_image).nil?)
        set_background_pixmap(@background_image.attr_pixmap)
        redraw_widget(0, 0, 0, 0, true, false, false)
      else
        set_widget_background
      end
      redraw_children
    end
    
    typesig { [::Java::Int] }
    # long
    def set_background_pixmap(pixmap)
      # long
      window = OS._gtk_widget_window(paint_handle)
      if (!(window).equal?(0))
        OS.gdk_window_set_back_pixmap(window, @background_image.attr_pixmap, false)
      end
    end
    
    typesig { [::Java::Boolean] }
    # If the argument is <code>true</code>, causes the receiver to have
    # all mouse events delivered to it until the method is called with
    # <code>false</code> as the argument.  Note that on some platforms,
    # a mouse button must currently be down for capture to be assigned.
    # 
    # @param capture <code>true</code> to capture the mouse, and <code>false</code> to release it
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_capture(capture)
      check_widget
      # FIXME !!!!!
      # 
      # if (capture) {
      # OS.gtk_widget_grab_focus (handle);
      # } else {
      # OS.gtk_widget_grab_default (handle);
      # }
    end
    
    typesig { [Cursor] }
    # Sets the receiver's cursor to the cursor specified by the
    # argument, or to the default cursor for that kind of control
    # if the argument is null.
    # <p>
    # When the mouse pointer passes over a control its appearance
    # is changed to match the control's cursor.
    # </p>
    # 
    # @param cursor the new cursor (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_cursor(cursor)
      check_widget
      if (!(cursor).nil? && cursor.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      @cursor = cursor
      set_cursor(!(cursor).nil? ? cursor.attr_handle : 0)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_cursor(cursor)
      # long
      window = event_window
      if (!(window).equal?(0))
        OS.gdk_window_set_cursor(window, cursor)
        if (!OS._gdk_windowing_x11)
          OS.gdk_flush
        else
          # long
          x_display = OS._gdk_display
          OS._xflush(x_display)
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    # Sets the receiver's drag detect state. If the argument is
    # <code>true</code>, the receiver will detect drag gestures,
    # otherwise these gestures will be ignored.
    # 
    # @param dragDetect the new drag detect state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @since 3.3
    def set_drag_detect(drag_detect_)
      check_widget
      if (drag_detect_)
        self.attr_state |= DRAG_DETECT
      else
        self.attr_state &= ~DRAG_DETECT
      end
    end
    
    typesig { [::Java::Boolean] }
    # Enables the receiver if the argument is <code>true</code>,
    # and disables it otherwise. A disabled control is typically
    # not selectable from the user interface and draws with an
    # inactive or "grayed" look.
    # 
    # @param enabled the new enabled state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_enabled(enabled)
      check_widget
      if (((((self.attr_state & DISABLED)).equal?(0))).equal?(enabled))
        return
      end
      control = nil
      fix_focus = false
      if (!enabled)
        if (!(self.attr_display.attr_focus_event).equal?(SWT::FocusOut))
          control = self.attr_display.get_focus_control
          fix_focus = is_focus_ancestor(control)
        end
      end
      if (enabled)
        self.attr_state &= ~DISABLED
      else
        self.attr_state |= DISABLED
      end
      enable_widget(enabled)
      if (is_disposed)
        return
      end
      if (enabled)
        if (!(@enable_window).equal?(0))
          OS.gdk_window_set_user_data(@enable_window, 0)
          OS.gdk_window_destroy(@enable_window)
          @enable_window = 0
        end
      else
        OS.gtk_widget_realize(self.attr_handle)
        # long
        parent_handle = @parent.event_handle
        # long
        window = @parent.event_window
        # long
        top_handle_ = top_handle
        attributes = GdkWindowAttr.new
        attributes.attr_x = OS._gtk_widget_x(top_handle_)
        attributes.attr_y = OS._gtk_widget_y(top_handle_)
        attributes.attr_width = !((self.attr_state & ZERO_WIDTH)).equal?(0) ? 0 : OS._gtk_widget_width(top_handle_)
        attributes.attr_height = !((self.attr_state & ZERO_HEIGHT)).equal?(0) ? 0 : OS._gtk_widget_height(top_handle_)
        attributes.attr_event_mask = (-0x1 & ~OS::ExposureMask)
        attributes.attr_wclass = OS::GDK_INPUT_ONLY
        attributes.attr_window_type = OS::GDK_WINDOW_CHILD
        @enable_window = OS.gdk_window_new(window, attributes, OS::GDK_WA_X | OS::GDK_WA_Y)
        if (!(@enable_window).equal?(0))
          OS.gdk_window_set_user_data(@enable_window, parent_handle)
          if (!OS._gdk_windowing_x11)
            OS.gdk_window_raise(@enable_window)
          else
            # long
            top_window = OS._gtk_widget_window(top_handle_)
            # long
            x_display = OS.gdk_x11_drawable_get_xdisplay(top_window)
            # long
            x_window = OS.gdk_x11_drawable_get_xid(@enable_window)
            x_screen = OS._xdefault_screen(x_display)
            flags = OS::CWStackMode | OS::CWSibling
            changes = XWindowChanges.new
            changes.attr_sibling = OS.gdk_x11_drawable_get_xid(top_window)
            changes.attr_stack_mode = OS::Above
            OS._xreconfigure_wmwindow(x_display, x_window, x_screen, flags, changes)
          end
          if (OS._gtk_widget_visible(top_handle_))
            OS.gdk_window_show_unraised(@enable_window)
          end
        end
      end
      if (fix_focus)
        fix_focus(control)
      end
    end
    
    typesig { [] }
    # Causes the receiver to have the <em>keyboard focus</em>,
    # such that all keyboard events will be delivered to it.  Focus
    # reassignment will respect applicable platform constraints.
    # 
    # @return <code>true</code> if the control got focus, and <code>false</code> if it was unable to.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #forceFocus
    def set_focus
      check_widget
      if (!((self.attr_style & SWT::NO_FOCUS)).equal?(0))
        return false
      end
      return force_focus
    end
    
    typesig { [Font] }
    # Sets the font that the receiver will use to paint textual information
    # to the font specified by the argument, or to the default font for that
    # kind of control if the argument is null.
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
    def set_font(font)
      check_widget
      if ((((self.attr_state & FONT)).equal?(0)) && (font).nil?)
        return
      end
      @font = font
      # long
      font_desc = 0
      if ((font).nil?)
        font_desc = default_font.attr_handle
      else
        if (font.is_disposed)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        font_desc = font.attr_handle
      end
      if ((font).nil?)
        self.attr_state &= ~FONT
      else
        self.attr_state |= FONT
      end
      set_font_description(font_desc)
    end
    
    typesig { [::Java::Int] }
    # long
    def set_font_description(font)
      OS.gtk_widget_modify_font(self.attr_handle, font)
    end
    
    typesig { [Color] }
    # Sets the receiver's foreground color to the color specified
    # by the argument, or to the default system color for the control
    # if the argument is null.
    # <p>
    # Note: This operation is a hint and may be overridden by the platform.
    # </p>
    # @param color the new color (or null)
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_foreground(color)
      check_widget
      if ((((self.attr_state & FOREGROUND)).equal?(0)) && (color).nil?)
        return
      end
      gdk_color = nil
      if (!(color).nil?)
        if (color.is_disposed)
          SWT.error(SWT::ERROR_INVALID_ARGUMENT)
        end
        gdk_color = color.attr_handle
      end
      set = false
      if ((gdk_color).nil?)
        # long
        style = OS.gtk_widget_get_modifier_style(self.attr_handle)
        set = !((OS.gtk_rc_style_get_color_flags(style, OS::GTK_STATE_NORMAL) & OS::GTK_RC_FG)).equal?(0)
      else
        old_color = get_foreground_color
        set = !(old_color.attr_pixel).equal?(gdk_color.attr_pixel)
      end
      if (set)
        if ((color).nil?)
          self.attr_state &= ~FOREGROUND
        else
          self.attr_state |= FOREGROUND
        end
        set_foreground_color(gdk_color)
      end
    end
    
    typesig { [GdkColor] }
    def set_foreground_color(color)
      set_foreground_color(self.attr_handle, color)
    end
    
    typesig { [] }
    def set_initial_bounds
      if (!((self.attr_state & ZERO_WIDTH)).equal?(0) && !((self.attr_state & ZERO_HEIGHT)).equal?(0))
        # Feature in GTK.  On creation, each widget's allocation is
        # initialized to a position of (-1, -1) until the widget is
        # first sized.  The fix is to set the value to (0, 0) as
        # expected by SWT.
        # 
        # long
        top_handle_ = top_handle
        if (!((@parent.attr_style & SWT::MIRRORED)).equal?(0))
          OS._gtk_widget_set_x(top_handle_, @parent.get_client_width)
        else
          OS._gtk_widget_set_x(top_handle_, 0)
        end
        OS._gtk_widget_set_y(top_handle_, 0)
      else
        resize_handle(1, 1)
        force_resize
      end
    end
    
    typesig { [Menu] }
    # Sets the receiver's pop up menu to the argument.
    # All controls may optionally have a pop up
    # menu that is displayed when the user requests one for
    # the control. The sequence of key strokes, button presses
    # and/or button releases that are used to request a pop up
    # menu is platform specific.
    # <p>
    # Note: Disposing of a control that has a pop up menu will
    # dispose of the menu.  To avoid this behavior, set the
    # menu to null before the control is disposed.
    # </p>
    # 
    # @param menu the new pop up menu
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_MENU_NOT_POP_UP - the menu is not a pop up menu</li>
    # <li>ERROR_INVALID_PARENT - if the menu is not in the same widget tree</li>
    # <li>ERROR_INVALID_ARGUMENT - if the menu has been disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_menu(menu)
      check_widget
      if (!(menu).nil?)
        if (((menu.attr_style & SWT::POP_UP)).equal?(0))
          error(SWT::ERROR_MENU_NOT_POP_UP)
        end
        if (!(menu.attr_parent).equal?(menu_shell))
          error(SWT::ERROR_INVALID_PARENT)
        end
      end
      @menu = menu
    end
    
    typesig { [] }
    def set_orientation
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        if (!(self.attr_handle).equal?(0))
          OS.gtk_widget_set_direction(self.attr_handle, OS::GTK_TEXT_DIR_RTL)
        end
        if (!(@fixed_handle).equal?(0))
          OS.gtk_widget_set_direction(@fixed_handle, OS::GTK_TEXT_DIR_RTL)
        end
      end
    end
    
    typesig { [Composite] }
    # Changes the parent of the widget to be the one provided if
    # the underlying operating system supports this feature.
    # Returns <code>true</code> if the parent is successfully changed.
    # 
    # @param parent the new parent for the control.
    # @return <code>true</code> if the parent is changed and <code>false</code> otherwise.
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_INVALID_ARGUMENT - if the argument has been disposed</li>
    # <li>ERROR_NULL_ARGUMENT - if the parent is <code>null</code></li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_parent(parent)
      check_widget
      if ((parent).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (parent.is_disposed)
        SWT.error(SWT::ERROR_INVALID_ARGUMENT)
      end
      if ((@parent).equal?(parent))
        return true
      end
      if (!is_reparentable)
        return false
      end
      # long
      top_handle_ = top_handle
      x = OS._gtk_widget_x(top_handle_)
      width = !((self.attr_state & ZERO_WIDTH)).equal?(0) ? 0 : OS._gtk_widget_width(top_handle_)
      if (!((@parent.attr_style & SWT::MIRRORED)).equal?(0))
        x = @parent.get_client_width - width - x
      end
      if (!((parent.attr_style & SWT::MIRRORED)).equal?(0))
        x = parent.get_client_width - width - x
      end
      y = OS._gtk_widget_y(top_handle_)
      release_parent
      new_shell = parent.get_shell
      old_shell = get_shell
      new_decorations = parent.menu_shell
      old_decorations = menu_shell
      menus = old_shell.find_menus(self)
      if (!(old_shell).equal?(new_shell) || !(old_decorations).equal?(new_decorations))
        fix_children(new_shell, old_shell, new_decorations, old_decorations, menus)
        new_decorations.fix_accel_group
        old_decorations.fix_accel_group
      end
      # long
      new_parent = parent.parenting_handle
      OS.gtk_widget_reparent(top_handle_, new_parent)
      OS.gtk_fixed_move(new_parent, top_handle_, x, y)
      @parent = parent
      set_zorder(nil, false, true)
      return true
    end
    
    typesig { [] }
    def set_parent_background
      set_background_color(self.attr_handle, nil)
      if (!(@fixed_handle).equal?(0))
        set_background_color(@fixed_handle, nil)
      end
    end
    
    typesig { [::Java::Int] }
    # long
    def set_parent_window(widget)
    end
    
    typesig { [::Java::Boolean] }
    def set_radio_selection(value)
      return false
    end
    
    typesig { [::Java::Boolean] }
    # If the argument is <code>false</code>, causes subsequent drawing
    # operations in the receiver to be ignored. No drawing of any kind
    # can occur in the receiver until the flag is set to true.
    # Graphics operations that occurred while the flag was
    # <code>false</code> are lost. When the flag is set to <code>true</code>,
    # the entire widget is marked as needing to be redrawn.  Nested calls
    # to this method are stacked.
    # <p>
    # Note: This operation is a hint and may not be supported on some
    # platforms or for some widgets.
    # </p>
    # 
    # @param redraw the new redraw state
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #redraw(int, int, int, int, boolean)
    # @see #update()
    def set_redraw(redraw_)
      check_widget
      if (redraw_)
        if (((@draw_count -= 1)).equal?(0))
          if (!(@redraw_window).equal?(0))
            # long
            window = paint_window
            # Explicitly hiding the window avoids flicker on GTK+ >= 2.6
            OS.gdk_window_hide(@redraw_window)
            OS.gdk_window_destroy(@redraw_window)
            OS.gdk_window_set_events(window, OS.gtk_widget_get_events(paint_handle))
            @redraw_window = 0
          end
        end
      else
        if ((((@draw_count += 1) - 1)).equal?(0))
          if (!((OS._gtk_widget_flags(self.attr_handle) & OS::GTK_REALIZED)).equal?(0))
            # long
            window = paint_window
            rect = get_bounds
            attributes = GdkWindowAttr.new
            attributes.attr_width = rect.attr_width
            attributes.attr_height = rect.attr_height
            attributes.attr_event_mask = OS::GDK_EXPOSURE_MASK
            attributes.attr_window_type = OS::GDK_WINDOW_CHILD
            @redraw_window = OS.gdk_window_new(window, attributes, 0)
            if (!(@redraw_window).equal?(0))
              mouse_mask = OS::GDK_BUTTON_PRESS_MASK | OS::GDK_BUTTON_RELEASE_MASK | OS::GDK_ENTER_NOTIFY_MASK | OS::GDK_LEAVE_NOTIFY_MASK | OS::GDK_POINTER_MOTION_MASK | OS::GDK_POINTER_MOTION_HINT_MASK | OS::GDK_BUTTON_MOTION_MASK | OS::GDK_BUTTON1_MOTION_MASK | OS::GDK_BUTTON2_MOTION_MASK | OS::GDK_BUTTON3_MOTION_MASK
              OS.gdk_window_set_events(window, OS.gdk_window_get_events(window) & ~mouse_mask)
              OS.gdk_window_set_back_pixmap(@redraw_window, 0, false)
              OS.gdk_window_show(@redraw_window)
            end
          end
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    def set_tab_group_focus(next_)
      return set_tab_item_focus(next_)
    end
    
    typesig { [::Java::Boolean] }
    def set_tab_item_focus(next_)
      if (!is_showing)
        return false
      end
      return force_focus
    end
    
    typesig { [String] }
    # Sets the receiver's tool tip text to the argument, which
    # may be null indicating that no tool tip text should be shown.
    # 
    # @param string the new tool tip text (or null)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def set_tool_tip_text(string)
      check_widget
      set_tool_tip_text(__get_shell, string)
      @tool_tip_text = string
    end
    
    typesig { [Shell, String] }
    def set_tool_tip_text(shell, new_string)
      if (OS::GTK_VERSION >= OS._version(2, 12, 0))
        # Feature in GTK.  In order to prevent children widgets
        # from inheriting their parent's tooltip, the tooltip is
        # a set on a shell only. In order to force the shell tooltip
        # to update when a new tip string is set, the existing string
        # in the tooltip is set to null, followed by running a query.
        # The real tip text can then be set.
        # 
        # Note that this will only run if the control for which the
        # tooltip is being set is the current control (i.e. the control
        # under the pointer).
        if ((self.attr_display.attr_current_control).equal?(self))
          shell.set_tool_tip_text(shell.attr_handle, event_handle, new_string)
        end
      else
        shell.set_tool_tip_text(event_handle, new_string)
      end
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
      if (((((self.attr_state & HIDDEN)).equal?(0))).equal?(visible))
        return
      end
      # long
      top_handle_ = top_handle
      if (visible)
        # It is possible (but unlikely), that application
        # code could have disposed the widget in the show
        # event.  If this happens, just return.
        send_event(SWT::Show)
        if (is_disposed)
          return
        end
        self.attr_state &= ~HIDDEN
        if (((self.attr_state & (ZERO_WIDTH | ZERO_HEIGHT))).equal?(0))
          if (!(@enable_window).equal?(0))
            OS.gdk_window_show_unraised(@enable_window)
          end
          OS.gtk_widget_show(top_handle_)
        end
      else
        # Bug in GTK.  Invoking gtk_widget_hide() on a widget that has
        # focus causes a focus_out_event to be sent. If the client disposes
        # the widget inside the event, GTK GP's.  The fix is to reassign focus
        # before hiding the widget.
        # 
        # NOTE: In order to stop the same widget from taking focus,
        # temporarily clear and set the GTK_VISIBLE flag.
        control = nil
        fix_focus_ = false
        if (!(self.attr_display.attr_focus_event).equal?(SWT::FocusOut))
          control = self.attr_display.get_focus_control
          fix_focus_ = is_focus_ancestor(control)
        end
        self.attr_state |= HIDDEN
        if (fix_focus_)
          OS._gtk_widget_unset_flags(top_handle_, OS::GTK_VISIBLE)
          fix_focus(control)
          if (is_disposed)
            return
          end
          OS._gtk_widget_set_flags(top_handle_, OS::GTK_VISIBLE)
        end
        OS.gtk_widget_hide(top_handle_)
        if (is_disposed)
          return
        end
        if (!(@enable_window).equal?(0))
          OS.gdk_window_hide(@enable_window)
        end
        send_event(SWT::Hide)
      end
    end
    
    typesig { [Control, ::Java::Boolean, ::Java::Boolean] }
    def set_zorder(sibling, above, fix_relations)
      set_zorder(sibling, above, fix_relations, true)
    end
    
    typesig { [Control, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
    def set_zorder(sibling, above, fix_relations, fix_children_)
      index = 0
      sibling_index = 0
      old_next_index = -1
      children = nil
      if (fix_relations)
        # determine the receiver's and sibling's indexes in the parent
        children = @parent.__get_children
        while (index < children.attr_length)
          if ((children[index]).equal?(self))
            break
          end
          index += 1
        end
        if (!(sibling).nil?)
          while (sibling_index < children.attr_length)
            if ((children[sibling_index]).equal?(sibling))
              break
            end
            sibling_index += 1
          end
        end
        # remove "Labelled by" relationships that will no longer be valid
        remove_relation
        if (index + 1 < children.attr_length)
          old_next_index = index + 1
          children[old_next_index].remove_relation
        end
        if (!(sibling).nil?)
          if (above)
            sibling.remove_relation
          else
            if (sibling_index + 1 < children.attr_length)
              children[sibling_index + 1].remove_relation
            end
          end
        end
      end
      # long
      top_handle_ = top_handle
      # long
      sibling_handle = !(sibling).nil? ? sibling.top_handle : 0
      # long
      window = OS._gtk_widget_window(top_handle_)
      if (!(window).equal?(0))
        # long
        sibling_window = 0
        if (!(sibling).nil?)
          if (above && !(sibling.attr_enable_window).equal?(0))
            sibling_window = @enable_window
          else
            sibling_window = OS._gtk_widget_window(sibling_handle)
          end
        end
        # long
        redraw_window = fix_children_ ? @parent.attr_redraw_window : 0
        if (!OS._gdk_windowing_x11 || ((sibling_window).equal?(0) && (!above || (redraw_window).equal?(0))))
          if (above)
            OS.gdk_window_raise(window)
            if (!(redraw_window).equal?(0))
              OS.gdk_window_raise(redraw_window)
            end
            if (!(@enable_window).equal?(0))
              OS.gdk_window_raise(@enable_window)
            end
          else
            if (!(@enable_window).equal?(0))
              OS.gdk_window_lower(@enable_window)
            end
            OS.gdk_window_lower(window)
          end
        else
          changes = XWindowChanges.new
          changes.attr_sibling = OS.gdk_x11_drawable_get_xid(!(sibling_window).equal?(0) ? sibling_window : redraw_window)
          changes.attr_stack_mode = above ? OS::Above : OS::Below
          if (!(redraw_window).equal?(0) && (sibling_window).equal?(0))
            changes.attr_stack_mode = OS::Below
          end
          # long
          x_display = OS.gdk_x11_drawable_get_xdisplay(window)
          # long
          x_window = OS.gdk_x11_drawable_get_xid(window)
          x_screen = OS._xdefault_screen(x_display)
          flags = OS::CWStackMode | OS::CWSibling
          # Feature in X. If the receiver is a top level, XConfigureWindow ()
          # will fail (with a BadMatch error) for top level shells because top
          # level shells are reparented by the window manager and do not share
          # the same X window parent.  This is the correct behavior but it is
          # unexpected.  The fix is to use XReconfigureWMWindow () instead.
          # When the receiver is not a top level shell, XReconfigureWMWindow ()
          # behaves the same as XConfigureWindow ().
          OS._xreconfigure_wmwindow(x_display, x_window, x_screen, flags, changes)
          if (!(@enable_window).equal?(0))
            changes.attr_sibling = OS.gdk_x11_drawable_get_xid(window)
            changes.attr_stack_mode = OS::Above
            x_window = OS.gdk_x11_drawable_get_xid(@enable_window)
            OS._xreconfigure_wmwindow(x_display, x_window, x_screen, flags, changes)
          end
        end
      end
      if (fix_children_)
        if (above)
          @parent.move_above(top_handle_, sibling_handle)
        else
          @parent.move_below(top_handle_, sibling_handle)
        end
      end
      # Make sure that the parent internal windows are on the bottom of the stack
      if (!above && fix_children_)
        @parent.fix_zorder
      end
      if (fix_relations)
        # determine the receiver's new index in the parent
        if (!(sibling).nil?)
          if (above)
            index = sibling_index - (index < sibling_index ? 1 : 0)
          else
            index = sibling_index + (sibling_index < index ? 1 : 0)
          end
        else
          if (above)
            index = 0
          else
            index = children.attr_length - 1
          end
        end
        # add new "Labelled by" relations as needed
        children = @parent.__get_children
        if (0 < index)
          children[index - 1].add_relation(self)
        end
        if (index + 1 < children.attr_length)
          add_relation(children[index + 1])
        end
        if (!(old_next_index).equal?(-1))
          if (old_next_index <= index)
            old_next_index -= 1
          end
          # the last two conditions below ensure that duplicate relations are not hooked
          if (0 < old_next_index && !(old_next_index).equal?(index) && !(old_next_index).equal?(index + 1))
            children[old_next_index - 1].add_relation(children[old_next_index])
          end
        end
      end
    end
    
    typesig { [] }
    def set_widget_background
      if (!(@fixed_handle).equal?(0))
        # long
        style = OS.gtk_widget_get_modifier_style(@fixed_handle)
        modify_style(@fixed_handle, style)
      end
      # long
      style = OS.gtk_widget_get_modifier_style(self.attr_handle)
      modify_style(self.attr_handle, style)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def show_menu(x, y)
      event = Event.new
      event.attr_x = x
      event.attr_y = y
      send_event(SWT::MenuDetect, event)
      if (event.attr_doit)
        if (!(@menu).nil? && !@menu.is_disposed)
          hooks_keys = hooks(SWT::KeyDown) || hooks(SWT::KeyUp)
          @menu.create_immenu(hooks_keys ? im_handle : 0)
          if (!(event.attr_x).equal?(x) || !(event.attr_y).equal?(y))
            @menu.set_location(event.attr_x, event.attr_y)
          end
          @menu.set_visible(true)
          return true
        end
      end
      return false
    end
    
    typesig { [] }
    def show_widget
      # Comment this line to disable zero-sized widgets
      self.attr_state |= ZERO_WIDTH | ZERO_HEIGHT
      # long
      top_handle_ = top_handle
      # long
      parent_handle = @parent.parenting_handle
      @parent.set_parent_window(top_handle_)
      OS.gtk_container_add(parent_handle, top_handle_)
      if (!(self.attr_handle).equal?(0) && !(self.attr_handle).equal?(top_handle_))
        OS.gtk_widget_show(self.attr_handle)
      end
      if (((self.attr_state & (ZERO_WIDTH | ZERO_HEIGHT))).equal?(0))
        if (!(@fixed_handle).equal?(0))
          OS.gtk_widget_show(@fixed_handle)
        end
      end
      if (!(@fixed_handle).equal?(0))
        fix_style(@fixed_handle)
      end
    end
    
    typesig { [Array.typed(::Java::Int)] }
    def sort(items)
      # Shell Sort from K&R, pg 108
      length_ = items.attr_length
      gap = length_ / 2
      while gap > 0
        i = gap
        while i < length_
          j = i - gap
          while j >= 0
            if (items[j] <= items[j + gap])
              swap = items[j]
              items[j] = items[j + gap]
              items[j + gap] = swap
            end
            j -= gap
          end
          i += 1
        end
        gap /= 2
      end
    end
    
    typesig { [::Java::Int] }
    # Based on the argument, perform one of the expected platform
    # traversal action. The argument should be one of the constants:
    # <code>SWT.TRAVERSE_ESCAPE</code>, <code>SWT.TRAVERSE_RETURN</code>,
    # <code>SWT.TRAVERSE_TAB_NEXT</code>, <code>SWT.TRAVERSE_TAB_PREVIOUS</code>,
    # <code>SWT.TRAVERSE_ARROW_NEXT</code> and <code>SWT.TRAVERSE_ARROW_PREVIOUS</code>.
    # 
    # @param traversal the type of traversal
    # @return true if the traversal succeeded
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def traverse(traversal)
      check_widget
      event = Event.new
      event.attr_doit = true
      event.attr_detail = traversal
      return traverse(event)
    end
    
    typesig { [Event, Control] }
    def translate_mnemonic(event, control)
      if ((control).equal?(self))
        return false
      end
      if (!is_visible || !is_enabled)
        return false
      end
      event.attr_doit = (self).equal?(self.attr_display.attr_mnemonic_control) || mnemonic_match(event.attr_character)
      return traverse(event)
    end
    
    typesig { [::Java::Int, GdkEventKey] }
    def translate_mnemonic(keyval, gdk_event)
      key = OS.gdk_keyval_to_unicode(keyval)
      if (key < 0x20)
        return false
      end
      if ((gdk_event.attr_state).equal?(0))
        code = traversal_code(keyval, gdk_event)
        if (((code & SWT::TRAVERSE_MNEMONIC)).equal?(0))
          return false
        end
      else
        shell = __get_shell
        mask = OS::GDK_CONTROL_MASK | OS::GDK_SHIFT_MASK | OS::GDK_MOD1_MASK
        if (!((gdk_event.attr_state & mask)).equal?(OS.gtk_window_get_mnemonic_modifier(shell.attr_shell_handle)))
          return false
        end
      end
      shell = menu_shell
      if (shell.is_visible && shell.is_enabled)
        event = Event.new
        event.attr_detail = SWT::TRAVERSE_MNEMONIC
        if (set_key_state(event, gdk_event))
          return translate_mnemonic(event, nil) || shell.translate_mnemonic(event, self)
        end
      end
      return false
    end
    
    typesig { [GdkEventKey] }
    def translate_traversal(key_event)
      detail = SWT::TRAVERSE_NONE
      key = key_event.attr_keyval
      code = traversal_code(key, key_event)
      all = false
      case (key)
      when OS::GDK_Escape
        all = true
        detail = SWT::TRAVERSE_ESCAPE
      when OS::GDK_KP_Enter, OS::GDK_Return
        all = true
        detail = SWT::TRAVERSE_RETURN
      when OS::GDK_ISO_Left_Tab, OS::GDK_Tab
        next_ = ((key_event.attr_state & OS::GDK_SHIFT_MASK)).equal?(0)
        detail = next_ ? SWT::TRAVERSE_TAB_NEXT : SWT::TRAVERSE_TAB_PREVIOUS
      when OS::GDK_Up, OS::GDK_Left, OS::GDK_Down, OS::GDK_Right
        next_ = (key).equal?(OS::GDK_Down) || (key).equal?(OS::GDK_Right)
        if (!(@parent).nil? && !((@parent.attr_style & SWT::MIRRORED)).equal?(0))
          if ((key).equal?(OS::GDK_Left) || (key).equal?(OS::GDK_Right))
            next_ = !next_
          end
        end
        detail = next_ ? SWT::TRAVERSE_ARROW_NEXT : SWT::TRAVERSE_ARROW_PREVIOUS
      when OS::GDK_Page_Up, OS::GDK_Page_Down
        all = true
        if (((key_event.attr_state & OS::GDK_CONTROL_MASK)).equal?(0))
          return false
        end
        detail = (key).equal?(OS::GDK_Page_Down) ? SWT::TRAVERSE_PAGE_NEXT : SWT::TRAVERSE_PAGE_PREVIOUS
      else
        return false
      end
      event = Event.new
      event.attr_doit = !((code & detail)).equal?(0)
      event.attr_detail = detail
      event.attr_time = key_event.attr_time
      if (!set_key_state(event, key_event))
        return false
      end
      shell = get_shell
      control = self
      begin
        if (control.traverse(event))
          return true
        end
        if (!event.attr_doit && control.hooks(SWT::Traverse))
          return false
        end
        if ((control).equal?(shell))
          return false
        end
        control = control.attr_parent
      end while (all && !(control).nil?)
      return false
    end
    
    typesig { [::Java::Int, GdkEventKey] }
    def traversal_code(key, event)
      code = SWT::TRAVERSE_RETURN | SWT::TRAVERSE_TAB_NEXT | SWT::TRAVERSE_TAB_PREVIOUS | SWT::TRAVERSE_PAGE_NEXT | SWT::TRAVERSE_PAGE_PREVIOUS
      shell = get_shell
      if (!(shell.attr_parent).nil?)
        code |= SWT::TRAVERSE_ESCAPE
      end
      return code
    end
    
    typesig { [Event] }
    def traverse(event)
      # It is possible (but unlikely), that application
      # code could have disposed the widget in the traverse
      # event.  If this happens, return true to stop further
      # event processing.
      send_event(SWT::Traverse, event)
      if (is_disposed)
        return true
      end
      if (!event.attr_doit)
        return false
      end
      case (event.attr_detail)
      when SWT::TRAVERSE_NONE
        return true
      when SWT::TRAVERSE_ESCAPE
        return traverse_escape
      when SWT::TRAVERSE_RETURN
        return traverse_return
      when SWT::TRAVERSE_TAB_NEXT
        return traverse_group(true)
      when SWT::TRAVERSE_TAB_PREVIOUS
        return traverse_group(false)
      when SWT::TRAVERSE_ARROW_NEXT
        return traverse_item(true)
      when SWT::TRAVERSE_ARROW_PREVIOUS
        return traverse_item(false)
      when SWT::TRAVERSE_MNEMONIC
        return traverse_mnemonic(event.attr_character)
      when SWT::TRAVERSE_PAGE_NEXT
        return traverse_page(true)
      when SWT::TRAVERSE_PAGE_PREVIOUS
        return traverse_page(false)
      end
      return false
    end
    
    typesig { [] }
    def traverse_escape
      return false
    end
    
    typesig { [::Java::Boolean] }
    def traverse_group(next_)
      root = compute_tab_root
      group = compute_tab_group
      list = root.compute_tab_list
      length_ = list.attr_length
      index = 0
      while (index < length_)
        if ((list[index]).equal?(group))
          break
        end
        index += 1
      end
      # It is possible (but unlikely), that application
      # code could have disposed the widget in focus in
      # or out events.  Ensure that a disposed widget is
      # not accessed.
      if ((index).equal?(length_))
        return false
      end
      start = index
      offset = (next_) ? 1 : -1
      while (!((index = ((index + offset + length_) % length_))).equal?(start))
        control = list[index]
        if (!control.is_disposed && control.set_tab_group_focus(next_))
          return true
        end
      end
      if (group.is_disposed)
        return false
      end
      return group.set_tab_group_focus(next_)
    end
    
    typesig { [::Java::Boolean] }
    def traverse_item(next_)
      children = @parent.__get_children
      length_ = children.attr_length
      index = 0
      while (index < length_)
        if ((children[index]).equal?(self))
          break
        end
        index += 1
      end
      # It is possible (but unlikely), that application
      # code could have disposed the widget in focus in
      # or out events.  Ensure that a disposed widget is
      # not accessed.
      if ((index).equal?(length_))
        return false
      end
      start = index
      offset = (next_) ? 1 : -1
      while (!((index = (index + offset + length_) % length_)).equal?(start))
        child = children[index]
        if (!child.is_disposed && child.is_tab_item)
          if (child.set_tab_item_focus(next_))
            return true
          end
        end
      end
      return false
    end
    
    typesig { [] }
    def traverse_return
      return false
    end
    
    typesig { [::Java::Boolean] }
    def traverse_page(next_)
      return false
    end
    
    typesig { [::Java::Char] }
    def traverse_mnemonic(key)
      return mnemonic_hit(key)
    end
    
    typesig { [] }
    # Forces all outstanding paint requests for the widget
    # to be processed before this method returns. If there
    # are no outstanding paint request, this method does
    # nothing.
    # <p>
    # Note: This method does not cause a redraw.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #redraw()
    # @see #redraw(int, int, int, int, boolean)
    # @see PaintListener
    # @see SWT#Paint
    def update
      check_widget
      update(false, true)
    end
    
    typesig { [::Java::Boolean, ::Java::Boolean] }
    def update(all, flush)
      # checkWidget();
      if (!OS._gtk_widget_visible(top_handle))
        return
      end
      if (((OS._gtk_widget_flags(self.attr_handle) & OS::GTK_REALIZED)).equal?(0))
        return
      end
      # long
      window = paint_window
      if (flush)
        self.attr_display.flush_exposes(window, all)
      end
      OS.gdk_window_process_updates(window, all)
      OS.gdk_flush
    end
    
    typesig { [] }
    def update_background_mode
      old_state = self.attr_state & PARENT_BACKGROUND
      check_background
      if (!(old_state).equal?((self.attr_state & PARENT_BACKGROUND)))
        set_background
      end
    end
    
    typesig { [::Java::Boolean] }
    def update_layout(all)
      # Do nothing
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def window_proc(handle, arg0, user_data)
      catch(:break_case) do
        # 64
        case (RJava.cast_to_int(user_data))
        when EXPOSE_EVENT_INVERSE
          if ((OS::GTK_VERSION < OS._version(2, 8, 0)) && (((self.attr_state & OBSCURED)).equal?(0)))
            control = find_background_control
            if (!(control).nil? && !(control.attr_background_image).nil?)
              gdk_event = GdkEventExpose.new
              OS.memmove(gdk_event, arg0, GdkEventExpose.attr_sizeof)
              # long
              paint_window_ = paint_window
              # long
              window = gdk_event.attr_window
              if (!(window).equal?(paint_window_))
                throw :break_case, :thrown
              end
              # long
              gdk_gc = OS.gdk_gc_new(window)
              OS.gdk_gc_set_clip_region(gdk_gc, gdk_event.attr_region)
              dest_x = Array.typed(::Java::Int).new(1) { 0 }
              dest_y = Array.typed(::Java::Int).new(1) { 0 }
              OS.gtk_widget_translate_coordinates(paint_handle, control.paint_handle, 0, 0, dest_x, dest_y)
              OS.gdk_gc_set_fill(gdk_gc, OS::GDK_TILED)
              OS.gdk_gc_set_ts_origin(gdk_gc, -dest_x[0], -dest_y[0])
              OS.gdk_gc_set_tile(gdk_gc, control.attr_background_image.attr_pixmap)
              OS.gdk_draw_rectangle(window, gdk_gc, 1, gdk_event.attr_area_x, gdk_event.attr_area_y, gdk_event.attr_area_width, gdk_event.attr_area_height)
              OS.g_object_unref(gdk_gc)
            end
          end
        end
      end
      return super(handle, arg0, user_data)
    end
    
    private
    alias_method :initialize__control, :initialize
  end
  
end
