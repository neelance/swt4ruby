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
  module WidgetImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CFRange
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGRect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :RGBColor
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Rect
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :PixMap
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :BitMap
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Events
    }
  end
  
  # This class is the abstract superclass of all user interface objects.
  # Widgets are created, disposed and issue notification to listeners
  # when events occur which affect them.
  # <dl>
  # <dt><b>Styles:</b></dt>
  # <dd>(none)</dd>
  # <dt><b>Events:</b></dt>
  # <dd>Dispose</dd>
  # </dl>
  # <p>
  # IMPORTANT: This class is intended to be subclassed <em>only</em>
  # within the SWT implementation. However, it has not been marked
  # final to allow those outside of the SWT development team to implement
  # patched versions of the class in order to get around specific
  # limitations in advance of when those limitations can be addressed
  # by the team.  Any class built using subclassing to access the internals
  # of this class will likely fail to compile or run between releases and
  # may be strongly platform specific. Subclassing should not be attempted
  # without an intimate and detailed understanding of the workings of the
  # hierarchy. No support is provided for user-written classes which are
  # implemented as subclasses of this class.
  # </p>
  # 
  # @see #checkSubclass
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class Widget 
    include_class_members WidgetImports
    
    attr_accessor :style
    alias_method :attr_style, :style
    undef_method :style
    alias_method :attr_style=, :style=
    undef_method :style=
    
    attr_accessor :state
    alias_method :attr_state, :state
    undef_method :state
    alias_method :attr_state=, :state=
    undef_method :state=
    
    attr_accessor :display
    alias_method :attr_display, :display
    undef_method :display
    alias_method :attr_display=, :display=
    undef_method :display=
    
    attr_accessor :event_table
    alias_method :attr_event_table, :event_table
    undef_method :event_table
    alias_method :attr_event_table=, :event_table=
    undef_method :event_table=
    
    attr_accessor :data
    alias_method :attr_data, :data
    undef_method :data
    alias_method :attr_data=, :data=
    undef_method :data=
    
    class_module.module_eval {
      # Global state flags
      const_set_lazy(:DISPOSED) { 1 << 0 }
      const_attr_reader  :DISPOSED
      
      const_set_lazy(:CANVAS) { 1 << 1 }
      const_attr_reader  :CANVAS
      
      const_set_lazy(:KEYED_DATA) { 1 << 2 }
      const_attr_reader  :KEYED_DATA
      
      const_set_lazy(:DISABLED) { 1 << 3 }
      const_attr_reader  :DISABLED
      
      const_set_lazy(:HIDDEN) { 1 << 4 }
      const_attr_reader  :HIDDEN
      
      const_set_lazy(:GRAB) { 1 << 5 }
      const_attr_reader  :GRAB
      
      const_set_lazy(:MOVED) { 1 << 6 }
      const_attr_reader  :MOVED
      
      const_set_lazy(:RESIZED) { 1 << 7 }
      const_attr_reader  :RESIZED
      
      const_set_lazy(:EXPANDING) { 1 << 8 }
      const_attr_reader  :EXPANDING
      
      const_set_lazy(:IGNORE_WHEEL) { 1 << 9 }
      const_attr_reader  :IGNORE_WHEEL
      
      const_set_lazy(:PARENT_BACKGROUND) { 1 << 10 }
      const_attr_reader  :PARENT_BACKGROUND
      
      const_set_lazy(:THEME_BACKGROUND) { 1 << 11 }
      const_attr_reader  :THEME_BACKGROUND
      
      # A layout was requested on this widget
      const_set_lazy(:LAYOUT_NEEDED) { 1 << 12 }
      const_attr_reader  :LAYOUT_NEEDED
      
      # The preferred size of a child has changed
      const_set_lazy(:LAYOUT_CHANGED) { 1 << 13 }
      const_attr_reader  :LAYOUT_CHANGED
      
      # A layout was requested in this widget hierachy
      const_set_lazy(:LAYOUT_CHILD) { 1 << 14 }
      const_attr_reader  :LAYOUT_CHILD
      
      # More global state flags
      const_set_lazy(:RELEASED) { 1 << 15 }
      const_attr_reader  :RELEASED
      
      const_set_lazy(:DISPOSE_SENT) { 1 << 16 }
      const_attr_reader  :DISPOSE_SENT
      
      const_set_lazy(:FOREIGN_HANDLE) { 1 << 17 }
      const_attr_reader  :FOREIGN_HANDLE
      
      const_set_lazy(:DRAG_DETECT) { 1 << 18 }
      const_attr_reader  :DRAG_DETECT
      
      # Safari fixes
      const_set_lazy(:SAFARI_EVENTS_FIX) { 1 << 19 }
      const_attr_reader  :SAFARI_EVENTS_FIX
      
      const_set_lazy(:SAFARI_EVENTS_FIX_KEY) { "org.eclipse.swt.internal.safariEventsFix" }
      const_attr_reader  :SAFARI_EVENTS_FIX_KEY
      
      # $NON-NLS-1$
      # Default size for widgets
      const_set_lazy(:DEFAULT_WIDTH) { 64 }
      const_attr_reader  :DEFAULT_WIDTH
      
      const_set_lazy(:DEFAULT_HEIGHT) { 64 }
      const_attr_reader  :DEFAULT_HEIGHT
      
      const_set_lazy(:EMPTY_RECT) { Rect.new }
      const_attr_reader  :EMPTY_RECT
    }
    
    typesig { [] }
    def initialize
      @style = 0
      @state = 0
      @display = nil
      @event_table = nil
      @data = nil
      # Do nothing
    end
    
    typesig { [Widget, ::Java::Int] }
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
    # @param parent a widget which will be the parent of the new instance (cannot be null)
    # @param style the style of widget to construct
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the parent is disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # 
    # @see SWT
    # @see #checkSubclass
    # @see #getStyle
    def initialize(parent, style)
      @style = 0
      @state = 0
      @display = nil
      @event_table = nil
      @data = nil
      check_subclass
      check_parent(parent)
      @style = style
      @display = parent.attr_display
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def action_proc(the_control, part_code)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, Listener] }
    # Adds the listener to the collection of listeners who will
    # be notified when an event of the given type occurs. When the
    # event does occur in the widget, the listener is notified by
    # sending it the <code>handleEvent()</code> message. The event
    # type is one of the event constants defined in class <code>SWT</code>.
    # 
    # @param eventType the type of event to listen for
    # @param listener the listener which should be notified when the event occurs
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Listener
    # @see SWT
    # @see #getListeners(int)
    # @see #removeListener(int, Listener)
    # @see #notifyListeners
    def add_listener(event_type, listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      __add_listener(event_type, listener)
    end
    
    typesig { [::Java::Int, Listener] }
    def __add_listener(event_type, listener)
      if ((@event_table).nil?)
        @event_table = EventTable.new
      end
      @event_table.hook(event_type, listener)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def call_paint_event_handler(control, damage_rgn, visible_rgn, the_event, next_handler)
      return OS._call_next_event_handler(next_handler, the_event)
    end
    
    typesig { [DisposeListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when the widget is disposed. When the widget is
    # disposed, the listener is notified by sending it the
    # <code>widgetDisposed()</code> message.
    # 
    # @param listener the listener which should be notified when the receiver is disposed
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see DisposeListener
    # @see #removeDisposeListener
    def add_dispose_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = TypedListener.new(listener)
      add_listener(SWT::Dispose, typed_listener)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def check_bits(style, int0, int1, int2, int3, int4, int5)
        mask = int0 | int1 | int2 | int3 | int4 | int5
        if (((style & mask)).equal?(0))
          style |= int0
        end
        if (!((style & int0)).equal?(0))
          style = (style & ~mask) | int0
        end
        if (!((style & int1)).equal?(0))
          style = (style & ~mask) | int1
        end
        if (!((style & int2)).equal?(0))
          style = (style & ~mask) | int2
        end
        if (!((style & int3)).equal?(0))
          style = (style & ~mask) | int3
        end
        if (!((style & int4)).equal?(0))
          style = (style & ~mask) | int4
        end
        if (!((style & int5)).equal?(0))
          style = (style & ~mask) | int5
        end
        return style
      end
    }
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def calculate_visible_region(control, visible_rgn, clip_children)
      temp_rgn = OS._new_rgn
      if (OS._is_control_visible(control))
        child_rgn = OS._new_rgn
        window = OS._get_control_owner(control)
        count = Array.typed(::Java::Short).new(1) { 0 }
        out_control = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_root_control(window, out_control)
        root = out_control[0]
        OS._get_control_region(root, RJava.cast_to_short(OS.attr_k_control_structure_meta_part), visible_rgn)
        temp_control = control
        last_control = 0
        while (!(temp_control).equal?(root))
          OS._get_control_region(temp_control, RJava.cast_to_short(OS.attr_k_control_structure_meta_part), temp_rgn)
          OS._hiview_convert_region(temp_rgn, temp_control, root)
          OS._sect_rgn(temp_rgn, visible_rgn, visible_rgn)
          if (OS._empty_rgn(visible_rgn))
            break
          end
          if (clip_children || !(temp_control).equal?(control))
            OS._count_sub_controls(temp_control, count)
            i = 0
            while i < count[0]
              OS._get_indexed_sub_control(temp_control, RJava.cast_to_short((count[0] - i)), out_control)
              child = out_control[0]
              if ((child).equal?(last_control))
                break
              end
              if (!OS._is_control_visible(child))
                i += 1
                next
              end
              OS._get_control_region(child, RJava.cast_to_short(OS.attr_k_control_structure_meta_part), temp_rgn)
              OS._hiview_convert_region(temp_rgn, child, root)
              OS._union_rgn(temp_rgn, child_rgn, child_rgn)
              i += 1
            end
          end
          last_control = temp_control
          OS._get_super_control(temp_control, out_control)
          temp_control = out_control[0]
        end
        OS._diff_rgn(visible_rgn, child_rgn, visible_rgn)
        OS._dispose_rgn(child_rgn)
      else
        OS._copy_rgn(temp_rgn, visible_rgn)
      end
      OS._dispose_rgn(temp_rgn)
    end
    
    typesig { [] }
    def check_open
      # Do nothing
    end
    
    typesig { [Widget] }
    def check_orientation(parent)
      @style &= ~SWT::MIRRORED
      if (((@style & (SWT::LEFT_TO_RIGHT | SWT::RIGHT_TO_LEFT))).equal?(0))
        if (!(parent).nil?)
          if (!((parent.attr_style & SWT::LEFT_TO_RIGHT)).equal?(0))
            @style |= SWT::LEFT_TO_RIGHT
          end
          if (!((parent.attr_style & SWT::RIGHT_TO_LEFT)).equal?(0))
            @style |= SWT::RIGHT_TO_LEFT
          end
        end
      end
      @style = check_bits(@style, SWT::LEFT_TO_RIGHT, SWT::RIGHT_TO_LEFT, 0, 0, 0, 0)
    end
    
    typesig { [Widget] }
    def check_parent(parent)
      if ((parent).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (parent.is_disposed)
        error(SWT::ERROR_INVALID_ARGUMENT)
      end
      parent.check_widget
      parent.check_open
    end
    
    typesig { [] }
    # Checks that this class can be subclassed.
    # <p>
    # The SWT class library is intended to be subclassed
    # only at specific, controlled points (most notably,
    # <code>Composite</code> and <code>Canvas</code> when
    # implementing new widgets). This method enforces this
    # rule unless it is overridden.
    # </p><p>
    # <em>IMPORTANT:</em> By providing an implementation of this
    # method that allows a subclass of a class which does not
    # normally allow subclassing to be created, the implementer
    # agrees to be fully responsible for the fact that any such
    # subclass will likely fail between SWT releases and will be
    # strongly platform specific. No support is provided for
    # user-written classes which are implemented in this fashion.
    # </p><p>
    # The ability to subclass outside of the allowed SWT classes
    # is intended purely to enable those not on the SWT development
    # team to implement patches in order to get around specific
    # limitations in advance of when those limitations can be
    # addressed by the team. Subclassing should not be attempted
    # without an intimate and detailed understanding of the hierarchy.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    def check_subclass
      if (!is_valid_subclass)
        error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [] }
    # Throws an <code>SWTException</code> if the receiver can not
    # be accessed by the caller. This may include both checks on
    # the state of the receiver and more generally on the entire
    # execution context. This method <em>should</em> be called by
    # widget implementors to enforce the standard SWT invariants.
    # <p>
    # Currently, it is an error to invoke any method (other than
    # <code>isDisposed()</code>) on a widget that has had its
    # <code>dispose()</code> method called. It is also an error
    # to call widget methods from any thread that is different
    # from the thread that created the widget.
    # </p><p>
    # In future releases of SWT, there may be more or fewer error
    # checks and exceptions may be thrown for different reasons.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def check_widget
      display = @display
      if ((display).nil?)
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      if (!(display.attr_thread).equal?(JavaThread.current_thread))
        error(SWT::ERROR_THREAD_INVALID_ACCESS)
      end
      if (!((@state & DISPOSED)).equal?(0))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def color_proc(in_control, in_message, in_draw_depth, in_draw_in_color)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def contains(shell_x, shell_y)
      return true
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def clock_proc(next_handler, the_event, user_data)
      kind = OS._get_event_kind(the_event)
      case (kind)
      when OS.attr_k_event_clock_date_or_time_changed
        return k_event_clock_date_or_time_changed(next_handler, the_event, user_data)
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def control_proc(next_handler, the_event, user_data)
      event_kind = OS._get_event_kind(the_event)
      case (event_kind)
      when OS.attr_k_event_control_activate
        return k_event_control_activate(next_handler, the_event, user_data)
      when OS.attr_k_event_control_apply_background
        return k_event_control_apply_background(next_handler, the_event, user_data)
      when OS.attr_k_event_control_bounds_changed
        return k_event_control_bounds_changed(next_handler, the_event, user_data)
      when OS.attr_k_event_control_click
        return k_event_control_click(next_handler, the_event, user_data)
      when OS.attr_k_event_control_contextual_menu_click
        return k_event_control_contextual_menu_click(next_handler, the_event, user_data)
      when OS.attr_k_event_control_deactivate
        return k_event_control_deactivate(next_handler, the_event, user_data)
      when OS.attr_k_event_control_draw
        return k_event_control_draw(next_handler, the_event, user_data)
      when OS.attr_k_event_control_get_part_region
        return k_event_control_get_part_region(next_handler, the_event, user_data)
      when OS.attr_k_event_control_hit
        return k_event_control_hit(next_handler, the_event, user_data)
      when OS.attr_k_event_control_set_cursor
        return k_event_control_set_cursor(next_handler, the_event, user_data)
      when OS.attr_k_event_control_set_focus_part
        return k_event_control_set_focus_part(next_handler, the_event, user_data)
      when OS.attr_k_event_control_track
        return k_event_control_track(next_handler, the_event, user_data)
      when OS.attr_k_event_control_get_focus_part
        return k_event_control_get_focus_part(next_handler, the_event, user_data)
      when OS.attr_k_event_control_hit_test
        return k_event_control_hit_test(next_handler, the_event, user_data)
      when OS.attr_k_event_control_get_click_activation
        return k_event_control_get_click_activation(next_handler, the_event, user_data)
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def accessibility_proc(next_handler, the_event, user_data)
      event_kind = OS._get_event_kind(the_event)
      case (event_kind)
      when OS.attr_k_event_accessible_get_child_at_point
        return k_event_accessible_get_child_at_point(next_handler, the_event, user_data)
      when OS.attr_k_event_accessible_get_focused_child
        return k_event_accessible_get_focused_child(next_handler, the_event, user_data)
      when OS.attr_k_event_accessible_get_all_attribute_names
        return k_event_accessible_get_all_attribute_names(next_handler, the_event, user_data)
      when OS.attr_k_event_accessible_get_named_attribute
        return k_event_accessible_get_named_attribute(next_handler, the_event, user_data)
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [Array.typed(::Java::Char)] }
    def copy_to_clipboard(buffer)
      if ((buffer.attr_length).equal?(0))
        return
      end
      OS._clear_current_scrap
      scrap = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_current_scrap(scrap)
      OS._put_scrap_flavor(scrap[0], OS.attr_k_scrap_flavor_type_unicode, 0, buffer.attr_length * 2, buffer)
    end
    
    typesig { [Image] }
    def create_cicon(image)
      image_handle = image.attr_handle
      width = OS._cgimage_get_width(image_handle)
      height = OS._cgimage_get_height(image_handle)
      bpr = OS._cgimage_get_bytes_per_row(image_handle)
      bpp = OS._cgimage_get_bits_per_pixel(image_handle)
      bpc = OS._cgimage_get_bits_per_component(image_handle)
      alpha_info = OS._cgimage_get_alpha_info(image_handle)
      mask_bpl = (((width + 7) / 8) + 3) / 4 * 4
      mask_size = height * mask_bpl
      pixmap_size = height * bpr
      # Create the icon
      icon_size = PixMap.attr_sizeof + BitMap.attr_sizeof * 2 + 4 + mask_size
      icon_handle = OS._new_handle(icon_size)
      if ((icon_handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS._hlock(icon_handle)
      icon_ptr = Array.typed(::Java::Int).new(1) { 0 }
      OS.memmove(icon_ptr, icon_handle, 4)
      # Initialize the pixmap
      icon_pmap = PixMap.new
      icon_pmap.attr_row_bytes = RJava.cast_to_short((bpr | 0x8000))
      icon_pmap.attr_right = RJava.cast_to_short(width)
      icon_pmap.attr_bottom = RJava.cast_to_short(height)
      icon_pmap.attr_cmp_count = 3
      icon_pmap.attr_cmp_size = RJava.cast_to_short(bpc)
      icon_pmap.attr_pm_table = OS._new_handle(0)
      icon_pmap.attr_h_res = 72 << 16
      icon_pmap.attr_v_res = 72 << 16
      icon_pmap.attr_pixel_type = RJava.cast_to_short(OS::RGBDirect)
      icon_pmap.attr_pixel_size = RJava.cast_to_short(bpp)
      icon_pmap.attr_pixel_format = RJava.cast_to_short(bpp)
      OS.memmove(icon_ptr[0], icon_pmap, PixMap.attr_sizeof)
      # Initialize the mask
      icon_mask = BitMap.new
      icon_mask.attr_row_bytes = RJava.cast_to_short(mask_bpl)
      icon_mask.attr_right = RJava.cast_to_short(width)
      icon_mask.attr_bottom = RJava.cast_to_short(height)
      OS.memmove(icon_ptr[0] + PixMap.attr_sizeof, icon_mask, BitMap.attr_sizeof)
      # Initialize the icon data
      icon_data = OS._new_handle(pixmap_size)
      OS._hlock(icon_data)
      icon_data_ptr = Array.typed(::Java::Int).new(1) { 0 }
      OS.memmove(icon_data_ptr, icon_data, 4)
      OS.memmove(icon_data_ptr[0], image.attr_data, pixmap_size)
      OS._hunlock(icon_data)
      OS.memmove(icon_ptr[0] + PixMap.attr_sizeof + 2 * BitMap.attr_sizeof, Array.typed(::Java::Int).new([icon_data]), 4)
      # Initialize the mask data
      if (!(alpha_info).equal?(OS.attr_k_cgimage_alpha_first))
        OS.memset(icon_ptr[0] + PixMap.attr_sizeof + 2 * BitMap.attr_sizeof + 4, -1, mask_size)
      else
        src_data = Array.typed(::Java::Byte).new(pixmap_size) { 0 }
        OS.memmove(src_data, image.attr_data, pixmap_size)
        mask_data = Array.typed(::Java::Byte).new(mask_size) { 0 }
        offset = 0
        mask_offset = 0
        y = 0
        while y < height
          x = 0
          while x < width
            if ((src_data[offset] & 0xff) > 128)
              mask_data[mask_offset + (x >> 3)] |= (1 << (7 - (x & 0x7)))
            else
              mask_data[mask_offset + (x >> 3)] &= ~(1 << (7 - (x & 0x7)))
            end
            offset += 4
            x += 1
          end
          mask_offset += mask_bpl
          y += 1
        end
        OS.memmove(icon_ptr[0] + PixMap.attr_sizeof + 2 * BitMap.attr_sizeof + 4, mask_data, mask_data.attr_length)
      end
      OS._hunlock(icon_handle)
      return icon_handle
    end
    
    typesig { [] }
    def create_handle
    end
    
    typesig { [Image] }
    def create_icon_ref(image)
      image_handle = image.attr_handle
      image_data = image.attr_data
      width = OS._cgimage_get_width(image_handle)
      height = OS._cgimage_get_height(image_handle)
      bpr = OS._cgimage_get_bytes_per_row(image_handle)
      alpha_info = OS._cgimage_get_alpha_info(image_handle)
      type = 0
      mask_type = 0
      if ((width).equal?(16) && (height).equal?(16))
        type = OS.attr_k_small32bit_data
        mask_type = OS.attr_k_small8bit_mask
      else
        if ((width).equal?(32) && (height).equal?(32))
          type = OS.attr_k_large32bit_data
          mask_type = OS.attr_k_large8bit_mask
        else
          if ((width).equal?(48) && (height).equal?(48))
            type = OS.attr_k_huge32bit_data
            mask_type = OS.attr_k_huge8bit_mask
          else
            if ((width).equal?(128) && (height).equal?(128))
              type = OS.attr_k_thumbnail32bit_data
              mask_type = OS.attr_k_thumbnail8bit_mask
            else
              type = OS.attr_k_small32bit_data
              mask_type = OS.attr_k_small8bit_mask
              size = 16
              if (width > 16 || height > 16)
                type = OS.attr_k_huge32bit_data
                mask_type = OS.attr_k_huge8bit_mask
                size = 32
              end
              if (width > 32 || height > 32)
                type = OS.attr_k_huge32bit_data
                mask_type = OS.attr_k_huge8bit_mask
                size = 48
              end
              if (width > 48 || height > 48)
                type = OS.attr_k_thumbnail32bit_data
                mask_type = OS.attr_k_thumbnail8bit_mask
                size = 128
              end
              width = height = size
              bpr = width * 4
              data_size = height * bpr
              image_data = OS._new_ptr(data_size)
              if ((image_data).equal?(0))
                SWT.error(SWT::ERROR_NO_HANDLES)
              end
              colorspace = OS._cgcolor_space_create_device_rgb
              if ((colorspace).equal?(0))
                SWT.error(SWT::ERROR_NO_HANDLES)
              end
              context = OS._cgbitmap_context_create(image_data, width, height, 8, bpr, colorspace, OS.attr_k_cgimage_alpha_none_skip_first)
              OS._cgcolor_space_release(colorspace)
              if ((context).equal?(0))
                SWT.error(SWT::ERROR_NO_HANDLES)
              end
              rect = CGRect.new
              rect.attr_width = width
              rect.attr_height = height
              OS._cgcontext_draw_image(context, rect, image_handle)
              OS._cgcontext_release(context)
            end
          end
        end
      end
      if ((type).equal?(0))
        return 0
      end
      icon_family = OS._new_handle(0)
      if ((icon_family).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      data_size = height * bpr
      data_handle = OS._new_handle(data_size)
      if ((data_handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      data_ptr = Array.typed(::Java::Int).new(1) { 0 }
      OS._hlock(data_handle)
      OS.memmove(data_ptr, data_handle, 4)
      OS.memmove(data_ptr[0], image_data, data_size)
      OS._hunlock(data_handle)
      OS._set_icon_family_data(icon_family, type, data_handle)
      OS._dispose_handle(data_handle)
      # Initialize the mask data
      mask_size = width * height
      mask_handle = OS._new_handle(mask_size)
      if ((mask_handle).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      OS._hlock(mask_handle)
      mask_ptr = Array.typed(::Java::Int).new(1) { 0 }
      OS.memmove(mask_ptr, mask_handle, 4)
      if (!(alpha_info).equal?(OS.attr_k_cgimage_alpha_first))
        OS.memset(mask_ptr[0], 0xff, mask_size)
      else
        src_data = Array.typed(::Java::Byte).new(data_size) { 0 }
        OS.memmove(src_data, image_data, data_size)
        mask_data = Array.typed(::Java::Byte).new(mask_size) { 0 }
        offset = 0
        mask_offset = 0
        y = 0
        while y < height
          x = 0
          while x < width
            mask_data[((mask_offset += 1) - 1)] = src_data[offset]
            offset += 4
            x += 1
          end
          y += 1
        end
        OS.memmove(mask_ptr[0], mask_data, mask_data.attr_length)
      end
      OS._hunlock(mask_handle)
      OS._set_icon_family_data(icon_family, mask_type, mask_handle)
      OS._dispose_handle(mask_handle)
      if (!(image_data).equal?(image.attr_data))
        OS._dispose_ptr(image_data)
      end
      # Create the icon ref
      icon_ref = Array.typed(::Java::Int).new(1) { 0 }
      OS._hlock(icon_family)
      icon_ptr = Array.typed(::Java::Int).new(1) { 0 }
      OS.memmove(icon_ptr, icon_family, 4)
      OS._get_icon_ref_from_icon_family_ptr(icon_ptr[0], OS._get_handle_size(icon_family), icon_ref)
      OS._hunlock(icon_family)
      OS._dispose_handle(icon_family)
      return icon_ref[0]
    end
    
    typesig { [] }
    def create_widget
      create_handle
      register
      hook_events
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def command_proc(next_handler, the_event, user_data)
      event_kind = OS._get_event_kind(the_event)
      case (event_kind)
      when OS.attr_k_event_process_command
        return k_event_process_command(next_handler, the_event, user_data)
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [] }
    def deregister
    end
    
    typesig { [] }
    def destroy_widget
      release_handle
    end
    
    typesig { [::Java::Int] }
    def destroy_cicon(icon_handle)
      OS._hlock(icon_handle)
      # Dispose the ColorTable
      icon_ptr = Array.typed(::Java::Int).new(1) { 0 }
      OS.memmove(icon_ptr, icon_handle, 4)
      icon_pmap = PixMap.new
      OS.memmove(icon_pmap, icon_ptr[0], PixMap.attr_sizeof)
      if (!(icon_pmap.attr_pm_table).equal?(0))
        OS._dispose_handle(icon_pmap.attr_pm_table)
      end
      # Dispose the icon data
      icon_data = Array.typed(::Java::Int).new(1) { 0 }
      OS.memmove(icon_data, icon_ptr[0] + PixMap.attr_sizeof + 2 * BitMap.attr_sizeof, 4)
      if (!(icon_data[0]).equal?(0))
        OS._dispose_handle(icon_data[0])
      end
      OS._hunlock(icon_handle)
      # Dispose the icon
      OS._dispose_handle(icon_handle)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def draw_item_proc(browser, item, property, item_state, the_rect, gd_depth, color_device)
      return OS.attr_no_err
    end
    
    typesig { [] }
    # Disposes of the operating system resources associated with
    # the receiver and all its descendants. After this method has
    # been invoked, the receiver and all descendants will answer
    # <code>true</code> when sent the message <code>isDisposed()</code>.
    # Any internal connections between the widgets in the tree will
    # have been removed to facilitate garbage collection.
    # <p>
    # NOTE: This method is not called recursively on the descendants
    # of the receiver. This means that, widget implementers can not
    # detect when a widget is being disposed of by re-implementing
    # this method, but should instead listen for the <code>Dispose</code>
    # event.
    # </p>
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #addDisposeListener
    # @see #removeDisposeListener
    # @see #checkWidget
    def dispose
      # Note:  It is valid to attempt to dispose a widget
      # more than once.  If this happens, fail silently.
      if (is_disposed)
        return
      end
      if (!is_valid_thread)
        error(SWT::ERROR_THREAD_INVALID_ACCESS)
      end
      release(true)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def draw_background(control, context)
      # Do nothing
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def draw_widget(control, context, damage_rgn, visible_rgn, the_event)
    end
    
    typesig { [::Java::Int] }
    def error(code)
      SWT.error(code)
    end
    
    typesig { [::Java::Int] }
    def filters(event_type)
      return @display.filters(event_type)
    end
    
    typesig { [Array.typed(::Java::Char)] }
    def fix_mnemonic(buffer)
      i = 0
      j = 0
      while (i < buffer.attr_length)
        if (((buffer[((j += 1) - 1)] = buffer[((i += 1) - 1)])).equal?(Character.new(?&.ord)))
          if ((i).equal?(buffer.attr_length))
            next
          end
          if ((buffer[i]).equal?(Character.new(?&.ord)))
            i += 1
            next
          end
          j -= 1
        end
      end
      return j
    end
    
    typesig { [] }
    def get_clipboard_text
      result = ""
      scrap = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_current_scrap(scrap)
      size = Array.typed(::Java::Int).new(1) { 0 }
      if ((OS._get_scrap_flavor_size(scrap[0], OS.attr_k_scrap_flavor_type_unicode, size)).equal?(OS.attr_no_err))
        if (!(size[0]).equal?(0))
          buffer = CharArray.new(size[0] / 2)
          if ((OS._get_scrap_flavor_data(scrap[0], OS.attr_k_scrap_flavor_type_unicode, size, buffer)).equal?(OS.attr_no_err))
            result = (String.new(buffer)).to_s
          end
        end
      else
        if ((OS._get_scrap_flavor_size(scrap[0], OS.attr_k_scrap_flavor_type_text, size)).equal?(OS.attr_no_err))
          if (!(size[0]).equal?(0))
            buffer = Array.typed(::Java::Byte).new(size[0]) { 0 }
            if ((OS._get_scrap_flavor_data(scrap[0], OS.attr_k_scrap_flavor_type_text, size, buffer)).equal?(OS.attr_no_err))
              encoding = OS._cfstring_get_system_encoding
              cfstring = OS._cfstring_create_with_bytes(OS.attr_k_cfallocator_default, buffer, buffer.attr_length, encoding, true)
              if (!(cfstring).equal?(0))
                length = OS._cfstring_get_length(cfstring)
                if (!(length).equal?(0))
                  chars = CharArray.new(length)
                  range = CFRange.new
                  range.attr_length = length
                  OS._cfstring_get_characters(cfstring, range, chars)
                  result = (String.new(chars)).to_s
                end
                OS._cfrelease(cfstring)
              end
            end
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int] }
    def get_control_bounds(control)
      rect = CGRect.new
      OS._hiview_get_frame(control, rect)
      inset = get_inset
      rect.attr_x -= inset.attr_left
      rect.attr_y -= inset.attr_top
      rect.attr_width += inset.attr_right + inset.attr_left
      rect.attr_height += inset.attr_bottom + inset.attr_top
      return Rectangle.new(RJava.cast_to_int(rect.attr_x), RJava.cast_to_int(rect.attr_y), RJava.cast_to_int(rect.attr_width), RJava.cast_to_int(rect.attr_height))
    end
    
    typesig { [::Java::Int] }
    def get_control_size(control)
      rect = CGRect.new
      OS._hiview_get_frame(control, rect)
      inset = get_inset
      width = RJava.cast_to_int(rect.attr_width) + inset.attr_left + inset.attr_right
      height = RJava.cast_to_int(rect.attr_height) + inset.attr_top + inset.attr_bottom
      return Point.new(width, height)
    end
    
    typesig { [] }
    # Returns the application defined widget data associated
    # with the receiver, or null if it has not been set. The
    # <em>widget data</em> is a single, unnamed field that is
    # stored with every widget.
    # <p>
    # Applications may put arbitrary objects in this field. If
    # the object stored in the widget data needs to be notified
    # when the widget is disposed of, it is the application's
    # responsibility to hook the Dispose event on the widget and
    # do so.
    # </p>
    # 
    # @return the widget data
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - when the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - when called from the wrong thread</li>
    # </ul>
    # 
    # @see #setData(Object)
    def get_data
      check_widget
      return !((@state & KEYED_DATA)).equal?(0) ? (@data)[0] : @data
    end
    
    typesig { [String] }
    # Returns the application defined property of the receiver
    # with the specified name, or null if it has not been set.
    # <p>
    # Applications may have associated arbitrary objects with the
    # receiver in this fashion. If the objects stored in the
    # properties need to be notified when the widget is disposed
    # of, it is the application's responsibility to hook the
    # Dispose event on the widget and do so.
    # </p>
    # 
    # @param	key the name of the property
    # @return the value of the property or null if it has not been set
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the key is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #setData(String, Object)
    def get_data(key)
      check_widget
      if ((key).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (!((@state & KEYED_DATA)).equal?(0))
        table = @data
        i = 1
        while i < table.attr_length
          if ((key == table[i]))
            return table[i + 1]
          end
          i += 2
        end
      end
      return nil
    end
    
    typesig { [] }
    # Returns the <code>Display</code> that is associated with
    # the receiver.
    # <p>
    # A widget's display is either provided when it is created
    # (for example, top level <code>Shell</code>s) or is the
    # same as its parent's display.
    # </p>
    # 
    # @return the receiver's display
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # </ul>
    def get_display
      display = @display
      if ((display).nil?)
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
      return display
    end
    
    typesig { [::Java::Int] }
    def get_draw_count(control)
      return 0
    end
    
    typesig { [] }
    def get_inset
      return EMPTY_RECT
    end
    
    typesig { [::Java::Int] }
    # Returns an array of listeners who will be notified when an event
    # of the given type occurs. The event type is one of the event constants
    # defined in class <code>SWT</code>.
    # 
    # @param eventType the type of event to listen for
    # @return an array of listeners that will be notified when the event occurs
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see Listener
    # @see SWT
    # @see #addListener(int, Listener)
    # @see #removeListener(int, Listener)
    # @see #notifyListeners
    # 
    # @since 3.4
    def get_listeners(event_type)
      check_widget
      if ((@event_table).nil?)
        return Array.typed(Listener).new(0) { nil }
      end
      return @event_table.get_listeners(event_type)
    end
    
    typesig { [] }
    def get_name
      string = get_class.get_name
      index = string.last_index_of(Character.new(?..ord))
      if ((index).equal?(-1))
        return string
      end
      return string.substring(index + 1, string.length)
    end
    
    typesig { [] }
    def get_name_text
      return ""
    end
    
    typesig { [] }
    # Returns the receiver's style information.
    # <p>
    # Note that the value which is returned by this method <em>may
    # not match</em> the value which was provided to the constructor
    # when the receiver was created. This can occur when the underlying
    # operating system does not support a particular combination of
    # requested styles. For example, if the platform widget used to
    # implement a particular SWT widget always has scroll bars, the
    # result of calling this method would always have the
    # <code>SWT.H_SCROLL</code> and <code>SWT.V_SCROLL</code> bits set.
    # </p>
    # 
    # @return the style bits
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    def get_style
      check_widget
      return @style
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def get_visible_region(control, clip_children)
      visible_rgn = OS._new_rgn
      calculate_visible_region(control, visible_rgn, clip_children)
      return visible_rgn
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def help_proc(in_control, in_global_mouse, in_request, out_content_provided, io_help_content)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def hit_test_proc(browser, item, property, the_rect, mouse_rect)
      # Return true to indicate that the item can be selected
      return 1
    end
    
    typesig { [] }
    def hook_events
    end
    
    typesig { [::Java::Int] }
    def hooks(event_type)
      if ((@event_table).nil?)
        return false
      end
      return @event_table.hooks(event_type)
    end
    
    typesig { [::Java::Int] }
    def invalidate_visible_region(control)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def inval_window_rgn(window, rgn)
      OS._inval_window_rgn(window, rgn)
    end
    
    typesig { [] }
    # Returns <code>true</code> if the widget has been disposed,
    # and <code>false</code> otherwise.
    # <p>
    # This method gets the dispose state for the widget.
    # When a widget has been disposed, it is an error to
    # invoke any other method using the widget.
    # </p>
    # 
    # @return <code>true</code> when the widget is disposed and <code>false</code> otherwise
    def is_disposed
      return !((@state & DISPOSED)).equal?(0)
    end
    
    typesig { [::Java::Int] }
    def is_drawing(control)
      return OS._is_control_visible(control) && (get_draw_count(control)).equal?(0)
    end
    
    typesig { [] }
    def is_enabled
      return true
    end
    
    typesig { [::Java::Int] }
    # Returns <code>true</code> if there are any listeners
    # for the specified event type associated with the receiver,
    # and <code>false</code> otherwise. The event type is one of
    # the event constants defined in class <code>SWT</code>.
    # 
    # @param eventType the type of event
    # @return true if the event is hooked
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SWT
    def is_listening(event_type)
      check_widget
      return hooks(event_type)
    end
    
    typesig { [::Java::Int] }
    def is_trim_handle(trim_handle)
      return false
    end
    
    typesig { [] }
    def is_valid_subclass
      return Display.is_valid_class(get_class)
    end
    
    typesig { [] }
    def is_valid_thread
      return get_display.is_valid_thread
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def item_compare_proc(browser, item_one, item_two, sort_property)
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def item_data_proc(browser, item, property, item_data, set_value)
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def item_notification_proc(browser, item, message)
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_accessible_get_child_at_point(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_accessible_get_focused_child(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_accessible_get_all_attribute_names(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_accessible_get_named_attribute(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_process_command(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_clock_date_or_time_changed(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_apply_background(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_activate(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_bounds_changed(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_click(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_contextual_menu_click(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_deactivate(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_draw(next_handler, the_event, user_data)
      the_control = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_direct_object, OS.attr_type_control_ref, nil, 4, nil, the_control)
      region = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_rgn_handle, OS.attr_type_qdrgn_handle, nil, 4, nil, region)
      display = @display
      old_in_paint = display.attr_in_paint
      display.attr_in_paint = true
      context = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_cgcontext_ref, OS.attr_type_cgcontext_ref, nil, 4, nil, context)
      visible_rgn = region[0]
      draw_background(the_control[0], context[0])
      call_paint_event_handler(the_control[0], region[0], visible_rgn, the_event, next_handler)
      draw_widget(the_control[0], context[0], region[0], visible_rgn, the_event)
      display.attr_in_paint = old_in_paint
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_get_click_activation(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_get_focus_part(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_get_part_region(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_hit(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_hit_test(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_set_cursor(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_set_focus_part(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_control_track(next_handler, the_event, user_data)
      the_control = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_direct_object, OS.attr_type_control_ref, nil, 4, nil, the_control)
      OS._cfretain(the_control[0])
      result = OS._call_next_event_handler(next_handler, the_event)
      OS._cfrelease(the_control[0])
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_menu_calculate_size(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_menu_closed(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_menu_create_frame_view(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_menu_draw_item(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_menu_draw_item_content(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_menu_get_frame_bounds(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_menu_measure_item_width(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_menu_opening(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_menu_target_item(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_down(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_dragged(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_moved(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_up(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_mouse_wheel_moved(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_search_field_cancel_clicked(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_raw_key_down(next_handler, the_event, user_data)
      return k_event_raw_key_pressed(next_handler, the_event, user_data)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_raw_key_modifiers_changed(next_handler, the_event, user_data)
      display = @display
      modifiers = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_key_modifiers, OS.attr_type_uint32, nil, modifiers.attr_length * 4, nil, modifiers)
      last_modifiers = display.attr_last_modifiers
      chord = OS._get_current_event_button_state
      type = SWT::KeyUp
      if (!((modifiers[0] & OS.attr_alpha_lock)).equal?(0) && ((last_modifiers & OS.attr_alpha_lock)).equal?(0))
        type = SWT::KeyDown
      end
      if (!((modifiers[0] & OS.attr_shift_key)).equal?(0) && ((last_modifiers & OS.attr_shift_key)).equal?(0))
        type = SWT::KeyDown
      end
      if (!((modifiers[0] & OS.attr_control_key)).equal?(0) && ((last_modifiers & OS.attr_control_key)).equal?(0))
        type = SWT::KeyDown
      end
      if (!((modifiers[0] & OS.attr_cmd_key)).equal?(0) && ((last_modifiers & OS.attr_cmd_key)).equal?(0))
        type = SWT::KeyDown
      end
      if (!((modifiers[0] & OS.attr_option_key)).equal?(0) && ((last_modifiers & OS.attr_option_key)).equal?(0))
        type = SWT::KeyDown
      end
      if ((type).equal?(SWT::KeyUp) && ((modifiers[0] & OS.attr_alpha_lock)).equal?(0) && !((last_modifiers & OS.attr_alpha_lock)).equal?(0))
        event = Event.new
        event.attr_key_code = SWT::CAPS_LOCK
        set_input_state(event, SWT::KeyDown, chord, modifiers[0])
        send_key_event(SWT::KeyDown, event)
      end
      event = Event.new
      set_input_state(event, type, chord, modifiers[0])
      if ((event.attr_key_code).equal?(0) && (event.attr_character).equal?(0))
        return OS.attr_event_not_handled_err
      end
      result = send_key_event(type, event)
      if ((type).equal?(SWT::KeyDown) && !((modifiers[0] & OS.attr_alpha_lock)).equal?(0) && ((last_modifiers & OS.attr_alpha_lock)).equal?(0))
        event = Event.new
        event.attr_key_code = SWT::CAPS_LOCK
        set_input_state(event, SWT::KeyUp, chord, modifiers[0])
        send_key_event(SWT::KeyUp, event)
      end
      display.attr_last_modifiers = modifiers[0]
      return result ? OS.attr_event_not_handled_err : OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_raw_key_pressed(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_raw_key_repeat(next_handler, the_event, user_data)
      return k_event_raw_key_pressed(next_handler, the_event, user_data)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_raw_key_up(next_handler, the_event, user_data)
      if (!send_key_event(SWT::KeyUp, the_event))
        return OS.attr_no_err
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_text_input_unicode_for_key_event(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_text_input_update_active_input_area(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_text_input_offset_to_pos(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_text_input_pos_to_offset(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_text_input_get_selected_text(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_activated(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_bounds_changed(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_close(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_collapsed(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_collapsing(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_deactivated(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_draw_content(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_expanded(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_get_click_modality(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_get_region(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_hidden(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_hit_test(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_shown(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def k_event_window_update(next_handler, the_event, user_data)
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def keyboard_proc(next_handler, the_event, user_data)
      event_kind = OS._get_event_kind(the_event)
      case (event_kind)
      when OS.attr_k_event_raw_key_down
        return k_event_raw_key_down(next_handler, the_event, user_data)
      when OS.attr_k_event_raw_key_modifiers_changed
        return k_event_raw_key_modifiers_changed(next_handler, the_event, user_data)
      when OS.attr_k_event_raw_key_repeat
        return k_event_raw_key_repeat(next_handler, the_event, user_data)
      when OS.attr_k_event_raw_key_up
        return k_event_raw_key_up(next_handler, the_event, user_data)
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def menu_proc(next_handler, the_event, user_data)
      event_kind = OS._get_event_kind(the_event)
      case (event_kind)
      when OS.attr_k_event_menu_calculate_size
        return k_event_menu_calculate_size(next_handler, the_event, user_data)
      when OS.attr_k_event_menu_closed
        return k_event_menu_closed(next_handler, the_event, user_data)
      when OS.attr_k_event_menu_create_frame_view
        return k_event_menu_create_frame_view(next_handler, the_event, user_data)
      when OS.attr_k_event_menu_draw_item
        return k_event_menu_draw_item(next_handler, the_event, user_data)
      when OS.attr_k_event_menu_draw_item_content
        return k_event_menu_draw_item_content(next_handler, the_event, user_data)
      when OS.attr_k_event_menu_get_frame_bounds
        return k_event_menu_get_frame_bounds(next_handler, the_event, user_data)
      when OS.attr_k_event_menu_measure_item_width
        return k_event_menu_measure_item_width(next_handler, the_event, user_data)
      when OS.attr_k_event_menu_opening
        return k_event_menu_opening(next_handler, the_event, user_data)
      when OS.attr_k_event_menu_target_item
        return k_event_menu_target_item(next_handler, the_event, user_data)
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def mouse_proc(next_handler, the_event, user_data)
      event_kind = OS._get_event_kind(the_event)
      case (event_kind)
      # case OS.kEventMouseEntered:		return kEventMouseEntered (nextHandler, theEvent, userData);
      # case OS.kEventMouseExited:		return kEventMouseExited (nextHandler, theEvent, userData);
      when OS.attr_k_event_mouse_down
        return k_event_mouse_down(next_handler, the_event, user_data)
      when OS.attr_k_event_mouse_up
        return k_event_mouse_up(next_handler, the_event, user_data)
      when OS.attr_k_event_mouse_dragged
        return k_event_mouse_dragged(next_handler, the_event, user_data)
      when OS.attr_k_event_mouse_moved
        return k_event_mouse_moved(next_handler, the_event, user_data)
      when OS.attr_k_event_mouse_wheel_moved
        return k_event_mouse_wheel_moved(next_handler, the_event, user_data)
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, Event] }
    # Notifies all of the receiver's listeners for events
    # of the given type that one such event has occurred by
    # invoking their <code>handleEvent()</code> method.  The
    # event type is one of the event constants defined in class
    # <code>SWT</code>.
    # 
    # @param eventType the type of event which has occurred
    # @param event the event data
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see SWT
    # @see #addListener
    # @see #getListeners(int)
    # @see #removeListener(int, Listener)
    def notify_listeners(event_type, event)
      check_widget
      if ((event).nil?)
        event = Event.new
      end
      send_event(event_type, event)
    end
    
    typesig { [::Java::Int] }
    def post_event(event_type)
      send_event(event_type, nil, false)
    end
    
    typesig { [::Java::Int, Event] }
    def post_event(event_type, event)
      send_event(event_type, event, false)
    end
    
    typesig { [::Java::Int] }
    def redraw_children(control)
      child = OS._hiview_get_first_subview(control)
      while (!(child).equal?(0))
        OS._hiview_set_needs_display(child, true)
        redraw_children(child)
        child = OS._hiview_get_next_view(child)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def redraw_children(control, rgn)
      child = OS._hiview_get_first_subview(control)
      while (!(child).equal?(0))
        OS._hiview_convert_region(rgn, control, child)
        OS._hiview_set_needs_display_in_region(child, rgn, true)
        redraw_children(child, rgn)
        OS._hiview_convert_region(rgn, child, control)
        child = OS._hiview_get_next_view(child)
      end
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def redraw_widget(control, children)
      if (@display.attr_in_paint)
        rgn = OS._new_rgn
        rect = Rect.new
        OS._get_control_bounds(control, rect)
        rect.attr_right += rect.attr_left
        rect.attr_bottom += rect.attr_top
        rect.attr_top = rect.attr_left = 0
        OS._rect_rgn(rgn, rect)
        OS._hiview_convert_region(rgn, control, 0)
        inval_window_rgn(0, rgn)
        OS._dispose_rgn(rgn)
      else
        OS._hiview_set_needs_display(control, true)
        if (children)
          redraw_children(control)
        end
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    def redraw_widget(control, x, y, width, height, children)
      rgn = OS._new_rgn
      rect = Rect.new
      OS._set_rect(rect, RJava.cast_to_short(x), RJava.cast_to_short(y), RJava.cast_to_short((x + width)), RJava.cast_to_short((y + height)))
      OS._rect_rgn(rgn, rect)
      if (@display.attr_in_paint)
        OS._hiview_convert_region(rgn, control, 0)
        inval_window_rgn(0, rgn)
      else
        OS._hiview_set_needs_display_in_region(control, rgn, true)
        if (children)
          redraw_children(control, rgn)
        end
      end
      OS._dispose_rgn(rgn)
    end
    
    typesig { [] }
    def register
    end
    
    typesig { [::Java::Boolean] }
    def release(destroy)
      if (((@state & DISPOSE_SENT)).equal?(0))
        @state |= DISPOSE_SENT
        send_event(SWT::Dispose)
      end
      if (((@state & DISPOSED)).equal?(0))
        release_children(destroy)
      end
      if (((@state & RELEASED)).equal?(0))
        @state |= RELEASED
        if (destroy)
          release_parent
          release_widget
          destroy_widget
        else
          release_widget
          release_handle
        end
      end
    end
    
    typesig { [::Java::Boolean] }
    def release_children(destroy)
    end
    
    typesig { [] }
    def release_handle
      @state |= DISPOSED
      @display = nil
    end
    
    typesig { [] }
    def release_parent
      # Do nothing
    end
    
    typesig { [] }
    def release_widget
      deregister
      @event_table = nil
      @data = nil
    end
    
    typesig { [::Java::Int, Listener] }
    # Removes the listener from the collection of listeners who will
    # be notified when an event of the given type occurs. The event
    # type is one of the event constants defined in class <code>SWT</code>.
    # 
    # @param eventType the type of event to listen for
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
    # @see Listener
    # @see SWT
    # @see #addListener
    # @see #getListeners(int)
    # @see #notifyListeners
    def remove_listener(event_type, handler)
      check_widget
      if ((handler).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@event_table).nil?)
        return
      end
      @event_table.unhook(event_type, handler)
    end
    
    typesig { [::Java::Int, SWTEventListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when an event of the given type occurs.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It should never be
    # referenced from application code.
    # </p>
    # 
    # @param eventType the type of event to listen for
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
    # @see Listener
    # @see #addListener
    def remove_listener(event_type, handler)
      check_widget
      if ((handler).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@event_table).nil?)
        return
      end
      @event_table.unhook(event_type, handler)
    end
    
    typesig { [DisposeListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when the widget is disposed.
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
    # @see DisposeListener
    # @see #addDisposeListener
    def remove_dispose_listener(listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@event_table).nil?)
        return
      end
      @event_table.unhook(SWT::Dispose, listener)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def search_proc(next_handler, the_event, user_data)
      kind = OS._get_event_kind(the_event)
      case (kind)
      when OS.attr_k_event_search_field_cancel_clicked
        return k_event_search_field_cancel_clicked(next_handler, the_event, user_data)
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [Event] }
    def send_event(event)
      display = event.attr_display
      if (!display.filter_event(event))
        if (!(@event_table).nil?)
          @event_table.send_event(event)
        end
      end
    end
    
    typesig { [::Java::Int] }
    def send_event(event_type)
      send_event(event_type, nil, true)
    end
    
    typesig { [::Java::Int, Event] }
    def send_event(event_type, event)
      send_event(event_type, event, true)
    end
    
    typesig { [::Java::Int, Event, ::Java::Boolean] }
    def send_event(event_type, event, send)
      if ((@event_table).nil? && !@display.filters(event_type))
        return
      end
      if ((event).nil?)
        event = Event.new
      end
      event.attr_type = event_type
      event.attr_display = @display
      event.attr_widget = self
      if ((event.attr_time).equal?(0))
        event.attr_time = @display.get_last_event_time
      end
      if (send)
        send_event(event)
      else
        @display.post_event(event)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def send_key_event(type, the_event)
      if (!((@state & SAFARI_EVENTS_FIX)).equal?(0))
        return true
      end
      length_ = Array.typed(::Java::Int).new(1) { 0 }
      status = OS._get_event_parameter(the_event, OS.attr_k_event_param_key_unicodes, OS.attr_type_unicode_text, nil, 4, length_, nil)
      if ((status).equal?(OS.attr_no_err) && length_[0] > 2)
        count = 0
        chord = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_mouse_chord, OS.attr_type_uint32, nil, 4, nil, chord)
        modifiers = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_key_modifiers, OS.attr_type_uint32, nil, 4, nil, modifiers)
        chars = CharArray.new(length_[0] / 2)
        OS._get_event_parameter(the_event, OS.attr_k_event_param_key_unicodes, OS.attr_type_unicode_text, nil, chars.attr_length * 2, nil, chars)
        i = 0
        while i < chars.attr_length
          event = Event.new
          event.attr_character = chars[i]
          set_input_state(event, type, chord[0], modifiers[0])
          if (send_key_event(type, event))
            chars[((count += 1) - 1)] = chars[i]
          end
          i += 1
        end
        if ((count).equal?(0))
          return false
        end
        if (!(count).equal?(chars.attr_length - 1))
          OS._set_event_parameter(the_event, OS.attr_k_event_param_key_unicodes, OS.attr_type_unicode_text, count * 2, chars)
        end
        return true
      else
        event = Event.new
        if (!set_key_state(event, type, the_event))
          return true
        end
        return send_key_event(type, event)
      end
    end
    
    typesig { [::Java::Int, Event] }
    def send_key_event(type, event)
      send_event(type, event)
      # widget could be disposed at this point
      # 
      # It is possible (but unlikely), that application
      # code could have disposed the widget in the key
      # events.  If this happens, end the processing of
      # the key by returning false.
      if (is_disposed)
        return false
      end
      return event.attr_doit
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Boolean, ::Java::Boolean] }
    def set_bounds(control, x, y, width, height, move, resize, events)
      same_origin = true
      same_extent = true
      old_bounds = CGRect.new
      OS._hiview_get_frame(control, old_bounds)
      inset = get_inset
      old_bounds.attr_x -= inset.attr_left
      old_bounds.attr_y -= inset.attr_top
      old_bounds.attr_width += inset.attr_left + inset.attr_right
      old_bounds.attr_height += inset.attr_top + inset.attr_bottom
      if (!move)
        x = RJava.cast_to_int(old_bounds.attr_x)
        y = RJava.cast_to_int(old_bounds.attr_y)
      end
      if (!resize)
        width = RJava.cast_to_int(old_bounds.attr_width)
        height = RJava.cast_to_int(old_bounds.attr_height)
      end
      new_bounds = CGRect.new
      new_bounds.attr_x = x + inset.attr_left
      new_bounds.attr_y = y + inset.attr_top
      new_bounds.attr_width = width - inset.attr_right - inset.attr_left
      new_bounds.attr_height = height - inset.attr_bottom - inset.attr_top
      same_origin = (new_bounds.attr_x).equal?(old_bounds.attr_x) && (new_bounds.attr_y).equal?(old_bounds.attr_y)
      same_extent = (new_bounds.attr_width).equal?(old_bounds.attr_width) && (new_bounds.attr_height).equal?(old_bounds.attr_height)
      if (same_origin && same_extent)
        return 0
      end
      OS._hiview_set_frame(control, new_bounds)
      invalidate_visible_region(control)
      # Bug in the Macintosh.  When HIViewSetDrawingEnabled() is used to
      # turn off drawing for a control and the control is moved or resized,
      # the Mac does not redraw the area where the control once was in the
      # parent.  The fix is to detect this case and redraw the area.
      if (!OS._hiview_is_drawing_enabled(control))
        parent = OS._hiview_get_superview(control)
        if (!(parent).equal?(0) && OS._hiview_is_drawing_enabled(parent))
          rgn = OS._new_rgn
          rect = Rect.new
          OS._set_rect(rect, RJava.cast_to_short(old_bounds.attr_x), RJava.cast_to_short(old_bounds.attr_y), RJava.cast_to_short((old_bounds.attr_x + old_bounds.attr_width)), RJava.cast_to_short((old_bounds.attr_y + old_bounds.attr_height)))
          OS._rect_rgn(rgn, rect)
          if (@display.attr_in_paint)
            OS._hiview_convert_region(rgn, parent, 0)
            inval_window_rgn(0, rgn)
          else
            OS._hiview_set_needs_display_in_region(parent, rgn, true)
          end
          OS._dispose_rgn(rgn)
        end
      end
      # Send events
      result = 0
      if (move && !same_origin)
        if (events)
          send_event(SWT::Move)
        end
        result |= MOVED
      end
      if (resize && !same_extent)
        if (events)
          send_event(SWT::Resize)
        end
        result |= RESIZED
      end
      return result
    end
    
    typesig { [Object] }
    # Sets the application defined widget data associated
    # with the receiver to be the argument. The <em>widget
    # data</em> is a single, unnamed field that is stored
    # with every widget.
    # <p>
    # Applications may put arbitrary objects in this field. If
    # the object stored in the widget data needs to be notified
    # when the widget is disposed of, it is the application's
    # responsibility to hook the Dispose event on the widget and
    # do so.
    # </p>
    # 
    # @param data the widget data
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - when the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - when called from the wrong thread</li>
    # </ul>
    # 
    # @see #getData()
    def set_data(data)
      check_widget
      if ((SAFARI_EVENTS_FIX_KEY == data))
        @state |= SAFARI_EVENTS_FIX
        return
      end
      if (!((@state & KEYED_DATA)).equal?(0))
        (@data)[0] = data
      else
        @data = data
      end
    end
    
    typesig { [String, Object] }
    # Sets the application defined property of the receiver
    # with the specified name to the given value.
    # <p>
    # Applications may associate arbitrary objects with the
    # receiver in this fashion. If the objects stored in the
    # properties need to be notified when the widget is disposed
    # of, it is the application's responsibility to hook the
    # Dispose event on the widget and do so.
    # </p>
    # 
    # @param key the name of the property
    # @param value the new value for the property
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the key is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see #getData(String)
    def set_data(key, value)
      check_widget
      if ((key).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      index = 1
      table = nil
      if (!((@state & KEYED_DATA)).equal?(0))
        table = @data
        while (index < table.attr_length)
          if ((key == table[index]))
            break
          end
          index += 2
        end
      end
      if (!(value).nil?)
        if (!((@state & KEYED_DATA)).equal?(0))
          if ((index).equal?(table.attr_length))
            new_table = Array.typed(Object).new(table.attr_length + 2) { nil }
            System.arraycopy(table, 0, new_table, 0, table.attr_length)
            @data = table = new_table
          end
        else
          table = Array.typed(Object).new(3) { nil }
          table[0] = @data
          @data = table
          @state |= KEYED_DATA
        end
        table[index] = key
        table[index + 1] = value
      else
        if (!((@state & KEYED_DATA)).equal?(0))
          if (!(index).equal?(table.attr_length))
            length_ = table.attr_length - 2
            if ((length_).equal?(1))
              @data = table[0]
              @state &= ~KEYED_DATA
            else
              new_table = Array.typed(Object).new(length_) { nil }
              System.arraycopy(table, 0, new_table, 0, index)
              System.arraycopy(table, index + 2, new_table, index, length_ - index)
              @data = new_table
            end
          end
        end
      end
    end
    
    typesig { [Event, ::Java::Int, ::Java::Int, ::Java::Int] }
    def set_input_state(event, type, chord, modifiers)
      if (!((chord & 0x1)).equal?(0))
        event.attr_state_mask |= SWT::BUTTON1
      end
      if (!((chord & 0x2)).equal?(0))
        event.attr_state_mask |= SWT::BUTTON3
      end
      if (!((chord & 0x4)).equal?(0))
        event.attr_state_mask |= SWT::BUTTON2
      end
      if (!((chord & 0x8)).equal?(0))
        event.attr_state_mask |= SWT::BUTTON4
      end
      if (!((chord & 0x10)).equal?(0))
        event.attr_state_mask |= SWT::BUTTON5
      end
      if (!((modifiers & OS.attr_option_key)).equal?(0))
        event.attr_state_mask |= SWT::ALT
      end
      if (!((modifiers & OS.attr_shift_key)).equal?(0))
        event.attr_state_mask |= SWT::SHIFT
      end
      if (!((modifiers & OS.attr_control_key)).equal?(0))
        event.attr_state_mask |= SWT::CONTROL
      end
      if (!((modifiers & OS.attr_cmd_key)).equal?(0))
        event.attr_state_mask |= SWT::COMMAND
      end
      case (type)
      when SWT::MouseDown, SWT::MouseDoubleClick
        if ((event.attr_button).equal?(1))
          event.attr_state_mask &= ~SWT::BUTTON1
        end
        if ((event.attr_button).equal?(2))
          event.attr_state_mask &= ~SWT::BUTTON2
        end
        if ((event.attr_button).equal?(3))
          event.attr_state_mask &= ~SWT::BUTTON3
        end
        if ((event.attr_button).equal?(4))
          event.attr_state_mask &= ~SWT::BUTTON4
        end
        if ((event.attr_button).equal?(5))
          event.attr_state_mask &= ~SWT::BUTTON5
        end
      when SWT::MouseUp
        if ((event.attr_button).equal?(1))
          event.attr_state_mask |= SWT::BUTTON1
        end
        if ((event.attr_button).equal?(2))
          event.attr_state_mask |= SWT::BUTTON2
        end
        if ((event.attr_button).equal?(3))
          event.attr_state_mask |= SWT::BUTTON3
        end
        if ((event.attr_button).equal?(4))
          event.attr_state_mask |= SWT::BUTTON4
        end
        if ((event.attr_button).equal?(5))
          event.attr_state_mask |= SWT::BUTTON5
        end
      when SWT::KeyDown, SWT::Traverse
        if (!(event.attr_key_code).equal?(0) || !(event.attr_character).equal?(0))
          return true
        end
        last_modifiers = @display.attr_last_modifiers
        if (!((modifiers & OS.attr_alpha_lock)).equal?(0) && ((last_modifiers & OS.attr_alpha_lock)).equal?(0))
          event.attr_key_code = SWT::CAPS_LOCK
          return true
        end
        if (!((modifiers & OS.attr_shift_key)).equal?(0) && ((last_modifiers & OS.attr_shift_key)).equal?(0))
          event.attr_state_mask &= ~SWT::SHIFT
          event.attr_key_code = SWT::SHIFT
          return true
        end
        if (!((modifiers & OS.attr_control_key)).equal?(0) && ((last_modifiers & OS.attr_control_key)).equal?(0))
          event.attr_state_mask &= ~SWT::CONTROL
          event.attr_key_code = SWT::CONTROL
          return true
        end
        if (!((modifiers & OS.attr_cmd_key)).equal?(0) && ((last_modifiers & OS.attr_cmd_key)).equal?(0))
          event.attr_state_mask &= ~SWT::COMMAND
          event.attr_key_code = SWT::COMMAND
          return true
        end
        if (!((modifiers & OS.attr_option_key)).equal?(0) && ((last_modifiers & OS.attr_option_key)).equal?(0))
          event.attr_state_mask &= ~SWT::ALT
          event.attr_key_code = SWT::ALT
          return true
        end
      when SWT::KeyUp
        if (!(event.attr_key_code).equal?(0) || !(event.attr_character).equal?(0))
          return true
        end
        last_modifiers = @display.attr_last_modifiers
        if (((modifiers & OS.attr_alpha_lock)).equal?(0) && !((last_modifiers & OS.attr_alpha_lock)).equal?(0))
          event.attr_key_code = SWT::CAPS_LOCK
          return true
        end
        if (((modifiers & OS.attr_shift_key)).equal?(0) && !((last_modifiers & OS.attr_shift_key)).equal?(0))
          event.attr_state_mask |= SWT::SHIFT
          event.attr_key_code = SWT::SHIFT
          return true
        end
        if (((modifiers & OS.attr_control_key)).equal?(0) && !((last_modifiers & OS.attr_control_key)).equal?(0))
          event.attr_state_mask |= SWT::CONTROL
          event.attr_key_code = SWT::CONTROL
          return true
        end
        if (((modifiers & OS.attr_cmd_key)).equal?(0) && !((last_modifiers & OS.attr_cmd_key)).equal?(0))
          event.attr_state_mask |= SWT::COMMAND
          event.attr_key_code = SWT::COMMAND
          return true
        end
        if (((modifiers & OS.attr_option_key)).equal?(0) && !((last_modifiers & OS.attr_option_key)).equal?(0))
          event.attr_state_mask |= SWT::ALT
          event.attr_key_code = SWT::ALT
          return true
        end
      end
      return true
    end
    
    typesig { [Event, ::Java::Int, ::Java::Int] }
    def set_key_state(event, type, the_event)
      is_null = false
      key_code = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_key_code, OS.attr_type_uint32, nil, key_code.attr_length * 4, nil, key_code)
      event.attr_key_code = Display.translate_key(key_code[0])
      case (event.attr_key_code)
      when SWT::LF
        # Feature in the Macintosh.  When the numeric key pad
        # Enter key is pressed, it generates '\n'.  This is the
        # correct platform behavior but is not portable.  The
        # fix is to convert the '\n' into '\r'.
        event.attr_key_code = SWT::KEYPAD_CR
        event.attr_character = Character.new(?\r.ord)
      when SWT::BS
        event.attr_character = Character.new(?\b.ord)
      when SWT::CR
        event.attr_character = Character.new(?\r.ord)
      when SWT::DEL
        event.attr_character = 0x7f
      when SWT::ESC
        event.attr_character = 0x1b
      when SWT::TAB
        event.attr_character = Character.new(?\t.ord)
      else
        if ((event.attr_key_code).equal?(0) || (SWT::KEYPAD_MULTIPLY <= event.attr_key_code && event.attr_key_code <= SWT::KEYPAD_CR))
          length_ = Array.typed(::Java::Int).new(1) { 0 }
          status = OS._get_event_parameter(the_event, OS.attr_k_event_param_key_unicodes, OS.attr_type_unicode_text, nil, 4, length_, nil)
          if ((status).equal?(OS.attr_no_err) && !(length_[0]).equal?(0))
            chars = CharArray.new(1)
            OS._get_event_parameter(the_event, OS.attr_k_event_param_key_unicodes, OS.attr_type_unicode_text, nil, 2, nil, chars)
            event.attr_character = chars[0]
          end
          # Bug in the Macintosh.  For some reason, Ctrl+Shift+'2' and Ctrl+Shift+'6'
          # fail to give 0x0 (^@ or ASCII NUL) and 0x1e (^^).  Other control character
          # key sequences such as ^A or even Ctrl+Shift+'-' (^_ or 0x1f) are correctly
          # translated to control characters.  Since it is not possible to know which
          # key combination gives '@' on an international keyboard, there is no way to
          # test for either character and convert it to a control character (Shift+'2'
          # gives '@' only on an English keyboard) to work around the problem.
          # 
          # There is no fix at this time.
        end
        if ((event.attr_key_code).equal?(0))
          kchr_ptr = OS._get_script_manager_variable(RJava.cast_to_short(OS.attr_sm_kchrcache))
          if (!(@display.attr_kchr_ptr).equal?(kchr_ptr))
            @display.attr_kchr_ptr = kchr_ptr
            @display.attr_kchr_state[0] = 0
          end
          result = OS._key_translate(@display.attr_kchr_ptr, RJava.cast_to_short(key_code[0]), @display.attr_kchr_state)
          if (result <= 0x7f)
            event.attr_key_code = result & 0x7f
          else
            encoding = Array.typed(::Java::Int).new(1) { 0 }
            key_script = RJava.cast_to_short(OS._get_script_manager_variable(RJava.cast_to_short(OS.attr_sm_key_script)))
            region_code = RJava.cast_to_short(OS._get_script_manager_variable(RJava.cast_to_short(OS.attr_sm_region_code)))
            if ((OS._upgrade_script_info_to_text_encoding(key_script, RJava.cast_to_short(OS.attr_k_text_language_dont_care), region_code, nil, encoding)).equal?(OS.attr_param_err))
              if ((OS._upgrade_script_info_to_text_encoding(key_script, RJava.cast_to_short(OS.attr_k_text_language_dont_care), RJava.cast_to_short(OS.attr_k_text_region_dont_care), nil, encoding)).equal?(OS.attr_param_err))
                encoding[0] = OS.attr_k_text_encoding_mac_roman
              end
            end
            encoding_info = Array.typed(::Java::Int).new(1) { 0 }
            OS._create_text_to_unicode_info_by_encoding(encoding[0], encoding_info)
            if (!(encoding_info[0]).equal?(0))
              chars = CharArray.new(1)
              nchars = Array.typed(::Java::Int).new(1) { 0 }
              buffer = Array.typed(::Java::Byte).new(2) { 0 }
              buffer[0] = 1
              buffer[1] = (result & 0xff)
              OS._convert_from_pstring_to_unicode(encoding_info[0], buffer, chars.attr_length * 2, nchars, chars)
              OS._dispose_text_to_unicode_info(encoding_info)
              event.attr_key_code = chars[0]
            end
          end
        end
      end
      if ((event.attr_key_code).equal?(0) && (event.attr_character).equal?(0))
        if (!is_null)
          return false
        end
      end
      chord = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_mouse_chord, OS.attr_type_uint32, nil, 4, nil, chord)
      modifiers = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_key_modifiers, OS.attr_type_uint32, nil, 4, nil, modifiers)
      return set_input_state(event, type, chord[0], modifiers[0])
    end
    
    typesig { [::Java::Int, ::Java::Boolean] }
    def set_visible(control, visible)
      OS._hiview_set_visible(control, visible)
      invalidate_visible_region(control)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    def set_zorder(control, othe_control, above)
      in_op = above ? OS.attr_k_hiview_zorder_above : OS.attr_k_hiview_zorder_below
      OS._hiview_set_zorder(control, in_op, othe_control)
      invalidate_visible_region(control)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def text_input_proc(next_handler, the_event, user_data)
      event_kind = OS._get_event_kind(the_event)
      case (event_kind)
      when OS.attr_k_event_text_input_unicode_for_key_event
        return k_event_text_input_unicode_for_key_event(next_handler, the_event, user_data)
      when OS.attr_k_event_text_input_update_active_input_area
        return k_event_text_input_update_active_input_area(next_handler, the_event, user_data)
      when OS.attr_k_event_text_input_offset_to_pos
        return k_event_text_input_offset_to_pos(next_handler, the_event, user_data)
      when OS.attr_k_event_text_input_pos_to_offset
        return k_event_text_input_pos_to_offset(next_handler, the_event, user_data)
      when OS.attr_k_event_text_input_get_selected_text
        return k_event_text_input_get_selected_text(next_handler, the_event, user_data)
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [Array.typed(::Java::Float)] }
    def to_rgbcolor(color)
      rgb = RGBColor.new
      rgb.attr_red = RJava.cast_to_short((color[0] * 0xffff))
      rgb.attr_green = RJava.cast_to_short((color[1] * 0xffff))
      rgb.attr_blue = RJava.cast_to_short((color[2] * 0xffff))
      return rgb
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the receiver
    def to_s
      string = "*Disposed*"
      if (!is_disposed)
        string = "*Wrong Thread*"
        if (is_valid_thread)
          string = (get_name_text).to_s
        end
      end
      return (get_name).to_s + " {" + string + "}"
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def tracking_proc(browser, item_id, property, the_rect, start_pt, modifiers)
      # Return one to indicate that the data browser should process the click
      return 1
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def window_proc(next_handler, the_event, user_data)
      event_kind = OS._get_event_kind(the_event)
      case (event_kind)
      when OS.attr_k_event_window_activated
        return k_event_window_activated(next_handler, the_event, user_data)
      when OS.attr_k_event_window_bounds_changed
        return k_event_window_bounds_changed(next_handler, the_event, user_data)
      when OS.attr_k_event_window_close
        return k_event_window_close(next_handler, the_event, user_data)
      when OS.attr_k_event_window_collapsed
        return k_event_window_collapsed(next_handler, the_event, user_data)
      when OS.attr_k_event_window_collapsing
        return k_event_window_collapsing(next_handler, the_event, user_data)
      when OS.attr_k_event_window_deactivated
        return k_event_window_deactivated(next_handler, the_event, user_data)
      when OS.attr_k_event_window_draw_content
        return k_event_window_draw_content(next_handler, the_event, user_data)
      when OS.attr_k_event_window_expanded
        return k_event_window_expanded(next_handler, the_event, user_data)
      when OS.attr_k_event_window_get_region
        return k_event_window_get_region(next_handler, the_event, user_data)
      when OS.attr_k_event_window_hidden
        return k_event_window_hidden(next_handler, the_event, user_data)
      when OS.attr_k_event_window_hit_test
        return k_event_window_hit_test(next_handler, the_event, user_data)
      when OS.attr_k_event_window_shown
        return k_event_window_shown(next_handler, the_event, user_data)
      when OS.attr_k_event_window_update
        return k_event_window_update(next_handler, the_event, user_data)
      when OS.attr_k_event_window_get_click_modality
        return k_event_window_get_click_modality(next_handler, the_event, user_data)
      end
      return OS.attr_event_not_handled_err
    end
    
    private
    alias_method :initialize__widget, :initialize
  end
  
end
