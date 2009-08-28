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
  module ScrollableImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Gtk
      include ::Org::Eclipse::Swt::Graphics
    }
  end
  
  # This class is the abstract superclass of all classes which
  # represent controls that have standard scroll bars.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>H_SCROLL, V_SCROLL</dd>
  # <dt><b>Events:</b>
  # <dd>(none)</dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation.
  # </p>
  # 
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Scrollable < ScrollableImports.const_get :Control
    include_class_members ScrollableImports
    
    # long
    attr_accessor :scrolled_handle
    alias_method :attr_scrolled_handle, :scrolled_handle
    undef_method :scrolled_handle
    alias_method :attr_scrolled_handle=, :scrolled_handle=
    undef_method :scrolled_handle=
    
    attr_accessor :horizontal_bar
    alias_method :attr_horizontal_bar, :horizontal_bar
    undef_method :horizontal_bar
    alias_method :attr_horizontal_bar=, :horizontal_bar=
    undef_method :horizontal_bar=
    
    attr_accessor :vertical_bar
    alias_method :attr_vertical_bar, :vertical_bar
    undef_method :vertical_bar
    alias_method :attr_vertical_bar=, :vertical_bar=
    undef_method :vertical_bar=
    
    typesig { [] }
    # Prevents uninitialized instances from being created outside the package.
    def initialize
      @scrolled_handle = 0
      @horizontal_bar = nil
      @vertical_bar = nil
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
    # @see SWT#H_SCROLL
    # @see SWT#V_SCROLL
    # @see Widget#checkSubclass
    # @see Widget#getStyle
    def initialize(parent, style)
      @scrolled_handle = 0
      @horizontal_bar = nil
      @vertical_bar = nil
      super(parent, style)
    end
    
    typesig { [] }
    # long
    def client_handle
      return self.attr_handle
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # Given a desired <em>client area</em> for the receiver
    # (as described by the arguments), returns the bounding
    # rectangle which would be required to produce that client
    # area.
    # <p>
    # In other words, it returns a rectangle such that, if the
    # receiver's bounds were set to that rectangle, the area
    # of the receiver which is capable of displaying data
    # (that is, not covered by the "trimmings") would be the
    # rectangle described by the arguments (relative to the
    # receiver's parent).
    # </p>
    # 
    # @param x the desired x coordinate of the client area
    # @param y the desired y coordinate of the client area
    # @param width the desired width of the client area
    # @param height the desired height of the client area
    # @return the required bounds to produce the given client area
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getClientArea
    def compute_trim(x, y, width, height)
      check_widget
      border = 0
      if (!(self.attr_fixed_handle).equal?(0))
        border += OS.gtk_container_get_border_width(self.attr_fixed_handle)
      end
      if (!(@scrolled_handle).equal?(0))
        border += OS.gtk_container_get_border_width(@scrolled_handle)
      end
      trim_x = x - border
      trim_y = y - border
      trim_width = width + (border * 2)
      trim_height = height + (border * 2)
      trim_height += h_scroll_bar_width
      trim_width += v_scroll_bar_width
      if (!(@scrolled_handle).equal?(0))
        if (!(OS.gtk_scrolled_window_get_shadow_type(@scrolled_handle)).equal?(OS::GTK_SHADOW_NONE))
          # long
          style = OS.gtk_widget_get_style(@scrolled_handle)
          xthickness = OS.gtk_style_get_xthickness(style)
          ythickness = OS.gtk_style_get_ythickness(style)
          trim_x -= xthickness
          trim_y -= ythickness
          trim_width += xthickness * 2
          trim_height += ythickness * 2
        end
      end
      return Rectangle.new(trim_x, trim_y, trim_width, trim_height)
    end
    
    typesig { [::Java::Int] }
    def create_scroll_bar(style)
      if ((@scrolled_handle).equal?(0))
        return nil
      end
      bar = ScrollBar.new
      bar.attr_parent = self
      bar.attr_style = style
      bar.attr_display = self.attr_display
      bar.attr_state |= HANDLE
      if (!((style & SWT::H_SCROLL)).equal?(0))
        bar.attr_handle = OS._gtk_scrolled_window_hscrollbar(@scrolled_handle)
        bar.attr_adjustment_handle = OS.gtk_scrolled_window_get_hadjustment(@scrolled_handle)
      else
        bar.attr_handle = OS._gtk_scrolled_window_vscrollbar(@scrolled_handle)
        bar.attr_adjustment_handle = OS.gtk_scrolled_window_get_vadjustment(@scrolled_handle)
      end
      bar.set_orientation
      bar.hook_events
      bar.register
      return bar
    end
    
    typesig { [::Java::Int] }
    def create_widget(index)
      super(index)
      if (!((self.attr_style & SWT::H_SCROLL)).equal?(0))
        @horizontal_bar = create_scroll_bar(SWT::H_SCROLL)
      end
      if (!((self.attr_style & SWT::V_SCROLL)).equal?(0))
        @vertical_bar = create_scroll_bar(SWT::V_SCROLL)
      end
    end
    
    typesig { [] }
    def deregister
      super
      if (!(@scrolled_handle).equal?(0))
        self.attr_display.remove_widget(@scrolled_handle)
      end
    end
    
    typesig { [ScrollBar] }
    def destroy_scroll_bar(bar)
      set_scroll_bar_visible(bar, false)
      # This code is intentionally commented
      # bar.destroyHandle ();
    end
    
    typesig { [] }
    def get_border_width
      check_widget
      border = 0
      if (!(self.attr_fixed_handle).equal?(0))
        border += OS.gtk_container_get_border_width(self.attr_fixed_handle)
      end
      if (!(@scrolled_handle).equal?(0))
        border += OS.gtk_container_get_border_width(@scrolled_handle)
        if (!(OS.gtk_scrolled_window_get_shadow_type(@scrolled_handle)).equal?(OS::GTK_SHADOW_NONE))
          border += OS.gtk_style_get_xthickness(OS.gtk_widget_get_style(@scrolled_handle))
        end
      end
      return border
    end
    
    typesig { [] }
    # Returns a rectangle which describes the area of the
    # receiver which is capable of displaying data (that is,
    # not covered by the "trimmings").
    # 
    # @return the client area
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #computeTrim
    def get_client_area
      check_widget
      force_resize
      # long
      client_handle_ = client_handle
      x = OS._gtk_widget_x(client_handle_)
      y = OS._gtk_widget_y(client_handle_)
      width = !((self.attr_state & ZERO_WIDTH)).equal?(0) ? 0 : OS._gtk_widget_width(client_handle_)
      height = !((self.attr_state & ZERO_HEIGHT)).equal?(0) ? 0 : OS._gtk_widget_height(client_handle_)
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [] }
    # Returns the receiver's horizontal scroll bar if it has
    # one, and null if it does not.
    # 
    # @return the horizontal scroll bar (or null)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_horizontal_bar
      check_widget
      return @horizontal_bar
    end
    
    typesig { [] }
    # Returns the receiver's vertical scroll bar if it has
    # one, and null if it does not.
    # 
    # @return the vertical scroll bar (or null)
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_vertical_bar
      check_widget
      return @vertical_bar
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_scroll_event(widget, event_ptr)
      # long
      result = super(widget, event_ptr)
      # Feature in GTK.  Scrolled windows do not scroll if the scrollbars
      # are hidden.  This is not a bug, but is inconsistent with other platforms.
      # The fix is to set the adjustment values directly.
      if (!((self.attr_state & CANVAS)).equal?(0))
        scroll_bar = nil
        gdk_event = GdkEventScroll.new
        OS.memmove(gdk_event, event_ptr, GdkEventScroll.attr_sizeof)
        if ((gdk_event.attr_direction).equal?(OS::GDK_SCROLL_UP) || (gdk_event.attr_direction).equal?(OS::GDK_SCROLL_DOWN))
          scroll_bar = @vertical_bar
        else
          scroll_bar = @horizontal_bar
        end
        if (!(scroll_bar).nil? && !OS._gtk_widget_visible(scroll_bar.attr_handle) && scroll_bar.get_enabled)
          adjustment = GtkAdjustment.new
          OS.memmove(adjustment, scroll_bar.attr_adjustment_handle)
          # Calculate wheel delta to match GTK+ 2.4 and higher
          wheel_delta = RJava.cast_to_int(Math.pow(adjustment.attr_page_size, 2.0 / 3.0))
          if ((gdk_event.attr_direction).equal?(OS::GDK_SCROLL_UP) || (gdk_event.attr_direction).equal?(OS::GDK_SCROLL_LEFT))
            wheel_delta = -wheel_delta
          end
          value = RJava.cast_to_int(Math.max(adjustment.attr_lower, Math.min(adjustment.attr_upper - adjustment.attr_page_size, adjustment.attr_value + wheel_delta)))
          OS.gtk_adjustment_set_value(scroll_bar.attr_adjustment_handle, value)
          return 1
        end
      end
      return result
    end
    
    typesig { [] }
    def h_scroll_bar_width
      if ((@horizontal_bar).nil?)
        return 0
      end
      # long
      h_bar_handle = OS._gtk_scrolled_window_hscrollbar(@scrolled_handle)
      if ((h_bar_handle).equal?(0))
        return 0
      end
      requisition = GtkRequisition.new
      OS.gtk_widget_size_request(h_bar_handle, requisition)
      spacing = OS._gtk_scrolled_window_scrollbar_spacing(@scrolled_handle)
      return requisition.attr_height + spacing
    end
    
    typesig { [] }
    def send_leave_notify
      return !(@scrolled_handle).equal?(0)
    end
    
    typesig { [] }
    def set_orientation
      super
      if (!((self.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
        if (!(@scrolled_handle).equal?(0))
          OS.gtk_widget_set_direction(@scrolled_handle, OS::GTK_TEXT_DIR_RTL)
        end
      end
    end
    
    typesig { [ScrollBar, ::Java::Boolean] }
    def set_scroll_bar_visible(bar, visible)
      if ((@scrolled_handle).equal?(0))
        return false
      end
      hsp = Array.typed(::Java::Int).new(1) { 0 }
      vsp = Array.typed(::Java::Int).new(1) { 0 }
      OS.gtk_scrolled_window_get_policy(@scrolled_handle, hsp, vsp)
      policy = visible ? OS::GTK_POLICY_ALWAYS : OS::GTK_POLICY_NEVER
      if (!((bar.attr_style & SWT::HORIZONTAL)).equal?(0))
        if ((hsp[0]).equal?(policy))
          return false
        end
        hsp[0] = policy
      else
        if ((vsp[0]).equal?(policy))
          return false
        end
        vsp[0] = policy
      end
      OS.gtk_scrolled_window_set_policy(@scrolled_handle, hsp[0], vsp[0])
      return true
    end
    
    typesig { [] }
    def redraw_background_image
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
    def redraw_widget(x, y, width, height, redraw_all, all, trim)
      super(x, y, width, height, redraw_all, all, trim)
      if (((OS._gtk_widget_flags(self.attr_handle) & OS::GTK_REALIZED)).equal?(0))
        return
      end
      if (!trim)
        return
      end
      # long
      top_handle_ = top_handle
      paint_handle_ = paint_handle
      if ((top_handle_).equal?(paint_handle_))
        return
      end
      # long
      window = OS._gtk_widget_window(top_handle_)
      rect = GdkRectangle.new
      if (redraw_all)
        rect.attr_width = OS._gtk_widget_width(top_handle_)
        rect.attr_height = OS._gtk_widget_height(top_handle_)
      else
        dest_x = Array.typed(::Java::Int).new(1) { 0 }
        dest_y = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_widget_translate_coordinates(paint_handle_, top_handle_, x, y, dest_x, dest_y)
        rect.attr_x = dest_x[0]
        rect.attr_y = dest_y[0]
        rect.attr_width = width
        rect.attr_height = height
      end
      OS.gdk_window_invalidate_rect(window, rect, all)
    end
    
    typesig { [] }
    def register
      super
      if (!(@scrolled_handle).equal?(0))
        self.attr_display.add_widget(@scrolled_handle, self)
      end
    end
    
    typesig { [] }
    def release_handle
      super
      @scrolled_handle = 0
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
      if (!(@horizontal_bar).nil?)
        @horizontal_bar.release(false)
        @horizontal_bar = nil
      end
      if (!(@vertical_bar).nil?)
        @vertical_bar.release(false)
        @vertical_bar = nil
      end
      super(destroy)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def resize_handle(width, height)
      if (!(self.attr_fixed_handle).equal?(0))
        OS.gtk_widget_set_size_request(self.attr_fixed_handle, width, height)
      end
      OS.gtk_widget_set_size_request(!(@scrolled_handle).equal?(0) ? @scrolled_handle : self.attr_handle, width, height)
    end
    
    typesig { [] }
    def show_widget
      super
      if (!(@scrolled_handle).equal?(0))
        OS.gtk_widget_show(@scrolled_handle)
      end
    end
    
    typesig { [] }
    # long
    def top_handle
      if (!(self.attr_fixed_handle).equal?(0))
        return self.attr_fixed_handle
      end
      if (!(@scrolled_handle).equal?(0))
        return @scrolled_handle
      end
      return super
    end
    
    typesig { [ScrollBar] }
    def update_scroll_bar_value(bar)
      redraw_background_image
    end
    
    typesig { [] }
    def v_scroll_bar_width
      if ((@vertical_bar).nil?)
        return 0
      end
      # long
      v_bar_handle = OS._gtk_scrolled_window_vscrollbar(@scrolled_handle)
      if ((v_bar_handle).equal?(0))
        return 0
      end
      requisition = GtkRequisition.new
      OS.gtk_widget_size_request(v_bar_handle, requisition)
      spacing = OS._gtk_scrolled_window_scrollbar_spacing(@scrolled_handle)
      return requisition.attr_width + spacing
    end
    
    private
    alias_method :initialize__scrollable, :initialize
  end
  
end
