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
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Internal::Win32
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
    
    attr_accessor :top_control
    alias_method :attr_top_control, :top_control
    undef_method :top_control
    alias_method :attr_top_control=, :top_control=
    undef_method :top_control=
    
    # long
    attr_accessor :hwnd_drag
    alias_method :attr_hwnd_drag, :hwnd_drag
    undef_method :hwnd_drag
    alias_method :attr_hwnd_drag=, :hwnd_drag=
    undef_method :hwnd_drag=
    
    # ole interfaces
    attr_accessor :i_drop_source
    alias_method :attr_i_drop_source, :i_drop_source
    undef_method :i_drop_source
    alias_method :attr_i_drop_source=, :i_drop_source=
    undef_method :i_drop_source=
    
    attr_accessor :i_data_object
    alias_method :attr_i_data_object, :i_data_object
    undef_method :i_data_object
    alias_method :attr_i_data_object=, :i_data_object=
    undef_method :i_data_object=
    
    attr_accessor :ref_count
    alias_method :attr_ref_count, :ref_count
    undef_method :ref_count
    alias_method :attr_ref_count=, :ref_count=
    undef_method :ref_count=
    
    # workaround - track the operation performed by the drop target for DragEnd event
    attr_accessor :data_effect
    alias_method :attr_data_effect, :data_effect
    undef_method :data_effect
    alias_method :attr_data_effect=, :data_effect=
    undef_method :data_effect=
    
    class_module.module_eval {
      const_set_lazy(:DEFAULT_DRAG_SOURCE_EFFECT) { "DEFAULT_DRAG_SOURCE_EFFECT" }
      const_attr_reader  :DEFAULT_DRAG_SOURCE_EFFECT
      
      # $NON-NLS-1$
      const_set_lazy(:CFSTR_PERFORMEDDROPEFFECT) { Transfer.register_type("Performed DropEffect") }
      const_attr_reader  :CFSTR_PERFORMEDDROPEFFECT
      
      # $NON-NLS-1$
      const_set_lazy(:WindowClass) { TCHAR.new(0, "#32770", true) }
      const_attr_reader  :WindowClass
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
      @top_control = nil
      @hwnd_drag = 0
      @i_drop_source = nil
      @i_data_object = nil
      @ref_count = 0
      @data_effect = 0
      super(control, check_style(style))
      @transfer_agents = Array.typed(Transfer).new(0) { nil }
      @data_effect = DND::DROP_NONE
      @control = control
      if (!(control.get_data(DND::DRAG_SOURCE_KEY)).nil?)
        DND.error(DND::ERROR_CANNOT_INIT_DRAG)
      end
      control.set_data(DND::DRAG_SOURCE_KEY, self)
      create_cominterfaces
      self._add_ref
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
          @local_class_parent.on_dispose
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
    def _add_ref
      @ref_count += 1
      return @ref_count
    end
    
    typesig { [] }
    def create_cominterfaces
      @i_drop_source = # register each of the interfaces that this object implements
      Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members DragSource
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
          # 64
          # 64
          return _query_continue_drag(RJava.cast_to_int(args[0]), RJava.cast_to_int(args[1]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          # 64
          return _give_feedback(RJava.cast_to_int(args[0]))
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 2, 1]))
      # method9 DAdvise - not implemented
      # method10 DUnadvise - not implemented
      # method11 EnumDAdvise - not implemented
      @i_data_object = Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members DragSource
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
          return _get_data(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # method4 GetDataHere - not implemented
        # long
        # long
        define_method :method5 do |args|
          return _query_get_data(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # method6 GetCanonicalFormatEtc - not implemented
        # long
        # long
        define_method :method7 do |args|
          # 64
          return _set_data(args[0], args[1], RJava.cast_to_int(args[2]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method8 do |args|
          # 64
          return _enum_format_etc(RJava.cast_to_int(args[0]), args[1])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 2, 2, 1, 2, 3, 2, 4, 1, 1]))
    end
    
    typesig { [] }
    def check_subclass
      name = get_class.get_name
      valid_name = DragSource.get_name
      if (!(valid_name == name))
        DND.error(SWT::ERROR_INVALID_SUBCLASS)
      end
    end
    
    typesig { [] }
    def dispose_cominterfaces
      if (!(@i_drop_source).nil?)
        @i_drop_source.dispose
      end
      @i_drop_source = nil
      if (!(@i_data_object).nil?)
        @i_data_object.dispose
      end
      @i_data_object = nil
    end
    
    typesig { [Event] }
    def drag(drag_event)
      event = DNDEvent.new
      event.attr_widget = self
      event.attr_x = drag_event.attr_x
      event.attr_y = drag_event.attr_y
      event.attr_time = OS._get_message_time
      event.attr_doit = true
      notify_listeners(DND::DragStart, event)
      if (!event.attr_doit || (@transfer_agents).nil? || (@transfer_agents.attr_length).equal?(0))
        return
      end
      pdw_effect = Array.typed(::Java::Int).new(1) { 0 }
      operations = op_to_os(get_style)
      display = @control.get_display
      key = "org.eclipse.swt.internal.win32.runMessagesInIdle" # $NON-NLS-1$
      old_value = display.get_data(key)
      display.set_data(key, Boolean.new(true))
      imagelist = nil
      image = event.attr_image
      @hwnd_drag = 0
      @top_control = nil
      if (!(image).nil?)
        imagelist = ImageList.new(SWT::NONE)
        imagelist.add(image)
        @top_control = @control.get_shell
        # Bug in Windows. The image is inverted if the shell is RIGHT_TO_LEFT.
        # The fix is to create a transparent window that covers the shell client
        # area and use it during the drag to prevent the image from being inverted.
        # On XP if the shell is RTL, the image is not displayed.
        offset_x = event.attr_offset_x
        @hwnd_drag = @top_control.attr_handle
        if (!((@top_control.get_style & SWT::RIGHT_TO_LEFT)).equal?(0))
          offset_x = image.get_bounds.attr_width - offset_x
          rect = RECT.new
          OS._get_client_rect(@top_control.attr_handle, rect)
          @hwnd_drag = OS._create_window_ex(OS::WS_EX_TRANSPARENT | OS::WS_EX_NOINHERITLAYOUT, WindowClass, nil, OS::WS_CHILD | OS::WS_CLIPSIBLINGS, 0, 0, rect.attr_right - rect.attr_left, rect.attr_bottom - rect.attr_top, @top_control.attr_handle, 0, OS._get_module_handle(nil), nil)
          OS._show_window(@hwnd_drag, OS::SW_SHOW)
        end
        OS._image_list_begin_drag(imagelist.get_handle, 0, offset_x, event.attr_offset_y)
        # Feature in Windows. When ImageList_DragEnter() is called,
        # it takes a snapshot of the screen  If a drag is started
        # when another window is in front, then the snapshot will
        # contain part of the other window, causing pixel corruption.
        # The fix is to force all paints to be delivered before
        # calling ImageList_DragEnter().
        if (OS::IsWinCE)
          OS._update_window(@top_control.attr_handle)
        else
          flags = OS::RDW_UPDATENOW | OS::RDW_ALLCHILDREN
          OS._redraw_window(@top_control.attr_handle, nil, 0, flags)
        end
        pt = POINT.new
        pt.attr_x = drag_event.attr_x
        pt.attr_y = drag_event.attr_y
        OS._map_window_points(@control.attr_handle, 0, pt, 1)
        rect = RECT.new
        OS._get_window_rect(@hwnd_drag, rect)
        OS._image_list_drag_enter(@hwnd_drag, pt.attr_x - rect.attr_left, pt.attr_y - rect.attr_top)
      end
      result = COM::DRAGDROP_S_CANCEL
      begin
        result = COM._do_drag_drop(@i_data_object.get_address, @i_drop_source.get_address, operations, pdw_effect)
      ensure
        # ensure that we don't leave transparent window around
        if (!(@hwnd_drag).equal?(0))
          OS._image_list_drag_leave(@hwnd_drag)
          OS._image_list_end_drag
          imagelist.dispose
          if (!(@hwnd_drag).equal?(@top_control.attr_handle))
            OS._destroy_window(@hwnd_drag)
          end
          @hwnd_drag = 0
          @top_control = nil
        end
        display.set_data(key, old_value)
      end
      operation = os_to_op(pdw_effect[0])
      if ((@data_effect).equal?(DND::DROP_MOVE))
        operation = ((operation).equal?(DND::DROP_NONE) || (operation).equal?(DND::DROP_COPY)) ? DND::DROP_TARGET_MOVE : DND::DROP_MOVE
      else
        if (!(@data_effect).equal?(DND::DROP_NONE))
          operation = @data_effect
        end
      end
      event = DNDEvent.new
      event.attr_widget = self
      event.attr_time = OS._get_message_time
      event.attr_doit = ((result).equal?(COM::DRAGDROP_S_DROP))
      event.attr_detail = operation
      notify_listeners(DND::DragEnd, event)
      @data_effect = DND::DROP_NONE
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # EnumFormatEtc([in] dwDirection, [out] ppenumFormatetc)
    # Ownership of ppenumFormatetc transfers from callee to caller so reference count on ppenumFormatetc
    # must be incremented before returning.  Caller is responsible for releasing ppenumFormatetc.
    # 
    # long
    def _enum_format_etc(dw_direction, ppenum_formatetc)
      # only allow getting of data - SetData is not currently supported
      if ((dw_direction).equal?(COM::DATADIR_SET))
        return COM::E_NOTIMPL
      end
      # what types have been registered?
      allowed_data_types = Array.typed(TransferData).new(0) { nil }
      i = 0
      while i < @transfer_agents.attr_length
        transfer_agent = @transfer_agents[i]
        if (!(transfer_agent).nil?)
          formats = transfer_agent.get_supported_types
          new_allowed_data_types = Array.typed(TransferData).new(allowed_data_types.attr_length + formats.attr_length) { nil }
          System.arraycopy(allowed_data_types, 0, new_allowed_data_types, 0, allowed_data_types.attr_length)
          System.arraycopy(formats, 0, new_allowed_data_types, allowed_data_types.attr_length, formats.attr_length)
          allowed_data_types = new_allowed_data_types
        end
        i += 1
      end
      enum_formatetc = OleEnumFORMATETC.new
      enum_formatetc._add_ref
      formats = Array.typed(FORMATETC).new(allowed_data_types.attr_length) { nil }
      i_ = 0
      while i_ < formats.attr_length
        formats[i_] = allowed_data_types[i_].attr_formatetc
        i_ += 1
      end
      enum_formatetc.set_formats(formats)
      # long
      OS._move_memory(ppenum_formatetc, Array.typed(::Java::Int).new([enum_formatetc.get_address]), OS::PTR_SIZEOF)
      return COM::S_OK
    end
    
    typesig { [] }
    # Returns the Control which is registered for this DragSource.  This is the control that the
    # user clicks in to initiate dragging.
    # 
    # @return the Control which is registered for this DragSource
    def get_control
      return @control
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _get_data(p_formatetc, pmedium)
      # Called by a data consumer to obtain data from a source data object.
      # The GetData method renders the data described in the specified FORMATETC
      # structure and transfers it through the specified STGMEDIUM structure.
      # The caller then assumes responsibility for releasing the STGMEDIUM structure.
      if ((p_formatetc).equal?(0) || (pmedium).equal?(0))
        return COM::E_INVALIDARG
      end
      if (!(_query_get_data(p_formatetc)).equal?(COM::S_OK))
        return COM::DV_E_FORMATETC
      end
      transfer_data = TransferData.new
      transfer_data.attr_formatetc = FORMATETC.new
      COM._move_memory(transfer_data.attr_formatetc, p_formatetc, FORMATETC.attr_sizeof)
      transfer_data.attr_type = transfer_data.attr_formatetc.attr_cf_format
      transfer_data.attr_stgmedium = STGMEDIUM.new
      transfer_data.attr_result = COM::E_FAIL
      event = DNDEvent.new
      event.attr_widget = self
      event.attr_time = OS._get_message_time
      event.attr_data_type = transfer_data
      notify_listeners(DND::DragSetData, event)
      if (!event.attr_doit)
        return COM::E_FAIL
      end
      # get matching transfer agent to perform conversion
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
        return COM::DV_E_FORMATETC
      end
      transfer.java_to_native(event.attr_data, transfer_data)
      if (!(transfer_data.attr_result).equal?(COM::S_OK))
        return transfer_data.attr_result
      end
      COM._move_memory(pmedium, transfer_data.attr_stgmedium, STGMEDIUM.attr_sizeof)
      return transfer_data.attr_result
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
    
    typesig { [::Java::Int] }
    def _give_feedback(dw_effect)
      return COM::DRAGDROP_S_USEDEFAULTCURSORS
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    def _query_continue_drag(f_escape_pressed, grf_key_state)
      if (!(@top_control).nil? && @top_control.is_disposed)
        return COM::DRAGDROP_S_CANCEL
      end
      if (!(f_escape_pressed).equal?(0))
        if (!(@hwnd_drag).equal?(0))
          OS._image_list_drag_leave(@hwnd_drag)
        end
        return COM::DRAGDROP_S_CANCEL
      end
      # Bug in Windows.  On some machines that do not have XBUTTONs,
      # the MK_XBUTTON1 and OS.MK_XBUTTON2 bits are sometimes set,
      # causing mouse capture to become stuck.  The fix is to test
      # for the extra buttons only when they exist.
      mask = OS::MK_LBUTTON | OS::MK_MBUTTON | OS::MK_RBUTTON
      # if (display.xMouse) mask |= OS.MK_XBUTTON1 | OS.MK_XBUTTON2;
      if (((grf_key_state & mask)).equal?(0))
        if (!(@hwnd_drag).equal?(0))
          OS._image_list_drag_leave(@hwnd_drag)
        end
        return COM::DRAGDROP_S_DROP
      end
      if (!(@hwnd_drag).equal?(0))
        pt = POINT.new
        OS._get_cursor_pos(pt)
        rect = RECT.new
        OS._get_window_rect(@hwnd_drag, rect)
        OS._image_list_drag_move(pt.attr_x - rect.attr_left, pt.attr_y - rect.attr_top)
      end
      return COM::S_OK
    end
    
    typesig { [] }
    def on_dispose
      if ((@control).nil?)
        return
      end
      self._release
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
    
    typesig { [::Java::Int] }
    # long
    def _query_get_data(p_formatetc)
      if ((@transfer_agents).nil?)
        return COM::E_FAIL
      end
      transfer_data = TransferData.new
      transfer_data.attr_formatetc = FORMATETC.new
      COM._move_memory(transfer_data.attr_formatetc, p_formatetc, FORMATETC.attr_sizeof)
      transfer_data.attr_type = transfer_data.attr_formatetc.attr_cf_format
      # is this type supported by the transfer agent?
      i = 0
      while i < @transfer_agents.attr_length
        transfer = @transfer_agents[i]
        if (!(transfer).nil? && transfer.is_supported_type(transfer_data))
          return COM::S_OK
        end
        i += 1
      end
      return COM::DV_E_FORMATETC
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # QueryInterface([in] riid, [out] ppvObject)
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
      if (COM._is_equal_guid(guid, COM::IIDIUnknown) || COM._is_equal_guid(guid, COM::IIDIDropSource))
        # long
        OS._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_drop_source.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      if (COM._is_equal_guid(guid, COM::IIDIDataObject))
        # long
        OS._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_data_object.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      # long
      OS._move_memory(ppv_object, Array.typed(::Java::Int).new([0]), OS::PTR_SIZEOF)
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
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def _set_data(p_formatetc, pmedium, f_release)
      if ((p_formatetc).equal?(0) || (pmedium).equal?(0))
        return COM::E_INVALIDARG
      end
      formatetc = FORMATETC.new
      COM._move_memory(formatetc, p_formatetc, FORMATETC.attr_sizeof)
      if ((formatetc.attr_cf_format).equal?(CFSTR_PERFORMEDDROPEFFECT) && (formatetc.attr_tymed).equal?(COM::TYMED_HGLOBAL))
        stgmedium = STGMEDIUM.new
        COM._move_memory(stgmedium, pmedium, STGMEDIUM.attr_sizeof)
        # TODO - this should be GlobalLock()
        # long
        # long
        ptr_effect = Array.typed(::Java::Int).new(1) { 0 }
        OS._move_memory(ptr_effect, stgmedium.attr_union_field, OS::PTR_SIZEOF)
        effect = Array.typed(::Java::Int).new(1) { 0 }
        OS._move_memory(effect, ptr_effect[0], 4)
        @data_effect = os_to_op(effect[0])
      end
      if ((f_release).equal?(1))
        COM._release_stg_medium(pmedium)
      end
      return COM::S_OK
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
