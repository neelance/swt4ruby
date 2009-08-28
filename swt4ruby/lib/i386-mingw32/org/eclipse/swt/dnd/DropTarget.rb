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
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Internal::Win32
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
    
    # workaround - The dataobject address is only passed as an argument in drag enter and drop.
    # To allow applications to query the data values during the drag over operations,
    # maintain a reference to it.
    attr_accessor :i_data_object
    alias_method :attr_i_data_object, :i_data_object
    undef_method :i_data_object
    alias_method :attr_i_data_object=, :i_data_object=
    undef_method :i_data_object=
    
    # interfaces
    attr_accessor :i_drop_target
    alias_method :attr_i_drop_target, :i_drop_target
    undef_method :i_drop_target
    alias_method :attr_i_drop_target=, :i_drop_target=
    undef_method :i_drop_target=
    
    attr_accessor :ref_count
    alias_method :attr_ref_count, :ref_count
    undef_method :ref_count
    alias_method :attr_ref_count=, :ref_count=
    undef_method :ref_count=
    
    class_module.module_eval {
      const_set_lazy(:DEFAULT_DROP_TARGET_EFFECT) { "DEFAULT_DROP_TARGET_EFFECT" }
      const_attr_reader  :DEFAULT_DROP_TARGET_EFFECT
    }
    
    typesig { [Control, ::Java::Int] }
    # $NON-NLS-1$
    # 
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
      @i_data_object = nil
      @i_drop_target = nil
      @ref_count = 0
      super(control, check_style(style))
      @transfer_agents = Array.typed(Transfer).new(0) { nil }
      @key_operation = -1
      @control = control
      if (!(control.get_data(DND::DROP_TARGET_KEY)).nil?)
        DND.error(DND::ERROR_CANNOT_INIT_DROP)
      end
      control.set_data(DND::DROP_TARGET_KEY, self)
      create_cominterfaces
      self._add_ref
      if (!(COM._co_lock_object_external(@i_drop_target.get_address, true, true)).equal?(COM::S_OK))
        DND.error(DND::ERROR_CANNOT_INIT_DROP)
      end
      if (!(COM._register_drag_drop(control.attr_handle, @i_drop_target.get_address)).equal?(COM::S_OK))
        DND.error(DND::ERROR_CANNOT_INIT_DROP)
      end
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
    def _add_ref
      @ref_count += 1
      return @ref_count
    end
    
    typesig { [] }
    def check_subclass
      name = get_class.get_name
      valid_name = DropTarget.get_name
      if (!(valid_name == name))
        DND.error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [] }
    def create_cominterfaces
      # register each of the interfaces that this object implements
      is32 = (C::PTR_SIZEOF).equal?(4)
      @i_drop_target = Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members DropTarget
        include COMObject if COMObject.class == Module
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method0 do |args|
          return _query_interface(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method1 do |args|
          return _add_ref
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method2 do |args|
          return _release
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method3 do |args|
          if ((args.attr_length).equal?(5))
            # 64
            # 64
            # 64
            return _drag_enter(args[0], RJava.cast_to_int(args[1]), RJava.cast_to_int(args[2]), RJava.cast_to_int(args[3]), args[4])
          else
            # 64
            return _drag_enter_64(args[0], RJava.cast_to_int(args[1]), args[2], args[3])
          end
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          if ((args.attr_length).equal?(4))
            # 64
            # 64
            # 64
            return _drag_over(RJava.cast_to_int(args[0]), RJava.cast_to_int(args[1]), RJava.cast_to_int(args[2]), args[3])
          else
            # 64
            return _drag_over_64(RJava.cast_to_int(args[0]), args[1], args[2])
          end
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method5 do |args|
          return _drag_leave
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method6 do |args|
          if ((args.attr_length).equal?(5))
            # 64
            # 64
            # 64
            return _drop(args[0], RJava.cast_to_int(args[1]), RJava.cast_to_int(args[2]), RJava.cast_to_int(args[3]), args[4])
          else
            # 64
            return _drop_64(args[0], RJava.cast_to_int(args[1]), args[2], args[3])
          end
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, is32 ? 5 : 4, is32 ? 4 : 3, 0, is32 ? 5 : 4]))
    end
    
    typesig { [] }
    def dispose_cominterfaces
      if (!(@i_drop_target).nil?)
        @i_drop_target.dispose
      end
      @i_drop_target = nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int] }
    # long
    # long
    def _drag_enter_64(p_data_object, grf_key_state, pt, pdw_effect)
      point = POINT.new
      OS._move_memory(point, Array.typed(::Java::Long).new([pt]), 8)
      return _drag_enter(p_data_object, grf_key_state, point.attr_x, point.attr_y, pdw_effect)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _drag_enter(p_data_object, grf_key_state, pt_x, pt_y, pdw_effect)
      @selected_data_type = nil
      @selected_operation = DND::DROP_NONE
      if (!(@i_data_object).nil?)
        @i_data_object._release
      end
      @i_data_object = nil
      event = DNDEvent.new
      if (!set_event_data(event, p_data_object, grf_key_state, pt_x, pt_y, pdw_effect))
        OS._move_memory(pdw_effect, Array.typed(::Java::Int).new([COM::DROPEFFECT_NONE]), 4)
        return COM::S_FALSE
      end
      # Remember the iDataObject because it is not passed into the DragOver callback
      @i_data_object = IDataObject.new(p_data_object)
      @i_data_object._add_ref
      allowed_operations = event.attr_operations
      allowed_data_types = Array.typed(TransferData).new(event.attr_data_types.attr_length) { nil }
      System.arraycopy(event.attr_data_types, 0, allowed_data_types, 0, allowed_data_types.attr_length)
      notify_listeners(DND::DragEnter, event)
      refresh
      if ((event.attr_detail).equal?(DND::DROP_DEFAULT))
        event.attr_detail = !((allowed_operations & DND::DROP_MOVE)).equal?(0) ? DND::DROP_MOVE : DND::DROP_NONE
      end
      @selected_data_type = nil
      i = 0
      while i < allowed_data_types.attr_length
        if (TransferData.same_type(allowed_data_types[i], event.attr_data_type))
          @selected_data_type = allowed_data_types[i]
          break
        end
        i += 1
      end
      @selected_operation = DND::DROP_NONE
      if (!(@selected_data_type).nil? && (!((allowed_operations & event.attr_detail)).equal?(0)))
        @selected_operation = event.attr_detail
      end
      OS._move_memory(pdw_effect, Array.typed(::Java::Int).new([op_to_os(@selected_operation)]), 4)
      return COM::S_OK
    end
    
    typesig { [] }
    def _drag_leave
      @key_operation = -1
      if ((@i_data_object).nil?)
        return COM::S_FALSE
      end
      event = DNDEvent.new
      event.attr_widget = self
      event.attr_time = OS._get_message_time
      event.attr_detail = DND::DROP_NONE
      notify_listeners(DND::DragLeave, event)
      refresh
      @i_data_object._release
      @i_data_object = nil
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Long, ::Java::Int] }
    # long
    def _drag_over_64(grf_key_state, pt, pdw_effect)
      point = POINT.new
      OS._move_memory(point, Array.typed(::Java::Long).new([pt]), 8)
      return _drag_over(grf_key_state, point.attr_x, point.attr_y, pdw_effect)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    def _drag_over(grf_key_state, pt_x, pt_y, pdw_effect)
      if ((@i_data_object).nil?)
        return COM::S_FALSE
      end
      old_key_operation = @key_operation
      event = DNDEvent.new
      if (!set_event_data(event, @i_data_object.get_address, grf_key_state, pt_x, pt_y, pdw_effect))
        @key_operation = -1
        OS._move_memory(pdw_effect, Array.typed(::Java::Int).new([COM::DROPEFFECT_NONE]), 4)
        return COM::S_FALSE
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
      notify_listeners(event.attr_type, event)
      refresh
      if ((event.attr_detail).equal?(DND::DROP_DEFAULT))
        event.attr_detail = !((allowed_operations & DND::DROP_MOVE)).equal?(0) ? DND::DROP_MOVE : DND::DROP_NONE
      end
      @selected_data_type = nil
      i = 0
      while i < allowed_data_types.attr_length
        if (TransferData.same_type(allowed_data_types[i], event.attr_data_type))
          @selected_data_type = allowed_data_types[i]
          break
        end
        i += 1
      end
      @selected_operation = DND::DROP_NONE
      if (!(@selected_data_type).nil? && (((allowed_operations & event.attr_detail)).equal?(event.attr_detail)))
        @selected_operation = event.attr_detail
      end
      OS._move_memory(pdw_effect, Array.typed(::Java::Int).new([op_to_os(@selected_operation)]), 4)
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Long, ::Java::Int] }
    # long
    # long
    def _drop_64(p_data_object, grf_key_state, pt, pdw_effect)
      point = POINT.new
      OS._move_memory(point, Array.typed(::Java::Long).new([pt]), 8)
      return _drop(p_data_object, grf_key_state, point.attr_x, point.attr_y, pdw_effect)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _drop(p_data_object, grf_key_state, pt_x, pt_y, pdw_effect)
      event = DNDEvent.new
      event.attr_widget = self
      event.attr_time = OS._get_message_time
      if (!(@drop_effect).nil?)
        event.attr_item = @drop_effect.get_item(pt_x, pt_y)
      end
      event.attr_detail = DND::DROP_NONE
      notify_listeners(DND::DragLeave, event)
      refresh
      event = DNDEvent.new
      if (!set_event_data(event, p_data_object, grf_key_state, pt_x, pt_y, pdw_effect))
        @key_operation = -1
        OS._move_memory(pdw_effect, Array.typed(::Java::Int).new([COM::DROPEFFECT_NONE]), 4)
        return COM::S_FALSE
      end
      @key_operation = -1
      allowed_operations = event.attr_operations
      allowed_data_types = Array.typed(TransferData).new(event.attr_data_types.attr_length) { nil }
      System.arraycopy(event.attr_data_types, 0, allowed_data_types, 0, allowed_data_types.attr_length)
      event.attr_data_type = @selected_data_type
      event.attr_detail = @selected_operation
      notify_listeners(DND::DropAccept, event)
      refresh
      @selected_data_type = nil
      i = 0
      while i < allowed_data_types.attr_length
        if (TransferData.same_type(allowed_data_types[i], event.attr_data_type))
          @selected_data_type = allowed_data_types[i]
          break
        end
        i += 1
      end
      @selected_operation = DND::DROP_NONE
      if (!(@selected_data_type).nil? && ((allowed_operations & event.attr_detail)).equal?(event.attr_detail))
        @selected_operation = event.attr_detail
      end
      if ((@selected_operation).equal?(DND::DROP_NONE))
        OS._move_memory(pdw_effect, Array.typed(::Java::Int).new([COM::DROPEFFECT_NONE]), 4)
        return COM::S_OK
      end
      # Get Data in a Java format
      object = nil
      i_ = 0
      while i_ < @transfer_agents.attr_length
        transfer = @transfer_agents[i_]
        if (!(transfer).nil? && transfer.is_supported_type(@selected_data_type))
          object = transfer.native_to_java(@selected_data_type)
          break
        end
        i_ += 1
      end
      if ((object).nil?)
        @selected_operation = DND::DROP_NONE
      end
      event.attr_detail = @selected_operation
      event.attr_data_type = @selected_data_type
      event.attr_data = object
      OS._image_list_drag_show_nolock(false)
      begin
        notify_listeners(DND::Drop, event)
      ensure
        OS._image_list_drag_show_nolock(true)
      end
      refresh
      @selected_operation = DND::DROP_NONE
      if (((allowed_operations & event.attr_detail)).equal?(event.attr_detail))
        @selected_operation = event.attr_detail
      end
      # notify source of action taken
      OS._move_memory(pdw_effect, Array.typed(::Java::Int).new([op_to_os(@selected_operation)]), 4)
      return COM::S_OK
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
    def get_operation_from_key_state(grf_key_state)
      ctrl = !((grf_key_state & OS::MK_CONTROL)).equal?(0)
      shift = !((grf_key_state & OS::MK_SHIFT)).equal?(0)
      alt = !((grf_key_state & OS::MK_ALT)).equal?(0)
      if (alt)
        if (ctrl || shift)
          return DND::DROP_DEFAULT
        end
        return DND::DROP_LINK
      end
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
      COM._revoke_drag_drop(@control.attr_handle)
      if (!(@control_listener).nil?)
        @control.remove_listener(SWT::Dispose, @control_listener)
      end
      @control_listener = nil
      @control.set_data(DND::DROP_TARGET_KEY, nil)
      @transfer_agents = nil
      @control = nil
      COM._co_lock_object_external(@i_drop_target.get_address, false, true)
      self._release
      COM._co_free_unused_libraries
    end
    
    typesig { [::Java::Int] }
    def op_to_os(operation)
      os_operation = 0
      if (!((operation & DND::DROP_COPY)).equal?(0))
        os_operation |= COM::DROPEFFECT_COPY
      end
      if (!((operation & DND::DROP_LINK)).equal?(0))
        os_operation |= COM::DROPEFFECT_LINK
      end
      if (!((operation & DND::DROP_MOVE)).equal?(0))
        os_operation |= COM::DROPEFFECT_MOVE
      end
      return os_operation
    end
    
    typesig { [::Java::Int] }
    def os_to_op(os_operation)
      operation = 0
      if (!((os_operation & COM::DROPEFFECT_COPY)).equal?(0))
        operation |= DND::DROP_COPY
      end
      if (!((os_operation & COM::DROPEFFECT_LINK)).equal?(0))
        operation |= DND::DROP_LINK
      end
      if (!((os_operation & COM::DROPEFFECT_MOVE)).equal?(0))
        operation |= DND::DROP_MOVE
      end
      return operation
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # QueryInterface([in] iid, [out] ppvObject)
    # Ownership of ppvObject transfers from callee to caller so reference count on ppvObject
    # must be incremented before returning.  Caller is responsible for releasing ppvObject.
    # 
    # long
    # long
    def _query_interface(riid, ppv_object)
      if ((riid).equal?(0) || (ppv_object).equal?(0))
        return COM::E_INVALIDARG
      end
      guid = GUID.new
      COM._move_memory(guid, riid, GUID.attr_sizeof)
      if (COM._is_equal_guid(guid, COM::IIDIUnknown) || COM._is_equal_guid(guid, COM::IIDIDropTarget))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_drop_target.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      # long
      COM._move_memory(ppv_object, Array.typed(::Java::Int).new([0]), OS::PTR_SIZEOF)
      return COM::E_NOINTERFACE
    end
    
    typesig { [] }
    def _release
      @ref_count -= 1
      if ((@ref_count).equal?(0))
        dispose_cominterfaces
        COM._co_free_unused_libraries
      end
      return @ref_count
    end
    
    typesig { [] }
    def refresh
      if ((@control).nil? || @control.is_disposed)
        return
      end
      # long
      handle = @control.attr_handle
      lp_rect = RECT.new
      if (OS._get_update_rect(handle, lp_rect, false))
        OS._image_list_drag_show_nolock(false)
        OS._redraw_window(handle, lp_rect, 0, OS::RDW_UPDATENOW | OS::RDW_INVALIDATE)
        OS._image_list_drag_show_nolock(true)
      end
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
    
    typesig { [DNDEvent, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def set_event_data(event, p_data_object, grf_key_state, pt_x, pt_y, pdw_effect)
      if ((p_data_object).equal?(0) || (pdw_effect).equal?(0))
        return false
      end
      # get allowed operations
      style = get_style
      operations = Array.typed(::Java::Int).new(1) { 0 }
      OS._move_memory(operations, pdw_effect, 4)
      operations[0] = os_to_op(operations[0]) & style
      if ((operations[0]).equal?(DND::DROP_NONE))
        return false
      end
      # get current operation
      operation = get_operation_from_key_state(grf_key_state)
      @key_operation = operation
      if ((operation).equal?(DND::DROP_DEFAULT))
        if (((style & DND::DROP_DEFAULT)).equal?(0))
          operation = !((operations[0] & DND::DROP_MOVE)).equal?(0) ? DND::DROP_MOVE : DND::DROP_NONE
        end
      else
        if (((operation & operations[0])).equal?(0))
          operation = DND::DROP_NONE
        end
      end
      # Get allowed transfer types
      data_types = Array.typed(TransferData).new(0) { nil }
      data_object = IDataObject.new(p_data_object)
      data_object._add_ref
      begin
        # long
        # long
        address = Array.typed(::Java::Int).new(1) { 0 }
        if (!(data_object._enum_format_etc(COM::DATADIR_GET, address)).equal?(COM::S_OK))
          return false
        end
        enum_formatetc = IEnumFORMATETC.new(address[0])
        begin
          # Loop over enumerator and save any types that match what we are looking for
          # long
          rgelt = OS._global_alloc(OS::GMEM_FIXED | OS::GMEM_ZEROINIT, FORMATETC.attr_sizeof)
          begin
            pcelt_fetched = Array.typed(::Java::Int).new(1) { 0 }
            enum_formatetc._reset
            while ((enum_formatetc._next(1, rgelt, pcelt_fetched)).equal?(COM::S_OK) && (pcelt_fetched[0]).equal?(1))
              transfer_data = TransferData.new
              transfer_data.attr_formatetc = FORMATETC.new
              COM._move_memory(transfer_data.attr_formatetc, rgelt, FORMATETC.attr_sizeof)
              transfer_data.attr_type = transfer_data.attr_formatetc.attr_cf_format
              transfer_data.attr_p_idata_object = p_data_object
              i = 0
              while i < @transfer_agents.attr_length
                transfer = @transfer_agents[i]
                if (!(transfer).nil? && transfer.is_supported_type(transfer_data))
                  new_data_types = Array.typed(TransferData).new(data_types.attr_length + 1) { nil }
                  System.arraycopy(data_types, 0, new_data_types, 0, data_types.attr_length)
                  new_data_types[data_types.attr_length] = transfer_data
                  data_types = new_data_types
                  break
                end
                i += 1
              end
            end
          ensure
            OS._global_free(rgelt)
          end
        ensure
          enum_formatetc._release
        end
      ensure
        data_object._release
      end
      if ((data_types.attr_length).equal?(0))
        return false
      end
      event.attr_widget = self
      event.attr_x = pt_x
      event.attr_y = pt_y
      event.attr_time = OS._get_message_time
      event.attr_feedback = DND::FEEDBACK_SELECT
      event.attr_data_types = data_types
      event.attr_data_type = data_types[0]
      if (!(@drop_effect).nil?)
        event.attr_item = @drop_effect.get_item(pt_x, pt_y)
      end
      event.attr_operations = operations[0]
      event.attr_detail = operation
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
    
    private
    alias_method :initialize__drop_target, :initialize
  end
  
end
