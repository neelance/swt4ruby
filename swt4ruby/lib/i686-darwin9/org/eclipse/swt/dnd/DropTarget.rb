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
  module DropTargetImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Carbon
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
    
    attr_accessor :feedback
    alias_method :attr_feedback, :feedback
    undef_method :feedback
    alias_method :attr_feedback=, :feedback=
    undef_method :feedback=
    
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
    
    # workaround - Simulate events when mouse is not moving
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
    
    class_module.module_eval {
      # workaround - OS events are relative to the application, not the control.
      # Track which control is the current target to determine when drag and
      # drop enters or leaves a widget.
      
      def current_drop_target
        defined?(@@current_drop_target) ? @@current_drop_target : @@current_drop_target= nil
      end
      alias_method :attr_current_drop_target, :current_drop_target
      
      def current_drop_target=(value)
        @@current_drop_target = value
      end
      alias_method :attr_current_drop_target=, :current_drop_target=
      
      const_set_lazy(:DEFAULT_DROP_TARGET_EFFECT) { "DEFAULT_DROP_TARGET_EFFECT" }
      const_attr_reader  :DEFAULT_DROP_TARGET_EFFECT
      
      # $NON-NLS-1$
      const_set_lazy(:DRAGOVER_HYSTERESIS) { 50 }
      const_attr_reader  :DRAGOVER_HYSTERESIS
      
      
      def drag_tracking_handler
        defined?(@@drag_tracking_handler) ? @@drag_tracking_handler : @@drag_tracking_handler= nil
      end
      alias_method :attr_drag_tracking_handler, :drag_tracking_handler
      
      def drag_tracking_handler=(value)
        @@drag_tracking_handler = value
      end
      alias_method :attr_drag_tracking_handler=, :drag_tracking_handler=
      
      
      def drag_receive_handler
        defined?(@@drag_receive_handler) ? @@drag_receive_handler : @@drag_receive_handler= nil
      end
      alias_method :attr_drag_receive_handler, :drag_receive_handler
      
      def drag_receive_handler=(value)
        @@drag_receive_handler = value
      end
      alias_method :attr_drag_receive_handler=, :drag_receive_handler=
      
      when_class_loaded do
        self.attr_drag_tracking_handler = Callback.new(DropTarget.class, "DragTrackingHandler", 4) # $NON-NLS-1$
        drag_tracking_handler_address = self.attr_drag_tracking_handler.get_address
        if ((drag_tracking_handler_address).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        self.attr_drag_receive_handler = Callback.new(DropTarget.class, "DragReceiveHandler", 3) # $NON-NLS-1$
        drag_receive_handler_address = self.attr_drag_receive_handler.get_address
        if ((drag_receive_handler_address).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        OS._install_tracking_handler(drag_tracking_handler_address, 0, nil)
        OS._install_receive_handler(drag_receive_handler_address, 0, nil)
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
      @feedback = 0
      @selected_data_type = nil
      @selected_operation = 0
      @key_operation = 0
      @drag_over_start = 0
      @drag_over_heartbeat = nil
      @drag_over_event = nil
      super(control, check_style(style))
      @transfer_agents = Array.typed(Transfer).new(0) { nil }
      @feedback = DND::FEEDBACK_NONE
      @key_operation = -1
      @control = control
      if ((self.attr_drag_tracking_handler).nil? || (self.attr_drag_tracking_handler).nil?)
        DND.error(DND::ERROR_CANNOT_INIT_DROP)
      end
      if (!(control.get_data(DND::DROP_TARGET_KEY)).nil?)
        DND.error(DND::ERROR_CANNOT_INIT_DROP)
      end
      control.set_data(DND::DROP_TARGET_KEY, self)
      @control_listener = Class.new(Listener.class == Class ? Listener : Object) do
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
            allowed_operations = self.attr_drag_over_event.attr_operations
            allowed_types = self.attr_drag_over_event.attr_data_types
            # pass a copy of data types in to listeners in case application modifies it
            data_types = Array.typed(TransferData).new(allowed_types.attr_length) { nil }
            System.arraycopy(allowed_types, 0, data_types, 0, data_types.attr_length)
            event = DNDEvent.new
            event.attr_widget = self.attr_drag_over_event.attr_widget
            event.attr_x = self.attr_drag_over_event.attr_x
            event.attr_y = self.attr_drag_over_event.attr_y
            event.attr_time = RJava.cast_to_int(time)
            event.attr_feedback = DND::FEEDBACK_SELECT
            event.attr_data_types = data_types
            event.attr_data_type = self.attr_selected_data_type
            event.attr_operations = self.attr_drag_over_event.attr_operations
            event.attr_detail = self.attr_selected_operation
            if (!(self.attr_drop_effect).nil?)
              event.attr_item = self.attr_drop_effect.get_item(event.attr_x, event.attr_y)
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
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      def _drag_receive_handler(the_window, handler_ref_con, the_drag)
        target = _find_drop_target(the_window, the_drag)
        if ((target).nil?)
          return OS.attr_no_err
        end
        return target.drag_receive_handler(the_window, handler_ref_con, the_drag)
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _drag_tracking_handler(message, the_window, handler_ref_con, the_drag)
        if ((message).equal?(OS.attr_k_drag_tracking_leave_handler) || (message).equal?(OS.attr_k_drag_tracking_enter_handler))
          self.attr_current_drop_target = nil
          return OS.attr_no_err
        end
        target = _find_drop_target(the_window, the_drag)
        if (!(self.attr_current_drop_target).nil?)
          if ((target).nil? || !(self.attr_current_drop_target.attr_control.attr_handle).equal?(target.attr_control.attr_handle))
            self.attr_current_drop_target.drag_tracking_handler(OS.attr_k_drag_tracking_leave_window, the_window, handler_ref_con, the_drag)
            self.attr_current_drop_target = target
            message = OS.attr_k_drag_tracking_enter_window
          end
        else
          self.attr_current_drop_target = target
          message = OS.attr_k_drag_tracking_enter_window
        end
        if ((target).nil?)
          return OS.attr_no_err
        end
        return target.drag_tracking_handler(message, the_window, handler_ref_con, the_drag)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def _find_drop_target(the_window, the_drag)
        display = Display.find_display(JavaThread.current_thread)
        if ((display).nil? || display.is_disposed)
          return nil
        end
        mouse = Point.new
        OS._get_drag_mouse(the_drag, mouse, nil)
        the_root = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_root_control(the_window, the_root)
        the_control = Array.typed(::Java::Int).new(1) { 0 }
        rect = Rect.new
        OS._get_window_bounds(the_window, RJava.cast_to_short(OS.attr_k_window_content_rgn), rect)
        in_point = CGPoint.new
        in_point.attr_x = mouse.attr_h - rect.attr_left
        in_point.attr_y = mouse.attr_v - rect.attr_top
        OS._hiview_get_subview_hit(the_root[0], in_point, true, the_control)
        if (!OS._is_control_enabled(the_control[0]))
          return nil
        end
        widget = display.find_widget(the_control[0])
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
      valid_name = DropTarget.class.get_name
      if (!(valid_name == name))
        DND.error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def drag_receive_handler(the_window, handler_ref_con, the_drag)
      update_drag_over_hover(0, nil)
      if ((@key_operation).equal?(-1))
        return OS.attr_drag_not_accepted_err
      end
      event = DNDEvent.new
      event.attr_widget = self
      event.attr_time = RJava.cast_to_int(System.current_time_millis)
      event.attr_detail = DND::DROP_NONE
      notify_listeners(DND::DragLeave, event)
      event = DNDEvent.new
      if (!set_event_data(the_drag, event))
        return OS.attr_drag_not_accepted_err
      end
      @key_operation = -1
      allowed_operations = event.attr_operations
      allowed_data_types = Array.typed(TransferData).new(event.attr_data_types.attr_length) { nil }
      System.arraycopy(event.attr_data_types, 0, allowed_data_types, 0, event.attr_data_types.attr_length)
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
      if (!(@selected_data_type).nil? && !((event.attr_detail & allowed_operations)).equal?(0))
        @selected_operation = event.attr_detail
      end
      if ((@selected_operation).equal?(DND::DROP_NONE))
        # this was not a successful drop
        return OS.attr_drag_not_accepted_err
      end
      # ask drag source for dropped data
      data = Array.typed(::Java::Byte).new(0) { 0 }
      # locate all the items with data of the desired type
      num_items = Array.typed(::Java::Short).new(1) { 0 }
      OS._count_drag_items(the_drag, num_items)
      i = 0
      while i < num_items[0]
        the_item_ref = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_drag_item_reference_number(the_drag, RJava.cast_to_short((i + 1)), the_item_ref)
        size = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_flavor_data_size(the_drag, the_item_ref[0], @selected_data_type.attr_type, size)
        if (size[0] > 0)
          buffer = Array.typed(::Java::Byte).new(size[0]) { 0 }
          OS._get_flavor_data(the_drag, the_item_ref[0], @selected_data_type.attr_type, buffer, size, 0)
          new_data = Array.typed(::Java::Byte).new(data.attr_length + 1) { 0 }
          System.arraycopy(data, 0, new_data, 0, data.attr_length)
          new_data[data.attr_length] = buffer
          data = new_data
        end
        i += 1
      end
      # Get Data in a Java format
      object = nil
      i_ = 0
      while i_ < @transfer_agents.attr_length
        transfer = @transfer_agents[i_]
        if (!(transfer).nil? && transfer.is_supported_type(@selected_data_type))
          @selected_data_type.attr_data = data
          object = transfer.native_to_java(@selected_data_type)
          break
        end
        i_ += 1
      end
      if ((object).nil?)
        @selected_operation = DND::DROP_NONE
      end
      event.attr_data_type = @selected_data_type
      event.attr_detail = @selected_operation
      event.attr_data = object
      notify_listeners(DND::Drop, event)
      @selected_operation = DND::DROP_NONE
      if (((allowed_operations & event.attr_detail)).equal?(event.attr_detail))
        @selected_operation = event.attr_detail
      end
      # notify source of action taken
      action = op_to_os_op(@selected_operation)
      OS._set_drag_drop_action(the_drag, action)
      return ((@selected_operation).equal?(DND::DROP_NONE)) ? OS.attr_drag_not_accepted_err : OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def drag_tracking_handler(message, the_window, handler_ref_con, the_drag)
      if ((message).equal?(OS.attr_k_drag_tracking_leave_window))
        update_drag_over_hover(0, nil)
        OS._set_theme_cursor(OS.attr_k_theme_arrow_cursor)
        if ((@key_operation).equal?(-1))
          return OS.attr_drag_not_accepted_err
        end
        @key_operation = -1
        event = DNDEvent.new
        event.attr_widget = self
        event.attr_time = RJava.cast_to_int(System.current_time_millis)
        event.attr_detail = DND::DROP_NONE
        notify_listeners(DND::DragLeave, event)
        return OS.attr_no_err
      end
      old_key_operation = @key_operation
      if ((message).equal?(OS.attr_k_drag_tracking_enter_window))
        @selected_data_type = nil
        @selected_operation = 0
      end
      event = DNDEvent.new
      if (!set_event_data(the_drag, event))
        @key_operation = -1
        OS._set_theme_cursor(OS.attr_k_theme_not_allowed_cursor)
        return OS.attr_drag_not_accepted_err
      end
      allowed_operations = event.attr_operations
      allowed_data_types = Array.typed(TransferData).new(event.attr_data_types.attr_length) { nil }
      System.arraycopy(event.attr_data_types, 0, allowed_data_types, 0, allowed_data_types.attr_length)
      case (message)
      when OS.attr_k_drag_tracking_enter_window
        event.attr_type = DND::DragEnter
      when OS.attr_k_drag_tracking_in_window
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
      OS._set_drag_drop_action(the_drag, op_to_os_op(@selected_operation))
      case (@selected_operation)
      when DND::DROP_COPY
        OS._set_theme_cursor(OS.attr_k_theme_copy_arrow_cursor)
      when DND::DROP_LINK
        OS._set_theme_cursor(OS.attr_k_theme_alias_arrow_cursor)
      when DND::DROP_MOVE
        OS._set_theme_cursor(OS.attr_k_theme_arrow_cursor)
      else
        OS._set_theme_cursor(OS.attr_k_theme_not_allowed_cursor)
      end
      if ((message).equal?(OS.attr_k_drag_tracking_enter_window))
        @drag_over_heartbeat.run
      end
      return OS.attr_no_err
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
    
    typesig { [::Java::Int] }
    def get_operation_from_key_state(the_drag)
      modifiers = Array.typed(::Java::Short).new(1) { 0 }
      OS._get_drag_modifiers(the_drag, modifiers, nil, nil)
      option = ((modifiers[0] & OS.attr_option_key)).equal?(OS.attr_option_key)
      command = ((modifiers[0] & OS.attr_cmd_key)).equal?(OS.attr_cmd_key)
      if (option && command)
        return DND::DROP_LINK
      end
      if (option)
        return DND::DROP_COPY
      end
      if (command)
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
      if (!(@control_listener).nil?)
        @control.remove_listener(SWT::Dispose, @control_listener)
      end
      @control_listener = nil
      @control.set_data(DND::DROP_TARGET_KEY, nil)
      @transfer_agents = nil
      @control = nil
    end
    
    typesig { [::Java::Int] }
    def op_to_os_op(operation)
      os_operation = 0
      if (!((operation & DND::DROP_COPY)).equal?(0))
        os_operation |= OS.attr_k_drag_action_copy
      end
      if (!((operation & DND::DROP_LINK)).equal?(0))
        os_operation |= OS.attr_k_drag_action_alias
      end
      if (!((operation & DND::DROP_MOVE)).equal?(0))
        os_operation |= OS.attr_k_drag_action_move
      end
      return os_operation
    end
    
    typesig { [::Java::Int] }
    def os_op_to_op(os_operation)
      operation = 0
      if (!((os_operation & OS.attr_k_drag_action_copy)).equal?(0))
        operation |= DND::DROP_COPY
      end
      if (!((os_operation & OS.attr_k_drag_action_alias)).equal?(0))
        operation |= DND::DROP_LINK
      end
      if (!((os_operation & OS.attr_k_drag_action_move)).equal?(0))
        operation |= DND::DROP_MOVE
      end
      if ((os_operation).equal?(OS.attr_k_drag_action_all))
        operation = DND::DROP_COPY | DND::DROP_MOVE | DND::DROP_LINK
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
    
    typesig { [::Java::Int, DNDEvent] }
    def set_event_data(the_drag, event)
      if ((the_drag).equal?(0))
        return false
      end
      # get allowed operations
      style = get_style
      out_actions = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_drag_allowable_actions(the_drag, out_actions)
      operations = os_op_to_op(out_actions[0]) & style
      if ((operations).equal?(DND::DROP_NONE))
        return false
      end
      # get current operation
      operation = get_operation_from_key_state(the_drag)
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
      # get allowed transfer types
      num_items = Array.typed(::Java::Short).new(1) { 0 }
      OS._count_drag_items(the_drag, num_items)
      flavors = Array.typed(::Java::Int).new(10) { 0 }
      index = -1
      # Get a unique list of flavors
      i = 0
      while i < num_items[0]
        the_item_ref = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_drag_item_reference_number(the_drag, RJava.cast_to_short((i + 1)), the_item_ref)
        num_flavors = Array.typed(::Java::Short).new(1) { 0 }
        OS._count_drag_item_flavors(the_drag, the_item_ref[0], num_flavors)
        the_type = Array.typed(::Java::Int).new(1) { 0 }
        j = 0
        while j < num_flavors[0]
          the_type[0] = 0
          if ((OS._get_flavor_type(the_drag, the_item_ref[0], RJava.cast_to_short((j + 1)), the_type)).equal?(OS.attr_no_err))
            unique = true
            k = 0
            while k < flavors.attr_length
              if ((flavors[k]).equal?(the_type[0]))
                unique = false
                break
              end
              k += 1
            end
            if (unique)
              if ((index).equal?(flavors.attr_length - 1))
                temp = Array.typed(::Java::Int).new(flavors.attr_length + 10) { 0 }
                System.arraycopy(flavors, 0, temp, 0, flavors.attr_length)
                flavors = temp
              end
              flavors[(index += 1)] = the_type[0]
            end
          end
          j += 1
        end
        i += 1
      end
      if ((index).equal?(-1))
        return false
      end
      data_types = Array.typed(TransferData).new(index + 1) { nil }
      index = -1
      i_ = 0
      while i_ < data_types.attr_length
        if (!(flavors[i_]).equal?(0))
          data = TransferData.new
          data.attr_type = flavors[i_]
          j = 0
          while j < @transfer_agents.attr_length
            transfer = @transfer_agents[j]
            if (!(transfer).nil? && transfer.is_supported_type(data))
              data_types[(index += 1)] = data
              break
            end
            j += 1
          end
        end
        i_ += 1
      end
      if ((index).equal?(-1))
        return false
      end
      if (index < data_types.attr_length - 1)
        temp = Array.typed(TransferData).new(index + 1) { nil }
        System.arraycopy(data_types, 0, temp, 0, index + 1)
        data_types = temp
      end
      mouse = Point.new
      OS._get_drag_mouse(the_drag, mouse, nil)
      event.attr_widget = self
      event.attr_x = mouse.attr_h
      event.attr_y = mouse.attr_v
      event.attr_time = RJava.cast_to_int(System.current_time_millis)
      event.attr_feedback = DND::FEEDBACK_SELECT
      event.attr_data_types = data_types
      event.attr_data_type = data_types[0]
      event.attr_operations = operations
      event.attr_detail = operation
      if (!(@drop_effect).nil?)
        event.attr_item = @drop_effect.get_item(event.attr_x, event.attr_y)
      end
      return true
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
      @transfer_agents = transfer_agents
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
      @drag_over_event.attr_data_types = event.attr_data_types
      @drag_over_event.attr_operations = event.attr_operations
      @drag_over_event.attr_data_type = event.attr_data_type
      @drag_over_event.attr_detail = event.attr_detail
    end
    
    private
    alias_method :initialize__drop_target, :initialize
  end
  
end
