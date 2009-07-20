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
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
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
    
    # the handle to the OS resource
    # (Warning: This field is platform dependent)
    # <p>
    # <b>IMPORTANT:</b> This field is <em>not</em> part of the SWT
    # public API. It is marked public only so that it can be shared
    # within the packages provided by SWT. It is not available on all
    # platforms and should never be accessed from application code.
    # </p>
    # 
    # long
    attr_accessor :handle
    alias_method :attr_handle, :handle
    undef_method :handle
    alias_method :attr_handle=, :handle=
    undef_method :handle=
    
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
      
      const_set_lazy(:HANDLE) { 1 << 3 }
      const_attr_reader  :HANDLE
      
      const_set_lazy(:DISABLED) { 1 << 4 }
      const_attr_reader  :DISABLED
      
      const_set_lazy(:MENU) { 1 << 5 }
      const_attr_reader  :MENU
      
      const_set_lazy(:OBSCURED) { 1 << 6 }
      const_attr_reader  :OBSCURED
      
      const_set_lazy(:MOVED) { 1 << 7 }
      const_attr_reader  :MOVED
      
      const_set_lazy(:RESIZED) { 1 << 8 }
      const_attr_reader  :RESIZED
      
      const_set_lazy(:ZERO_WIDTH) { 1 << 9 }
      const_attr_reader  :ZERO_WIDTH
      
      const_set_lazy(:ZERO_HEIGHT) { 1 << 10 }
      const_attr_reader  :ZERO_HEIGHT
      
      const_set_lazy(:HIDDEN) { 1 << 11 }
      const_attr_reader  :HIDDEN
      
      const_set_lazy(:FOREGROUND) { 1 << 12 }
      const_attr_reader  :FOREGROUND
      
      const_set_lazy(:BACKGROUND) { 1 << 13 }
      const_attr_reader  :BACKGROUND
      
      const_set_lazy(:FONT) { 1 << 14 }
      const_attr_reader  :FONT
      
      const_set_lazy(:PARENT_BACKGROUND) { 1 << 15 }
      const_attr_reader  :PARENT_BACKGROUND
      
      const_set_lazy(:THEME_BACKGROUND) { 1 << 16 }
      const_attr_reader  :THEME_BACKGROUND
      
      # A layout was requested on this widget
      const_set_lazy(:LAYOUT_NEEDED) { 1 << 17 }
      const_attr_reader  :LAYOUT_NEEDED
      
      # The preferred size of a child has changed
      const_set_lazy(:LAYOUT_CHANGED) { 1 << 18 }
      const_attr_reader  :LAYOUT_CHANGED
      
      # A layout was requested in this widget hierachy
      const_set_lazy(:LAYOUT_CHILD) { 1 << 19 }
      const_attr_reader  :LAYOUT_CHILD
      
      # More global state flags
      const_set_lazy(:RELEASED) { 1 << 20 }
      const_attr_reader  :RELEASED
      
      const_set_lazy(:DISPOSE_SENT) { 1 << 21 }
      const_attr_reader  :DISPOSE_SENT
      
      const_set_lazy(:FOREIGN_HANDLE) { 1 << 22 }
      const_attr_reader  :FOREIGN_HANDLE
      
      const_set_lazy(:DRAG_DETECT) { 1 << 23 }
      const_attr_reader  :DRAG_DETECT
      
      # Default size for widgets
      const_set_lazy(:DEFAULT_WIDTH) { 64 }
      const_attr_reader  :DEFAULT_WIDTH
      
      const_set_lazy(:DEFAULT_HEIGHT) { 64 }
      const_attr_reader  :DEFAULT_HEIGHT
      
      # GTK signals data
      const_set_lazy(:ACTIVATE) { 1 }
      const_attr_reader  :ACTIVATE
      
      const_set_lazy(:BUTTON_PRESS_EVENT) { 2 }
      const_attr_reader  :BUTTON_PRESS_EVENT
      
      const_set_lazy(:BUTTON_PRESS_EVENT_INVERSE) { 3 }
      const_attr_reader  :BUTTON_PRESS_EVENT_INVERSE
      
      const_set_lazy(:BUTTON_RELEASE_EVENT) { 4 }
      const_attr_reader  :BUTTON_RELEASE_EVENT
      
      const_set_lazy(:BUTTON_RELEASE_EVENT_INVERSE) { 5 }
      const_attr_reader  :BUTTON_RELEASE_EVENT_INVERSE
      
      const_set_lazy(:CHANGED) { 6 }
      const_attr_reader  :CHANGED
      
      const_set_lazy(:CHANGE_VALUE) { 7 }
      const_attr_reader  :CHANGE_VALUE
      
      const_set_lazy(:CLICKED) { 8 }
      const_attr_reader  :CLICKED
      
      const_set_lazy(:COMMIT) { 9 }
      const_attr_reader  :COMMIT
      
      const_set_lazy(:CONFIGURE_EVENT) { 10 }
      const_attr_reader  :CONFIGURE_EVENT
      
      const_set_lazy(:DELETE_EVENT) { 11 }
      const_attr_reader  :DELETE_EVENT
      
      const_set_lazy(:DELETE_RANGE) { 12 }
      const_attr_reader  :DELETE_RANGE
      
      const_set_lazy(:DELETE_TEXT) { 13 }
      const_attr_reader  :DELETE_TEXT
      
      const_set_lazy(:ENTER_NOTIFY_EVENT) { 14 }
      const_attr_reader  :ENTER_NOTIFY_EVENT
      
      const_set_lazy(:EVENT) { 15 }
      const_attr_reader  :EVENT
      
      const_set_lazy(:EVENT_AFTER) { 16 }
      const_attr_reader  :EVENT_AFTER
      
      const_set_lazy(:EXPAND_COLLAPSE_CURSOR_ROW) { 17 }
      const_attr_reader  :EXPAND_COLLAPSE_CURSOR_ROW
      
      const_set_lazy(:EXPOSE_EVENT) { 18 }
      const_attr_reader  :EXPOSE_EVENT
      
      const_set_lazy(:EXPOSE_EVENT_INVERSE) { 19 }
      const_attr_reader  :EXPOSE_EVENT_INVERSE
      
      const_set_lazy(:FOCUS) { 20 }
      const_attr_reader  :FOCUS
      
      const_set_lazy(:FOCUS_IN_EVENT) { 21 }
      const_attr_reader  :FOCUS_IN_EVENT
      
      const_set_lazy(:FOCUS_OUT_EVENT) { 22 }
      const_attr_reader  :FOCUS_OUT_EVENT
      
      const_set_lazy(:GRAB_FOCUS) { 23 }
      const_attr_reader  :GRAB_FOCUS
      
      const_set_lazy(:HIDE) { 24 }
      const_attr_reader  :HIDE
      
      const_set_lazy(:INPUT) { 25 }
      const_attr_reader  :INPUT
      
      const_set_lazy(:INSERT_TEXT) { 26 }
      const_attr_reader  :INSERT_TEXT
      
      const_set_lazy(:KEY_PRESS_EVENT) { 27 }
      const_attr_reader  :KEY_PRESS_EVENT
      
      const_set_lazy(:KEY_RELEASE_EVENT) { 28 }
      const_attr_reader  :KEY_RELEASE_EVENT
      
      const_set_lazy(:LEAVE_NOTIFY_EVENT) { 29 }
      const_attr_reader  :LEAVE_NOTIFY_EVENT
      
      const_set_lazy(:MAP) { 30 }
      const_attr_reader  :MAP
      
      const_set_lazy(:MAP_EVENT) { 31 }
      const_attr_reader  :MAP_EVENT
      
      const_set_lazy(:MNEMONIC_ACTIVATE) { 32 }
      const_attr_reader  :MNEMONIC_ACTIVATE
      
      const_set_lazy(:MOTION_NOTIFY_EVENT) { 33 }
      const_attr_reader  :MOTION_NOTIFY_EVENT
      
      const_set_lazy(:MOTION_NOTIFY_EVENT_INVERSE) { 34 }
      const_attr_reader  :MOTION_NOTIFY_EVENT_INVERSE
      
      const_set_lazy(:MOVE_FOCUS) { 35 }
      const_attr_reader  :MOVE_FOCUS
      
      const_set_lazy(:OUTPUT) { 36 }
      const_attr_reader  :OUTPUT
      
      const_set_lazy(:POPULATE_POPUP) { 37 }
      const_attr_reader  :POPULATE_POPUP
      
      const_set_lazy(:POPUP_MENU) { 38 }
      const_attr_reader  :POPUP_MENU
      
      const_set_lazy(:PREEDIT_CHANGED) { 39 }
      const_attr_reader  :PREEDIT_CHANGED
      
      const_set_lazy(:REALIZE) { 40 }
      const_attr_reader  :REALIZE
      
      const_set_lazy(:ROW_ACTIVATED) { 41 }
      const_attr_reader  :ROW_ACTIVATED
      
      const_set_lazy(:SCROLL_CHILD) { 42 }
      const_attr_reader  :SCROLL_CHILD
      
      const_set_lazy(:SCROLL_EVENT) { 43 }
      const_attr_reader  :SCROLL_EVENT
      
      const_set_lazy(:SELECT) { 44 }
      const_attr_reader  :SELECT
      
      const_set_lazy(:SHOW) { 45 }
      const_attr_reader  :SHOW
      
      const_set_lazy(:SHOW_HELP) { 46 }
      const_attr_reader  :SHOW_HELP
      
      const_set_lazy(:SIZE_ALLOCATE) { 47 }
      const_attr_reader  :SIZE_ALLOCATE
      
      const_set_lazy(:STYLE_SET) { 48 }
      const_attr_reader  :STYLE_SET
      
      const_set_lazy(:SWITCH_PAGE) { 49 }
      const_attr_reader  :SWITCH_PAGE
      
      const_set_lazy(:TEST_COLLAPSE_ROW) { 50 }
      const_attr_reader  :TEST_COLLAPSE_ROW
      
      const_set_lazy(:TEST_EXPAND_ROW) { 51 }
      const_attr_reader  :TEST_EXPAND_ROW
      
      const_set_lazy(:TEXT_BUFFER_INSERT_TEXT) { 52 }
      const_attr_reader  :TEXT_BUFFER_INSERT_TEXT
      
      const_set_lazy(:TOGGLED) { 53 }
      const_attr_reader  :TOGGLED
      
      const_set_lazy(:UNMAP) { 54 }
      const_attr_reader  :UNMAP
      
      const_set_lazy(:UNMAP_EVENT) { 55 }
      const_attr_reader  :UNMAP_EVENT
      
      const_set_lazy(:UNREALIZE) { 56 }
      const_attr_reader  :UNREALIZE
      
      const_set_lazy(:VALUE_CHANGED) { 57 }
      const_attr_reader  :VALUE_CHANGED
      
      const_set_lazy(:VISIBILITY_NOTIFY_EVENT) { 58 }
      const_attr_reader  :VISIBILITY_NOTIFY_EVENT
      
      const_set_lazy(:WINDOW_STATE_EVENT) { 59 }
      const_attr_reader  :WINDOW_STATE_EVENT
      
      const_set_lazy(:ACTIVATE_INVERSE) { 60 }
      const_attr_reader  :ACTIVATE_INVERSE
      
      const_set_lazy(:DAY_SELECTED) { 61 }
      const_attr_reader  :DAY_SELECTED
      
      const_set_lazy(:MONTH_CHANGED) { 62 }
      const_attr_reader  :MONTH_CHANGED
      
      const_set_lazy(:LAST_SIGNAL) { 63 }
      const_attr_reader  :LAST_SIGNAL
    }
    
    typesig { [] }
    # Prevents uninitialized instances from being created outside the package.
    def initialize
      @handle = 0
      @style = 0
      @state = 0
      @display = nil
      @event_table = nil
      @data = nil
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
      @handle = 0
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
    
    typesig { [::Java::Int, Listener] }
    def __add_listener(event_type, listener)
      if ((@event_table).nil?)
        @event_table = EventTable.new
      end
      @event_table.hook(event_type, listener)
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
    
    typesig { [] }
    # long
    def paint_window
      return 0
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def cell_data_proc(tree_column, cell, tree_model, iter, data)
      return 0
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
      # Versions of GTK prior to 2.8 do not render RTL text properly
      if (OS::GTK_VERSION < OS._version(2, 8, 0))
        @style &= ~SWT::RIGHT_TO_LEFT
        @style |= SWT::LEFT_TO_RIGHT
      end
    end
    
    typesig { [Widget] }
    # Throws an exception if the specified widget can not be
    # used as a parent for the receiver.
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the parent is null</li>
    # <li>ERROR_INVALID_ARGUMENT - if the parent is disposed</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # </ul>
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
    
    typesig { [::Java::Int] }
    def create_handle(index)
    end
    
    typesig { [::Java::Int] }
    def create_widget(index)
      create_handle(index)
      set_orientation
      hook_events
      register
    end
    
    typesig { [] }
    def deregister
      if ((@handle).equal?(0))
        return
      end
      if (!((@state & HANDLE)).equal?(0))
        @display.remove_widget(@handle)
      end
    end
    
    typesig { [] }
    def destroy_widget
      # long
      top_handle_ = top_handle
      release_handle
      if (!(top_handle_).equal?(0) && !((@state & HANDLE)).equal?(0))
        OS.gtk_widget_destroy(top_handle_)
      end
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
    
    typesig { [::Java::Int] }
    def error(code)
      SWT.error(code)
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
      # String string = getClass ().getName ();
      # int index = string.lastIndexOf ('.');
      # if (index == -1) return string;
      string = get_class.get_name
      index = string.length
      while (((index -= 1) > 0) && (!(string.char_at(index)).equal?(Character.new(?..ord))))
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
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_activate(widget)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_button_press_event(widget, event)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_button_release_event(widget, event)
      return 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_changed(widget)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def gtk_change_value(widget, scroll, value1, value2)
      return 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_clicked(widget)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_commit(imcontext, text)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_configure_event(widget, event)
      return 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_day_selected(widget)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_delete_event(widget, event)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def gtk_delete_range(widget, iter1, iter2)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def gtk_delete_text(widget, start_pos, end_pos)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_enter_notify_event(widget, event)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_event(widget, event)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_event_after(widget, event)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def gtk_expand_collapse_cursor_row(widget, logical, expand, open_all)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_expose_event(widget, event)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_focus(widget, event)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_focus_in_event(widget, event)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_focus_out_event(widget, event)
      return 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_grab_focus(widget)
      return 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_hide(widget)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_input(widget, arg1)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def gtk_insert_text(widget, new_text, new_text_length, position)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_key_press_event(widget, event)
      gdk_event = GdkEventKey.new
      OS.memmove(gdk_event, event, GdkEventKey.attr_sizeof)
      return send_key_event(SWT::KeyDown, gdk_event) ? 0 : 1
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_key_release_event(widget, event)
      gdk_event = GdkEventKey.new
      OS.memmove(gdk_event, event, GdkEventKey.attr_sizeof)
      return send_key_event(SWT::KeyUp, gdk_event) ? 0 : 1
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_leave_notify_event(widget, event)
      return 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_map(widget)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_map_event(widget, event)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_mnemonic_activate(widget, arg1)
      return 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_month_changed(widget)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_motion_notify_event(widget, event)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_move_focus(widget, event)
      return 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_output(widget)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_populate_popup(widget, menu)
      return 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_popup_menu(widget)
      return 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_preedit_changed(imcontext)
      return 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_realize(widget)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def gtk_row_activated(tree, path, column)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def gtk_scroll_child(widget, scroll_type, horizontal)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_scroll_event(widget, event)
      return 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_select(item)
      return 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_show(widget)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_show_help(widget, help_type)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_size_allocate(widget, allocation)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_style_set(widget, previous_style)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def gtk_switch_page(widget, page, page_num)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def gtk_test_collapse_row(tree, iter, path)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def gtk_test_expand_row(tree, iter, path)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def gtk_text_buffer_insert_text(widget, iter, text, length_)
      return 0
    end
    
    typesig { [] }
    # long
    def gtk_timer
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_toggled(renderer, path_str)
      return 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_unmap(widget)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_unmap_event(widget, event)
      return 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_unrealize(widget)
      return 0
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def gtk_value_changed(adjustment)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_visibility_notify_event(widget, event)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def gtk_window_state_event(widget, event)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def font_height(font, widget_handle)
      # long
      context = OS.gtk_widget_get_pango_context(widget_handle)
      # long
      lang = OS.pango_context_get_language(context)
      # long
      metrics = OS.pango_context_get_metrics(context, font, lang)
      ascent = OS.pango_font_metrics_get_ascent(metrics)
      descent = OS.pango_font_metrics_get_descent(metrics)
      OS.pango_font_metrics_unref(metrics)
      return OS._pango_pixels(ascent + descent)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def filter_proc(x_event, gdk_event, data2)
      return 0
    end
    
    typesig { [::Java::Int] }
    def filters(event_type)
      return @display.filters(event_type)
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def fixed_map_proc(widget)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def fixed_size_allocate_proc(widget, allocation_ptr)
      return OS._call(Display.attr_old_fixed_size_allocate_proc, widget, allocation_ptr)
    end
    
    typesig { [String] }
    def fix_mnemonic(string)
      return fix_mnemonic(string, true)
    end
    
    typesig { [String, ::Java::Boolean] }
    def fix_mnemonic(string, replace)
      length_ = string.length
      text = CharArray.new(length_)
      string.get_chars(0, length_, text, 0)
      i = 0
      j = 0
      result = CharArray.new(length_ * 2)
      while (i < length_)
        case (text[i])
        when Character.new(?&.ord)
          if (i + 1 < length_ && (text[i + 1]).equal?(Character.new(?&.ord)))
            i += 1
          else
            if (replace)
              text[i] = Character.new(?_.ord)
            else
              i += 1
            end
          end
        when Character.new(?_.ord)
          if (replace)
            result[((j += 1) - 1)] = Character.new(?_.ord)
          end
        end
        result[((j += 1) - 1)] = text[((i += 1) - 1)]
      end
      return result
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
    
    typesig { [] }
    def is_valid_thread
      return get_display.is_valid_thread
    end
    
    typesig { [] }
    def is_valid_subclass
      return Display.is_valid_class(get_class)
    end
    
    typesig { [] }
    def hook_events
    end
    
    typesig { [::Java::Int] }
    # Returns <code>true</code> if the specified eventType is
    # hooked, and <code>false</code> otherwise. Implementations
    # of SWT can avoid creating objects and sending events
    # when an event happens in the operating system but
    # there are no listeners hooked for the event.
    # 
    # @param eventType the event to be checked
    # 
    # @return <code>true</code> when the eventType is hooked and <code>false</code> otherwise
    # 
    # @see #isListening
    def hooks(event_type)
      if ((@event_table).nil?)
        return false
      end
      return @event_table.hooks(event_type)
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def hover_proc(widget)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def menu_position_proc(menu, x, y, push_in, user_data)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Char] }
    # long
    def mnemonic_hit(mnemonic_handle, key)
      if (!mnemonic_match(mnemonic_handle, key))
        return false
      end
      OS.g_signal_handlers_block_matched(mnemonic_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, MNEMONIC_ACTIVATE)
      result = OS.gtk_widget_mnemonic_activate(mnemonic_handle, false)
      OS.g_signal_handlers_unblock_matched(mnemonic_handle, OS::G_SIGNAL_MATCH_DATA, 0, 0, 0, 0, MNEMONIC_ACTIVATE)
      return result
    end
    
    typesig { [::Java::Int, ::Java::Char] }
    # long
    def mnemonic_match(mnemonic_handle, key)
      keyval1 = OS.gdk_keyval_to_lower(OS.gdk_unicode_to_keyval(key))
      keyval2 = OS.gdk_keyval_to_lower(OS.gtk_label_get_mnemonic_keyval(mnemonic_handle))
      return (keyval1).equal?(keyval2)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def modify_style(handle, style)
      OS.gtk_widget_modify_style(handle, style)
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
    
    typesig { [] }
    def register
      if ((@handle).equal?(0))
        return
      end
      if (!((@state & HANDLE)).equal?(0))
        @display.add_widget(@handle, self)
      end
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
      @handle = 0
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    def renderer_get_size_proc(cell, handle, cell_area, x_offset, y_offset, width, height)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    def renderer_render_proc(cell, window, handle, background_area, cell_area, expose_area, flags)
      return 0
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
    
    typesig { [::Java::Int, GdkEventKey] }
    def send_key_event(type, key_event)
      length_ = key_event.attr_length
      if ((key_event.attr_string).equal?(0) || OS.g_utf8_strlen(key_event.attr_string, length_) <= 1)
        event = Event.new
        event.attr_time = key_event.attr_time
        if (!set_key_state(event, key_event))
          return true
        end
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
      buffer = Array.typed(::Java::Byte).new(length_) { 0 }
      OS.memmove(buffer, key_event.attr_string, length_)
      chars = Converter.mbcs_to_wcs(nil, buffer)
      return !(send_imkey_event(type, key_event, chars)).nil?
    end
    
    typesig { [::Java::Int, GdkEventKey, Array.typed(::Java::Char)] }
    def send_imkey_event(type, key_event, chars)
      index = 0
      count = 0
      state = 0
      # long
      ptr = 0
      if ((key_event).nil?)
        ptr = OS.gtk_get_current_event
        if (!(ptr).equal?(0))
          key_event = GdkEventKey.new
          OS.memmove(key_event, ptr, GdkEventKey.attr_sizeof)
          case (key_event.attr_type)
          when OS::GDK_KEY_PRESS, OS::GDK_KEY_RELEASE
            state = key_event.attr_state
          else
            key_event = nil
          end
        end
      end
      if ((key_event).nil?)
        buffer = Array.typed(::Java::Int).new(1) { 0 }
        OS.gtk_get_current_event_state(buffer)
        state = buffer[0]
      end
      while (index < chars.attr_length)
        event = Event.new
        if (!(key_event).nil? && chars.attr_length <= 1)
          set_key_state(event, key_event)
        else
          set_input_state(event, state)
        end
        event.attr_character = chars[index]
        send_event(type, event)
        # It is possible (but unlikely), that application
        # code could have disposed the widget in the key
        # events.  If this happens, end the processing of
        # the key by returning null.
        if (is_disposed)
          if (!(ptr).equal?(0))
            OS.gdk_event_free(ptr)
          end
          return nil
        end
        if (event.attr_doit)
          chars[((count += 1) - 1)] = chars[index]
        end
        index += 1
      end
      if (!(ptr).equal?(0))
        OS.gdk_event_free(ptr)
      end
      if ((count).equal?(0))
        return nil
      end
      if (!(index).equal?(count))
        result = CharArray.new(count)
        System.arraycopy(chars, 0, result, 0, count)
        return result
      end
      return chars
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
    
    typesig { [::Java::Int, GdkColor] }
    # long
    def set_foreground_color(handle, color)
      # long
      style = OS.gtk_widget_get_modifier_style(handle)
      OS.gtk_rc_style_set_fg(style, OS::GTK_STATE_NORMAL, color)
      OS.gtk_rc_style_set_fg(style, OS::GTK_STATE_ACTIVE, color)
      OS.gtk_rc_style_set_fg(style, OS::GTK_STATE_PRELIGHT, color)
      flags = OS.gtk_rc_style_get_color_flags(style, OS::GTK_STATE_NORMAL)
      flags = ((color).nil?) ? flags & ~OS::GTK_RC_FG : flags | OS::GTK_RC_FG
      OS.gtk_rc_style_set_color_flags(style, OS::GTK_STATE_NORMAL, flags)
      flags = OS.gtk_rc_style_get_color_flags(style, OS::GTK_STATE_ACTIVE)
      flags = ((color).nil?) ? flags & ~OS::GTK_RC_FG : flags | OS::GTK_RC_FG
      OS.gtk_rc_style_set_color_flags(style, OS::GTK_STATE_ACTIVE, flags)
      flags = OS.gtk_rc_style_get_color_flags(style, OS::GTK_STATE_PRELIGHT)
      flags = ((color).nil?) ? flags & ~OS::GTK_RC_FG : flags | OS::GTK_RC_FG
      OS.gtk_rc_style_set_color_flags(style, OS::GTK_STATE_PRELIGHT, flags)
      OS.gtk_rc_style_set_text(style, OS::GTK_STATE_NORMAL, color)
      OS.gtk_rc_style_set_text(style, OS::GTK_STATE_ACTIVE, color)
      OS.gtk_rc_style_set_text(style, OS::GTK_STATE_PRELIGHT, color)
      flags = OS.gtk_rc_style_get_color_flags(style, OS::GTK_STATE_NORMAL)
      flags = ((color).nil?) ? flags & ~OS::GTK_RC_TEXT : flags | OS::GTK_RC_TEXT
      OS.gtk_rc_style_set_color_flags(style, OS::GTK_STATE_NORMAL, flags)
      flags = OS.gtk_rc_style_get_color_flags(style, OS::GTK_STATE_PRELIGHT)
      flags = ((color).nil?) ? flags & ~OS::GTK_RC_TEXT : flags | OS::GTK_RC_TEXT
      OS.gtk_rc_style_set_color_flags(style, OS::GTK_STATE_PRELIGHT, flags)
      flags = OS.gtk_rc_style_get_color_flags(style, OS::GTK_STATE_ACTIVE)
      flags = ((color).nil?) ? flags & ~OS::GTK_RC_TEXT : flags | OS::GTK_RC_TEXT
      OS.gtk_rc_style_set_color_flags(style, OS::GTK_STATE_ACTIVE, flags)
      modify_style(handle, style)
    end
    
    typesig { [Event, ::Java::Int] }
    def set_input_state(event, state)
      if (!((state & OS::GDK_MOD1_MASK)).equal?(0))
        event.attr_state_mask |= SWT::ALT
      end
      if (!((state & OS::GDK_SHIFT_MASK)).equal?(0))
        event.attr_state_mask |= SWT::SHIFT
      end
      if (!((state & OS::GDK_CONTROL_MASK)).equal?(0))
        event.attr_state_mask |= SWT::CONTROL
      end
      if (!((state & OS::GDK_BUTTON1_MASK)).equal?(0))
        event.attr_state_mask |= SWT::BUTTON1
      end
      if (!((state & OS::GDK_BUTTON2_MASK)).equal?(0))
        event.attr_state_mask |= SWT::BUTTON2
      end
      if (!((state & OS::GDK_BUTTON3_MASK)).equal?(0))
        event.attr_state_mask |= SWT::BUTTON3
      end
      return true
    end
    
    typesig { [Event, GdkEventKey] }
    def set_key_state(event, key_event)
      if (!(key_event.attr_string).equal?(0) && OS.g_utf8_strlen(key_event.attr_string, key_event.attr_length) > 1)
        return false
      end
      is_null = false
      event.attr_key_code = Display.translate_key(key_event.attr_keyval)
      case (key_event.attr_keyval)
      when OS::GDK_BackSpace
        event.attr_character = SWT::BS
      when OS::GDK_Linefeed
        event.attr_character = SWT::LF
      when OS::GDK_KP_Enter, OS::GDK_Return
        event.attr_character = SWT::CR
      when OS::GDK_KP_Delete, OS::GDK_Delete
        event.attr_character = SWT::DEL
      when OS::GDK_Escape
        event.attr_character = SWT::ESC
      when OS::GDK_Tab, OS::GDK_ISO_Left_Tab
        event.attr_character = SWT::TAB
      else
        if ((event.attr_key_code).equal?(0))
          keyval = Array.typed(::Java::Int).new(1) { 0 }
          effective_group = Array.typed(::Java::Int).new(1) { 0 }
          level = Array.typed(::Java::Int).new(1) { 0 }
          consumed_modifiers = Array.typed(::Java::Int).new(1) { 0 }
          if (OS.gdk_keymap_translate_keyboard_state(OS.gdk_keymap_get_default, key_event.attr_hardware_keycode, 0, key_event.attr_group, keyval, effective_group, level, consumed_modifiers))
            event.attr_key_code = OS.gdk_keyval_to_unicode(keyval[0])
          end
        end
        key = key_event.attr_keyval
        if (!((key_event.attr_state & OS::GDK_CONTROL_MASK)).equal?(0) && (0 <= key && key <= 0x7f))
          if (Character.new(?a.ord) <= key && key <= Character.new(?z.ord))
            key -= Character.new(?a.ord) - Character.new(?A.ord)
          end
          if (64 <= key && key <= 95)
            key -= 64
          end
          event.attr_character = RJava.cast_to_char(key)
          is_null = (key_event.attr_keyval).equal?(Character.new(?@.ord)) && (key).equal?(0)
        else
          event.attr_character = RJava.cast_to_char(OS.gdk_keyval_to_unicode(key))
        end
      end
      if ((event.attr_key_code).equal?(0) && (event.attr_character).equal?(0))
        if (!is_null)
          return false
        end
      end
      return set_input_state(event, key_event.attr_state)
    end
    
    typesig { [] }
    def set_orientation
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def shell_map_proc(handle, arg0, user_data)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def size_allocate_proc(handle, arg0, user_data)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def size_request_proc(handle, arg0, user_data)
      return 0
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
    
    typesig { [] }
    # long
    def top_handle
      return @handle
    end
    
    typesig { [::Java::Int] }
    # long
    # long
    def timer_proc(widget)
      return 0
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, Array.typed(::Java::Int), ::Java::Int] }
    # long
    # long
    # long
    # long
    def tree_selection_proc(model, path, iter, selection, length_)
      return 0
    end
    
    typesig { [::Java::Int] }
    def translate_traversal(event)
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def window_proc(handle, user_data)
      # 64
      case (RJava.cast_to_int(user_data))
      when ACTIVATE
        return gtk_activate(handle)
      when CHANGED
        return gtk_changed(handle)
      when CLICKED
        return gtk_clicked(handle)
      when DAY_SELECTED
        return gtk_day_selected(handle)
      when HIDE
        return gtk_hide(handle)
      when GRAB_FOCUS
        return gtk_grab_focus(handle)
      when MAP
        return gtk_map(handle)
      when MONTH_CHANGED
        return gtk_month_changed(handle)
      when OUTPUT
        return gtk_output(handle)
      when POPUP_MENU
        return gtk_popup_menu(handle)
      when PREEDIT_CHANGED
        return gtk_preedit_changed(handle)
      when REALIZE
        return gtk_realize(handle)
      when SELECT
        return gtk_select(handle)
      when SHOW
        return gtk_show(handle)
      when VALUE_CHANGED
        return gtk_value_changed(handle)
      when UNMAP
        return gtk_unmap(handle)
      when UNREALIZE
        return gtk_unrealize(handle)
      else
        return 0
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def window_proc(handle, arg0, user_data)
      # 64
      case (RJava.cast_to_int(user_data))
      when EXPOSE_EVENT_INVERSE
        gdk_event = GdkEventExpose.new
        OS.memmove(gdk_event, arg0, GdkEventExpose.attr_sizeof)
        # long
        paint_window_ = paint_window
        # long
        window = gdk_event.attr_window
        if (!(window).equal?(paint_window_))
          return 0
        end
        return !((@state & OBSCURED)).equal?(0) ? 1 : 0
      when BUTTON_PRESS_EVENT_INVERSE, BUTTON_RELEASE_EVENT_INVERSE, MOTION_NOTIFY_EVENT_INVERSE
        return 1
      when BUTTON_PRESS_EVENT
        return gtk_button_press_event(handle, arg0)
      when BUTTON_RELEASE_EVENT
        return gtk_button_release_event(handle, arg0)
      when COMMIT
        return gtk_commit(handle, arg0)
      when CONFIGURE_EVENT
        return gtk_configure_event(handle, arg0)
      when DELETE_EVENT
        return gtk_delete_event(handle, arg0)
      when ENTER_NOTIFY_EVENT
        return gtk_enter_notify_event(handle, arg0)
      when EVENT
        return gtk_event(handle, arg0)
      when EVENT_AFTER
        return gtk_event_after(handle, arg0)
      when EXPOSE_EVENT
        return gtk_expose_event(handle, arg0)
      when FOCUS
        return gtk_focus(handle, arg0)
      when FOCUS_IN_EVENT
        return gtk_focus_in_event(handle, arg0)
      when FOCUS_OUT_EVENT
        return gtk_focus_out_event(handle, arg0)
      when KEY_PRESS_EVENT
        return gtk_key_press_event(handle, arg0)
      when KEY_RELEASE_EVENT
        return gtk_key_release_event(handle, arg0)
      when INPUT
        return gtk_input(handle, arg0)
      when LEAVE_NOTIFY_EVENT
        return gtk_leave_notify_event(handle, arg0)
      when MAP_EVENT
        return gtk_map_event(handle, arg0)
      when MNEMONIC_ACTIVATE
        return gtk_mnemonic_activate(handle, arg0)
      when MOTION_NOTIFY_EVENT
        return gtk_motion_notify_event(handle, arg0)
      when MOVE_FOCUS
        return gtk_move_focus(handle, arg0)
      when POPULATE_POPUP
        return gtk_populate_popup(handle, arg0)
      when SCROLL_EVENT
        return gtk_scroll_event(handle, arg0)
      when SHOW_HELP
        return gtk_show_help(handle, arg0)
      when SIZE_ALLOCATE
        return gtk_size_allocate(handle, arg0)
      when STYLE_SET
        return gtk_style_set(handle, arg0)
      when TOGGLED
        return gtk_toggled(handle, arg0)
      when UNMAP_EVENT
        return gtk_unmap_event(handle, arg0)
      when VISIBILITY_NOTIFY_EVENT
        return gtk_visibility_notify_event(handle, arg0)
      when WINDOW_STATE_EVENT
        return gtk_window_state_event(handle, arg0)
      else
        return 0
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def window_proc(handle, arg0, arg1, user_data)
      # 64
      case (RJava.cast_to_int(user_data))
      when DELETE_RANGE
        return gtk_delete_range(handle, arg0, arg1)
      when DELETE_TEXT
        return gtk_delete_text(handle, arg0, arg1)
      when ROW_ACTIVATED
        return gtk_row_activated(handle, arg0, arg1)
      when SCROLL_CHILD
        return gtk_scroll_child(handle, arg0, arg1)
      when SWITCH_PAGE
        return gtk_switch_page(handle, arg0, arg1)
      when TEST_COLLAPSE_ROW
        return gtk_test_collapse_row(handle, arg0, arg1)
      when TEST_EXPAND_ROW
        return gtk_test_expand_row(handle, arg0, arg1)
      else
        return 0
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def window_proc(handle, arg0, arg1, arg2, user_data)
      # 64
      case (RJava.cast_to_int(user_data))
      when CHANGE_VALUE
        return gtk_change_value(handle, arg0, arg1, arg2)
      when EXPAND_COLLAPSE_CURSOR_ROW
        return gtk_expand_collapse_cursor_row(handle, arg0, arg1, arg2)
      when INSERT_TEXT
        return gtk_insert_text(handle, arg0, arg1, arg2)
      when TEXT_BUFFER_INSERT_TEXT
        return gtk_text_buffer_insert_text(handle, arg0, arg1, arg2)
      else
        return 0
      end
    end
    
    private
    alias_method :initialize__widget, :initialize
  end
  
end
