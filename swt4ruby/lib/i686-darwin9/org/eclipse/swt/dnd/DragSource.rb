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
  module DragSourceImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Widgets
      include_const ::Org::Eclipse::Swt::Internal, :Callback
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :CGPoint
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :EventRecord
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :OS
      include_const ::Org::Eclipse::Swt::Internal::Carbon, :Point
    }
  end
  
  # <code>DragSource</code> defines the source object for a drag and drop transfer.
  # 
  # <p>IMPORTANT: This class is <em>not</em> intended to be subclassed.</p>
  # 
  # <p>A drag source is the object which originates a drag and drop operation. For the specified widget,
  # it defines the type of data that is available for dragging and the set of operations that can
  # be performed on that data.  The operations can be any bit-wise combination of DND.MOVE, DND.COPY or
  # DND.LINK.  The type of data that can be transferred is specified by subclasses of Transfer such as
  # TextTransfer or FileTransfer.  The type of data transferred can be a predefined system type or it
  # can be a type defined by the application.  For instructions on how to define your own transfer type,
  # refer to <code>ByteArrayTransfer</code>.</p>
  # 
  # <p>You may have several DragSources in an application but you can only have one DragSource
  # per Control.  Data dragged from this DragSource can be dropped on a site within this application
  # or it can be dropped on another application such as an external Text editor.</p>
  # 
  # <p>The application supplies the content of the data being transferred by implementing the
  # <code>DragSourceListener</code> and associating it with the DragSource via DragSource#addDragListener.</p>
  # 
  # <p>When a successful move operation occurs, the application is required to take the appropriate
  # action to remove the data from its display and remove any associated operating system resources or
  # internal references.  Typically in a move operation, the drop target makes a copy of the data
  # and the drag source deletes the original.  However, sometimes copying the data can take a long
  # time (such as copying a large file).  Therefore, on some platforms, the drop target may actually
  # move the data in the operating system rather than make a copy.  This is usually only done in
  # file transfers.  In this case, the drag source is informed in the DragEnd event that a
  # DROP_TARGET_MOVE was performed.  It is the responsibility of the drag source at this point to clean
  # up its displayed information.  No action needs to be taken on the operating system resources.</p>
  # 
  # <p> The following example shows a Label widget that allows text to be dragged from it.</p>
  # 
  # <code><pre>
  # // Enable a label as a Drag Source
  # Label label = new Label(shell, SWT.NONE);
  # // This example will allow text to be dragged
  # Transfer[] types = new Transfer[] {TextTransfer.getInstance()};
  # // This example will allow the text to be copied or moved to the drop target
  # int operations = DND.DROP_MOVE | DND.DROP_COPY;
  # 
  # DragSource source = new DragSource(label, operations);
  # source.setTransfer(types);
  # source.addDragListener(new DragSourceListener() {
  # public void dragStart(DragSourceEvent e) {
  # // Only start the drag if there is actually text in the
  # // label - this text will be what is dropped on the target.
  # if (label.getText().length() == 0) {
  # event.doit = false;
  # }
  # };
  # public void dragSetData(DragSourceEvent event) {
  # // A drop has been performed, so provide the data of the
  # // requested type.
  # // (Checking the type of the requested data is only
  # // necessary if the drag source supports more than
  # // one data type but is shown here as an example).
  # if (TextTransfer.getInstance().isSupportedType(event.dataType)){
  # event.data = label.getText();
  # }
  # }
  # public void dragFinished(DragSourceEvent event) {
  # // A Move operation has been performed so remove the data
  # // from the source
  # if (event.detail == DND.DROP_MOVE)
  # label.setText("");
  # }
  # });
  # </pre></code>
  # 
  # 
  # <dl>
  # <dt><b>Styles</b></dt> <dd>DND.DROP_NONE, DND.DROP_COPY, DND.DROP_MOVE, DND.DROP_LINK</dd>
  # <dt><b>Events</b></dt> <dd>DND.DragStart, DND.DragSetData, DND.DragEnd</dd>
  # </dl>
  # 
  # @see <a href="http://www.eclipse.org/swt/snippets/#dnd">Drag and Drop snippets</a>
  # @see <a href="http://www.eclipse.org/swt/examples.php">SWT Example: DNDExample</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  class DragSource < DragSourceImports.const_get :Widget
    include_class_members DragSourceImports
    
    # info for registering as a drag source
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
    
    attr_accessor :drag_effect
    alias_method :attr_drag_effect, :drag_effect
    undef_method :drag_effect
    alias_method :attr_drag_effect=, :drag_effect=
    undef_method :drag_effect=
    
    class_module.module_eval {
      const_set_lazy(:DEFAULT_DRAG_SOURCE_EFFECT) { "DEFAULT_DRAG_SOURCE_EFFECT" }
      const_attr_reader  :DEFAULT_DRAG_SOURCE_EFFECT
      
      # $NON-NLS-1$
      
      def drag_send_data_proc
        defined?(@@drag_send_data_proc) ? @@drag_send_data_proc : @@drag_send_data_proc= nil
      end
      alias_method :attr_drag_send_data_proc, :drag_send_data_proc
      
      def drag_send_data_proc=(value)
        @@drag_send_data_proc = value
      end
      alias_method :attr_drag_send_data_proc=, :drag_send_data_proc=
      
      when_class_loaded do
        self.attr_drag_send_data_proc = Callback.new(DragSource, "DragSendDataProc", 4) # $NON-NLS-1$
        drag_send_data_proc_address = self.attr_drag_send_data_proc.get_address
        if ((drag_send_data_proc_address).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
      end
    }
    
    typesig { [Control, ::Java::Int] }
    # Creates a new <code>DragSource</code> to handle dragging from the specified <code>Control</code>.
    # Creating an instance of a DragSource may cause system resources to be allocated depending on the platform.
    # It is therefore mandatory that the DragSource instance be disposed when no longer required.
    # 
    # @param control the <code>Control</code> that the user clicks on to initiate the drag
    # @param style the bitwise OR'ing of allowed operations; this may be a combination of any of
    # DND.DROP_NONE, DND.DROP_COPY, DND.DROP_MOVE, DND.DROP_LINK
    # 
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the parent</li>
    # <li>ERROR_INVALID_SUBCLASS - if this class is not an allowed subclass</li>
    # </ul>
    # @exception SWTError <ul>
    # <li>ERROR_CANNOT_INIT_DRAG - unable to initiate drag source; this will occur if more than one
    # drag source is created for a control or if the operating system will not allow the creation
    # of the drag source</li>
    # </ul>
    # 
    # <p>NOTE: ERROR_CANNOT_INIT_DRAG should be an SWTException, since it is a
    # recoverable error, but can not be changed due to backward compatibility.</p>
    # 
    # @see Widget#dispose
    # @see DragSource#checkSubclass
    # @see DND#DROP_NONE
    # @see DND#DROP_COPY
    # @see DND#DROP_MOVE
    # @see DND#DROP_LINK
    def initialize(control, style)
      @control = nil
      @control_listener = nil
      @transfer_agents = nil
      @drag_effect = nil
      super(control, check_style(style))
      @transfer_agents = Array.typed(Transfer).new(0) { nil }
      @control = control
      if (!(control.get_data(DND::DRAG_SOURCE_KEY)).nil?)
        DND.error(DND::ERROR_CANNOT_INIT_DRAG)
      end
      control.set_data(DND::DRAG_SOURCE_KEY, self)
      @control_listener = Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members DragSource
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |event|
          if ((event.attr_type).equal?(SWT::Dispose))
            if (!@local_class_parent.is_disposed)
              @local_class_parent.dispose
            end
          end
          if ((event.attr_type).equal?(SWT::DragDetect))
            if (!@local_class_parent.is_disposed)
              @local_class_parent.drag(event)
            end
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
      control.add_listener(SWT::DragDetect, @control_listener)
      self.add_listener(SWT::Dispose, Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members DragSource
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |e|
          on_dispose
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
      effect = control.get_data(DEFAULT_DRAG_SOURCE_EFFECT)
      if (effect.is_a?(DragSourceEffect))
        @drag_effect = effect
      else
        if (control.is_a?(Tree))
          @drag_effect = TreeDragSourceEffect.new(control)
        else
          if (control.is_a?(Table))
            @drag_effect = TableDragSourceEffect.new(control)
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
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      def _drag_send_data_proc(the_type, drag_send_ref_con, the_item_ref, the_drag)
        source = _find_drag_source(drag_send_ref_con, the_drag)
        if ((source).nil?)
          return OS.attr_cant_get_flavor_err
        end
        return source.drag_send_data_proc(the_type, drag_send_ref_con, the_item_ref, the_drag)
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      def _find_drag_source(drag_send_ref_con, the_drag)
        if ((drag_send_ref_con).equal?(0))
          return nil
        end
        display = Display.find_display(JavaThread.current_thread)
        if ((display).nil? || display.is_disposed)
          return nil
        end
        widget = display.find_widget(drag_send_ref_con)
        if ((widget).nil?)
          return nil
        end
        return widget.get_data(DND::DRAG_SOURCE_KEY)
      end
    }
    
    typesig { [DragSourceListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when a drag and drop operation is in progress, by sending
    # it one of the messages defined in the <code>DragSourceListener</code>
    # interface.
    # 
    # <p><ul>
    # <li><code>dragStart</code> is called when the user has begun the actions required to drag the widget.
    # This event gives the application the chance to decide if a drag should be started.
    # <li><code>dragSetData</code> is called when the data is required from the drag source.
    # <li><code>dragFinished</code> is called when the drop has successfully completed (mouse up
    # over a valid target) or has been terminated (such as hitting the ESC key). Perform cleanup
    # such as removing data from the source side on a successful move operation.
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
    # @see DragSourceListener
    # @see #getDragListeners
    # @see #removeDragListener
    # @see DragSourceEvent
    def add_drag_listener(listener)
      if ((listener).nil?)
        DND.error(SWT::ERROR_NULL_ARGUMENT)
      end
      typed_listener = DNDListener.new(listener)
      typed_listener.attr_dnd_widget = self
      add_listener(DND::DragStart, typed_listener)
      add_listener(DND::DragSetData, typed_listener)
      add_listener(DND::DragEnd, typed_listener)
    end
    
    typesig { [] }
    def check_subclass
      name = get_class.get_name
      valid_name = DragSource.get_name
      if (!(valid_name == name))
        DND.error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [Event] }
    def drag(drag_event)
      event = DNDEvent.new
      event.attr_widget = self
      event.attr_x = drag_event.attr_x
      event.attr_y = drag_event.attr_y
      event.attr_time = drag_event.attr_time
      event.attr_doit = true
      notify_listeners(DND::DragStart, event)
      if (!event.attr_doit || (@transfer_agents).nil? || (@transfer_agents.attr_length).equal?(0))
        return
      end
      the_drag = Array.typed(::Java::Int).new(1) { 0 }
      if (!(OS._new_drag(the_drag)).equal?(OS.attr_no_err))
        event = DNDEvent.new
        event.attr_widget = self
        event.attr_time = RJava.cast_to_int(System.current_time_millis)
        event.attr_doit = false
        event.attr_detail = DND::DROP_NONE
        notify_listeners(DND::DragEnd, event)
        return
      end
      pt = Point.new
      OS._get_global_mouse(pt)
      i = 0
      while i < @transfer_agents.attr_length
        transfer = @transfer_agents[i]
        if (!(transfer).nil?)
          types = transfer.get_type_ids
          if (transfer.is_a?(FileTransfer))
            transfer_data = TransferData.new
            transfer_data.attr_type = types[0]
            event2 = DNDEvent.new
            event2.attr_widget = self
            event2.attr_time = RJava.cast_to_int(System.current_time_millis)
            event2.attr_data_type = transfer_data
            notify_listeners(DND::DragSetData, event2)
            if (!(event2.attr_data).nil?)
              j = 0
              while j < types.attr_length
                transfer_data.attr_type = types[j]
                transfer.java_to_native(event2.attr_data, transfer_data)
                if ((transfer_data.attr_result).equal?(OS.attr_no_err))
                  k = 0
                  while k < transfer_data.attr_data.attr_length
                    datum = transfer_data.attr_data[k]
                    OS._add_drag_item_flavor(the_drag[0], 1 + k, types[j], datum, datum.attr_length, 0)
                    k += 1
                  end
                end
                j += 1
              end
            end
          else
            j = 0
            while j < types.attr_length
              OS._add_drag_item_flavor(the_drag[0], 1, types[j], nil, 0, 0)
              j += 1
            end
          end
        end
        i += 1
      end
      OS._set_drag_send_proc(the_drag[0], self.attr_drag_send_data_proc.get_address, @control.attr_handle)
      the_region = 0
      new_image = nil
      begin
        the_region = OS._new_rgn
        OS._set_rect_rgn(the_region, RJava.cast_to_short((pt.attr_h)), RJava.cast_to_short((pt.attr_v)), RJava.cast_to_short((pt.attr_h + 20)), RJava.cast_to_short((pt.attr_v + 20)))
        operations = op_to_os_op(get_style)
        # set operations twice - local and not local
        OS._set_drag_allowable_actions(the_drag[0], operations, true)
        OS._set_drag_allowable_actions(the_drag[0], operations, false)
        image = event.attr_image
        if (!(image).nil?)
          image_offset_pt = CGPoint.new
          image_offset_pt.attr_x = 0
          image_offset_pt.attr_y = 0
          # Bug in the Macintosh.  For  some reason, it seems that SetDragImageWithCGImage()
          # expects an image with the alpha, otherwise the image does not draw.  The fix is
          # to make sure that the image has an alpha by creating a new image with alpha
          # when necessary.
          if ((OS._cgimage_get_alpha_info(image.attr_handle)).equal?(OS.attr_k_cgimage_alpha_none_skip_first))
            data = image.get_image_data
            data.attr_alpha = 0xff
            new_image = Image.new(image.get_device, data)
            image = new_image
          end
          OS._set_drag_image_with_cgimage(the_drag[0], image.attr_handle, image_offset_pt, 0)
        end
        the_event = EventRecord.new
        the_event.attr_message = OS.attr_k_event_mouse_moved
        the_event.attr_modifiers = RJava.cast_to_short(OS._get_current_event_key_modifiers)
        the_event.attr_what = RJava.cast_to_short(OS.attr_os_evt)
        the_event.attr_where_h = pt.attr_h
        the_event.attr_where_v = pt.attr_v
        result = OS._track_drag(the_drag[0], the_event, the_region)
        operation = DND::DROP_NONE
        if ((result).equal?(OS.attr_no_err))
          out_action = Array.typed(::Java::Int).new(1) { 0 }
          OS._get_drag_drop_action(the_drag[0], out_action)
          operation = os_op_to_op(out_action[0])
        end
        event = DNDEvent.new
        event.attr_widget = self
        event.attr_time = RJava.cast_to_int(System.current_time_millis)
        event.attr_doit = (result).equal?(OS.attr_no_err)
        event.attr_detail = operation
        notify_listeners(DND::DragEnd, event)
      ensure
        if (!(the_region).equal?(0))
          OS._dispose_rgn(the_region)
        end
        if (!(new_image).nil?)
          new_image.dispose
        end
      end
      OS._dispose_drag(the_drag[0])
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    def drag_send_data_proc(the_type, drag_send_ref_con, the_item_ref, the_drag)
      if ((the_type).equal?(0))
        return OS.attr_bad_drag_flavor_err
      end
      transfer_data = TransferData.new
      transfer_data.attr_type = the_type
      event = DNDEvent.new
      event.attr_widget = self
      event.attr_time = RJava.cast_to_int(System.current_time_millis)
      event.attr_data_type = transfer_data
      notify_listeners(DND::DragSetData, event)
      transfer = nil
      i = 0
      while i < @transfer_agents.attr_length
        transfer_agent = @transfer_agents[i]
        if (!(transfer_agent).nil? && transfer_agent.is_supported_type(transfer_data))
          transfer = transfer_agent
          break
        end
        i += 1
      end
      if ((transfer).nil?)
        return OS.attr_bad_drag_flavor_err
      end
      transfer.java_to_native(event.attr_data, transfer_data)
      if (!(transfer_data.attr_result).equal?(OS.attr_no_err))
        return transfer_data.attr_result
      end
      # Except for FileTransfer (see #drag), only one item can be transferred
      # in a Drag operation
      datum = transfer_data.attr_data[0]
      if ((datum).nil?)
        return OS.attr_cant_get_flavor_err
      end
      return OS._set_drag_item_flavor_data(the_drag, the_item_ref, the_type, datum, datum.attr_length, 0)
    end
    
    typesig { [] }
    # Returns the Control which is registered for this DragSource.  This is the control that the
    # user clicks in to initiate dragging.
    # 
    # @return the Control which is registered for this DragSource
    def get_control
      return @control
    end
    
    typesig { [] }
    # Returns an array of listeners who will be notified when a drag and drop
    # operation is in progress, by sending it one of the messages defined in
    # the <code>DragSourceListener</code> interface.
    # 
    # @return the listeners who will be notified when a drag and drop
    # operation is in progress
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver</li>
    # </ul>
    # 
    # @see DragSourceListener
    # @see #addDragListener
    # @see #removeDragListener
    # @see DragSourceEvent
    # 
    # @since 3.4
    def get_drag_listeners
      listeners = get_listeners(DND::DragStart)
      length = listeners.attr_length
      drag_listeners = Array.typed(DragSourceListener).new(length) { nil }
      count = 0
      i = 0
      while i < length
        listener = listeners[i]
        if (listener.is_a?(DNDListener))
          drag_listeners[count] = (listener).get_event_listener
          count += 1
        end
        i += 1
      end
      if ((count).equal?(length))
        return drag_listeners
      end
      result = Array.typed(DragSourceListener).new(count) { nil }
      System.arraycopy(drag_listeners, 0, result, 0, count)
      return result
    end
    
    typesig { [] }
    # Returns the drag effect that is registered for this DragSource.  This drag
    # effect will be used during a drag and drop operation.
    # 
    # @return the drag effect that is registered for this DragSource
    # 
    # @since 3.3
    def get_drag_source_effect
      return @drag_effect
    end
    
    typesig { [] }
    # Returns the list of data types that can be transferred by this DragSource.
    # 
    # @return the list of data types that can be transferred by this DragSource
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
        @control.remove_listener(SWT::DragDetect, @control_listener)
      end
      @control_listener = nil
      @control.set_data(DND::DRAG_SOURCE_KEY, nil)
      @control = nil
      @transfer_agents = nil
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
      if (!((operation & DND::DROP_TARGET_MOVE)).equal?(0))
        os_operation |= OS.attr_k_drag_action_delete
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
      if (!((os_operation & OS.attr_k_drag_action_delete)).equal?(0))
        operation |= DND::DROP_TARGET_MOVE
      end
      if (!((os_operation & OS.attr_k_drag_action_move)).equal?(0))
        operation |= DND::DROP_MOVE
      end
      if ((os_operation).equal?(OS.attr_k_drag_action_all))
        operation = DND::DROP_COPY | DND::DROP_MOVE | DND::DROP_LINK
      end
      return operation
    end
    
    typesig { [DragSourceListener] }
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
    # @see DragSourceListener
    # @see #addDragListener
    # @see #getDragListeners
    def remove_drag_listener(listener)
      if ((listener).nil?)
        DND.error(SWT::ERROR_NULL_ARGUMENT)
      end
      remove_listener(DND::DragStart, listener)
      remove_listener(DND::DragSetData, listener)
      remove_listener(DND::DragEnd, listener)
    end
    
    typesig { [DragSourceEffect] }
    # Specifies the drag effect for this DragSource.  This drag effect will be
    # used during a drag and drop operation.
    # 
    # @param effect the drag effect that is registered for this DragSource
    # 
    # @since 3.3
    def set_drag_source_effect(effect)
      @drag_effect = effect
    end
    
    typesig { [Array.typed(Transfer)] }
    # Specifies the list of data types that can be transferred by this DragSource.
    # The application must be able to provide data to match each of these types when
    # a successful drop has occurred.
    # 
    # @param transferAgents a list of Transfer objects which define the types of data that can be
    # dragged from this source
    def set_transfer(transfer_agents)
      @transfer_agents = transfer_agents
    end
    
    private
    alias_method :initialize__drag_source, :initialize
  end
  
end
