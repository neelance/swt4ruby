require "rjava"

# Copyright (c) 2000, 2007 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Ole::Win32
  module OlePropertyChangeSinkImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Ole::Win32
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt
    }
  end
  
  class OlePropertyChangeSink 
    include_class_members OlePropertyChangeSinkImports
    
    attr_accessor :control_site
    alias_method :attr_control_site, :control_site
    undef_method :control_site
    alias_method :attr_control_site=, :control_site=
    undef_method :control_site=
    
    # private IUnknown objIUnknown;
    attr_accessor :i_unknown
    alias_method :attr_i_unknown, :i_unknown
    undef_method :i_unknown
    alias_method :attr_i_unknown=, :i_unknown=
    undef_method :i_unknown=
    
    attr_accessor :i_property_notify_sink
    alias_method :attr_i_property_notify_sink, :i_property_notify_sink
    undef_method :i_property_notify_sink
    alias_method :attr_i_property_notify_sink=, :i_property_notify_sink=
    undef_method :i_property_notify_sink=
    
    attr_accessor :ref_count
    alias_method :attr_ref_count, :ref_count
    undef_method :ref_count
    alias_method :attr_ref_count=, :ref_count=
    undef_method :ref_count=
    
    attr_accessor :property_cookie
    alias_method :attr_property_cookie, :property_cookie
    undef_method :property_cookie
    alias_method :attr_property_cookie=, :property_cookie=
    undef_method :property_cookie=
    
    attr_accessor :event_table
    alias_method :attr_event_table, :event_table
    undef_method :event_table
    alias_method :attr_event_table=, :event_table=
    undef_method :event_table=
    
    typesig { [OleControlSite] }
    def initialize(control_site)
      @control_site = nil
      @i_unknown = nil
      @i_property_notify_sink = nil
      @ref_count = 0
      @property_cookie = 0
      @event_table = nil
      @control_site = control_site
      create_cominterfaces
    end
    
    typesig { [::Java::Int, OleListener] }
    def add_listener(property_id, listener)
      if ((listener).nil?)
        OLE.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@event_table).nil?)
        @event_table = OleEventTable.new
      end
      @event_table.hook(property_id, listener)
    end
    
    typesig { [] }
    def _add_ref
      @ref_count += 1
      return @ref_count
    end
    
    typesig { [IUnknown] }
    def connect(obj_iunknown)
      # Set up property change notification sink
      # long
      # long
      ppv_object = Array.typed(::Java::Int).new(1) { 0 }
      if ((obj_iunknown._query_interface(COM::IIDIConnectionPointContainer, ppv_object)).equal?(COM::S_OK))
        cpc = IConnectionPointContainer.new(ppv_object[0])
        if ((cpc._find_connection_point(COM::IIDIPropertyNotifySink, ppv_object)).equal?(COM::S_OK))
          cp = IConnectionPoint.new(ppv_object[0])
          cookie = Array.typed(::Java::Int).new(1) { 0 }
          if ((cp._advise(@i_property_notify_sink.get_address, cookie)).equal?(COM::S_OK))
            @property_cookie = cookie[0]
          end
          cp._release
        end
        cpc._release
      end
    end
    
    typesig { [] }
    def create_cominterfaces
      @i_unknown = # register each of the interfaces that this object implements
      Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members OlePropertyChangeSink
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
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0]))
      @i_property_notify_sink = Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members OlePropertyChangeSink
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
          return _on_changed(RJava.cast_to_int(args[0]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          # 64
          return _on_request_edit(RJava.cast_to_int(args[0]))
        end
        
        typesig { [] }
        define_method :initialize do
          super()
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 1, 1]))
    end
    
    typesig { [IUnknown] }
    def disconnect(obj_iunknown)
      # disconnect property notification sink
      if (!(@property_cookie).equal?(0) && !(obj_iunknown).nil?)
        # long
        # long
        ppv_object = Array.typed(::Java::Int).new(1) { 0 }
        if ((obj_iunknown._query_interface(COM::IIDIConnectionPointContainer, ppv_object)).equal?(COM::S_OK))
          cpc = IConnectionPointContainer.new(ppv_object[0])
          if ((cpc._find_connection_point(COM::IIDIPropertyNotifySink, ppv_object)).equal?(COM::S_OK))
            cp = IConnectionPoint.new(ppv_object[0])
            if ((cp._unadvise(@property_cookie)).equal?(COM::S_OK))
              @property_cookie = 0
            end
            cp._release
          end
          cpc._release
        end
      end
    end
    
    typesig { [] }
    def dispose_cominterfaces
      if (!(@i_unknown).nil?)
        @i_unknown.dispose
      end
      @i_unknown = nil
      if (!(@i_property_notify_sink).nil?)
        @i_property_notify_sink.dispose
      end
      @i_property_notify_sink = nil
    end
    
    typesig { [::Java::Int, OleEvent] }
    # Notify listeners of an event.
    # <p>
    # This method notifies all listeners that an event
    # has occurred.
    # 
    # @param eventType the desired SWT event
    # @param event the event data
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT when handler is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_THREAD_INVALID_ACCESS when called from the wrong thread</li>
    # <li>ERROR_WIDGET_DISPOSED when the widget has been disposed</li>
    # </ul>
    def notify_listener(event_type, event)
      if ((event).nil?)
        OLE.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@event_table).nil?)
        return
      end
      event.attr_type = event_type
      event.attr_widget = @control_site
      @event_table.send_event(event)
    end
    
    typesig { [::Java::Int] }
    def _on_changed(disp_id)
      if ((@event_table).nil? || !@event_table.hooks(disp_id))
        return COM::S_OK
      end
      event = OleEvent.new
      event.attr_detail = OLE::PROPERTY_CHANGED
      notify_listener(disp_id, event)
      return COM::S_OK
    end
    
    typesig { [::Java::Int] }
    def _on_request_edit(disp_id)
      if ((@event_table).nil? || !@event_table.hooks(disp_id))
        return COM::S_OK
      end
      event = OleEvent.new
      event.attr_doit = true
      event.attr_detail = OLE::PROPERTY_CHANGING
      notify_listener(disp_id, event)
      return (event.attr_doit) ? COM::S_OK : COM::S_FALSE
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def _query_interface(riid, ppv_object)
      if ((riid).equal?(0) || (ppv_object).equal?(0))
        return COM::E_INVALIDARG
      end
      guid = GUID.new
      COM._move_memory(guid, riid, GUID.attr_sizeof)
      if (COM._is_equal_guid(guid, COM::IIDIUnknown))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_unknown.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      if (COM._is_equal_guid(guid, COM::IIDIPropertyNotifySink))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_property_notify_sink.get_address]), OS::PTR_SIZEOF)
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
      end
      return @ref_count
    end
    
    typesig { [::Java::Int, OleListener] }
    def remove_listener(property_id, listener)
      if ((listener).nil?)
        OLE.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@event_table).nil?)
        return
      end
      @event_table.unhook(property_id, listener)
    end
    
    private
    alias_method :initialize__ole_property_change_sink, :initialize
  end
  
end
