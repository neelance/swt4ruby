require "rjava"

# Copyright (c) 2000, 2009 IBM Corporation and others.
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
      include ::Java::Util
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Cocoa
      include ::Org::Eclipse::Swt::Widgets
    }
  end
  
  # Class <code>DropTarget</code> defines the target object for a drag and drop transfer.
  # 
  # <p>IMPORTANT: This class is <em>not</em> intended to be subclassed.</p>
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
  # @noextend This class is not intended to be subclassed by clients.
  class DropTarget < DropTargetImports.const_get :Widget
    include_class_members DropTargetImports
    
    class_module.module_eval {
      
      def drop_target2args
        defined?(@@drop_target2args) ? @@drop_target2args : @@drop_target2args= nil
      end
      alias_method :attr_drop_target2args, :drop_target2args
      
      def drop_target2args=(value)
        @@drop_target2args = value
      end
      alias_method :attr_drop_target2args=, :drop_target2args=
      
      
      def drop_target3args
        defined?(@@drop_target3args) ? @@drop_target3args : @@drop_target3args= nil
      end
      alias_method :attr_drop_target3args, :drop_target3args
      
      def drop_target3args=(value)
        @@drop_target3args = value
      end
      alias_method :attr_drop_target3args=, :drop_target3args=
      
      
      def drop_target6args
        defined?(@@drop_target6args) ? @@drop_target6args : @@drop_target6args= nil
      end
      alias_method :attr_drop_target6args, :drop_target6args
      
      def drop_target6args=(value)
        @@drop_target6args = value
      end
      alias_method :attr_drop_target6args=, :drop_target6args=
      
      # long
      
      def proc2args
        defined?(@@proc2args) ? @@proc2args : @@proc2args= 0
      end
      alias_method :attr_proc2args, :proc2args
      
      def proc2args=(value)
        @@proc2args = value
      end
      alias_method :attr_proc2args=, :proc2args=
      
      
      def proc3args
        defined?(@@proc3args) ? @@proc3args : @@proc3args= 0
      end
      alias_method :attr_proc3args, :proc3args
      
      def proc3args=(value)
        @@proc3args = value
      end
      alias_method :attr_proc3args=, :proc3args=
      
      
      def proc6args
        defined?(@@proc6args) ? @@proc6args : @@proc6args= 0
      end
      alias_method :attr_proc6args, :proc6args
      
      def proc6args=(value)
        @@proc6args = value
      end
      alias_method :attr_proc6args=, :proc6args=
      
      when_class_loaded do
        clazz = DropTarget
        self.attr_drop_target2args = Callback.new(clazz, "dropTargetProc", 2)
        self.attr_proc2args = self.attr_drop_target2args.get_address
        if ((self.attr_proc2args).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        self.attr_drop_target3args = Callback.new(clazz, "dropTargetProc", 3)
        self.attr_proc3args = self.attr_drop_target3args.get_address
        if ((self.attr_proc3args).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        self.attr_drop_target6args = Callback.new(clazz, "dropTargetProc", 6)
        self.attr_proc6args = self.attr_drop_target6args.get_address
        if ((self.attr_proc6args).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
      end
      
      
      def drop_not_allowed
        defined?(@@drop_not_allowed) ? @@drop_not_allowed : @@drop_not_allowed= false
      end
      alias_method :attr_drop_not_allowed, :drop_not_allowed
      
      def drop_not_allowed=(value)
        @@drop_not_allowed = value
      end
      alias_method :attr_drop_not_allowed=, :drop_not_allowed=
    }
    
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
    
    class_module.module_eval {
      const_set_lazy(:DEFAULT_DROP_TARGET_EFFECT) { "DEFAULT_DROP_TARGET_EFFECT" }
      const_attr_reader  :DEFAULT_DROP_TARGET_EFFECT
    }
    
    typesig { [] }
    # $NON-NLS-1$
    def add_drag_handlers
      # Our strategy here is to dynamically add methods to the control's class that are required
      # by NSDraggingDestination. Then, when setTransfer is called, we just register
      # the types with the Control's NSView and AppKit will call the methods in the protocol
      # when a drag goes over the view.
      # long
      cls = OS.object_get_class(@control.attr_view.attr_id)
      if ((cls).equal?(0))
        DND.error(DND::ERROR_CANNOT_INIT_DROP)
      end
      # If we already added it, no need to do it again.
      # long
      proc_ptr = OS.class_get_method_implementation(cls, OS.attr_sel_dragging_entered_)
      if ((proc_ptr).equal?(self.attr_proc3args))
        return
      end
      # Add the NSDraggingDestination callbacks
      OS.class_add_method(cls, OS.attr_sel_dragging_entered_, self.attr_proc3args, "@:@")
      OS.class_add_method(cls, OS.attr_sel_dragging_updated_, self.attr_proc3args, "@:@")
      OS.class_add_method(cls, OS.attr_sel_dragging_exited_, self.attr_proc3args, "@:@")
      OS.class_add_method(cls, OS.attr_sel_perform_drag_operation_, self.attr_proc3args, "@:@")
      OS.class_add_method(cls, OS.attr_sel_wants_periodic_dragging_updates, self.attr_proc2args, "@:")
      if ((OS.class_get_superclass(cls)).equal?(OS.attr_class_nsoutline_view))
        OS.class_add_method(cls, OS.attr_sel_outline_view_accept_drop_item_child_index_, self.attr_proc6args, "@:@@@i")
        OS.class_add_method(cls, OS.attr_sel_outline_view_validate_drop_proposed_item_proposed_child_index_, self.attr_proc6args, "@:@@@i")
      else
        if ((OS.class_get_superclass(cls)).equal?(OS.attr_class_nstable_view))
          OS.class_add_method(cls, OS.attr_sel_table_view_accept_drop_row_drop_operation_, self.attr_proc6args, "@:@@@i")
          OS.class_add_method(cls, OS.attr_sel_table_view_validate_drop_proposed_row_proposed_drop_operation_, self.attr_proc6args, "@:@@@i")
        end
      end
    end
    
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def call_super(id, sel, arg0)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      return OS.objc_msg_send_super(super_struct, sel, arg0)
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        if ((style).equal?(SWT::NONE))
          return DND::DROP_MOVE
        end
        return style
      end
    }
    
    typesig { [] }
    def check_subclass
      name = get_class.get_name
      valid_name = DropTarget.get_name
      if (!(valid_name == name))
        DND.error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, NSObject] }
    # long
    # long
    def dragging_entered(id, sel, sender)
      if ((sender).nil?)
        return OS::NSDragOperationNone
      end
      event = DNDEvent.new
      if (!set_event_data(sender, event))
        @key_operation = -1
        set_drop_not_allowed
        return OS::NSDragOperationNone
      end
      allowed_operations = event.attr_operations
      allowed_data_types = Array.typed(TransferData).new(event.attr_data_types.attr_length) { nil }
      System.arraycopy(event.attr_data_types, 0, allowed_data_types, 0, allowed_data_types.attr_length)
      @selected_data_type = nil
      @selected_operation = DND::DROP_NONE
      notify_listeners(DND::DragEnter, event)
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
      if (((@selected_operation).equal?(DND::DROP_NONE)) && ((OS::PTR_SIZEOF).equal?(4)))
        set_drop_not_allowed
      else
        clear_drop_not_allowed
      end
      if (NSObject.new(id).is_kind_of_class(OS.attr_class_nstable_view))
        # 64
        return RJava.cast_to_int(call_super(id, sel, sender.attr_id))
      end
      return op_to_os_op(@selected_operation)
    end
    
    typesig { [::Java::Int, ::Java::Int, NSObject] }
    # long
    # long
    def dragging_exited(id, sel, sender)
      clear_drop_not_allowed
      if ((@key_operation).equal?(-1))
        return
      end
      @key_operation = -1
      event = DNDEvent.new
      event.attr_widget = self
      event.attr_time = RJava.cast_to_int(System.current_time_millis)
      event.attr_detail = DND::DROP_NONE
      notify_listeners(DND::DragLeave, event)
      if (NSObject.new(id).is_kind_of_class(OS.attr_class_nstable_view))
        call_super(id, sel, sender.attr_id)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, NSObject] }
    # long
    # long
    def dragging_updated(id, sel, sender)
      if ((sender).nil?)
        return OS::NSDragOperationNone
      end
      old_key_operation = @key_operation
      event = DNDEvent.new
      if (!set_event_data(sender, event))
        @key_operation = -1
        set_drop_not_allowed
        return OS::NSDragOperationNone
      end
      allowed_operations = event.attr_operations
      allowed_data_types = Array.typed(TransferData).new(event.attr_data_types.attr_length) { nil }
      System.arraycopy(event.attr_data_types, 0, allowed_data_types, 0, allowed_data_types.attr_length)
      if ((@key_operation).equal?(old_key_operation))
        event.attr_type = DND::DragOver
        event.attr_data_type = @selected_data_type
        event.attr_detail = @selected_operation
      else
        event.attr_type = DND::DragOperationChanged
        event.attr_data_type = @selected_data_type
      end
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
      if (!(@selected_data_type).nil? && !((event.attr_detail & allowed_operations)).equal?(0))
        @selected_operation = event.attr_detail
      end
      if (((@selected_operation).equal?(DND::DROP_NONE)) && ((OS::PTR_SIZEOF).equal?(4)))
        set_drop_not_allowed
      else
        clear_drop_not_allowed
      end
      if (NSObject.new(id).is_kind_of_class(OS.attr_class_nstable_view))
        # 64
        return RJava.cast_to_int(call_super(id, sel, sender.attr_id))
      end
      return op_to_os_op(@selected_operation)
    end
    
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
      super(control, check_style(style))
      @transfer_agents = Array.typed(Transfer).new(0) { nil }
      @feedback = DND::FEEDBACK_NONE
      @key_operation = -1
      @control = control
      if (!(control.get_data(DND::DROP_TARGET_KEY)).nil?)
        DND.error(DND::ERROR_CANNOT_INIT_DROP)
      end
      control.set_data(DND::DROP_TARGET_KEY, self)
      @control_listener = Class.new(Listener.class == Class ? Listener : Object) do
        local_class_in DropTarget
        include_class_members DropTarget
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          if (!@local_class_parent.is_disposed)
            @local_class_parent.dispose
          end
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      control.add_listener(SWT::Dispose, @control_listener)
      self.add_listener(SWT::Dispose, Class.new(Listener.class == Class ? Listener : Object) do
        local_class_in DropTarget
        include_class_members DropTarget
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          on_dispose
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
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
      add_drag_handlers
    end
    
    class_module.module_eval {
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def drop_target_proc(id, sel)
        display = Display.find_display(JavaThread.current_thread)
        if ((display).nil? || display.is_disposed)
          return 0
        end
        widget = display.find_widget(id)
        if ((widget).nil?)
          return 0
        end
        dt = widget.get_data(DND::DROP_TARGET_KEY)
        if ((dt).nil?)
          return 0
        end
        if ((sel).equal?(OS.attr_sel_wants_periodic_dragging_updates))
          return dt.wants_periodic_dragging_updates(id, sel) ? 1 : 0
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def drop_target_proc(id, sel, arg0)
        display = Display.find_display(JavaThread.current_thread)
        if ((display).nil? || display.is_disposed)
          return 0
        end
        widget = display.find_widget(id)
        if ((widget).nil?)
          return 0
        end
        dt = widget.get_data(DND::DROP_TARGET_KEY)
        if ((dt).nil?)
          return 0
        end
        # arg0 is _always_ the sender, and implements NSDraggingInfo.
        # Looks like an NSObject for our purposes, though.
        sender = NSObject.new(arg0)
        if ((sel).equal?(OS.attr_sel_dragging_entered_))
          return dt.dragging_entered(id, sel, sender)
        else
          if ((sel).equal?(OS.attr_sel_dragging_updated_))
            return dt.dragging_updated(id, sel, sender)
          else
            if ((sel).equal?(OS.attr_sel_dragging_exited_))
              dt.dragging_exited(id, sel, sender)
            else
              if ((sel).equal?(OS.attr_sel_perform_drag_operation_))
                return dt.perform_drag_operation(id, sel, sender) ? 1 : 0
              end
            end
          end
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      # long
      # long
      def drop_target_proc(id, sel, arg0, arg1, arg2, arg3)
        display = Display.find_display(JavaThread.current_thread)
        if ((display).nil? || display.is_disposed)
          return 0
        end
        widget = display.find_widget(id)
        if ((widget).nil?)
          return 0
        end
        dt = widget.get_data(DND::DROP_TARGET_KEY)
        if ((dt).nil?)
          return 0
        end
        if ((sel).equal?(OS.attr_sel_outline_view_accept_drop_item_child_index_))
          return dt.outline_view_accept_drop_item_child_index(id, sel, arg0, arg1, arg2, arg3) ? 1 : 0
        else
          if ((sel).equal?(OS.attr_sel_outline_view_validate_drop_proposed_item_proposed_child_index_))
            return dt.outline_view_validate_drop_proposed_item_proposed_child_index(id, sel, arg0, arg1, arg2, arg3)
          else
            if ((sel).equal?(OS.attr_sel_table_view_accept_drop_row_drop_operation_))
              return dt.table_view_accept_drop_row_drop_operation(id, sel, arg0, arg1, arg2, arg3) ? 1 : 0
            else
              if ((sel).equal?(OS.attr_sel_table_view_validate_drop_proposed_row_proposed_drop_operation_))
                return dt.table_view_validate_drop_proposed_row_proposed_drop_operation(id, sel, arg0, arg1, arg2, arg3)
              end
            end
          end
        end
        return 0
      end
    }
    
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
      # The NSDraggingInfo object already combined the modifier keys with the
      # drag source's allowed events. This might be better accomplished by diffing
      # the base drag source mask with the active drag state mask instead of snarfing
      # the current event.
      # See documentation on [NSDraggingInfo draggingSourceOperationMask] for the
      # correct Cocoa behavior.  Control + Option or Command is NSDragOperationGeneric,
      # or DND.DROP_DEFAULT in the SWT.
      curr_event = NSApplication.shared_application.current_event
      # long
      modifiers = curr_event.modifier_flags
      option = ((modifiers & OS::NSAlternateKeyMask)).equal?(OS::NSAlternateKeyMask)
      control = ((modifiers & OS::NSControlKeyMask)).equal?(OS::NSControlKeyMask)
      if (control && option)
        return DND::DROP_DEFAULT
      end
      if (control)
        return DND::DROP_LINK
      end
      if (option)
        return DND::DROP_COPY
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
      # Unregister the control as a drop target.
      @control.attr_view.unregister_dragged_types
      @control = nil
    end
    
    typesig { [::Java::Int] }
    def op_to_os_op(operation)
      os_operation = 0
      if (!((operation & DND::DROP_COPY)).equal?(0))
        os_operation |= OS::NSDragOperationCopy
      end
      if (!((operation & DND::DROP_LINK)).equal?(0))
        os_operation |= OS::NSDragOperationLink
      end
      if (!((operation & DND::DROP_MOVE)).equal?(0))
        os_operation |= OS::NSDragOperationMove
      end
      if (!((operation & DND::DROP_TARGET_MOVE)).equal?(0))
        os_operation |= OS::NSDragOperationDelete
      end
      return os_operation
    end
    
    typesig { [::Java::Int] }
    # long
    def os_op_to_op(os_operation)
      operation = 0
      if (!((os_operation & OS::NSDragOperationCopy)).equal?(0))
        operation |= DND::DROP_COPY
      end
      if (!((os_operation & OS::NSDragOperationLink)).equal?(0))
        operation |= DND::DROP_LINK
      end
      if (!((os_operation & OS::NSDragOperationDelete)).equal?(0))
        operation |= DND::DROP_TARGET_MOVE
      end
      if (!((os_operation & OS::NSDragOperationMove)).equal?(0))
        operation |= DND::DROP_MOVE
      end
      if ((os_operation).equal?(OS::NSDragOperationEvery))
        operation = DND::DROP_COPY | DND::DROP_MOVE | DND::DROP_LINK
      end
      return operation
    end
    
    typesig { [NSObject] }
    def drop(sender)
      clear_drop_not_allowed
      event = DNDEvent.new
      event.attr_widget = self
      event.attr_time = RJava.cast_to_int(System.current_time_millis)
      if (!(@drop_effect).nil?)
        mouse_location = sender.dragging_location
        global_loc = sender.dragging_destination_window.convert_base_to_screen(mouse_location)
        event.attr_item = @drop_effect.get_item(RJava.cast_to_int(global_loc.attr_x), RJava.cast_to_int(global_loc.attr_y))
      end
      event.attr_detail = DND::DROP_NONE
      notify_listeners(DND::DragLeave, event)
      event = DNDEvent.new
      if (!set_event_data(sender, event))
        return false
      end
      @key_operation = -1
      allowed_operations = event.attr_operations
      allowed_data_types = Array.typed(TransferData).new(event.attr_data_types.attr_length) { nil }
      System.arraycopy(event.attr_data_types, 0, allowed_data_types, 0, event.attr_data_types.attr_length)
      event.attr_data_type = @selected_data_type
      event.attr_detail = @selected_operation
      notify_listeners(DND::DropAccept, event)
      @selected_data_type = nil
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
      @selected_operation = DND::DROP_NONE
      if (!(@selected_data_type).nil? && !((event.attr_detail & allowed_operations)).equal?(0))
        @selected_operation = event.attr_detail
      end
      if ((@selected_operation).equal?(DND::DROP_NONE))
        return false
      end
      # ask drag source for dropped data
      pasteboard = sender.dragging_pasteboard
      data = nil
      types = NSMutableArray.array_with_capacity(10)
      i = 0
      while i < @transfer_agents.attr_length
        transfer = @transfer_agents[i]
        type_names = transfer.get_type_names
        type_ids = transfer.get_type_ids
        j = 0
        while j < type_names.attr_length
          if ((@selected_data_type.attr_type).equal?(type_ids[j]))
            types.add_object(NSString.string_with(type_names[j]))
            break
          end
          j += 1
        end
        i += 1
      end
      type = pasteboard.available_type_from_array(types)
      tdata = TransferData.new
      if (!(type).nil?)
        tdata.attr_type = Transfer.register_type(type.get_string)
        if (type.is_equal(OS::NSStringPboardType) || type.is_equal(OS::NSHTMLPboardType) || type.is_equal(OS::NSRTFPboardType))
          tdata.attr_data = pasteboard.string_for_type(type)
        else
          if (type.is_equal(OS::NSURLPboardType))
            tdata.attr_data = NSURL._urlfrom_pasteboard(pasteboard)
          else
            if (type.is_equal(OS::NSFilenamesPboardType))
              tdata.attr_data = NSArray.new(pasteboard.property_list_for_type(type).attr_id)
            else
              tdata.attr_data = pasteboard.data_for_type(type)
            end
          end
        end
      end
      if (!(tdata.attr_data).nil?)
        data = tdata.attr_data
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
      return (!(@selected_operation).equal?(DND::DROP_NONE))
    end
    
    typesig { [::Java::Int, ::Java::Int, NSObject] }
    # long
    # long
    def perform_drag_operation(id, sel, sender)
      if (NSObject.new(id).is_kind_of_class(OS.attr_class_nstable_view))
        return !(call_super(id, sel, sender.attr_id)).equal?(0)
      end
      return drop(sender)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def outline_view_accept_drop_item_child_index(id, sel, outline_view, info, item, index)
      return drop(NSObject.new(info))
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    def outline_view_validate_drop_proposed_item_proposed_child_index(id, sel, outline_view, info, item, index)
      # TODO stop scrolling and expansion when app does not set FEEDBACK_SCROLL and/or FEEDBACK_EXPAND
      # TODO expansion animation and auto collapse not working because of outlineView:shouldExpandItem:
      widget = NSOutlineView.new(outline_view)
      sender = NSObject.new(info)
      pt = sender.dragging_location
      pt = widget.convert_point_from_view_(pt, nil)
      tree = get_control
      child_item = tree.get_item(Point.new(RJava.cast_to_int(pt.attr_x), RJava.cast_to_int(pt.attr_y)))
      if ((@feedback).equal?(0) || (child_item).nil?)
        widget.set_drop_item(nil, -1)
      else
        if (!((@feedback & DND::FEEDBACK_SELECT)).equal?(0))
          widget.set_drop_item(child_item.attr_handle, -1)
        else
          parent_item = child_item.get_parent_item
          child_index = 0
          parent_id = nil
          if (!(parent_item).nil?)
            parent_id = parent_item.attr_handle
            child_index = parent_item.index_of(child_item)
          else
            child_index = (get_control).index_of(child_item)
          end
          if (!((@feedback & DND::FEEDBACK_INSERT_AFTER)).equal?(0))
            widget.set_drop_item(parent_id, child_index + 1)
          end
          if (!((@feedback & DND::FEEDBACK_INSERT_BEFORE)).equal?(0))
            widget.set_drop_item(parent_id, child_index)
          end
        end
      end
      return op_to_os_op(@selected_operation)
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
    
    typesig { [NSObject, DNDEvent] }
    def set_event_data(dragging_state, event)
      if ((dragging_state).nil?)
        return false
      end
      # get allowed operations
      style = get_style
      # long
      allowed_actions = dragging_state.dragging_source_operation_mask
      operations = os_op_to_op(allowed_actions) & style
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
      # get allowed transfer types
      drag_pboard = dragging_state.dragging_pasteboard
      dragged_types = drag_pboard.types
      if ((dragged_types).nil?)
        return false
      end
      # long
      dragged_type_count = dragged_types.count
      data_types = Array.typed(TransferData).new(RJava.cast_to_int(dragged_type_count)) { nil }
      index = -1
      i = 0
      while i < dragged_type_count
        dragged_type = dragged_types.object_at_index(i)
        native_data_type = NSString.new(dragged_type)
        data = TransferData.new
        data.attr_type = Transfer.register_type(native_data_type.get_string)
        j = 0
        while j < @transfer_agents.attr_length
          transfer = @transfer_agents[j]
          if (!(transfer).nil? && transfer.is_supported_type(data))
            data_types[(index += 1)] = data
            break
          end
          j += 1
        end
        i += 1
      end
      if ((index).equal?(-1))
        return false
      end
      if (index < data_types.attr_length - 1)
        temp = Array.typed(TransferData).new(index + 1) { nil }
        System.arraycopy(data_types, 0, temp, 0, index + 1)
        data_types = temp
      end
      # Convert from window-relative to global coordinates, and flip it.
      mouse = dragging_state.dragging_location
      global_mouse = dragging_state.dragging_destination_window.convert_base_to_screen(mouse)
      screens_ = NSScreen.screens
      screen_rect = NSScreen.new(screens_.object_at_index(0)).frame
      global_mouse.attr_y = screen_rect.attr_height - global_mouse.attr_y
      event.attr_widget = self
      event.attr_x = RJava.cast_to_int(global_mouse.attr_x)
      event.attr_y = RJava.cast_to_int(global_mouse.attr_y)
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
      # Register the types as valid drop types in Cocoa.
      # Accumulate all of the transfer types into a list.
      type_strings = ArrayList.new
      i = 0
      while i < @transfer_agents.attr_length
        types_ = transfer_agents[i].get_type_names
        j = 0
        while j < types_.attr_length
          type_strings.add(types_[j])
          j += 1
        end
        i += 1
      end
      # Convert to an NSArray of NSStrings so we can register with the Control.
      type_string_count = type_strings.size
      ns_type_strings = NSMutableArray.array_with_capacity(type_string_count)
      i_ = 0
      while i_ < type_string_count
        ns_type_strings.add_object(NSString.string_with(type_strings.get(i_)))
        i_ += 1
      end
      @control.attr_view.register_for_dragged_types(ns_type_strings)
    end
    
    typesig { [] }
    def set_drop_not_allowed
      if (!self.attr_drop_not_allowed)
        NSCursor.current_cursor.push
        if ((OS::PTR_SIZEOF).equal?(4))
          OS._set_theme_cursor(OS.attr_k_theme_not_allowed_cursor)
        end
        self.attr_drop_not_allowed = true
      end
    end
    
    typesig { [] }
    def clear_drop_not_allowed
      if (self.attr_drop_not_allowed)
        NSCursor.pop
        self.attr_drop_not_allowed = false
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def table_view_accept_drop_row_drop_operation(id, sel, table_view, info, row, operation)
      return drop(NSObject.new(info))
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    def table_view_validate_drop_proposed_row_proposed_drop_operation(id, sel, table_view, info, row, operation)
      # TODO stop scrolling and expansion when app does not set FEEDBACK_SCROLL and/or FEEDBACK_EXPAND
      widget = NSTableView.new(table_view)
      if (0 <= row && row < widget.number_of_rows)
        widget.set_drop_row(row, OS::NSTableViewDropOn)
      end
      return op_to_os_op(@selected_operation)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # By returning true we get draggingUpdated messages even when the mouse isn't moving.
    # long
    # long
    def wants_periodic_dragging_updates(id, sel)
      return true
    end
    
    private
    alias_method :initialize__drop_target, :initialize
  end
  
end
