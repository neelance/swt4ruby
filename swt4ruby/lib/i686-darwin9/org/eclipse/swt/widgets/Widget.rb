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
  module WidgetImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Cocoa
      include ::Org::Eclipse::Swt
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
    
    # long
    attr_accessor :jni_ref
    alias_method :attr_jni_ref, :jni_ref
    undef_method :jni_ref
    alias_method :attr_jni_ref=, :jni_ref=
    undef_method :jni_ref=
    
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
      const_set_lazy(:GLCONTEXT_KEY) { "org.eclipse.swt.internal.cocoa.glcontext" }
      const_attr_reader  :GLCONTEXT_KEY
      
      # $NON-NLS-1$
      # Default size for widgets
      const_set_lazy(:DEFAULT_WIDTH) { 64 }
      const_attr_reader  :DEFAULT_WIDTH
      
      const_set_lazy(:DEFAULT_HEIGHT) { 64 }
      const_attr_reader  :DEFAULT_HEIGHT
    }
    
    typesig { [] }
    def initialize
      @style = 0
      @state = 0
      @display = nil
      @event_table = nil
      @data = nil
      @jni_ref = 0
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
      @jni_ref = 0
      check_subclass
      check_parent(parent)
      @style = style
      @display = parent.attr_display
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def accessibility_action_description(id, sel, arg0)
      return call_super_object(id, sel, arg0)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def accessibility_action_names(id, sel)
      return call_super_object(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def accessibility_attribute_names(id, sel)
      return call_super_object(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def accessibility_attribute_value(id, sel, arg0)
      return call_super_object(id, sel, arg0)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def accessibility_attribute_value_for_parameter(id, sel, arg0, arg1)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      return OS.objc_msg_send_super(super_struct, sel, arg0, arg1)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def accessibility_focused_uielement(id, sel)
      return call_super_object(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int, NSPoint] }
    # long
    # long
    # long
    def accessibility_hit_test(id, sel, point)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      return OS.objc_msg_send_super(super_struct, sel, point)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def accessibility_is_ignored(id, sel)
      return call_super_boolean(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def accessibility_parameterized_attribute_names(id, sel)
      return call_super_object(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def accessibility_perform_action(id, sel, arg0)
      call_super(id, sel, arg0)
    end
    
    typesig { [] }
    def get_clipboard_text
      pasteboard = NSPasteboard.general_pasteboard
      string = pasteboard.string_for_type(OS::NSStringPboardType)
      return !(string).nil? ? string.get_string : nil
    end
    
    typesig { [::Java::Float, ::Java::Float] }
    # double
    # double
    def set_clip_region(x, y)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def attributed_substring_from_range(id, sel, range)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def call_super(id, sel)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      OS.objc_msg_send_super(super_struct, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def call_super(id, sel, arg0)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      OS.objc_msg_send_super(super_struct, sel, arg0)
    end
    
    typesig { [::Java::Int, ::Java::Int, NSRect] }
    # long
    # long
    def call_super(id, sel, arg0)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      OS.objc_msg_send_super(super_struct, sel, arg0)
    end
    
    typesig { [::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
    # long
    # long
    # long
    def call_super(id, sel, arg0, arg1)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      OS.objc_msg_send_super(super_struct, sel, arg0, arg1)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def call_super(id, sel, arg0, arg1, arg2)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      return OS.objc_msg_send_super(super_struct, sel, arg0, arg1, arg2)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def call_super_boolean(id, sel)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      return !(OS.objc_msg_send_super(super_struct, sel)).equal?(0)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def can_become_key_window(id, sel)
      return call_super_boolean(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def cell_size(id, sel)
      result = NSSize.new
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      OS.objc_msg_send_super_stret(result, super_struct, sel)
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def call_super_boolean(id, sel, arg0)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      return !(OS.objc_msg_send_super(super_struct, sel, arg0)).equal?(0)
    end
    
    typesig { [::Java::Int, ::Java::Int, NSRange, ::Java::Int] }
    # long
    # long
    # long
    def call_super_boolean(id, sel, range, arg1)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      return OS.objc_msg_send_super_bool(super_struct, sel, range, arg1)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def call_super_object(id, sel)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      return OS.objc_msg_send_super(super_struct, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def call_super_object(id, sel, arg0)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      return OS.objc_msg_send_super(super_struct, sel, arg0)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def can_drag_rows_with_indexes_at_point(id, sel, arg0, arg1)
      # Trees/tables are not draggable unless explicitly told they are.
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def character_index_for_point(id, sel, point)
      return OS::NSNotFound
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def accepts_first_mouse(id, sel, the_event)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      return !(OS.objc_msg_send_super(super_struct, sel, the_event)).equal?(0)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def accepts_first_responder(id, sel)
      return call_super_boolean(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def become_first_responder(id, sel)
      return call_super_boolean(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def become_key_window(id, sel)
      call_super(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def resign_first_responder(id, sel)
      return call_super_boolean(id, sel)
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
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def can_become_key_view(id, sel)
      return true
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
      if (!(display.attr_thread).equal?(JavaThread.current_thread) && !display.attr_is_embedded)
        error(SWT::ERROR_THREAD_INVALID_ACCESS)
      end
      if (!((@state & DISPOSED)).equal?(0))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def text_view_click_on_link_at_index(id, sel, text_view, link, char_index)
      return true
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    # long
    # long
    # long
    def collapse_item_collapse_children(id, sel, item, children)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      OS.objc_msg_send_super(super_struct, sel, item, children)
    end
    
    typesig { [Array.typed(::Java::Char)] }
    def copy_to_clipboard(buffer)
      if ((buffer.attr_length).equal?(0))
        return
      end
      pasteboard = NSPasteboard.general_pasteboard
      pasteboard.declare_types(NSArray.array_with_object(OS::NSStringPboardType), nil)
      pasteboard.set_string(NSString.string_with_characters(buffer, buffer.attr_length), OS::NSStringPboardType)
    end
    
    typesig { [] }
    def create_handle
    end
    
    typesig { [] }
    def create_jniref
      @jni_ref = OS._new_global_ref(self)
      if ((@jni_ref).equal?(0))
        error(SWT::ERROR_NO_HANDLES)
      end
    end
    
    typesig { [] }
    def create_widget
      create_jniref
      create_handle
      register
    end
    
    typesig { [] }
    def deregister
    end
    
    typesig { [] }
    def destroy_jniref
      if (!(@jni_ref).equal?(0))
        OS._delete_global_ref(@jni_ref)
      end
      @jni_ref = 0
    end
    
    typesig { [] }
    def destroy_widget
      release_handle
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def do_command_by_selector(id, sel, a_selector)
      call_super(id, sel, a_selector)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def drag_selection_with_event(id, sel, arg0, arg1, arg2)
      return false
    end
    
    typesig { [::Java::Int, NSGraphicsContext, NSRect] }
    # long
    def draw_background(id, context, rect)
      # Do nothing
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
    # long
    # long
    # long
    # long
    def draw_image_with_frame_in_view(id, sel, image, rect, view)
    end
    
    typesig { [::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
    # long
    # long
    # long
    def draw_interior_with_frame_in_view(id, sel, cell_frame, view)
      call_super(id, sel, cell_frame, view)
    end
    
    typesig { [::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
    # long
    # long
    # long
    def draw_with_expansion_frame_in_view(id, sel, cell_frame, view)
      call_super(id, sel, cell_frame, view)
    end
    
    typesig { [::Java::Int, ::Java::Int, NSRect] }
    # long
    # long
    def draw_rect(id, sel, rect)
      if (!is_drawing)
        return
      end
      display = @display
      view = NSView.new(id)
      display.attr_is_painting.add_object(view)
      context = NSGraphicsContext.current_context
      context.save_graphics_state
      set_clip_region(0, 0)
      draw_background(id, context, rect)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      OS.objc_msg_send_super(super_struct, sel, rect)
      if (!is_disposed)
        # Feature in Cocoa. There are widgets that draw outside of the UI thread,
        # such as the progress bar and default button.  The fix is to draw the
        # widget but not send paint events.
        draw_widget(id, context, rect)
      end
      context.restore_graphics_state
      display.attr_is_painting.remove_object_identical_to(view)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def __draw_theme_progress_area(id, sel, arg0)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      OS.objc_msg_send_super(super_struct, sel, arg0)
    end
    
    typesig { [::Java::Int, NSGraphicsContext, NSRect] }
    # long
    def draw_widget(id, context, rect)
    end
    
    typesig { [NSView, ::Java::Boolean] }
    def redraw_widget(view, children)
      view.set_needs_display(true)
    end
    
    typesig { [NSView, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    # long
    # long
    # long
    # long
    def redraw_widget(view, x, y, width, height, children)
      rect = NSRect.new
      rect.attr_x = x
      rect.attr_y = y
      rect.attr_width = width
      rect.attr_height = height
      view.set_needs_display_in_rect(rect)
    end
    
    typesig { [::Java::Int] }
    def error(code)
      SWT.error(code)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean] }
    # long
    # long
    # long
    def expand_item_expand_children(id, sel, item, children)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      OS.objc_msg_send_super(super_struct, sel, item, children)
    end
    
    typesig { [::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
    # long
    # long
    # long
    def expansion_frame_with_frame_in_view(id, sel, cell_rect, view)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      result = NSRect.new
      OS.objc_msg_send_super_stret(result, super_struct, sel, cell_rect, view)
      return result
    end
    
    typesig { [::Java::Int] }
    def filters(event_type)
      return @display.filters(event_type)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def first_rect_for_character_range(id, sel, range)
      return NSRect.new
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
    
    typesig { [] }
    def get_drawing
      return true
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
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def has_marked_text(id, sel)
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def help_requested(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def highlight_selection_in_clip_rect(id, sel, rect)
    end
    
    typesig { [::Java::Int, ::Java::Int, NSPoint] }
    # long
    # long
    # long
    def hit_test(id, sel, point)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      return OS.objc_msg_send_super(super_struct, sel, point)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, NSRect, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def hit_test_for_event(id, sel, event, rect, control_view)
      return 0
    end
    
    typesig { [::Java::Int] }
    def hooks(event_type)
      if ((@event_table).nil?)
        return false
      end
      return @event_table.hooks(event_type)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def image(id, sel)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, NSRect] }
    # long
    # long
    def image_rect_for_bounds(id, sel, cell_frame)
      return NSRect.new
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def insert_text(id, sel, string)
      call_super(id, sel, string)
      return true
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
    
    typesig { [] }
    def is_drawing
      return true
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def is_flipped(id, sel)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      return !(OS.objc_msg_send_super(super_struct, sel)).equal?(0)
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
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def is_opaque(id, sel)
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def flags_changed(id, sel, the_event)
      call_super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def key_down(id, sel, the_event)
      super_key_down(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def key_up(id, sel, the_event)
      super_key_up(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_down(id, sel, the_event)
      call_super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_up(id, sel, the_event)
      call_super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_moved(id, sel, the_event)
      call_super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_dragged(id, sel, the_event)
      call_super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_entered(id, sel, the_event)
      call_super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def mouse_exited(id, sel, the_event)
      call_super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def cursor_update(id, sel, the_event)
      call_super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def right_mouse_down(id, sel, the_event)
      call_super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def right_mouse_up(id, sel, the_event)
      call_super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def right_mouse_dragged(id, sel, the_event)
      call_super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def other_mouse_down(id, sel, the_event)
      call_super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def other_mouse_up(id, sel, the_event)
      call_super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def other_mouse_dragged(id, sel, the_event)
      call_super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def should_delay_window_ordering_for_event(id, sel, the_event)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      return !(OS.objc_msg_send_super(super_struct, sel, the_event)).equal?(0)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def menu_has_key_equivalent_for_event_target_action(id, sel, menu, event, target, action)
      return true
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def menu_for_event(id, sel, the_event)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      return OS.objc_msg_send_super(super_struct, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def menu_needs_update(id, sel, menu)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def make_first_responder(id, sel, notification)
      return call_super_boolean(id, sel, notification)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def marked_range(id, sel)
      return NSRange.new
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def menu_will_highlight_item(id, sel, menu, item)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def menu_did_close(id, sel, menu)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def menu_will_open(id, sel, menu)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def no_responder_for(id, sel, selector)
      call_super(id, sel, selector)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def number_of_rows_in_table_view(id, sel, a_table_view)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def outline_view_child_of_item(id, sel, outline_view, index, item)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def outline_view_did_click_table_column(id, sel, outline_view, table_column)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def outline_view_object_value_for_table_column_by_item(id, sel, outline_view, table_column, item)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def outline_view_is_item_expandable(id, sel, outline_view, item)
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def outline_view_number_of_children_of_item(id, sel, outline_view, item)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def outline_view_will_display_cell_for_table_column_item(id, sel, outline_view, cell, table_column, item)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def outline_view_column_did_move(id, sel, a_notification)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def outline_view_column_did_resize(id, sel, a_notification)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def outline_view_selection_did_change(id, sel, notification)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def outline_view_set_object_value_for_table_column_by_item(id, sel, outline_view, object, table_column, item)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def outline_view_write_items_to_pasteboard(id, sel, arg0, arg1, arg2)
      return false
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def page_down(id, sel, sender)
      call_super(id, sel, sender)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def page_up(id, sel, sender)
      call_super(id, sel, sender)
    end
    
    typesig { [::Java::Int] }
    def post_event(event_type)
      send_event(event_type, nil, false)
    end
    
    typesig { [::Java::Int, Event] }
    def post_event(event_type, event)
      send_event(event_type, event, false)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def reflect_scrolled_clip_view(id, sel, a_clip_view)
      call_super(id, sel, a_clip_view)
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
      destroy_jniref
    end
    
    typesig { [] }
    def release_parent
      # Do nothing
    end
    
    typesig { [] }
    def release_widget
      deregister
      if ((@display.attr_tooltip_target).equal?(self))
        @display.attr_tooltip_target = nil
      end
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
    # long
    # long
    # long
    def scroll_wheel(id, sel, the_event)
      call_super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def selected_range(id, sel)
      return NSRange.new
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def next_valid_key_view(id, sel)
      return call_super_object(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def previous_valid_key_view(id, sel)
      return call_super_object(id, sel)
    end
    
    typesig { [] }
    def send_double_selection
    end
    
    typesig { [Event] }
    def send_event(event)
      @display.send_event(@event_table, event)
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
        @display.post_event___org_eclipse_swt_widgets_widget_1(event)
      end
    end
    
    typesig { [NSEvent, ::Java::Int] }
    def send_key_event(ns_event, type)
      if (!((@state & SAFARI_EVENTS_FIX)).equal?(0))
        return true
      end
      event = Event.new
      if (!set_key_state(event, type, ns_event))
        return true
      end
      return send_key_event(type, event)
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
    
    typesig { [] }
    def send_horizontal_selection
    end
    
    typesig { [] }
    def send_cancel_selection
    end
    
    typesig { [] }
    def send_search_selection
    end
    
    typesig { [] }
    def send_selection
    end
    
    typesig { [] }
    def send_vertical_selection
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
      if ((GLCONTEXT_KEY == key))
        set_open_glcontext(value)
        return
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
    
    typesig { [Object] }
    def set_open_glcontext(value)
    end
    
    typesig { [::Java::Int, ::Java::Int, NSPoint] }
    # long
    # long
    def set_frame_origin(id, sel, point)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      OS.objc_msg_send_super(super_struct, sel, point)
    end
    
    typesig { [::Java::Int, ::Java::Int, NSSize] }
    # long
    # long
    def set_frame_size(id, sel, size)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      OS.objc_msg_send_super(super_struct, sel, size)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def set_image(id, sel, arg0)
    end
    
    typesig { [Event, NSEvent, ::Java::Int] }
    def set_input_state(event, ns_event, type)
      if ((ns_event).nil?)
        return true
      end
      # long
      modifier_flags_ = ns_event.modifier_flags
      if (!((modifier_flags_ & OS::NSAlternateKeyMask)).equal?(0))
        event.attr_state_mask |= SWT::ALT
      end
      if (!((modifier_flags_ & OS::NSShiftKeyMask)).equal?(0))
        event.attr_state_mask |= SWT::SHIFT
      end
      if (!((modifier_flags_ & OS::NSControlKeyMask)).equal?(0))
        event.attr_state_mask |= SWT::CONTROL
      end
      if (!((modifier_flags_ & OS::NSCommandKeyMask)).equal?(0))
        event.attr_state_mask |= SWT::COMMAND
      end
      # TODO multiple mouse buttons pressed
      # 64
      case (RJava.cast_to_int(ns_event.type))
      when OS::NSLeftMouseDragged, OS::NSRightMouseDragged, OS::NSOtherMouseDragged
        # 64
        case (RJava.cast_to_int(ns_event.button_number))
        when 0
          event.attr_state_mask |= SWT::BUTTON1
        when 1
          event.attr_state_mask |= SWT::BUTTON3
        when 2
          event.attr_state_mask |= SWT::BUTTON2
        when 3
          event.attr_state_mask |= SWT::BUTTON4
        when 4
          event.attr_state_mask |= SWT::BUTTON5
        end
      when OS::NSScrollWheel, OS::NSKeyDown, OS::NSKeyUp
        state = OS._get_current_button_state
        if (!((state & 0x1)).equal?(0))
          event.attr_state_mask |= SWT::BUTTON1
        end
        if (!((state & 0x2)).equal?(0))
          event.attr_state_mask |= SWT::BUTTON3
        end
        if (!((state & 0x4)).equal?(0))
          event.attr_state_mask |= SWT::BUTTON2
        end
        if (!((state & 0x8)).equal?(0))
          event.attr_state_mask |= SWT::BUTTON4
        end
        if (!((state & 0x10)).equal?(0))
          event.attr_state_mask |= SWT::BUTTON5
        end
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
        if ((event.attr_key_code).equal?(SWT::ALT))
          event.attr_state_mask &= ~SWT::ALT
        end
        if ((event.attr_key_code).equal?(SWT::SHIFT))
          event.attr_state_mask &= ~SWT::SHIFT
        end
        if ((event.attr_key_code).equal?(SWT::CONTROL))
          event.attr_state_mask &= ~SWT::CONTROL
        end
        if ((event.attr_key_code).equal?(SWT::COMMAND))
          event.attr_state_mask &= ~SWT::COMMAND
        end
      when SWT::KeyUp
        if ((event.attr_key_code).equal?(SWT::ALT))
          event.attr_state_mask |= SWT::ALT
        end
        if ((event.attr_key_code).equal?(SWT::SHIFT))
          event.attr_state_mask |= SWT::SHIFT
        end
        if ((event.attr_key_code).equal?(SWT::CONTROL))
          event.attr_state_mask |= SWT::CONTROL
        end
        if ((event.attr_key_code).equal?(SWT::COMMAND))
          event.attr_state_mask |= SWT::COMMAND
        end
      end
      return true
    end
    
    typesig { [Event, ::Java::Int, NSEvent] }
    def set_key_state(event, type_, ns_event)
      is_null = false
      key_code_ = ns_event.key_code
      event.attr_key_code = Display.translate_key(key_code_)
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
          chars = ns_event.characters
          if (chars.length > 0)
            event.attr_character = RJava.cast_to_char(chars.character_at_index(0))
          end
        end
        if ((event.attr_key_code).equal?(0))
          # long
          uchr_ptr = 0
          # long
          current_kbd = OS._tiscopy_current_keyboard_input_source
          # long
          uchr_cfdata = OS._tisget_input_source_property(current_kbd, OS.k_tisproperty_unicode_key_layout_data)
          if (!(uchr_cfdata).equal?(0))
            # If the keyboard changed since the last keystroke clear the dead key state.
            if (!(uchr_cfdata).equal?(@display.attr_current_keyboard_uchrdata))
              @display.attr_dead_key_state[0] = 0
            end
            uchr_ptr = OS._cfdata_get_byte_ptr(uchr_cfdata)
            if (!(uchr_ptr).equal?(0) && OS._cfdata_get_length(uchr_cfdata) > 0)
              # long
              cg_event = ns_event._cgevent
              keyboard_type = OS._cgevent_get_integer_value_field(cg_event, OS.attr_k_cgkeyboard_event_keyboard_type)
              max_string_length = 256
              output = CharArray.new(max_string_length)
              actual_string_length = Array.typed(::Java::Int).new(1) { 0 }
              OS._uckey_translate(uchr_ptr, RJava.cast_to_short(key_code_), RJava.cast_to_short(OS.attr_k_uckey_action_down), 0, RJava.cast_to_int(keyboard_type), 0, @display.attr_dead_key_state, max_string_length, actual_string_length, output)
              if (actual_string_length[0] < 1)
                # part of a multi-key key
                event.attr_key_code = 0
              else
                event.attr_key_code = output[0]
              end
            end
          else
            # KCHR keyboard layouts are no longer supported, so fall back to the basic but flawed
            # method of determining which key was pressed.
            unmodified_chars = ns_event.characters_ignoring_modifiers.lowercase_string
            if (unmodified_chars.length > 0)
              event.attr_key_code = RJava.cast_to_char(unmodified_chars.character_at_index(0))
            end
          end
          if (!(current_kbd).equal?(0))
            OS._cfrelease(current_kbd)
          end
        end
      end
      if ((event.attr_key_code).equal?(0) && (event.attr_character).equal?(0))
        if (!is_null)
          return false
        end
      end
      set_input_state(event, ns_event, type_)
      return true
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def set_marked_text_selected_range(id, sel, string, range)
      return true
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Boolean] }
    # long
    # long
    def set_needs_display(id, sel, flag)
      if (flag && !is_drawing)
        return
      end
      view = NSView.new(id)
      if (flag && @display.attr_is_painting.contains_object(view))
        needs_display = @display.attr_needs_display
        if ((needs_display).nil?)
          needs_display = NSMutableArray.new.alloc
          @display.attr_needs_display = needs_display = needs_display.init_with_capacity(12)
        end
        needs_display.add_object(view)
        return
      end
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      OS.objc_msg_send_super(super_struct, sel, flag)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def set_needs_display_in_rect(id, sel, arg0)
      if (!is_drawing)
        return
      end
      rect = NSRect.new
      OS.memmove___org_eclipse_swt_widgets_widget_3(rect, arg0, NSRect.attr_sizeof)
      view = NSView.new(id)
      if (@display.attr_is_painting.contains_object(view))
        needs_display_in_rect = @display.attr_needs_display_in_rect
        if ((needs_display_in_rect).nil?)
          needs_display_in_rect = NSMutableArray.new.alloc
          @display.attr_needs_display_in_rect = needs_display_in_rect = needs_display_in_rect.init_with_capacity(12)
        end
        needs_display_in_rect.add_object(view)
        needs_display_in_rect.add_object(NSValue.value_with_rect(rect))
        return
      end
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      OS.objc_msg_send_super(super_struct, sel, rect)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def set_object_value(id, sel, arg0)
      call_super(id, sel, arg0)
    end
    
    typesig { [] }
    def set_tab_group_focus
      return set_tab_item_focus
    end
    
    typesig { [] }
    def set_tab_item_focus
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def should_change_text_in_range_replacement_string(id, sel, arg0, arg1)
      return true
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def super_key_down(id, sel, the_event)
      call_super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def super_key_up(id, sel, the_event)
      call_super(id, sel, the_event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def table_view_column_did_move(id, sel, a_notification)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def table_view_column_did_resize(id, sel, a_notification)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def table_view_selection_did_change(id, sel, a_notification)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def table_view_did_click_table_column(id, sel, table_view, table_column)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def table_view_object_value_for_table_column_row(id, sel, a_table_view, a_table_column, row_index)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def table_view_set_object_value_for_table_column_row(id, sel, a_table_view, an_object, a_table_column, row_index)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def table_view_should_edit_table_column_row(id, sel, a_table_view, a_table_column, row_index)
      return true
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def table_view_will_display_cell_for_table_column_row(id, sel, a_table_view, a_cell, a_table_column, row_index)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def text_view_did_change_selection(id, sel, a_notification)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def text_did_change(id, sel, a_notification)
      call_super(id, sel, a_notification)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def text_did_end_editing(id, sel, a_notification)
      call_super(id, sel, a_notification)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def text_view_will_change_selection_from_character_range_to_character_range(id, sel, a_text_view, old_selected_char_range, new_selected_char_range)
      return NSRange.new
    end
    
    typesig { [::Java::Int, ::Java::Int, NSRect] }
    # long
    # long
    def title_rect_for_bounds(id, sel, cell_frame)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      result = NSRect.new
      OS.objc_msg_send_super_stret(result, super_struct, sel, cell_frame)
      return result
    end
    
    typesig { [] }
    def tooltip_text
      return nil
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
          string = RJava.cast_to_string(get_name_text)
        end
      end
      return RJava.cast_to_string(get_name) + " {" + string + "}"
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def reset_cursor_rects(id, sel)
      call_super(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def update_tracking_areas(id, sel)
      call_super(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def valid_attributes_for_marked_text(id, sel)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def tab_view_did_select_tab_view_item(id, sel, tab_view, tab_view_item)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def tab_view_will_select_tab_view_item(id, sel, tab_view, tab_view_item)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def table_view_write_rows_with_indexes_to_pasteboard(id, sel, arg0, arg1, arg2)
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    def view_string_for_tool_tip_point_user_data(id, sel, view, tag, point, user_data)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def view_did_move_to_window(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def window_did_move(id, sel, notification)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def window_did_resize(id, sel, notification)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def window_did_resign_key(id, sel, notification)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def window_did_become_key(id, sel, notification)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def window_send_event(id, sel, event)
      call_super(id, sel, event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def window_should_close(id, sel, window)
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def window_will_close(id, sel, notification)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def next_state(id, sel)
      return call_super_object(id, sel)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def update_open_glcontext(id, sel, notification)
    end
    
    private
    alias_method :initialize__widget, :initialize
  end
  
end
