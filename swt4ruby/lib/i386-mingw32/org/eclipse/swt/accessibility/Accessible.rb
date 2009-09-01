require "rjava"

# Copyright (c) 2000, 2008 IBM Corporation and others.
# All rights reserved. This program and the accompanying materials
# are made available under the terms of the Eclipse Public License v1.0
# which accompanies this distribution, and is available at
# http://www.eclipse.org/legal/epl-v10.html
# 
# Contributors:
# IBM Corporation - initial API and implementation
module Org::Eclipse::Swt::Accessibility
  module AccessibleImports #:nodoc:
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Accessibility
      include_const ::Java::Util, :Vector
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Win32
      include ::Org::Eclipse::Swt::Ole::Win32
      include ::Org::Eclipse::Swt::Internal::Ole::Win32
    }
  end
  
  # Instances of this class provide a bridge between application
  # code and assistive technology clients. Many platforms provide
  # default accessible behavior for most widgets, and this class
  # allows that default behavior to be overridden. Applications
  # can get the default Accessible object for a control by sending
  # it <code>getAccessible</code>, and then add an accessible listener
  # to override simple items like the name and help string, or they
  # can add an accessible control listener to override complex items.
  # As a rule of thumb, an application would only want to use the
  # accessible control listener to implement accessibility for a
  # custom control.
  # 
  # @see Control#getAccessible
  # @see AccessibleListener
  # @see AccessibleEvent
  # @see AccessibleControlListener
  # @see AccessibleControlEvent
  # @see <a href="http://www.eclipse.org/swt/snippets/#accessibility">Accessibility snippets</a>
  # @see <a href="http://www.eclipse.org/swt/">Sample code and further information</a>
  # 
  # @since 2.0
  class Accessible 
    include_class_members AccessibleImports
    
    attr_accessor :ref_count
    alias_method :attr_ref_count, :ref_count
    undef_method :ref_count
    alias_method :attr_ref_count=, :ref_count=
    undef_method :ref_count=
    
    attr_accessor :enum_index
    alias_method :attr_enum_index, :enum_index
    undef_method :enum_index
    alias_method :attr_enum_index=, :enum_index=
    undef_method :enum_index=
    
    attr_accessor :obj_iaccessible
    alias_method :attr_obj_iaccessible, :obj_iaccessible
    undef_method :obj_iaccessible
    alias_method :attr_obj_iaccessible=, :obj_iaccessible=
    undef_method :obj_iaccessible=
    
    attr_accessor :obj_ienum_variant
    alias_method :attr_obj_ienum_variant, :obj_ienum_variant
    undef_method :obj_ienum_variant
    alias_method :attr_obj_ienum_variant=, :obj_ienum_variant=
    undef_method :obj_ienum_variant=
    
    attr_accessor :iaccessible
    alias_method :attr_iaccessible, :iaccessible
    undef_method :iaccessible
    alias_method :attr_iaccessible=, :iaccessible=
    undef_method :iaccessible=
    
    attr_accessor :accessible_listeners
    alias_method :attr_accessible_listeners, :accessible_listeners
    undef_method :accessible_listeners
    alias_method :attr_accessible_listeners=, :accessible_listeners=
    undef_method :accessible_listeners=
    
    attr_accessor :accessible_control_listeners
    alias_method :attr_accessible_control_listeners, :accessible_control_listeners
    undef_method :accessible_control_listeners
    alias_method :attr_accessible_control_listeners=, :accessible_control_listeners=
    undef_method :accessible_control_listeners=
    
    attr_accessor :text_listeners
    alias_method :attr_text_listeners, :text_listeners
    undef_method :text_listeners
    alias_method :attr_text_listeners=, :text_listeners=
    undef_method :text_listeners=
    
    attr_accessor :variants
    alias_method :attr_variants, :variants
    undef_method :variants
    alias_method :attr_variants=, :variants=
    undef_method :variants=
    
    attr_accessor :control
    alias_method :attr_control, :control
    undef_method :control
    alias_method :attr_control=, :control=
    undef_method :control=
    
    typesig { [Control] }
    def initialize(control)
      @ref_count = 0
      @enum_index = 0
      @obj_iaccessible = nil
      @obj_ienum_variant = nil
      @iaccessible = nil
      @accessible_listeners = Vector.new
      @accessible_control_listeners = Vector.new
      @text_listeners = Vector.new
      @variants = nil
      @control = nil
      @control = control
      # long
      # long
      ppv_object = Array.typed(::Java::Int).new(1) { 0 }
      # CreateStdAccessibleObject([in] hwnd, [in] idObject, [in] riidInterface, [out] ppvObject).
      # AddRef has already been called on ppvObject by the callee and must be released by the caller.
      # 
      # 64
      result = RJava.cast_to_int(COM._create_std_accessible_object(control.attr_handle, COM::OBJID_CLIENT, COM::IIDIAccessible, ppv_object))
      # The object needs to be checked, because if the CreateStdAccessibleObject()
      # symbol is not found, the return value is S_OK.
      if ((ppv_object[0]).equal?(0))
        return
      end
      if (!(result).equal?(COM::S_OK))
        OLE.error(OLE::ERROR_CANNOT_CREATE_OBJECT, result)
      end
      @iaccessible = IAccessible.new(ppv_object[0])
      @obj_iaccessible = Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members Accessible
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
        # method6 Invoke - not implemented
        # long
        # long
        define_method :method7 do |args|
          return get_acc_parent(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method8 do |args|
          return get_acc_child_count(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method9 do |args|
          return get_acc_child(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method10 do |args|
          return get_acc_name(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method11 do |args|
          return get_acc_value(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method12 do |args|
          return get_acc_description(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method13 do |args|
          return get_acc_role(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method14 do |args|
          return get_acc_state(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method15 do |args|
          return get_acc_help(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method16 do |args|
          return get_acc_help_topic(args[0], args[1], args[2])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method17 do |args|
          return get_acc_keyboard_shortcut(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method18 do |args|
          return get_acc_focus(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method19 do |args|
          return get_acc_selection(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method20 do |args|
          return get_acc_default_action(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method21 do |args|
          # 64
          return acc_select(RJava.cast_to_int(args[0]), args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method22 do |args|
          return acc_location(args[0], args[1], args[2], args[3], args[4])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method23 do |args|
          # 64
          return acc_navigate(RJava.cast_to_int(args[0]), args[1], args[2])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method24 do |args|
          # 64
          # 64
          return acc_hit_test(RJava.cast_to_int(args[0]), RJava.cast_to_int(args[1]), args[2])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method25 do |args|
          return acc_do_default_action(args[0])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method26 do |args|
          return put_acc_name(args[0], args[1])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method27 do |args|
          return put_acc_value(args[0], args[1])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 1, 3, 5, 8, 1, 1, 2, 2, 2, 2, 2, 2, 2, 3, 2, 1, 1, 2, 2, 5, 3, 3, 1, 2, 2]))
      # long
      pp_vtable = @obj_iaccessible.attr_pp_vtable
      # long
      # long
      p_vtable = Array.typed(::Java::Int).new(1) { 0 }
      COM._move_memory(p_vtable, pp_vtable, OS::PTR_SIZEOF)
      # long
      # long
      funcs = Array.typed(::Java::Int).new(28) { 0 }
      COM._move_memory(funcs, p_vtable[0], OS::PTR_SIZEOF * funcs.attr_length)
      funcs[9] = COM.get_acc_child_callback(funcs[9])
      funcs[10] = COM.get_acc_name_callback(funcs[10])
      funcs[11] = COM.get_acc_value_callback(funcs[11])
      funcs[12] = COM.get_acc_description_callback(funcs[12])
      funcs[13] = COM.get_acc_role_callback(funcs[13])
      funcs[14] = COM.get_acc_state_callback(funcs[14])
      funcs[15] = COM.get_acc_help_callback(funcs[15])
      funcs[16] = COM.get_acc_help_topic_callback(funcs[16])
      funcs[17] = COM.get_acc_keyboard_shortcut_callback(funcs[17])
      funcs[20] = COM.get_acc_default_action_callback(funcs[20])
      funcs[21] = COM.acc_select_callback(funcs[21])
      funcs[22] = COM.acc_location_callback(funcs[22])
      funcs[23] = COM.acc_navigate_callback(funcs[23])
      funcs[25] = COM.acc_do_default_action_callback(funcs[25])
      funcs[26] = COM.put_acc_name_callback(funcs[26])
      funcs[27] = COM.put_acc_value_callback(funcs[27])
      COM._move_memory(p_vtable[0], funcs, OS::PTR_SIZEOF * funcs.attr_length)
      @obj_ienum_variant = Class.new(COMObject.class == Class ? COMObject : Object) do
        extend LocalClass
        include_class_members Accessible
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
          return _next(RJava.cast_to_int(args[0]), args[1], args[2])
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method4 do |args|
          # 64
          return _skip(RJava.cast_to_int(args[0]))
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method5 do |args|
          return _reset
        end
        
        typesig { [Array.typed(::Java::Int)] }
        # long
        # long
        define_method :method6 do |args|
          return _clone(args[0])
        end
        
        typesig { [Vararg.new(Object)] }
        define_method :initialize do |*args|
          super(*args)
        end
        
        private
        alias_method :initialize_anonymous, :initialize
      end.new_local(self, Array.typed(::Java::Int).new([2, 0, 0, 3, 1, 0, 1]))
      _add_ref
    end
    
    class_module.module_eval {
      typesig { [Control] }
      # Invokes platform specific functionality to allocate a new accessible object.
      # <p>
      # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
      # API for <code>Accessible</code>. It is marked public only so that it
      # can be shared within the packages provided by SWT. It is not
      # available on all platforms, and should never be called from
      # application code.
      # </p>
      # 
      # @param control the control to get the accessible object for
      # @return the platform specific accessible object
      def internal_new__accessible(control)
        return Accessible.new(control)
      end
    }
    
    typesig { [AccessibleListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when an accessible client asks for certain strings,
    # such as name, description, help, or keyboard shortcut. The
    # listener is notified by sending it one of the messages defined
    # in the <code>AccessibleListener</code> interface.
    # 
    # @param listener the listener that should be notified when the receiver
    # is asked for a name, description, help, or keyboard shortcut string
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    # 
    # @see AccessibleListener
    # @see #removeAccessibleListener
    def add_accessible_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @accessible_listeners.add_element(listener)
    end
    
    typesig { [AccessibleControlListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when an accessible client asks for custom control
    # specific information. The listener is notified by sending it
    # one of the messages defined in the <code>AccessibleControlListener</code>
    # interface.
    # 
    # @param listener the listener that should be notified when the receiver
    # is asked for custom control specific information
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    # 
    # @see AccessibleControlListener
    # @see #removeAccessibleControlListener
    def add_accessible_control_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @accessible_control_listeners.add_element(listener)
    end
    
    typesig { [AccessibleTextListener] }
    # Adds the listener to the collection of listeners who will
    # be notified when an accessible client asks for custom text control
    # specific information. The listener is notified by sending it
    # one of the messages defined in the <code>AccessibleTextListener</code>
    # interface.
    # 
    # @param listener the listener that should be notified when the receiver
    # is asked for custom text control specific information
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    # 
    # @see AccessibleTextListener
    # @see #removeAccessibleTextListener
    # 
    # @since 3.0
    def add_accessible_text_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @text_listeners.add_element(listener)
    end
    
    typesig { [] }
    # Returns the control for this Accessible object.
    # 
    # @return the receiver's control
    # @since 3.0
    def get_control
      return @control
    end
    
    typesig { [] }
    # Invokes platform specific functionality to dispose an accessible object.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Accessible</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    def internal_dispose__accessible
      if (!(@iaccessible).nil?)
        @iaccessible._release
      end
      @iaccessible = nil
      _release
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # Invokes platform specific functionality to handle a window message.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Accessible</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    # 
    # long
    # long
    # long
    def internal__wm_getobject(w_param, l_param)
      if ((@obj_iaccessible).nil?)
        return 0
      end
      # 64
      if ((RJava.cast_to_int(l_param)).equal?(COM::OBJID_CLIENT))
        # LresultFromObject([in] riid, [in] wParam, [in] pAcc)
        # The argument pAcc is owned by the caller so reference count does not
        # need to be incremented.
        return COM._lresult_from_object(COM::IIDIAccessible, w_param, @obj_iaccessible.get_address)
      end
      return 0
    end
    
    typesig { [AccessibleListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when an accessible client asks for certain strings,
    # such as name, description, help, or keyboard shortcut.
    # 
    # @param listener the listener that should no longer be notified when the receiver
    # is asked for a name, description, help, or keyboard shortcut string
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    # 
    # @see AccessibleListener
    # @see #addAccessibleListener
    def remove_accessible_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @accessible_listeners.remove_element(listener)
    end
    
    typesig { [AccessibleControlListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when an accessible client asks for custom control
    # specific information.
    # 
    # @param listener the listener that should no longer be notified when the receiver
    # is asked for custom control specific information
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    # 
    # @see AccessibleControlListener
    # @see #addAccessibleControlListener
    def remove_accessible_control_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @accessible_control_listeners.remove_element(listener)
    end
    
    typesig { [AccessibleTextListener] }
    # Removes the listener from the collection of listeners who will
    # be notified when an accessible client asks for custom text control
    # specific information.
    # 
    # @param listener the listener that should no longer be notified when the receiver
    # is asked for custom text control specific information
    # 
    # @exception IllegalArgumentException <ul>
    # <li>ERROR_NULL_ARGUMENT - if the listener is null</li>
    # </ul>
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    # 
    # @see AccessibleTextListener
    # @see #addAccessibleTextListener
    # 
    # @since 3.0
    def remove_accessible_text_listener(listener)
      check_widget
      if ((listener).nil?)
        SWT.error(SWT::ERROR_NULL_ARGUMENT)
      end
      @text_listeners.remove_element(listener)
    end
    
    typesig { [] }
    # Sends a message to accessible clients that the child selection
    # within a custom container control has changed.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    # 
    # @since 3.0
    def selection_changed
      check_widget
      COM._notify_win_event(COM::EVENT_OBJECT_SELECTIONWITHIN, @control.attr_handle, COM::OBJID_CLIENT, COM::CHILDID_SELF)
    end
    
    typesig { [::Java::Int] }
    # Sends a message to accessible clients indicating that the focus
    # has changed within a custom control.
    # 
    # @param childID an identifier specifying a child of the control
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    def set_focus(child_id)
      check_widget
      COM._notify_win_event(COM::EVENT_OBJECT_FOCUS, @control.attr_handle, COM::OBJID_CLIENT, child_idto_os(child_id))
    end
    
    typesig { [::Java::Int] }
    # Sends a message to accessible clients that the text
    # caret has moved within a custom control.
    # 
    # @param index the new caret index within the control
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    # 
    # @since 3.0
    def text_caret_moved(index)
      check_widget
      COM._notify_win_event(COM::EVENT_OBJECT_LOCATIONCHANGE, @control.attr_handle, COM::OBJID_CARET, COM::CHILDID_SELF)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Sends a message to accessible clients that the text
    # within a custom control has changed.
    # 
    # @param type the type of change, one of <code>ACC.NOTIFY_TEXT_INSERT</code>
    # or <code>ACC.NOTIFY_TEXT_DELETE</code>
    # @param startIndex the text index within the control where the insertion or deletion begins
    # @param length the non-negative length in characters of the insertion or deletion
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    # 
    # @see ACC#TEXT_INSERT
    # @see ACC#TEXT_DELETE
    # 
    # @since 3.0
    def text_changed(type, start_index, length)
      check_widget
      COM._notify_win_event(COM::EVENT_OBJECT_VALUECHANGE, @control.attr_handle, COM::OBJID_CLIENT, COM::CHILDID_SELF)
    end
    
    typesig { [] }
    # Sends a message to accessible clients that the text
    # selection has changed within a custom control.
    # 
    # @exception SWTException <ul>
    # <li>ERROR_WIDGET_DISPOSED - if the receiver's control has been disposed</li>
    # <li>ERROR_THREAD_INVALID_ACCESS - if not called from the thread that created the receiver's control</li>
    # </ul>
    # 
    # @since 3.0
    def text_selection_changed
      check_widget
      # not an MSAA event
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # QueryInterface([in] iid, [out] ppvObject)
    # Ownership of ppvObject transfers from callee to caller so reference count on ppvObject
    # must be incremented before returning.  Caller is responsible for releasing ppvObject.
    # 
    # long
    # long
    def _query_interface(iid, ppv_object)
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      guid = GUID.new
      COM._move_memory(guid, iid, GUID.attr_sizeof)
      if (COM._is_equal_guid(guid, COM::IIDIUnknown))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@obj_iaccessible.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      if (COM._is_equal_guid(guid, COM::IIDIDispatch))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@obj_iaccessible.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      if (COM._is_equal_guid(guid, COM::IIDIAccessible))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@obj_iaccessible.get_address]), OS::PTR_SIZEOF)
        _add_ref
        return COM::S_OK
      end
      if (COM._is_equal_guid(guid, COM::IIDIEnumVARIANT))
        # long
        COM._move_memory(ppv_object, Array.typed(::Java::Int).new([@obj_ienum_variant.get_address]), OS::PTR_SIZEOF)
        _add_ref
        @enum_index = 0
        return COM::S_OK
      end
      # long
      # long
      ppv = Array.typed(::Java::Int).new(1) { 0 }
      result = @iaccessible._query_interface(guid, ppv)
      COM._move_memory(ppv_object, ppv, OS::PTR_SIZEOF)
      return result
    end
    
    typesig { [] }
    def _add_ref
      @ref_count += 1
      return @ref_count
    end
    
    typesig { [] }
    def _release
      @ref_count -= 1
      if ((@ref_count).equal?(0))
        if (!(@obj_iaccessible).nil?)
          @obj_iaccessible.dispose
        end
        @obj_iaccessible = nil
        if (!(@obj_ienum_variant).nil?)
          @obj_ienum_variant.dispose
        end
        @obj_ienum_variant = nil
      end
      return @ref_count
    end
    
    typesig { [::Java::Int] }
    # long
    def acc_do_default_action(variant)
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      # Currently, we don't let the application override this. Forward to the proxy.
      code = @iaccessible.acc_do_default_action(variant)
      if ((code).equal?(COM::E_INVALIDARG))
        code = COM::S_FALSE
      end # proxy doesn't know about app childID
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    def acc_hit_test(x_left, y_top, pvar_child)
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      if ((@accessible_control_listeners.size).equal?(0))
        return @iaccessible.acc_hit_test(x_left, y_top, pvar_child)
      end
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = ACC::CHILDID_NONE
      event.attr_x = x_left
      event.attr_y = y_top
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_child_at_point(event)
        i += 1
      end
      child_id = event.attr_child_id
      if ((child_id).equal?(ACC::CHILDID_NONE))
        return @iaccessible.acc_hit_test(x_left, y_top, pvar_child)
      end
      # TODO - use VARIANT structure
      COM._move_memory(pvar_child, Array.typed(::Java::Short).new([COM::VT_I4]), 2)
      COM._move_memory(pvar_child + 8, Array.typed(::Java::Int).new([child_idto_os(child_id)]), 4)
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    # long
    # long
    def acc_location(px_left, py_top, pcx_width, pcy_height, variant)
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      v = VARIANT.new
      COM._move_memory(v, variant, VARIANT.attr_sizeof)
      if (!((v.attr_vt & 0xffff)).equal?(COM::VT_I4))
        return COM::E_INVALIDARG
      end
      # Get the default location from the OS.
      os_left = 0
      os_top = 0
      os_width = 0
      os_height = 0
      code = @iaccessible.acc_location(px_left, py_top, pcx_width, pcy_height, variant)
      if ((code).equal?(COM::E_INVALIDARG))
        code = COM::S_FALSE
      end # proxy doesn't know about app childID
      if ((@accessible_control_listeners.size).equal?(0))
        return code
      end
      if ((code).equal?(COM::S_OK))
        p_left = Array.typed(::Java::Int).new(1) { 0 }
        p_top = Array.typed(::Java::Int).new(1) { 0 }
        p_width = Array.typed(::Java::Int).new(1) { 0 }
        p_height = Array.typed(::Java::Int).new(1) { 0 }
        COM._move_memory(p_left, px_left, 4)
        COM._move_memory(p_top, py_top, 4)
        COM._move_memory(p_width, pcx_width, 4)
        COM._move_memory(p_height, pcy_height, 4)
        os_left = p_left[0]
        os_top = p_top[0]
        os_width = p_width[0]
        os_height = p_height[0]
      end
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = os_to_child_id(v.attr_l_val)
      event.attr_x = os_left
      event.attr_y = os_top
      event.attr_width = os_width
      event.attr_height = os_height
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_location(event)
        i += 1
      end
      OS._move_memory(px_left, Array.typed(::Java::Int).new([event.attr_x]), 4)
      OS._move_memory(py_top, Array.typed(::Java::Int).new([event.attr_y]), 4)
      OS._move_memory(pcx_width, Array.typed(::Java::Int).new([event.attr_width]), 4)
      OS._move_memory(pcy_height, Array.typed(::Java::Int).new([event.attr_height]), 4)
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    def acc_navigate(nav_dir, variant, pvar_end_up_at)
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      # Currently, we don't let the application override this. Forward to the proxy.
      code = @iaccessible.acc_navigate(nav_dir, variant, pvar_end_up_at)
      if ((code).equal?(COM::E_INVALIDARG))
        code = COM::S_FALSE
      end # proxy doesn't know about app childID
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    def acc_select(flags_select, variant)
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      # Currently, we don't let the application override this. Forward to the proxy.
      code = @iaccessible.acc_select(flags_select, variant)
      if ((code).equal?(COM::E_INVALIDARG))
        code = COM::S_FALSE
      end # proxy doesn't know about app childID
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # get_accChild([in] varChild, [out] ppdispChild)
    # Ownership of ppdispChild transfers from callee to caller so reference count on ppdispChild
    # must be incremented before returning.  The caller is responsible for releasing ppdispChild.
    # 
    # long
    # long
    def get_acc_child(variant, ppdisp_child)
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      v = VARIANT.new
      COM._move_memory(v, variant, VARIANT.attr_sizeof)
      if (!((v.attr_vt & 0xffff)).equal?(COM::VT_I4))
        return COM::E_INVALIDARG
      end
      if ((@accessible_control_listeners.size).equal?(0))
        code = @iaccessible.get_acc_child(variant, ppdisp_child)
        if ((code).equal?(COM::E_INVALIDARG))
          code = COM::S_FALSE
        end # proxy doesn't know about app childID
        return code
      end
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = os_to_child_id(v.attr_l_val)
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_child(event)
        i += 1
      end
      accessible = event.attr_accessible
      if (!(accessible).nil?)
        accessible._add_ref
        # long
        COM._move_memory(ppdisp_child, Array.typed(::Java::Int).new([accessible.attr_obj_iaccessible.get_address]), OS::PTR_SIZEOF)
        return COM::S_OK
      end
      return COM::S_FALSE
    end
    
    typesig { [::Java::Int] }
    # long
    def get_acc_child_count(pcount_children)
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      # Get the default child count from the OS.
      os_child_count = 0
      code = @iaccessible.get_acc_child_count(pcount_children)
      if ((@accessible_control_listeners.size).equal?(0))
        return code
      end
      if ((code).equal?(COM::S_OK))
        p_child_count = Array.typed(::Java::Int).new(1) { 0 }
        COM._move_memory(p_child_count, pcount_children, 4)
        os_child_count = p_child_count[0]
      end
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = ACC::CHILDID_SELF
      event.attr_detail = os_child_count
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_child_count(event)
        i += 1
      end
      COM._move_memory(pcount_children, Array.typed(::Java::Int).new([event.attr_detail]), 4)
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def get_acc_default_action(variant, psz_default_action)
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      v = VARIANT.new
      COM._move_memory(v, variant, VARIANT.attr_sizeof)
      if (!((v.attr_vt & 0xffff)).equal?(COM::VT_I4))
        return COM::E_INVALIDARG
      end
      # Get the default defaultAction from the OS.
      os_default_action = nil
      code = @iaccessible.get_acc_default_action(variant, psz_default_action)
      if ((code).equal?(COM::E_INVALIDARG))
        code = COM::S_FALSE
      end # proxy doesn't know about app childID
      if ((@accessible_control_listeners.size).equal?(0))
        return code
      end
      if ((code).equal?(COM::S_OK))
        # long
        # long
        p_default_action = Array.typed(::Java::Int).new(1) { 0 }
        COM._move_memory(p_default_action, psz_default_action, OS::PTR_SIZEOF)
        size_ = COM._sys_string_byte_len(p_default_action[0])
        if (size_ > 0)
          buffer = CharArray.new((size_ + 1) / 2)
          COM._move_memory(buffer, p_default_action[0], size_)
          os_default_action = RJava.cast_to_string(String.new(buffer))
        end
      end
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = os_to_child_id(v.attr_l_val)
      event.attr_result = os_default_action
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_default_action(event)
        i += 1
      end
      if ((event.attr_result).nil?)
        return code
      end
      data = (RJava.cast_to_string(event.attr_result) + "\0").to_char_array
      # long
      ptr = COM._sys_alloc_string(data)
      # long
      COM._move_memory(psz_default_action, Array.typed(::Java::Int).new([ptr]), OS::PTR_SIZEOF)
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def get_acc_description(variant, psz_description)
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      v = VARIANT.new
      COM._move_memory(v, variant, VARIANT.attr_sizeof)
      if (!((v.attr_vt & 0xffff)).equal?(COM::VT_I4))
        return COM::E_INVALIDARG
      end
      # Get the default description from the OS.
      os_description = nil
      code = @iaccessible.get_acc_description(variant, psz_description)
      if ((code).equal?(COM::E_INVALIDARG))
        code = COM::S_FALSE
      end # proxy doesn't know about app childID
      # TEMPORARY CODE - process tree even if there are no apps listening
      if ((@accessible_listeners.size).equal?(0) && !(@control.is_a?(Tree)))
        return code
      end
      if ((code).equal?(COM::S_OK))
        # long
        # long
        p_description = Array.typed(::Java::Int).new(1) { 0 }
        COM._move_memory(p_description, psz_description, OS::PTR_SIZEOF)
        size_ = COM._sys_string_byte_len(p_description[0])
        if (size_ > 0)
          buffer = CharArray.new((size_ + 1) / 2)
          COM._move_memory(buffer, p_description[0], size_)
          os_description = RJava.cast_to_string(String.new(buffer))
        end
      end
      event = AccessibleEvent.new(self)
      event.attr_child_id = os_to_child_id(v.attr_l_val)
      event.attr_result = os_description
      # TEMPORARY CODE
      # Currently our tree columns are emulated using custom draw,
      # so we need to create the description using the tree column
      # header text and tree item text.
      if (!(v.attr_l_val).equal?(COM::CHILDID_SELF))
        if (@control.is_a?(Tree))
          tree = @control
          column_count = tree.get_column_count
          if (column_count > 1)
            # long
            hwnd = @control.attr_handle
            h_item = 0
            if (OS::COMCTL32_MAJOR >= 6)
              h_item = OS._send_message(hwnd, OS::TVM_MAPACCIDTOHTREEITEM, v.attr_l_val, 0)
            else
              h_item = v.attr_l_val
            end
            widget = tree.get_display.find_widget(hwnd, h_item)
            event.attr_result = ""
            if (!(widget).nil? && widget.is_a?(TreeItem))
              item = widget
              i = 1
              while i < column_count
                event.attr_result += RJava.cast_to_string(tree.get_column(i).get_text) + ": " + RJava.cast_to_string(item.get_text(i))
                if (i + 1 < column_count)
                  event.attr_result += ", "
                end
                i += 1
              end
            end
          end
        end
      end
      i = 0
      while i < @accessible_listeners.size
        listener = @accessible_listeners.element_at(i)
        listener.get_description(event)
        i += 1
      end
      if ((event.attr_result).nil?)
        return code
      end
      data = (RJava.cast_to_string(event.attr_result) + "\0").to_char_array
      # long
      ptr = COM._sys_alloc_string(data)
      # long
      COM._move_memory(psz_description, Array.typed(::Java::Int).new([ptr]), OS::PTR_SIZEOF)
      return COM::S_OK
    end
    
    typesig { [::Java::Int] }
    # get_accFocus([out] int pvarChild)
    # Ownership of pvarChild transfers from callee to caller so reference count on pvarChild
    # must be incremented before returning.  The caller is responsible for releasing pvarChild.
    # 
    # long
    def get_acc_focus(pvar_child)
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      # Get the default focus child from the OS.
      os_child = ACC::CHILDID_NONE
      code = @iaccessible.get_acc_focus(pvar_child)
      if ((@accessible_control_listeners.size).equal?(0))
        return code
      end
      if ((code).equal?(COM::S_OK))
        # TODO - use VARIANT structure
        pvt = Array.typed(::Java::Short).new(1) { 0 }
        COM._move_memory(pvt, pvar_child, 2)
        if ((pvt[0]).equal?(COM::VT_I4))
          p_child = Array.typed(::Java::Int).new(1) { 0 }
          COM._move_memory(p_child, pvar_child + 8, 4)
          os_child = os_to_child_id(p_child[0])
        end
      end
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = os_child
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_focus(event)
        i += 1
      end
      accessible = event.attr_accessible
      if (!(accessible).nil?)
        accessible._add_ref
        COM._move_memory(pvar_child, Array.typed(::Java::Short).new([COM::VT_DISPATCH]), 2)
        # long
        COM._move_memory(pvar_child + 8, Array.typed(::Java::Int).new([accessible.attr_obj_iaccessible.get_address]), OS::PTR_SIZEOF)
        return COM::S_OK
      end
      child_id = event.attr_child_id
      if ((child_id).equal?(ACC::CHILDID_NONE))
        COM._move_memory(pvar_child, Array.typed(::Java::Short).new([COM::VT_EMPTY]), 2)
        return COM::S_FALSE
      end
      if ((child_id).equal?(ACC::CHILDID_SELF))
        _add_ref
        COM._move_memory(pvar_child, Array.typed(::Java::Short).new([COM::VT_DISPATCH]), 2)
        # long
        COM._move_memory(pvar_child + 8, Array.typed(::Java::Int).new([@obj_iaccessible.get_address]), OS::PTR_SIZEOF)
        return COM::S_OK
      end
      COM._move_memory(pvar_child, Array.typed(::Java::Short).new([COM::VT_I4]), 2)
      COM._move_memory(pvar_child + 8, Array.typed(::Java::Int).new([child_idto_os(child_id)]), 4)
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def get_acc_help(variant, psz_help)
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      v = VARIANT.new
      COM._move_memory(v, variant, VARIANT.attr_sizeof)
      if (!((v.attr_vt & 0xffff)).equal?(COM::VT_I4))
        return COM::E_INVALIDARG
      end
      # Get the default help string from the OS.
      os_help = nil
      code = @iaccessible.get_acc_help(variant, psz_help)
      if ((code).equal?(COM::E_INVALIDARG))
        code = COM::S_FALSE
      end # proxy doesn't know about app childID
      if ((@accessible_listeners.size).equal?(0))
        return code
      end
      if ((code).equal?(COM::S_OK))
        # long
        # long
        p_help = Array.typed(::Java::Int).new(1) { 0 }
        COM._move_memory(p_help, psz_help, OS::PTR_SIZEOF)
        size_ = COM._sys_string_byte_len(p_help[0])
        if (size_ > 0)
          buffer = CharArray.new((size_ + 1) / 2)
          COM._move_memory(buffer, p_help[0], size_)
          os_help = RJava.cast_to_string(String.new(buffer))
        end
      end
      event = AccessibleEvent.new(self)
      event.attr_child_id = os_to_child_id(v.attr_l_val)
      event.attr_result = os_help
      i = 0
      while i < @accessible_listeners.size
        listener = @accessible_listeners.element_at(i)
        listener.get_help(event)
        i += 1
      end
      if ((event.attr_result).nil?)
        return code
      end
      data = (RJava.cast_to_string(event.attr_result) + "\0").to_char_array
      # long
      ptr = COM._sys_alloc_string(data)
      # long
      COM._move_memory(psz_help, Array.typed(::Java::Int).new([ptr]), OS::PTR_SIZEOF)
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # long
    # long
    # long
    def get_acc_help_topic(psz_help_file, variant, pid_topic)
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      # Currently, we don't let the application override this. Forward to the proxy.
      code = @iaccessible.get_acc_help_topic(psz_help_file, variant, pid_topic)
      if ((code).equal?(COM::E_INVALIDARG))
        code = COM::S_FALSE
      end # proxy doesn't know about app childID
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def get_acc_keyboard_shortcut(variant, psz_keyboard_shortcut)
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      v = VARIANT.new
      COM._move_memory(v, variant, VARIANT.attr_sizeof)
      if (!((v.attr_vt & 0xffff)).equal?(COM::VT_I4))
        return COM::E_INVALIDARG
      end
      # Get the default keyboard shortcut from the OS.
      os_keyboard_shortcut = nil
      code = @iaccessible.get_acc_keyboard_shortcut(variant, psz_keyboard_shortcut)
      if ((code).equal?(COM::E_INVALIDARG))
        code = COM::S_FALSE
      end # proxy doesn't know about app childID
      if ((@accessible_listeners.size).equal?(0))
        return code
      end
      if ((code).equal?(COM::S_OK))
        # long
        # long
        p_keyboard_shortcut = Array.typed(::Java::Int).new(1) { 0 }
        COM._move_memory(p_keyboard_shortcut, psz_keyboard_shortcut, OS::PTR_SIZEOF)
        size_ = COM._sys_string_byte_len(p_keyboard_shortcut[0])
        if (size_ > 0)
          buffer = CharArray.new((size_ + 1) / 2)
          COM._move_memory(buffer, p_keyboard_shortcut[0], size_)
          os_keyboard_shortcut = RJava.cast_to_string(String.new(buffer))
        end
      end
      event = AccessibleEvent.new(self)
      event.attr_child_id = os_to_child_id(v.attr_l_val)
      event.attr_result = os_keyboard_shortcut
      i = 0
      while i < @accessible_listeners.size
        listener = @accessible_listeners.element_at(i)
        listener.get_keyboard_shortcut(event)
        i += 1
      end
      if ((event.attr_result).nil?)
        return code
      end
      data = (RJava.cast_to_string(event.attr_result) + "\0").to_char_array
      # long
      ptr = COM._sys_alloc_string(data)
      # long
      COM._move_memory(psz_keyboard_shortcut, Array.typed(::Java::Int).new([ptr]), OS::PTR_SIZEOF)
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def get_acc_name(variant, psz_name)
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      v = VARIANT.new
      COM._move_memory(v, variant, VARIANT.attr_sizeof)
      if (!((v.attr_vt & 0xffff)).equal?(COM::VT_I4))
        return COM::E_INVALIDARG
      end
      # Get the default name from the OS.
      os_name = nil
      code = @iaccessible.get_acc_name(variant, psz_name)
      if ((code).equal?(COM::E_INVALIDARG))
        code = COM::S_FALSE
      end # proxy doesn't know about app childID
      if ((@accessible_listeners.size).equal?(0))
        return code
      end
      if ((code).equal?(COM::S_OK))
        # long
        # long
        p_name = Array.typed(::Java::Int).new(1) { 0 }
        COM._move_memory(p_name, psz_name, OS::PTR_SIZEOF)
        size_ = COM._sys_string_byte_len(p_name[0])
        if (size_ > 0)
          buffer = CharArray.new((size_ + 1) / 2)
          COM._move_memory(buffer, p_name[0], size_)
          os_name = RJava.cast_to_string(String.new(buffer))
        end
      end
      event = AccessibleEvent.new(self)
      event.attr_child_id = os_to_child_id(v.attr_l_val)
      event.attr_result = os_name
      i = 0
      while i < @accessible_listeners.size
        listener = @accessible_listeners.element_at(i)
        listener.get_name(event)
        i += 1
      end
      if ((event.attr_result).nil?)
        return code
      end
      data = (RJava.cast_to_string(event.attr_result) + "\0").to_char_array
      # long
      ptr = COM._sys_alloc_string(data)
      # long
      COM._move_memory(psz_name, Array.typed(::Java::Int).new([ptr]), OS::PTR_SIZEOF)
      return COM::S_OK
    end
    
    typesig { [::Java::Int] }
    # get_accParent([out] ppdispParent)
    # Ownership of ppdispParent transfers from callee to caller so reference count on ppdispParent
    # must be incremented before returning.  The caller is responsible for releasing ppdispParent.
    # 
    # long
    def get_acc_parent(ppdisp_parent)
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      # Currently, we don't let the application override this. Forward to the proxy.
      return @iaccessible.get_acc_parent(ppdisp_parent)
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def get_acc_role(variant, pvar_role)
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      v = VARIANT.new
      COM._move_memory(v, variant, VARIANT.attr_sizeof)
      if (!((v.attr_vt & 0xffff)).equal?(COM::VT_I4))
        return COM::E_INVALIDARG
      end
      # Get the default role from the OS.
      os_role = COM::ROLE_SYSTEM_CLIENT
      code = @iaccessible.get_acc_role(variant, pvar_role)
      if ((code).equal?(COM::E_INVALIDARG))
        code = COM::S_FALSE
      end # proxy doesn't know about app childID
      # TEMPORARY CODE - process tree and table even if there are no apps listening
      if ((@accessible_control_listeners.size).equal?(0) && !(@control.is_a?(Tree) || @control.is_a?(Table)))
        return code
      end
      if ((code).equal?(COM::S_OK))
        # TODO - use VARIANT structure
        pvt = Array.typed(::Java::Short).new(1) { 0 }
        COM._move_memory(pvt, pvar_role, 2)
        if ((pvt[0]).equal?(COM::VT_I4))
          p_role = Array.typed(::Java::Int).new(1) { 0 }
          COM._move_memory(p_role, pvar_role + 8, 4)
          os_role = p_role[0]
        end
      end
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = os_to_child_id(v.attr_l_val)
      event.attr_detail = os_to_role(os_role)
      # TEMPORARY CODE
      # Currently our checkbox table and tree are emulated using state mask
      # images, so we need to specify 'checkbox' role for the items.
      if (!(v.attr_l_val).equal?(COM::CHILDID_SELF))
        if (@control.is_a?(Tree) || @control.is_a?(Table))
          if (!((@control.get_style & SWT::CHECK)).equal?(0))
            event.attr_detail = ACC::ROLE_CHECKBUTTON
          end
        end
      end
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_role(event)
        i += 1
      end
      role = role_to_os(event.attr_detail)
      COM._move_memory(pvar_role, Array.typed(::Java::Short).new([COM::VT_I4]), 2)
      COM._move_memory(pvar_role + 8, Array.typed(::Java::Int).new([role]), 4)
      return COM::S_OK
    end
    
    typesig { [::Java::Int] }
    # get_accSelection([out] pvarChildren)
    # Ownership of pvarChildren transfers from callee to caller so reference count on pvarChildren
    # must be incremented before returning.  The caller is responsible for releasing pvarChildren.
    # 
    # long
    def get_acc_selection(pvar_children)
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      # Get the default selection from the OS.
      os_child = ACC::CHILDID_NONE
      code = @iaccessible.get_acc_selection(pvar_children)
      if ((@accessible_control_listeners.size).equal?(0))
        return code
      end
      if ((code).equal?(COM::S_OK))
        # TODO - use VARIANT structure
        pvt = Array.typed(::Java::Short).new(1) { 0 }
        COM._move_memory(pvt, pvar_children, 2)
        if ((pvt[0]).equal?(COM::VT_I4))
          p_child = Array.typed(::Java::Int).new(1) { 0 }
          COM._move_memory(p_child, pvar_children + 8, 4)
          os_child = os_to_child_id(p_child[0])
        else
          if ((pvt[0]).equal?(COM::VT_UNKNOWN))
            os_child = ACC::CHILDID_MULTIPLE
            # Should get IEnumVARIANT from punkVal field, and enumerate children...
          end
        end
      end
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = os_child
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_selection(event)
        i += 1
      end
      accessible = event.attr_accessible
      if (!(accessible).nil?)
        accessible._add_ref
        COM._move_memory(pvar_children, Array.typed(::Java::Short).new([COM::VT_DISPATCH]), 2)
        # long
        COM._move_memory(pvar_children + 8, Array.typed(::Java::Int).new([accessible.attr_obj_iaccessible.get_address]), OS::PTR_SIZEOF)
        return COM::S_OK
      end
      child_id = event.attr_child_id
      if ((child_id).equal?(ACC::CHILDID_NONE))
        COM._move_memory(pvar_children, Array.typed(::Java::Short).new([COM::VT_EMPTY]), 2)
        return COM::S_FALSE
      end
      if ((child_id).equal?(ACC::CHILDID_MULTIPLE))
        _add_ref
        COM._move_memory(pvar_children, Array.typed(::Java::Short).new([COM::VT_UNKNOWN]), 2)
        # long
        COM._move_memory(pvar_children + 8, Array.typed(::Java::Int).new([@obj_iaccessible.get_address]), OS::PTR_SIZEOF)
        return COM::S_OK
      end
      if ((child_id).equal?(ACC::CHILDID_SELF))
        _add_ref
        COM._move_memory(pvar_children, Array.typed(::Java::Short).new([COM::VT_DISPATCH]), 2)
        # long
        COM._move_memory(pvar_children + 8, Array.typed(::Java::Int).new([@obj_iaccessible.get_address]), OS::PTR_SIZEOF)
        return COM::S_OK
      end
      COM._move_memory(pvar_children, Array.typed(::Java::Short).new([COM::VT_I4]), 2)
      COM._move_memory(pvar_children + 8, Array.typed(::Java::Int).new([child_idto_os(child_id)]), 4)
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def get_acc_state(variant, pvar_state)
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      v = VARIANT.new
      COM._move_memory(v, variant, VARIANT.attr_sizeof)
      if (!((v.attr_vt & 0xffff)).equal?(COM::VT_I4))
        return COM::E_INVALIDARG
      end
      # Get the default state from the OS.
      os_state = 0
      code = @iaccessible.get_acc_state(variant, pvar_state)
      if ((code).equal?(COM::E_INVALIDARG))
        code = COM::S_FALSE
      end # proxy doesn't know about app childID
      # TEMPORARY CODE - process tree and table even if there are no apps listening
      if ((@accessible_control_listeners.size).equal?(0) && !(@control.is_a?(Tree) || @control.is_a?(Table)))
        return code
      end
      if ((code).equal?(COM::S_OK))
        # TODO - use VARIANT structure
        pvt = Array.typed(::Java::Short).new(1) { 0 }
        COM._move_memory(pvt, pvar_state, 2)
        if ((pvt[0]).equal?(COM::VT_I4))
          p_state = Array.typed(::Java::Int).new(1) { 0 }
          COM._move_memory(p_state, pvar_state + 8, 4)
          os_state = p_state[0]
        end
      end
      grayed = false
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = os_to_child_id(v.attr_l_val)
      event.attr_detail = os_to_state(os_state)
      # TEMPORARY CODE
      # Currently our checkbox table and tree are emulated using state mask
      # images, so we need to determine if the item state is 'checked'.
      if (!(v.attr_l_val).equal?(COM::CHILDID_SELF))
        if (@control.is_a?(Tree) && !((@control.get_style & SWT::CHECK)).equal?(0))
          # long
          hwnd = @control.attr_handle
          tv_item = TVITEM.new
          tv_item.attr_mask = OS::TVIF_HANDLE | OS::TVIF_STATE
          tv_item.attr_state_mask = OS::TVIS_STATEIMAGEMASK
          if (OS::COMCTL32_MAJOR >= 6)
            tv_item.attr_h_item = OS._send_message(hwnd, OS::TVM_MAPACCIDTOHTREEITEM, v.attr_l_val, 0)
          else
            tv_item.attr_h_item = v.attr_l_val
          end
          # long
          result = OS._send_message(hwnd, OS::TVM_GETITEM, 0, tv_item)
          checked = (!(result).equal?(0)) && ((((tv_item.attr_state >> 12) & 1)).equal?(0))
          if (checked)
            event.attr_detail |= ACC::STATE_CHECKED
          end
          grayed = tv_item.attr_state >> 12 > 2
        else
          if (@control.is_a?(Table) && !((@control.get_style & SWT::CHECK)).equal?(0))
            table = @control
            index = event.attr_child_id
            if (0 <= index && index < table.get_item_count)
              item = table.get_item(index)
              if (item.get_checked)
                event.attr_detail |= ACC::STATE_CHECKED
              end
              if (item.get_grayed)
                grayed = true
              end
            end
          end
        end
      end
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_state(event)
        i += 1
      end
      state = state_to_os(event.attr_detail)
      if (!((state & ACC::STATE_CHECKED)).equal?(0) && grayed)
        state &= ~COM::STATE_SYSTEM_CHECKED
        state |= COM::STATE_SYSTEM_MIXED
      end
      COM._move_memory(pvar_state, Array.typed(::Java::Short).new([COM::VT_I4]), 2)
      COM._move_memory(pvar_state + 8, Array.typed(::Java::Int).new([state]), 4)
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def get_acc_value(variant, psz_value)
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      v = VARIANT.new
      COM._move_memory(v, variant, VARIANT.attr_sizeof)
      if (!((v.attr_vt & 0xffff)).equal?(COM::VT_I4))
        return COM::E_INVALIDARG
      end
      # Get the default value string from the OS.
      os_value = nil
      code = @iaccessible.get_acc_value(variant, psz_value)
      if ((code).equal?(COM::E_INVALIDARG))
        code = COM::S_FALSE
      end # proxy doesn't know about app childID
      if ((@accessible_control_listeners.size).equal?(0))
        return code
      end
      if ((code).equal?(COM::S_OK))
        # long
        # long
        p_value = Array.typed(::Java::Int).new(1) { 0 }
        COM._move_memory(p_value, psz_value, OS::PTR_SIZEOF)
        size_ = COM._sys_string_byte_len(p_value[0])
        if (size_ > 0)
          buffer = CharArray.new((size_ + 1) / 2)
          COM._move_memory(buffer, p_value[0], size_)
          os_value = RJava.cast_to_string(String.new(buffer))
        end
      end
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = os_to_child_id(v.attr_l_val)
      event.attr_result = os_value
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_value(event)
        i += 1
      end
      if ((event.attr_result).nil?)
        return code
      end
      data = (RJava.cast_to_string(event.attr_result) + "\0").to_char_array
      # long
      ptr = COM._sys_alloc_string(data)
      # long
      COM._move_memory(psz_value, Array.typed(::Java::Int).new([ptr]), OS::PTR_SIZEOF)
      return COM::S_OK
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def put_acc_name(variant, sz_name)
      # MSAA: this method is no longer supported
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      # We don't implement this. Forward to the proxy.
      code = @iaccessible.put_acc_name(variant, sz_name)
      if ((code).equal?(COM::E_INVALIDARG))
        code = COM::S_FALSE
      end # proxy doesn't know about app childID
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int] }
    # long
    # long
    def put_acc_value(variant, sz_value)
      # MSAA: this method is typically only used for edit controls
      if ((@iaccessible).nil?)
        return COM::CO_E_OBJNOTCONNECTED
      end
      # We don't implement this. Forward to the proxy.
      code = @iaccessible.put_acc_value(variant, sz_value)
      if ((code).equal?(COM::E_INVALIDARG))
        code = COM::S_FALSE
      end # proxy doesn't know about app childID
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # IEnumVARIANT methods: Next, Skip, Reset, Clone
    # Retrieve the next celt items in the enumeration sequence.
    # If there are fewer than the requested number of elements left
    # in the sequence, retrieve the remaining elements.
    # The number of elements actually retrieved is returned in pceltFetched
    # (unless the caller passed in NULL for that parameter).
    # 
    # Next([in] celt, [out] rgvar, [in, out] pceltFetched)
    # Ownership of rgvar transfers from callee to caller so reference count on rgvar
    # must be incremented before returning.  The caller is responsible for releasing rgvar.
    # 
    # long
    # long
    def _next(celt, rgvar, pcelt_fetched)
      # If there are no listeners, query the proxy for
      # its IEnumVariant, and get the Next items from it.
      if ((@accessible_control_listeners.size).equal?(0))
        # long
        # long
        ppv_object = Array.typed(::Java::Int).new(1) { 0 }
        code = @iaccessible._query_interface(COM::IIDIEnumVARIANT, ppv_object)
        if (!(code).equal?(COM::S_OK))
          return code
        end
        ienumvariant = IEnumVARIANT.new(ppv_object[0])
        celt_fetched = Array.typed(::Java::Int).new(1) { 0 }
        code = ienumvariant._next(celt, rgvar, celt_fetched)
        ienumvariant._release
        COM._move_memory(pcelt_fetched, celt_fetched, 4)
        return code
      end
      if ((rgvar).equal?(0))
        return COM::E_INVALIDARG
      end
      if ((pcelt_fetched).equal?(0) && !(celt).equal?(1))
        return COM::E_INVALIDARG
      end
      if ((@enum_index).equal?(0))
        event = AccessibleControlEvent.new(self)
        event.attr_child_id = ACC::CHILDID_SELF
        i = 0
        while i < @accessible_control_listeners.size
          listener = @accessible_control_listeners.element_at(i)
          listener.get_children(event)
          i += 1
        end
        @variants = event.attr_children
      end
      next_items = nil
      if (!(@variants).nil? && celt >= 1)
        end_index = @enum_index + celt - 1
        if (end_index > (@variants.attr_length - 1))
          end_index = @variants.attr_length - 1
        end
        if (@enum_index <= end_index)
          next_items = Array.typed(Object).new(end_index - @enum_index + 1) { nil }
          i = 0
          while i < next_items.attr_length
            child = @variants[@enum_index]
            if (child.is_a?(JavaInteger))
              next_items[i] = child_idto_os((child).int_value)
            else
              next_items[i] = child
            end
            @enum_index += 1
            i += 1
          end
        end
      end
      if (!(next_items).nil?)
        i = 0
        while i < next_items.attr_length
          next_item = next_items[i]
          if (next_item.is_a?(JavaInteger))
            item = (next_item).int_value
            # TODO - use VARIANT struct
            COM._move_memory(rgvar + i * VARIANT.attr_sizeof, Array.typed(::Java::Short).new([COM::VT_I4]), 2)
            COM._move_memory(rgvar + i * VARIANT.attr_sizeof + 8, Array.typed(::Java::Int).new([item]), 4)
          else
            accessible = next_item
            accessible._add_ref
            COM._move_memory(rgvar + i * VARIANT.attr_sizeof, Array.typed(::Java::Short).new([COM::VT_DISPATCH]), 2)
            # long
            COM._move_memory(rgvar + i * VARIANT.attr_sizeof + 8, Array.typed(::Java::Int).new([accessible.attr_obj_iaccessible.get_address]), OS::PTR_SIZEOF)
          end
          i += 1
        end
        if (!(pcelt_fetched).equal?(0))
          COM._move_memory(pcelt_fetched, Array.typed(::Java::Int).new([next_items.attr_length]), 4)
        end
        if ((next_items.attr_length).equal?(celt))
          return COM::S_OK
        end
      else
        if (!(pcelt_fetched).equal?(0))
          COM._move_memory(pcelt_fetched, Array.typed(::Java::Int).new([0]), 4)
        end
      end
      return COM::S_FALSE
    end
    
    typesig { [::Java::Int] }
    # Skip over the specified number of elements in the enumeration sequence.
    def _skip(celt)
      # If there are no listeners, query the proxy
      # for its IEnumVariant, and tell it to Skip.
      if ((@accessible_control_listeners.size).equal?(0))
        # long
        # long
        ppv_object = Array.typed(::Java::Int).new(1) { 0 }
        code = @iaccessible._query_interface(COM::IIDIEnumVARIANT, ppv_object)
        if (!(code).equal?(COM::S_OK))
          return code
        end
        ienumvariant = IEnumVARIANT.new(ppv_object[0])
        code = ienumvariant._skip(celt)
        ienumvariant._release
        return code
      end
      if (celt < 1)
        return COM::E_INVALIDARG
      end
      @enum_index += celt
      if (@enum_index > (@variants.attr_length - 1))
        @enum_index = @variants.attr_length - 1
        return COM::S_FALSE
      end
      return COM::S_OK
    end
    
    typesig { [] }
    # Reset the enumeration sequence to the beginning.
    def _reset
      # If there are no listeners, query the proxy
      # for its IEnumVariant, and tell it to Reset.
      if ((@accessible_control_listeners.size).equal?(0))
        # long
        # long
        ppv_object = Array.typed(::Java::Int).new(1) { 0 }
        # 64
        code = RJava.cast_to_int(@iaccessible._query_interface(COM::IIDIEnumVARIANT, ppv_object))
        if (!(code).equal?(COM::S_OK))
          return code
        end
        ienumvariant = IEnumVARIANT.new(ppv_object[0])
        code = ienumvariant._reset
        ienumvariant._release
        return code
      end
      @enum_index = 0
      return COM::S_OK
    end
    
    typesig { [::Java::Int] }
    # Clone([out] ppEnum)
    # Ownership of ppEnum transfers from callee to caller so reference count on ppEnum
    # must be incremented before returning.  The caller is responsible for releasing ppEnum.
    # 
    # long
    def _clone(pp_enum)
      # If there are no listeners, query the proxy for
      # its IEnumVariant, and get the Clone from it.
      if ((@accessible_control_listeners.size).equal?(0))
        # long
        # long
        ppv_object = Array.typed(::Java::Int).new(1) { 0 }
        code = @iaccessible._query_interface(COM::IIDIEnumVARIANT, ppv_object)
        if (!(code).equal?(COM::S_OK))
          return code
        end
        ienumvariant = IEnumVARIANT.new(ppv_object[0])
        # long
        # long
        p_enum = Array.typed(::Java::Int).new(1) { 0 }
        code = ienumvariant._clone(p_enum)
        ienumvariant._release
        COM._move_memory(pp_enum, p_enum, OS::PTR_SIZEOF)
        return code
      end
      if ((pp_enum).equal?(0))
        return COM::E_INVALIDARG
      end
      # long
      COM._move_memory(pp_enum, Array.typed(::Java::Int).new([@obj_ienum_variant.get_address]), OS::PTR_SIZEOF)
      _add_ref
      return COM::S_OK
    end
    
    typesig { [::Java::Int] }
    def child_idto_os(child_id)
      if ((child_id).equal?(ACC::CHILDID_SELF))
        return COM::CHILDID_SELF
      end
      # Feature of Windows:
      # In Windows XP, tree item ids are 1-based indices. Previous versions
      # of Windows use the tree item handle for the accessible child ID.
      # For backward compatibility, we still take a handle childID for tree
      # items on XP. All other childIDs are 1-based indices.
      if (!(@control.is_a?(Tree)))
        return child_id + 1
      end
      if (OS::COMCTL32_MAJOR < 6)
        return child_id
      end
      # 64
      return RJava.cast_to_int(OS._send_message(@control.attr_handle, OS::TVM_MAPHTREEITEMTOACCID, child_id, 0))
    end
    
    typesig { [::Java::Int] }
    def os_to_child_id(os_child_id)
      if ((os_child_id).equal?(COM::CHILDID_SELF))
        return ACC::CHILDID_SELF
      end
      # Feature of Windows:
      # In Windows XP, tree item ids are 1-based indices. Previous versions
      # of Windows use the tree item handle for the accessible child ID.
      # For backward compatibility, we still take a handle childID for tree
      # items on XP. All other childIDs are 1-based indices.
      if (!(@control.is_a?(Tree)))
        return os_child_id - 1
      end
      if (OS::COMCTL32_MAJOR < 6)
        return os_child_id
      end
      # 64
      return RJava.cast_to_int(OS._send_message(@control.attr_handle, OS::TVM_MAPACCIDTOHTREEITEM, os_child_id, 0))
    end
    
    typesig { [::Java::Int] }
    def state_to_os(state)
      os_state = 0
      if (!((state & ACC::STATE_SELECTED)).equal?(0))
        os_state |= COM::STATE_SYSTEM_SELECTED
      end
      if (!((state & ACC::STATE_SELECTABLE)).equal?(0))
        os_state |= COM::STATE_SYSTEM_SELECTABLE
      end
      if (!((state & ACC::STATE_MULTISELECTABLE)).equal?(0))
        os_state |= COM::STATE_SYSTEM_MULTISELECTABLE
      end
      if (!((state & ACC::STATE_FOCUSED)).equal?(0))
        os_state |= COM::STATE_SYSTEM_FOCUSED
      end
      if (!((state & ACC::STATE_FOCUSABLE)).equal?(0))
        os_state |= COM::STATE_SYSTEM_FOCUSABLE
      end
      if (!((state & ACC::STATE_PRESSED)).equal?(0))
        os_state |= COM::STATE_SYSTEM_PRESSED
      end
      if (!((state & ACC::STATE_CHECKED)).equal?(0))
        os_state |= COM::STATE_SYSTEM_CHECKED
      end
      if (!((state & ACC::STATE_EXPANDED)).equal?(0))
        os_state |= COM::STATE_SYSTEM_EXPANDED
      end
      if (!((state & ACC::STATE_COLLAPSED)).equal?(0))
        os_state |= COM::STATE_SYSTEM_COLLAPSED
      end
      if (!((state & ACC::STATE_HOTTRACKED)).equal?(0))
        os_state |= COM::STATE_SYSTEM_HOTTRACKED
      end
      if (!((state & ACC::STATE_BUSY)).equal?(0))
        os_state |= COM::STATE_SYSTEM_BUSY
      end
      if (!((state & ACC::STATE_READONLY)).equal?(0))
        os_state |= COM::STATE_SYSTEM_READONLY
      end
      if (!((state & ACC::STATE_INVISIBLE)).equal?(0))
        os_state |= COM::STATE_SYSTEM_INVISIBLE
      end
      if (!((state & ACC::STATE_OFFSCREEN)).equal?(0))
        os_state |= COM::STATE_SYSTEM_OFFSCREEN
      end
      if (!((state & ACC::STATE_SIZEABLE)).equal?(0))
        os_state |= COM::STATE_SYSTEM_SIZEABLE
      end
      if (!((state & ACC::STATE_LINKED)).equal?(0))
        os_state |= COM::STATE_SYSTEM_LINKED
      end
      return os_state
    end
    
    typesig { [::Java::Int] }
    def os_to_state(os_state)
      state = ACC::STATE_NORMAL
      if (!((os_state & COM::STATE_SYSTEM_SELECTED)).equal?(0))
        state |= ACC::STATE_SELECTED
      end
      if (!((os_state & COM::STATE_SYSTEM_SELECTABLE)).equal?(0))
        state |= ACC::STATE_SELECTABLE
      end
      if (!((os_state & COM::STATE_SYSTEM_MULTISELECTABLE)).equal?(0))
        state |= ACC::STATE_MULTISELECTABLE
      end
      if (!((os_state & COM::STATE_SYSTEM_FOCUSED)).equal?(0))
        state |= ACC::STATE_FOCUSED
      end
      if (!((os_state & COM::STATE_SYSTEM_FOCUSABLE)).equal?(0))
        state |= ACC::STATE_FOCUSABLE
      end
      if (!((os_state & COM::STATE_SYSTEM_PRESSED)).equal?(0))
        state |= ACC::STATE_PRESSED
      end
      if (!((os_state & COM::STATE_SYSTEM_CHECKED)).equal?(0))
        state |= ACC::STATE_CHECKED
      end
      if (!((os_state & COM::STATE_SYSTEM_EXPANDED)).equal?(0))
        state |= ACC::STATE_EXPANDED
      end
      if (!((os_state & COM::STATE_SYSTEM_COLLAPSED)).equal?(0))
        state |= ACC::STATE_COLLAPSED
      end
      if (!((os_state & COM::STATE_SYSTEM_HOTTRACKED)).equal?(0))
        state |= ACC::STATE_HOTTRACKED
      end
      if (!((os_state & COM::STATE_SYSTEM_BUSY)).equal?(0))
        state |= ACC::STATE_BUSY
      end
      if (!((os_state & COM::STATE_SYSTEM_READONLY)).equal?(0))
        state |= ACC::STATE_READONLY
      end
      if (!((os_state & COM::STATE_SYSTEM_INVISIBLE)).equal?(0))
        state |= ACC::STATE_INVISIBLE
      end
      if (!((os_state & COM::STATE_SYSTEM_OFFSCREEN)).equal?(0))
        state |= ACC::STATE_OFFSCREEN
      end
      if (!((os_state & COM::STATE_SYSTEM_SIZEABLE)).equal?(0))
        state |= ACC::STATE_SIZEABLE
      end
      if (!((os_state & COM::STATE_SYSTEM_LINKED)).equal?(0))
        state |= ACC::STATE_LINKED
      end
      return state
    end
    
    typesig { [::Java::Int] }
    def role_to_os(role)
      case (role)
      when ACC::ROLE_CLIENT_AREA
        return COM::ROLE_SYSTEM_CLIENT
      when ACC::ROLE_WINDOW
        return COM::ROLE_SYSTEM_WINDOW
      when ACC::ROLE_MENUBAR
        return COM::ROLE_SYSTEM_MENUBAR
      when ACC::ROLE_MENU
        return COM::ROLE_SYSTEM_MENUPOPUP
      when ACC::ROLE_MENUITEM
        return COM::ROLE_SYSTEM_MENUITEM
      when ACC::ROLE_SEPARATOR
        return COM::ROLE_SYSTEM_SEPARATOR
      when ACC::ROLE_TOOLTIP
        return COM::ROLE_SYSTEM_TOOLTIP
      when ACC::ROLE_SCROLLBAR
        return COM::ROLE_SYSTEM_SCROLLBAR
      when ACC::ROLE_DIALOG
        return COM::ROLE_SYSTEM_DIALOG
      when ACC::ROLE_LABEL
        return COM::ROLE_SYSTEM_STATICTEXT
      when ACC::ROLE_PUSHBUTTON
        return COM::ROLE_SYSTEM_PUSHBUTTON
      when ACC::ROLE_CHECKBUTTON
        return COM::ROLE_SYSTEM_CHECKBUTTON
      when ACC::ROLE_RADIOBUTTON
        return COM::ROLE_SYSTEM_RADIOBUTTON
      when ACC::ROLE_COMBOBOX
        return COM::ROLE_SYSTEM_COMBOBOX
      when ACC::ROLE_TEXT
        return COM::ROLE_SYSTEM_TEXT
      when ACC::ROLE_TOOLBAR
        return COM::ROLE_SYSTEM_TOOLBAR
      when ACC::ROLE_LIST
        return COM::ROLE_SYSTEM_LIST
      when ACC::ROLE_LISTITEM
        return COM::ROLE_SYSTEM_LISTITEM
      when ACC::ROLE_TABLE
        return COM::ROLE_SYSTEM_TABLE
      when ACC::ROLE_TABLECELL
        return COM::ROLE_SYSTEM_CELL
      when ACC::ROLE_TABLECOLUMNHEADER
        return COM::ROLE_SYSTEM_COLUMNHEADER
      when ACC::ROLE_TABLEROWHEADER
        return COM::ROLE_SYSTEM_ROWHEADER
      when ACC::ROLE_TREE
        return COM::ROLE_SYSTEM_OUTLINE
      when ACC::ROLE_TREEITEM
        return COM::ROLE_SYSTEM_OUTLINEITEM
      when ACC::ROLE_TABFOLDER
        return COM::ROLE_SYSTEM_PAGETABLIST
      when ACC::ROLE_TABITEM
        return COM::ROLE_SYSTEM_PAGETAB
      when ACC::ROLE_PROGRESSBAR
        return COM::ROLE_SYSTEM_PROGRESSBAR
      when ACC::ROLE_SLIDER
        return COM::ROLE_SYSTEM_SLIDER
      when ACC::ROLE_LINK
        return COM::ROLE_SYSTEM_LINK
      end
      return COM::ROLE_SYSTEM_CLIENT
    end
    
    typesig { [::Java::Int] }
    def os_to_role(os_role)
      case (os_role)
      when COM::ROLE_SYSTEM_CLIENT
        return ACC::ROLE_CLIENT_AREA
      when COM::ROLE_SYSTEM_WINDOW
        return ACC::ROLE_WINDOW
      when COM::ROLE_SYSTEM_MENUBAR
        return ACC::ROLE_MENUBAR
      when COM::ROLE_SYSTEM_MENUPOPUP
        return ACC::ROLE_MENU
      when COM::ROLE_SYSTEM_MENUITEM
        return ACC::ROLE_MENUITEM
      when COM::ROLE_SYSTEM_SEPARATOR
        return ACC::ROLE_SEPARATOR
      when COM::ROLE_SYSTEM_TOOLTIP
        return ACC::ROLE_TOOLTIP
      when COM::ROLE_SYSTEM_SCROLLBAR
        return ACC::ROLE_SCROLLBAR
      when COM::ROLE_SYSTEM_DIALOG
        return ACC::ROLE_DIALOG
      when COM::ROLE_SYSTEM_STATICTEXT
        return ACC::ROLE_LABEL
      when COM::ROLE_SYSTEM_PUSHBUTTON
        return ACC::ROLE_PUSHBUTTON
      when COM::ROLE_SYSTEM_CHECKBUTTON
        return ACC::ROLE_CHECKBUTTON
      when COM::ROLE_SYSTEM_RADIOBUTTON
        return ACC::ROLE_RADIOBUTTON
      when COM::ROLE_SYSTEM_COMBOBOX
        return ACC::ROLE_COMBOBOX
      when COM::ROLE_SYSTEM_TEXT
        return ACC::ROLE_TEXT
      when COM::ROLE_SYSTEM_TOOLBAR
        return ACC::ROLE_TOOLBAR
      when COM::ROLE_SYSTEM_LIST
        return ACC::ROLE_LIST
      when COM::ROLE_SYSTEM_LISTITEM
        return ACC::ROLE_LISTITEM
      when COM::ROLE_SYSTEM_TABLE
        return ACC::ROLE_TABLE
      when COM::ROLE_SYSTEM_CELL
        return ACC::ROLE_TABLECELL
      when COM::ROLE_SYSTEM_COLUMNHEADER
        return ACC::ROLE_TABLECOLUMNHEADER
      when COM::ROLE_SYSTEM_ROWHEADER
        return ACC::ROLE_TABLEROWHEADER
      when COM::ROLE_SYSTEM_OUTLINE
        return ACC::ROLE_TREE
      when COM::ROLE_SYSTEM_OUTLINEITEM
        return ACC::ROLE_TREEITEM
      when COM::ROLE_SYSTEM_PAGETABLIST
        return ACC::ROLE_TABFOLDER
      when COM::ROLE_SYSTEM_PAGETAB
        return ACC::ROLE_TABITEM
      when COM::ROLE_SYSTEM_PROGRESSBAR
        return ACC::ROLE_PROGRESSBAR
      when COM::ROLE_SYSTEM_SLIDER
        return ACC::ROLE_SLIDER
      when COM::ROLE_SYSTEM_LINK
        return ACC::ROLE_LINK
      end
      return ACC::ROLE_CLIENT_AREA
    end
    
    typesig { [] }
    # checkWidget was copied from Widget, and rewritten to work in this package
    def check_widget
      if (!is_valid_thread)
        SWT.error(SWT::ERROR_THREAD_INVALID_ACCESS)
      end
      if (@control.is_disposed)
        SWT.error(SWT::ERROR_WIDGET_DISPOSED)
      end
    end
    
    typesig { [] }
    # isValidThread was copied from Widget, and rewritten to work in this package
    def is_valid_thread
      return (@control.get_display.get_thread).equal?(JavaThread.current_thread)
    end
    
    private
    alias_method :initialize__accessible, :initialize
  end
  
end
