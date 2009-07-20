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
  module ScrollableImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGRect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Rect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :ControlKind
      include ::Org::Eclipse::Swt
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
    def initialize
      @scrolled_handle = 0
      @horizontal_bar = nil
      @vertical_bar = nil
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
      out_metric = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_theme_metric(OS.attr_k_theme_metric_scroll_bar_width, out_metric)
      if (!(@horizontal_bar).nil?)
        height += out_metric[0]
      end
      if (!(@vertical_bar).nil?)
        width += out_metric[0]
      end
      inset_ = inset
      x -= inset_.attr_left
      y -= inset_.attr_top
      width += inset_.attr_left + inset_.attr_right
      height += inset_.attr_top + inset_.attr_bottom
      return Rectangle.new(x, y, width, height)
    end
    
    typesig { [::Java::Int] }
    def create_scroll_bar(style)
      return ScrollBar.new(self, style)
    end
    
    typesig { [::Java::Int] }
    def create_standard_bar(style)
      bar_handle = find_standard_bar(style)
      if ((bar_handle).equal?(0))
        return nil
      end
      bar = ScrollBar.new
      bar.attr_parent = self
      bar.attr_style = style
      bar.attr_display = self.attr_display
      bar.attr_handle = bar_handle
      bar.register
      bar.hook_events
      return bar
    end
    
    typesig { [] }
    def create_widget
      super
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
      bar.destroy_handle
    end
    
    typesig { [::Java::Int] }
    def find_standard_bar(style)
      parent_handle = !(@scrolled_handle).equal?(0) ? @scrolled_handle : self.attr_handle
      count = Array.typed(::Java::Short).new(1) { 0 }
      OS._count_sub_controls(parent_handle, count)
      if ((count[0]).equal?(0))
        return 0
      end
      bar_handle = 0
      out_metric = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_theme_metric(OS.attr_k_theme_metric_scroll_bar_width, out_metric)
      out_control = Array.typed(::Java::Int).new(1) { 0 }
      kind = ControlKind.new
      property = Array.typed(::Java::Int).new(1) { 0 }
      i = 0
      while i < count[0]
        OS._get_indexed_sub_control(parent_handle, RJava.cast_to_short((i + 1)), out_control)
        OS._get_control_kind(out_control[0], kind)
        if ((kind.attr_kind).equal?(OS.attr_k_control_kind_scroll_bar))
          property[0] = 0
          OS._get_control_property(out_control[0], Display::SWT0, Display::SWT0, 4, nil, property)
          if ((property[0]).equal?(0))
            point = get_control_size(out_control[0])
            if (!((style & SWT::H_SCROLL)).equal?(0))
              if ((point.attr_y).equal?(out_metric[0]))
                bar_handle = out_control[0]
              end
            else
              if ((point.attr_x).equal?(out_metric[0]))
                bar_handle = out_control[0]
              end
            end
          end
        end
        i += 1
      end
      return bar_handle
    end
    
    typesig { [] }
    def get_border_width
      check_widget
      if (!((self.attr_state & CANVAS)).equal?(0) && has_border)
        out_metric = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_theme_metric(OS.attr_k_theme_metric_edit_text_frame_outset, out_metric)
        return out_metric[0]
      end
      return 0
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
      rect = Rect.new
      OS._get_control_bounds(self.attr_handle, rect)
      return Rectangle.new(0, 0, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top)
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
    
    typesig { [] }
    def hook_events
      super
      if (!((self.attr_state & CANVAS)).equal?(0) && !(@scrolled_handle).equal?(0))
        control_proc = self.attr_display.attr_control_proc
        mask = Array.typed(::Java::Int).new([OS.attr_k_event_class_control, OS.attr_k_event_control_draw, ])
        control_target = OS._get_control_event_target(@scrolled_handle)
        OS._install_event_handler(control_target, control_proc, mask.attr_length / 2, mask, @scrolled_handle, nil)
      end
    end
    
    typesig { [] }
    def hooks_keys
      return hooks(SWT::KeyDown) || hooks(SWT::KeyUp) || hooks(SWT::Traverse)
    end
    
    typesig { [] }
    def inset
      if (!((self.attr_state & CANVAS)).equal?(0))
        rect = Rect.new
        out_metric = Array.typed(::Java::Int).new(1) { 0 }
        if (draw_focus_ring && ((self.attr_style & SWT::NO_FOCUS)).equal?(0) && hooks_keys)
          OS._get_theme_metric(OS.attr_k_theme_metric_focus_rect_outset, out_metric)
          rect.attr_left += out_metric[0]
          rect.attr_top += out_metric[0]
          rect.attr_right += out_metric[0]
          rect.attr_bottom += out_metric[0]
        end
        if (has_border)
          OS._get_theme_metric(OS.attr_k_theme_metric_edit_text_frame_outset, out_metric)
          rect.attr_left += out_metric[0]
          rect.attr_top += out_metric[0]
          rect.attr_right += out_metric[0]
          rect.attr_bottom += out_metric[0]
        end
        return rect
      end
      return EMPTY_RECT
    end
    
    typesig { [::Java::Int] }
    def is_trim_handle(trim_handle)
      if (!(@horizontal_bar).nil? && (@horizontal_bar.attr_handle).equal?(trim_handle))
        return true
      end
      if (!(@vertical_bar).nil? && (@vertical_bar.attr_handle).equal?(trim_handle))
        return true
      end
      return (trim_handle).equal?(@scrolled_handle)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_wheel_moved(next_handler, the_event, user_data)
      v_position = (@vertical_bar).nil? ? 0 : @vertical_bar.get_selection
      h_position = (@horizontal_bar).nil? ? 0 : @horizontal_bar.get_selection
      result = super(next_handler, the_event, user_data)
      redraw = false
      if (!(@vertical_bar).nil?)
        position = @vertical_bar.get_selection
        if (!(position).equal?(v_position))
          event = Event.new
          event.attr_detail = position < v_position ? SWT::PAGE_UP : SWT::PAGE_DOWN
          @vertical_bar.send_event(SWT::Selection, event)
          redraw = true
        end
      end
      if (!(@horizontal_bar).nil?)
        position = @horizontal_bar.get_selection
        if (!(position).equal?(h_position))
          event = Event.new
          event.attr_detail = position < v_position ? SWT::PAGE_UP : SWT::PAGE_DOWN
          @horizontal_bar.send_event(SWT::Selection, event)
          redraw = true
        end
      end
      if (redraw)
        redraw_background_image
      end
      return result
    end
    
    typesig { [] }
    def redraw_background_image
      if ((@scrolled_handle).equal?(0))
        control = find_background_control
        if (!(control).nil? && !(control.attr_background_image).nil?)
          redraw_widget(self.attr_handle, false)
        end
      end
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
    
    typesig { [::Java::Int] }
    def reset_visible_region(control)
      if (!(@vertical_bar).nil?)
        @vertical_bar.reset_visible_region(control)
      end
      if (!(@horizontal_bar).nil?)
        @horizontal_bar.reset_visible_region(control)
      end
      super(control)
    end
    
    typesig { [] }
    def resize_client_area
      if ((@scrolled_handle).equal?(0))
        return
      end
      if (((self.attr_state & CANVAS)).equal?(0))
        return
      end
      v_width = 0
      h_height = 0
      out_metric = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_theme_metric(OS.attr_k_theme_metric_scroll_bar_width, out_metric)
      is_visible_hbar = !(@horizontal_bar).nil? && @horizontal_bar.get_visible
      is_visible_vbar = !(@vertical_bar).nil? && @vertical_bar.get_visible
      if (is_visible_hbar)
        h_height = out_metric[0]
      end
      if (is_visible_vbar)
        v_width = out_metric[0]
      end
      width = 0
      height = 0
      rect = CGRect.new
      OS._hiview_get_bounds(@scrolled_handle, rect)
      width = RJava.cast_to_int(rect.attr_width)
      height = RJava.cast_to_int(rect.attr_height)
      inset_ = inset
      width = Math.max(0, width - v_width - inset_.attr_left - inset_.attr_right)
      height = Math.max(0, height - h_height - inset_.attr_top - inset_.attr_bottom)
      set_bounds(self.attr_handle, inset_.attr_left, inset_.attr_top, width, height, true, true, false)
      if (is_visible_hbar)
        set_bounds(@horizontal_bar.attr_handle, inset_.attr_left, inset_.attr_top + height, width, h_height, true, true, false)
      end
      if (is_visible_vbar)
        set_bounds(@vertical_bar.attr_handle, inset_.attr_left + width, inset_.attr_top, v_width, height, true, true, false)
      end
    end
    
    typesig { [::Java::Short, ::Java::Int] }
    def send_mouse_wheel(wheel_axis, wheel_delta)
      if (!((self.attr_state & CANVAS)).equal?(0))
        bar = (wheel_axis).equal?(OS.attr_k_event_mouse_wheel_axis_x) ? @horizontal_bar : @vertical_bar
        if (!(bar).nil? && bar.get_enabled)
          bar.set_selection(Math.max(0, bar.get_selection - bar.get_increment * wheel_delta))
          event = Event.new
          event.attr_detail = wheel_delta > 0 ? SWT::PAGE_UP : SWT::PAGE_DOWN
          bar.send_event(SWT::Selection, event)
          return true
        end
      end
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(x, y, width, height, move, resize, events)
      result = super(x, y, width, height, move, resize, false)
      if (!((result & MOVED)).equal?(0))
        if (events)
          send_event(SWT::Move)
        end
      end
      if (!((result & RESIZED)).equal?(0))
        resize_client_area
        if (events)
          send_event(SWT::Resize)
        end
      end
      return result
    end
    
    typesig { [ScrollBar, ::Java::Boolean] }
    def set_scroll_bar_visible(bar, visible)
      if ((@scrolled_handle).equal?(0))
        return false
      end
      if (((self.attr_state & CANVAS)).equal?(0))
        return false
      end
      resize_client_area
      set_visible(bar.attr_handle, visible)
      return true
    end
    
    typesig { [] }
    def set_zorder
      super
      if (!(@scrolled_handle).equal?(0))
        OS._hiview_add_subview(@scrolled_handle, self.attr_handle)
      end
    end
    
    typesig { [] }
    def top_handle
      if (!(@scrolled_handle).equal?(0))
        return @scrolled_handle
      end
      return self.attr_handle
    end
    
    private
    alias_method :initialize__scrollable, :initialize
  end
  
end
