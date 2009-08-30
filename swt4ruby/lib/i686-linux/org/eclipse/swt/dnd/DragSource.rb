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
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Gtk
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
    
    # long
    attr_accessor :target_list
    alias_method :attr_target_list, :target_list
    undef_method :target_list
    alias_method :attr_target_list=, :target_list=
    undef_method :target_list=
    
    # workaround - remember action performed for DragEnd
    attr_accessor :move_data
    alias_method :attr_move_data, :move_data
    undef_method :move_data
    alias_method :attr_move_data=, :move_data=
    undef_method :move_data=
    
    class_module.module_eval {
      const_set_lazy(:DEFAULT_DRAG_SOURCE_EFFECT) { "DEFAULT_DRAG_SOURCE_EFFECT" }
      const_attr_reader  :DEFAULT_DRAG_SOURCE_EFFECT
      
      # $NON-NLS-1$
      
      def drag_get_data
        defined?(@@drag_get_data) ? @@drag_get_data : @@drag_get_data= nil
      end
      alias_method :attr_drag_get_data, :drag_get_data
      
      def drag_get_data=(value)
        @@drag_get_data = value
      end
      alias_method :attr_drag_get_data=, :drag_get_data=
      
      
      def drag_end
        defined?(@@drag_end) ? @@drag_end : @@drag_end= nil
      end
      alias_method :attr_drag_end, :drag_end
      
      def drag_end=(value)
        @@drag_end = value
      end
      alias_method :attr_drag_end=, :drag_end=
      
      
      def drag_data_delete
        defined?(@@drag_data_delete) ? @@drag_data_delete : @@drag_data_delete= nil
      end
      alias_method :attr_drag_data_delete, :drag_data_delete
      
      def drag_data_delete=(value)
        @@drag_data_delete = value
      end
      alias_method :attr_drag_data_delete=, :drag_data_delete=
      
      when_class_loaded do
        self.attr_drag_get_data = Callback.new(DragSource, "DragGetData", 5) # $NON-NLS-1$
        if ((self.attr_drag_get_data.get_address).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        self.attr_drag_end = Callback.new(DragSource, "DragEnd", 2) # $NON-NLS-1$
        if ((self.attr_drag_end.get_address).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        self.attr_drag_data_delete = Callback.new(DragSource, "DragDataDelete", 2) # $NON-NLS-1$
        if ((self.attr_drag_data_delete.get_address).equal?(0))
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
      @target_list = 0
      @move_data = false
      super(control, check_style(style))
      @transfer_agents = Array.typed(Transfer).new(0) { nil }
      @move_data = false
      @control = control
      if ((self.attr_drag_get_data).nil? || (self.attr_drag_end).nil? || (self.attr_drag_data_delete).nil?)
        DND.error(DND::ERROR_CANNOT_INIT_DRAG)
      end
      if (!(control.get_data(DND::DRAG_SOURCE_KEY)).nil?)
        DND.error(DND::ERROR_CANNOT_INIT_DRAG)
      end
      control.set_data(DND::DRAG_SOURCE_KEY, self)
      OS.g_signal_connect(control.attr_handle, OS.attr_drag_data_get, self.attr_drag_get_data.get_address, 0)
      OS.g_signal_connect(control.attr_handle, OS.attr_drag_end, self.attr_drag_end.get_address, 0)
      OS.g_signal_connect(control.attr_handle, OS.attr_drag_data_delete, self.attr_drag_data_delete.get_address, 0)
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
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self)
      control.add_listener(SWT::Dispose, @control_listener)
      control.add_listener(SWT::DragDetect, @control_listener)
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
      self.add_listener(SWT::Dispose, Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members DragSource
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |e|
          on_dispose
        end
        
        typesig { [Object] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self))
    end
    
    class_module.module_eval {
      typesig { [::Java::Int] }
      def check_style(style)
        if ((style).equal?(SWT::NONE))
          return DND::DROP_MOVE
        end
        return style
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _drag_data_delete(widget, context)
        source = _find_drag_source(widget)
        if ((source).nil?)
          return 0
        end
        source.drag_data_delete(widget, context)
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def _drag_end(widget, context)
        source = _find_drag_source(widget)
        if ((source).nil?)
          return 0
        end
        source.drag_end(widget, context)
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      # long
      def _drag_get_data(widget, context, selection_data, info, time)
        source = _find_drag_source(widget)
        if ((source).nil?)
          return 0
        end
        # 64
        # 64
        source.drag_get_data(widget, context, selection_data, RJava.cast_to_int(info), RJava.cast_to_int(time))
        return 0
      end
      
      typesig { [::Java::Int] }
      # long
      def _find_drag_source(handle)
        display = Display.find_display(JavaThread.current_thread)
        if ((display).nil? || display.is_disposed)
          return nil
        end
        widget = display.find_widget(handle)
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
      @move_data = false
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
      if ((@target_list).equal?(0))
        return
      end
      actions = op_to_os_op(get_style)
      image = event.attr_image
      # long
      context = OS.gtk_drag_begin(@control.attr_handle, @target_list, actions, 1, 0)
      if (!(context).equal?(0) && !(image).nil?)
        # long
        pixbuf = create_pixbuf(image)
        OS.gtk_drag_set_icon_pixbuf(context, pixbuf, 0, 0)
        OS.g_object_unref(pixbuf)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def drag_end(widget, context)
      # Bug in GTK.  If a drag is initiated using gtk_drag_begin and the
      # mouse is released immediately, the mouse and keyboard remain
      # grabbed.  The fix is to release the grab on the mouse and keyboard
      # whenever the drag is terminated.
      # 
      # NOTE: We believe that it is never an error to ungrab when
      # a drag is finished.
      OS.gdk_pointer_ungrab(OS::GDK_CURRENT_TIME)
      OS.gdk_keyboard_ungrab(OS::GDK_CURRENT_TIME)
      operation = DND::DROP_NONE
      if (!(context).equal?(0))
        gdk_drag_context = GdkDragContext.new
        OS.memmove(gdk_drag_context, context, GdkDragContext.attr_sizeof)
        if (!(gdk_drag_context.attr_dest_window).equal?(0))
          # NOTE: if dest_window is 0, drag was aborted
          if (@move_data)
            operation = DND::DROP_MOVE
          else
            operation = os_op_to_op(gdk_drag_context.attr_action)
            if ((operation).equal?(DND::DROP_MOVE))
              operation = DND::DROP_NONE
            end
          end
        end
      end
      event = DNDEvent.new
      event.attr_widget = self
      # event.time = ???
      event.attr_doit = !(operation).equal?(0)
      event.attr_detail = operation
      notify_listeners(DND::DragEnd, event)
      @move_data = false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def drag_get_data(widget, context, selection_data, info, time)
      if ((selection_data).equal?(0))
        return
      end
      gtk_selection_data = GtkSelectionData.new
      OS.memmove(gtk_selection_data, selection_data, GtkSelectionData.attr_sizeof)
      if ((gtk_selection_data.attr_target).equal?(0))
        return
      end
      transfer_data = TransferData.new
      transfer_data.attr_type = gtk_selection_data.attr_target
      transfer_data.attr_p_value = gtk_selection_data.attr_data
      transfer_data.attr_length = gtk_selection_data.attr_length
      transfer_data.attr_format = gtk_selection_data.attr_format
      event = DNDEvent.new
      event.attr_widget = self
      event.attr_time = time
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
        return
      end
      transfer.java_to_native(event.attr_data, transfer_data)
      if (!(transfer_data.attr_result).equal?(1))
        return
      end
      OS.gtk_selection_data_set(selection_data, transfer_data.attr_type, transfer_data.attr_format, transfer_data.attr_p_value, transfer_data.attr_length)
      OS.g_free(transfer_data.attr_p_value)
      return
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def drag_data_delete(widget, context)
      @move_data = true
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
      if (!(@target_list).equal?(0))
        OS.gtk_target_list_unref(@target_list)
      end
      @target_list = 0
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
      if (!(@target_list).equal?(0))
        OS.gtk_target_list_unref(@target_list)
        @target_list = 0
      end
      @transfer_agents = transfer_agents
      if ((transfer_agents).nil? || (transfer_agents.attr_length).equal?(0))
        return
      end
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
      # long
      p_targets = OS.g_malloc(targets.attr_length * GtkTargetEntry.attr_sizeof)
      i_ = 0
      while i_ < targets.attr_length
        OS.memmove(p_targets + i_ * GtkTargetEntry.attr_sizeof, targets[i_], GtkTargetEntry.attr_sizeof)
        i_ += 1
      end
      @target_list = OS.gtk_target_list_new(p_targets, targets.attr_length)
      i__ = 0
      while i__ < targets.attr_length
        OS.g_free(targets[i__].attr_target)
        i__ += 1
      end
    end
    
    class_module.module_eval {
      typesig { [Image] }
      # long
      def create_pixbuf(image)
        w = Array.typed(::Java::Int).new(1) { 0 }
        h = Array.typed(::Java::Int).new(1) { 0 }
        OS.gdk_drawable_get_size(image.attr_pixmap, w, h)
        # long
        colormap = OS.gdk_colormap_get_system
        # long
        pixbuf = 0
        has_mask = !(image.attr_mask).equal?(0) && (OS.gdk_drawable_get_depth(image.attr_mask)).equal?(1)
        if (has_mask)
          pixbuf = OS.gdk_pixbuf_new(OS::GDK_COLORSPACE_RGB, true, 8, w[0], h[0])
          if ((pixbuf).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          OS.gdk_pixbuf_get_from_drawable(pixbuf, image.attr_pixmap, colormap, 0, 0, 0, 0, w[0], h[0])
          # long
          mask_pixbuf = OS.gdk_pixbuf_new(OS::GDK_COLORSPACE_RGB, false, 8, w[0], h[0])
          if ((mask_pixbuf).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          OS.gdk_pixbuf_get_from_drawable(mask_pixbuf, image.attr_mask, 0, 0, 0, 0, 0, w[0], h[0])
          stride = OS.gdk_pixbuf_get_rowstride(pixbuf)
          # long
          pixels = OS.gdk_pixbuf_get_pixels(pixbuf)
          line = Array.typed(::Java::Byte).new(stride) { 0 }
          mask_stride = OS.gdk_pixbuf_get_rowstride(mask_pixbuf)
          # long
          mask_pixels = OS.gdk_pixbuf_get_pixels(mask_pixbuf)
          mask_line = Array.typed(::Java::Byte).new(mask_stride) { 0 }
          y = 0
          while y < h[0]
            # long
            offset = pixels + (y * stride)
            OS.memmove(line, offset, stride)
            # long
            mask_offset = mask_pixels + (y * mask_stride)
            OS.memmove(mask_line, mask_offset, mask_stride)
            x = 0
            while x < w[0]
              if ((mask_line[x * 3]).equal?(0))
                line[x * 4 + 3] = 0
              end
              x += 1
            end
            OS.memmove(offset, line, stride)
            y += 1
          end
          OS.g_object_unref(mask_pixbuf)
        else
          data = image.get_image_data
          has_alpha = (data.get_transparency_type).equal?(SWT::TRANSPARENCY_ALPHA)
          pixbuf = OS.gdk_pixbuf_new(OS::GDK_COLORSPACE_RGB, has_alpha, 8, w[0], h[0])
          if ((pixbuf).equal?(0))
            SWT.error(SWT::ERROR_NO_HANDLES)
          end
          OS.gdk_pixbuf_get_from_drawable(pixbuf, image.attr_pixmap, colormap, 0, 0, 0, 0, w[0], h[0])
          if (has_alpha)
            alpha = data.attr_alpha_data
            stride = OS.gdk_pixbuf_get_rowstride(pixbuf)
            # long
            pixels = OS.gdk_pixbuf_get_pixels(pixbuf)
            line = Array.typed(::Java::Byte).new(stride) { 0 }
            y = 0
            while y < h[0]
              # long
              offset = pixels + (y * stride)
              OS.memmove(line, offset, stride)
              x = 0
              while x < w[0]
                line[x * 4 + 3] = alpha[y * w[0] + x]
                x += 1
              end
              OS.memmove(offset, line, stride)
              y += 1
            end
          end
        end
        return pixbuf
      end
    }
    
    private
    alias_method :initialize__drag_source, :initialize
  end
  
end
