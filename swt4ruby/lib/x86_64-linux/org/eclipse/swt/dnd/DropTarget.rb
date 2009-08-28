require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Dnd
  module DropTargetImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
    }
  end
  
  # Class <code>DropTarget</code> defines the target object for a drag and drop transfer.
  # 
  # IMPORTANT: This class is <em>not</em> intended to be subclassed.
  # 
  # <p>This class identifies the <code>Control</code> over which the user must position the cursor
  # in order to drop the data being transferred.  It also specifies what data types can be dropped on
  # this control and what operations can be performed.  You may have several DropTragets in an
  # application but there can only be a one to one mapping between a <code>Control</code> and a <code>DropTarget</code>.
  # The DropTarget can receive data from within the same application or from other applications
  # (such as text dragged from a text editor like Word).</p>
  # 
  # <code><pre>
  # int operations = DND.DROP_MOVE | DND.DROP_COPY | DND.DROP_LINK;
  # Transfer[] types = new Transfer[] {TextTransfer.getInstance()};
  # DropTarget target = new DropTarget(label, operations);
  # target.setTransfer(types);
  # </code></pre>
  # 
  # <p>The application is notified of data being dragged over this control and of when a drop occurs by
  # implementing the interface <code>DropTargetListener</code> which uses the class
  # <code>DropTargetEvent</code>.  The application can modify the type of drag being performed
  # on this Control at any stage of the drag by modifying the <code>event.detail</code> field or the
  # <code>event.currentDataType</code> field.  When the data is dropped, it is the responsibility of
  # the application to copy this data for its own purposes.
  # 
  # <code><pre>
  # target.addDropListener (new DropTargetListener() {
  # public void dragEnter(DropTargetEvent event) {};
  # public void dragOver(DropTargetEvent event) {};
  # public void dragLeave(DropTargetEvent event) {};
  # public void dragOperationChanged(DropTargetEvent event) {};
  # public void dropAccept(DropTargetEvent event) {}
  # public void drop(DropTargetEvent event) {
  # // A drop has occurred, copy over the data
  # if (event.data == null) { // no data to copy, indicate failure in event.detail
  # event.detail = DND.DROP_NONE;
  # return;
  # }
  # label.setText ((String) event.data); // data copied to label text
  # }
  # });
  # </pre></code>
  # 
  # <dl>
  # <dt><b>Styles</b></dt> <dd>DND.DROP_NONE, DND.DROP_COPY, DND.DROP_MOVE, DND.DROP_LINK</dd>
  # <dt><b>Events</b></dt> <dd>DND.DragEnter, DND.DragLeave, DND.DragOver, DND.DragOperationChanged,
  # DND.DropAccept, DND.Drop </dd>
  # </dl>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#dnd">Drag and Drop snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: DNDExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class DropTarget < DropTargetImports.const_get :Widget
    include_class_members DropTargetImports
    
    attr_accessor :control
    alias_method :attr_control, :control
    undef_method :control
    alias_method :attr_control=, :control=
    undef_method :control=
    
    attr_accessor :control_listener
    alias_method :attr_control_listener, :control_listener
    undef_method :control_listener
    alias_method :attr_control_listener=, :control_listener=
    undef_method :control_listener=
    
    attr_accessor :transfer_agents
    alias_method :attr_transfer_agents, :transfer_agents
    undef_method :transfer_agents
    alias_method :attr_transfer_agents=, :transfer_agents=
    undef_method :transfer_agents=
    
    attr_accessor :drop_effect
    alias_method :attr_drop_effect, :drop_effect
    undef_method :drop_effect
    alias_method :attr_drop_effect=, :drop_effect=
    undef_method :drop_effect=
    
    # Track application selections
    attr_accessor :selected_data_type
    alias_method :attr_selected_data_type, :selected_data_type
    undef_method :selected_data_type
    alias_method :attr_selected_data_type=, :selected_data_type=
    undef_method :selected_data_type=
    
    attr_accessor :selected_operation
    alias_method :attr_selected_operation, :selected_operation
    undef_method :selected_operation
    alias_method :attr_selected_operation=, :selected_operation=
    undef_method :selected_operation=
    
    # workaround - There is no event for "operation changed" so track operation based on key state
    attr_accessor :key_operation
    alias_method :attr_key_operation, :key_operation
    undef_method :key_operation
    alias_method :attr_key_operation=, :key_operation=
    undef_method :key_operation=
    
    # workaround - Simulate events when the mouse is not moving
    attr_accessor :drag_over_start
    alias_method :attr_drag_over_start, :drag_over_start
    undef_method :drag_over_start
    alias_method :attr_drag_over_start=, :drag_over_start=
    undef_method :drag_over_start=
    
    attr_accessor :drag_over_heartbeat
    alias_method :attr_drag_over_heartbeat, :drag_over_heartbeat
    undef_method :drag_over_heartbeat
    alias_method :attr_drag_over_heartbeat=, :drag_over_heartbeat=
    undef_method :drag_over_heartbeat=
    
    attr_accessor :drag_over_event
    alias_method :attr_drag_over_event, :drag_over_event
    undef_method :drag_over_event
    alias_method :attr_drag_over_event=, :drag_over_event=
    undef_method :drag_over_event=
    
    attr_accessor :drag_motion_handler
    alias_method :attr_drag_motion_handler, :drag_motion_handler
    undef_method :drag_motion_handler
    alias_method :attr_drag_motion_handler=, :drag_motion_handler=
    undef_method :drag_motion_handler=
    
    attr_accessor :drag_leave_handler
    alias_method :attr_drag_leave_handler, :drag_leave_handler
    undef_method :drag_leave_handler
    alias_method :attr_drag_leave_handler=, :drag_leave_handler=
    undef_method :drag_leave_handler=
    
    attr_accessor :drag_data_received_handler
    alias_method :attr_drag_data_received_handler, :drag_data_received_handler
    undef_method :drag_data_received_handler
    alias_method :attr_drag_data_received_handler=, :drag_data_received_handler=
    undef_method :drag_data_received_handler=
    
    attr_accessor :drag_drop_handler
    alias_method :attr_drag_drop_handler, :drag_drop_handler
    undef_method :drag_drop_handler
    alias_method :attr_drag_drop_handler=, :drag_drop_handler=
    undef_method :drag_drop_handler=
    
    class_module.module_eval {
      const_set_lazy(:DEFAULT_DROP_TARGET_EFFECT) { "DEFAULT_DROP_TARGET_EFFECT" }
      const_attr_reader  :DEFAULT_DROP_TARGET_EFFECT
      
      # $NON-NLS-1$
      const_set_lazy(:DRAGOVER_HYSTERESIS) { 50 }
      const_attr_reader  :DRAGOVER_HYSTERESIS
      
      
      def drag_motion
        defined?(@@drag_motion) ? @@drag_motion : @@drag_motion= nil
      end
      alias_method :attr_drag_motion, :drag_motion
      
      def drag_motion=(value)
        @@drag_motion = value
      end
      alias_method :attr_drag_motion=, :drag_motion=
      
      
      def drag_leave
        defined?(@@drag_leave) ? @@drag_leave : @@drag_leave= nil
      end
      alias_method :attr_drag_leave, :drag_leave
      
      def drag_leave=(value)
        @@drag_leave = value
      end
      alias_method :attr_drag_leave=, :drag_leave=
      
      
      def drag_data_received
        defined?(@@drag_data_received) ? @@drag_data_received : @@drag_data_received= nil
      end
      alias_method :attr_drag_data_received, :drag_data_received
      
      def drag_data_received=(value)
        @@drag_data_received = value
      end
      alias_method :attr_drag_data_received=, :drag_data_received=
      
      
      def drag_drop
        defined?(@@drag_drop) ? @@drag_drop : @@drag_drop= nil
      end
      alias_method :attr_drag_drop, :drag_drop
      
      def drag_drop=(value)
        @@drag_drop = value
      end
      alias_method :attr_drag_drop=, :drag_drop=
      
      when_class_loaded do
        self.attr_drag_motion = Callback.new(DropTarget, "Drag_Motion", 5) # $NON-NLS-1$
        if ((self.attr_drag_motion.get_address).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        self.attr_drag_leave = Callback.new(DropTarget, "Drag_Leave", 3) # $NON-NLS-1$
        if ((self.attr_drag_leave.get_address).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        self.attr_drag_data_received = Callback.new(DropTarget, "Drag_Data_Received", 7) # $NON-NLS-1$
        if ((self.attr_drag_data_received.get_address).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        self.attr_drag_drop = Callback.new(DropTarget, "Drag_Drop", 5) # $NON-NLS-1$
        if ((self.attr_drag_drop.get_address).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
      end
    }
    
    typesig { [Control, ::Java::Int] }
    # Creates a new <code>DropTarget</code> to allow data to be dropped on the specified
    # <code>Control</code>.
    # Creating an instance of a DropTarget may cause system resources to be allocated
    # depending on the platform.  It is therefore mandatory that the DropTarget instance
    # be disposed when no longer required.
    # 
    # @param control the <code>Control</code> over which the user positions the cursor to drop the data
    # @param style the bitwise OR'ing of allowed operations; this may be a combination of any of
    # DND.DROP_NONE, DND.DROP_COPY, DND.DROP_MOVE, DND.DROP_LINK
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_CANNOT_INIT_DROP - unable to initiate drop target; this will occur if more than one
    # drop target is created for a control or if the operating system will not allow the creation
    # of the drop target</li>
    # </ul>
    # 
    # <p>NOTE: ERROR_CANNOT_INIT_DROP should be an SWTException, since it is a
    # recoverable error, but can not be changed due to backward compatibility.</p>
    # 
    # @see Widget#dispose
    # @see DropTarget#checkSubclass
    # @see DND#DROP_NONE
    # @see DND#DROP_COPY
    # @see DND#DROP_MOVE
    # @see DND#DROP_LINK
    def initialize(control, style)
      @control = nil
      @control_listener = nil
      @transfer_agents = nil
      @drop_effect = nil
      @selected_data_type = nil
      @selected_operation = 0
      @key_operation = 0
      @drag_over_start = 0
      @drag_over_heartbeat = nil
      @drag_over_event = nil
      @drag_motion_handler = 0
      @drag_leave_handler = 0
      @drag_data_received_handler = 0
      @drag_drop_handler = 0
      super(control, check_style(style))
      @transfer_agents = Array.typed(Transfer).new(0) { nil }
      @key_operation = -1
      @control = control
      if ((self.attr_drag_motion).nil? || (self.attr_drag_leave).nil? || (self.attr_drag_data_received).nil? || (self.attr_drag_drop).nil?)
        DND.error(DND::ERROR_CANNOT_INIT_DROP)
      end
      if (!(control.get_data(DND::DROP_TARGET_KEY)).nil?)
        DND.error(DND::ERROR_CANNOT_INIT_DROP)
      end
      control.set_data(DND::DROP_TARGET_KEY, self)
      @drag_motion_handler = OS.g_signal_connect(control.attr_handle, OS.attr_drag_motion, self.attr_drag_motion.get_address, 0)
      @drag_leave_handler = OS.g_signal_connect(control.attr_handle, OS.attr_drag_leave, self.attr_drag_leave.get_address, 0)
      @drag_data_received_handler = OS.g_signal_connect(control.attr_handle, OS.attr_drag_data_received, self.attr_drag_data_received.get_address, 0)
      @drag_drop_handler = OS.g_signal_connect(control.attr_handle, OS.attr_drag_drop, self.attr_drag_drop.get_address, 0)
      @control_listener = # Dispose listeners
      Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members DropTarget
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          if (!@local_class_parent.is_disposed)
            @local_class_parent.dispose
          end
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      control.add_listener(SWT::Dispose, @control_listener)
      self.add_listener(SWT::Dispose, Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members DropTarget
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          on_dispose
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      effect = control.get_data(DEFAULT_DROP_TARGET_EFFECT)
      if (effect.is_a?(DropTargetEffect))
        @drop_effect = effect
      else
        if (control.is_a?(Table))
          @drop_effect = TableDropTargetEffect.new(control)
        else
          if (control.is_a?(Tree))
            @drop_effect = TreeDropTargetEffect.new(control)
          end
        end
      end
      @drag_over_heartbeat = Class.new(Runnable.class == Class ? Runnable : Object) do
        extend LocalClass
        include_class_members DropTarget
        include Runnable if Runnable.class == Module
        
        typesig { [] }
        define_method :run do
          control_ = @local_class_parent.attr_control
          if ((control_).nil? || control_.is_disposed || (self.attr_drag_over_start).equal?(0))
            return
          end
          time = System.current_time_millis
          delay = DRAGOVER_HYSTERESIS
          if (time < self.attr_drag_over_start)
            delay = RJava.cast_to_int((self.attr_drag_over_start - time))
          else
            self.attr_drag_over_event.attr_time += DRAGOVER_HYSTERESIS
            allowed_operations = self.attr_drag_over_event.attr_operations
            allowed_types = self.attr_drag_over_event.attr_data_types
            # pass a copy of data types in to listeners in case application modifies it
            data_types = Array.typed(self.class::TransferData).new(allowed_types.attr_length) { nil }
            System.arraycopy(allowed_types, 0, data_types, 0, data_types.attr_length)
            event = self.class::DNDEvent.new
            event.attr_widget = self.attr_drag_over_event.attr_widget
            event.attr_x = self.attr_drag_over_event.attr_x
            event.attr_y = self.attr_drag_over_event.attr_y
            event.attr_time = self.attr_drag_over_event.attr_time
            event.attr_feedback = DND::FEEDBACK_SELECT
            event.attr_data_types = data_types
            event.attr_data_type = self.attr_selected_data_type
            event.attr_operations = self.attr_drag_over_event.attr_operations
            event.attr_detail = self.attr_selected_operation
            if (!(self.attr_drop_effect).nil?)
              event.attr_item = self.attr_drop_effect.get_item(self.attr_drag_over_event.attr_x, self.attr_drag_over_event.attr_y)
            end
            self.attr_selected_data_type = nil
            self.attr_selected_operation = DND::DROP_NONE
            notify_listeners(DND::DragOver, event)
            if (!(event.attr_data_type).nil?)
              i = 0
              while i < allowed_types.attr_length
                if ((allowed_types[i].attr_type).equal?(event.attr_data_type.attr_type))
                  self.attr_selected_data_type = event.attr_data_type
                  break
                end
                i += 1
              end
            end
            if (!(self.attr_selected_data_type).nil? && !((event.attr_detail & allowed_operations)).equal?(0))
              self.attr_selected_operation = event.attr_detail
            end
          end
          control_ = @local_class_parent.attr_control
          if ((control_).nil? || control_.is_disposed)
            return
          end
          control_.get_display.timer_exec(delay, self.attr_drag_over_heartbeat)
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        if ((style).equal?(SWT::NONE))
          return DND::DROP_MOVE
        end
        return style
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      # int
      # int
      # int
      # int
      # int
      def _drag_data_received(widget, context, x, y, data, info, time)
        target = _find_drop_target(widget)
        if ((target).nil?)
          return 0
        end
        # 64
        # 64
        # 64
        # 64
        target.drag_data_received(widget, context, RJava.cast_to_int(x), RJava.cast_to_int(y), data, RJava.cast_to_int(info), RJava.cast_to_int(time))
        return 0
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      # int
      # int
      # int
      def _drag_drop(widget, context, x, y, time)
        target = _find_drop_target(widget)
        if ((target).nil?)
          return 0
        end
        # 64
        # 64
        # 64
        return target.drag_drop(widget, context, RJava.cast_to_int(x), RJava.cast_to_int(y), RJava.cast_to_int(time)) ? 1 : 0
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      # int
      def _drag_leave(widget, context, time)
        target = _find_drop_target(widget)
        if ((target).nil?)
          return 0
        end
        # 64
        target.drag_leave(widget, context, RJava.cast_to_int(time))
        return 0
      end
      
      typesig { [::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long, ::Java::Long] }
      # int
      # int
      # int
      # int
      # int
      # int
      def _drag_motion(widget, context, x, y, time)
        target = _find_drop_target(widget)
        if ((target).nil?)
          return 0
        end
        # 64
        # 64
        # 64
        return target.drag_motion(widget, context, RJava.cast_to_int(x), RJava.cast_to_int(y), RJava.cast_to_int(time)) ? 1 : 0
      end
      
      typesig { [::Java::Long] }
      # int
      def _find_drop_target(handle)
        display = Display.find_display(JavaThread.current_thread)
        if ((display).nil? || display.is_disposed)
          return nil
        end
        widget = display.find_widget(handle)
        if ((widget).nil?)
          return nil
        end
        return widget.get_data(DND::DROP_TARGET_KEY)
      end
    }
    
    typesig { [DropTargetListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when a drag and drop operation is in progress, by sending
    # it one of the messages defined in the <code>DropTargetListener</code>
    # interface.
    # 
    # <p><ul>
    # <li><code>dragEnter</code> is called when the cursor has entered the drop target boundaries
    # <li><code>dragLeave</code> is called when the cursor has left the drop target boundaries and just before
    # the drop occurs or is cancelled.
    # <li><code>dragOperationChanged</code> is called when the operation being performed has changed
    # (usually due to the user changing the selected modifier key(s) while dragging)
    # <li><code>dragOver</code> is called when the cursor is moving over the drop target
    # <li><code>dropAccept</code> is called just before the drop is performed.  The drop target is given
    # the chance to change the nature of the drop or veto the drop by setting the <code>event.detail</code> field
    # <li><code>drop</code> is called when the data is being dropped
    # </ul></p>
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
    # @see DropTargetListener
    # @see #getDropListeners
    # @see #removeDropListener
    # @see DropTargetEvent
    def add_drop_listener(listener)
      if ((listener).nil?)
        DND.error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = DNDListener.new(listener)
      typed_listener.attr_dnd_widget = self
      add_listener(DND::DragEnter, typed_listener)
      add_listener(DND::DragLeave, typed_listener)
      add_listener(DND::DragOver, typed_listener)
      add_listener(DND::DragOperationChanged, typed_listener)
      add_listener(DND::Drop, typed_listener)
      add_listener(DND::DropAccept, typed_listener)
    end
    
    typesig { [] }
    def check_subclass
      name = get_class.get_name
      valid_name = DropTarget.get_name
      if (!(valid_name == name))
        DND.error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int, ::Java::Int] }
    # int
    # int
    # int
    def drag_data_received(widget, context, x, y, data, info, time)
      event = DNDEvent.new
      if ((data).equal?(0) || !set_event_data(context, x, y, time, event))
        @key_operation = -1
        return
      end
      @key_operation = -1
      allowed_operations = event.attr_operations
      # Get data in a Java format
      object = nil
      transfer_data = TransferData.new
      selection_data = GtkSelectionData.new
      OS.memmove(selection_data, data, GtkSelectionData.attr_sizeof)
      if (!(selection_data.attr_data).equal?(0))
        transfer_data.attr_type = selection_data.attr_type
        transfer_data.attr_length = selection_data.attr_length
        transfer_data.attr_p_value = selection_data.attr_data
        transfer_data.attr_format = selection_data.attr_format
        i = 0
        while i < @transfer_agents.attr_length
          transfer = @transfer_agents[i]
          if (!(transfer).nil? && transfer.is_supported_type(transfer_data))
            object = transfer.native_to_java(transfer_data)
            break
          end
          i += 1
        end
      end
      if ((object).nil?)
        @selected_operation = DND::DROP_NONE
      end
      event.attr_detail = @selected_operation
      event.attr_data_type = transfer_data
      event.attr_data = object
      @selected_operation = DND::DROP_NONE
      notify_listeners(DND::Drop, event)
      if (((allowed_operations & event.attr_detail)).equal?(event.attr_detail))
        @selected_operation = event.attr_detail
      end
      # stop native handler
      OS.g_signal_stop_emission_by_name(widget, OS.attr_drag_data_received)
      # notify source of action taken
      OS.gtk_drag_finish(context, !(@selected_operation).equal?(DND::DROP_NONE), (@selected_operation).equal?(DND::DROP_MOVE), time)
      return
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Int, ::Java::Int, ::Java::Int] }
    # int
    # int
    def drag_drop(widget, context, x, y, time)
      event = DNDEvent.new
      if (!set_event_data(context, x, y, time, event))
        @key_operation = -1
        return false
      end
      @key_operation = -1
      allowed_operations = event.attr_operations
      allowed_data_types = Array.typed(TransferData).new(event.attr_data_types.attr_length) { nil }
      System.arraycopy(event.attr_data_types, 0, allowed_data_types, 0, allowed_data_types.attr_length)
      event.attr_data_type = @selected_data_type
      event.attr_detail = @selected_operation
      @selected_data_type = nil
      @selected_operation = DND::DROP_NONE
      notify_listeners(DND::DropAccept, event)
      if (!(event.attr_data_type).nil?)
        i = 0
        while i < allowed_data_types.attr_length
          if ((allowed_data_types[i].attr_type).equal?(event.attr_data_type.attr_type))
            @selected_data_type = allowed_data_types[i]
            break
          end
          i += 1
        end
      end
      if (!(@selected_data_type).nil? && (((event.attr_detail & allowed_operations)).equal?(event.attr_detail)))
        @selected_operation = event.attr_detail
      end
      if ((@selected_operation).equal?(DND::DROP_NONE))
        # this was not a successful drop
        return false
      end
      # ask drag source for dropped data
      OS.gtk_drag_get_data(widget, context, @selected_data_type.attr_type, time)
      return true
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Int] }
    # int
    # int
    def drag_leave(widget, context, time)
      update_drag_over_hover(0, nil)
      if ((@key_operation).equal?(-1))
        return
      end
      @key_operation = -1
      event = DNDEvent.new
      event.attr_widget = self
      event.attr_time = time
      event.attr_detail = DND::DROP_NONE
      notify_listeners(DND::DragLeave, event)
    end
    
    typesig { [::Java::Long, ::Java::Long, ::Java::Int, ::Java::Int, ::Java::Int] }
    # int
    # int
    def drag_motion(widget, context, x, y, time)
      old_key_operation = @key_operation
      if ((old_key_operation).equal?(-1))
        # drag enter
        @selected_data_type = nil
        @selected_operation = DND::DROP_NONE
      end
      event = DNDEvent.new
      if (!set_event_data(context, x, y, time, event))
        @key_operation = -1
        OS.gdk_drag_status(context, 0, time)
        return false
      end
      allowed_operations = event.attr_operations
      allowed_data_types = Array.typed(TransferData).new(event.attr_data_types.attr_length) { nil }
      System.arraycopy(event.attr_data_types, 0, allowed_data_types, 0, allowed_data_types.attr_length)
      if ((old_key_operation).equal?(-1))
        event.attr_type = DND::DragEnter
      else
        if ((@key_operation).equal?(old_key_operation))
          event.attr_type = DND::DragOver
          event.attr_data_type = @selected_data_type
          event.attr_detail = @selected_operation
        else
          event.attr_type = DND::DragOperationChanged
          event.attr_data_type = @selected_data_type
        end
      end
      update_drag_over_hover(DRAGOVER_HYSTERESIS, event)
      @selected_data_type = nil
      @selected_operation = DND::DROP_NONE
      notify_listeners(event.attr_type, event)
      if ((event.attr_detail).equal?(DND::DROP_DEFAULT))
        event.attr_detail = !((allowed_operations & DND::DROP_MOVE)).equal?(0) ? DND::DROP_MOVE : DND::DROP_NONE
      end
      if (!(event.attr_data_type).nil?)
        i = 0
        while i < allowed_data_types.attr_length
          if ((allowed_data_types[i].attr_type).equal?(event.attr_data_type.attr_type))
            @selected_data_type = allowed_data_types[i]
            break
          end
          i += 1
        end
      end
      if (!(@selected_data_type).nil? && !((allowed_operations & event.attr_detail)).equal?(0))
        @selected_operation = event.attr_detail
      end
      case (@selected_operation)
      when DND::DROP_NONE
        OS.gdk_drag_status(context, 0, time)
      when DND::DROP_COPY
        OS.gdk_drag_status(context, OS::GDK_ACTION_COPY, time)
      when DND::DROP_MOVE
        OS.gdk_drag_status(context, OS::GDK_ACTION_MOVE, time)
      when DND::DROP_LINK
        OS.gdk_drag_status(context, OS::GDK_ACTION_LINK, time)
      end
      if ((old_key_operation).equal?(-1))
        @drag_over_heartbeat.run
      end
      return true
    end
    
    typesig { [] }
    # Returns the Control which is registered for this DropTarget.  This is the control over which the
    # user positions the cursor to drop the data.
    # 
    # @return the Control which is registered for this DropTarget
    def get_control
      return @control
    end
    
    typesig { [] }
    # Returns an array of listeners who will be notified when a drag and drop
    # operation is in progress, by sending it one of the messages defined in
    # the <code>DropTargetListener</code> interface.
    # 
    # @return the listeners who will be notified when a drag and drop
    # operation is in progress
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see DropTargetListener
    # @see #addDropListener
    # @see #removeDropListener
    # @see DropTargetEvent
    # 
    # @since 3.4
    def get_drop_listeners
      listeners = get_listeners(DND::DragEnter)
      length = listeners.attr_length
      drop_listeners = Array.typed(DropTargetListener).new(length) { nil }
      count = 0
      i = 0
      while i < length
        listener = listeners[i]
        if (listener.is_a?(DNDListener))
          drop_listeners[count] = (listener).get_event_listener
          count += 1
        end
        i += 1
      end
      if ((count).equal?(length))
        return drop_listeners
      end
      result = Array.typed(DropTargetListener).new(count) { nil }
      System.arraycopy(drop_listeners, 0, result, 0, count)
      return result
    end
    
    typesig { [] }
    # Returns the drop effect for this DropTarget.  This drop effect will be
    # used during a drag and drop to display the drag under effect on the
    # target widget.
    # 
    # @return the drop effect that is registered for this DropTarget
    # 
    # @since 3.3
    def get_drop_target_effect
      return @drop_effect
    end
    
    typesig { [] }
    def get_operation_from_key_state
      state = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_pointer(0, nil, nil, state)
      ctrl = !((state[0] & OS::GDK_CONTROL_MASK)).equal?(0)
      shift = !((state[0] & OS::GDK_SHIFT_MASK)).equal?(0)
      if (ctrl && shift)
        return DND::DROP_LINK
      end
      if (ctrl)
        return DND::DROP_COPY
      end
      if (shift)
        return DND::DROP_MOVE
      end
      return DND::DROP_DEFAULT
    end
    
    typesig { [] }
    # Returns a list of the data types that can be transferred to this DropTarget.
    # 
    # @return a list of the data types that can be transferred to this DropTarget
    def get_transfer
      return @transfer_agents
    end
    
    typesig { [] }
    def on_dispose
      if ((@control).nil?)
        return
      end
      OS.g_signal_handler_disconnect(@control.attr_handle, @drag_motion_handler)
      OS.g_signal_handler_disconnect(@control.attr_handle, @drag_leave_handler)
      OS.g_signal_handler_disconnect(@control.attr_handle, @drag_data_received_handler)
      OS.g_signal_handler_disconnect(@control.attr_handle, @drag_drop_handler)
      if (!(@transfer_agents.attr_length).equal?(0))
        OS.gtk_drag_dest_unset(@control.attr_handle)
      end
      @transfer_agents = nil
      if (!(@control_listener).nil?)
        @control.remove_listener(SWT::Dispose, @control_listener)
      end
      @control.set_data(DND::DROP_TARGET_KEY, nil)
      @control = nil
      @control_listener = nil
    end
    
    typesig { [::Java::Int] }
    def op_to_os_op(operation)
      os_operation = 0
      if (((operation & DND::DROP_COPY)).equal?(DND::DROP_COPY))
        os_operation |= OS::GDK_ACTION_COPY
      end
      if (((operation & DND::DROP_MOVE)).equal?(DND::DROP_MOVE))
        os_operation |= OS::GDK_ACTION_MOVE
      end
      if (((operation & DND::DROP_LINK)).equal?(DND::DROP_LINK))
        os_operation |= OS::GDK_ACTION_LINK
      end
      return os_operation
    end
    
    typesig { [::Java::Int] }
    def os_op_to_op(os_operation)
      operation = DND::DROP_NONE
      if (((os_operation & OS::GDK_ACTION_COPY)).equal?(OS::GDK_ACTION_COPY))
        operation |= DND::DROP_COPY
      end
      if (((os_operation & OS::GDK_ACTION_MOVE)).equal?(OS::GDK_ACTION_MOVE))
        operation |= DND::DROP_MOVE
      end
      if (((os_operation & OS::GDK_ACTION_LINK)).equal?(OS::GDK_ACTION_LINK))
        operation |= DND::DROP_LINK
      end
      return operation
    end
    
    typesig { [DropTargetListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when a drag and drop operation is in progress.
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
    # @see DropTargetListener
    # @see #addDropListener
    # @see #getDropListeners
    def remove_drop_listener(listener)
      if ((listener).nil?)
        DND.error(SWT::ERROR_NULL_ARGUMENT)
      end
      remove_listener(DND::DragEnter, listener)
      remove_listener(DND::DragLeave, listener)
      remove_listener(DND::DragOver, listener)
      remove_listener(DND::DragOperationChanged, listener)
      remove_listener(DND::Drop, listener)
      remove_listener(DND::DropAccept, listener)
    end
    
    typesig { [Array.typed(Transfer)] }
    # Specifies the data types that can be transferred to this DropTarget.  If data is
    # being dragged that does not match one of these types, the drop target will be notified of
    # the drag and drop operation but the currentDataType will be null and the operation
    # will be DND.NONE.
    # 
    # @param transferAgents a list of Transfer objects which define the types of data that can be
    # dropped on this target
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if transferAgents is null</li>
    # </ul>
    def set_transfer(transfer_agents)
      if ((transfer_agents).nil?)
        DND.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if (!(@transfer_agents.attr_length).equal?(0))
        OS.gtk_drag_dest_unset(@control.attr_handle)
      end
      @transfer_agents = transfer_agents
      targets = Array.typed(GtkTargetEntry).new(0) { nil }
      i = 0
      while i < transfer_agents.attr_length
        transfer = transfer_agents[i]
        if (!(transfer).nil?)
          type_ids = transfer.get_type_ids
          type_names = transfer.get_type_names
          j = 0
          while j < type_ids.attr_length
            entry = GtkTargetEntry.new
            buffer = Converter.wcs_to_mbcs(nil, type_names[j], true)
            entry.attr_target = OS.g_malloc(buffer.attr_length)
            OS.memmove(entry.attr_target, buffer, buffer.attr_length)
            entry.attr_info = type_ids[j]
            new_targets = Array.typed(GtkTargetEntry).new(targets.attr_length + 1) { nil }
            System.arraycopy(targets, 0, new_targets, 0, targets.attr_length)
            new_targets[targets.attr_length] = entry
            targets = new_targets
            j += 1
          end
        end
        i += 1
      end
      # int
      p_targets = OS.g_malloc(targets.attr_length * GtkTargetEntry.attr_sizeof)
      i_ = 0
      while i_ < targets.attr_length
        OS.memmove(p_targets + i_ * GtkTargetEntry.attr_sizeof, targets[i_], GtkTargetEntry.attr_sizeof)
        i_ += 1
      end
      actions = op_to_os_op(get_style)
      if (@control.is_a?(Combo))
        if (((@control.get_style & SWT::READ_ONLY)).equal?(0))
          # int
          entry_handle = OS.gtk_bin_get_child(@control.attr_handle)
          if (!(entry_handle).equal?(0))
            OS.gtk_drag_dest_unset(entry_handle)
          end
        end
      end
      OS.gtk_drag_dest_set(@control.attr_handle, 0, p_targets, targets.attr_length, actions)
      i__ = 0
      while i__ < targets.attr_length
        OS.g_free(targets[i__].attr_target)
        i__ += 1
      end
    end
    
    typesig { [DropTargetEffect] }
    # Specifies the drop effect for this DropTarget.  This drop effect will be
    # used during a drag and drop to display the drag under effect on the
    # target widget.
    # 
    # @param effect the drop effect that is registered for this DropTarget
    # 
    # @since 3.3
    def set_drop_target_effect(effect)
      @drop_effect = effect
    end
    
    typesig { [::Java::Long, ::Java::Int, ::Java::Int, ::Java::Int, DNDEvent] }
    # int
    def set_event_data(context, x, y, time, event)
      if ((context).equal?(0))
        return false
      end
      drag_context = GdkDragContext.new
      OS.memmove(drag_context, context, GdkDragContext.attr_sizeof)
      if ((drag_context.attr_targets).equal?(0))
        return false
      end
      # get allowed operations
      style = get_style
      operations = os_op_to_op(drag_context.attr_actions) & style
      if ((operations).equal?(DND::DROP_NONE))
        return false
      end
      # get current operation
      operation = get_operation_from_key_state
      @key_operation = operation
      if ((operation).equal?(DND::DROP_DEFAULT))
        if (((style & DND::DROP_DEFAULT)).equal?(0))
          operation = !((operations & DND::DROP_MOVE)).equal?(0) ? DND::DROP_MOVE : DND::DROP_NONE
        end
      else
        if (((operation & operations)).equal?(0))
          operation = DND::DROP_NONE
        end
      end
      # Get allowed transfer types
      length = OS.g_list_length(drag_context.attr_targets)
      data_types = Array.typed(TransferData).new(0) { nil }
      i = 0
      while i < length
        # int
        p_data = OS.g_list_nth(drag_context.attr_targets, i)
        gtk_target_pair = GtkTargetPair.new
        OS.memmove(gtk_target_pair, p_data, GtkTargetPair.attr_sizeof)
        data = TransferData.new
        data.attr_type = gtk_target_pair.attr_target
        j = 0
        while j < @transfer_agents.attr_length
          transfer = @transfer_agents[j]
          if (!(transfer).nil? && transfer.is_supported_type(data))
            new_data_types = Array.typed(TransferData).new(data_types.attr_length + 1) { nil }
            System.arraycopy(data_types, 0, new_data_types, 0, data_types.attr_length)
            new_data_types[data_types.attr_length] = data
            data_types = new_data_types
            break
          end
          j += 1
        end
        i += 1
      end
      if ((data_types.attr_length).equal?(0))
        return false
      end
      # int
      window = OS._gtk_widget_window(@control.attr_handle)
      origin_x = Array.typed(::Java::Int).new(1) { 0 }
      origin_y = Array.typed(::Java::Int).new(1) { 0 }
      OS.gdk_window_get_origin(window, origin_x, origin_y)
      coordinates = Point.new(origin_x[0] + x, origin_y[0] + y)
      event.attr_widget = self
      event.attr_x = coordinates.attr_x
      event.attr_y = coordinates.attr_y
      event.attr_time = time
      event.attr_feedback = DND::FEEDBACK_SELECT
      event.attr_data_types = data_types
      event.attr_data_type = data_types[0]
      event.attr_operations = operations
      event.attr_detail = operation
      if (!(@drop_effect).nil?)
        event.attr_item = @drop_effect.get_item(coordinates.attr_x, coordinates.attr_y)
      end
      return true
    end
    
    typesig { [::Java::Long, DNDEvent] }
    def update_drag_over_hover(delay, event)
      if ((delay).equal?(0))
        @drag_over_start = 0
        @drag_over_event = nil
        return
      end
      @drag_over_start = System.current_time_millis + delay
      if ((@drag_over_event).nil?)
        @drag_over_event = DNDEvent.new
      end
      @drag_over_event.attr_x = event.attr_x
      @drag_over_event.attr_y = event.attr_y
      data_types = Array.typed(TransferData).new(event.attr_data_types.attr_length) { nil }
      System.arraycopy(event.attr_data_types, 0, data_types, 0, data_types.attr_length)
      @drag_over_event.attr_data_types = data_types
      @drag_over_event.attr_operations = event.attr_operations
      @drag_over_event.attr_time = event.attr_time
    end
    
    private
    alias_method :initialize__drop_target, :initialize
  end
  
end
