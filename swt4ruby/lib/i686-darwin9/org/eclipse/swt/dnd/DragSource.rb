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
  module DragSourceImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Dnd
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Graphics
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Cocoa
      include ::Org::Eclipse::Swt::Widgets
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
  # @noextend This class is not intended to be subclassed by clients.
  class DragSource < DragSourceImports.const_get :Widget
    include_class_members DragSourceImports
    
    class_module.module_eval {
      # TODO: These should either move out of Display or be accessible to this class.
      
      def types
        defined?(@@types) ? @@types : @@types= Array.typed(::Java::Byte).new([Character.new(?*.ord), Character.new(?\0.ord)])
      end
      alias_method :attr_types, :types
      
      def types=(value)
        @@types = value
      end
      alias_method :attr_types=, :types=
      
      
      def size
        defined?(@@size) ? @@size : @@size= C::PTR_SIZEOF
      end
      alias_method :attr_size, :size
      
      def size=(value)
        @@size = value
      end
      alias_method :attr_size=, :size=
      
      
      def align
        defined?(@@align) ? @@align : @@align= (C::PTR_SIZEOF).equal?(4) ? 2 : 3
      end
      alias_method :attr_align, :align
      
      def align=(value)
        @@align = value
      end
      alias_method :attr_align=, :align=
      
      
      def drag_source2args
        defined?(@@drag_source2args) ? @@drag_source2args : @@drag_source2args= nil
      end
      alias_method :attr_drag_source2args, :drag_source2args
      
      def drag_source2args=(value)
        @@drag_source2args = value
      end
      alias_method :attr_drag_source2args=, :drag_source2args=
      
      
      def drag_source3args
        defined?(@@drag_source3args) ? @@drag_source3args : @@drag_source3args= nil
      end
      alias_method :attr_drag_source3args, :drag_source3args
      
      def drag_source3args=(value)
        @@drag_source3args = value
      end
      alias_method :attr_drag_source3args=, :drag_source3args=
      
      
      def drag_source4args
        defined?(@@drag_source4args) ? @@drag_source4args : @@drag_source4args= nil
      end
      alias_method :attr_drag_source4args, :drag_source4args
      
      def drag_source4args=(value)
        @@drag_source4args = value
      end
      alias_method :attr_drag_source4args=, :drag_source4args=
      
      
      def drag_source5args
        defined?(@@drag_source5args) ? @@drag_source5args : @@drag_source5args= nil
      end
      alias_method :attr_drag_source5args, :drag_source5args
      
      def drag_source5args=(value)
        @@drag_source5args = value
      end
      alias_method :attr_drag_source5args=, :drag_source5args=
      
      
      def drag_source6args
        defined?(@@drag_source6args) ? @@drag_source6args : @@drag_source6args= nil
      end
      alias_method :attr_drag_source6args, :drag_source6args
      
      def drag_source6args=(value)
        @@drag_source6args = value
      end
      alias_method :attr_drag_source6args=, :drag_source6args=
      
      const_set_lazy(:SWT_OBJECT) { Array.typed(::Java::Byte).new([Character.new(?S.ord), Character.new(?W.ord), Character.new(?T.ord), Character.new(?_.ord), Character.new(?O.ord), Character.new(?B.ord), Character.new(?J.ord), Character.new(?E.ord), Character.new(?C.ord), Character.new(?T.ord), Character.new(?\0.ord)]) }
      const_attr_reader  :SWT_OBJECT
      
      # long
      
      def proc2
        defined?(@@proc2) ? @@proc2 : @@proc2= 0
      end
      alias_method :attr_proc2, :proc2
      
      def proc2=(value)
        @@proc2 = value
      end
      alias_method :attr_proc2=, :proc2=
      
      
      def proc3
        defined?(@@proc3) ? @@proc3 : @@proc3= 0
      end
      alias_method :attr_proc3, :proc3
      
      def proc3=(value)
        @@proc3 = value
      end
      alias_method :attr_proc3=, :proc3=
      
      
      def proc4
        defined?(@@proc4) ? @@proc4 : @@proc4= 0
      end
      alias_method :attr_proc4, :proc4
      
      def proc4=(value)
        @@proc4 = value
      end
      alias_method :attr_proc4=, :proc4=
      
      
      def proc5
        defined?(@@proc5) ? @@proc5 : @@proc5= 0
      end
      alias_method :attr_proc5, :proc5
      
      def proc5=(value)
        @@proc5 = value
      end
      alias_method :attr_proc5=, :proc5=
      
      
      def proc6
        defined?(@@proc6) ? @@proc6 : @@proc6= 0
      end
      alias_method :attr_proc6, :proc6
      
      def proc6=(value)
        @@proc6 = value
      end
      alias_method :attr_proc6=, :proc6=
      
      when_class_loaded do
        class_name = "SWTDragSourceDelegate"
        clazz = DragSource
        self.attr_drag_source2args = Callback.new(clazz, "dragSourceProc", 2)
        self.attr_proc2 = self.attr_drag_source2args.get_address
        if ((self.attr_proc2).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        self.attr_drag_source3args = Callback.new(clazz, "dragSourceProc", 3)
        self.attr_proc3 = self.attr_drag_source3args.get_address
        if ((self.attr_proc3).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        self.attr_drag_source4args = Callback.new(clazz, "dragSourceProc", 4)
        self.attr_proc4 = self.attr_drag_source4args.get_address
        if ((self.attr_proc4).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        self.attr_drag_source5args = Callback.new(clazz, "dragSourceProc", 5)
        self.attr_proc5 = self.attr_drag_source5args.get_address
        if ((self.attr_proc5).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        self.attr_drag_source6args = Callback.new(clazz, "dragSourceProc", 6)
        self.attr_proc6 = self.attr_drag_source6args.get_address
        if ((self.attr_proc6).equal?(0))
          SWT.error(SWT::ERROR_NO_MORE_CALLBACKS)
        end
        # long
        cls = OS.objc_allocate_class_pair(OS.attr_class_nsobject, class_name, 0)
        OS.class_add_ivar(cls, SWT_OBJECT, self.attr_size, self.attr_align, self.attr_types)
        # long
        dragged_image_ended_at_operation_proc = OS._callback_dragged_image_ended_at_operation_(self.attr_proc5)
        # Add the NSDraggingSource callbacks
        OS.class_add_method(cls, OS.attr_sel_dragging_source_operation_mask_for_local_, self.attr_proc3, "@:I")
        OS.class_add_method(cls, OS.attr_sel_dragged_image_began_at_, self.attr_proc4, "@:@{NSPoint=ff}")
        OS.class_add_method(cls, OS.attr_sel_dragged_image_ended_at_operation_, dragged_image_ended_at_operation_proc, "@:@{NSPoint=ff}I")
        OS.class_add_method(cls, OS.attr_sel_ignore_modifier_keys_while_dragging, self.attr_proc3, "@:")
        # Add the NSPasteboard delegate callback
        OS.class_add_method(cls, OS.attr_sel_pasteboard_provide_data_for_type_, self.attr_proc4, "@:@@")
        OS.objc_register_class_pair(cls)
      end
    }
    
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
    
    attr_accessor :drag_image_from_listener
    alias_method :attr_drag_image_from_listener, :drag_image_from_listener
    undef_method :drag_image_from_listener
    alias_method :attr_drag_image_from_listener=, :drag_image_from_listener=
    undef_method :drag_image_from_listener=
    
    attr_accessor :drag_operations
    alias_method :attr_drag_operations, :drag_operations
    undef_method :drag_operations
    alias_method :attr_drag_operations=, :drag_operations=
    undef_method :drag_operations=
    
    attr_accessor :drag_source_delegate
    alias_method :attr_drag_source_delegate, :drag_source_delegate
    undef_method :drag_source_delegate
    alias_method :attr_drag_source_delegate=, :drag_source_delegate=
    undef_method :drag_source_delegate=
    
    class_module.module_eval {
      const_set_lazy(:DEFAULT_DRAG_SOURCE_EFFECT) { "DEFAULT_DRAG_SOURCE_EFFECT" }
      const_attr_reader  :DEFAULT_DRAG_SOURCE_EFFECT
    }
    
    # $NON-NLS-1$
    # long
    attr_accessor :delegate_jni_ref
    alias_method :attr_delegate_jni_ref, :delegate_jni_ref
    undef_method :delegate_jni_ref
    alias_method :attr_delegate_jni_ref=, :delegate_jni_ref=
    undef_method :delegate_jni_ref=
    
    attr_accessor :drag_offset
    alias_method :attr_drag_offset, :drag_offset
    undef_method :drag_offset
    alias_method :attr_drag_offset=, :drag_offset=
    undef_method :drag_offset=
    
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
      @drag_image_from_listener = nil
      @drag_operations = 0
      @drag_source_delegate = nil
      @delegate_jni_ref = 0
      @drag_offset = nil
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
              if (event.attr_widget.is_a?(self.class::Table) || event.attr_widget.is_a?(self.class::Tree))
                @local_class_parent.drag_outline_view_start(event)
              else
                @local_class_parent.drag(event)
              end
            end
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
      control.add_listener(SWT::DragDetect, @control_listener)
      self.add_listener(SWT::Dispose, Class.new(Listener.class == Class ? Listener : Object) do
        extend LocalClass
        include_class_members DragSource
        include Listener if Listener.class == Module
        
        typesig { [Event] }
        define_method :handle_event do |e|
          on_dispose
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
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
      @delegate_jni_ref = OS._new_global_ref(self)
      if ((@delegate_jni_ref).equal?(0))
        SWT.error(SWT::ERROR_NO_HANDLES)
      end
      # The dragSourceDelegate implements the pasteboard callback to provide the dragged data, so we always need
      # to create it. NSDraggingSource methods are ignored in the table and tree case.
      @drag_source_delegate = SWTDragSourceDelegate.new.alloc.init
      OS.object_set_instance_variable(@drag_source_delegate.attr_id, SWT_OBJECT, @delegate_jni_ref)
      # Tables and trees already implement dragging, so we need to override their drag methods instead of creating a dragging source.
      if (control.is_a?(Tree) || control.is_a?(Table))
        # long
        cls = OS.object_get_class(control.attr_view.attr_id)
        if ((cls).equal?(0))
          DND.error(DND::ERROR_CANNOT_INIT_DRAG)
        end
        # If we already added it, no need to do it again.
        # long
        proc_ptr = OS.class_get_method_implementation(cls, OS.attr_sel_dragging_source_operation_mask_for_local_)
        if ((proc_ptr).equal?(self.attr_proc3))
          return
        end
        # long
        dragged_image_ended_at_operation_proc = OS._callback_dragged_image_ended_at_operation_(self.attr_proc5)
        # Add the NSDraggingSource overrides.
        OS.class_add_method(cls, OS.attr_sel_dragging_source_operation_mask_for_local_, self.attr_proc3, "@:I")
        OS.class_add_method(cls, OS.attr_sel_dragged_image_began_at_, self.attr_proc4, "@:@{NSPoint=ff}")
        OS.class_add_method(cls, OS.attr_sel_dragged_image_ended_at_operation_, dragged_image_ended_at_operation_proc, "@:@{NSPoint=ff}I")
        OS.class_add_method(cls, OS.attr_sel_ignore_modifier_keys_while_dragging, self.attr_proc3, "@:")
        # Override to return the drag effect's image.
        OS.class_add_method(cls, OS.attr_sel_drag_image_for_rows_with_indexes_table_columns_event_offset_, self.attr_proc6, "@:@@@^NSPoint")
      end
    end
    
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, NSPoint, ::Java::Int] }
    # long
    # long
    # long
    # long
    def call_super(id, sel, arg0, arg1, arg2)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      OS.objc_msg_send_super(super_struct, sel, arg0, arg1, arg2)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def call_super(id, sel, arg0, arg1)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      OS.objc_msg_send_super(super_struct, sel, arg0, arg1)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    def call_super_object(id, sel, arg0, arg1, arg2, arg3)
      super_struct = Objc_super.new
      super_struct.attr_receiver = id
      super_struct.attr_super_class = OS.objc_msg_send(id, OS.attr_sel_superclass)
      return OS.objc_msg_send_super(super_struct, sel, arg0, arg1, arg2, arg3)
    end
    
    typesig { [] }
    def check_subclass
      name = get_class.get_name
      valid_name = DragSource.get_name
      if (!(valid_name == name))
        DND.error(SWT::ERROR_INVALID_SUBCLASS)
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
    
    typesig { [Event] }
    def drag(drag_detect_event)
      event = start_drag(drag_detect_event)
      if ((event).nil?)
        return
      end
      # Start the drag here from the Control's view.
      curr_event = NSApplication.shared_application.current_event
      pt = curr_event.location_in_window
      view_pt = @control.attr_view.convert_point_from_view_(pt, nil)
      # Get the image for the drag. The drag should happen from the middle of the image.
      drag_image = nil
      default_drag_image = nil
      begin
        image = event.attr_image
        # If no image was provided, just create a trivial image. dragImage requires a non-null image.
        if ((image).nil?)
          width = 20
          height = 20
          new_drag_image = Image.new(Display.get_current, width, height)
          image_gc = SwtGC.new(new_drag_image)
          gray_color = Color.new(Display.get_current, 50, 50, 50)
          image_gc.set_foreground(gray_color)
          image_gc.draw_rectangle(0, 0, 19, 19)
          image_gc.dispose
          new_image_data = new_drag_image.get_image_data
          new_image_data.attr_alpha = RJava.cast_to_int((255 * 0.4))
          default_drag_image = Image.new(Display.get_current, new_image_data)
          new_drag_image.dispose
          gray_color.dispose
          image = default_drag_image
          event.attr_offset_x = width / 2
          event.attr_offset_y = height / 2
        end
        drag_image = image.attr_handle
        image_size = drag_image.size
        view_pt.attr_x -= event.attr_offset_x
        if (@control.attr_view.is_flipped)
          view_pt.attr_y += image_size.attr_height - event.attr_offset_y
        else
          view_pt.attr_y -= event.attr_offset_y
        end
        # The third argument to dragImage is ignored as of 10.4.
        ignored = NSSize.new
        @control.attr_view.drag_image(drag_image, view_pt, ignored, NSApplication.shared_application.current_event, NSPasteboard.pasteboard_with_name(OS::NSDragPboard), @drag_source_delegate, true)
      ensure
        if (!(default_drag_image).nil?)
          default_drag_image.dispose
        end
      end
    end
    
    typesig { [Event] }
    def drag_outline_view_start(drag_detect_event)
      event = start_drag(drag_detect_event)
      if ((event).nil?)
        return
      end
      # Save off the custom image, if any.
      @drag_image_from_listener = event.attr_image
      # Save the computed offset for the image.  This needs to be passed back in dragImageForRowsWithIndexes
      # so the proxy image originates from the selection and not centered under the mouse.
      @drag_offset = Point.new(event.attr_offset_x, event.attr_offset_y)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def dragged_image_began_at(id, sel, arg0, arg1)
      if (NSObject.new(id).is_kind_of_class(OS.attr_class_nstable_view))
        call_super(id, sel, arg0, arg1)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, NSPoint, ::Java::Int] }
    # long
    # long
    # long
    # long
    def dragged_image_ended_at_operation(id, sel, arg0, arg1, arg2)
      swt_operation = os_op_to_op(arg2)
      event = DNDEvent.new
      event.attr_widget = self
      event.attr_time = RJava.cast_to_int(System.current_time_millis)
      event.attr_doit = !(swt_operation).equal?(DND::DROP_NONE)
      event.attr_detail = swt_operation
      notify_listeners(DND::DragEnd, event)
      @drag_image_from_listener = nil
      if (NSObject.new(id).is_kind_of_class(OS.attr_class_nstable_view))
        call_super(id, sel, arg0, arg1, arg2)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    # long
    # long
    def drag_image_for_rows_with_indexes_table_columns_event_offset(id, sel, arg0, arg1, arg2, arg3)
      if (!(@drag_image_from_listener).nil?)
        point = NSPoint.new
        point.attr_x = @drag_offset.attr_x
        point.attr_y = @drag_offset.attr_y
        OS.memmove___org_eclipse_swt_dnd_drag_source_1(arg3, point, NSPoint.attr_sizeof)
        return @drag_image_from_listener.attr_handle.attr_id
      else
        return call_super_object(id, sel, arg0, arg1, arg2, arg3)
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Cocoa NSDraggingSource implementations
    # 
    # long
    # long
    # long
    # long
    def dragging_source_operation_mask_for_local(id, sel, arg0)
      # Drag operations are same for local or remote drags.
      return @drag_operations
    end
    
    class_module.module_eval {
      typesig { [::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      def drag_source_proc(id, sel)
        display = Display.find_display(JavaThread.current_thread)
        if ((display).nil? || display.is_disposed)
          return 0
        end
        widget = display.find_widget(id)
        if ((widget).nil?)
          return 0
        end
        ds = nil
        if (widget.is_a?(DragSource))
          ds = widget
        else
          ds = widget.get_data(DND::DRAG_SOURCE_KEY)
        end
        if ((ds).nil?)
          return 0
        end
        if ((sel).equal?(OS.attr_sel_ignore_modifier_keys_while_dragging))
          return (ds.ignore_modifier_keys_while_dragging(id, sel) ? 1 : 0)
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      def drag_source_proc(id, sel, arg0)
        display = Display.find_display(JavaThread.current_thread)
        if ((display).nil? || display.is_disposed)
          return 0
        end
        widget = display.find_widget(id)
        if ((widget).nil?)
          return 0
        end
        ds = nil
        if (widget.is_a?(DragSource))
          ds = widget
        else
          ds = widget.get_data(DND::DRAG_SOURCE_KEY)
        end
        if ((ds).nil?)
          return 0
        end
        if ((sel).equal?(OS.attr_sel_dragging_source_operation_mask_for_local_))
          return ds.dragging_source_operation_mask_for_local(id, sel, arg0)
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      def drag_source_proc(id, sel, arg0, arg1)
        display = Display.find_display(JavaThread.current_thread)
        if ((display).nil? || display.is_disposed)
          return 0
        end
        widget = display.find_widget(id)
        if ((widget).nil?)
          return 0
        end
        ds = nil
        if (widget.is_a?(DragSource))
          ds = widget
        else
          ds = widget.get_data(DND::DRAG_SOURCE_KEY)
        end
        if ((ds).nil?)
          return 0
        end
        if ((sel).equal?(OS.attr_sel_dragged_image_began_at_))
          ds.dragged_image_began_at(id, sel, arg0, arg1)
        else
          if ((sel).equal?(OS.attr_sel_pasteboard_provide_data_for_type_))
            ds.pasteboard_provide_data_for_type(id, sel, arg0, arg1)
          end
        end
        return 0
      end
      
      typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
      # long
      # long
      # long
      # long
      # long
      # long
      def drag_source_proc(id, sel, arg0, arg1, arg2)
        display = Display.find_display(JavaThread.current_thread)
        if ((display).nil? || display.is_disposed)
          return 0
        end
        widget = display.find_widget(id)
        if ((widget).nil?)
          return 0
        end
        ds = nil
        if (widget.is_a?(DragSource))
          ds = widget
        else
          ds = widget.get_data(DND::DRAG_SOURCE_KEY)
        end
        if ((ds).nil?)
          return 0
        end
        if ((sel).equal?(OS.attr_sel_dragged_image_ended_at_operation_))
          point = NSPoint.new
          OS.memmove___org_eclipse_swt_dnd_drag_source_3(point, arg1, NSPoint.attr_sizeof)
          ds.dragged_image_ended_at_operation(id, sel, arg0, point, arg2)
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
      def drag_source_proc(id, sel, arg0, arg1, arg2, arg3)
        display = Display.find_display(JavaThread.current_thread)
        if ((display).nil? || display.is_disposed)
          return 0
        end
        widget = display.find_widget(id)
        if ((widget).nil?)
          return 0
        end
        ds = nil
        if (widget.is_a?(DragSource))
          ds = widget
        else
          ds = widget.get_data(DND::DRAG_SOURCE_KEY)
        end
        if ((ds).nil?)
          return 0
        end
        if ((sel).equal?(OS.attr_sel_drag_image_for_rows_with_indexes_table_columns_event_offset_))
          return ds.drag_image_for_rows_with_indexes_table_columns_event_offset(id, sel, arg0, arg1, arg2, arg3)
        end
        return 0
      end
    }
    
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
    
    typesig { [::Java::Int, ::Java::Int] }
    # We always want the modifier keys to potentially update the drag.
    # 
    # long
    # long
    def ignore_modifier_keys_while_dragging(id, sel)
      return false
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
      if (!(@delegate_jni_ref).equal?(0))
        OS._delete_global_ref(@delegate_jni_ref)
      end
      @delegate_jni_ref = 0
      if (!(@drag_source_delegate).nil?)
        OS.object_set_instance_variable(@drag_source_delegate.attr_id, SWT_OBJECT, 0)
        @drag_source_delegate.release
      end
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    def pasteboard_provide_data_for_type(id, sel, arg0, arg1)
      pasteboard = NSPasteboard.new(arg0)
      data_type = NSString.new(arg1)
      if ((pasteboard).nil? || (data_type).nil?)
        return
      end
      transfer_data = TransferData.new
      transfer_data.attr_type = Transfer.register_type(data_type.get_string)
      event = DNDEvent.new
      event.attr_widget = self
      event.attr_time = RJava.cast_to_int(System.current_time_millis)
      event.attr_data_type = transfer_data
      notify_listeners(DND::DragSetData, event)
      if (!event.attr_doit)
        return
      end
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
      if ((transfer_data.attr_data).nil?)
        return
      end
      tdata = transfer_data.attr_data
      if (data_type.is_equal(OS::NSStringPboardType) || data_type.is_equal(OS::NSHTMLPboardType) || data_type.is_equal(OS::NSRTFPboardType))
        pasteboard.set_string(tdata, data_type)
      else
        if (data_type.is_equal(OS::NSURLPboardType))
          url = tdata
          url.write_to_pasteboard(pasteboard)
        else
          if (data_type.is_equal(OS::NSFilenamesPboardType))
            pasteboard.set_property_list(tdata, data_type)
          else
            pasteboard.set_data(tdata, data_type)
          end
        end
      end
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
    
    typesig { [Event] }
    def start_drag(drag_event)
      event = DNDEvent.new
      event.attr_widget = self
      event.attr_x = drag_event.attr_x
      event.attr_y = drag_event.attr_y
      event.attr_time = drag_event.attr_time
      event.attr_doit = true
      notify_listeners(DND::DragStart, event)
      if (!event.attr_doit || (@transfer_agents).nil? || (@transfer_agents.attr_length).equal?(0))
        return nil
      end
      drag_board = NSPasteboard.pasteboard_with_name(OS::NSDragPboard)
      native_type_array = NSMutableArray.array_with_capacity(10)
      file_trans = nil
      i = 0
      while i < @transfer_agents.attr_length
        transfer = @transfer_agents[i]
        if (!(transfer).nil?)
          type_names = transfer.get_type_names
          j = 0
          while j < type_names.attr_length
            native_type_array.add_object(NSString.string_with(type_names[j]))
            j += 1
          end
          if (transfer.is_a?(FileTransfer))
            file_trans = transfer
          end
        end
        i += 1
      end
      if (!(native_type_array).nil?)
        drag_board.declare_types(native_type_array, @drag_source_delegate)
      end
      if (!(file_trans).nil?)
        types = file_trans.get_type_ids
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
            file_trans.java_to_native(event2.attr_data, transfer_data)
            if (!(transfer_data.attr_data).nil?)
              drag_board.set_property_list(transfer_data.attr_data, OS::NSFilenamesPboardType)
            end
            j += 1
          end
        end
      end
      # Save off the drag operations -- AppKit will call back to us to request them during the drag.
      @drag_operations = op_to_os_op(get_style)
      return event
    end
    
    private
    alias_method :initialize__drag_source, :initialize
  end
  
end
