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
      include ::Org::Eclipse::Swt::Internal::Win32
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
      
      # A layout was requested on this widget
      const_set_lazy(:LAYOUT_NEEDED) { 1 << 5 }
      const_attr_reader  :LAYOUT_NEEDED
      
      # The preferred size of a child has changed
      const_set_lazy(:LAYOUT_CHANGED) { 1 << 6 }
      const_attr_reader  :LAYOUT_CHANGED
      
      # A layout was requested in this widget hierarchy
      const_set_lazy(:LAYOUT_CHILD) { 1 << 7 }
      const_attr_reader  :LAYOUT_CHILD
      
      # Background flags
      const_set_lazy(:THEME_BACKGROUND) { 1 << 8 }
      const_attr_reader  :THEME_BACKGROUND
      
      const_set_lazy(:DRAW_BACKGROUND) { 1 << 9 }
      const_attr_reader  :DRAW_BACKGROUND
      
      const_set_lazy(:PARENT_BACKGROUND) { 1 << 10 }
      const_attr_reader  :PARENT_BACKGROUND
      
      # Dispose and release flags
      const_set_lazy(:RELEASED) { 1 << 11 }
      const_attr_reader  :RELEASED
      
      const_set_lazy(:DISPOSE_SENT) { 1 << 12 }
      const_attr_reader  :DISPOSE_SENT
      
      # More global widget state flags
      const_set_lazy(:TRACK_MOUSE) { 1 << 13 }
      const_attr_reader  :TRACK_MOUSE
      
      const_set_lazy(:FOREIGN_HANDLE) { 1 << 14 }
      const_attr_reader  :FOREIGN_HANDLE
      
      const_set_lazy(:DRAG_DETECT) { 1 << 15 }
      const_attr_reader  :DRAG_DETECT
      
      # Move and resize state flags
      const_set_lazy(:MOVE_OCCURRED) { 1 << 16 }
      const_attr_reader  :MOVE_OCCURRED
      
      const_set_lazy(:MOVE_DEFERRED) { 1 << 17 }
      const_attr_reader  :MOVE_DEFERRED
      
      const_set_lazy(:RESIZE_OCCURRED) { 1 << 18 }
      const_attr_reader  :RESIZE_OCCURRED
      
      const_set_lazy(:RESIZE_DEFERRED) { 1 << 19 }
      const_attr_reader  :RESIZE_DEFERRED
      
      # Ignore WM_CHANGEUISTATE
      const_set_lazy(:IGNORE_WM_CHANGEUISTATE) { 1 << 20 }
      const_attr_reader  :IGNORE_WM_CHANGEUISTATE
      
      # Default size for widgets
      const_set_lazy(:DEFAULT_WIDTH) { 64 }
      const_attr_reader  :DEFAULT_WIDTH
      
      const_set_lazy(:DEFAULT_HEIGHT) { 64 }
      const_attr_reader  :DEFAULT_HEIGHT
      
      # Check and initialize the Common Controls DLL
      const_set_lazy(:MAJOR) { 5 }
      const_attr_reader  :MAJOR
      
      const_set_lazy(:MINOR) { 80 }
      const_attr_reader  :MINOR
      
      when_class_loaded do
        if (!OS::IsWinCE)
          if (OS::COMCTL32_VERSION < OS._version(MAJOR, MINOR))
            System.out.println("***WARNING: SWT requires comctl32.dll version " + RJava.cast_to_string(MAJOR) + "." + RJava.cast_to_string(MINOR) + " or greater") # $NON-NLS-1$ //$NON-NLS-2$ //$NON-NLS-3$
            System.out.println("***WARNING: Detected: " + RJava.cast_to_string(OS::COMCTL32_MAJOR) + "." + RJava.cast_to_string(OS::COMCTL32_MINOR)) # $NON-NLS-1$ //$NON-NLS-2$
          end
        end
        OS._init_common_controls
      end
    }
    
    typesig { [] }
    # Prevents uninitialized instances from being created outside the package.
    def initialize
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def call_window_proc(hwnd, msg, w_param, l_param)
      return 0
    end
    
    class_module.module_eval {
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # Returns a style with exactly one style bit set out of
      # the specified set of exclusive style bits. All other
      # possible bits are cleared when the first matching bit
      # is found. Bits that are not part of the possible set
      # are untouched.
      # 
      # @param style the original style bits
      # @param int0 the 0th possible style bit
      # @param int1 the 1st possible style bit
      # @param int2 the 2nd possible style bit
      # @param int3 the 3rd possible style bit
      # @param int4 the 4th possible style bit
      # @param int5 the 5th possible style bit
      # 
      # @return the new style bits
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
    
    typesig { [] }
    def check_opened
      # Do nothing
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
      parent.check_opened
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
        # Bug in IBM JVM 1.6.  For some reason, under
        # conditions that are yet to be full understood,
        # Thread.currentThread() is either returning null
        # or a different instance from the one that was
        # saved when the Display was created.  This is
        # possibly a JIT problem because modifying this
        # method to print logging information when the
        # error happens seems to fix the problem.  The
        # fix is to use operating system calls to verify
        # that the current thread is not the Display thread.
        # 
        # NOTE: Despite the fact that Thread.currentThread()
        # is used in other places, the failure has not been
        # observed in all places where it is called.
        if (!(display.attr_thread_id).equal?(OS._get_current_thread_id))
          error(SWT::ERROR_THREAD_INVALID_ACCESS)
        end
      end
      if (!((@state & DISPOSED)).equal?(0))
        error(SWT::ERROR_WIDGET_DISPOSED)
      end
    end
    
    typesig { [] }
    # Destroys the widget in the operating system and releases
    # the widget's handle.  If the widget does not have a handle,
    # this method may hide the widget, mark the widget as destroyed
    # or do nothing, depending on the widget.
    # <p>
    # When a widget is destroyed in the operating system, its
    # descendants are also destroyed by the operating system.
    # This means that it is only necessary to call <code>destroyWidget</code>
    # on the root of the widget tree.
    # </p><p>
    # This method is called after <code>releaseWidget()</code>.
    # </p><p>
    # See also <code>releaseChild()</code>, <code>releaseWidget()</code>
    # and <code>releaseHandle()</code>.
    # </p>
    # 
    # @see #dispose
    def destroy_widget
      release_handle
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def _defer_window_pos(h_win_pos_info, h_wnd, h_wnd_insert_after, x, y, cx, cy, u_flags)
      if (OS::IsWinCE)
        # Feature in Windows.  On Windows CE, DeferWindowPos always causes
        # a WM_SIZE message, even when the new size is the same as the old
        # size.  The fix is to detect that the size has not changed and set
        # SWP_NOSIZE.
        if (((u_flags & OS::SWP_NOSIZE)).equal?(0))
          lp_rect = RECT.new
          OS._get_window_rect(h_wnd, lp_rect)
          if ((cy).equal?(lp_rect.attr_bottom - lp_rect.attr_top) && (cx).equal?(lp_rect.attr_right - lp_rect.attr_left))
            # Feature in Windows.  On Windows CE, DeferWindowPos when called
            # with SWP_DRAWFRAME always causes a WM_SIZE message, even
            # when SWP_NOSIZE is set and when the new size is the same as the
            # old size.  The fix is to clear SWP_DRAWFRAME when the size is
            # the same.
            u_flags &= ~OS::SWP_DRAWFRAME
            u_flags |= OS::SWP_NOSIZE
          end
        end
      end
      return OS._defer_window_pos(h_win_pos_info, h_wnd, h_wnd_insert_after, x, y, cx, cy, u_flags)
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, Array.typed(::Java::Boolean), Array.typed(::Java::Boolean)] }
    # long
    def drag_detect(hwnd, x, y, filter, detect, consume)
      if (!(consume).nil?)
        consume[0] = false
      end
      if (!(detect).nil?)
        detect[0] = true
      end
      pt = POINT.new
      pt.attr_x = x
      pt.attr_y = y
      OS._client_to_screen(hwnd, pt)
      return OS._drag_detect(hwnd, pt)
    end
    
    typesig { [::Java::Int] }
    # Does whatever widget specific cleanup is required, and then
    # uses the code in <code>SWTError.error</code> to handle the error.
    # 
    # @param code the descriptive error code
    # 
    # @see SWT#error(int)
    def error(code)
      SWT.error(code)
    end
    
    typesig { [::Java::Int] }
    def filters(event_type)
      return @display.filters(event_type)
    end
    
    typesig { [::Java::Int] }
    # long
    def find_item(id)
      return nil
    end
    
    typesig { [String] }
    def fix_mnemonic(string)
      return fix_mnemonic(string, false)
    end
    
    typesig { [String, ::Java::Boolean] }
    def fix_mnemonic(string, spaces)
      buffer = CharArray.new(string.length + 1)
      string.get_chars(0, string.length, buffer, 0)
      i = 0
      j = 0
      while (i < buffer.attr_length)
        if ((buffer[i]).equal?(Character.new(?&.ord)))
          if (i + 1 < buffer.attr_length && (buffer[i + 1]).equal?(Character.new(?&.ord)))
            if (spaces)
              buffer[j] = Character.new(?\s.ord)
            end
            j += 1
            i += 1
          end
          i += 1
        else
          buffer[((j += 1) - 1)] = buffer[((i += 1) - 1)]
        end
      end
      while (j < buffer.attr_length)
        buffer[((j += 1) - 1)] = 0
      end
      return buffer
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
    def get_menu
      return nil
    end
    
    typesig { [] }
    # Returns the name of the widget. This is the name of
    # the class without the package name.
    # 
    # @return the name of the widget
    def get_name
      string = get_class.get_name
      index = string.last_index_of(Character.new(?..ord))
      if ((index).equal?(-1))
        return string
      end
      return string.substring(index + 1, string.length)
    end
    
    typesig { [] }
    # Returns a short printable representation for the contents
    # of a widget. For example, a button may answer the label
    # text. This is used by <code>toString</code> to provide a
    # more meaningful description of the widget.
    # 
    # @return the contents string for the widget
    # 
    # @see #toString
    def get_name_text
      return "" # $NON-NLS-1$
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
    # Returns <code>true</code> when subclassing is
    # allowed and <code>false</code> otherwise
    # 
    # @return <code>true</code> when subclassing is allowed and <code>false</code> otherwise
    def is_valid_subclass
      return Display.is_valid_class(get_class)
    end
    
    typesig { [] }
    # Returns <code>true</code> when the current thread is
    # the thread that created the widget and <code>false</code>
    # otherwise.
    # 
    # @return <code>true</code> when the current thread is the thread that created the widget and <code>false</code> otherwise
    def is_valid_thread
      return get_display.is_valid_thread
    end
    
    typesig { [::Java::Int, Event] }
    # long
    def map_event(hwnd, event)
    end
    
    typesig { [SwtGCData] }
    def new__gc(data)
      return nil
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
      send_event___org_eclipse_swt_widgets_widget_1(event_type, event)
    end
    
    typesig { [::Java::Int] }
    def post_event(event_type)
      send_event___org_eclipse_swt_widgets_widget_3(event_type, nil, false)
    end
    
    typesig { [::Java::Int, Event] }
    def post_event(event_type, event)
      send_event___org_eclipse_swt_widgets_widget_5(event_type, event, false)
    end
    
    typesig { [::Java::Boolean] }
    # Releases the widget hierarchy and optionally destroys
    # the receiver.
    # <p>
    # Typically, a widget with children will broadcast this
    # message to all children so that they too can release their
    # resources.  The <code>releaseHandle</code> method is used
    # as part of this broadcast to zero the handle fields of the
    # children without calling <code>destroyWidget</code>.  In
    # this scenario, the children are actually destroyed later,
    # when the operating system destroys the widget tree.
    # </p>
    # 
    # @param destroy indicates that the receiver should be destroyed
    # 
    # @see #dispose
    # @see #releaseHandle
    # @see #releaseParent
    # @see #releaseWidget
    def release(destroy)
      if (((@state & DISPOSE_SENT)).equal?(0))
        @state |= DISPOSE_SENT
        send_event___org_eclipse_swt_widgets_widget_7(SWT::Dispose)
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
    # Releases the widget's handle by zero'ing it out.
    # Does not destroy or release any operating system
    # resources.
    # <p>
    # This method is called after <code>releaseWidget</code>
    # or from <code>destroyWidget</code> when a widget is being
    # destroyed to ensure that the widget is marked as destroyed
    # in case the act of destroying the widget in the operating
    # system causes application code to run in callback that
    # could access the widget.
    # </p>
    # 
    # @see #dispose
    # @see #releaseChildren
    # @see #releaseParent
    # @see #releaseWidget
    def release_handle
      @state |= DISPOSED
      @display = nil
    end
    
    typesig { [] }
    # Releases the receiver, a child in a widget hierarchy,
    # from its parent.
    # <p>
    # When a widget is destroyed, it may be necessary to remove
    # it from an internal data structure of the parent. When
    # a widget has no handle, it may also be necessary for the
    # parent to hide the widget or otherwise indicate that the
    # widget has been disposed. For example, disposing a menu
    # bar requires that the menu bar first be released from the
    # shell when the menu bar is active.
    # </p>
    # 
    # @see #dispose
    # @see #releaseChildren
    # @see #releaseWidget
    # @see #releaseHandle
    def release_parent
    end
    
    typesig { [] }
    # Releases any internal resources back to the operating
    # system and clears all fields except the widget handle.
    # <p>
    # When a widget is destroyed, resources that were acquired
    # on behalf of the programmer need to be returned to the
    # operating system.  For example, if the widget made a
    # copy of an icon, supplied by the programmer, this copy
    # would be freed in <code>releaseWidget</code>.  Also,
    # to assist the garbage collector and minimize the amount
    # of memory that is not reclaimed when the programmer keeps
    # a reference to a disposed widget, all fields except the
    # handle are zero'd.  The handle is needed by <code>destroyWidget</code>.
    # </p>
    # 
    # @see #dispose
    # @see #releaseChildren
    # @see #releaseHandle
    # @see #releaseParent
    def release_widget
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
    def remove_listener(event_type, listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@event_table).nil?)
        return
      end
      @event_table.unhook(event_type, listener)
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
    def remove_listener(event_type, listener)
      check_widget
      if ((listener).nil?)
        error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@event_table).nil?)
        return
      end
      @event_table.unhook(event_type, listener)
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
    def send_drag_event(button, x, y)
      event = Event.new
      event.attr_button = button
      event.attr_x = x
      event.attr_y = y
      set_input_state(event, SWT::DragDetect)
      post_event___org_eclipse_swt_widgets_widget_9(SWT::DragDetect, event)
      if (is_disposed)
        return false
      end
      return event.attr_doit
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def send_drag_event(button, state_mask, x, y)
      event = Event.new
      event.attr_button = button
      event.attr_x = x
      event.attr_y = y
      event.attr_state_mask = state_mask
      post_event___org_eclipse_swt_widgets_widget_11(SWT::DragDetect, event)
      if (is_disposed)
        return false
      end
      return event.attr_doit
    end
    
    typesig { [Event] }
    def send_event(event)
      display = event.attr_display
      if (!display.filter_event(event))
        if (!(@event_table).nil?)
          @event_table.send_event___org_eclipse_swt_widgets_widget_13(event)
        end
      end
    end
    
    typesig { [::Java::Int] }
    def send_event(event_type)
      send_event___org_eclipse_swt_widgets_widget_15(event_type, nil, true)
    end
    
    typesig { [::Java::Int, Event] }
    def send_event(event_type, event)
      send_event___org_eclipse_swt_widgets_widget_17(event_type, event, true)
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
        send_event___org_eclipse_swt_widgets_widget_19(event)
      else
        @display.post_event___org_eclipse_swt_widgets_widget_21(event)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def send_key_event(type, msg, w_param, l_param)
      event = Event.new
      if (!set_key_state(event, type, w_param, l_param))
        return true
      end
      return send_key_event(type, msg, w_param, l_param, event)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, Event] }
    # long
    # long
    def send_key_event(type, msg, w_param, l_param, event)
      send_event___org_eclipse_swt_widgets_widget_23(type, event)
      if (is_disposed)
        return false
      end
      return event.attr_doit
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def send_mouse_event(type, button, hwnd, msg, w_param, l_param)
      return send_mouse_event___org_eclipse_swt_widgets_widget_25(type, button, @display.get_click_count(type, button, hwnd, l_param), 0, false, hwnd, msg, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Boolean, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def send_mouse_event(type, button, count, detail, send, hwnd, msg, w_param, l_param)
      if (!hooks(type) && !filters(type))
        return true
      end
      event = Event.new
      event.attr_button = button
      event.attr_detail = detail
      event.attr_count = count
      event.attr_x = OS._get_x_lparam(l_param)
      event.attr_y = OS._get_y_lparam(l_param)
      set_input_state(event, type)
      map_event(hwnd, event)
      if (send)
        send_event___org_eclipse_swt_widgets_widget_27(type, event)
        if (is_disposed)
          return false
        end
      else
        post_event___org_eclipse_swt_widgets_widget_29(type, event)
      end
      return event.attr_doit
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
    
    typesig { [::Java::Int] }
    def send_focus_event(type)
      send_event___org_eclipse_swt_widgets_widget_31(type)
      # widget could be disposed at this point
      return true
    end
    
    typesig { [Event, ::Java::Int] }
    def set_input_state(event, type)
      if (OS._get_key_state(OS::VK_MENU) < 0)
        event.attr_state_mask |= SWT::ALT
      end
      if (OS._get_key_state(OS::VK_SHIFT) < 0)
        event.attr_state_mask |= SWT::SHIFT
      end
      if (OS._get_key_state(OS::VK_CONTROL) < 0)
        event.attr_state_mask |= SWT::CONTROL
      end
      if (OS._get_key_state(OS::VK_LBUTTON) < 0)
        event.attr_state_mask |= SWT::BUTTON1
      end
      if (OS._get_key_state(OS::VK_MBUTTON) < 0)
        event.attr_state_mask |= SWT::BUTTON2
      end
      if (OS._get_key_state(OS::VK_RBUTTON) < 0)
        event.attr_state_mask |= SWT::BUTTON3
      end
      # Bug in Windows.  On some machines that do not have XBUTTONs,
      # the MK_XBUTTON1 and OS.MK_XBUTTON2 bits are sometimes set,
      # causing mouse capture to become stuck.  The fix is to test
      # for the extra buttons only when they exist.
      if (@display.attr_x_mouse)
        if (OS._get_key_state(OS::VK_XBUTTON1) < 0)
          event.attr_state_mask |= SWT::BUTTON4
        end
        if (OS._get_key_state(OS::VK_XBUTTON2) < 0)
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
      end
      return true
    end
    
    typesig { [Event, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def set_key_state(event, type, w_param, l_param)
      # Feature in Windows.  When the user presses Ctrl+Backspace
      # or Ctrl+Enter, Windows sends a WM_CHAR with Delete (0x7F)
      # and '\n' instead of '\b' and '\r'.  This is the correct
      # platform behavior but is not portable.  The fix is to detect
      # these cases and convert the character.
      case (@display.attr_last_ascii)
      when SWT::DEL
        if ((@display.attr_last_key).equal?(SWT::BS))
          @display.attr_last_ascii = SWT::BS
        end
      when SWT::LF
        if ((@display.attr_last_key).equal?(SWT::CR))
          @display.attr_last_ascii = SWT::CR
        end
      end
      # Feature in Windows.  When the user presses either the Enter
      # key or the numeric keypad Enter key, Windows sends a WM_KEYDOWN
      # with wParam=VK_RETURN in both cases.  In order to distinguish
      # between the keys, the extended key bit is tested. If the bit
      # is set, assume that the numeric keypad Enter was pressed.
      if ((@display.attr_last_key).equal?(SWT::CR) && (@display.attr_last_ascii).equal?(SWT::CR))
        if (!((l_param & 0x1000000)).equal?(0))
          @display.attr_last_key = SWT::KEYPAD_CR
        end
      end
      if (@display.attr_last_virtual)
        # Feature in Windows.  The virtual key VK_DELETE is not
        # treated as both a virtual key and an ASCII key by Windows.
        # Therefore, we will not receive a WM_CHAR for this key.
        # The fix is to treat VK_DELETE as a special case and map
        # the ASCII value explicitly (Delete is 0x7F).
        if ((@display.attr_last_key).equal?(OS::VK_DELETE))
          @display.attr_last_ascii = 0x7f
        end
        # Feature in Windows.  When the user presses Ctrl+Pause, the
        # VK_CANCEL key is generated and a WM_CHAR is sent with 0x03,
        # possibly to allow an application to look for Ctrl+C and the
        # the Break key at the same time.  This is unexpected and
        # unwanted.  The fix is to detect the case and set the character
        # to zero.
        if ((@display.attr_last_key).equal?(OS::VK_CANCEL))
          @display.attr_last_ascii = 0x0
        end
        event.attr_key_code = Display.translate_key(@display.attr_last_key)
      else
        event.attr_key_code = @display.attr_last_key
      end
      if (!(@display.attr_last_ascii).equal?(0) || @display.attr_last_null)
        event.attr_character = Display.mbcs_to_wcs(RJava.cast_to_char(@display.attr_last_ascii))
      end
      if ((event.attr_key_code).equal?(0) && (event.attr_character).equal?(0))
        if (!@display.attr_last_null)
          return false
        end
      end
      return set_input_state(event, type)
    end
    
    typesig { [] }
    def set_tab_group_focus
      return set_tab_item_focus
    end
    
    typesig { [] }
    def set_tab_item_focus
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _set_window_pos(h_wnd, h_wnd_insert_after, x, y, cx, cy, u_flags)
      if (OS::IsWinCE)
        # Feature in Windows.  On Windows CE, SetWindowPos() always causes
        # a WM_SIZE message, even when the new size is the same as the old
        # size.  The fix is to detect that the size has not changed and set
        # SWP_NOSIZE.
        if (((u_flags & OS::SWP_NOSIZE)).equal?(0))
          lp_rect = RECT.new
          OS._get_window_rect(h_wnd, lp_rect)
          if ((cy).equal?(lp_rect.attr_bottom - lp_rect.attr_top) && (cx).equal?(lp_rect.attr_right - lp_rect.attr_left))
            # Feature in Windows.  On Windows CE, SetWindowPos() when called
            # with SWP_DRAWFRAME always causes a WM_SIZE message, even
            # when SWP_NOSIZE is set and when the new size is the same as the
            # old size.  The fix is to clear SWP_DRAWFRAME when the size is
            # the same.
            u_flags &= ~OS::SWP_DRAWFRAME
            u_flags |= OS::SWP_NOSIZE
          end
        end
      end
      return OS._set_window_pos(h_wnd, h_wnd_insert_after, x, y, cx, cy, u_flags)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def show_menu(x, y)
      event = Event.new
      event.attr_x = x
      event.attr_y = y
      send_event___org_eclipse_swt_widgets_widget_33(SWT::MenuDetect, event)
      # widget could be disposed at this point
      if (is_disposed)
        return false
      end
      if (!event.attr_doit)
        return true
      end
      menu = get_menu
      if (!(menu).nil? && !menu.is_disposed)
        if (!(x).equal?(event.attr_x) || !(y).equal?(event.attr_y))
          menu.set_location(event.attr_x, event.attr_y)
        end
        menu.set_visible(true)
        return true
      end
      return false
    end
    
    typesig { [] }
    # Returns a string containing a concise, human-readable
    # description of the receiver.
    # 
    # @return a string representation of the receiver
    def to_s
      string = "*Disposed*" # $NON-NLS-1$
      if (!is_disposed)
        string = "*Wrong Thread*" # $NON-NLS-1$
        if (is_valid_thread)
          string = RJava.cast_to_string(get_name_text)
        end
      end
      return RJava.cast_to_string(get_name) + " {" + string + "}" # $NON-NLS-1$ //$NON-NLS-2$
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_capture_changed(hwnd, w_param, l_param)
      @display.attr_capture_changed = true
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_char(hwnd, w_param, l_param)
      # Do not report a lead byte as a key pressed.
      if (!OS::IsUnicode && OS::IsDBLocale)
        lead = (w_param & 0xff)
        if (OS._is_dbcslead_byte(lead))
          return nil
        end
      end
      # 64
      @display.attr_last_ascii = RJava.cast_to_int(w_param)
      @display.attr_last_null = (w_param).equal?(0)
      if (!send_key_event(SWT::KeyDown, OS::WM_CHAR, w_param, l_param))
        return LRESULT::ONE
      end
      # widget could be disposed at this point
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_context_menu(hwnd, w_param, l_param)
      if (!(w_param).equal?(hwnd))
        return nil
      end
      # Feature in Windows.  SHRecognizeGesture() sends an undocumented
      # WM_CONTEXTMENU notification when the flag SHRG_NOTIFY_PARENT is
      # not set.  This causes the context menu to be displayed twice,
      # once by the caller of SHRecognizeGesture() and once from this
      # method.  The fix is to ignore WM_CONTEXTMENU notifications on
      # all WinCE platforms.
      # 
      # NOTE: This only happens on WM2003.  Previous WinCE versions did
      # not support WM_CONTEXTMENU.
      if (OS::IsWinCE)
        return nil
      end
      # Feature in Windows.  When the user presses  WM_NCRBUTTONUP,
      # a WM_CONTEXTMENU message is generated.  This happens when
      # the user releases the mouse over a scroll bar.  Normally,
      # window displays the default scrolling menu but applications
      # can process WM_CONTEXTMENU to display a different menu.
      # Typically, an application does not want to supply a special
      # scroll menu.  The fix is to look for a WM_CONTEXTMENU that
      # originated from a mouse event and display the menu when the
      # mouse was released in the client area.
      x = 0
      y = 0
      if (!(l_param).equal?(-1))
        pt = POINT.new
        OS._pointstopoint(pt, l_param)
        x = pt.attr_x
        y = pt.attr_y
        OS._screen_to_client(hwnd, pt)
        rect = RECT.new
        OS._get_client_rect(hwnd, rect)
        if (!OS._pt_in_rect(rect, pt))
          return nil
        end
      else
        pos = OS._get_message_pos
        x = OS._get_x_lparam(pos)
        y = OS._get_y_lparam(pos)
      end
      # Show the menu
      return show_menu(x, y) ? LRESULT::ZERO : nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_imechar(hwnd, w_param, l_param)
      display = @display
      display.attr_last_key = 0
      # 64
      display.attr_last_ascii = RJava.cast_to_int(w_param)
      display.attr_last_virtual = display.attr_last_null = display.attr_last_dead = false
      if (!send_key_event(SWT::KeyDown, OS::WM_IME_CHAR, w_param, l_param))
        return LRESULT::ONE
      end
      send_key_event(SWT::KeyUp, OS::WM_IME_CHAR, w_param, l_param)
      # widget could be disposed at this point
      display.attr_last_key = display.attr_last_ascii = 0
      return LRESULT::ONE
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_key_down(hwnd, w_param, l_param)
      # Ignore repeating modifier keys by testing key down state
      # 64
      case (RJava.cast_to_int(w_param))
      when OS::VK_SHIFT, OS::VK_MENU, OS::VK_CONTROL, OS::VK_CAPITAL, OS::VK_NUMLOCK, OS::VK_SCROLL
        if (!((l_param & 0x40000000)).equal?(0))
          return nil
        end
      end
      # Clear last key and last ascii because a new key has been typed
      @display.attr_last_ascii = @display.attr_last_key = 0
      @display.attr_last_virtual = @display.attr_last_null = @display.attr_last_dead = false
      # Do not report a lead byte as a key pressed.
      if (!OS::IsUnicode && OS::IsDBLocale)
        lead = (w_param & 0xff)
        if (OS._is_dbcslead_byte(lead))
          return nil
        end
      end
      # Map the virtual key
      # 
      # Bug in WinCE.  MapVirtualKey() returns incorrect values.
      # The fix is to rely on a key mappings table to determine
      # whether the key event must be sent now or if a WM_CHAR
      # event will follow.  The key mappings table maps virtual
      # keys to SWT key codes and does not contain mappings for
      # Windows virtual keys like VK_A.  Virtual keys that are
      # both virtual and ASCII are a special case.
      map_key = 0
      if (OS::IsWinCE)
        # 64
        case (RJava.cast_to_int(w_param))
        when OS::VK_BACK
          map_key = SWT::BS
        when OS::VK_RETURN
          map_key = SWT::CR
        when OS::VK_DELETE
          map_key = SWT::DEL
        when OS::VK_ESCAPE
          map_key = SWT::ESC
        when OS::VK_TAB
          map_key = SWT::TAB
        end
      else
        # Feature in Windows.  For numbers in Marathi and Bengali,
        # MapVirtualKey() returns the localized number instead of
        # the ASCII equivalent.  For example, MapVirtualKey()
        # maps VK_1 on the Marathi keyboard to \u2407, which is
        # a valid Unicode Marathi '1' character, but not ASCII.
        # The fix is to test for VK_0 to VK_9 and map these
        # explicitly.
        # 
        # NOTE: VK_0 to VK_9 are the same as ASCII.
        if (Character.new(?0.ord) <= w_param && w_param <= Character.new(?9.ord))
          # 64
          map_key = RJava.cast_to_int(w_param)
        else
          # 64
          map_key = OS._map_virtual_key(RJava.cast_to_int(w_param), 2)
        end
      end
      # Bug in Windows 95 and NT.  When the user types an accent key such
      # as ^ to get an accented character on a German keyboard, the accent
      # key should be ignored and the next key that the user types is the
      # accented key.  The fix is to detect the accent key stroke (called
      # a dead key) by testing the high bit of the value returned by
      # MapVirtualKey().  A further problem is that the high bit on
      # Windows NT is bit 32 while the high bit on Windows 95 is bit 16.
      # They should both be bit 32.
      # 
      # When the user types an accent key that does not correspond to a
      # virtual key, MapVirtualKey() won't set the high bit to indicate
      # a dead key.  This happens when an accent key, such as '^' is the
      # result of a modifier such as Shift key and MapVirtualKey() always
      # returns the unshifted key.  The fix is to peek for a WM_DEADCHAR
      # and avoid issuing the event.
      if (OS::IsWinNT)
        if (!((map_key & -0x80000000)).equal?(0))
          return nil
        end
      else
        if (!((map_key & 0x8000)).equal?(0))
          return nil
        end
      end
      msg = MSG.new
      flags = OS::PM_NOREMOVE | OS::PM_NOYIELD | OS::PM_QS_INPUT | OS::PM_QS_POSTMESSAGE
      if (OS._peek_message(msg, hwnd, OS::WM_DEADCHAR, OS::WM_DEADCHAR, flags))
        @display.attr_last_dead = true
        @display.attr_last_virtual = (map_key).equal?(0)
        # 64
        @display.attr_last_key = @display.attr_last_virtual ? RJava.cast_to_int(w_param) : map_key
        return nil
      end
      # Bug in Windows.  Somehow, the widget is becoming disposed after
      # calling PeekMessage().  In rare circumstances, it seems that
      # PeekMessage() can allow SWT listeners to run that might contain
      # application code that disposes the widget.  It is not exactly
      # clear how this can happen.  PeekMessage() is only looking for
      # WM_DEADCHAR.  It is not dispatching any message that it finds
      # or removing any message from the queue.  Cross-thread messages
      # are disabled.  The fix is to check for a disposed widget and
      # return without calling the window proc.
      if (is_disposed)
        return LRESULT::ONE
      end
      # If we are going to get a WM_CHAR, ensure that last key has
      # the correct character value for the key down and key up
      # events.  It is not sufficient to ignore the WM_KEYDOWN
      # (when we know we are going to get a WM_CHAR) and compute
      # the key in WM_CHAR because there is not enough information
      # by the time we get the WM_CHAR.  For example, when the user
      # types Ctrl+Shift+6 on a US keyboard, we get a WM_CHAR with
      # wParam=30.  When the user types Ctrl+Shift+6 on a German
      # keyboard, we also get a WM_CHAR with wParam=30.  On the US
      # keyboard Shift+6 is ^, on the German keyboard Shift+6 is &.
      # There is no way to map wParam=30 in WM_CHAR to the correct
      # value.  Also, on international keyboards, the control key
      # may be down when the user has not entered a control character.
      # 
      # NOTE: On Windows 98, keypad keys are virtual despite the
      # fact that a WM_CHAR is issued.  On Windows 2000 and XP,
      # they are not virtual.  Therefore it is necessary to force
      # numeric keypad keys to be virtual.
      # 
      # 64
      @display.attr_last_virtual = (map_key).equal?(0) || !(@display.numpad_key(RJava.cast_to_int(w_param))).equal?(0)
      if (@display.attr_last_virtual)
        # 64
        @display.attr_last_key = RJava.cast_to_int(w_param)
        # Feature in Windows.  The virtual key VK_DELETE is not
        # treated as both a virtual key and an ASCII key by Windows.
        # Therefore, we will not receive a WM_CHAR for this key.
        # The fix is to treat VK_DELETE as a special case and map
        # the ASCII value explicitly (Delete is 0x7F).
        if ((@display.attr_last_key).equal?(OS::VK_DELETE))
          @display.attr_last_ascii = 0x7f
        end
        # It is possible to get a WM_CHAR for a virtual key when
        # Num Lock is on.  If the user types Home while Num Lock
        # is down, a WM_CHAR is issued with WPARM=55 (for the
        # character 7).  If we are going to get a WM_CHAR we need
        # to ensure that the last key has the correct value.  Note
        # that Ctrl+Home does not issue a WM_CHAR when Num Lock is
        # down.
        if (OS::VK_NUMPAD0 <= @display.attr_last_key && @display.attr_last_key <= OS::VK_DIVIDE)
          # Feature in Windows.  Calling to ToAscii() or ToUnicode(), clears
          # the accented state such that the next WM_CHAR loses the accent.
          # This makes is critical that the accent key is detected.  Also,
          # these functions clear the character that is entered using the
          # special Windows keypad sequence when NumLock is down (ie. typing
          # ALT+0231 should gives 'c' with a cedilla when NumLock is down).
          if (!(@display.ascii_key(@display.attr_last_key)).equal?(0))
            return nil
          end
          @display.attr_last_ascii = @display.numpad_key(@display.attr_last_key)
        end
      else
        # Convert LastKey to lower case because Windows non-virtual
        # keys that are also ASCII keys, such as like VK_A, are have
        # upper case values in WM_KEYDOWN despite the fact that the
        # Shift was not pressed.
        # 
        # 64
        @display.attr_last_key = RJava.cast_to_int(OS._char_lower(RJava.cast_to_short(map_key)))
        # Feature in Windows. The virtual key VK_CANCEL is treated
        # as both a virtual key and ASCII key by Windows.  This
        # means that a WM_CHAR with WPARAM=3 will be issued for
        # this key.  In order to distinguish between this key and
        # Ctrl+C, mark the key as virtual.
        if ((w_param).equal?(OS::VK_CANCEL))
          @display.attr_last_virtual = true
        end
        # Some key combinations map to Windows ASCII keys depending
        # on the keyboard.  For example, Ctrl+Alt+Q maps to @ on a
        # German keyboard.  If the current key combination is special,
        # the correct character is placed in wParam for processing in
        # WM_CHAR.  If this is the case, issue the key down event from
        # inside WM_CHAR.
        # 
        # 64
        ascii_key_ = @display.ascii_key(RJava.cast_to_int(w_param))
        if (!(ascii_key_).equal?(0))
          # When the user types Ctrl+Space, ToAscii () maps this to
          # Space.  Normally, ToAscii () maps a key to a different
          # key if both a WM_KEYDOWN and a WM_CHAR will be issued.
          # To avoid the extra SWT.KeyDown, look for a space and
          # issue the event from WM_CHAR.
          if ((ascii_key_).equal?(Character.new(?\s.ord)))
            return nil
          end
          # 64
          if (!(ascii_key_).equal?(RJava.cast_to_int(w_param)))
            return nil
          end
          # Feature in Windows. The virtual key VK_CANCEL is treated
          # as both a virtual key and ASCII key by Windows.  This
          # means that a WM_CHAR with WPARAM=3 will be issued for
          # this key. To avoid the extra SWT.KeyDown, look for
          # VK_CANCEL and issue the event from WM_CHAR.
          if ((w_param).equal?(OS::VK_CANCEL))
            return nil
          end
        end
        # If the control key is not down at this point, then
        # the key that was pressed was an accent key or a regular
        # key such as 'A' or Shift+A.  In that case, issue the
        # key event from WM_CHAR.
        if (OS._get_key_state(OS::VK_CONTROL) >= 0)
          return nil
        end
        # Get the shifted state or convert to lower case if necessary.
        # If the user types Ctrl+A, LastAscii should be 'a', not 'A'.
        # If the user types Ctrl+Shift+A, LastAscii should be 'A'.
        # If the user types Ctrl+Shift+6, the value of LastAscii will
        # depend on the international keyboard.
        if (OS._get_key_state(OS::VK_SHIFT) < 0)
          # 64
          @display.attr_last_ascii = @display.shifted_key(RJava.cast_to_int(w_param))
          if ((@display.attr_last_ascii).equal?(0))
            @display.attr_last_ascii = map_key
          end
        else
          # 64
          @display.attr_last_ascii = RJava.cast_to_int(OS._char_lower(RJava.cast_to_short(map_key)))
        end
        # Note that Ctrl+'@' is ASCII NUL and is delivered in WM_CHAR
        if ((@display.attr_last_ascii).equal?(Character.new(?@.ord)))
          return nil
        end
        @display.attr_last_ascii = @display.control_key(@display.attr_last_ascii)
      end
      if (!send_key_event(SWT::KeyDown, OS::WM_KEYDOWN, w_param, l_param))
        return LRESULT::ONE
      end
      # widget could be disposed at this point
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_key_up(hwnd, w_param, l_param)
      display = @display
      # Check for hardware keys
      if (OS::IsWinCE)
        if (OS::VK_APP1 <= w_param && w_param <= OS::VK_APP6)
          display.attr_last_key = display.attr_last_ascii = 0
          display.attr_last_virtual = display.attr_last_null = display.attr_last_dead = false
          event = Event.new
          # 64
          event.attr_detail = RJava.cast_to_int(w_param) - OS::VK_APP1 + 1
          # Check the bit 30 to get the key state
          type = !((l_param & 0x40000000)).equal?(0) ? SWT::HardKeyUp : SWT::HardKeyDown
          if (set_input_state(event, type))
            send_event___org_eclipse_swt_widgets_widget_35(type, event)
          end
          # widget could be disposed at this point
          return nil
        end
      end
      # If the key up is not hooked, reset last key
      # and last ascii in case the key down is hooked.
      if (!hooks(SWT::KeyUp) && !display.filters(SWT::KeyUp))
        display.attr_last_key = display.attr_last_ascii = 0
        display.attr_last_virtual = display.attr_last_null = display.attr_last_dead = false
        return nil
      end
      # Map the virtual key.
      # 
      # Bug in WinCE.  MapVirtualKey() returns incorrect values.
      # The fix is to rely on a key mappings table to determine
      # whether the key event must be sent now or if a WM_CHAR
      # event will follow.  The key mappings table maps virtual
      # keys to SWT key codes and does not contain mappings for
      # Windows virtual keys like VK_A.  Virtual keys that are
      # both virtual and ASCII are a special case.
      map_key = 0
      if (OS::IsWinCE)
        # 64
        case (RJava.cast_to_int(w_param))
        when OS::VK_BACK
          map_key = SWT::BS
        when OS::VK_RETURN
          map_key = SWT::CR
        when OS::VK_DELETE
          map_key = SWT::DEL
        when OS::VK_ESCAPE
          map_key = SWT::ESC
        when OS::VK_TAB
          map_key = SWT::TAB
        end
      else
        # 64
        map_key = OS._map_virtual_key(RJava.cast_to_int(w_param), 2)
      end
      # Bug in Windows 95 and NT.  When the user types an accent key such
      # as ^ to get an accented character on a German keyboard, the accent
      # key should be ignored and the next key that the user types is the
      # accented key. The fix is to detect the accent key stroke (called
      # a dead key) by testing the high bit of the value returned by
      # MapVirtualKey ().  A further problem is that the high bit on
      # Windows NT is bit 32 while the high bit on Windows 95 is bit 16.
      # They should both be bit 32.
      if (OS::IsWinNT)
        if (!((map_key & -0x80000000)).equal?(0))
          return nil
        end
      else
        if (!((map_key & 0x8000)).equal?(0))
          return nil
        end
      end
      if (display.attr_last_dead)
        return nil
      end
      # NOTE: On Windows 98, keypad keys are virtual despite the
      # fact that a WM_CHAR is issued.  On Windows 2000 and XP,
      # they are not virtual.  Therefore it is necessary to force
      # numeric keypad keys to be virtual.
      # 
      # 64
      display.attr_last_virtual = (map_key).equal?(0) || !(display.numpad_key(RJava.cast_to_int(w_param))).equal?(0)
      if (display.attr_last_virtual)
        # 64
        display.attr_last_key = RJava.cast_to_int(w_param)
      else
        # Feature in Windows. The virtual key VK_CANCEL is treated
        # as both a virtual key and ASCII key by Windows.  This
        # means that a WM_CHAR with WPARAM=3 will be issued for
        # this key.  In order to distinguish between this key and
        # Ctrl+C, mark the key as virtual.
        if ((w_param).equal?(OS::VK_CANCEL))
          display.attr_last_virtual = true
        end
        if ((display.attr_last_key).equal?(0))
          display.attr_last_ascii = 0
          display.attr_last_null = display.attr_last_dead = false
          return nil
        end
      end
      result = nil
      if (!send_key_event(SWT::KeyUp, OS::WM_KEYUP, w_param, l_param))
        result = LRESULT::ONE
      end
      # widget could be disposed at this point
      display.attr_last_key = display.attr_last_ascii = 0
      display.attr_last_virtual = display.attr_last_null = display.attr_last_dead = false
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_kill_focus(hwnd, w_param, l_param)
      @display.attr_scroll_remainder = 0
      # long
      code = call_window_proc(hwnd, OS::WM_KILLFOCUS, w_param, l_param)
      send_focus_event(SWT::FocusOut)
      # widget could be disposed at this point
      # 
      # It is possible (but unlikely), that application
      # code could have disposed the widget in the focus
      # or deactivate events.  If this happens, end the
      # processing of the Windows message by returning
      # zero as the result of the window proc.
      if (is_disposed)
        return LRESULT::ZERO
      end
      if ((code).equal?(0))
        return LRESULT::ZERO
      end
      return LRESULT.new(code)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_lbutton_dbl_clk(hwnd, w_param, l_param)
      # Feature in Windows. Windows sends the following
      # messages when the user double clicks the mouse:
      # 
      # WM_LBUTTONDOWN		- mouse down
      # WM_LBUTTONUP		- mouse up
      # WM_LBUTTONDBLCLK	- double click
      # WM_LBUTTONUP		- mouse up
      # 
      # Applications that expect matching mouse down/up
      # pairs will not see the second mouse down.  The
      # fix is to send a mouse down event.
      result = nil
      display = @display
      display.attr_capture_changed = false
      send_mouse_event___org_eclipse_swt_widgets_widget_37(SWT::MouseDown, 1, hwnd, OS::WM_LBUTTONDOWN, w_param, l_param)
      if (send_mouse_event___org_eclipse_swt_widgets_widget_39(SWT::MouseDoubleClick, 1, hwnd, OS::WM_LBUTTONDBLCLK, w_param, l_param))
        result = LRESULT.new(call_window_proc(hwnd, OS::WM_LBUTTONDBLCLK, w_param, l_param))
      else
        result = LRESULT::ZERO
      end
      if (!display.attr_capture_changed && !is_disposed)
        if (!(OS._get_capture).equal?(hwnd))
          OS._set_capture(hwnd)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_lbutton_down(hwnd, w_param, l_param)
      display = @display
      result = nil
      x = OS._get_x_lparam(l_param)
      y = OS._get_y_lparam(l_param)
      consume = nil
      detect = nil
      dragging = false
      mouse_down = true
      count = display.get_click_count(SWT::MouseDown, 1, hwnd, l_param)
      if ((count).equal?(1) && !((@state & DRAG_DETECT)).equal?(0) && hooks(SWT::DragDetect))
        if (!OS::IsWinCE)
          # Feature in Windows.  It's possible that the drag
          # operation will not be started while the mouse is
          # down, meaning that the mouse should be captured.
          # This can happen when the user types the ESC key
          # to cancel the drag.  The fix is to query the state
          # of the mouse and capture the mouse accordingly.
          detect = Array.typed(::Java::Boolean).new(1) { false }
          consume = Array.typed(::Java::Boolean).new(1) { false }
          dragging = drag_detect(hwnd, x, y, true, detect, consume)
          if (is_disposed)
            return LRESULT::ZERO
          end
          mouse_down = OS._get_key_state(OS::VK_LBUTTON) < 0
        end
      end
      display.attr_capture_changed = false
      dispatch = send_mouse_event___org_eclipse_swt_widgets_widget_41(SWT::MouseDown, 1, count, 0, false, hwnd, OS::WM_LBUTTONDOWN, w_param, l_param)
      if (dispatch && ((consume).nil? || !consume[0]))
        result = LRESULT.new(call_window_proc(hwnd, OS::WM_LBUTTONDOWN, w_param, l_param))
      else
        result = LRESULT::ZERO
      end
      if (OS::IsPPC)
        # Note: On WinCE PPC, only attempt to recognize the gesture for
        # a context menu when the control contains a valid menu or there
        # are listeners for the MenuDetect event.
        menu = get_menu
        has_menu = !(menu).nil? && !menu.is_disposed
        if (has_menu || hooks(SWT::MenuDetect))
          shrg = SHRGINFO.new
          shrg.attr_cb_size = SHRGINFO.attr_sizeof
          shrg.attr_hwnd_client = hwnd
          shrg.attr_pt_down_x = x
          shrg.attr_pt_down_y = y
          shrg.attr_dw_flags = OS::SHRG_RETURNCMD
          type = OS._shrecognize_gesture(shrg)
          if ((type).equal?(OS::GN_CONTEXTMENU))
            show_menu(x, y)
          end
        end
      end
      if (mouse_down)
        if (!display.attr_capture_changed && !is_disposed)
          if (!(OS._get_capture).equal?(hwnd))
            OS._set_capture(hwnd)
          end
        end
      end
      if (dragging)
        send_drag_event(1, x, y)
      else
        if (!(detect).nil? && detect[0])
          # Feature in Windows.  DragDetect() captures the mouse
          # and tracks its movement until the user releases the
          # left mouse button, presses the ESC key, or moves the
          # mouse outside the drag rectangle.  If the user moves
          # the mouse outside of the drag rectangle, DragDetect()
          # returns true and a drag and drop operation can be
          # started.  When the left mouse button is released or
          # the ESC key is pressed, these events are consumed by
          # DragDetect() so that application code that matches
          # mouse down/up pairs or looks for the ESC key will not
          # function properly.  The fix is to send the missing
          # events when the drag has not started.
          # 
          # NOTE: For now, don't send a fake WM_KEYDOWN/WM_KEYUP
          # events for the ESC key.  This would require computing
          # wParam (the key) and lParam (the repeat count, scan code,
          # extended-key flag, context code, previous key-state flag,
          # and transition-state flag) which is non-trivial.
          if (OS._get_key_state(OS::VK_ESCAPE) >= 0)
            OS._send_message(hwnd, OS::WM_LBUTTONUP, w_param, l_param)
          end
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_lbutton_up(hwnd, w_param, l_param)
      display = @display
      result = nil
      if (send_mouse_event___org_eclipse_swt_widgets_widget_43(SWT::MouseUp, 1, hwnd, OS::WM_LBUTTONUP, w_param, l_param))
        result = LRESULT.new(call_window_proc(hwnd, OS::WM_LBUTTONUP, w_param, l_param))
      else
        result = LRESULT::ZERO
      end
      # Bug in Windows.  On some machines that do not have XBUTTONs,
      # the MK_XBUTTON1 and OS.MK_XBUTTON2 bits are sometimes set,
      # causing mouse capture to become stuck.  The fix is to test
      # for the extra buttons only when they exist.
      mask = OS::MK_LBUTTON | OS::MK_MBUTTON | OS::MK_RBUTTON
      if (display.attr_x_mouse)
        mask |= OS::MK_XBUTTON1 | OS::MK_XBUTTON2
      end
      if (((w_param & mask)).equal?(0))
        if ((OS._get_capture).equal?(hwnd))
          OS._release_capture
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_mbutton_dbl_clk(hwnd, w_param, l_param)
      # Feature in Windows. Windows sends the following
      # messages when the user double clicks the mouse:
      # 
      # WM_MBUTTONDOWN		- mouse down
      # WM_MBUTTONUP		- mouse up
      # WM_MLBUTTONDBLCLK	- double click
      # WM_MBUTTONUP		- mouse up
      # 
      # Applications that expect matching mouse down/up
      # pairs will not see the second mouse down.  The
      # fix is to send a mouse down event.
      result = nil
      display = @display
      display.attr_capture_changed = false
      send_mouse_event___org_eclipse_swt_widgets_widget_45(SWT::MouseDown, 2, hwnd, OS::WM_MBUTTONDOWN, w_param, l_param)
      if (send_mouse_event___org_eclipse_swt_widgets_widget_47(SWT::MouseDoubleClick, 2, hwnd, OS::WM_MBUTTONDBLCLK, w_param, l_param))
        result = LRESULT.new(call_window_proc(hwnd, OS::WM_MBUTTONDBLCLK, w_param, l_param))
      else
        result = LRESULT::ZERO
      end
      if (!display.attr_capture_changed && !is_disposed)
        if (!(OS._get_capture).equal?(hwnd))
          OS._set_capture(hwnd)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_mbutton_down(hwnd, w_param, l_param)
      result = nil
      display = @display
      display.attr_capture_changed = false
      if (send_mouse_event___org_eclipse_swt_widgets_widget_49(SWT::MouseDown, 2, hwnd, OS::WM_MBUTTONDOWN, w_param, l_param))
        result = LRESULT.new(call_window_proc(hwnd, OS::WM_MBUTTONDOWN, w_param, l_param))
      else
        result = LRESULT::ZERO
      end
      if (!display.attr_capture_changed && !is_disposed)
        if (!(OS._get_capture).equal?(hwnd))
          OS._set_capture(hwnd)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_mbutton_up(hwnd, w_param, l_param)
      display = @display
      result = nil
      if (send_mouse_event___org_eclipse_swt_widgets_widget_51(SWT::MouseUp, 2, hwnd, OS::WM_MBUTTONUP, w_param, l_param))
        result = LRESULT.new(call_window_proc(hwnd, OS::WM_MBUTTONUP, w_param, l_param))
      else
        result = LRESULT::ZERO
      end
      # Bug in Windows.  On some machines that do not have XBUTTONs,
      # the MK_XBUTTON1 and OS.MK_XBUTTON2 bits are sometimes set,
      # causing mouse capture to become stuck.  The fix is to test
      # for the extra buttons only when they exist.
      mask = OS::MK_LBUTTON | OS::MK_MBUTTON | OS::MK_RBUTTON
      if (display.attr_x_mouse)
        mask |= OS::MK_XBUTTON1 | OS::MK_XBUTTON2
      end
      if (((w_param & mask)).equal?(0))
        if ((OS._get_capture).equal?(hwnd))
          OS._release_capture
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_mouse_hover(hwnd, w_param, l_param)
      if (!send_mouse_event___org_eclipse_swt_widgets_widget_53(SWT::MouseHover, 0, hwnd, OS::WM_MOUSEHOVER, w_param, l_param))
        return LRESULT::ZERO
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_mouse_leave(hwnd, w_param, l_param)
      if (!hooks(SWT::MouseExit) && !filters(SWT::MouseExit))
        return nil
      end
      pos = OS._get_message_pos
      pt = POINT.new
      OS._pointstopoint(pt, pos)
      OS._screen_to_client(hwnd, pt)
      l_param = OS._makelparam(pt.attr_x, pt.attr_y)
      if (!send_mouse_event___org_eclipse_swt_widgets_widget_55(SWT::MouseExit, 0, hwnd, OS::WM_MOUSELEAVE, w_param, l_param))
        return LRESULT::ZERO
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_mouse_move(hwnd, w_param, l_param)
      result = nil
      display = @display
      pos = OS._get_message_pos
      if (!(pos).equal?(display.attr_last_mouse) || display.attr_capture_changed)
        if (!OS::IsWinCE)
          track_mouse = !((@state & TRACK_MOUSE)).equal?(0)
          mouse_enter = hooks(SWT::MouseEnter) || display.filters(SWT::MouseEnter)
          mouse_exit = hooks(SWT::MouseExit) || display.filters(SWT::MouseExit)
          mouse_hover = hooks(SWT::MouseHover) || display.filters(SWT::MouseHover)
          if (track_mouse || mouse_enter || mouse_exit || mouse_hover)
            lp_event_track = TRACKMOUSEEVENT.new
            lp_event_track.attr_cb_size = TRACKMOUSEEVENT.attr_sizeof
            lp_event_track.attr_dw_flags = OS::TME_QUERY
            lp_event_track.attr_hwnd_track = hwnd
            OS._track_mouse_event(lp_event_track)
            if ((lp_event_track.attr_dw_flags).equal?(0))
              lp_event_track.attr_dw_flags = OS::TME_LEAVE | OS::TME_HOVER
              lp_event_track.attr_hwnd_track = hwnd
              OS._track_mouse_event(lp_event_track)
              if (mouse_enter)
                # Force all outstanding WM_MOUSELEAVE messages to be dispatched before
                # issuing a mouse enter.  This causes mouse exit events to be processed
                # before mouse enter events.  Note that WM_MOUSELEAVE is posted to the
                # event queue by TrackMouseEvent().
                msg = MSG.new
                flags = OS::PM_REMOVE | OS::PM_NOYIELD | OS::PM_QS_INPUT | OS::PM_QS_POSTMESSAGE
                while (OS._peek_message(msg, 0, OS::WM_MOUSELEAVE, OS::WM_MOUSELEAVE, flags))
                  OS._translate_message(msg)
                  OS._dispatch_message(msg)
                end
                send_mouse_event___org_eclipse_swt_widgets_widget_57(SWT::MouseEnter, 0, hwnd, OS::WM_MOUSEMOVE, w_param, l_param)
              end
            else
              lp_event_track.attr_dw_flags = OS::TME_HOVER
              OS._track_mouse_event(lp_event_track)
            end
          end
        end
        if (!(pos).equal?(display.attr_last_mouse))
          display.attr_last_mouse = pos
          if (!send_mouse_event___org_eclipse_swt_widgets_widget_59(SWT::MouseMove, 0, hwnd, OS::WM_MOUSEMOVE, w_param, l_param))
            result = LRESULT::ZERO
          end
        end
      end
      display.attr_capture_changed = false
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_mouse_wheel(hwnd, w_param, l_param)
      delta = OS._get_wheel_delta_wparam(w_param)
      lines_to_scroll = Array.typed(::Java::Int).new(1) { 0 }
      detail = 0
      OS._system_parameters_info(OS::SPI_GETWHEELSCROLLLINES, 0, lines_to_scroll, 0)
      if ((lines_to_scroll[0]).equal?(OS::WHEEL_PAGESCROLL))
        detail = SWT::SCROLL_PAGE
      else
        detail = SWT::SCROLL_LINE
        delta *= lines_to_scroll[0]
      end
      # Check if the delta and the remainder have the same direction (sign)
      if ((delta ^ @display.attr_scroll_remainder) >= 0)
        delta += @display.attr_scroll_remainder
      end
      @display.attr_scroll_remainder = delta % OS::WHEEL_DELTA
      if (!hooks(SWT::MouseWheel) && !filters(SWT::MouseWheel))
        return nil
      end
      count = delta / OS::WHEEL_DELTA
      pt = POINT.new
      OS._pointstopoint(pt, l_param)
      OS._screen_to_client(hwnd, pt)
      l_param = OS._makelparam(pt.attr_x, pt.attr_y)
      if (!send_mouse_event___org_eclipse_swt_widgets_widget_61(SWT::MouseWheel, 0, count, detail, true, hwnd, OS::WM_MOUSEWHEEL, w_param, l_param))
        return LRESULT::ZERO
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_ncpaint(hwnd, w_param, l_param)
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_paint(hwnd, w_param, l_param)
      # Exit early - don't draw the background
      if (!hooks(SWT::Paint) && !filters(SWT::Paint))
        return nil
      end
      # Issue a paint event
      # long
      result = 0
      if (OS::IsWinCE)
        rect = RECT.new
        OS._get_update_rect(hwnd, rect, false)
        result = call_window_proc(hwnd, OS::WM_PAINT, w_param, l_param)
        # Bug in Windows.  When InvalidateRgn(), InvalidateRect()
        # or RedrawWindow() with RDW_INVALIDATE is called from
        # within WM_PAINT to invalidate a region for a further
        # BeginPaint(), the caret is not properly erased causing
        # pixel corruption.  The fix is to hide and show the
        # caret.
        OS._hide_caret(hwnd)
        OS._invalidate_rect(hwnd, rect, false)
        OS._show_caret(hwnd)
        ps = PAINTSTRUCT.new
        data = SwtGCData.new
        data.attr_ps = ps
        data.attr_hwnd = hwnd
        gc = new__gc(data)
        if (!(gc).nil?)
          width = ps.attr_right - ps.attr_left
          height = ps.attr_bottom - ps.attr_top
          if (!(width).equal?(0) && !(height).equal?(0))
            event = Event.new
            event.attr_gc = gc
            event.attr_x = ps.attr_left
            event.attr_y = ps.attr_top
            event.attr_width = width
            event.attr_height = height
            send_event___org_eclipse_swt_widgets_widget_63(SWT::Paint, event)
            # widget could be disposed at this point
            event.attr_gc = nil
          end
          gc.dispose
        end
      else
        # long
        rgn = OS._create_rect_rgn(0, 0, 0, 0)
        OS._get_update_rgn(hwnd, rgn, false)
        result = call_window_proc(hwnd, OS::WM_PAINT, w_param, l_param)
        data = SwtGCData.new
        data.attr_hwnd = hwnd
        gc = new__gc(data)
        if (!(gc).nil?)
          OS._hide_caret(hwnd)
          rect = RECT.new
          OS._get_rgn_box(rgn, rect)
          width = rect.attr_right - rect.attr_left
          height = rect.attr_bottom - rect.attr_top
          if (!(width).equal?(0) && !(height).equal?(0))
            # long
            h_dc = gc.attr_handle
            OS._select_clip_rgn(h_dc, rgn)
            OS._set_meta_rgn(h_dc)
            event = Event.new
            event.attr_gc = gc
            event.attr_x = rect.attr_left
            event.attr_y = rect.attr_top
            event.attr_width = width
            event.attr_height = height
            send_event___org_eclipse_swt_widgets_widget_65(SWT::Paint, event)
            # widget could be disposed at this point
            event.attr_gc = nil
          end
          gc.dispose
          OS._show_caret(hwnd)
        end
        OS._delete_object(rgn)
      end
      if ((result).equal?(0))
        return LRESULT::ZERO
      end
      return LRESULT.new(result)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_print(hwnd, w_param, l_param)
      # Bug in Windows.  When WM_PRINT is used to print the contents
      # of a control that has WS_EX_CLIENTEDGE, the old 3D border is
      # drawn instead of the theme border.  The fix is to call the
      # default window proc and then draw the theme border on top.
      if (!((l_param & OS::PRF_NONCLIENT)).equal?(0))
        if (OS::COMCTL32_MAJOR >= 6 && OS._is_app_themed)
          bits = OS._get_window_long(hwnd, OS::GWL_EXSTYLE)
          if (!((bits & OS::WS_EX_CLIENTEDGE)).equal?(0))
            # long
            code = call_window_proc(hwnd, OS::WM_PRINT, w_param, l_param)
            rect = RECT.new
            OS._get_window_rect(hwnd, rect)
            rect.attr_right -= rect.attr_left
            rect.attr_bottom -= rect.attr_top
            rect.attr_left = rect.attr_top = 0
            border = OS._get_system_metrics(OS::SM_CXEDGE)
            OS._exclude_clip_rect(w_param, border, border, rect.attr_right - border, rect.attr_bottom - border)
            OS._draw_theme_background(@display.h_edit_theme, w_param, OS::EP_EDITTEXT, OS::ETS_NORMAL, rect, nil)
            return LRESULT.new(code)
          end
        end
      end
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_rbutton_dbl_clk(hwnd, w_param, l_param)
      # Feature in Windows. Windows sends the following
      # messages when the user double clicks the mouse:
      # 
      # WM_RBUTTONDOWN		- mouse down
      # WM_RBUTTONUP		- mouse up
      # WM_RBUTTONDBLCLK	- double click
      # WM_LBUTTONUP		- mouse up
      # 
      # Applications that expect matching mouse down/up
      # pairs will not see the second mouse down.  The
      # fix is to send a mouse down event.
      result = nil
      display = @display
      display.attr_capture_changed = false
      send_mouse_event___org_eclipse_swt_widgets_widget_67(SWT::MouseDown, 3, hwnd, OS::WM_RBUTTONDOWN, w_param, l_param)
      if (send_mouse_event___org_eclipse_swt_widgets_widget_69(SWT::MouseDoubleClick, 3, hwnd, OS::WM_RBUTTONDBLCLK, w_param, l_param))
        result = LRESULT.new(call_window_proc(hwnd, OS::WM_RBUTTONDBLCLK, w_param, l_param))
      else
        result = LRESULT::ZERO
      end
      if (!display.attr_capture_changed && !is_disposed)
        if (!(OS._get_capture).equal?(hwnd))
          OS._set_capture(hwnd)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_rbutton_down(hwnd, w_param, l_param)
      result = nil
      display = @display
      display.attr_capture_changed = false
      if (send_mouse_event___org_eclipse_swt_widgets_widget_71(SWT::MouseDown, 3, hwnd, OS::WM_RBUTTONDOWN, w_param, l_param))
        result = LRESULT.new(call_window_proc(hwnd, OS::WM_RBUTTONDOWN, w_param, l_param))
      else
        result = LRESULT::ZERO
      end
      if (!display.attr_capture_changed && !is_disposed)
        if (!(OS._get_capture).equal?(hwnd))
          OS._set_capture(hwnd)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_rbutton_up(hwnd, w_param, l_param)
      display = @display
      result = nil
      if (send_mouse_event___org_eclipse_swt_widgets_widget_73(SWT::MouseUp, 3, hwnd, OS::WM_RBUTTONUP, w_param, l_param))
        result = LRESULT.new(call_window_proc(hwnd, OS::WM_RBUTTONUP, w_param, l_param))
      else
        # Call the DefWindowProc() to support WM_CONTEXTMENU
        OS._def_window_proc(hwnd, OS::WM_RBUTTONUP, w_param, l_param)
        result = LRESULT::ZERO
      end
      # Bug in Windows.  On some machines that do not have XBUTTONs,
      # the MK_XBUTTON1 and OS.MK_XBUTTON2 bits are sometimes set,
      # causing mouse capture to become stuck.  The fix is to test
      # for the extra buttons only when they exist.
      mask = OS::MK_LBUTTON | OS::MK_MBUTTON | OS::MK_RBUTTON
      if (display.attr_x_mouse)
        mask |= OS::MK_XBUTTON1 | OS::MK_XBUTTON2
      end
      if (((w_param & mask)).equal?(0))
        if ((OS._get_capture).equal?(hwnd))
          OS._release_capture
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_set_focus(hwnd, w_param, l_param)
      # long
      code = call_window_proc(hwnd, OS::WM_SETFOCUS, w_param, l_param)
      send_focus_event(SWT::FocusIn)
      # widget could be disposed at this point
      # 
      # It is possible (but unlikely), that application
      # code could have disposed the widget in the focus
      # or activate events.  If this happens, end the
      # processing of the Windows message by returning
      # zero as the result of the window proc.
      if (is_disposed)
        return LRESULT::ZERO
      end
      if ((code).equal?(0))
        return LRESULT::ZERO
      end
      return LRESULT.new(code)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_sys_char(hwnd, w_param, l_param)
      display = @display
      # 64
      display.attr_last_ascii = RJava.cast_to_int(w_param)
      display.attr_last_null = (w_param).equal?(0)
      # Do not issue a key down if a menu bar mnemonic was invoked
      if (!hooks(SWT::KeyDown) && !display.filters(SWT::KeyDown))
        return nil
      end
      # Call the window proc to determine whether it is a system key or mnemonic
      old_key_hit = display.attr_mnemonic_key_hit
      display.attr_mnemonic_key_hit = true
      # long
      result = call_window_proc(hwnd, OS::WM_SYSCHAR, w_param, l_param)
      consumed = false
      if (!display.attr_mnemonic_key_hit)
        consumed = !send_key_event(SWT::KeyDown, OS::WM_SYSCHAR, w_param, l_param)
        # widget could be disposed at this point
      end
      consumed |= display.attr_mnemonic_key_hit
      display.attr_mnemonic_key_hit = old_key_hit
      return consumed ? LRESULT::ONE : LRESULT.new(result)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_sys_key_down(hwnd, w_param, l_param)
      # Feature in Windows.  When WM_SYSKEYDOWN is sent,
      # the user pressed ALT+<key> or F10 to get to the
      # menu bar.  In order to issue events for F10 but
      # ignore other key presses when the ALT is not down,
      # make sure that either F10 was pressed or that ALT
      # is pressed.
      if (!(w_param).equal?(OS::VK_F10))
        # Make sure WM_SYSKEYDOWN was sent by ALT-<aKey>.
        if (((l_param & 0x20000000)).equal?(0))
          return nil
        end
      end
      # Ignore well known system keys
      # 64
      case (RJava.cast_to_int(w_param))
      when OS::VK_F4
        # long
        hwnd_shell = hwnd
        while (!(OS._get_parent(hwnd_shell)).equal?(0))
          if (!(OS._get_window(hwnd_shell, OS::GW_OWNER)).equal?(0))
            break
          end
          hwnd_shell = OS._get_parent(hwnd_shell)
        end
        bits = OS._get_window_long(hwnd_shell, OS::GWL_STYLE)
        if (!((bits & OS::WS_SYSMENU)).equal?(0))
          return nil
        end
      end
      # Ignore repeating modifier keys by testing key down state
      # 64
      case (RJava.cast_to_int(w_param))
      when OS::VK_SHIFT, OS::VK_MENU, OS::VK_CONTROL, OS::VK_CAPITAL, OS::VK_NUMLOCK, OS::VK_SCROLL
        if (!((l_param & 0x40000000)).equal?(0))
          return nil
        end
      end
      # Clear last key and last ascii because a new key has been typed
      @display.attr_last_ascii = @display.attr_last_key = 0
      @display.attr_last_virtual = @display.attr_last_null = @display.attr_last_dead = false
      # If are going to get a WM_SYSCHAR, ignore this message.
      # 
      # Bug in WinCE.  MapVirtualKey() returns incorrect values.
      # The fix is to rely on a key mappings table to determine
      # whether the key event must be sent now or if a WM_CHAR
      # event will follow.  The key mappings table maps virtual
      # keys to SWT key codes and does not contain mappings for
      # Windows virtual keys like VK_A.  Virtual keys that are
      # both virtual and ASCII are a special case.
      map_key = 0
      if (OS::IsWinCE)
        # 64
        case (RJava.cast_to_int(w_param))
        when OS::VK_BACK
          map_key = SWT::BS
        when OS::VK_RETURN
          map_key = SWT::CR
        when OS::VK_DELETE
          map_key = SWT::DEL
        when OS::VK_ESCAPE
          map_key = SWT::ESC
        when OS::VK_TAB
          map_key = SWT::TAB
        end
      else
        # 64
        map_key = OS._map_virtual_key(RJava.cast_to_int(w_param), 2)
      end
      # 64
      @display.attr_last_virtual = (map_key).equal?(0) || !(@display.numpad_key(RJava.cast_to_int(w_param))).equal?(0)
      if (@display.attr_last_virtual)
        # 64
        @display.attr_last_key = RJava.cast_to_int(w_param)
        # Feature in Windows.  The virtual key VK_DELETE is not
        # treated as both a virtual key and an ASCII key by Windows.
        # Therefore, we will not receive a WM_SYSCHAR for this key.
        # The fix is to treat VK_DELETE as a special case and map
        # the ASCII value explicitly (Delete is 0x7F).
        if ((@display.attr_last_key).equal?(OS::VK_DELETE))
          @display.attr_last_ascii = 0x7f
        end
        # When a keypad key is typed, a WM_SYSCHAR is not issued
        if (OS::VK_NUMPAD0 <= @display.attr_last_key && @display.attr_last_key <= OS::VK_DIVIDE)
          # A WM_SYSCHAR will be issued for '*', '+', '-', '.' and '/'
          # on the numeric keypad.  Avoid issuing the key event twice
          # by checking for these keys.  Note that calling to ToAscii()
          # or ToUnicode(), clear the character that is entered using
          # the special Windows keypad sequence when NumLock is down
          # (ie. typing ALT+0231 should gives 'c' with a cedilla when
          # NumLock is down).  Do not call either of these from here.
          case (@display.attr_last_key)
          when OS::VK_MULTIPLY, OS::VK_ADD, OS::VK_SUBTRACT, OS::VK_DECIMAL, OS::VK_DIVIDE
            return nil
          end
          @display.attr_last_ascii = @display.numpad_key(@display.attr_last_key)
        end
      else
        # Convert LastKey to lower case because Windows non-virtual
        # keys that are also ASCII keys, such as like VK_A, are have
        # upper case values in WM_SYSKEYDOWN despite the fact that the
        # Shift was not pressed.
        # 
        # 64
        @display.attr_last_key = RJava.cast_to_int(OS._char_lower(RJava.cast_to_short(map_key)))
        # Feature in Windows 98.  MapVirtualKey() indicates that
        # a WM_SYSCHAR message will occur for Alt+Enter but
        # this message never happens.  The fix is to issue the
        # event from WM_SYSKEYDOWN and map VK_RETURN to '\r'.
        if (OS::IsWinNT)
          return nil
        end
        if (!(w_param).equal?(OS::VK_RETURN))
          return nil
        end
        @display.attr_last_ascii = Character.new(?\r.ord)
      end
      if (!send_key_event(SWT::KeyDown, OS::WM_SYSKEYDOWN, w_param, l_param))
        return LRESULT::ONE
      end
      # widget could be disposed at this point
      return nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_sys_key_up(hwnd, w_param, l_param)
      return wm_key_up(hwnd, w_param, l_param)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_xbutton_dbl_clk(hwnd, w_param, l_param)
      # Feature in Windows. Windows sends the following
      # messages when the user double clicks the mouse:
      # 
      # WM_XBUTTONDOWN		- mouse down
      # WM_XBUTTONUP		- mouse up
      # WM_XLBUTTONDBLCLK	- double click
      # WM_XBUTTONUP		- mouse up
      # 
      # Applications that expect matching mouse down/up
      # pairs will not see the second mouse down.  The
      # fix is to send a mouse down event.
      result = nil
      display = @display
      display.attr_capture_changed = false
      button = (OS._hiword(w_param)).equal?(OS::XBUTTON1) ? 4 : 5
      send_mouse_event___org_eclipse_swt_widgets_widget_75(SWT::MouseDown, button, hwnd, OS::WM_XBUTTONDOWN, w_param, l_param)
      if (send_mouse_event___org_eclipse_swt_widgets_widget_77(SWT::MouseDoubleClick, button, hwnd, OS::WM_XBUTTONDBLCLK, w_param, l_param))
        result = LRESULT.new(call_window_proc(hwnd, OS::WM_XBUTTONDBLCLK, w_param, l_param))
      else
        result = LRESULT::ZERO
      end
      if (!display.attr_capture_changed && !is_disposed)
        if (!(OS._get_capture).equal?(hwnd))
          OS._set_capture(hwnd)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_xbutton_down(hwnd, w_param, l_param)
      result = nil
      display = @display
      display.attr_capture_changed = false
      display.attr_x_mouse = true
      button = (OS._hiword(w_param)).equal?(OS::XBUTTON1) ? 4 : 5
      if (send_mouse_event___org_eclipse_swt_widgets_widget_79(SWT::MouseDown, button, hwnd, OS::WM_XBUTTONDOWN, w_param, l_param))
        result = LRESULT.new(call_window_proc(hwnd, OS::WM_XBUTTONDOWN, w_param, l_param))
      else
        result = LRESULT::ZERO
      end
      if (!display.attr_capture_changed && !is_disposed)
        if (!(OS._get_capture).equal?(hwnd))
          OS._set_capture(hwnd)
        end
      end
      return result
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def wm_xbutton_up(hwnd, w_param, l_param)
      display = @display
      result = nil
      button = (OS._hiword(w_param)).equal?(OS::XBUTTON1) ? 4 : 5
      if (send_mouse_event___org_eclipse_swt_widgets_widget_81(SWT::MouseUp, button, hwnd, OS::WM_XBUTTONUP, w_param, l_param))
        result = LRESULT.new(call_window_proc(hwnd, OS::WM_XBUTTONUP, w_param, l_param))
      else
        result = LRESULT::ZERO
      end
      # Bug in Windows.  On some machines that do not have XBUTTONs,
      # the MK_XBUTTON1 and OS.MK_XBUTTON2 bits are sometimes set,
      # causing mouse capture to become stuck.  The fix is to test
      # for the extra buttons only when they exist.
      mask = OS::MK_LBUTTON | OS::MK_MBUTTON | OS::MK_RBUTTON
      if (display.attr_x_mouse)
        mask |= OS::MK_XBUTTON1 | OS::MK_XBUTTON2
      end
      if (((w_param & mask)).equal?(0))
        if ((OS._get_capture).equal?(hwnd))
          OS._release_capture
        end
      end
      return result
    end
    
    private
    alias_method :initialize__widget, :initialize
  end
  
end
