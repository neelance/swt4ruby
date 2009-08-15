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
  module AccessibleImports
    class_module.module_eval {
      include ::Java::Lang
      include ::Org::Eclipse::Swt::Accessibility
      include_const ::Java::Util, :Vector
      include ::Org::Eclipse::Swt
      include ::Org::Eclipse::Swt::Widgets
      include ::Org::Eclipse::Swt::Internal::Carbon
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
    
    class_module.module_eval {
      const_set_lazy(:RequiredAttributes) { Array.typed(String).new([OS.attr_k_axrole_attribute, OS.attr_k_axsubrole_attribute, OS.attr_k_axrole_description_attribute, OS.attr_k_axhelp_attribute, OS.attr_k_axtitle_attribute, OS.attr_k_axvalue_attribute, OS.attr_k_axenabled_attribute, OS.attr_k_axfocused_attribute, OS.attr_k_axparent_attribute, OS.attr_k_axchildren_attribute, OS.attr_k_axselected_children_attribute, OS.attr_k_axvisible_children_attribute, OS.attr_k_axwindow_attribute, OS.attr_k_axtop_level_uielement_attribute, OS.attr_k_axposition_attribute, OS.attr_k_axsize_attribute, OS.attr_k_axdescription_attribute, ]) }
      const_attr_reader  :RequiredAttributes
      
      const_set_lazy(:TextAttributes) { Array.typed(String).new([OS.attr_k_axnumber_of_characters_attribute, OS.attr_k_axselected_text_attribute, OS.attr_k_axselected_text_range_attribute, OS.attr_k_axstring_for_range_parameterized_attribute, OS.attr_k_axinsertion_point_line_number_attribute, OS.attr_k_axrange_for_line_parameterized_attribute, ]) }
      const_attr_reader  :TextAttributes
    }
    
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
    
    attr_accessor :accessible_text_listeners
    alias_method :attr_accessible_text_listeners, :accessible_text_listeners
    undef_method :accessible_text_listeners
    alias_method :attr_accessible_text_listeners=, :accessible_text_listeners=
    undef_method :accessible_text_listeners=
    
    attr_accessor :control
    alias_method :attr_control, :control
    undef_method :control
    alias_method :attr_control=, :control=
    undef_method :control=
    
    attr_accessor :axuielementref
    alias_method :attr_axuielementref, :axuielementref
    undef_method :axuielementref
    alias_method :attr_axuielementref=, :axuielementref=
    undef_method :axuielementref=
    
    attr_accessor :os_child_idcache
    alias_method :attr_os_child_idcache, :os_child_idcache
    undef_method :os_child_idcache
    alias_method :attr_os_child_idcache=, :os_child_idcache=
    undef_method :os_child_idcache=
    
    typesig { [Control] }
    def initialize(control)
      @accessible_listeners = Vector.new
      @accessible_control_listeners = Vector.new
      @accessible_text_listeners = Vector.new
      @control = nil
      @axuielementref = 0
      @os_child_idcache = Array.typed(::Java::Int).new(0) { 0 }
      @control = control
      @axuielementref = OS._axuielement_create_with_hiobject_and_identifier(control.attr_handle, 0)
      OS._hiobject_set_accessibility_ignored(control.attr_handle, false)
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
      @accessible_text_listeners.add_element(listener)
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
      if (!(@axuielementref).equal?(0))
        OS._cfrelease(@axuielementref)
        @axuielementref = 0
        index = 1
        while index < @os_child_idcache.attr_length
          OS._cfrelease(@os_child_idcache[index])
          index += 2
        end
        @os_child_idcache = Array.typed(::Java::Int).new(0) { 0 }
      end
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Invokes platform specific functionality to handle a window message.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Accessible</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    def internal_k_event_accessible_get_child_at_point(next_handler, the_event, user_data)
      if (!(@axuielementref).equal?(0))
        OS._call_next_event_handler(next_handler, the_event)
        # TODO: check error?
        child_id = get_child_idfrom_event(the_event)
        pt = CGPoint.new
        OS._get_event_parameter(the_event, OS.attr_k_event_param_mouse_location, OS.attr_type_hipoint, nil, CGPoint.attr_sizeof, nil, pt)
        event = AccessibleControlEvent.new(self)
        event.attr_x = RJava.cast_to_int(pt.attr_x)
        event.attr_y = RJava.cast_to_int(pt.attr_y)
        event.attr_child_id = ACC::CHILDID_SELF
        i = 0
        while i < @accessible_control_listeners.size
          listener = @accessible_control_listeners.element_at(i)
          listener.get_child_at_point(event)
          i += 1
        end
        if (!(event.attr_accessible).nil?)
          OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_child, OS.attr_type_cftype_ref, 4, Array.typed(::Java::Int).new([event.attr_accessible.attr_axuielementref]))
          return OS.attr_no_err
        end
        if ((event.attr_child_id).equal?(ACC::CHILDID_SELF) || (event.attr_child_id).equal?(ACC::CHILDID_NONE) || (event.attr_child_id).equal?(child_id))
          # From the Carbon doc for kEventAccessibleGetChildAtPoint: "If there is no child at the given point,
          # you should still return noErr, but leave the parameter empty (do not call SetEventParameter)."
          return OS.attr_no_err
        end
        OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_child, OS.attr_type_cftype_ref, 4, Array.typed(::Java::Int).new([child_idto_os(event.attr_child_id)]))
        return OS.attr_no_err
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Invokes platform specific functionality to handle a window message.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Accessible</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    def internal_k_event_accessible_get_focused_child(next_handler, the_event, user_data)
      if (!(@axuielementref).equal?(0))
        result = OS._call_next_event_handler(next_handler, the_event)
        # TODO: check error?
        child_id = get_child_idfrom_event(the_event)
        if (!(child_id).equal?(ACC::CHILDID_SELF))
          # From the Carbon doc for kEventAccessibleGetFocusedChild:
          # "Only return immediate children; do not return grandchildren of yourself."
          return OS.attr_no_err # TODO: should this return eventNotHandledErr?
        end
        event = AccessibleControlEvent.new(self)
        event.attr_child_id = ACC::CHILDID_MULTIPLE # set to invalid value, to test if the application sets it in getFocus()
        event.attr_accessible = nil
        i = 0
        while i < @accessible_control_listeners.size
          listener = @accessible_control_listeners.element_at(i)
          listener.get_focus(event)
          i += 1
        end
        # The application can optionally answer an accessible.
        if (!(event.attr_accessible).nil?)
          OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_child, OS.attr_type_cftype_ref, 4, Array.typed(::Java::Int).new([event.attr_accessible.attr_axuielementref]))
          return OS.attr_no_err
        end
        # Or the application can answer a valid child ID, including CHILDID_SELF and CHILDID_NONE.
        if ((event.attr_child_id).equal?(ACC::CHILDID_SELF))
          OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_child, OS.attr_type_cftype_ref, 4, Array.typed(::Java::Int).new([0]))
          return OS.attr_no_err
        end
        if ((event.attr_child_id).equal?(ACC::CHILDID_NONE))
          # From the Carbon doc for kEventAccessibleGetFocusedChild: "If there is no child in the
          # focus chain, your handler should leave the kEventParamAccessibleChild parameter empty
          # and return noErr."
          return OS.attr_no_err
        end
        if (!(event.attr_child_id).equal?(ACC::CHILDID_MULTIPLE))
          # Other valid childID.
          OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_child, OS.attr_type_cftype_ref, 4, Array.typed(::Java::Int).new([child_idto_os(event.attr_child_id)]))
          return OS.attr_no_err
        end
        # Invalid childID means the application did not implement getFocus, so just go with the default handler.
        return result
      end
      return OS.attr_event_not_handled_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Invokes platform specific functionality to handle a window message.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Accessible</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    def internal_k_event_accessible_get_all_attribute_names(next_handler, the_event, user_data)
      code = user_data # userData flags whether nextHandler has already been called
      if (!(@axuielementref).equal?(0))
        if ((code).equal?(OS.attr_event_not_handled_err))
          OS._call_next_event_handler(next_handler, the_event)
        end
        array_ref = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_names, OS.attr_type_cfmutable_array_ref, nil, 4, nil, array_ref)
        string_array_ref = array_ref[0]
        length = OS._cfarray_get_count(string_array_ref)
        os_all_attributes = Array.typed(String).new(length) { nil }
        i = 0
        while i < length
          string_ref = OS._cfarray_get_value_at_index(string_array_ref, i)
          os_all_attributes[i] = string_ref_to_string(string_ref)
          i += 1
        end
        # Add our list of supported attributes to the array.
        # Make sure each attribute name is not already in the array before appending.
        i_ = 0
        while i_ < RequiredAttributes.attr_length
          if (!contains(os_all_attributes, RequiredAttributes[i_]))
            string_ref = string_to_string_ref(RequiredAttributes[i_])
            OS._cfarray_append_value(string_array_ref, string_ref)
            OS._cfrelease(string_ref)
          end
          i_ += 1
        end
        if (@accessible_text_listeners.size > 0)
          i__ = 0
          while i__ < TextAttributes.attr_length
            if (!contains(os_all_attributes, TextAttributes[i__]))
              string_ref = string_to_string_ref(TextAttributes[i__])
              OS._cfarray_append_value(string_array_ref, string_ref)
              OS._cfrelease(string_ref)
            end
            i__ += 1
          end
        end
        code = OS.attr_no_err
      end
      return code
    end
    
    typesig { [Array.typed(String), String] }
    def contains(array, element)
      i = 0
      while i < array.attr_length
        if ((array[i] == element))
          return true
        end
        i += 1
      end
      return false
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    # Invokes platform specific functionality to handle a window message.
    # <p>
    # <b>IMPORTANT:</b> This method is <em>not</em> part of the public
    # API for <code>Accessible</code>. It is marked public only so that it
    # can be shared within the packages provided by SWT. It is not
    # available on all platforms, and should never be called from
    # application code.
    # </p>
    def internal_k_event_accessible_get_named_attribute(next_handler, the_event, user_data)
      if (!(@axuielementref).equal?(0))
        string_ref = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_name, OS.attr_type_cfstring_ref, nil, 4, nil, string_ref)
        length = 0
        if (!(string_ref[0]).equal?(0))
          length = OS._cfstring_get_length(string_ref[0])
        end
        buffer = CharArray.new(length)
        range = CFRange.new
        range.attr_length = length
        OS._cfstring_get_characters(string_ref[0], range, buffer)
        attribute_name = String.new(buffer)
        if ((attribute_name == OS.attr_k_axrole_attribute))
          return get_role_attribute(next_handler, the_event, user_data)
        end
        if ((attribute_name == OS.attr_k_axsubrole_attribute))
          return get_subrole_attribute(next_handler, the_event, user_data)
        end
        if ((attribute_name == OS.attr_k_axrole_description_attribute))
          return get_role_description_attribute(next_handler, the_event, user_data)
        end
        if ((attribute_name == OS.attr_k_axhelp_attribute))
          return get_help_attribute(next_handler, the_event, user_data)
        end
        if ((attribute_name == OS.attr_k_axtitle_attribute))
          return get_title_attribute(next_handler, the_event, user_data)
        end
        if ((attribute_name == OS.attr_k_axvalue_attribute))
          return get_value_attribute(next_handler, the_event, user_data)
        end
        if ((attribute_name == OS.attr_k_axenabled_attribute))
          return get_enabled_attribute(next_handler, the_event, user_data)
        end
        if ((attribute_name == OS.attr_k_axfocused_attribute))
          return get_focused_attribute(next_handler, the_event, user_data)
        end
        if ((attribute_name == OS.attr_k_axparent_attribute))
          return get_parent_attribute(next_handler, the_event, user_data)
        end
        if ((attribute_name == OS.attr_k_axchildren_attribute))
          return get_children_attribute(next_handler, the_event, user_data)
        end
        if ((attribute_name == OS.attr_k_axselected_children_attribute))
          return get_selected_children_attribute(next_handler, the_event, user_data)
        end
        if ((attribute_name == OS.attr_k_axvisible_children_attribute))
          return get_visible_children_attribute(next_handler, the_event, user_data)
        end
        if ((attribute_name == OS.attr_k_axposition_attribute))
          return get_position_attribute(next_handler, the_event, user_data)
        end
        if ((attribute_name == OS.attr_k_axsize_attribute))
          return get_size_attribute(next_handler, the_event, user_data)
        end
        if ((attribute_name == OS.attr_k_axdescription_attribute))
          return get_description_attribute(next_handler, the_event, user_data)
        end
        if ((attribute_name == OS.attr_k_axnumber_of_characters_attribute))
          return get_number_of_characters_attribute(next_handler, the_event, user_data)
        end
        if ((attribute_name == OS.attr_k_axselected_text_attribute))
          return get_selected_text_attribute(next_handler, the_event, user_data)
        end
        if ((attribute_name == OS.attr_k_axselected_text_range_attribute))
          return get_selected_text_range_attribute(next_handler, the_event, user_data)
        end
        if ((attribute_name == OS.attr_k_axstring_for_range_parameterized_attribute))
          return get_string_for_range_attribute(next_handler, the_event, user_data)
        end
        if ((attribute_name == OS.attr_k_axinsertion_point_line_number_attribute))
          return get_insertion_point_line_number_attribute(next_handler, the_event, user_data)
        end
        if ((attribute_name == OS.attr_k_axrange_for_line_parameterized_attribute))
          return get_range_for_line_parameterized_attribute(next_handler, the_event, user_data)
        end
        return get_attribute(next_handler, the_event, user_data)
      end
      return user_data
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_attribute(next_handler, the_event, user_data)
      # Generic handler: first try just calling the default handler.
      code = !(user_data).equal?(OS.attr_event_not_handled_err) ? user_data : OS._call_next_event_handler(next_handler, the_event)
      if (!(code).equal?(OS.attr_no_err) && !(get_child_idfrom_event(the_event)).equal?(ACC::CHILDID_SELF))
        # If the childID is unknown to the control, then it was created by the application,
        # so delegate to the application's accessible UIElement for the control.
        OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_object, OS.attr_type_cftype_ref, 4, Array.typed(::Java::Int).new([@axuielementref]))
        code = OS._call_next_event_handler(next_handler, the_event)
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_help_attribute(next_handler, the_event, user_data)
      code = !(user_data).equal?(OS.attr_event_not_handled_err) ? user_data : OS._call_next_event_handler(next_handler, the_event)
      os_help_attribute = nil
      string_ref = Array.typed(::Java::Int).new(1) { 0 }
      if ((code).equal?(OS.attr_no_err))
        OS._get_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, nil, 4, nil, string_ref)
        os_help_attribute = RJava.cast_to_string(string_ref_to_string(string_ref[0]))
      end
      event = AccessibleEvent.new(self)
      event.attr_child_id = get_child_idfrom_event(the_event)
      event.attr_result = os_help_attribute
      i = 0
      while i < @accessible_listeners.size
        listener = @accessible_listeners.element_at(i)
        listener.get_help(event)
        i += 1
      end
      if (!(event.attr_result).nil?)
        string_ref[0] = string_to_string_ref(event.attr_result)
        if (!(string_ref[0]).equal?(0))
          OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, string_ref)
          OS._cfrelease(string_ref[0])
          code = OS.attr_no_err
        end
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_role_attribute(next_handler, the_event, user_data)
      code = user_data
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = get_child_idfrom_event(the_event)
      event.attr_detail = -1
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_role(event)
        i += 1
      end
      if (!(event.attr_detail).equal?(-1))
        app_role = role_to_os(event.attr_detail)
        index = app_role.index_of(Character.new(?:.ord))
        if (!(index).equal?(-1))
          app_role = RJava.cast_to_string(app_role.substring(0, index))
        end
        string_ref = string_to_string_ref(app_role)
        if (!(string_ref).equal?(0))
          OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, Array.typed(::Java::Int).new([string_ref]))
          OS._cfrelease(string_ref)
          code = OS.attr_no_err
        end
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_subrole_attribute(next_handler, the_event, user_data)
      code = user_data
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = get_child_idfrom_event(the_event)
      event.attr_detail = -1
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_role(event)
        i += 1
      end
      if (!(event.attr_detail).equal?(-1))
        app_role = role_to_os(event.attr_detail)
        index = app_role.index_of(Character.new(?:.ord))
        if (!(index).equal?(-1))
          app_role = RJava.cast_to_string(app_role.substring(index + 1))
          string_ref = string_to_string_ref(app_role)
          if (!(string_ref).equal?(0))
            OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, Array.typed(::Java::Int).new([string_ref]))
            OS._cfrelease(string_ref)
          end
        end
        code = OS.attr_no_err
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_role_description_attribute(next_handler, the_event, user_data)
      code = user_data
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = get_child_idfrom_event(the_event)
      event.attr_detail = -1
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_role(event)
        i += 1
      end
      if (!(event.attr_detail).equal?(-1))
        app_role = role_to_os(event.attr_detail)
        app_subrole = nil
        index = app_role.index_of(Character.new(?:.ord))
        if (!(index).equal?(-1))
          app_subrole = RJava.cast_to_string(app_role.substring(index + 1))
          app_role = RJava.cast_to_string(app_role.substring(0, index))
        end
        string_ref1 = string_to_string_ref(app_role)
        if (!(string_ref1).equal?(0))
          string_ref2 = 0
          if (!(app_subrole).nil?)
            string_ref2 = string_to_string_ref(app_subrole)
          end
          string_ref3 = OS._hicopy_accessibility_role_description(string_ref1, string_ref2)
          OS._cfrelease(string_ref1)
          if (!(string_ref2).equal?(0))
            OS._cfrelease(string_ref2)
          end
          if (!(string_ref3).equal?(0))
            OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, Array.typed(::Java::Int).new([string_ref3]))
            OS._cfrelease(string_ref3)
            code = OS.attr_no_err
          end
        end
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_title_attribute(next_handler, the_event, user_data)
      code = !(user_data).equal?(OS.attr_event_not_handled_err) ? user_data : OS._call_next_event_handler(next_handler, the_event)
      child_id = get_child_idfrom_event(the_event)
      # Feature of the Macintosh.  The text of a Label is returned in its value,
      # not its title, so ensure that the role is not Label before asking for the title.
      role_event = AccessibleControlEvent.new(self)
      role_event.attr_child_id = child_id
      role_event.attr_detail = -1
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_role(role_event)
        i += 1
      end
      if (!(role_event.attr_detail).equal?(ACC::ROLE_LABEL))
        os_title_attribute = nil
        string_ref = Array.typed(::Java::Int).new(1) { 0 }
        if ((code).equal?(OS.attr_no_err))
          status = OS._get_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, nil, 4, nil, string_ref)
          if ((status).equal?(OS.attr_no_err))
            os_title_attribute = RJava.cast_to_string(string_ref_to_string(string_ref[0]))
          end
        end
        event = AccessibleEvent.new(self)
        event.attr_child_id = child_id
        event.attr_result = os_title_attribute
        i_ = 0
        while i_ < @accessible_listeners.size
          listener = @accessible_listeners.element_at(i_)
          listener.get_name(event)
          i_ += 1
        end
        if (!(event.attr_result).nil?)
          string_ref[0] = string_to_string_ref(event.attr_result)
          if (!(string_ref[0]).equal?(0))
            OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, string_ref)
            OS._cfrelease(string_ref[0])
            code = OS.attr_no_err
          end
        end
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_value_attribute(next_handler, the_event, user_data)
      code = !(user_data).equal?(OS.attr_event_not_handled_err) ? user_data : OS._call_next_event_handler(next_handler, the_event)
      child_id = get_child_idfrom_event(the_event)
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = child_id
      event.attr_detail = -1
      event.attr_result = nil # TODO: could pass the OS value to the app
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_role(event)
        listener.get_value(event)
        i += 1
      end
      role = event.attr_detail
      value = event.attr_result
      if (!(value).nil? || (role).equal?(ACC::ROLE_LABEL))
        string_ref = 0
        case (role)
        # 1 = on, 0 = off
        # 1 = checked, 0 = unchecked, 2 = mixed
        # numeric value representing the position of the scroller
        # 1 = selected, 0 = not selected
        # the value associated with the position of the slider thumb
        # the accessibility object representing the currently selected tab item
        # break;
        # text of the currently selected item
        when ACC::ROLE_RADIOBUTTON, ACC::ROLE_CHECKBUTTON, ACC::ROLE_SCROLLBAR, ACC::ROLE_TABITEM, ACC::ROLE_SLIDER, ACC::ROLE_PROGRESSBAR
          # the value associated with the fill level of the progress bar
          begin
            number = JavaInteger.parse_int(value)
            OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_sint32, 4, Array.typed(::Java::Int).new([number]))
            code = OS.attr_no_err
          rescue NumberFormatException => ex
            if (value.equals_ignore_case("true"))
              OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_boolean, 4, Array.typed(::Java::Boolean).new([true]))
              code = OS.attr_no_err
            else
              if (value.equals_ignore_case("false"))
                OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_boolean, 4, Array.typed(::Java::Boolean).new([false]))
                code = OS.attr_no_err
              end
            end
          end
        when ACC::ROLE_TABFOLDER, ACC::ROLE_COMBOBOX, ACC::ROLE_TEXT
          # text in the text field
          string_ref = string_to_string_ref(value)
        when ACC::ROLE_LABEL
          # text in the label
          # On a Mac, the 'value' of a label is the same as the 'name' of the label.
          e = AccessibleEvent.new(self)
          e.attr_child_id = child_id
          e.attr_result = nil
          i_ = 0
          while i_ < @accessible_listeners.size
            listener = @accessible_listeners.element_at(i_)
            listener.get_name(e)
            i_ += 1
          end
          if (!(e.attr_result).nil?)
            string_ref = string_to_string_ref(e.attr_result)
          else
            if (!(value).nil?)
              string_ref = string_to_string_ref(value)
            end
          end
        end
        if (!(string_ref).equal?(0))
          OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, Array.typed(::Java::Int).new([string_ref]))
          OS._cfrelease(string_ref)
          code = OS.attr_no_err
        end
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_enabled_attribute(next_handler, the_event, user_data)
      code = !(user_data).equal?(OS.attr_event_not_handled_err) ? user_data : OS._call_next_event_handler(next_handler, the_event)
      if ((code).equal?(OS.attr_event_not_handled_err))
        OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_boolean, 4, Array.typed(::Java::Boolean).new([@control.is_enabled]))
        code = OS.attr_no_err
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_focused_attribute(next_handler, the_event, user_data)
      os_child_id = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_accessible_object, OS.attr_type_cftype_ref, nil, 4, nil, os_child_id)
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = ACC::CHILDID_MULTIPLE # set to invalid value, to test if the application sets it in getFocus()
      event.attr_accessible = nil
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_focus(event)
        i += 1
      end
      # The application can optionally answer an accessible.
      if (!(event.attr_accessible).nil?)
        has_focus = OS._cfequal(event.attr_accessible.attr_axuielementref, os_child_id[0])
        OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_boolean, 4, Array.typed(::Java::Boolean).new([has_focus]))
        return OS.attr_no_err
      end
      # Or the application can answer a valid child ID, including CHILDID_SELF and CHILDID_NONE.
      if ((event.attr_child_id).equal?(ACC::CHILDID_SELF))
        has_focus = OS._cfequal(@axuielementref, os_child_id[0])
        OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_boolean, 4, Array.typed(::Java::Boolean).new([has_focus]))
        return OS.attr_no_err
      end
      if ((event.attr_child_id).equal?(ACC::CHILDID_NONE))
        OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_boolean, 4, Array.typed(::Java::Boolean).new([false]))
        return OS.attr_no_err
      end
      if (!(event.attr_child_id).equal?(ACC::CHILDID_MULTIPLE))
        # Other valid childID.
        child_id = os_to_child_id(os_child_id[0])
        OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_boolean, 4, Array.typed(::Java::Boolean).new([(event.attr_child_id).equal?(child_id)]))
        return OS.attr_no_err
      end
      # Invalid childID at this point means the application did not implement getFocus, so return the native focus.
      has_focus = false
      focus_window = OS._get_user_focus_window
      if (!(focus_window).equal?(0))
        focus_control = Array.typed(::Java::Int).new(1) { 0 }
        OS._get_keyboard_focus(focus_window, focus_control)
        if ((focus_control[0]).equal?(@control.attr_handle))
          has_focus = true
        end
      end
      OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_boolean, 4, Array.typed(::Java::Boolean).new([has_focus]))
      return OS.attr_no_err
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_parent_attribute(next_handler, the_event, user_data)
      code = !(user_data).equal?(OS.attr_event_not_handled_err) ? user_data : OS._call_next_event_handler(next_handler, the_event)
      if ((code).equal?(OS.attr_event_not_handled_err))
        # If the childID was created by the application, the parent is the accessible for the control.
        OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cftype_ref, 4, Array.typed(::Java::Int).new([@axuielementref]))
        code = OS.attr_no_err
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_children_attribute(next_handler, the_event, user_data)
      code = user_data
      child_id = get_child_idfrom_event(the_event)
      if ((child_id).equal?(ACC::CHILDID_SELF))
        event = AccessibleControlEvent.new(self)
        event.attr_child_id = child_id
        event.attr_detail = -1 # set to impossible value to test if app resets
        i = 0
        while i < @accessible_control_listeners.size
          listener = @accessible_control_listeners.element_at(i)
          listener.get_child_count(event)
          i += 1
        end
        if ((event.attr_detail).equal?(0))
          code = OS.attr_no_err
        else
          if (event.attr_detail > 0)
            i_ = 0
            while i_ < @accessible_control_listeners.size
              listener = @accessible_control_listeners.element_at(i_)
              listener.get_children(event)
              i_ += 1
            end
            app_children = event.attr_children
            if (!(app_children).nil? && app_children.attr_length > 0)
              # return a CFArrayRef of AXUIElementRefs
              children = OS._cfarray_create_mutable(OS.attr_k_cfallocator_default, 0, 0)
              if (!(children).equal?(0))
                i__ = 0
                while i__ < app_children.attr_length
                  child = app_children[i__]
                  if (child.is_a?(JavaInteger))
                    OS._cfarray_append_value(children, child_idto_os((child).int_value))
                  else
                    OS._cfarray_append_value(children, (child).attr_axuielementref)
                  end
                  i__ += 1
                end
                OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfmutable_array_ref, 4, Array.typed(::Java::Int).new([children]))
                OS._cfrelease(children)
                code = OS.attr_no_err
              end
            end
          end
        end
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_selected_children_attribute(next_handler, the_event, user_data)
      # TODO
      return get_attribute(next_handler, the_event, user_data)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_visible_children_attribute(next_handler, the_event, user_data)
      # TODO
      return get_attribute(next_handler, the_event, user_data)
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_position_attribute(next_handler, the_event, user_data)
      code = !(user_data).equal?(OS.attr_event_not_handled_err) ? user_data : OS._call_next_event_handler(next_handler, the_event)
      os_position_attribute = CGPoint.new
      if ((code).equal?(OS.attr_no_err))
        OS._get_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_hipoint, nil, CGPoint.attr_sizeof, nil, os_position_attribute)
      end
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = get_child_idfrom_event(the_event)
      event.attr_x = RJava.cast_to_int(os_position_attribute.attr_x)
      event.attr_y = RJava.cast_to_int(os_position_attribute.attr_y)
      if (!(code).equal?(OS.attr_no_err))
        event.attr_width = -1
      end
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_location(event)
        i += 1
      end
      if (!(event.attr_width).equal?(-1))
        os_position_attribute.attr_x = event.attr_x
        os_position_attribute.attr_y = event.attr_y
        OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_hipoint, CGPoint.attr_sizeof, os_position_attribute)
        code = OS.attr_no_err
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_size_attribute(next_handler, the_event, user_data)
      code = !(user_data).equal?(OS.attr_event_not_handled_err) ? user_data : OS._call_next_event_handler(next_handler, the_event)
      os_size_attribute = CGPoint.new
      if ((code).equal?(OS.attr_no_err))
        OS._get_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_hisize, nil, CGPoint.attr_sizeof, nil, os_size_attribute)
      end
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = get_child_idfrom_event(the_event)
      event.attr_width = (!(code).equal?(OS.attr_no_err)) ? -1 : RJava.cast_to_int(os_size_attribute.attr_x)
      event.attr_height = RJava.cast_to_int(os_size_attribute.attr_y)
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_location(event)
        i += 1
      end
      if (!(event.attr_width).equal?(-1))
        os_size_attribute.attr_x = event.attr_width
        os_size_attribute.attr_y = event.attr_height
        OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_hisize, CGPoint.attr_sizeof, os_size_attribute)
        code = OS.attr_no_err
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_description_attribute(next_handler, the_event, user_data)
      code = !(user_data).equal?(OS.attr_event_not_handled_err) ? user_data : OS._call_next_event_handler(next_handler, the_event)
      os_description_attribute = nil
      string_ref = Array.typed(::Java::Int).new(1) { 0 }
      if ((code).equal?(OS.attr_no_err))
        status = OS._get_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, nil, 4, nil, string_ref)
        if ((status).equal?(OS.attr_no_err))
          os_description_attribute = RJava.cast_to_string(string_ref_to_string(string_ref[0]))
        end
      end
      event = AccessibleEvent.new(self)
      event.attr_child_id = get_child_idfrom_event(the_event)
      event.attr_result = os_description_attribute
      i = 0
      while i < @accessible_listeners.size
        listener = @accessible_listeners.element_at(i)
        listener.get_description(event)
        i += 1
      end
      if (!(event.attr_result).nil?)
        string_ref[0] = string_to_string_ref(event.attr_result)
        if (!(string_ref[0]).equal?(0))
          OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, string_ref)
          OS._cfrelease(string_ref[0])
          code = OS.attr_no_err
        end
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_insertion_point_line_number_attribute(next_handler, the_event, user_data)
      code = user_data
      control_event = AccessibleControlEvent.new(self)
      control_event.attr_child_id = get_child_idfrom_event(the_event)
      control_event.attr_result = nil
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_value(control_event)
        i += 1
      end
      text_event = AccessibleTextEvent.new(self)
      text_event.attr_child_id = get_child_idfrom_event(the_event)
      text_event.attr_offset = -1
      i_ = 0
      while i_ < @accessible_text_listeners.size
        listener = @accessible_text_listeners.element_at(i_)
        listener.get_caret_offset(text_event)
        i_ += 1
      end
      if (!(control_event.attr_result).nil? && !(text_event.attr_offset).equal?(-1))
        line_number = line_number_for_offset(control_event.attr_result, text_event.attr_offset)
        OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_sint32, 4, Array.typed(::Java::Int).new([line_number]))
        code = OS.attr_no_err
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_number_of_characters_attribute(next_handler, the_event, user_data)
      code = user_data
      event = AccessibleControlEvent.new(self)
      event.attr_child_id = get_child_idfrom_event(the_event)
      event.attr_result = nil
      i = 0
      while i < @accessible_control_listeners.size
        listener = @accessible_control_listeners.element_at(i)
        listener.get_value(event)
        i += 1
      end
      app_value = event.attr_result
      if (!(app_value).nil?)
        OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_sint32, 4, Array.typed(::Java::Int).new([app_value.length]))
        code = OS.attr_no_err
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_range_for_line_parameterized_attribute(next_handler, the_event, user_data)
      code = user_data
      line_number = Array.typed(::Java::Int).new(1) { 0 }
      status = OS._get_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_parameter, OS.attr_type_sint32, nil, 4, nil, line_number)
      if ((status).equal?(OS.attr_no_err))
        event = AccessibleControlEvent.new(self)
        event.attr_child_id = get_child_idfrom_event(the_event)
        event.attr_result = nil
        i = 0
        while i < @accessible_control_listeners.size
          listener = @accessible_control_listeners.element_at(i)
          listener.get_value(event)
          i += 1
        end
        if (!(event.attr_result).nil?)
          range = range_for_line_number(line_number[0], event.attr_result)
          if (!(range.attr_location).equal?(-1))
            value_ref = OS._axvalue_create(OS.attr_k_axvalue_cfrange_type, range)
            OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cftype_ref, 4, Array.typed(::Java::Int).new([value_ref]))
            OS._cfrelease(value_ref)
            code = OS.attr_no_err
          end
        end
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_selected_text_attribute(next_handler, the_event, user_data)
      code = user_data
      event = AccessibleTextEvent.new(self)
      event.attr_child_id = get_child_idfrom_event(the_event)
      event.attr_offset = -1
      event.attr_length = -1
      i = 0
      while i < @accessible_text_listeners.size
        listener = @accessible_text_listeners.element_at(i)
        listener.get_selection_range(event)
        i += 1
      end
      offset = event.attr_offset
      length_ = event.attr_length
      if (!(offset).equal?(-1) && !(length_).equal?(-1) && !(length_).equal?(0))
        # TODO: do we need the && length != 0 ?
        event2 = AccessibleControlEvent.new(self)
        event2.attr_child_id = event.attr_child_id
        event2.attr_result = nil
        i_ = 0
        while i_ < @accessible_control_listeners.size
          listener = @accessible_control_listeners.element_at(i_)
          listener.get_value(event2)
          i_ += 1
        end
        app_value = event2.attr_result
        if (!(app_value).nil?)
          string_ref = string_to_string_ref(app_value.substring(offset, offset + length_))
          if (!(string_ref).equal?(0))
            OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, Array.typed(::Java::Int).new([string_ref]))
            OS._cfrelease(string_ref)
            code = OS.attr_no_err
          end
        end
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_selected_text_range_attribute(next_handler, the_event, user_data)
      code = user_data
      event = AccessibleTextEvent.new(self)
      event.attr_child_id = get_child_idfrom_event(the_event)
      event.attr_offset = -1
      event.attr_length = -1
      i = 0
      while i < @accessible_text_listeners.size
        listener = @accessible_text_listeners.element_at(i)
        listener.get_selection_range(event)
        i += 1
      end
      if (!(event.attr_offset).equal?(-1))
        range = CFRange.new
        range.attr_location = event.attr_offset
        range.attr_length = event.attr_length
        value_ref = OS._axvalue_create(OS.attr_k_axvalue_cfrange_type, range)
        OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cftype_ref, 4, Array.typed(::Java::Int).new([value_ref]))
        OS._cfrelease(value_ref)
        code = OS.attr_no_err
      end
      return code
    end
    
    typesig { [::Java::Int, ::Java::Int, ::Java::Int] }
    def get_string_for_range_attribute(next_handler, the_event, user_data)
      code = user_data
      value_ref = Array.typed(::Java::Int).new(1) { 0 }
      status = OS._get_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_parameter, OS.attr_type_cftype_ref, nil, 4, nil, value_ref)
      if ((status).equal?(OS.attr_no_err))
        range = CFRange.new
        ok = OS._axvalue_get_value(value_ref[0], OS.attr_k_axvalue_cfrange_type, range)
        if (ok)
          event = AccessibleControlEvent.new(self)
          event.attr_child_id = get_child_idfrom_event(the_event)
          event.attr_result = nil
          i = 0
          while i < @accessible_control_listeners.size
            listener = @accessible_control_listeners.element_at(i)
            listener.get_value(event)
            i += 1
          end
          app_value = event.attr_result
          if (!(app_value).nil?)
            string_ref = string_to_string_ref(app_value.substring(range.attr_location, range.attr_location + range.attr_length))
            if (!(string_ref).equal?(0))
              OS._set_event_parameter(the_event, OS.attr_k_event_param_accessible_attribute_value, OS.attr_type_cfstring_ref, 4, Array.typed(::Java::Int).new([string_ref]))
              OS._cfrelease(string_ref)
              code = OS.attr_no_err
            end
          end
        end
      end
      return code
    end
    
    typesig { [String, ::Java::Int] }
    def line_number_for_offset(text, offset)
      line_number = 1
      length_ = text.length
      i = 0
      while i < offset
        case (text.char_at(i))
        # FALL THROUGH
        when Character.new(?\r.ord)
          if (i + 1 < length_)
            if ((text.char_at(i + 1)).equal?(Character.new(?\n.ord)))
              (i += 1)
            end
          end
          line_number += 1
        when Character.new(?\n.ord)
          line_number += 1
        end
        i += 1
      end
      return line_number
    end
    
    typesig { [::Java::Int, String] }
    def range_for_line_number(line_number, text)
      range = CFRange.new
      range.attr_location = -1
      line = 1
      count = 0
      length_ = text.length
      i = 0
      while i < length_
        if ((line).equal?(line_number))
          if ((count).equal?(0))
            range.attr_location = i
          end
          count += 1
        end
        if (line > line_number)
          break
        end
        case (text.char_at(i))
        # FALL THROUGH
        when Character.new(?\r.ord)
          if (i + 1 < length_ && (text.char_at(i + 1)).equal?(Character.new(?\n.ord)))
            i += 1
          end
          line += 1
        when Character.new(?\n.ord)
          line += 1
        end
        i += 1
      end
      range.attr_length = count
      return range
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
      @accessible_text_listeners.remove_element(listener)
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
      string_ref = string_to_string_ref(OS.attr_k_axselected_children_changed_notification)
      OS._axnotification_hiobject_notify(string_ref, @control.attr_handle, 0)
      OS._cfrelease(string_ref)
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
      child_idto_os(child_id) # Make sure the childID is cached
      string_ref = string_to_string_ref(OS.attr_k_axfocused_uielement_changed_notification)
      OS._axnotification_hiobject_notify(string_ref, @control.attr_handle, 0)
      OS._cfrelease(string_ref)
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
      string_ref = string_to_string_ref(OS.attr_k_axselected_text_changed_notification)
      OS._axnotification_hiobject_notify(string_ref, @control.attr_handle, 0)
      OS._cfrelease(string_ref)
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
    def text_changed(type, start_index, length_)
      check_widget
      string_ref = string_to_string_ref(OS.attr_k_axvalue_changed_notification)
      OS._axnotification_hiobject_notify(string_ref, @control.attr_handle, 0)
      OS._cfrelease(string_ref)
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
      string_ref = string_to_string_ref(OS.attr_k_axselected_text_changed_notification)
      OS._axnotification_hiobject_notify(string_ref, @control.attr_handle, 0)
      OS._cfrelease(string_ref)
    end
    
    typesig { [::Java::Int] }
    def get_child_idfrom_event(the_event)
      ref = Array.typed(::Java::Int).new(1) { 0 }
      OS._get_event_parameter(the_event, OS.attr_k_event_param_accessible_object, OS.attr_type_cftype_ref, nil, 4, nil, ref)
      return os_to_child_id(ref[0])
    end
    
    typesig { [::Java::Int] }
    def child_idto_os(child_id)
      if ((child_id).equal?(ACC::CHILDID_SELF))
        return @axuielementref
      end
      # Check cache for childID, if found, return corresponding osChildID.
      index = 0
      index = 0
      while index < @os_child_idcache.attr_length
        if ((child_id).equal?(@os_child_idcache[index]))
          return @os_child_idcache[index + 1]
        end
        index += 2
      end
      # If childID not in cache, create osChildID, grow cache by 2,
      # add childID/osChildID to cache, and return new osChildID.
      os_child_id = OS._axuielement_create_with_hiobject_and_identifier(@control.attr_handle, child_id + 1)
      new_cache = Array.typed(::Java::Int).new(@os_child_idcache.attr_length + 2) { 0 }
      System.arraycopy(@os_child_idcache, 0, new_cache, 0, @os_child_idcache.attr_length)
      @os_child_idcache = new_cache
      @os_child_idcache[index] = child_id
      @os_child_idcache[index + 1] = os_child_id
      return os_child_id
    end
    
    typesig { [::Java::Int] }
    def os_to_child_id(os_child_id)
      if (OS._cfequal(os_child_id, @axuielementref))
        return ACC::CHILDID_SELF
      end
      # osChildID is an AXUIElementRef containing the control handle and a long identifier.
      child_id = Array.typed(::Java::Long).new(1) { 0 }
      OS._axuielement_get_identifier(os_child_id, child_id)
      if ((child_id[0]).equal?(0))
        return ACC::CHILDID_SELF
      end
      return RJava.cast_to_int(child_id[0]) - 1
    end
    
    typesig { [::Java::Int] }
    def state_to_os(state)
      # int osState = 0;
      # if ((state & ACC.STATE_SELECTED) != 0) osState |= OS.;
      # return osState;
      return state
    end
    
    typesig { [::Java::Int] }
    def os_to_state(os_state)
      # int state = ACC.STATE_NORMAL;
      # if ((osState & OS.) != 0) state |= ACC.STATE_SELECTED;
      # return state;
      return os_state
    end
    
    typesig { [::Java::Int] }
    def role_to_os(role)
      case (role)
      when ACC::ROLE_CLIENT_AREA
        return OS.attr_k_axgroup_role
      when ACC::ROLE_WINDOW
        return OS.attr_k_axwindow_role
      when ACC::ROLE_MENUBAR
        return OS.attr_k_axmenu_bar_role
      when ACC::ROLE_MENU
        return OS.attr_k_axmenu_role
      when ACC::ROLE_MENUITEM
        return OS.attr_k_axmenu_item_role
      when ACC::ROLE_SEPARATOR
        return OS.attr_k_axsplitter_role
      when ACC::ROLE_TOOLTIP
        return OS.attr_k_axhelp_tag_role
      when ACC::ROLE_SCROLLBAR
        return OS.attr_k_axscroll_bar_role
      when ACC::ROLE_DIALOG
        return OS.attr_k_axwindow_role + Character.new(?:.ord) + OS.attr_k_axdialog_subrole
      when ACC::ROLE_LABEL
        return OS.attr_k_axstatic_text_role
      when ACC::ROLE_PUSHBUTTON
        return OS.attr_k_axbutton_role
      when ACC::ROLE_CHECKBUTTON
        return OS.attr_k_axcheck_box_role
      when ACC::ROLE_RADIOBUTTON
        return OS.attr_k_axradio_button_role
      when ACC::ROLE_COMBOBOX
        return OS.attr_k_axcombo_box_role
      when ACC::ROLE_TEXT
        return !((@control.get_style & SWT::MULTI)).equal?(0) ? OS.attr_k_axtext_area_role : OS.attr_k_axtext_field_role
      when ACC::ROLE_TOOLBAR
        return OS.attr_k_axtoolbar_role
      when ACC::ROLE_LIST
        return OS.attr_k_axoutline_role
      when ACC::ROLE_LISTITEM
        return OS.attr_k_axstatic_text_role
      when ACC::ROLE_TABLE
        return OS.attr_k_axtable_role
      when ACC::ROLE_TABLECELL
        return OS.attr_k_axrow_role + Character.new(?:.ord) + OS.attr_k_axtable_row_subrole
      when ACC::ROLE_TABLECOLUMNHEADER
        return OS.attr_k_axbutton_role + Character.new(?:.ord) + OS.attr_k_axsort_button_subrole
      when ACC::ROLE_TABLEROWHEADER
        return OS.attr_k_axrow_role + Character.new(?:.ord) + OS.attr_k_axtable_row_subrole
      when ACC::ROLE_TREE
        return OS.attr_k_axoutline_role
      when ACC::ROLE_TREEITEM
        return OS.attr_k_axoutline_role + Character.new(?:.ord) + OS.attr_k_axoutline_row_subrole
      when ACC::ROLE_TABFOLDER
        return OS.attr_k_axtab_group_role
      when ACC::ROLE_TABITEM
        return OS.attr_k_axradio_button_role
      when ACC::ROLE_PROGRESSBAR
        return OS.attr_k_axprogress_indicator_role
      when ACC::ROLE_SLIDER
        return OS.attr_k_axslider_role
      when ACC::ROLE_LINK
        return OS.attr_k_axlink_role
      end
      return OS.attr_k_axunknown_role
    end
    
    typesig { [String] }
    def os_to_role(os_role)
      if ((os_role).nil?)
        return 0
      end
      if ((os_role == OS.attr_k_axwindow_role))
        return ACC::ROLE_WINDOW
      end
      if ((os_role == OS.attr_k_axmenu_bar_role))
        return ACC::ROLE_MENUBAR
      end
      if ((os_role == OS.attr_k_axmenu_role))
        return ACC::ROLE_MENU
      end
      if ((os_role == OS.attr_k_axmenu_item_role))
        return ACC::ROLE_MENUITEM
      end
      if ((os_role == OS.attr_k_axsplitter_role))
        return ACC::ROLE_SEPARATOR
      end
      if ((os_role == OS.attr_k_axhelp_tag_role))
        return ACC::ROLE_TOOLTIP
      end
      if ((os_role == OS.attr_k_axscroll_bar_role))
        return ACC::ROLE_SCROLLBAR
      end
      if ((os_role == OS.attr_k_axscroll_area_role))
        return ACC::ROLE_LIST
      end
      if ((os_role == OS.attr_k_axwindow_role + Character.new(?:.ord) + OS.attr_k_axdialog_subrole))
        return ACC::ROLE_DIALOG
      end
      if ((os_role == OS.attr_k_axwindow_role + Character.new(?:.ord) + OS.attr_k_axsystem_dialog_subrole))
        return ACC::ROLE_DIALOG
      end
      if ((os_role == OS.attr_k_axstatic_text_role))
        return ACC::ROLE_LABEL
      end
      if ((os_role == OS.attr_k_axbutton_role))
        return ACC::ROLE_PUSHBUTTON
      end
      if ((os_role == OS.attr_k_axcheck_box_role))
        return ACC::ROLE_CHECKBUTTON
      end
      if ((os_role == OS.attr_k_axradio_button_role))
        return ACC::ROLE_RADIOBUTTON
      end
      if ((os_role == OS.attr_k_axcombo_box_role))
        return ACC::ROLE_COMBOBOX
      end
      if ((os_role == OS.attr_k_axtext_field_role))
        return ACC::ROLE_TEXT
      end
      if ((os_role == OS.attr_k_axtext_area_role))
        return ACC::ROLE_TEXT
      end
      if ((os_role == OS.attr_k_axtoolbar_role))
        return ACC::ROLE_TOOLBAR
      end
      if ((os_role == OS.attr_k_axlist_role))
        return ACC::ROLE_LIST
      end
      if ((os_role == OS.attr_k_axtable_role))
        return ACC::ROLE_TABLE
      end
      if ((os_role == OS.attr_k_axcolumn_role))
        return ACC::ROLE_TABLECOLUMNHEADER
      end
      if ((os_role == OS.attr_k_axbutton_role + Character.new(?:.ord) + OS.attr_k_axsort_button_subrole))
        return ACC::ROLE_TABLECOLUMNHEADER
      end
      if ((os_role == OS.attr_k_axrow_role + Character.new(?:.ord) + OS.attr_k_axtable_row_subrole))
        return ACC::ROLE_TABLEROWHEADER
      end
      if ((os_role == OS.attr_k_axoutline_role))
        return ACC::ROLE_TREE
      end
      if ((os_role == OS.attr_k_axoutline_role + Character.new(?:.ord) + OS.attr_k_axoutline_row_subrole))
        return ACC::ROLE_TREEITEM
      end
      if ((os_role == OS.attr_k_axtab_group_role))
        return ACC::ROLE_TABFOLDER
      end
      if ((os_role == OS.attr_k_axprogress_indicator_role))
        return ACC::ROLE_PROGRESSBAR
      end
      if ((os_role == OS.attr_k_axslider_role))
        return ACC::ROLE_SLIDER
      end
      if ((os_role == OS.attr_k_axlink_role))
        return ACC::ROLE_LINK
      end
      return ACC::ROLE_CLIENT_AREA
    end
    
    typesig { [String] }
    # Return a CFStringRef representing the given java String.
    # Note that the caller is responsible for calling OS.CFRelease
    # when they are done with the stringRef.
    def string_to_string_ref(string)
      buffer = CharArray.new(string.length)
      string.get_chars(0, buffer.attr_length, buffer, 0)
      return OS._cfstring_create_with_characters(OS.attr_k_cfallocator_default, buffer, buffer.attr_length)
    end
    
    typesig { [::Java::Int] }
    # Return a Java String representing the given CFStringRef.
    # Note that this method does not call OS.CFRelease(stringRef).
    def string_ref_to_string(string_ref)
      if ((string_ref).equal?(0))
        return ""
      end
      length_ = OS._cfstring_get_length(string_ref)
      buffer = CharArray.new(length_)
      range = CFRange.new
      range.attr_length = length_
      OS._cfstring_get_characters(string_ref, range, buffer)
      return String.new(buffer)
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
