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
  module OleEventSinkImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Ole::Win32
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  class OleEventSink 
    include_class_members OleEventSinkImports
    
    attr_accessor :widget
    alias_method :attr_widget, :widget
    undef_method :widget
    alias_method :attr_widget=, :widget=
    undef_method :widget=
    
    attr_accessor :i_dispatch
    alias_method :attr_i_dispatch, :i_dispatch
    undef_method :i_dispatch
    alias_method :attr_i_dispatch=, :i_dispatch=
    undef_method :i_dispatch=
    
    attr_accessor :ref_count
    alias_method :attr_ref_count, :ref_count
    undef_method :ref_count
    alias_method :attr_ref_count=, :ref_count=
    undef_method :ref_count=
    
    attr_accessor :obj_iunknown
    alias_method :attr_obj_iunknown, :obj_iunknown
    undef_method :obj_iunknown
    alias_method :attr_obj_iunknown=, :obj_iunknown=
    undef_method :obj_iunknown=
    
    attr_accessor :event_cookie
    alias_method :attr_event_cookie, :event_cookie
    undef_method :event_cookie
    alias_method :attr_event_cookie=, :event_cookie=
    undef_method :event_cookie=
    
    attr_accessor :event_guid
    alias_method :attr_event_guid, :event_guid
    undef_method :event_guid
    alias_method :attr_event_guid=, :event_guid=
    undef_method :event_guid=
    
    attr_accessor :event_table
    alias_method :attr_event_table, :event_table
    undef_method :event_table
    alias_method :attr_event_table=, :event_table=
    undef_method :event_table=
    
    typesig { [OleControlSite, ::Java::Int, GUID] }
    # long
    def initialize(widget, i_unknown, riid)
      @widget = nil
      @i_dispatch = nil
      @ref_count = 0
      @obj_iunknown = nil
      @event_cookie = 0
      @event_guid = nil
      @event_table = nil
      @widget = widget
      @event_guid = riid
      @obj_iunknown = IUnknown.new(i_unknown)
      create_cominterfaces
    end
    
    typesig { [] }
    def connect
      # long
      # long
      ppv_object = Array.typed(::Java::Int).new(1) { 0 }
      if ((@obj_iunknown._query_interface(COM::IIDIConnectionPointContainer, ppv_object)).equal?(COM::S_OK))
        cpc = IConnectionPointContainer.new(ppv_object[0])
        # long
        # long
        pp_cp = Array.typed(::Java::Int).new(1) { 0 }
        if ((cpc._find_connection_point(@event_guid, pp_cp)).equal?(COM::S_OK))
          cp = IConnectionPoint.new(pp_cp[0])
          p_cookie = Array.typed(::Java::Int).new(1) { 0 }
          if ((cp._advise(@i_dispatch.get_address, p_cookie)).equal?(COM::S_OK))
            @event_cookie = p_cookie[0]
          end
          cp._release
        end
        cpc._release
      end
    end
    
    typesig { [::Java::Int, OleListener] }
    def add_listener(event_id, listener)
      if ((listener).nil?)
        OLE.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@event_table).nil?)
        @event_table = OleEventTable.new
      end
      @event_table.hook(event_id, listener)
    end
    
    typesig { [] }
    def _add_ref
      @ref_count += 1
      return @ref_count
    end
    
    typesig { [] }
    def create_cominterfaces
      @i_dispatch = Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members OleEventSink
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
        # method3 GetTypeInfoCount - not implemented
        # method4 GetTypeInfo - not implemented
        # method5 GetIDsOfNames - not implemented
        # long
        # long
        define_method :method6 do |args|
          # 64
          # 64
          # 64
          return _invoke(RJava.cast_to_int(args[0]), args[1], RJava.cast_to_int(args[2]), RJava.cast_to_int(args[3]), args[4], args[5], args[6], args[7])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 1, 3, 4, 8]))
    end
    
    typesig { [] }
    def disconnect
      # disconnect event sink
      if (!(@event_cookie).equal?(0) && !(@obj_iunknown).nil?)
        # long
        # long
        ppv_object = Array.typed(::Java::Int).new(1) { 0 }
        if ((@obj_iunknown._query_interface(COM::IIDIConnectionPointContainer, ppv_object)).equal?(COM::S_OK))
          cpc = IConnectionPointContainer.new(ppv_object[0])
          if ((cpc._find_connection_point(@event_guid, ppv_object)).equal?(COM::S_OK))
            cp = IConnectionPoint.new(ppv_object[0])
            if ((cp._unadvise(@event_cookie)).equal?(COM::S_OK))
              @event_cookie = 0
            end
            cp._release
          end
          cpc._release
        end
      end
    end
    
    typesig { [] }
    def dispose_cominterfaces
      if (!(@i_dispatch).nil?)
        @i_dispatch.dispose
      end
      @i_dispatch = nil
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def _invoke(disp_id_member, riid, lcid, dw_flags, p_disp_params, p_var_result, p_excep_info, p_arg_err)
      if ((@event_table).nil? || !@event_table.hooks(disp_id_member))
        return COM::S_OK
      end
      # Construct an array of the parameters that are passed in
      # Note: parameters are passed in reverse order - here we will correct the order
      event_info = nil
      if (!(p_disp_params).equal?(0))
        disp_params = DISPPARAMS.new
        COM._move_memory(disp_params, p_disp_params, DISPPARAMS.attr_sizeof)
        event_info = Array.typed(Variant).new(disp_params.attr_c_args) { nil }
        size = VARIANT.attr_sizeof
        # long
        offset = (disp_params.attr_c_args - 1) * size
        j = 0
        while j < disp_params.attr_c_args
          event_info[j] = Variant.new
          event_info[j].set_data(disp_params.attr_rgvarg + offset)
          offset = offset - size
          j += 1
        end
      end
      event = OleEvent.new
      event.attr_arguments = event_info
      notify_listener(disp_id_member, event)
      return COM::S_OK
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
      event.attr_widget = @widget
      @event_table.send_event(event)
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
      if (COM._is_equal_guid(guid, COM::IIDIUnknown) || COM._is_equal_guid(guid, COM::IIDIDispatch) || COM._is_equal_guid(guid, @event_guid))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@i_dispatch.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return OLE::S_OK
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
    def remove_listener(event_id, listener)
      if ((listener).nil?)
        OLE.error(SWT::ERROR_NULL_ARGUMENT)
      end
      if ((@event_table).nil?)
        return
      end
      @event_table.unhook(event_id, listener)
    end
    
    typesig { [] }
    def has_listeners
      return @event_table.has_entries
    end
    
    private
    alias_method :initialize__ole_event_sink, :initialize
  end
  
end
